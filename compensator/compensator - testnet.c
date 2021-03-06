// this contract contrcols compensation handler to use.
// except for the initial handler, handler is chosen by voting.
// anyone may start a propostion (if none is on-going), during 403200 blocks (2 weeks)
// period, users may vote. One coin per vote. By end of voting, if
// 95% coins votes for new handler, new handler takes effect 201600 blocks (7 days)
// later.

// a prosotion to change handler
char [20]_propostion;	// porposed handler
int _startblk;			// height of block the proposition is made. if 0, then there is no proposition going

struct vote {
	struct __outpoint__ coin;		// voting address
	char yesno;						// yes or no. 1 for yes, 0 for no
};

int _votecount;				// number of votes
int _sequence;				// sequence # to avoid duplicated execs.

char [20]_handler;

// define NET 0x6f

public int sequence() {
	char [56]text;

	read(text, abi("_sequence"));
	_sequence = *(int*) (text + 4);
	output(4, text + 4);
	return _sequence;
}

char eqoutpoint(char * p, char * q) {
	// are the outpoints same?
	int i;
	i = 0;
	while (i < 36) {
		if (*p != *q) 
			return 0;
		i += 1; p += 1; q += 1;
	}
	return 1;
}

public int votes() {
	char [56]text;

	read(text, abi("_votecount"));
	_votecount = *(int*) (text + 4);
	output(4, text + 4);
	return _votecount;
}

public int started() {
	char [56]text;

	read(text, abi("_startblk"));
	_startblk = *(int*) (text + 4);
	output(4, text + 4);
	return _startblk;
}

public void propostion(char * res) {
	char [56]buf;

	_startblk = 0;
	read(buf, abi("_startblk"));
	if (*(int*)buf == 4) 
		_startblk = *((int*)(buf + 4));

	if (_startblk <= 0) read(buf, abi("_handler"));
	else read(buf, abi("_propostion"));

	output(20, buf + 4);
	if (res != nil)
		memcopy(res, buf + 4, 20);
}

public void getvote(struct vote * v, int n) {
	long userabi;
	char [48]vote;

	userabi = (abi("_votes") << 32) | (long) n;
	read(vote, userabi);

	if (v != nil) *v = *(struct vote *)(vote + 4);

	output(37, vote + 4);
}

public char queryvote(struct vote * utxo) {
	// check if the utxo has voted, and if yes, what's the vote
	long userabi;
	char [48]vote;
	char vresult;
	char [48]buf;
	int i;
	int qih;

	vresult = 0;

	// use last 7 bytes of hash and first byte of index as quick index
	qih = *(int*)(utxo + 32 - 3);		// high portion of quick index
	if (qih != abi("_votes") && qih != 0) {
		// we can use quick find index
		char [48]vote;
		int i, j;
		char * p;

		read(buf, *(long*)(utxo + 32 - 7));
		if (*(int*)buf != 4) {
			// no vote
			vresult = 0xff;
			output(1, &vresult);
			return 0xff;
		}

		// get the recorded vote, if it is not the same utxo, there is a has collusion, need to do full scan
		userabi = (abi("_votes") << 32) | (ulong) (*(uint*)(buf + 4));
		read(vote, userabi);

		if (eqoutpoint((char*) utxo, vote + 4)) {
			// match, voted, return what was voted
			output(1, vote + 40);
			return *(vote + 40);
		}
	}

	// full scan of voting list
	read(&buf, abi("_votecount"));
	if (*(int*)buf != 4) fail();
	_votecount = *((int*)(buf + 4));

	i = 0;
	while (i < _votecount) {
		long userabi;
		char [48]vote;

		userabi = (abi("_votes") << 32) | (long) i;
		read(vote, userabi);

		if (eqoutpoint((char*) utxo, vote + 4)) {
			output(1, vote + 40);
			return *(vote + 40);
		}

		i += 1;
	}

	vresult = 0xff;
	output(1, &vresult);
	return 0xff;
}

