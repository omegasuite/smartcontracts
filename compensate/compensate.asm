; Assign gii0'40 to var _allaccts
; Assign gii0'48 to var _totalaccts
; Assign @gii0'56 to var CONTRACT
MALLOC 0,120,
; 	init();
CALL 0,.init,

define mainRETURN .
EVAL32 gi0,4,
EVAL32 gi4,BODY,
STOP
define BODY .
MALLOC 0,80,
EVAL32 gii0'8,x1,gi8,!
IF gii0'8,4,
CALL 0,.init,
RETURN
STOP
EVAL32 gii0'8,xf8029044,gi8,!
IF gii0'8,4,
CALL 0,.claim,gi12,gi20,
RETURN
STOP
EVAL32 gii0'8,x5a1618b2,gi8,!
IF gii0'8,4,
CALL 0,.filing,gi12,gi20,gi28,
RETURN
STOP
EVAL32 gii0'8,x738aef7c,gi8,!
IF gii0'8,4,
CALL 0,.open,gi12,
RETURN
STOP
EVAL32 gii0'8,xa9d3c5d2,gi8,!
IF gii0'8,4,
CALL 0,.qindex,gi12,gi20,
RETURN
STOP
EVAL32 gii0'8,xa6c68cdc,gi8,!
IF gii0'8,4,
CALL 0,.totalaccts,gi12,
RETURN
STOP
EVAL32 gii0'8,xc29005fe,gi8,!
IF gii0'8,4,
CALL 0,.acctlist,
RETURN
STOP
EVAL32 gii0'8,x3e4468e2,gi8,!
IF gii0'8,4,
CALL 0,.account,gi12,
RETURN
STOP
EVAL32 gii0'8,xd66f5341,gi8,!
IF gii0'8,4,
CALL 0,.claims,gi12,gi20,
RETURN
STOP
ALLOC 0,120,
; 	fail();
REVERT

define _RETURN .
RETURN
STOP
define getMeta .
ALLOC 0,56,
; Assign ii0'40 to var n
; Assign ii0'48 to var p
; 	n
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791343,
IF 1,.__label1614791344,
define __label1614791343 .
; 	if (r == nil) return;
RETURN
define __label1614791344 .
; 	n = 0;
EVAL32 @ii0'40,0,
; 	p = a;
EVAL64 @ii0'48,i16,
; 	}
define __label1614791345 .
EVAL8 ii0'8,iii0'48,0,!
IF ii0'8,2,
IF 1,.__label1614791346,
; 		p += 1;
EVAL64 @ii0'48,ii0'48,1,1,*+
; 		n += 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614791345,
define __label1614791346 .
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
IF ii0'8,.__label1614791347,
; 	}
EVAL64 ii0'8,ii0'40,2,=
IF ii0'8,.__label1614791349,
; 		@@

			MINT ii8,ii16,ii16"8,ii16"40,
		IF 1,.__label1614791350,
define __label1614791349 .
; 		@@

			MINT ii8,ii16,ii16"8,ii16"16,
		define __label1614791350 .
IF 1,.__label1614791348,
define __label1614791347 .
; 		@@

			MINT ii8,ii16,ii16"8,
		define __label1614791348 .
define mintRETURN .
RETURN
define init .
ALLOC 0,184,
; Assign @ii0'40 to var a
; Assign @ii0'56 to var general
; Assign ii0'144 to var height
; Assign @ii0'152 to var buf
; 	read(buf, abi("_totalaccts"));
LOAD @ii0'152,xfebda3af,
; 	_totalaccts
EVAL64 ii0'176,@@ii0'152,
EVAL32 ii0'8,iii0'176,4,=
IF ii0'8,.__label1614791351,
IF 1,.__label1614791352,
define __label1614791351 .
; 		return;
RETURN
define __label1614791352 .
; 	_totalaccts = 1;
EVAL32 @gii0'48,1,
; 	a.len = 4;
EVAL64 ii0'176,0,@ii0'40,+
EVAL32 iii0'176,4,
; 	a.data = (char*) &_totalaccts;
EVAL64 0,@ii0'40,4,++@gii0'48,
; 	write(abi("_totalaccts"), &a);
EVAL64 ii0'176,@@ii0'40,
EVAL64 ii0'8,iii0'176"4,
STORE xfebda3af,iii0'176,iii0'8,
; 	_allaccts = 0;
EVAL64 @gii0'40,0,
; 	a.data = (char*) &_allaccts;
EVAL64 0,@ii0'40,4,++@gii0'40,
; 	write(abi("_allaccts"), &a);
EVAL64 ii0'176,@@ii0'40,
EVAL64 ii0'8,iii0'176"4,
STORE xaae13487,iii0'176,iii0'8,
; 	getBlockHeight(&height);
EVAL64 ii0'176,@ii0'144,
HEIGHT iii0'176,
; 	general._paypoint = 0;
EVAL64 ii0'176,0,@ii0'56,+
EVAL32 iii0'176,0,
; 	general._start = 0;
EVAL64 ii0'176,0,@ii0'56,4,++
EVAL32 iii0'176,0,
; 	general._round = 0;
EVAL64 ii0'176,0,@ii0'56,4,+4,++
EVAL32 iii0'176,0,
; 	general._lastclaim = 0;
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,++
EVAL32 iii0'176,0,
; 	general._amount = 0;
EVAL64 0,@ii0'56,4,+4,+4,+4,++0,
; 	general._damount = 0;
EVAL64 0,@ii0'56,4,+4,+4,+4,+8,+8,+4,++0,
; 	general._maxpay = 0;
EVAL64 0,@ii0'56,4,+4,+4,+4,+8,++0,
; 	general._claimants = 0;
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,+4,+8,+8,++
EVAL32 iii0'176,0,
; 	general._remains = 0;
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'176,0,
; 	general._opening = height;
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,+4,+8,+8,+4,+8,+4,+36,++
EVAL32 iii0'176,ii0'144,
; 	saveacct(&general);
EVAL64 ii0'176,@@ii0'56,
CALL 0,.saveacct,Qii0'176,

