MALLOC 0,208,
; Assign gii0'40 to var _poolvalue
; Assign gii0'48 to var _end
; Assign gii0'56 to var _cap
; Assign @gii0'64 to var _donor
; Assign @gii0'104 to var _accumlated
; Assign @gii0'144 to var donor
define mainRETURN .
EVAL32 gi0,4,
EVAL32 gi4,BODY,
STOP
define BODY .
MALLOC 0,168,
EVAL32 gii0'8,x8f4cae0a,gi8,!
IF gii0'8,4,
CALL 0,.issue,gi12,gi20,
RETURN
STOP
EVAL32 gii0'8,xc70825ff,gi8,!
IF gii0'8,4,
CALL 0,.deposit,gi12,gi20,gi28,
RETURN
STOP
EVAL32 gii0'8,x3de55914,gi8,!
IF gii0'8,4,
CALL 0,.terminate,gi12,
RETURN
STOP
EVAL32 gii0'8,x444bb4fb,gi8,!
IF gii0'8,4,
CALL 0,.total,gi12,
RETURN
STOP
EVAL32 gii0'8,xe971ee22,gi8,!
IF gii0'8,4,
CALL 0,.allowed,gi12,
RETURN
STOP
EVAL32 gii0'8,x4c3466f2,gi8,!
IF gii0'8,4,
CALL 0,.closetime,gi12,
RETURN
STOP
EVAL32 gii0'8,xf4ff0d08,gi8,!
IF gii0'8,4,
CALL 0,.donator,gi12,
RETURN
STOP
EVAL32 gii0'8,x80f363ed,gi8,!
IF gii0'8,4,
CALL 0,.lasttx,gi12,
RETURN
STOP
EVAL32 gii0'8,x2a5cc69b,gi8,!
IF gii0'8,4,
CALL 0,.users,gi12,
RETURN
STOP
EVAL32 gii0'8,xc81097af,gi8,!
IF gii0'8,4,
CALL 0,.userlist,gi12,
RETURN
STOP
EVAL32 gii0'8,x1,gi8,!
IF gii0'8,4,
CALL 0,.init,
RETURN
STOP
CALL 0,._,gi12,
RETURN
STOP
define getMeta .
ALLOC 0,56,
; Assign ii0'40 to var n
; Assign ii0'48 to var p
; 	n
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1612684889,
IF 1,.__label1612684890,
define __label1612684889 .
; 	if (r == nil) return;
RETURN
define __label1612684890 .
; 	n = 0;
EVAL32 @ii0'40,0,
; 	p = a;
EVAL64 @ii0'48,i16,
; 	}
define __label1612684891 .
EVAL8 ii0'8,iii0'48,0,!
IF ii0'8,2,
IF 1,.__label1612684892,
; 		p += 1;
EVAL64 @ii0'48,ii0'48,1,1,*+
; 		n += 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1612684891,
define __label1612684892 .
; 	@@

		META ii8,ii0"40,ii16,
	define getMetaRETURN .
RETURN
define mint .
ALLOC 0,48,
; Assign ii0'40 to var type
; 	type = a->tokentype & 3;
EVAL64 @ii0'40,0,i16,+P3,&
; 	}
EVAL64 ii0'8,ii0'40,2,<
IF ii0'8,.__label1612684893,
; 	}
EVAL64 ii0'8,ii0'40,2,=
IF ii0'8,.__label1612684895,
; 		@@

			MINT ii8,ii16,ii16"8,ii16"40,
		IF 1,.__label1612684896,
define __label1612684895 .
; 		@@

			MINT ii8,ii16,ii16"8,ii16"16,
		define __label1612684896 .
IF 1,.__label1612684894,
define __label1612684893 .
; 		@@

			MINT ii8,ii16,ii16"8,
		define __label1612684894 .
define mintRETURN .
RETURN
define issue .
ALLOC 0,324,
; Assign @ii0'40 to var buf
; Assign ii0'88 to var time
; Assign ii0'96 to var i
; Assign @ii0'104 to var contract
; Assign @ii0'128 to var in
; Assign ii0'200 to var userabi
; Assign ii0'208 to var ntakersabi
; Assign ii0'216 to var nusers
; Assign @ii0'224 to var a
; Assign ii0'240 to var ln
; Assign ii0'248 to var op
; Assign @ii0'256 to string address
COPYIMM @ii0'256,L8,x6164647265737300,
; Assign ii0'264 to var j
; Assign ii0'272 to var matched
; Assign @ii0'280 to var a
; 	getMeta(buf, "address");
CALL 0,.getMeta,@ii0'40,@ii0'256,

