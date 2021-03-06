// this contract is a compensation handler.
// a compensation handler does 3 things:
// 1. accept collateral input
// 2. accept comp list
// 3. pay out (claim)

// each time a collateral input is received, it creates a separate paying account, comp comes only from corresponding
// paying account. payment requested may be taken 600 blocks after collateral is received. after all claims are paid, the
// remaining collateral goes to a general purpose fund which may be used to compensate other victims.
// If collateral is not enough to pay all the claims, each claim is given a guaranteed payment amount based on its 
// priority. If claimant file claim within 1 month, clainmant is guaranteed to receive at least that amount. One moth later,
// all claimants loss their priority, all unclaimed funds will be distributed in rounds on first come first serve basis.
// When funds are disbursed in rounds. max amount that may be disbursed in one claim is equal to collateral / # of claimants.
// if a user is fully paid, he will be removed form clainmant list. otherwise, he may claim in the next round.

// tx fees are paid by clainmants.

struct account {
	int _paypoint;				// current paying account = height of violating MR block
	int _start;					// start of disbursement for current paying account
	int _round;					// current round #
	int _lastclaim;				// last block a claim was filed
	long _amount;				// total amount in the paying account
	long _maxpay;				// max payment may be made this round
	int _claimants;				// # of claimants
	long _damount;				// amount left and to be divided
	int _remains;				// # of remaining claimants
	struct __outpoint__ _balance;	// balance outpoint of the paying account
	int _opening;				// height of opening
};

int * _allaccts;				// list of accounts
int _totalaccts;				// total # of accounts

struct claim {
	char [32]hash;				// tx the claim is based on. use first 8 bytes as quick index, force bit 63 to 1
	long fee;					// compensable amount
	long guaranteed;			// guaranteed amount
	char [22]script;			// output script for payment
};

struct xclaim {
	struct claim _claim;
	int _round;
};

char [21]CONTRACT;				// the current contract

// define NET 0x6f

void constructor() {
	init();
}

public void init() {
	struct __storedata__ a;
	struct account general;
	int height;
	char [20]buf;

	read(buf, abi("_totalaccts"));
	if (*(int*)buf == 4)	// already initialized
		return;

	_totalaccts = 1;

	a.len = 4;
	a.data = (char*) &_totalaccts;
	write(abi("_totalaccts"), &a);

	_allaccts = 0;
	a.data = (char*) &_allaccts;
	write(abi("_allaccts"), &a);
	getBlockHeight(&height);

	general._paypoint = 0;
	general._start = 0;
	general._round = 0;
	general._lastclaim = 0;
	general._amount = 0;
	general._damount = 0;
	general._maxpay = 0;
	general._claimants = 0;
	general._remains = 0;
	general._opening = height;
	saveacct(&general);
}

public void claim(int paypoint, char * hash) {
	struct __coin__ in;
	struct account acct;
	int i, d, height;
	long payment, dpay;
	struct xclaim x, y;
	char match;

	// whoever make a claim shall pay tx fee, this way we make it unlikely someone
	// other than a pricipal to file a claim

	getCoin(&in);
	if (in.tokentype != 0 || in.data.num.value != 0 || paypoint <= 0) fail();

	if (getaccount(&acct, paypoint) == 0) fail();

	d = getqindex(hash);
	if (d < 0) fail();		// qindex not exist

	getclaim(&x, paypoint, d);

	// match hash
	match = hasheq(hash, x._claim.hash);

	if (match == 0) {	// scan claimant list
		i = 0;
		while (i < acct._claimants) {
			if (getclaim(&x, paypoint, i) == 0) continue;

			d = i;
			match = hasheq(hash, (char*) x._claim.hash);
			if (match == 1) break;
			i += 1;
		}
	}

	if (match == 0) fail();

	getBlockHeight(&height);
	setcontract();

	payment = 0; dpay = 0;
	if (acct._round == 0 && x._claim.guaranteed > 0) {
		// pay guaranteed
		payment = x._claim.guaranteed;
		x._claim.guaranteed = 0;
	}

	if (x._claim.fee > 0) {
		if (x._round >= acct._round) {
			if (height >= acct._start + 1200 * 24) {	// more than 1 day since last round, may proceed to a new round
				acct._round += 1;
				
				// if it is one month after opening, all claim priorities are gone
				if (height > acct._opening + 1200 * 24 * 31 && acct._amount > acct._damount) {
					i = 0;
					while (i < acct._claimants) {
						int j;
						j = i;
						i += 1;
						if (j == d) continue;
						if (getclaim(&y, paypoint, j) == 0) continue;
						if (y._claim.guaranteed != 0) {
							acct._damount += y._claim.guaranteed;
							if (y._claim.fee == 0)
								acct._remains += 1;
							y._claim.fee += y._claim.guaranteed;
							y._claim.guaranteed = 0;
							saveclaim(&y, paypoint, j);
						}
					}
				}

				acct._maxpay = acct._damount / (long) acct._remains;
				if (acct._maxpay <= 0 && payment == 0) fail();
				acct._start = height;
			}
			if (x._round >= acct._round && payment == 0) fail();
		}

		if (x._round < acct._round) {
			x._round = acct._round;
			dpay = x._claim.fee > acct._maxpay? acct._maxpay : x._claim.fee;
			payment += dpay;
			acct._damount -= dpay;
		}
	}

	// remaining after payment
	acct._amount -= payment;

	// spend balance
	addTxin(&acct._balance);

	// make a serialized txout for payment to user
	makeoutput(nil, payment, 22, x._claim.script);

	// save data
	if (x._claim.fee == dpay) {
		if (x._claim.fee != 0) acct._remains -= 1;
		delclaim(&x, paypoint, d);
	} else {
		x._claim.fee -= dpay;
		saveclaim(&x, paypoint, d);
	}

	if (!close(paypoint, &acct)) {
		// make a serialized txout for payment back
		makeoutput(&acct._balance, acct._amount, 21, CONTRACT);

		saveacct(&acct);
	}
}