define initRETURN .
RETURN
define claim .
ALLOC 0,440,
; Assign @ii0'40 to var in
; Assign @ii0'112 to var acct
; Assign ii0'200 to var i
; Assign ii0'208 to var payment
; Assign @ii0'216 to var x
; Assign ii0'296 to var match
; Assign ii0'304 to var d
; Assign ii0'312 to var height
; Assign ii0'320 to var dpay
; Assign @ii0'328 to var y
; Assign ii0'408 to var j
; 	getCoin(&in);
EVAL64 ii0'416,@@ii0'40,
GETCOIN iii0'416,
; 	if
EVAL64 ii0'416,0,
EVAL32 ii0'416,i8,0,(
EVAL64 ii0'8,0,@ii0'40,+P0,!0,@ii0'40,8,++P0,!|ii0'416,|
IF ii0'8,.__label1614791353,
IF 1,.__label1614791354,
define __label1614791353 .
; 	if (in.tokentype != 0 || in.data.num.value != 0 || paypoint <= 0) fail();
REVERT
define __label1614791354 .
; 	d
EVAL64 ii0'417,@@ii0'112,
CALL 0,.getaccount,@ii0'416,Qii0'417,i8,
EVAL8 ii0'8,ii0'416,0,=
IF ii0'8,.__label1614791355,
IF 1,.__label1614791356,
define __label1614791355 .
; 	if (getaccount(&acct, paypoint) == 0) fail();
REVERT
define __label1614791356 .
; 	d = getqindex(hash);
CALL 0,.getqindex,@ii0'416,i16,
EVAL32 @ii0'304,ii0'416,
; 	getclaim
EVAL32 ii0'8,ii0'304,0,<
IF ii0'8,.__label1614791357,
IF 1,.__label1614791358,
define __label1614791357 .
; 	if (d < 0) fail();
REVERT
define __label1614791358 .
; 	getclaim(&x, paypoint, d);
EVAL64 ii0'417,@@ii0'216,
CALL 0,.getclaim,@ii0'416,Qii0'417,i8,ii0'304,

; 	match = hasheq(hash, x._claim.hash);
EVAL64 ii0'417,0,@ii0'216,+
CALL 0,.hasheq,@ii0'416,i16,Qii0'417,
EVAL8 @ii0'296,ii0'416,
; 	if
EVAL8 ii0'8,ii0'296,0,=
IF ii0'8,.__label1614791359,
IF 1,.__label1614791360,
define __label1614791359 .
; 		i = 0;
EVAL32 @ii0'200,0,
; 		}
define __label1614791361 .
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 ii0'8,ii0'200,iii0'416,<
IF ii0'8,2,
IF 1,.__label1614791362,
; 			d
EVAL64 ii0'417,@@ii0'216,
CALL 0,.getclaim,@ii0'416,Qii0'417,i8,ii0'200,
EVAL8 ii0'8,ii0'416,0,=
IF ii0'8,.__label1614791363,
IF 1,.__label1614791364,
define __label1614791363 .
; 			if (getclaim(&x, paypoint, i) == 0) continue;
IF 1,.__label1614791361,
define __label1614791364 .
; 			d = i;
EVAL32 @ii0'304,ii0'200,
; 			match = hasheq(hash, (char*) x._claim.hash);
EVAL64 ii0'417,0,@ii0'216,+
CALL 0,.hasheq,@ii0'416,i16,Qii0'417,
EVAL8 @ii0'296,ii0'416,
; 			i
EVAL8 ii0'8,ii0'296,1,=
IF ii0'8,.__label1614791365,
IF 1,.__label1614791366,
define __label1614791365 .
; 			if (match == 1) break;
IF 1,.__label1614791362,
define __label1614791366 .
; 			i += 1;
EVAL32 @ii0'200,ii0'200,1,+
IF 1,.__label1614791361,
define __label1614791362 .
define __label1614791360 .
; 	getBlockHeight
EVAL8 ii0'8,ii0'296,0,=
IF ii0'8,.__label1614791367,
IF 1,.__label1614791368,
define __label1614791367 .
; 	if (match == 0) fail();
REVERT
define __label1614791368 .
; 	getBlockHeight(&height);
EVAL64 ii0'416,@ii0'312,
HEIGHT iii0'416,
; 	setcontract();
CALL 0,.setcontract,

; 	payment = 0;
EVAL64 @ii0'208,0,
; 	payment = 0; dpay = 0;
EVAL64 @ii0'320,0,
; 	if
EVAL64 ii0'416,0,@ii0'216,32,+8,++P0,>
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'424,0,=ii0'416,&
IF ii0'8,.__label1614791369,
IF 1,.__label1614791370,
define __label1614791369 .
; 		payment = x._claim.guaranteed;
EVAL64 @ii0'208,0,@ii0'216,32,+8,++P
; 		x._claim.guaranteed = 0;
EVAL64 0,@ii0'216,32,+8,++0,
define __label1614791370 .
; 	acct
EVAL64 ii0'8,0,@ii0'216,32,++P0,>
IF ii0'8,.__label1614791371,
IF 1,.__label1614791372,
define __label1614791371 .
; 		if
EVAL64 ii0'416,0,@ii0'216,70,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'416,iii0'424,)
IF ii0'8,.__label1614791373,
IF 1,.__label1614791374,
define __label1614791373 .
; 			if
EVAL64 ii0'416,0,@ii0'112,4,++
EVAL32 ii0'8,ii0'312,iii0'416,1200,24,*+)
IF ii0'8,.__label1614791375,
IF 1,.__label1614791376,
define __label1614791375 .
; 				acct._round += 1;
EVAL64 ii0'416,0,@ii0'112,4,+4,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 iii0'416,iii0'424,1,+
; 				acct
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,++P0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++P>
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,+4,+36,++
EVAL32 ii0'8,ii0'312,iii0'424,1200,24,*31,*+>ii0'416,&
IF ii0'8,.__label1614791377,
IF 1,.__label1614791378,
define __label1614791377 .
; 					i = 0;
EVAL32 @ii0'200,0,
; 					}
define __label1614791379 .
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 ii0'8,ii0'200,iii0'416,<
IF ii0'8,2,
IF 1,.__label1614791380,
; 						j = i;
EVAL32 @ii0'408,ii0'200,
; 						i += 1;
EVAL32 @ii0'200,ii0'200,1,+
; 						if
EVAL32 ii0'8,ii0'408,ii0'304,=
IF ii0'8,.__label1614791381,
IF 1,.__label1614791382,
define __label1614791381 .
; 						if (j == d) continue;
IF 1,.__label1614791379,
define __label1614791382 .
; 						if
EVAL64 ii0'417,@@ii0'328,
CALL 0,.getclaim,@ii0'416,Qii0'417,i8,ii0'408,
EVAL8 ii0'8,ii0'416,0,=
IF ii0'8,.__label1614791383,
IF 1,.__label1614791384,
define __label1614791383 .
; 						if (getclaim(&y, paypoint, j) == 0) continue;
IF 1,.__label1614791379,
define __label1614791384 .
; 					}
EVAL64 ii0'8,0,@ii0'328,32,+8,++P0,!
IF ii0'8,.__label1614791385,
IF 1,.__label1614791386,
define __label1614791385 .
; 							acct._damount += y._claim.guaranteed;
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++P0,@ii0'328,32,+8,++P+
; 							y
EVAL64 ii0'8,0,@ii0'328,32,++P0,=
IF ii0'8,.__label1614791387,
IF 1,.__label1614791388,
define __label1614791387 .
; 								acct._remains += 1;
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'416,iii0'424,1,+
define __label1614791388 .
; 							y._claim.fee += y._claim.guaranteed;
EVAL64 0,@ii0'328,32,++0,@ii0'328,32,++P0,@ii0'328,32,+8,++P+
; 							y._claim.guaranteed = 0;
EVAL64 0,@ii0'328,32,+8,++0,
; 							saveclaim(&y, paypoint, j);
EVAL64 ii0'416,@@ii0'328,
CALL 0,.saveclaim,Qii0'416,i8,ii0'408,

