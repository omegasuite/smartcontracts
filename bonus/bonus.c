// this contract issues coins to investors

long _poolvalue;		// total issued
int _end;				// time to end this round
int _cap;				// max amount to give away
char [33]_donor;		// pubkey; who made contribution this round

struct __outpoint__ _accumlated;	// utxo for accumulated sum

char [21]donor;

// define NET 0x6f

public void issue(long value, char * address) {
	char [48]buf;		// buf for read data
	int time;
	int i, ln, op;
	char [21]contract;
	struct __coin__ in;
	long userabi;
	long ntakersabi;
	int nusers;
	struct __storedata__ a;

	// address of this contract
	getMeta(buf, "address");
	contract[0] = 0x88;
	memcopy(contract + 1, buf + 4, 20);

	// we take no value
	getCoin(&in);
	if (in.tokentype != 0 || in.data.num.value != 0) fail();

	// check if it has passed the end time
	read(buf, abi("_end"));
	if (*(int*)buf != 4) fail();
	_end = *((int*)(buf + 4));
	getBlockTime(&time);
	if (time >= _end) fail();

	// check if we have enough balance
	read(buf, abi("_poolvalue"));
	if (*(int*)buf != 8) _poolvalue = 0;
	else _poolvalue = *((long*)(buf + 4));

	// check if requested value exceeds max
	read(buf, abi("_cap"));
	if (*(int*)buf != 4 || value > ((long) ((*(int*)(buf + 4)))) * 100000000) fail();

	// check if the user has take it before
	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
	read(buf, ntakersabi);
	if (*(int*)buf != 4) {
		// none
		nusers = 0;
	} else {
		nusers = *(int*) (buf + 4);
	}

	// scan through user list
	i = 0;
	while (i < nusers) {
		int j;
		char matched;
		userabi = (abi("_takers") << 32) | (long) i;
		i = i + 1;
		read(buf, userabi);
		matched = 1;
		j = 0;
		while (j < 21 && matched == 1) {
			if (buf[4 + j] != *(address + j)) matched = 0;
			j += 1;
		}
		if (matched == 1) fail();
	}

	userabi = (abi("_takers") << 32) | (long) nusers;
	a.len = 21;
	a.data = address;
	write(userabi, &a);

	nusers = nusers + 1;
	a.len = 4;
	a.data = (char*) &nusers;
	write(ntakersabi, &a);

	read(buf, abi("_accumlated"));
	addTxin(buf + 4);

	// build a serialized txo for coin given to the user
	i = 0;
	while (i < 48) {
		buf[i] = 0;
		i = i + 1;
	}
	memcopy(buf + 8, (char*) &value, 8);
	ln = 25;
	memcopy(buf + 16, &ln, 4);
	memcopy(buf + 20, address, 21);
	buf[41] = 0x41;
	addTxout(&op, buf);

	_poolvalue -= value + 1024;
	if (_poolvalue > 1024) {	// balance is not dust
		// build a serialized txo for balance back to the contract
		struct __storedata__ a;
		i = 0;
		while (i < 48) {
			buf[i] = 0;
			i = i + 1;
		}
		memcopy(buf + 8, (char*) &_poolvalue, 8);
		ln = 21;
		memcopy(buf + 16, &ln, 4);
		memcopy(buf + 20, contract, 21);
		addTxout(&op, buf);
		
		getOutpoint(&_accumlated);
		_accumlated.index = op;

		a.len = 8;
		a.data = (char*) &_poolvalue;
		write(abi("_poolvalue"), &a);

		a.len = 36;
		a.data = (char*) &_accumlated;
		write(abi("_accumlated"), &a);
	} else {	// balance is dust, we dive it away as tx fee
		delete(abi("_accumlated"));
		delete(abi("_poolvalue"));
	}
}

public void deposit(int endtime, int ucap, char * pubkey) {
	char [48]buf;		// buf for read data
	int time;
	int i, ln;
	struct __outpoint__ op;
	char [21]contract;
	struct __coin__ in;
	struct __storedata__ a;

	// address of this contract
	getMeta(buf, "address");
	contract[0] = 0x88;
	memcopy(contract + 1, buf + 4, 20);

	getCoin(&in);
	if (in.tokentype != 0 || in.data.num.value == 0) fail();

	// check if we have balance unspent. if we do, we can not start another round
	read(buf, abi("_poolvalue"));
	if (*(int*)buf == 8 && ((*((long*)(buf + 4))) != 0)) fail();

	// check end time
	getBlockTime(&time);
	if (time >= endtime) fail();

	a.len = 8;
	a.data = (char*) &in.data.num.value;
	write(abi("_poolvalue"), &a);

	getOutpoint(&_accumlated);

	a.len = 36;
	a.data = (char*) &_accumlated;
	write(abi("_accumlated"), &a);

	a.len = 4;
	a.data = (char*) &endtime;
	write(abi("_end"), &a);

	a.len = 4;
	a.data = (char*) &ucap;
	write(abi("_cap"), &a);

	a.len = 33;
	a.data = pubkey;
	write(abi("_donor"), &a);
}