public char passed() {
	// tell if a proposition has passed
	char result;
	int i;
	int height;
	char [48]buf;
	long yes, coincount;

	read(buf, abi("_startblk"));
	result = 0;

	if (*(int*)buf != 4) {
		output(1, &result);
		return 0;
	}

	_startblk = *((int*)(buf + 4));
	if (_startblk <= 0)	{
		output(1, &result);
		return 0;
	}

	getBlockHeight(&height);

	// not closed yet
	if (height < _startblk + 400) {	// test // 403200) {
		output(1, &result);
		return 0;
	}

	// check if voting has passed
	read(&buf, abi("_votecount"));

	if (*(int*)buf != 4) {
		output(1, &result);
		return 0;
	}
	_votecount = *((int*)(buf + 4));

	if (_votecount < 3) {	// test // 100) {
		// not enough participation, deemed fail
		output(1, &result);
		return 0;
	}

	i = 0; yes = 0; coincount = 0;
	while (i < _votecount) {
		long userabi, v;
		char [48]vote;
		char [128]utxo;

		userabi = (abi("_votes") << 32) | (long) i;
		read(vote, userabi);

		getUtxo(utxo, vote + 4);
		if ((*(long*)utxo) != 0) {	// coin has been spent, does not count
			i += 1;
			continue;
		}
		
		v = *(long*)(utxo + 8);
		coincount += v;

		if (vote[40] == 1) yes += v;

		i += 1;
	}

	if (yes * 100 >= coincount * 95) result = 1;

	output(1, &result);
	return result;
}

public void makevote(struct vote * utxo, char * pubkey, char * sig) {
	// vote
	long userabi;
	char [56]text;
	char [48]buf;
	char [32]hash;
	char vresult;
	struct __storedata__ a;
	int qih;
	int height;

	votecheck();

	if (utxo->yesno != 1 && utxo->yesno != 0) fail();

	read(buf, abi("_startblk"));

	// is there a vote going?
	if (*(int*)buf != 4) fail();
	_startblk = *((int*)(buf + 4));
	if (_startblk <= 0)	fail();

	getBlockHeight(&height);
	// passed vote deadline
	if (height > _startblk + 400)	// test // 403200)
		fail();

	getUtxo(buf, utxo);
	if (*(long*)buf != 0)	// coin has been spent (=-1), or not an omega (type 0)
		fail();

	if (*(int*)(buf + 16) > 25)	// irregular script (e.g. contract call)
		fail();

	getUtxo(buf, utxo, 1);	// get utxo with script
	if (buf[20] != 0x6f || buf[41] != 0x41)	// not for the net or not pkh script
		fail();
	
	// build text for hash. text = seq + outpoint
	read(text, abi("_sequence"));
	_sequence = *(int*) (text + 4);

	memcopy(text + 8, utxo, 36);
	hash(text + 4, 40, hash);

	// verify sig
	sigverify(&vresult, hash, pubkey, sig);
	if (vresult != 1) fail();

	// check if it is a repeated vote
	// quick find index is last 7 bytes of hash and 1 byte of index from outpoint
	// but, if the index's higher 4 bytes is abi("_votes") or 0, then do not use quick find index to avoid hash collusion
	vresult = 0;
	qih = *(int*)((char*)utxo + 32 - 3);
	if (qih != abi("_votes") && qih != 0) {
		// we can use quick find index
		read(text, *(long*)((char*)utxo + 32 - 7));
		if (*(int*)text != 4) vresult = 1;	// quick find index does not exist, ok 
		else {
			char [48]vote;
			int i, j;
			char * p;

			// get the recorded vote, if it is the same utxo, fail
			userabi = (abi("_votes") << 32) | (ulong) (*(uint*)(text + 4));
			read(vote, userabi);

			if (eqoutpoint((char*) utxo, vote + 4))
				fail();

			vresult = 0;	// can't decide because there might be a hash collusion
		}
	}

	read(&buf, abi("_votecount"));
	if (*(int*)buf != 4) fail();
	_votecount = *((int*)(buf + 4));

	if (vresult == 0) {	// need to scan votes
		char [48]buf;
		int i;

		i = 0;
		while (i < _votecount) {
			long userabi;
			char [48]vote;

			userabi = (abi("_votes") << 32) | (long) i;
			read(vote, userabi);

			if (eqoutpoint((char*) utxo, vote + 4))
				fail();

			i += 1;
		}
	}

	// the vote is accepted
	// record vote
	userabi = (abi("_votes") << 32) | (long) _votecount;
	a.len = 37;
	a.data = (char*) utxo;
	write(userabi, &a);

	if (qih != abi("_votes") && qih != 0) {
		// write quick find index
		a.len = 4;
		a.data = (char*) &_votecount;
		write(*(long*)((char*)utxo + 4 + 32 - 7), &a);
	}
	
	_votecount += 1;

	// save seq
	_sequence = _sequence + 1;
	a.len = 4;
	a.data = &_sequence;
	write(abi("_sequence"), &a);

	a.data = &_votecount;
	write(abi("_votecount"), &a);
}