; 	contract[0] = 0x88;
EVAL64 ii0'296,0,@ii0'104,+0,+
EVAL8 iii0'296,x88,
; 	memcopy(contract + 1, buf + 4, 20);
EVAL64 ii0'296,@ii0'104,1,+
EVAL64 ii0'304,@ii0'40,4,+
COPY iii0'296,iii0'304,20,
; 	getCoin(&in);
EVAL64 ii0'296,@@ii0'128,
GETCOIN iii0'296,
; 	read
EVAL64 ii0'8,0,@ii0'128,+P0,!0,@ii0'128,8,++P0,!|
IF ii0'8,.__label1612684897,
IF 1,.__label1612684898,
define __label1612684897 .
; 	if (in.tokentype != 0 || in.data.num.value != 0) fail();
REVERT
define __label1612684898 .
; 	read(buf, abi("_end"));
LOAD @ii0'40,x30c1dc5a,
; 	_end
EVAL64 ii0'296,@@ii0'40,
EVAL32 ii0'8,iii0'296,4,!
IF ii0'8,.__label1612684899,
IF 1,.__label1612684900,
define __label1612684899 .
; 	if (*(int*)buf != 4) fail();
REVERT
define __label1612684900 .
; 	_end = *((int*)(buf + 4));
EVAL64 ii0'296,0,0,@ii0'40,4,+++
EVAL32 @gii0'48,iii0'296,
; 	getBlockTime(&time);
EVAL64 ii0'296,@ii0'88,
TIME iii0'296,
; 	read
EVAL32 ii0'8,ii0'88,gii0'48,)
IF ii0'8,.__label1612684901,
IF 1,.__label1612684902,
define __label1612684901 .
; 	if (time >= _end) fail();
REVERT
define __label1612684902 .
; 	read(buf, abi("_poolvalue"));
LOAD @ii0'40,x2d5f1d0c,
; 	else _poolvalue = *((long*)(buf + 4));
EVAL64 ii0'296,@@ii0'40,
EVAL32 ii0'8,iii0'296,8,!
IF ii0'8,.__label1612684903,
; 	else _poolvalue = *((long*)(buf + 4));
EVAL64 @gii0'40,0,0,0,@ii0'40,4,++++P
IF 1,.__label1612684904,
define __label1612684903 .
; 	if (*(int*)buf != 8) _poolvalue = 0;
EVAL64 @gii0'40,0,
define __label1612684904 .
; 	read(buf, abi("_cap"));
LOAD @ii0'40,x8b0cf6d7,
; 	ntakersabi
EVAL64 ii0'308,0,@ii0'40,4,++
EVAL32 ii0'304,0,0,iii0'308,++
EVAL64 ii0'296,i8,0,Dii0'304,+100000000,*>
EVAL64 ii0'316,@@ii0'40,
EVAL32 ii0'8,iii0'316,4,!ii0'296,|
IF ii0'8,.__label1612684905,
IF 1,.__label1612684906,
define __label1612684905 .
; 	if (*(int*)buf != 4 || value > ((long) ((*(int*)(buf + 4)))) * 100000000) fail();
REVERT
define __label1612684906 .
; 	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
EVAL64 @ii0'208,0,xd67a8b25,32,[+xffffffff,|
; 	read(buf, ntakersabi);
LOAD @ii0'40,ii0'208,
; 	}
EVAL64 ii0'296,@@ii0'40,
EVAL32 ii0'8,iii0'296,4,!
IF ii0'8,.__label1612684907,
; 		nusers = *(int*) (buf + 4);
EVAL64 ii0'296,0,@ii0'40,4,++
EVAL32 @ii0'216,iii0'296,
IF 1,.__label1612684908,
define __label1612684907 .
; 		nusers = 0;
EVAL32 @ii0'216,0,
define __label1612684908 .
; 	i = 0;
EVAL32 @ii0'96,0,
; 	}
define __label1612684909 .
EVAL32 ii0'8,ii0'96,ii0'216,<
IF ii0'8,2,
IF 1,.__label1612684910,
; 		userabi = (abi("_takers") << 32) | (long) i;
EVAL64 @ii0'200,0,xd67a8b25,32,[+Dii0'96,|
; 		i = i + 1;
EVAL32 @ii0'96,ii0'96,1,+
; 		read(buf, userabi);
LOAD @ii0'40,ii0'200,
; 		matched = 1;
EVAL8 @ii0'272,1,
; 		j = 0;
EVAL32 @ii0'264,0,
; 		}
define __label1612684911 .
EVAL32 ii0'296,0,
EVAL8 ii0'296,ii0'272,1,=
EVAL32 ii0'8,ii0'264,21,<ii0'296,&
IF ii0'8,2,
IF 1,.__label1612684912,
; 			j
EVAL64 ii0'296,0,@ii0'40,+4,Dii0'264,++
EVAL64 ii0'304,0,i16,Dii0'264,1,*++
EVAL8 ii0'8,iii0'296,iii0'304,!
IF ii0'8,.__label1612684913,
IF 1,.__label1612684914,
define __label1612684913 .
; 			if (buf[4 + j] != *(address + j)) matched = 0;
EVAL8 @ii0'272,0,
define __label1612684914 .
; 			j += 1;
EVAL32 @ii0'264,ii0'264,1,+
IF 1,.__label1612684911,
define __label1612684912 .
; 	}
EVAL8 ii0'8,ii0'272,1,=
IF ii0'8,.__label1612684915,
IF 1,.__label1612684916,
define __label1612684915 .
; 		if (matched == 1) fail();
REVERT
define __label1612684916 .
IF 1,.__label1612684909,
define __label1612684910 .
; 	userabi = (abi("_takers") << 32) | (long) nusers;
EVAL64 @ii0'200,0,xd67a8b25,32,[+Dii0'216,|
; 	a.len = 21;
EVAL64 ii0'296,0,@ii0'224,+
EVAL32 iii0'296,21,
; 	a.data = address;
EVAL64 0,@ii0'224,4,++i16,
; 	write(userabi, &a);
EVAL64 ii0'296,@@ii0'224,
EVAL64 ii0'8,iii0'296"4,
STORE ii0'200,iii0'296,iii0'8,
; 	nusers = nusers + 1;
EVAL32 @ii0'216,ii0'216,1,+
; 	a.len = 4;
EVAL64 ii0'296,0,@ii0'224,+
EVAL32 iii0'296,4,
; 	a.data = (char*) &nusers;
EVAL64 0,@ii0'224,4,++@ii0'216,
; 	write(ntakersabi, &a);
EVAL64 ii0'296,@@ii0'224,
EVAL64 ii0'8,iii0'296"4,
STORE ii0'208,iii0'296,iii0'8,
; 	read(buf, abi("_accumlated"));
LOAD @ii0'40,x3c1c1cb8,
; 	addTxin(buf + 4);
EVAL64 ii0'296,@ii0'40,4,+
SPEND iii0'296,iii0'296"32,
; 	i = 0;
EVAL32 @ii0'96,0,
; 	}
define __label1612684917 .
EVAL32 ii0'8,ii0'96,48,<
IF ii0'8,2,
IF 1,.__label1612684918,
; 		buf[i] = 0;
EVAL64 ii0'296,0,@ii0'40,+Dii0'96,+
EVAL8 iii0'296,0,
; 		i = i + 1;
EVAL32 @ii0'96,ii0'96,1,+
IF 1,.__label1612684917,
define __label1612684918 .
; 	memcopy(buf + 8, (char*) &value, 8);
EVAL64 ii0'296,@ii0'40,8,+
EVAL64 ii0'304,@i8,
COPY iii0'296,iii0'304,8,
; 	ln = 25;
EVAL32 @ii0'240,25,
; 	memcopy(buf + 16, &ln, 4);
EVAL64 ii0'296,@ii0'40,16,+
EVAL64 ii0'304,@ii0'240,
COPY iii0'296,iii0'304,4,
; 	memcopy(buf + 20, address, 21);
EVAL64 ii0'296,@ii0'40,20,+
COPY iii0'296,ii16,21,
; 	buf[41] = 0x41;
EVAL64 ii0'296,0,@ii0'40,+41,+
EVAL8 iii0'296,x41,
; 	addTxout(&op, buf);
EVAL64 ii0'296,@ii0'248,
ADDTXOUT iii0'296,@ii0'40,