public void terminate(char * sig) {	// terminate this round and give balance back to donor
	char [48]buf;		// buf for read data
	int time, op;
	struct __storedata__ a;
	char [21]contract;
	struct __coin__ in;
	char [32]h;
	char vresult;
	int i, ln;
	long ntakersabi;
	int nusers;

	getCoin(&in);
	if (in.tokentype != 0 || in.data.num.value != 0) fail();

	read(buf, abi("_accumlated"));
	addTxin(buf + 4);

	// check if we have balance unspent. if we do, we can not start another round
	read(buf, abi("_poolvalue"));
	if (*(int*)buf != 8 || *((long*)(buf + 4)) == 0) fail();
	_poolvalue = *((long*)(buf + 4));

	// address of this contract
	getMeta(buf, "address");
	contract[0] = 0x88;
	memcopy(contract + 1, buf + 4, 20);

	// check signature is donors
	memcopy(buf, contract, 21);
	memcopy(buf + 21, &_poolvalue, 8);
	hash(buf, 29, h);

	read(buf, abi("_donor"));
	buf[3] = buf[0];
	sigverify(&vresult, h, buf + 3, sig);
	if (vresult != 1) fail();

	buf[3] = 0;
	hash160(buf + 4, *(int*)buf, donor + 1);
	donor[0] = 0;		// 0x6f for test net, 0 for main net

	i = 0;
	while (i < 48) {
		buf[i] = 0;
		i = i + 1;
	}

	_poolvalue -= 1024;
	memcopy(buf + 8, (char*) &_poolvalue, 8);
	ln = 25;
	memcopy(buf + 16, &ln, 4);
	memcopy(buf + 20, donor, 21);
	buf[41] = 0x41;
	addTxout(&op, buf);

	delete(abi("_poolvalue"));
	delete(abi("_end"));
	delete(abi("_cap"));
	delete(abi("_donor"));
	delete(abi("_accumlated"));

	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
	read(buf, ntakersabi);
	if (*(int*)buf != 4) return;

	nusers = *(int*) (buf + 4);

	// scan through user list
	i = 0;
	while (i < nusers) {
		long userabi;
		userabi = (abi("_takers") << 32) | (long) i;
		delete(userabi);
		i = i + 1;
	}
	delete(ntakersabi);
}

void constructor() {
}

public void _() {
	fail();
}

public long total() {
	char [20]buf;

	read(buf, abi("_poolvalue"));
	output(8, buf + 4);
	return *(long*)(buf + 4);
}

public int allowed() {
	char [20]buf;
	read(buf, abi("_cap"));
	output(4, buf + 4);
	return *(int*)(buf + 4);
}

public int closetime() {
	char [20]buf;
	read(buf, abi("_end"));
	output(4, buf + 4);
	return *(int*)(buf + 4);
}

public void donator(char * r) {
	char [80]buf;

	read(buf, abi("_donor"));
	hash160(buf + 4, *(int*)buf, donor + 1);
	donor[0] = 0;
	output(21, donor);

	if (r == nil) return;
	memcopy(r, donor, 21);
}

public void lasttx(char * r) {
	char [80]buf;

	read(buf, abi("_accumlated"));
	output(32, buf + 4);

	if (r == nil) return;
	memcopy(r, buf + 4, 32);
}

public int users() {
	long ntakersabi;
	int nusers;
	char [80]buf;

	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
	read(buf, ntakersabi);
	if (*(int*)buf != 4) {
		// none
		nusers = 0;
	} else {
		nusers = *(int*) (buf + 4);
	}
	output(4, &nusers);
	return nusers;
}

public void userlist(char * r) {
	long ntakersabi, userabi;
	int nusers, i;
	char * p;
	char [80]buf;

	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
	read(buf, ntakersabi);
	if (*(int*)buf != 4) {
		// none
		nusers = 0;
	} else {
		nusers = *(int*) (buf + 4);
	}

	if (nusers == 0) {
		output(0, nil);
		return;
	}

	if (r == nil) {
		alloc(&r, nusers * 21);
	}

	// scan through user list
	i = 0;
	p = r;
	while (i < nusers) {
		int j;
		char matched;
		userabi = (abi("_takers") << 32) | (long) i;
		i = i + 1;
		read(buf, userabi);
		memcopy(p, buf + 4, 21);
		p += 21;
	}
	output(nusers * 21, r);
}

public void init() {
}