define __label1614791386 .
IF 1,.__label1614791379,
define __label1614791380 .
define __label1614791378 .
; 				acct._maxpay = acct._damount / (long) acct._remains;
EVAL64 ii0'420,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 ii0'416,iii0'420,
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++PDii0'416,/
; 				acct
EVAL64 ii0'8,0,@ii0'112,4,+4,+4,+4,+8,++P0,(ii0'208,0,=&
IF ii0'8,.__label1614791389,
IF 1,.__label1614791390,
define __label1614791389 .
; 				if (acct._maxpay <= 0 && payment == 0) fail();
REVERT
define __label1614791390 .
; 				acct._start = height;
EVAL64 ii0'416,0,@ii0'112,4,++
EVAL32 iii0'416,ii0'312,
define __label1614791376 .
; 		}
EVAL64 ii0'416,ii0'208,0,=
EVAL64 ii0'424,0,@ii0'216,70,++
EVAL64 ii0'432,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'424,iii0'432,)ii0'416,&
IF ii0'8,.__label1614791391,
IF 1,.__label1614791392,
define __label1614791391 .
; 			if (x._round >= acct._round && payment == 0) fail();
REVERT
define __label1614791392 .
define __label1614791374 .
; 	}
EVAL64 ii0'416,0,@ii0'216,70,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'416,iii0'424,<
IF ii0'8,.__label1614791393,
IF 1,.__label1614791394,
define __label1614791393 .
; 			x._round = acct._round;
EVAL64 ii0'416,0,@ii0'216,70,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 iii0'416,iii0'424,
; 			dpay = x._claim.fee > acct._maxpay? acct._maxpay : x._claim.fee;
EVAL64 @ii0'320,0,@ii0'112,4,+4,+4,+4,+8,++P0,@ii0'216,32,++P0,@ii0'216,32,++P0,@ii0'112,4,+4,+4,+4,+8,++P>?
; 			payment += dpay;
EVAL64 @ii0'208,ii0'208,ii0'320,+
; 			acct._damount -= dpay;
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++Pii0'320,-
define __label1614791394 .
define __label1614791372 .
; 	acct._amount -= payment;
EVAL64 0,@ii0'112,4,+4,+4,+4,++0,@ii0'112,4,+4,+4,+4,++Pii0'208,-
; 	addTxin(&acct._balance);
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'416,ii0'424,
SPEND iii0'416,iii0'416"32,
; 	makeoutput(nil, payment, 22, x._claim.script);
EVAL64 ii0'416,0,@ii0'216,32,+8,+8,++
CALL 0,.makeoutput,0,ii0'208,22,Qii0'416,

; 	}
EVAL64 ii0'8,0,@ii0'216,32,++Pii0'320,=
IF ii0'8,.__label1614791395,
; 		x._claim.fee -= dpay;
EVAL64 0,@ii0'216,32,++0,@ii0'216,32,++Pii0'320,-
; 		saveclaim(&x, paypoint, d);
EVAL64 ii0'416,@@ii0'216,
CALL 0,.saveclaim,Qii0'416,i8,ii0'304,

IF 1,.__label1614791396,
define __label1614791395 .
; 		delclaim
EVAL64 ii0'8,0,@ii0'216,32,++P0,!
IF ii0'8,.__label1614791397,
IF 1,.__label1614791398,
define __label1614791397 .
; 		if (x._claim.fee != 0) acct._remains -= 1;
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'416,iii0'424,1,-
define __label1614791398 .
; 		delclaim(&x, paypoint, d);
EVAL64 ii0'416,@@ii0'216,
CALL 0,.delclaim,Qii0'416,i8,ii0'304,

define __label1614791396 .
; }
EVAL64 ii0'417,@@ii0'112,
CALL 0,.close,@ii0'416,i8,Qii0'417,
EVAL8 ii0'8,ii0'416,~1,&
IF ii0'8,.__label1614791399,
IF 1,.__label1614791400,
define __label1614791399 .
; 		makeoutput(&acct._balance, acct._amount, 21, CONTRACT);
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'416,ii0'424,
EVAL64 ii0'432,0,@ii0'112,4,+4,+4,+4,++P
CALL 0,.makeoutput,Qii0'416,Qii0'432,21,@gii0'56,