; 	_poolvalue -= value + 1024;
EVAL64 @gii0'40,gii0'40,i8,1024,+-
; 	}
EVAL64 ii0'8,gii0'40,1024,>
IF ii0'8,.__label1612684919,
; 		delete(abi("_accumlated"));
DEL x3c1c1cb8,
; 		delete(abi("_poolvalue"));
DEL x2d5f1d0c,
IF 1,.__label1612684920,
define __label1612684919 .
; 		i = 0;
EVAL32 @ii0'96,0,
; 		}
define __label1612684921 .
EVAL32 ii0'8,ii0'96,48,<
IF ii0'8,2,
IF 1,.__label1612684922,
; 			buf[i] = 0;
EVAL64 ii0'296,0,@ii0'40,+Dii0'96,+
EVAL8 iii0'296,0,
; 			i = i + 1;
EVAL32 @ii0'96,ii0'96,1,+
IF 1,.__label1612684921,
define __label1612684922 .
; 		memcopy(buf + 8, (char*) &_poolvalue, 8);
EVAL64 ii0'296,@ii0'40,8,+
EVAL64 ii0'304,@gii0'40,
COPY iii0'296,iii0'304,8,
; 		ln = 21;
EVAL32 @ii0'240,21,
; 		memcopy(buf + 16, &ln, 4);
EVAL64 ii0'296,@ii0'40,16,+
EVAL64 ii0'304,@ii0'240,
COPY iii0'296,iii0'304,4,
; 		memcopy(buf + 20, contract, 21);
EVAL64 ii0'296,@ii0'40,20,+
COPY iii0'296,@ii0'104,21,
; 		addTxout(&op, buf);
EVAL64 ii0'296,@ii0'248,
ADDTXOUT iii0'296,@ii0'40,