void setcontract()  {
	char [30]buf;

	CONTRACT[0] = 0x88;
	getMeta(buf, "address");
	memcopy(CONTRACT + 1, buf + 4, 20);
}

char getaccount(struct account * acct, int paypoint)  {
	long ntakersabi;
	char [128]accountbuf;

	ntakersabi = (1 << 32) | (long) paypoint;
	read(accountbuf, ntakersabi);
	if ((*(int*)accountbuf) != sizeof(struct account))
		return 0;		// not exist
	*acct = *(struct account *) (accountbuf + 4);
	return 1;
}

public void filing(int paypoint, int cnt, struct claim * clm) {
	struct __coin__ in;
	struct account acct;
	int i, version, dec;
	struct __storedata__ a;
	long claimabi;

//	getVersion(&version);
//	if (version & 0x1f != 2) fail();
	
	getCoin(&in);
	if (in.tokentype != 0 || in.data.num.value != 0 || paypoint <= 0 || cnt <= 0) fail();

	if (getaccount(&acct, paypoint) == 0) fail();
	setcontract();

	i = 0; dec = 0;
	while (i < cnt)	{
		struct xclaim x;
		long qhi;
		int d;

		x._claim = * clm;

		if (x._claim.fee == 0 && x._claim.guaranteed == 0) {
			// no actual payment required
			dec += 1; clm += 1; i += 1;
			continue;
		}

		x._round = 0;
		d = i + acct._claimants - dec;
		claimabi = (((long) paypoint) << 32) | (long) d;
		
		a.len = sizeof(struct xclaim);
		a.data = (char*) &x;
		write(claimabi, &a);

		qhi = *(long*) x._claim.hash | (1 << 63);
		a.len = 4;
		a.data = (char*) &d;
		write(qhi, &a);

		acct._damount -= x._claim.guaranteed;

		if (x._claim.fee > 0) {
			acct._remains += 1;
		}

		clm += 1; i += 1;
	}
	acct._claimants += cnt - dec;
	acct._maxpay = acct._damount / (long) acct._remains - 1000;

	saveacct(&acct);
}

public void open(int paypoint) {
	// open a disbursement account
	struct account acct;
	struct __coin__ in;
	int height, version;
	char [80]buf;
	struct __storedata__ a;

//	getVersion(&version);
//	if (version & 0x1f != 2) fail();

	getCoin(&in);
	if (in.tokentype != 0 || in.data.num.value == 0 || paypoint <= 0) fail();

	if (getaccount(&acct, paypoint)) fail();
	setcontract();

	acct._paypoint = paypoint;

	getBlockHeight(&height);
	acct._start = height + 600;
	acct._lastclaim = acct._start;

	getOutpoint(&acct._balance);

	acct._amount = in.data.num.value;
	acct._damount = acct._amount;
	acct._maxpay = acct._amount;
	acct._round = 1;
	acct._claimants = 0;
	acct._remains = 0;
	acct._opening = height;

	saveacct(&acct);

	read(buf, abi("_totalaccts"));
	_totalaccts = 1 + *(int*) (buf + 4);

	alloc(&_allaccts, 4 * _totalaccts + 4);
	read(_allaccts, abi("_allaccts"));
	*(_allaccts + _totalaccts) = paypoint;

	a.len = 4 * _totalaccts;
	a.data = (char*) (_allaccts + 1);
	write(abi("_allaccts"), &a);

	a.len = 4;
	a.data = (char*) &_totalaccts;
	write(abi("_totalaccts"), &a);
}