; 		saveacct(&acct);
EVAL64 ii0'416,@@ii0'112,
CALL 0,.saveacct,Qii0'416,

define __label1614791400 .
define claimRETURN .
RETURN
define setcontract .
ALLOC 0,96,
; Assign @ii0'40 to var buf
; Assign @ii0'72 to string address
COPYIMM @ii0'72,L8,x6164647265737300,
; 	CONTRACT[0] = 0x88;
EVAL64 ii0'80,0,@gii0'56,+0,+
EVAL8 iii0'80,x88,
; 	getMeta(buf, "address");
CALL 0,.getMeta,@ii0'40,@ii0'72,

; 	memcopy(CONTRACT + 1, buf + 4, 20);
EVAL64 ii0'80,@gii0'56,1,+
EVAL64 ii0'88,@ii0'40,4,+
COPY iii0'80,iii0'88,20,
define setcontractRETURN .
RETURN
define getaccount .
ALLOC 0,208,
; Assign ii0'40 to var ntakersabi
; Assign @ii0'48 to var accountbuf
; 	ntakersabi = (1 << 32) | (long) paypoint;
EVAL64 @ii0'40,0,1,32,[+Di24,|
; 	read(accountbuf, ntakersabi);
LOAD @ii0'48,ii0'40,
; 	*
EVAL64 ii0'176,@@ii0'48,
EVAL32 ii0'8,0,iii0'176,+88,!
IF ii0'8,.__label1614791401,
IF 1,.__label1614791402,
define __label1614791401 .
; 		return 0;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791403,
EVAL8 ii8,0,
define __label1614791403 .
RETURN
define __label1614791402 .
; 	*acct = *(struct account *) (accountbuf + 4);
EVAL64 ii0'184,0,i16,+
EVAL64 ii0'176,ii0'184,
EVAL64 ii0'200,0,@ii0'48,4,++
EVAL64 ii0'192,ii0'200,
COPY iii0'176,iii0'192,88,
; 	return 1;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791404,
EVAL8 ii8,1,
define __label1614791404 .
RETURN
define getaccountRETURN .
RETURN
define filing .
ALLOC 0,376,
; Assign @ii0'40 to var in
; Assign @ii0'112 to var acct
; Assign ii0'200 to var i
; Assign @ii0'208 to var a
; Assign ii0'224 to var claimabi
; Assign ii0'232 to var version
; Assign ii0'240 to var dec
; Assign @ii0'248 to var x
; Assign ii0'328 to var qhi
; Assign ii0'336 to var d
; 	getVersion(&version);
EVAL64 ii0'344,@ii0'232,
VERSION iii0'344,
; 	getCoin
EVAL32 ii0'8,ii0'232,x1f,&2,!
IF ii0'8,.__label1614791405,
IF 1,.__label1614791406,
define __label1614791405 .
; 	if (version & 0x1f != 2) fail();
REVERT
define __label1614791406 .
; 	getCoin(&in);
EVAL64 ii0'344,@@ii0'40,
GETCOIN iii0'344,
; 	if
EVAL64 ii0'344,0,
EVAL32 ii0'344,i16,0,(
EVAL64 ii0'352,0,
EVAL32 ii0'352,i8,0,(
EVAL64 ii0'8,0,@ii0'40,+P0,!0,@ii0'40,8,++P0,!|ii0'352,|ii0'344,|
IF ii0'8,.__label1614791407,
IF 1,.__label1614791408,
define __label1614791407 .
; 	if (in.tokentype != 0 || in.data.num.value != 0 || paypoint <= 0 || cnt <= 0) fail();
REVERT
define __label1614791408 .
; 	setcontract
EVAL64 ii0'345,@@ii0'112,
CALL 0,.getaccount,@ii0'344,Qii0'345,i8,
EVAL8 ii0'8,ii0'344,0,=
IF ii0'8,.__label1614791409,
IF 1,.__label1614791410,
define __label1614791409 .
; 	if (getaccount(&acct, paypoint) == 0) fail();
REVERT
define __label1614791410 .
; 	setcontract();
CALL 0,.setcontract,