; 		getOutpoint(&_accumlated);
EVAL64 ii0'296,@@gii0'104,
RECEIVED iii0'296,
; 		_accumlated.index = op;
EVAL64 ii0'296,0,@gii0'104,32,++
EVAL32 iii0'296,ii0'248,
; 		a.len = 8;
EVAL64 ii0'296,0,@ii0'280,+
EVAL32 iii0'296,8,
; 		a.data = (char*) &_poolvalue;
EVAL64 0,@ii0'280,4,++@gii0'40,
; 		write(abi("_poolvalue"), &a);
EVAL64 ii0'296,@@ii0'280,
EVAL64 ii0'8,iii0'296"4,
STORE x2d5f1d0c,iii0'296,iii0'8,
; 		a.len = 36;
EVAL64 ii0'296,0,@ii0'280,+
EVAL32 iii0'296,36,
; 		a.data = (char*) &_accumlated;
EVAL64 0,@ii0'280,4,++@@gii0'104,
; 		write(abi("_accumlated"), &a);
EVAL64 ii0'296,@@ii0'280,
EVAL64 ii0'8,iii0'296"4,
STORE x3c1c1cb8,iii0'296,iii0'8,
define __label1612684920 .
define issueRETURN .
RETURN
define deposit .
ALLOC 0,288,
; Assign @ii0'40 to var buf
; Assign ii0'88 to var time
; Assign ii0'96 to var i
; Assign @ii0'104 to var op
; Assign @ii0'144 to var contract
; Assign @ii0'168 to var in
; Assign @ii0'240 to var a
; Assign ii0'256 to var ln
; Assign @ii0'264 to string address
COPYIMM @ii0'264,L8,x6164647265737300,
; 	getMeta(buf, "address");
CALL 0,.getMeta,@ii0'40,@ii0'264,