public void propose(char * propostion) {
	// make a proposition
	char [48]buf;
	int i;
	struct __storedata__ a;

	read(buf, abi("_handler"));
	if (*(int*)buf != 20) {
		// not set yet, accept proposal
		a.len = 20;
		a.data = propostion;
		write(abi("_handler"), &a);
		// libload will cause execution of init which should initialize storage data in this contract's space
		libload(propostion);
		return;
	}

	votecheck();

	read(buf, abi("_startblk"));
	if (*(int*)buf == 4) {
		_startblk = *((int*)(buf + 4));
		if (_startblk > 0) fail();		// a vote is going
	}

	getBlockHeight(&_startblk);
	a.len = 4;
	a.data = (char*) &_startblk;
	write(abi("_startblk"), &a);

	_votecount = 0;
	a.data = (char*) &_votecount;
	write(abi("_votecount"), &a);

	a.len = 20;
	a.data = propostion;
	write(abi("_propostion"), &a);
}

void constructor() {
	struct __storedata__ buf;

	_startblk = 0;
	_sequence = 0;

	buf.len = 4;
	buf.data = (char *) &_startblk;
	write(abi("_startblk"), &buf);

	buf.data = (char*) &_sequence;
	write(abi("_sequence"), &buf);
}

void clearvote() {
	char [48]buf;
	int i;

	read(buf, abi("_startblk"));

	if (*(int*)buf != 4) return;
	_startblk = *((int*)(buf + 4));
	if (_startblk <= 0)	return;

	read(&buf, abi("_votecount"));

	if (*(int*)buf != 4) return;
	_votecount = *((int*)(buf + 4));

	i = 0;
	while (i < _votecount) {
		long userabi;
		char [48]vote;
		struct vote * v;
		int qih;

		userabi = (abi("_votes") << 32) | (long) i;
		read(vote, userabi);

		delete(userabi);

		// quick find index is last 7 bytes of hash and 1 byte of index from outpoint
		// but, if the index's higher 4 bytes is abi("_votes"), then it is a vote index, not quick find index
		qih = *(int*)(vote + 4 + 32 - 3);
		if (qih != abi("_votes") && qih != 0)
			delete(*(long*)(vote + 4 + 32 - 7));	// delete a quick find index

		i += 1;
	}

	delete(abi("_propostion"));
	delete(abi("_startblk"));
	delete(abi("_votecount"));
}

public void finalizevote() {
	if (!votecheck()) fail();
}

char votecheck() {
	struct __storedata__ a;
	char [48]buf;
	int i;
	long yes, coincount;
	int height;

	read(buf, abi("_startblk"));

	if (*(int*)buf != 4) return 0;
	_startblk = *((int*)(buf + 4));
	if (_startblk <= 0)	return 0;

	getBlockHeight(&height);

	// voting not closed yet
	if (height < _startblk + 400)	// test // 403200 + 201600)
		return 0;

	// check if voting has passed
	read(&buf, abi("_votecount"));

	if (*(int*)buf != 4) return 0;
	_votecount = *((int*)(buf + 4));

	if (_votecount < 3) {	// test // 100) {
		// not enough participation, deemed fail
		clearvote();
		return 1;
	}

	i = 0; yes = 0; coincount = 0;
	while (i < _votecount) {
		long userabi, v;
		char [48]vote;
		char [128]utxo;

		userabi = (abi("_votes") << 32) | (long) i;
		read(vote, userabi);

		getUtxo(utxo, vote + 4);
		if ((*(long*)utxo) != 0) {	// coin has been spent, does not count
			i += 1;
			continue;
		}
		
		v = *(long*)(utxo + 8);
		coincount += v;

		if (vote[40] == 1) yes = yes + v;

		i += 1;
	}

	if (yes * 100 >= coincount * 95) {
		// passed
		read(buf, abi("_propostion"));

		if (*(int*)buf != 20) return 0;

		// not effective yet
		if (height < _startblk + 400 + 200)	// test // 403200 + 201600)
			return 0;

		a.len = 20;
		a.data = buf + 4;
		write(abi("_handler"), &a);
		memcopy(_handler, buf + 4, 20);
	}

	clearvote();
	return 1;
}

// all other ops goes to the handler which is loaded and executed in place
public void _() {
	char * h;
	char [48]buf;

	// load handler and go
	read(buf, abi("_handler"));
	h = buf + 4;
	@@
		LIBLOAD x20,i\h,
	@@
	exit();
}