; 	i = 0;
EVAL32 @ii0'200,0,
; 	i = 0; dec = 0;
EVAL32 @ii0'240,0,
; 	}
define __label1614791411 .
EVAL32 ii0'8,ii0'200,i16,<
IF ii0'8,2,
IF 1,.__label1614791412,
; 		x._claim = * clm;
EVAL64 ii0'352,0,@ii0'248,+
EVAL64 ii0'344,ii0'352,
EVAL64 ii0'368,i24,
EVAL64 ii0'360,ii0'368,
COPY iii0'344,iii0'360,70,
; 		x
EVAL64 ii0'8,0,@ii0'248,32,++P0,=0,@ii0'248,32,+8,++P0,=&
IF ii0'8,.__label1614791413,
IF 1,.__label1614791414,
define __label1614791413 .
; 			dec += 1;
EVAL32 @ii0'240,ii0'240,1,+
; 			dec += 1; clm += 1;
EVAL64 @i24,i24,1,70,*+
; 			dec += 1; clm += 1; i += 1;
EVAL32 @ii0'200,ii0'200,1,+
; 			continue;
IF 1,.__label1614791411,
define __label1614791414 .
; 		x._round = 0;
EVAL64 ii0'344,0,@ii0'248,70,++
EVAL32 iii0'344,0,
; 		d = i + acct._claimants - dec;
EVAL64 ii0'344,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 @ii0'336,ii0'200,iii0'344,+ii0'240,-
; 		claimabi = (((long) paypoint) << 32) | (long) d;
EVAL64 @ii0'224,0,0,Di8,+32,[+Dii0'336,|
; 		a.len = sizeof(struct xclaim);
EVAL64 ii0'344,0,@ii0'208,+
EVAL32 iii0'344,74,
; 		a.data = (char*) &x;
EVAL64 0,@ii0'208,4,++@@ii0'248,
; 		write(claimabi, &a);
EVAL64 ii0'344,@@ii0'208,
EVAL64 ii0'8,iii0'344"4,
STORE ii0'224,iii0'344,iii0'8,
; 		qhi = *(long*) x._claim.hash | (1 << 63);
EVAL64 @ii0'328,0,0,@ii0'248,++P0,1,63,[+|
; 		a.len = 4;
EVAL64 ii0'344,0,@ii0'208,+
EVAL32 iii0'344,4,
; 		a.data = (char*) &d;
EVAL64 0,@ii0'208,4,++@ii0'336,
; 		write(qhi, &a);
EVAL64 ii0'344,@@ii0'208,
EVAL64 ii0'8,iii0'344"4,
STORE ii0'328,iii0'344,iii0'8,
; 		acct._damount -= x._claim.guaranteed;
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++P0,@ii0'248,32,+8,++P-
; 		clm
EVAL64 ii0'8,0,@ii0'248,32,++P0,>
IF ii0'8,.__label1614791415,
IF 1,.__label1614791416,
define __label1614791415 .
; 			acct._remains += 1;
EVAL64 ii0'344,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL64 ii0'352,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'344,iii0'352,1,+
define __label1614791416 .
; 		clm += 1;
EVAL64 @i24,i24,1,70,*+
; 		clm += 1; i += 1;
EVAL32 @ii0'200,ii0'200,1,+
IF 1,.__label1614791411,
define __label1614791412 .
; 	acct._claimants += cnt - dec;
EVAL64 ii0'344,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL64 ii0'352,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 iii0'344,iii0'352,i16,ii0'240,-+
; 	acct._maxpay = acct._damount / (long) acct._remains;
EVAL64 ii0'348,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 ii0'344,iii0'348,
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++PDii0'344,/
; 	saveacct(&acct);
EVAL64 ii0'344,@@ii0'112,
CALL 0,.saveacct,Qii0'344,

define filingRETURN .
RETURN
define open .
ALLOC 0,328,
; Assign @ii0'40 to var acct
; Assign @ii0'128 to var in
; Assign ii0'200 to var height
; Assign @ii0'208 to var buf
; Assign @ii0'288 to var a
; Assign ii0'304 to var version
; 	getVersion(&version);
EVAL64 ii0'312,@ii0'304,
VERSION iii0'312,
; 	getCoin
EVAL32 ii0'8,ii0'304,x1f,&2,!
IF ii0'8,.__label1614791417,
IF 1,.__label1614791418,
define __label1614791417 .
; 	if (version & 0x1f != 2) fail();
REVERT
define __label1614791418 .
; 	getCoin(&in);
EVAL64 ii0'312,@@ii0'128,
GETCOIN iii0'312,
; 	if
EVAL64 ii0'312,0,
EVAL32 ii0'312,i8,0,(
EVAL64 ii0'8,0,@ii0'128,+P0,!0,@ii0'128,8,++P0,=|ii0'312,|
IF ii0'8,.__label1614791419,
IF 1,.__label1614791420,
define __label1614791419 .
; 	if (in.tokentype != 0 || in.data.num.value == 0 || paypoint <= 0) fail();
REVERT
define __label1614791420 .
; 	setcontract
EVAL64 ii0'313,@@ii0'40,
CALL 0,.getaccount,@ii0'312,Qii0'313,i8,
EVAL8 ii0'8,ii0'312,
IF ii0'8,.__label1614791421,
IF 1,.__label1614791422,
define __label1614791421 .
; 	if (getaccount(&acct, paypoint)) fail();
REVERT
define __label1614791422 .
; 	setcontract();
CALL 0,.setcontract,

; 	acct._paypoint = paypoint;
EVAL64 ii0'312,0,@ii0'40,+
EVAL32 iii0'312,i8,
; 	getBlockHeight(&height);
EVAL64 ii0'312,@ii0'200,
HEIGHT iii0'312,
; 	acct._start = height + 600;
EVAL64 ii0'312,0,@ii0'40,4,++
EVAL32 iii0'312,ii0'200,600,+
; 	acct._lastclaim = acct._start;
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,++
EVAL64 ii0'320,0,@ii0'40,4,++
EVAL32 iii0'312,iii0'320,
; 	getOutpoint(&acct._balance);
EVAL64 ii0'320,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'312,ii0'320,
RECEIVED iii0'312,
; 	acct._amount = in.data.num.value;
EVAL64 0,@ii0'40,4,+4,+4,+4,++0,@ii0'128,8,++P
; 	acct._damount = acct._amount;
EVAL64 0,@ii0'40,4,+4,+4,+4,+8,+8,+4,++0,@ii0'40,4,+4,+4,+4,++P
; 	acct._maxpay = acct._amount;
EVAL64 0,@ii0'40,4,+4,+4,+4,+8,++0,@ii0'40,4,+4,+4,+4,++P
; 	acct._round = 1;
EVAL64 ii0'312,0,@ii0'40,4,+4,++
EVAL32 iii0'312,1,
; 	acct._claimants = 0;
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,+4,+8,+8,++
EVAL32 iii0'312,0,
; 	acct._remains = 0;
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'312,0,
; 	acct._opening = height;
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,+36,++
EVAL32 iii0'312,ii0'200,
; 	saveacct(&acct);
EVAL64 ii0'312,@@ii0'40,
CALL 0,.saveacct,Qii0'312,

; 	read(buf, abi("_totalaccts"));
LOAD @ii0'208,xfebda3af,
; 	_totalaccts = 1 + *(int*) (buf + 4);
EVAL64 ii0'312,0,@ii0'208,4,++
EVAL32 @gii0'48,1,iii0'312,+
; 	alloc(&_allaccts, 4 * _totalaccts + 4);
EVAL64 ii0'312,@gii0'40,
EVAL32 ii0'320,4,gii0'48,*4,+
ALLOC iii0'312,ii0'320,
; 	read(_allaccts, abi("_allaccts"));
LOAD igii0'40,xaae13487,
; 	*(_allaccts + _totalaccts) = paypoint;
EVAL64 ii0'312,gii0'40,Dgii0'48,4,*+
EVAL32 iii0'312,i8,
; 	a.len = 4 * _totalaccts;
EVAL64 ii0'312,0,@ii0'288,+
EVAL32 iii0'312,4,gii0'48,*
; 	a.data = (char*) (_allaccts + 1);
EVAL64 0,@ii0'288,4,++0,gii0'40,1,4,*++
; 	write(abi("_allaccts"), &a);
EVAL64 ii0'312,@@ii0'288,
EVAL64 ii0'8,iii0'312"4,
STORE xaae13487,iii0'312,iii0'8,
; 	a.len = 4;
EVAL64 ii0'312,0,@ii0'288,+
EVAL32 iii0'312,4,
; 	a.data = (char*) &_totalaccts;
EVAL64 0,@ii0'288,4,++@gii0'48,
; 	write(abi("_totalaccts"), &a);
EVAL64 ii0'312,@@ii0'288,
EVAL64 ii0'8,iii0'312"4,
STORE xfebda3af,iii0'312,iii0'8,
define openRETURN .
RETURN
define close .
ALLOC 0,344,
; Assign @ii0'40 to var acct0
; Assign @ii0'128 to var buf
; Assign @ii0'208 to var a
; Assign ii0'224 to var p
; Assign ii0'232 to var i
; Assign @ii0'240 to var y
; 	delacct
EVAL64 ii0'8,0,i24,4,+4,+4,+4,++P0,>
IF ii0'8,.__label1614791423,
IF 1,.__label1614791424,
define __label1614791423 .
; 		i
EVAL64 ii0'320,0,i24,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 ii0'8,iii0'320,0,>
IF ii0'8,.__label1614791425,
IF 1,.__label1614791426,
define __label1614791425 .
; 		if (acct->_remains > 0) return 0;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791427,
EVAL8 ii8,0,
define __label1614791427 .
RETURN
define __label1614791426 .
; 		i = 0;
EVAL32 @ii0'232,0,
; 		}
define __label1614791428 .
EVAL64 ii0'320,0,i24,4,+4,+4,+4,+8,+8,++
EVAL32 ii0'8,ii0'232,iii0'320,<
IF ii0'8,2,
IF 1,.__label1614791429,
; 			if
EVAL64 ii0'321,@@ii0'240,
CALL 0,.getclaim,@ii0'320,Qii0'321,i16,ii0'232,
EVAL8 ii0'8,ii0'320,0,=
IF ii0'8,.__label1614791430,
IF 1,.__label1614791431,
define __label1614791430 .
; 			if (getclaim(&y, paypoint, i) == 0) continue;
IF 1,.__label1614791428,
define __label1614791431 .
; 			i
EVAL64 ii0'8,0,@ii0'240,32,+8,++P0,!
IF ii0'8,.__label1614791432,
IF 1,.__label1614791433,
define __label1614791432 .
; 			if (y._claim.guaranteed != 0) return 0;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791434,
EVAL8 ii8,0,
define __label1614791434 .
RETURN
define __label1614791433 .
; 			i += 1;
EVAL32 @ii0'232,ii0'232,1,+
IF 1,.__label1614791428,
define __label1614791429 .
define __label1614791424 .
; 	delacct(paypoint);
CALL 0,.delacct,i16,