; 	contract[0] = 0x88;
EVAL64 ii0'272,0,@ii0'144,+0,+
EVAL8 iii0'272,x88,
; 	memcopy(contract + 1, buf + 4, 20);
EVAL64 ii0'272,@ii0'144,1,+
EVAL64 ii0'280,@ii0'40,4,+
COPY iii0'272,iii0'280,20,
; 	getCoin(&in);
EVAL64 ii0'272,@@ii0'168,
GETCOIN iii0'272,
; 	read
EVAL64 ii0'8,0,@ii0'168,+P0,!0,@ii0'168,8,++P0,=|
IF ii0'8,.__label1612684923,
IF 1,.__label1612684924,
define __label1612684923 .
; 	if (in.tokentype != 0 || in.data.num.value == 0) fail();
REVERT
define __label1612684924 .
; 	read(buf, abi("_poolvalue"));
LOAD @ii0'40,x2d5f1d0c,
; 	getBlockTime
EVAL64 ii0'272,0,0,0,0,0,@ii0'40,4,++++P+0,!+
EVAL64 ii0'280,@@ii0'40,
EVAL32 ii0'8,iii0'280,8,=ii0'272,&
IF ii0'8,.__label1612684925,
IF 1,.__label1612684926,
define __label1612684925 .
; 	if (*(int*)buf == 8 && ((*((long*)(buf + 4))) != 0)) fail();
REVERT
define __label1612684926 .
; 	getBlockTime(&time);
EVAL64 ii0'272,@ii0'88,
TIME iii0'272,
; 	a
EVAL32 ii0'8,ii0'88,i8,)
IF ii0'8,.__label1612684927,
IF 1,.__label1612684928,
define __label1612684927 .
; 	if (time >= endtime) fail();
REVERT
define __label1612684928 .
; 	a.len = 8;
EVAL64 ii0'272,0,@ii0'240,+
EVAL32 iii0'272,8,
; 	a.data = (char*) &in.data.num.value;
EVAL64 ii0'272,0,@ii0'168,8,++
EVAL64 0,@ii0'240,4,++ii0'272,
; 	write(abi("_poolvalue"), &a);
EVAL64 ii0'272,@@ii0'240,
EVAL64 ii0'8,iii0'272"4,
STORE x2d5f1d0c,iii0'272,iii0'8,
; 	getOutpoint(&_accumlated);
EVAL64 ii0'272,@@gii0'104,
RECEIVED iii0'272,
; 	a.len = 36;
EVAL64 ii0'272,0,@ii0'240,+
EVAL32 iii0'272,36,
; 	a.data = (char*) &_accumlated;
EVAL64 0,@ii0'240,4,++@@gii0'104,
; 	write(abi("_accumlated"), &a);
EVAL64 ii0'272,@@ii0'240,
EVAL64 ii0'8,iii0'272"4,
STORE x3c1c1cb8,iii0'272,iii0'8,
; 	a.len = 4;
EVAL64 ii0'272,0,@ii0'240,+
EVAL32 iii0'272,4,
; 	a.data = (char*) &endtime;
EVAL64 0,@ii0'240,4,++@i8,
; 	write(abi("_end"), &a);
EVAL64 ii0'272,@@ii0'240,
EVAL64 ii0'8,iii0'272"4,
STORE x30c1dc5a,iii0'272,iii0'8,
; 	a.len = 4;
EVAL64 ii0'272,0,@ii0'240,+
EVAL32 iii0'272,4,
; 	a.data = (char*) &ucap;
EVAL64 0,@ii0'240,4,++@i16,
; 	write(abi("_cap"), &a);
EVAL64 ii0'272,@@ii0'240,
EVAL64 ii0'8,iii0'272"4,
STORE x8b0cf6d7,iii0'272,iii0'8,
; 	a.len = 33;
EVAL64 ii0'272,0,@ii0'240,+
EVAL32 iii0'272,33,
; 	a.data = pubkey;
EVAL64 0,@ii0'240,4,++i24,
; 	write(abi("_donor"), &a);
EVAL64 ii0'272,@@ii0'240,
EVAL64 ii0'8,iii0'272"4,
STORE xb26fd8ea,iii0'272,iii0'8,
define depositRETURN .
RETURN
define terminate .
ALLOC 0,336,
; Assign @ii0'40 to var buf
; Assign ii0'88 to var time
; Assign @ii0'96 to var a
; Assign @ii0'112 to var contract
; Assign @ii0'136 to var in
; Assign @ii0'208 to var h
; Assign ii0'240 to var vresult
; Assign ii0'248 to var i
; Assign ii0'256 to var ntakersabi
; Assign ii0'264 to var nusers
; Assign ii0'272 to var op
; Assign ii0'280 to var ln
; Assign @ii0'288 to string address
COPYIMM @ii0'288,L8,x6164647265737300,
; Assign ii0'296 to var userabi
; 	getCoin(&in);
EVAL64 ii0'304,@@ii0'136,
GETCOIN iii0'304,
; 	read
EVAL64 ii0'8,0,@ii0'136,+P0,!0,@ii0'136,8,++P0,!|
IF ii0'8,.__label1612684929,
IF 1,.__label1612684930,
define __label1612684929 .
; 	if (in.tokentype != 0 || in.data.num.value != 0) fail();
REVERT
define __label1612684930 .
; 	read(buf, abi("_accumlated"));
LOAD @ii0'40,x3c1c1cb8,
; 	addTxin(buf + 4);
EVAL64 ii0'304,@ii0'40,4,+
SPEND iii0'304,iii0'304"32,
; 	read(buf, abi("_poolvalue"));
LOAD @ii0'40,x2d5f1d0c,
; 	_poolvalue
EVAL64 ii0'304,0,0,0,@ii0'40,4,++++P0,=
EVAL64 ii0'312,@@ii0'40,
EVAL32 ii0'8,iii0'312,8,!ii0'304,|
IF ii0'8,.__label1612684931,
IF 1,.__label1612684932,
define __label1612684931 .
; 	if (*(int*)buf != 8 || *((long*)(buf + 4)) == 0) fail();
REVERT
define __label1612684932 .
; 	_poolvalue = *((long*)(buf + 4));
EVAL64 @gii0'40,0,0,0,@ii0'40,4,++++P
; 	getMeta(buf, "address");
CALL 0,.getMeta,@ii0'40,@ii0'288,