char close(int paypoint, struct account * acct) {
	// if acct can be closed, close it
	struct account acct0;
	char [80]buf;
	struct __storedata__ a;
	int * p;
	int i;

	if (acct->_amount > 0) {
		if (acct->_remains > 0) return 0;

		i = 0;
		while (i < acct->_claimants) {
			struct xclaim y;
			if (getclaim(&y, paypoint, i) == 0) continue;
			if (y._claim.guaranteed != 0) return 0;
			i += 1;
		}
	}

	delacct(paypoint);

	if (acct->_amount > 0) {
		// pass balance to general account
		getaccount(&acct0, 0);

		if (acct0._amount != 0) addTxin(&acct0._balance);

		acct0._amount += acct->_amount;

		// make a serialized txout for payment back
		makeoutput(&acct0._balance, acct0._amount, 21, CONTRACT);

		saveacct(&acct0);
	}

	read(buf, abi("_totalaccts"));
	_totalaccts = *(int*) (buf + 4);

	alloc(&_allaccts, 4 * _totalaccts + 4);
	read(_allaccts, abi("_allaccts"));
	p = _allaccts + 1;

	i = 0;
	while (i < _totalaccts) {
		if (paypoint == *p) {
			a.len = 4 * _totalaccts - 4;
			a.data = (char*) (_allaccts + 1);
			if (i < _totalaccts - 1)
				memcopy(p, p + 1, 4 * (_totalaccts - i - 1));
			write(abi("_allaccts"), &a);

			_totalaccts -= 1;
			a.len = 4;
			a.data = (char*) &_totalaccts;
			write(abi("_totalaccts"), &a);
			return 1;
		}
		i += 1; p += 1;
	}
	return 1;
}

void makeoutput(struct __outpoint__ * ret, long amount, int ln, char * script) {
	int i, op;
	char [48]buf;

	i = 0;
	while (i < 48) {
		buf[i] = 0;
		i = i + 1;
	}
	memcopy(buf + 8, (char*) &amount, 8);
	memcopy(buf + 16, &ln, 4);
	memcopy(buf + 20, script, ln);
	addTxout(&op, buf);

	if (ret == nil) return;

	getOutpoint(ret);
	ret->index = op;
}

public void _() {
	fail();
}

void saveacct(struct account * acct)  {
	long ntakersabi;
	struct __storedata__ a;

	a.len = sizeof(struct account);
	a.data = (char*) acct;

	ntakersabi = (1 << 32) | (long) acct->_paypoint;
	write(ntakersabi, &a);
}

void delacct(int paypoint)  {
	long ntakersabi;

	ntakersabi = (1 << 32) | (long) paypoint;
	delete(ntakersabi);
}

void saveclaim(struct xclaim * x, int paypoint, int d)  {
	long claimabi;
	struct __storedata__ a;

	a.len = sizeof(struct xclaim);
	a.data = (char*) x;

	claimabi = (((long) paypoint) << 32) | (long) d;

	write(claimabi, &a);
}

void delclaim(struct xclaim * x, int paypoint, int d)  {
	long claimabi, qhi;

	qhi = *(long*) x->_claim.hash | (1 << 63);
	delete(qhi);

	claimabi = (((long) paypoint) << 32) | (long) d;
	delete(claimabi);
}

char getclaim(struct xclaim * x, int paypoint, int d)  {
	long claimabi;
	char [128]claimbuf;

	claimabi = (((long) paypoint) << 32) | (long) d;

	read(claimbuf, claimabi);
	if (*(int*)claimbuf != sizeof(struct xclaim))
		return 0;		// not exist
	*x = *(struct xclaim *) (claimbuf + 4);

	return 1;
}

public int qindex(char * hash)  {
	int d;

	d = getqindex(hash);

	output(4, (char*) &d);

	return d;
}

int getqindex(char * hash)  {
	long qhi;
	char [128]buf;
	int d;

	qhi = *(long*) hash | (1 << 63);
	read(buf, qhi);
	if (*(int*)buf != 4) return -1;		// not exist

	d = *(int*)(buf + 4);

	return d;
}

char hasheq(char * h1, char * h2) {
	int i;
	char match;

	match = 1; i = 0;
	while (i < 32) {
		if (*(h1 + i) != *(h2 + i)) {
			match = 0;
			break;
		}
		i += 1;
	}
	return match;
}

// status retrival

public int totalaccts() {
	char [128]buf;
	int d;

	read(buf, abi("_totalaccts"));
	if (*(int*)buf != 4) return -1;		// not exist

	d = *(int*)(buf + 4);

	output(4, buf + 4);

	return d;
}

public void acctlist() {
	char [128]buf;

	read(buf, abi("_allaccts"));
	if (*(int*)buf < 4) return -1;		// not exist

	output(*(int*)buf, buf + 4);
}

public void account(int paypoint) {
	struct account acct;

	getaccount(&acct, paypoint);

	output(sizeof(struct account), (char*) &acct);
}

public void claims(int paypoint, int d)  {
	struct xclaim x;

	if (getclaim(&x, paypoint, d))  {
		output(sizeof(struct xclaim), (char*) &x);
	} else {
		output(0, (char*) &x);
	}
}