; 	read
EVAL64 ii0'8,0,i24,4,+4,+4,+4,++P0,>
IF ii0'8,.__label1614791435,
IF 1,.__label1614791436,
define __label1614791435 .
; 		getaccount(&acct0, 0);
EVAL64 ii0'321,@@ii0'40,
CALL 0,.getaccount,@ii0'320,Qii0'321,0,

; 		acct0
EVAL64 ii0'8,0,@ii0'40,4,+4,+4,+4,++P0,!
IF ii0'8,.__label1614791437,
IF 1,.__label1614791438,
define __label1614791437 .
; 		if (acct0._amount != 0) addTxin(&acct0._balance);
EVAL64 ii0'328,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'320,ii0'328,
SPEND iii0'320,iii0'320"32,
define __label1614791438 .
; 		acct0._amount += acct->_amount;
EVAL64 0,@ii0'40,4,+4,+4,+4,++0,@ii0'40,4,+4,+4,+4,++P0,i24,4,+4,+4,+4,++P+
; 		makeoutput(&acct0._balance, acct0._amount, 21, CONTRACT);
EVAL64 ii0'328,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'320,ii0'328,
EVAL64 ii0'336,0,@ii0'40,4,+4,+4,+4,++P
CALL 0,.makeoutput,Qii0'320,Qii0'336,21,@gii0'56,

; 		saveacct(&acct0);
EVAL64 ii0'320,@@ii0'40,
CALL 0,.saveacct,Qii0'320,