; 	contract[0] = 0x88;
EVAL64 ii0'304,0,@ii0'112,+0,+
EVAL8 iii0'304,x88,
; 	memcopy(contract + 1, buf + 4, 20);
EVAL64 ii0'304,@ii0'112,1,+
EVAL64 ii0'312,@ii0'40,4,+
COPY iii0'304,iii0'312,20,
; 	memcopy(buf, contract, 21);
COPY @ii0'40,@ii0'112,21,
; 	memcopy(buf + 21, &_poolvalue, 8);
EVAL64 ii0'304,@ii0'40,21,+
EVAL64 ii0'312,@gii0'40,
COPY iii0'304,iii0'312,8,
; 	hash(buf, 29, h);
HASH @ii0'208,@ii0'40,29,
; 	read(buf, abi("_donor"));
LOAD @ii0'40,xb26fd8ea,
; 	buf[3] = buf[0];
EVAL64 ii0'304,0,@ii0'40,+3,+
EVAL64 ii0'312,0,@ii0'40,+0,+
EVAL8 iii0'304,iii0'312,
; 	sigverify(&vresult, h, buf + 3, sig);
EVAL64 ii0'304,@ii0'240,
EVAL64 ii0'312,@ii0'40,3,+
SIGCHECK iii0'304,@ii0'208,iii0'312,ii8,
; 	buf
EVAL8 ii0'8,ii0'240,1,!
IF ii0'8,.__label1612684933,
IF 1,.__label1612684934,
define __label1612684933 .
; 	if (vresult != 1) fail();
REVERT
define __label1612684934 .
; 	buf[3] = 0;
EVAL64 ii0'304,0,@ii0'40,+3,+
EVAL8 iii0'304,0,
; 	hash160(buf + 4, *(int*)buf, donor + 1);
EVAL64 ii0'304,@ii0'40,4,+
EVAL64 ii0'320,@@ii0'40,
EVAL32 ii0'312,iii0'320,
EVAL64 ii0'328,@gii0'144,1,+
HASH160 iii0'328,iii0'304,ii0'312,
; 	donor[0] = 0;
EVAL64 ii0'304,0,@gii0'144,+0,+
EVAL8 iii0'304,0,
; 	i = 0;
EVAL32 @ii0'248,0,
; 	}
define __label1612684935 .
EVAL32 ii0'8,ii0'248,48,<
IF ii0'8,2,
IF 1,.__label1612684936,
; 		buf[i] = 0;
EVAL64 ii0'304,0,@ii0'40,+Dii0'248,+
EVAL8 iii0'304,0,
; 		i = i + 1;
EVAL32 @ii0'248,ii0'248,1,+
IF 1,.__label1612684935,
define __label1612684936 .
; 	_poolvalue -= 1024;
EVAL64 @gii0'40,gii0'40,1024,-
; 	memcopy(buf + 8, (char*) &_poolvalue, 8);
EVAL64 ii0'304,@ii0'40,8,+
EVAL64 ii0'312,@gii0'40,
COPY iii0'304,iii0'312,8,
; 	ln = 25;
EVAL32 @ii0'280,25,
; 	memcopy(buf + 16, &ln, 4);
EVAL64 ii0'304,@ii0'40,16,+
EVAL64 ii0'312,@ii0'280,
COPY iii0'304,iii0'312,4,
; 	memcopy(buf + 20, donor, 21);
EVAL64 ii0'304,@ii0'40,20,+
COPY iii0'304,@gii0'144,21,
; 	buf[41] = 0x41;
EVAL64 ii0'304,0,@ii0'40,+41,+
EVAL8 iii0'304,x41,
; 	addTxout(&op, buf);
EVAL64 ii0'304,@ii0'272,
ADDTXOUT iii0'304,@ii0'40,

; 	delete(abi("_poolvalue"));
DEL x2d5f1d0c,
; 	delete(abi("_end"));
DEL x30c1dc5a,
; 	delete(abi("_cap"));
DEL x8b0cf6d7,
; 	delete(abi("_donor"));
DEL xb26fd8ea,
; 	delete(abi("_accumlated"));
DEL x3c1c1cb8,
; 	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
EVAL64 @ii0'256,0,xd67a8b25,32,[+xffffffff,|
; 	read(buf, ntakersabi);
LOAD @ii0'40,ii0'256,
; 	nusers
EVAL64 ii0'304,@@ii0'40,
EVAL32 ii0'8,iii0'304,4,!
IF ii0'8,.__label1612684937,
IF 1,.__label1612684938,
define __label1612684937 .
; 	if (*(int*)buf != 4) return;
RETURN
define __label1612684938 .
; 	nusers = *(int*) (buf + 4);
EVAL64 ii0'304,0,@ii0'40,4,++
EVAL32 @ii0'264,iii0'304,
; 	i = 0;
EVAL32 @ii0'248,0,
; 	}
define __label1612684939 .
EVAL32 ii0'8,ii0'248,ii0'264,<
IF ii0'8,2,
IF 1,.__label1612684940,
; 		userabi = (abi("_takers") << 32) | (long) i;
EVAL64 @ii0'296,0,xd67a8b25,32,[+Dii0'248,|
; 		delete(userabi);
DEL Qii0'296,
; 		i = i + 1;
EVAL32 @ii0'248,ii0'248,1,+
IF 1,.__label1612684939,
define __label1612684940 .
; 	delete(ntakersabi);
DEL Qii0'256,
define terminateRETURN .
RETURN
define _ .
ALLOC 0,40,
; 	fail();
REVERT
define _RETURN .
RETURN
define total .
ALLOC 0,72,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_poolvalue"));
LOAD @ii0'40,x2d5f1d0c,
; 	output(8, buf + 4);
EVAL64 ii0'64,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'64,8,
EVAL32 gi0,8,
STOP
; 	return *(long*)(buf + 4);
EVAL64 ii0'8,ii8,0,=
IF ii0'8,.__label1612684941,
EVAL64 ii8,0,0,@ii0'40,4,+++P
define __label1612684941 .
RETURN
define totalRETURN .
RETURN
define allowed .
ALLOC 0,72,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_cap"));
LOAD @ii0'40,x8b0cf6d7,
; 	output(4, buf + 4);
EVAL64 ii0'64,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'64,4,
EVAL32 gi0,4,
STOP
; 	return *(int*)(buf + 4);
EVAL64 ii0'8,ii8,0,=
IF ii0'8,.__label1612684942,
EVAL64 ii0'64,0,@ii0'40,4,++
EVAL32 ii8,iii0'64,
define __label1612684942 .
RETURN
define allowedRETURN .
RETURN
define closetime .
ALLOC 0,72,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_end"));
LOAD @ii0'40,x30c1dc5a,
; 	output(4, buf + 4);
EVAL64 ii0'64,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'64,4,
EVAL32 gi0,4,
STOP
; 	return *(int*)(buf + 4);
EVAL64 ii0'8,ii8,0,=
IF ii0'8,.__label1612684943,
EVAL64 ii0'64,0,@ii0'40,4,++
EVAL32 ii8,iii0'64,
define __label1612684943 .
RETURN
define closetimeRETURN .
RETURN
define donator .
ALLOC 0,152,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_donor"));
LOAD @ii0'40,xb26fd8ea,
; 	hash160(buf + 4, *(int*)buf, donor + 1);
EVAL64 ii0'120,@ii0'40,4,+
EVAL64 ii0'136,@@ii0'40,
EVAL32 ii0'128,iii0'136,
EVAL64 ii0'144,@gii0'144,1,+
HASH160 iii0'144,iii0'120,ii0'128,
; 	donor[0] = 0;
EVAL64 ii0'120,0,@gii0'144,+0,+
EVAL8 iii0'120,0,
; 	output(21, donor);
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,@gii0'144,21,
EVAL32 gi0,21,
STOP
; 	memcopy
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1612684944,
IF 1,.__label1612684945,
define __label1612684944 .
; 	if (r == nil) return;
RETURN
define __label1612684945 .
; 	memcopy(r, donor, 21);
COPY ii8,@gii0'144,21,
define donatorRETURN .
RETURN
define lasttx .
ALLOC 0,128,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_accumlated"));
LOAD @ii0'40,x3c1c1cb8,
; 	output(32, buf + 4);
EVAL64 ii0'120,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'120,32,
EVAL32 gi0,32,
STOP
; 	memcopy
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1612684946,
IF 1,.__label1612684947,
define __label1612684946 .
; 	if (r == nil) return;
RETURN
define __label1612684947 .
; 	memcopy(r, buf + 4, 32);
EVAL64 ii0'120,@ii0'40,4,+
COPY ii8,iii0'120,32,
define lasttxRETURN .
RETURN
define users .
ALLOC 0,144,
; Assign ii0'40 to var ntakersabi
; Assign ii0'48 to var nusers
; Assign @ii0'56 to var buf
; 	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
EVAL64 @ii0'40,0,xd67a8b25,32,[+xffffffff,|
; 	read(buf, ntakersabi);
LOAD @ii0'56,ii0'40,
; 	}
EVAL64 ii0'136,@@ii0'56,
EVAL32 ii0'8,iii0'136,4,!
IF ii0'8,.__label1612684948,
; 		nusers = *(int*) (buf + 4);
EVAL64 ii0'136,0,@ii0'56,4,++
EVAL32 @ii0'48,iii0'136,
IF 1,.__label1612684949,
define __label1612684948 .
; 		nusers = 0;
EVAL32 @ii0'48,0,
define __label1612684949 .
; 	output(4, &nusers);
EVAL64 ii0'136,@ii0'48,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'136,4,
EVAL32 gi0,4,
STOP
; 	return nusers;
EVAL64 ii0'8,ii8,0,=
IF ii0'8,.__label1612684950,
EVAL32 ii8,ii0'48,
define __label1612684950 .
RETURN
define usersRETURN .
RETURN
define userlist .
ALLOC 0,184,
; Assign ii0'40 to var ntakersabi
; Assign ii0'48 to var nusers
; Assign ii0'56 to var p
; Assign @ii0'64 to var buf
; Assign ii0'144 to var userabi
; Assign ii0'152 to var i
; Assign ii0'160 to var j
; Assign ii0'168 to var matched
; 	ntakersabi = (abi("_takers") << 32) | 0xffffffff;
EVAL64 @ii0'40,0,xd67a8b25,32,[+xffffffff,|
; 	read(buf, ntakersabi);
LOAD @ii0'64,ii0'40,
; 	}
EVAL64 ii0'176,@@ii0'64,
EVAL32 ii0'8,iii0'176,4,!
IF ii0'8,.__label1612684951,
; 		nusers = *(int*) (buf + 4);
EVAL64 ii0'176,0,@ii0'64,4,++
EVAL32 @ii0'48,iii0'176,
IF 1,.__label1612684952,
define __label1612684951 .
; 		nusers = 0;
EVAL32 @ii0'48,0,
define __label1612684952 .
; 	if
EVAL32 ii0'8,ii0'48,0,=
IF ii0'8,.__label1612684953,
IF 1,.__label1612684954,
define __label1612684953 .
; 		output(0, nil);
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,0,0,
EVAL32 gi0,0,
STOP
; 		return;
RETURN
define __label1612684954 .
; 	i
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1612684955,
IF 1,.__label1612684956,
define __label1612684955 .
; 		alloc(&r, nusers * 21);
EVAL64 ii0'176,@i8,
EVAL32 ii0'184,ii0'48,21,*
ALLOC iii0'176,ii0'184,
define __label1612684956 .
; 	i = 0;
EVAL32 @ii0'152,0,
; 	p = r;
EVAL64 @ii0'56,i8,
; 	}
define __label1612684957 .
EVAL32 ii0'8,ii0'152,ii0'48,<
IF ii0'8,2,
IF 1,.__label1612684958,
; 		userabi = (abi("_takers") << 32) | (long) i;
EVAL64 @ii0'144,0,xd67a8b25,32,[+Dii0'152,|
; 		i = i + 1;
EVAL32 @ii0'152,ii0'152,1,+
; 		read(buf, userabi);
LOAD @ii0'64,ii0'144,
; 		memcopy(p, buf + 4, 21);
EVAL64 ii0'176,@ii0'64,4,+
COPY iii0'56,iii0'176,21,
; 		p += 21;
EVAL64 @ii0'56,ii0'56,21,1,*+
IF 1,.__label1612684957,
define __label1612684958 .
; 	output(nusers * 21, r);
EVAL32 ii0'176,ii0'48,21,*
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,ii8,ii0'176,
EVAL32 gi0,ii0'176,
STOP
define userlistRETURN .
RETURN
define init .
ALLOC 0,40,
define initRETURN .
RETURN