define __label1614791436 .
; 	read(buf, abi("_totalaccts"));
LOAD @ii0'128,xfebda3af,
; 	_totalaccts = *(int*) (buf + 4);
EVAL64 ii0'320,0,@ii0'128,4,++
EVAL32 @gii0'48,iii0'320,
; 	alloc(&_allaccts, 4 * _totalaccts + 4);
EVAL64 ii0'320,@gii0'40,
EVAL32 ii0'328,4,gii0'48,*4,+
ALLOC iii0'320,ii0'328,
; 	read(_allaccts, abi("_allaccts"));
LOAD igii0'40,xaae13487,
; 	p = _allaccts + 1;
EVAL64 @ii0'224,gii0'40,1,4,*+
; 	i = 0;
EVAL32 @ii0'232,0,
; 	}
define __label1614791439 .
EVAL32 ii0'8,ii0'232,gii0'48,<
IF ii0'8,2,
IF 1,.__label1614791440,
; 		i
EVAL32 ii0'8,i16,iii0'224,=
IF ii0'8,.__label1614791441,
IF 1,.__label1614791442,
define __label1614791441 .
; 			a.len = 4 * _totalaccts - 4;
EVAL64 ii0'320,0,@ii0'208,+
EVAL32 iii0'320,4,gii0'48,*4,-
; 			a.data = (char*) (_allaccts + 1);
EVAL64 0,@ii0'208,4,++0,gii0'40,1,4,*++
; 			write
EVAL32 ii0'8,ii0'232,gii0'48,1,-<
IF ii0'8,.__label1614791443,
IF 1,.__label1614791444,
define __label1614791443 .
; 				memcopy(p, p + 1, 4 * (_totalaccts - i - 1));
EVAL64 ii0'320,ii0'224,1,4,*+
EVAL32 ii0'328,4,0,gii0'48,ii0'232,-1,-+*
COPY iii0'224,iii0'320,ii0'328,
define __label1614791444 .
; 			write(abi("_allaccts"), &a);
EVAL64 ii0'320,@@ii0'208,
EVAL64 ii0'8,iii0'320"4,
STORE xaae13487,iii0'320,iii0'8,
; 			_totalaccts -= 1;
EVAL32 @gii0'48,gii0'48,1,-
; 			a.len = 4;
EVAL64 ii0'320,0,@ii0'208,+
EVAL32 iii0'320,4,
; 			a.data = (char*) &_totalaccts;
EVAL64 0,@ii0'208,4,++@gii0'48,
; 			write(abi("_totalaccts"), &a);
EVAL64 ii0'320,@@ii0'208,
EVAL64 ii0'8,iii0'320"4,
STORE xfebda3af,iii0'320,iii0'8,
; 			return 1;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791445,
EVAL8 ii8,1,
define __label1614791445 .
RETURN
define __label1614791442 .
; 		i += 1;
EVAL32 @ii0'232,ii0'232,1,+
; 		i += 1; p += 1;
EVAL64 @ii0'224,ii0'224,1,4,*+
IF 1,.__label1614791439,
define __label1614791440 .
; 	return 1;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791446,
EVAL8 ii8,1,
define __label1614791446 .
RETURN
define closeRETURN .
RETURN
define makeoutput .
ALLOC 0,120,
; Assign ii0'40 to var i
; Assign @ii0'48 to var buf
; Assign ii0'96 to var op
; 	i = 0;
EVAL32 @ii0'40,0,
; 	}
define __label1614791447 .
EVAL32 ii0'8,ii0'40,48,<
IF ii0'8,2,
IF 1,.__label1614791448,
; 		buf[i] = 0;
EVAL64 ii0'104,0,@ii0'48,+Dii0'40,+
EVAL8 iii0'104,0,
; 		i = i + 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614791447,
define __label1614791448 .
; 	memcopy(buf + 8, (char*) &amount, 8);
EVAL64 ii0'104,@ii0'48,8,+
EVAL64 ii0'112,@i16,
COPY iii0'104,iii0'112,8,
; 	memcopy(buf + 16, &ln, 4);
EVAL64 ii0'104,@ii0'48,16,+
EVAL64 ii0'112,@i24,
COPY iii0'104,iii0'112,4,
; 	memcopy(buf + 20, script, ln);
EVAL64 ii0'104,@ii0'48,20,+
COPY iii0'104,ii32,i24,
; 	addTxout(&op, buf);
EVAL64 ii0'104,@ii0'96,
ADDTXOUT iii0'104,@ii0'48,

; 	getOutpoint
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791449,
IF 1,.__label1614791450,
define __label1614791449 .
; 	if (ret == nil) return;
RETURN
define __label1614791450 .
; 	getOutpoint(ret);
RECEIVED ii8,
; 	ret->index = op;
EVAL64 ii0'104,0,i8,32,++
EVAL32 iii0'104,ii0'96,
define makeoutputRETURN .
RETURN
define saveacct .
ALLOC 0,76,
; Assign ii0'40 to var ntakersabi
; Assign @ii0'48 to var a
; 	a.len = sizeof(struct account);
EVAL64 ii0'64,0,@ii0'48,+
EVAL32 iii0'64,88,
; 	a.data = (char*) acct;
EVAL64 0,@ii0'48,4,++i8,
; 	ntakersabi = (1 << 32) | (long) acct->_paypoint;
EVAL64 ii0'68,0,i8,+
EVAL32 ii0'64,iii0'68,
EVAL64 @ii0'40,0,1,32,[+Dii0'64,|
; 	write(ntakersabi, &a);
EVAL64 ii0'64,@@ii0'48,
EVAL64 ii0'8,iii0'64"4,
STORE ii0'40,iii0'64,iii0'8,
define saveacctRETURN .
RETURN
define delacct .
ALLOC 0,48,
; Assign ii0'40 to var ntakersabi
; 	ntakersabi = (1 << 32) | (long) paypoint;
EVAL64 @ii0'40,0,1,32,[+Di8,|
; 	delete(ntakersabi);
DEL Qii0'40,
define delacctRETURN .
RETURN
define saveclaim .
ALLOC 0,72,
; Assign ii0'40 to var claimabi
; Assign @ii0'48 to var a
; 	a.len = sizeof(struct xclaim);
EVAL64 ii0'64,0,@ii0'48,+
EVAL32 iii0'64,74,
; 	a.data = (char*) x;
EVAL64 0,@ii0'48,4,++i8,
; 	claimabi = (((long) paypoint) << 32) | (long) d;
EVAL64 @ii0'40,0,0,Di16,+32,[+Di24,|
; 	write(claimabi, &a);
EVAL64 ii0'64,@@ii0'48,
EVAL64 ii0'8,iii0'64"4,
STORE ii0'40,iii0'64,iii0'8,
define saveclaimRETURN .
RETURN
define delclaim .
ALLOC 0,56,
; Assign ii0'40 to var claimabi
; Assign ii0'48 to var qhi
; 	qhi = *(long*) x->_claim.hash | (1 << 63);
EVAL64 @ii0'48,0,0,i8,++P0,1,63,[+|
; 	delete(qhi);
DEL Qii0'48,
; 	claimabi = (((long) paypoint) << 32) | (long) d;
EVAL64 @ii0'40,0,0,Di16,+32,[+Di24,|
; 	delete(claimabi);
DEL Qii0'40,
define delclaimRETURN .
RETURN
define getclaim .
ALLOC 0,208,
; Assign ii0'40 to var claimabi
; Assign @ii0'48 to var claimbuf
; 	claimabi = (((long) paypoint) << 32) | (long) d;
EVAL64 @ii0'40,0,0,Di24,+32,[+Di32,|
; 	read(claimbuf, claimabi);
LOAD @ii0'48,ii0'40,
; 	*
EVAL64 ii0'176,@@ii0'48,
EVAL32 ii0'8,iii0'176,74,!
IF ii0'8,.__label1614791451,
IF 1,.__label1614791452,
define __label1614791451 .
; 		return 0;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791453,
EVAL8 ii8,0,
define __label1614791453 .
RETURN
define __label1614791452 .
; 	*x = *(struct xclaim *) (claimbuf + 4);
EVAL64 ii0'184,0,i16,+
EVAL64 ii0'176,ii0'184,
EVAL64 ii0'200,0,@ii0'48,4,++
EVAL64 ii0'192,ii0'200,
COPY iii0'176,iii0'192,74,
; 	return 1;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791454,
EVAL8 ii8,1,
define __label1614791454 .
RETURN
define getclaimRETURN .
RETURN
define qindex .
ALLOC 0,56,
; Assign ii0'40 to var d
; 	d = getqindex(hash);
CALL 0,.getqindex,@ii0'48,i16,
EVAL32 @ii0'40,ii0'48,
; 	output(4, (char*) &d);
EVAL64 ii0'48,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'48,4,
EVAL32 gi0,4,
STOP
; 	return d;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791455,
EVAL32 ii8,ii0'40,
define __label1614791455 .
RETURN
define qindexRETURN .
RETURN
define getqindex .
ALLOC 0,192,
; Assign ii0'40 to var qhi
; Assign @ii0'48 to var buf
; Assign ii0'176 to var d
; 	qhi = *(long*) hash | (1 << 63);
EVAL64 @ii0'40,0,i16,+P0,1,63,[+|
; 	read(buf, qhi);
LOAD @ii0'48,ii0'40,
; 	d
EVAL64 ii0'184,@@ii0'48,
EVAL32 ii0'8,iii0'184,4,!
IF ii0'8,.__label1614791456,
IF 1,.__label1614791457,
define __label1614791456 .
; 	if (*(int*)buf != 4) return -1;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791458,
EVAL32 ii8,0,1,-
define __label1614791458 .
RETURN
define __label1614791457 .
; 	d = *(int*)(buf + 4);
EVAL64 ii0'184,0,@ii0'48,4,++
EVAL32 @ii0'176,iii0'184,
; 	return d;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791459,
EVAL32 ii8,ii0'176,
define __label1614791459 .
RETURN
define getqindexRETURN .
RETURN
define hasheq .
ALLOC 0,72,
; Assign ii0'40 to var i
; Assign ii0'48 to var match
; 	match = 1;
EVAL8 @ii0'48,1,
; 	match = 1; i = 0;
EVAL32 @ii0'40,0,
; 	}
define __label1614791460 .
EVAL32 ii0'8,ii0'40,32,<
IF ii0'8,2,
IF 1,.__label1614791461,
; 		i
EVAL64 ii0'56,0,i16,Dii0'40,1,*++
EVAL64 ii0'64,0,i24,Dii0'40,1,*++
EVAL8 ii0'8,iii0'56,iii0'64,!
IF ii0'8,.__label1614791462,
IF 1,.__label1614791463,
define __label1614791462 .
; 			match = 0;
EVAL8 @ii0'48,0,
; 			break;
IF 1,.__label1614791461,
define __label1614791463 .
; 		i += 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614791460,
define __label1614791461 .
; 	return match;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791464,
EVAL8 ii8,ii0'48,
define __label1614791464 .
RETURN
define hasheqRETURN .
RETURN
define totalaccts .
ALLOC 0,184,
; Assign @ii0'40 to var buf
; Assign ii0'168 to var d
; 	read(buf, abi("_totalaccts"));
LOAD @ii0'40,xfebda3af,
; 	d
EVAL64 ii0'176,@@ii0'40,
EVAL32 ii0'8,iii0'176,4,!
IF ii0'8,.__label1614791465,
IF 1,.__label1614791466,
define __label1614791465 .
; 	if (*(int*)buf != 4) return -1;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791467,
EVAL32 ii8,0,1,-
define __label1614791467 .
RETURN
define __label1614791466 .
; 	d = *(int*)(buf + 4);
EVAL64 ii0'176,0,@ii0'40,4,++
EVAL32 @ii0'168,iii0'176,
; 	output(4, buf + 4);
EVAL64 ii0'176,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'176,4,
EVAL32 gi0,4,
STOP
; 	return d;
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614791468,
EVAL32 ii8,ii0'168,
define __label1614791468 .
RETURN
define totalacctsRETURN .
RETURN
define acctlist .
ALLOC 0,192,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_allaccts"));
LOAD @ii0'40,xaae13487,
; 	output
EVAL64 ii0'168,@@ii0'40,
EVAL32 ii0'8,iii0'168,4,<
IF ii0'8,.__label1614791469,
IF 1,.__label1614791470,
define __label1614791469 .
; 	if (*(int*)buf < 4) return -1;
RETURN
define __label1614791470 .
; 	output(*(int*)buf, buf + 4);
EVAL64 ii0'176,@@ii0'40,
EVAL32 ii0'168,iii0'176,
EVAL64 ii0'184,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'184,ii0'168,
EVAL32 gi0,ii0'168,
STOP
define acctlistRETURN .
RETURN
define account .
ALLOC 0,137,
; Assign @ii0'40 to var acct
; 	getaccount(&acct, paypoint);
EVAL64 ii0'129,@@ii0'40,
CALL 0,.getaccount,@ii0'128,Qii0'129,i8,

; 	output(sizeof(struct account), (char*) &acct);
EVAL64 ii0'128,@@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'128,88,
EVAL32 gi0,88,
STOP
define accountRETURN .
RETURN
define claims .
ALLOC 0,129,
; Assign @ii0'40 to var x
; 	}
EVAL64 ii0'121,@@ii0'40,
CALL 0,.getclaim,@ii0'120,Qii0'121,i8,i16,
EVAL8 ii0'8,ii0'120,
IF ii0'8,.__label1614791471,
; 		output(0, (char*) &x);
EVAL64 ii0'120,@@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'120,0,
EVAL32 gi0,0,
STOP
IF 1,.__label1614791472,
define __label1614791471 .
; 		output(sizeof(struct xclaim), (char*) &x);
EVAL64 ii0'120,@@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'120,74,
EVAL32 gi0,74,
STOP
define __label1614791472 .
define claimsRETURN .
RETURN
