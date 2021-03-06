; Assign gii0'40 to var _allaccts
; Assign gii0'48 to var _totalaccts
; Assign @gii0'56 to var CONTRACT
;#{"code":"","types":{"__outpoint__":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]uchar"},"index":{"loc":"32","size":4,"type":"int"}},"__numcoin__":{"__TYPE__":"struct","value":{"loc":"0","size":8,"type":"long"}},"__numcoinr__":{"__TYPE__":"struct","value":{"loc":"0","size":8,"type":"long"},"right":{"loc":"8","size":32,"type":"[32]uchar"}},"__hashcoin__":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]uchar"}},"__hashcoinr__":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]uchar"},"right":{"loc":"32","size":32,"type":"[32]uchar"}},"__coin__":{"__TYPE__":"struct","tokentype":{"loc":"0","size":8,"type":"long"},"data":{"loc":"8","size":64,"type":"union{}"}},"__storedata__":{"__TYPE__":"struct","len":{"loc":"0","size":4,"type":"int"},"data":{"loc":"4","size":8,"type":"*char"}},"__VertexDef__":{"__TYPE__":"struct","lat":{"loc":"0","size":4,"type":"int"},"lng":{"loc":"4","size":4,"type":"int"},"alt":{"loc":"8","size":4,"type":"int"}},"__BorderDef__":{"__TYPE__":"struct","father":{"loc":"0","size":32,"type":"[32]uchar"},"begin":{"loc":"32","size":12,"type":"__VertexDef__"},"end":{"loc":"44","size":12,"type":"__VertexDef__"}},"__LoopDef__":{"__TYPE__":"struct","nborders":{"loc":"0","size":4,"type":"int"},"data":{"loc":"4","size":8,"type":"*[32]uchar"}},"__PolygonDef__":{"__TYPE__":"struct","nloops":{"loc":"0","size":4,"type":"int"},"loops":{"loc":"4","size":8,"type":"*__LoopDef__"}},"__RightDef__":{"__TYPE__":"struct","father":{"loc":"0","size":32,"type":"[32]uchar"},"len":{"loc":"32","size":4,"type":"int"},"desc":{"loc":"36","size":8,"type":"*uchar"},"attrib":{"loc":"44","size":1,"type":"uchar"}},"__RightSetDef__":{"__TYPE__":"struct","nhash":{"loc":"0","size":4,"type":"uint"},"hashes":{"loc":"4","size":8,"type":"*[32]uchar"}},"__definition__":{"__TYPE__":"struct","type":{"loc":"0","size":1,"type":"uchar"},"data":{"loc":"1","size":56,"type":"union{}"}},"__minttype__":{"__TYPE__":"struct","tokentype":{"loc":"0","size":8,"type":"long"},"minted":{"loc":"8","size":36,"type":"__outpoint__"}},"account":{"__TYPE__":"struct","_paypoint":{"loc":"0","size":4,"type":"int"},"_start":{"loc":"4","size":4,"type":"int"},"_round":{"loc":"8","size":4,"type":"int"},"_lastclaim":{"loc":"12","size":4,"type":"int"},"_amount":{"loc":"16","size":8,"type":"long"},"_maxpay":{"loc":"24","size":8,"type":"long"},"_claimants":{"loc":"32","size":4,"type":"int"},"_damount":{"loc":"36","size":8,"type":"long"},"_remains":{"loc":"44","size":4,"type":"int"},"_balance":{"loc":"48","size":36,"type":"__outpoint__"},"_opening":{"loc":"84","size":4,"type":"int"}},"claim":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]char"},"fee":{"loc":"32","size":8,"type":"long"},"guaranteed":{"loc":"40","size":8,"type":"long"},"script":{"loc":"48","size":22,"type":"[22]char"}},"xclaim":{"__TYPE__":"struct","_claim":{"loc":"0","size":70,"type":"claim"},"_round":{"loc":"70","size":4,"type":"int"}}},"vars":[{"_allaccts":{"loc":"gii0'40","size":8,"type":"*int"}},{"_totalaccts":{"loc":"gii0'48","size":4,"type":"int"}},{"CONTRACT":{"loc":"@gii0'56","size":21,"type":"[21]char"}}]}
;#{"code":"constructor","types":{},"vars":[]}
MALLOC 0,120,
; 	init();
;#{"srcline":52}
NOP
CALL 0,.init,

define mainRETURN .
EVAL32 gi0,4,
EVAL32 gi4,BODY,
STOP
;#{"endcode":""}
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
;#{"code":"_","types":{},"vars":[]}
ALLOC 0,120,
; 	fail();
;#{"srcline":415}
NOP
REVERT

define _RETURN .
RETURN
STOP
;#{"endcode":""}
define getMeta .
ALLOC 0,56,
; Assign ii0'40 to var n
; Assign ii0'48 to var p
; 	n
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684064,
IF 1,.__label1614684065,
define __label1614684064 .
; 	if (r == nil) return;
RETURN
define __label1614684065 .
; 	n = 0;
EVAL32 @ii0'40,0,
; 	p = a;
EVAL64 @ii0'48,i16,
; 	}
define __label1614684066 .
EVAL8 ii0'8,iii0'48,0,!
IF ii0'8,2,
IF 1,.__label1614684067,
; 		p += 1;
EVAL64 @ii0'48,ii0'48,1,1,*+
; 		n += 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614684066,
define __label1614684067 .
; 	@@

		META ii8,ii0"40,ii16,
	define getMetaRETURN .
RETURN
;#{"endcode":""}
define mint .
ALLOC 0,48,
; Assign ii0'40 to var type
; 	type = a->tokentype & 3;
EVAL64 @ii0'40,0,i16,+P3,&
; 	}
EVAL64 ii0'8,ii0'40,2,<
IF ii0'8,.__label1614684068,
; 	}
EVAL64 ii0'8,ii0'40,2,=
IF ii0'8,.__label1614684070,
; 		@@

			MINT ii8,ii16,ii16"8,ii16"40,
		IF 1,.__label1614684071,
define __label1614684070 .
; 		@@

			MINT ii8,ii16,ii16"8,ii16"16,
		define __label1614684071 .
IF 1,.__label1614684069,
define __label1614684068 .
; 		@@

			MINT ii8,ii16,ii16"8,
		define __label1614684069 .
define mintRETURN .
RETURN
;#{"endcode":""}
define init .
;#{"code":"init","types":{},"vars":[{"a":{"loc":"@ii0'40","size":12,"type":"__storedata__"}},{"general":{"loc":"@ii0'56","size":88,"type":"account"}},{"height":{"loc":"ii0'144","size":4,"type":"int"}},{"buf":{"loc":"@ii0'152","size":20,"type":"[20]char"}}]}
ALLOC 0,184,
; Assign @ii0'40 to var a
; Assign @ii0'56 to var general
; Assign ii0'144 to var height
; Assign @ii0'152 to var buf
; 	read(buf, abi("_totalaccts"));
;#{"srcline":61}
NOP
LOAD @ii0'152,xfebda3af,
; 	_totalaccts
;#{"srcline":62}
NOP
EVAL64 ii0'176,@@ii0'152,
EVAL32 ii0'8,iii0'176,4,=
IF ii0'8,.__label1614684072,
IF 1,.__label1614684073,
define __label1614684072 .
; 		return;
;#{"srcline":63}
NOP
RETURN
define __label1614684073 .
; 	_totalaccts = 1;
;#{"srcline":65}
NOP
EVAL32 @gii0'48,1,
; 	a.len = 4;
;#{"srcline":67}
NOP
EVAL64 ii0'176,0,@ii0'40,+
EVAL32 iii0'176,4,
; 	a.data = (char*) &_totalaccts;
;#{"srcline":68}
NOP
EVAL64 0,@ii0'40,4,++@gii0'48,
; 	write(abi("_totalaccts"), &a);
;#{"srcline":69}
NOP
EVAL64 ii0'176,@@ii0'40,
EVAL64 ii0'8,iii0'176"4,
STORE xfebda3af,iii0'176,iii0'8,
; 	_allaccts = 0;
;#{"srcline":71}
NOP
EVAL64 @gii0'40,0,
; 	a.data = (char*) &_allaccts;
;#{"srcline":72}
NOP
EVAL64 0,@ii0'40,4,++@gii0'40,
; 	write(abi("_allaccts"), &a);
;#{"srcline":73}
NOP
EVAL64 ii0'176,@@ii0'40,
EVAL64 ii0'8,iii0'176"4,
STORE xaae13487,iii0'176,iii0'8,
; 	getBlockHeight(&height);
;#{"srcline":74}
NOP
EVAL64 ii0'176,@ii0'144,
HEIGHT iii0'176,
; 	general._paypoint = 0;
;#{"srcline":76}
NOP
EVAL64 ii0'176,0,@ii0'56,+
EVAL32 iii0'176,0,
; 	general._start = 0;
;#{"srcline":77}
NOP
EVAL64 ii0'176,0,@ii0'56,4,++
EVAL32 iii0'176,0,
; 	general._round = 0;
;#{"srcline":78}
NOP
EVAL64 ii0'176,0,@ii0'56,4,+4,++
EVAL32 iii0'176,0,
; 	general._lastclaim = 0;
;#{"srcline":79}
NOP
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,++
EVAL32 iii0'176,0,
; 	general._amount = 0;
;#{"srcline":80}
NOP
EVAL64 0,@ii0'56,4,+4,+4,+4,++0,
; 	general._damount = 0;
;#{"srcline":81}
NOP
EVAL64 0,@ii0'56,4,+4,+4,+4,+8,+8,+4,++0,
; 	general._maxpay = 0;
;#{"srcline":82}
NOP
EVAL64 0,@ii0'56,4,+4,+4,+4,+8,++0,
; 	general._claimants = 0;
;#{"srcline":83}
NOP
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,+4,+8,+8,++
EVAL32 iii0'176,0,
; 	general._remains = 0;
;#{"srcline":84}
NOP
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'176,0,
; 	general._opening = height;
;#{"srcline":85}
NOP
EVAL64 ii0'176,0,@ii0'56,4,+4,+4,+4,+8,+8,+4,+8,+4,+36,++
EVAL32 iii0'176,ii0'144,
; 	saveacct(&general);
;#{"srcline":86}
NOP
EVAL64 ii0'176,@@ii0'56,
CALL 0,.saveacct,Qii0'176,

define initRETURN .
RETURN
;#{"endcode":""}
define claim .
;#{"code":"claim","types":{},"vars":[{"in":{"loc":"@ii0'40","size":72,"type":"__coin__"}},{"acct":{"loc":"@ii0'112","size":88,"type":"account"}},{"i":{"loc":"ii0'200","size":4,"type":"int"}},{"payment":{"loc":"ii0'208","size":8,"type":"long"}},{"x":{"loc":"@ii0'216","size":74,"type":"xclaim"}},{"match":{"loc":"ii0'296","size":1,"type":"char"}},{"d":{"loc":"ii0'304","size":4,"type":"int"}},{"height":{"loc":"ii0'312","size":4,"type":"int"}},{"dpay":{"loc":"ii0'320","size":8,"type":"long"}},{"y":{"loc":"@ii0'328","size":74,"type":"xclaim"}}]}
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
;#{"srcline":100}
NOP
EVAL64 ii0'416,@@ii0'40,
GETCOIN iii0'416,
; 	if
;#{"srcline":101}
NOP
EVAL64 ii0'416,0,
EVAL32 ii0'416,i8,0,(
EVAL64 ii0'8,0,@ii0'40,+P0,!0,@ii0'40,8,++P0,!|ii0'416,|
IF ii0'8,.__label1614684074,
IF 1,.__label1614684075,
define __label1614684074 .
; 	if (in.tokentype != 0 || in.data.num.value != 0 || paypoint <= 0) fail();
;#{"srcline":101}
NOP
REVERT
define __label1614684075 .
; 	d
;#{"srcline":103}
NOP
EVAL64 ii0'417,@@ii0'112,
CALL 0,.getaccount,@ii0'416,Qii0'417,i8,
EVAL8 ii0'8,ii0'416,0,=
IF ii0'8,.__label1614684076,
IF 1,.__label1614684077,
define __label1614684076 .
; 	if (getaccount(&acct, paypoint) == 0) fail();
;#{"srcline":103}
NOP
REVERT
define __label1614684077 .
; 	d = getqindex(hash);
;#{"srcline":105}
NOP
CALL 0,.getqindex,@ii0'416,i16,
EVAL32 @ii0'304,ii0'416,
; 	getclaim
;#{"srcline":106}
NOP
EVAL32 ii0'8,ii0'304,0,<
IF ii0'8,.__label1614684078,
IF 1,.__label1614684079,
define __label1614684078 .
; 	if (d < 0) fail();
;#{"srcline":106}
NOP
REVERT
define __label1614684079 .
; 	getclaim(&x, paypoint, d);
;#{"srcline":108}
NOP
EVAL64 ii0'417,@@ii0'216,
CALL 0,.getclaim,@ii0'416,Qii0'417,i8,ii0'304,

; 	match = hasheq(hash, x._claim.hash);
;#{"srcline":111}
NOP
EVAL64 ii0'417,0,@ii0'216,+
CALL 0,.hasheq,@ii0'416,i16,Qii0'417,
EVAL8 @ii0'296,ii0'416,
; 	if
;#{"srcline":113}
NOP
EVAL8 ii0'8,ii0'296,0,=
IF ii0'8,.__label1614684080,
IF 1,.__label1614684081,
define __label1614684080 .
; 		i = 0;
;#{"srcline":114}
NOP
EVAL32 @ii0'200,0,
; 		}
;#{"srcline":115}
NOP
define __label1614684082 .
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 ii0'8,ii0'200,iii0'416,<
IF ii0'8,2,
IF 1,.__label1614684083,
; 			d
;#{"srcline":116}
NOP
EVAL64 ii0'417,@@ii0'216,
CALL 0,.getclaim,@ii0'416,Qii0'417,i8,ii0'200,
EVAL8 ii0'8,ii0'416,0,=
IF ii0'8,.__label1614684084,
IF 1,.__label1614684085,
define __label1614684084 .
; 			if (getclaim(&x, paypoint, i) == 0) continue;
;#{"srcline":116}
NOP
IF 1,.__label1614684082,
define __label1614684085 .
; 			d = i;
;#{"srcline":118}
NOP
EVAL32 @ii0'304,ii0'200,
; 			match = hasheq(hash, (char*) x._claim.hash);
;#{"srcline":119}
NOP
EVAL64 ii0'417,0,@ii0'216,+
CALL 0,.hasheq,@ii0'416,i16,Qii0'417,
EVAL8 @ii0'296,ii0'416,
; 			i
;#{"srcline":120}
NOP
EVAL8 ii0'8,ii0'296,1,=
IF ii0'8,.__label1614684086,
IF 1,.__label1614684087,
define __label1614684086 .
; 			if (match == 1) break;
;#{"srcline":120}
NOP
IF 1,.__label1614684083,
define __label1614684087 .
; 			i += 1;
;#{"srcline":121}
NOP
EVAL32 @ii0'200,ii0'200,1,+
IF 1,.__label1614684082,
define __label1614684083 .
define __label1614684081 .
; 	getBlockHeight
;#{"srcline":125}
NOP
EVAL8 ii0'8,ii0'296,0,=
IF ii0'8,.__label1614684088,
IF 1,.__label1614684089,
define __label1614684088 .
; 	if (match == 0) fail();
;#{"srcline":125}
NOP
REVERT
define __label1614684089 .
; 	getBlockHeight(&height);
;#{"srcline":127}
NOP
EVAL64 ii0'416,@ii0'312,
HEIGHT iii0'416,
; 	setcontract();
;#{"srcline":128}
NOP
CALL 0,.setcontract,

; 	payment = 0;
;#{"srcline":130}
NOP
EVAL64 @ii0'208,0,
; 	payment = 0; dpay = 0;
;#{"srcline":130}
NOP
EVAL64 @ii0'320,0,
; 	if
;#{"srcline":131}
NOP
EVAL64 ii0'416,0,@ii0'216,32,+8,++P0,>
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'424,0,=ii0'416,&
IF ii0'8,.__label1614684090,
IF 1,.__label1614684091,
define __label1614684090 .
; 		payment = x._claim.guaranteed;
;#{"srcline":133}
NOP
EVAL64 @ii0'208,0,@ii0'216,32,+8,++P
; 		x._claim.guaranteed = 0;
;#{"srcline":134}
NOP
EVAL64 0,@ii0'216,32,+8,++0,
define __label1614684091 .
; 	acct
;#{"srcline":137}
NOP
EVAL64 ii0'8,0,@ii0'216,32,++P0,>
IF ii0'8,.__label1614684092,
IF 1,.__label1614684093,
define __label1614684092 .
; 		if
;#{"srcline":138}
NOP
EVAL64 ii0'416,0,@ii0'216,70,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'416,iii0'424,)
IF ii0'8,.__label1614684094,
IF 1,.__label1614684095,
define __label1614684094 .
; 			if
;#{"srcline":139}
NOP
EVAL64 ii0'416,0,@ii0'112,4,++
EVAL32 ii0'8,ii0'312,iii0'416,1200,24,*+)
IF ii0'8,.__label1614684096,
IF 1,.__label1614684097,
define __label1614684096 .
; 				acct._round += 1;
;#{"srcline":140}
NOP
EVAL64 ii0'416,0,@ii0'112,4,+4,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 iii0'416,iii0'424,1,+
; 				acct
;#{"srcline":143}
NOP
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,++P0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++P>
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,+4,+36,++
EVAL32 ii0'8,ii0'312,iii0'424,1200,24,*31,*+>ii0'416,&
IF ii0'8,.__label1614684098,
IF 1,.__label1614684099,
define __label1614684098 .
; 					i = 0;
;#{"srcline":144}
NOP
EVAL32 @ii0'200,0,
; 					}
;#{"srcline":145}
NOP
define __label1614684100 .
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 ii0'8,ii0'200,iii0'416,<
IF ii0'8,2,
IF 1,.__label1614684101,
; 						j = i;
;#{"srcline":147}
NOP
EVAL32 @ii0'408,ii0'200,
; 						i += 1;
;#{"srcline":148}
NOP
EVAL32 @ii0'200,ii0'200,1,+
; 						if
;#{"srcline":149}
NOP
EVAL32 ii0'8,ii0'408,ii0'304,=
IF ii0'8,.__label1614684102,
IF 1,.__label1614684103,
define __label1614684102 .
; 						if (j == d) continue;
;#{"srcline":149}
NOP
IF 1,.__label1614684100,
define __label1614684103 .
; 						if
;#{"srcline":150}
NOP
EVAL64 ii0'417,@@ii0'328,
CALL 0,.getclaim,@ii0'416,Qii0'417,i8,ii0'408,
EVAL8 ii0'8,ii0'416,0,=
IF ii0'8,.__label1614684104,
IF 1,.__label1614684105,
define __label1614684104 .
; 						if (getclaim(&y, paypoint, j) == 0) continue;
;#{"srcline":150}
NOP
IF 1,.__label1614684100,
define __label1614684105 .
; 					}
;#{"srcline":151}
NOP
EVAL64 ii0'8,0,@ii0'328,32,+8,++P0,!
IF ii0'8,.__label1614684106,
IF 1,.__label1614684107,
define __label1614684106 .
; 							acct._damount += y._claim.guaranteed;
;#{"srcline":152}
NOP
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++P0,@ii0'328,32,+8,++P+
; 							y
;#{"srcline":153}
NOP
EVAL64 ii0'8,0,@ii0'328,32,++P0,=
IF ii0'8,.__label1614684108,
IF 1,.__label1614684109,
define __label1614684108 .
; 								acct._remains += 1;
;#{"srcline":154}
NOP
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'416,iii0'424,1,+
define __label1614684109 .
; 							y._claim.fee += y._claim.guaranteed;
;#{"srcline":155}
NOP
EVAL64 0,@ii0'328,32,++0,@ii0'328,32,++P0,@ii0'328,32,+8,++P+
; 							y._claim.guaranteed = 0;
;#{"srcline":156}
NOP
EVAL64 0,@ii0'328,32,+8,++0,
; 							saveclaim(&y, paypoint, j);
;#{"srcline":157}
NOP
EVAL64 ii0'416,@@ii0'328,
CALL 0,.saveclaim,Qii0'416,i8,ii0'408,

define __label1614684107 .
IF 1,.__label1614684100,
define __label1614684101 .
define __label1614684099 .
; 				acct._maxpay = acct._damount / (long) acct._remains;
;#{"srcline":162}
NOP
EVAL64 ii0'420,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 ii0'416,iii0'420,
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++PDii0'416,/
; 				acct
;#{"srcline":163}
NOP
EVAL64 ii0'8,0,@ii0'112,4,+4,+4,+4,+8,++P0,(ii0'208,0,=&
IF ii0'8,.__label1614684110,
IF 1,.__label1614684111,
define __label1614684110 .
; 				if (acct._maxpay <= 0 && payment == 0) fail();
;#{"srcline":163}
NOP
REVERT
define __label1614684111 .
; 				acct._start = height;
;#{"srcline":164}
NOP
EVAL64 ii0'416,0,@ii0'112,4,++
EVAL32 iii0'416,ii0'312,
define __label1614684097 .
; 		}
;#{"srcline":166}
NOP
EVAL64 ii0'416,ii0'208,0,=
EVAL64 ii0'424,0,@ii0'216,70,++
EVAL64 ii0'432,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'424,iii0'432,)ii0'416,&
IF ii0'8,.__label1614684112,
IF 1,.__label1614684113,
define __label1614684112 .
; 			if (x._round >= acct._round && payment == 0) fail();
;#{"srcline":166}
NOP
REVERT
define __label1614684113 .
define __label1614684095 .
; 	}
;#{"srcline":169}
NOP
EVAL64 ii0'416,0,@ii0'216,70,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 ii0'8,iii0'416,iii0'424,<
IF ii0'8,.__label1614684114,
IF 1,.__label1614684115,
define __label1614684114 .
; 			x._round = acct._round;
;#{"srcline":170}
NOP
EVAL64 ii0'416,0,@ii0'216,70,++
EVAL64 ii0'424,0,@ii0'112,4,+4,++
EVAL32 iii0'416,iii0'424,
; 			dpay = x._claim.fee > acct._maxpay? acct._maxpay : x._claim.fee;
;#{"srcline":171}
NOP
EVAL64 @ii0'320,0,@ii0'112,4,+4,+4,+4,+8,++P0,@ii0'216,32,++P0,@ii0'216,32,++P0,@ii0'112,4,+4,+4,+4,+8,++P>?
; 			payment += dpay;
;#{"srcline":172}
NOP
EVAL64 @ii0'208,ii0'208,ii0'320,+
; 			acct._damount -= dpay;
;#{"srcline":173}
NOP
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++Pii0'320,-
define __label1614684115 .
define __label1614684093 .
; 	acct._amount -= payment;
;#{"srcline":178}
NOP
EVAL64 0,@ii0'112,4,+4,+4,+4,++0,@ii0'112,4,+4,+4,+4,++Pii0'208,-
; 	addTxin(&acct._balance);
;#{"srcline":181}
NOP
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'416,ii0'424,
SPEND iii0'416,iii0'416"32,
; 	makeoutput(nil, payment, 22, x._claim.script);
;#{"srcline":184}
NOP
EVAL64 ii0'416,0,@ii0'216,32,+8,+8,++
CALL 0,.makeoutput,0,ii0'208,22,Qii0'416,

; 	}
;#{"srcline":187}
NOP
EVAL64 ii0'8,0,@ii0'216,32,++Pii0'320,=
IF ii0'8,.__label1614684116,
; 		x._claim.fee -= dpay;
;#{"srcline":191}
NOP
EVAL64 0,@ii0'216,32,++0,@ii0'216,32,++Pii0'320,-
; 		saveclaim(&x, paypoint, d);
;#{"srcline":192}
NOP
EVAL64 ii0'416,@@ii0'216,
CALL 0,.saveclaim,Qii0'416,i8,ii0'304,

IF 1,.__label1614684117,
define __label1614684116 .
; 		delclaim
;#{"srcline":188}
NOP
EVAL64 ii0'8,0,@ii0'216,32,++P0,!
IF ii0'8,.__label1614684118,
IF 1,.__label1614684119,
define __label1614684118 .
; 		if (x._claim.fee != 0) acct._remains -= 1;
;#{"srcline":188}
NOP
EVAL64 ii0'416,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'416,iii0'424,1,-
define __label1614684119 .
; 		delclaim(&x, paypoint, d);
;#{"srcline":189}
NOP
EVAL64 ii0'416,@@ii0'216,
CALL 0,.delclaim,Qii0'416,i8,ii0'304,

define __label1614684117 .
; }
;#{"srcline":195}
NOP
EVAL64 ii0'417,@@ii0'112,
CALL 0,.close,@ii0'416,i8,Qii0'417,
EVAL8 ii0'8,ii0'416,~1,&
IF ii0'8,.__label1614684120,
IF 1,.__label1614684121,
define __label1614684120 .
; 		makeoutput(&acct._balance, acct._amount, 21, CONTRACT);
;#{"srcline":197}
NOP
EVAL64 ii0'424,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'416,ii0'424,
EVAL64 ii0'432,0,@ii0'112,4,+4,+4,+4,++P
CALL 0,.makeoutput,Qii0'416,Qii0'432,21,@gii0'56,

; 		saveacct(&acct);
;#{"srcline":199}
NOP
EVAL64 ii0'416,@@ii0'112,
CALL 0,.saveacct,Qii0'416,

define __label1614684121 .
define claimRETURN .
RETURN
;#{"endcode":""}
define setcontract .
;#{"code":"setcontract","types":{},"vars":[{"buf":{"loc":"@ii0'40","size":30,"type":"[30]char"}}]}
ALLOC 0,96,
; Assign @ii0'40 to var buf
; Assign @ii0'72 to string address
COPYIMM @ii0'72,L8,x6164647265737300,
; 	CONTRACT[0] = 0x88;
;#{"srcline":206}
NOP
EVAL64 ii0'80,0,@gii0'56,+0,+
EVAL8 iii0'80,x88,
; 	getMeta(buf, "address");
;#{"srcline":207}
NOP
CALL 0,.getMeta,@ii0'40,@ii0'72,

; 	memcopy(CONTRACT + 1, buf + 4, 20);
;#{"srcline":208}
NOP
EVAL64 ii0'80,@gii0'56,1,+
EVAL64 ii0'88,@ii0'40,4,+
COPY iii0'80,iii0'88,20,
define setcontractRETURN .
RETURN
;#{"endcode":""}
define getaccount .
;#{"code":"getaccount","types":{},"vars":[{"ntakersabi":{"loc":"ii0'40","size":8,"type":"long"}},{"accountbuf":{"loc":"@ii0'48","size":128,"type":"[128]char"}}]}
ALLOC 0,208,
; Assign ii0'40 to var ntakersabi
; Assign @ii0'48 to var accountbuf
; 	ntakersabi = (1 << 32) | (long) paypoint;
;#{"srcline":215}
NOP
EVAL64 @ii0'40,0,1,32,[+Di24,|
; 	read(accountbuf, ntakersabi);
;#{"srcline":216}
NOP
LOAD @ii0'48,ii0'40,
; 	*
;#{"srcline":217}
NOP
EVAL64 ii0'176,@@ii0'48,
EVAL32 ii0'8,0,iii0'176,+88,!
IF ii0'8,.__label1614684122,
IF 1,.__label1614684123,
define __label1614684122 .
; 		return 0;
;#{"srcline":218}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684124,
EVAL8 ii8,0,
define __label1614684124 .
RETURN
define __label1614684123 .
; 	*acct = *(struct account *) (accountbuf + 4);
;#{"srcline":219}
NOP
EVAL64 ii0'184,0,i16,+
EVAL64 ii0'176,ii0'184,
EVAL64 ii0'200,0,@ii0'48,4,++
EVAL64 ii0'192,ii0'200,
COPY iii0'176,iii0'192,88,
; 	return 1;
;#{"srcline":220}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684125,
EVAL8 ii8,1,
define __label1614684125 .
RETURN
define getaccountRETURN .
RETURN
;#{"endcode":""}
define filing .
;#{"code":"filing","types":{},"vars":[{"in":{"loc":"@ii0'40","size":72,"type":"__coin__"}},{"acct":{"loc":"@ii0'112","size":88,"type":"account"}},{"i":{"loc":"ii0'200","size":4,"type":"int"}},{"a":{"loc":"@ii0'208","size":12,"type":"__storedata__"}},{"claimabi":{"loc":"ii0'224","size":8,"type":"long"}},{"version":{"loc":"ii0'232","size":4,"type":"int"}},{"dec":{"loc":"ii0'240","size":4,"type":"int"}}]}
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
; 	getCoin(&in);
;#{"srcline":233}
NOP
EVAL64 ii0'344,@@ii0'40,
GETCOIN iii0'344,
; 	if
;#{"srcline":234}
NOP
EVAL64 ii0'344,0,
EVAL32 ii0'344,i16,0,(
EVAL64 ii0'352,0,
EVAL32 ii0'352,i8,0,(
EVAL64 ii0'8,0,@ii0'40,+P0,!0,@ii0'40,8,++P0,!|ii0'352,|ii0'344,|
IF ii0'8,.__label1614684126,
IF 1,.__label1614684127,
define __label1614684126 .
; 	if (in.tokentype != 0 || in.data.num.value != 0 || paypoint <= 0 || cnt <= 0) fail();
;#{"srcline":234}
NOP
REVERT
define __label1614684127 .
; 	setcontract
;#{"srcline":236}
NOP
EVAL64 ii0'345,@@ii0'112,
CALL 0,.getaccount,@ii0'344,Qii0'345,i8,
EVAL8 ii0'8,ii0'344,0,=
IF ii0'8,.__label1614684128,
IF 1,.__label1614684129,
define __label1614684128 .
; 	if (getaccount(&acct, paypoint) == 0) fail();
;#{"srcline":236}
NOP
REVERT
define __label1614684129 .
; 	setcontract();
;#{"srcline":237}
NOP
CALL 0,.setcontract,

; 	i = 0;
;#{"srcline":239}
NOP
EVAL32 @ii0'200,0,
; 	i = 0; dec = 0;
;#{"srcline":239}
NOP
EVAL32 @ii0'240,0,
; 	}
;#{"srcline":240}
NOP
define __label1614684130 .
EVAL32 ii0'8,ii0'200,i16,<
IF ii0'8,2,
IF 1,.__label1614684131,
; 		x._claim = * clm;
;#{"srcline":245}
NOP
EVAL64 ii0'352,0,@ii0'248,+
EVAL64 ii0'344,ii0'352,
EVAL64 ii0'368,i24,
EVAL64 ii0'360,ii0'368,
COPY iii0'344,iii0'360,70,
; 		x
;#{"srcline":247}
NOP
EVAL64 ii0'8,0,@ii0'248,32,++P0,=0,@ii0'248,32,+8,++P0,=&
IF ii0'8,.__label1614684132,
IF 1,.__label1614684133,
define __label1614684132 .
; 			dec += 1;
;#{"srcline":249}
NOP
EVAL32 @ii0'240,ii0'240,1,+
; 			dec += 1; clm += 1;
;#{"srcline":249}
NOP
EVAL64 @i24,i24,1,70,*+
; 			dec += 1; clm += 1; i += 1;
;#{"srcline":249}
NOP
EVAL32 @ii0'200,ii0'200,1,+
; 			continue;
;#{"srcline":250}
NOP
IF 1,.__label1614684130,
define __label1614684133 .
; 		x._round = 0;
;#{"srcline":253}
NOP
EVAL64 ii0'344,0,@ii0'248,70,++
EVAL32 iii0'344,0,
; 		d = i + acct._claimants - dec;
;#{"srcline":254}
NOP
EVAL64 ii0'344,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 @ii0'336,ii0'200,iii0'344,+ii0'240,-
; 		claimabi = (((long) paypoint) << 32) | (long) d;
;#{"srcline":255}
NOP
EVAL64 @ii0'224,0,0,Di8,+32,[+Dii0'336,|
; 		a.len = sizeof(struct xclaim);
;#{"srcline":257}
NOP
EVAL64 ii0'344,0,@ii0'208,+
EVAL32 iii0'344,74,
; 		a.data = (char*) &x;
;#{"srcline":258}
NOP
EVAL64 0,@ii0'208,4,++@@ii0'248,
; 		write(claimabi, &a);
;#{"srcline":259}
NOP
EVAL64 ii0'344,@@ii0'208,
EVAL64 ii0'8,iii0'344"4,
STORE ii0'224,iii0'344,iii0'8,
; 		qhi = *(long*) x._claim.hash | (1 << 63);
;#{"srcline":261}
NOP
EVAL64 @ii0'328,0,0,@ii0'248,++P0,1,63,[+|
; 		a.len = 4;
;#{"srcline":262}
NOP
EVAL64 ii0'344,0,@ii0'208,+
EVAL32 iii0'344,4,
; 		a.data = (char*) &d;
;#{"srcline":263}
NOP
EVAL64 0,@ii0'208,4,++@ii0'336,
; 		write(qhi, &a);
;#{"srcline":264}
NOP
EVAL64 ii0'344,@@ii0'208,
EVAL64 ii0'8,iii0'344"4,
STORE ii0'328,iii0'344,iii0'8,
; 		acct._damount -= x._claim.guaranteed;
;#{"srcline":266}
NOP
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++P0,@ii0'248,32,+8,++P-
; 		clm
;#{"srcline":268}
NOP
EVAL64 ii0'8,0,@ii0'248,32,++P0,>
IF ii0'8,.__label1614684134,
IF 1,.__label1614684135,
define __label1614684134 .
; 			acct._remains += 1;
;#{"srcline":269}
NOP
EVAL64 ii0'344,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL64 ii0'352,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'344,iii0'352,1,+
define __label1614684135 .
; 		clm += 1;
;#{"srcline":272}
NOP
EVAL64 @i24,i24,1,70,*+
; 		clm += 1; i += 1;
;#{"srcline":272}
NOP
EVAL32 @ii0'200,ii0'200,1,+
IF 1,.__label1614684130,
define __label1614684131 .
; 	acct._claimants += cnt - dec;
;#{"srcline":274}
NOP
EVAL64 ii0'344,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL64 ii0'352,0,@ii0'112,4,+4,+4,+4,+8,+8,++
EVAL32 iii0'344,iii0'352,i16,ii0'240,-+
; 	acct._maxpay = acct._damount / (long) acct._remains - 1000;
;#{"srcline":275}
NOP
EVAL64 ii0'348,0,@ii0'112,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 ii0'344,iii0'348,
EVAL64 0,@ii0'112,4,+4,+4,+4,+8,++0,@ii0'112,4,+4,+4,+4,+8,+8,+4,++PDii0'344,/1000,-
; 	saveacct(&acct);
;#{"srcline":277}
NOP
EVAL64 ii0'344,@@ii0'112,
CALL 0,.saveacct,Qii0'344,

define filingRETURN .
RETURN
;#{"endcode":""}
define open .
;#{"code":"open","types":{},"vars":[{"acct":{"loc":"@ii0'40","size":88,"type":"account"}},{"in":{"loc":"@ii0'128","size":72,"type":"__coin__"}},{"height":{"loc":"ii0'200","size":4,"type":"int"}},{"buf":{"loc":"@ii0'208","size":80,"type":"[80]char"}},{"a":{"loc":"@ii0'288","size":12,"type":"__storedata__"}},{"version":{"loc":"ii0'304","size":4,"type":"int"}}]}
ALLOC 0,328,
; Assign @ii0'40 to var acct
; Assign @ii0'128 to var in
; Assign ii0'200 to var height
; Assign @ii0'208 to var buf
; Assign @ii0'288 to var a
; Assign ii0'304 to var version
; 	getCoin(&in);
;#{"srcline":291}
NOP
EVAL64 ii0'312,@@ii0'128,
GETCOIN iii0'312,
; 	if
;#{"srcline":292}
NOP
EVAL64 ii0'312,0,
EVAL32 ii0'312,i8,0,(
EVAL64 ii0'8,0,@ii0'128,+P0,!0,@ii0'128,8,++P0,=|ii0'312,|
IF ii0'8,.__label1614684136,
IF 1,.__label1614684137,
define __label1614684136 .
; 	if (in.tokentype != 0 || in.data.num.value == 0 || paypoint <= 0) fail();
;#{"srcline":292}
NOP
REVERT
define __label1614684137 .
; 	setcontract
;#{"srcline":294}
NOP
EVAL64 ii0'313,@@ii0'40,
CALL 0,.getaccount,@ii0'312,Qii0'313,i8,
EVAL8 ii0'8,ii0'312,
IF ii0'8,.__label1614684138,
IF 1,.__label1614684139,
define __label1614684138 .
; 	if (getaccount(&acct, paypoint)) fail();
;#{"srcline":294}
NOP
REVERT
define __label1614684139 .
; 	setcontract();
;#{"srcline":295}
NOP
CALL 0,.setcontract,

; 	acct._paypoint = paypoint;
;#{"srcline":297}
NOP
EVAL64 ii0'312,0,@ii0'40,+
EVAL32 iii0'312,i8,
; 	getBlockHeight(&height);
;#{"srcline":299}
NOP
EVAL64 ii0'312,@ii0'200,
HEIGHT iii0'312,
; 	acct._start = height + 600;
;#{"srcline":300}
NOP
EVAL64 ii0'312,0,@ii0'40,4,++
EVAL32 iii0'312,ii0'200,600,+
; 	acct._lastclaim = acct._start;
;#{"srcline":301}
NOP
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,++
EVAL64 ii0'320,0,@ii0'40,4,++
EVAL32 iii0'312,iii0'320,
; 	getOutpoint(&acct._balance);
;#{"srcline":303}
NOP
EVAL64 ii0'320,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'312,ii0'320,
RECEIVED iii0'312,
; 	acct._amount = in.data.num.value;
;#{"srcline":305}
NOP
EVAL64 0,@ii0'40,4,+4,+4,+4,++0,@ii0'128,8,++P
; 	acct._damount = acct._amount;
;#{"srcline":306}
NOP
EVAL64 0,@ii0'40,4,+4,+4,+4,+8,+8,+4,++0,@ii0'40,4,+4,+4,+4,++P
; 	acct._maxpay = acct._amount;
;#{"srcline":307}
NOP
EVAL64 0,@ii0'40,4,+4,+4,+4,+8,++0,@ii0'40,4,+4,+4,+4,++P
; 	acct._round = 1;
;#{"srcline":308}
NOP
EVAL64 ii0'312,0,@ii0'40,4,+4,++
EVAL32 iii0'312,1,
; 	acct._claimants = 0;
;#{"srcline":309}
NOP
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,+4,+8,+8,++
EVAL32 iii0'312,0,
; 	acct._remains = 0;
;#{"srcline":310}
NOP
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 iii0'312,0,
; 	acct._opening = height;
;#{"srcline":311}
NOP
EVAL64 ii0'312,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,+36,++
EVAL32 iii0'312,ii0'200,
; 	saveacct(&acct);
;#{"srcline":313}
NOP
EVAL64 ii0'312,@@ii0'40,
CALL 0,.saveacct,Qii0'312,

; 	read(buf, abi("_totalaccts"));
;#{"srcline":315}
NOP
LOAD @ii0'208,xfebda3af,
; 	_totalaccts = 1 + *(int*) (buf + 4);
;#{"srcline":316}
NOP
EVAL64 ii0'312,0,@ii0'208,4,++
EVAL32 @gii0'48,1,iii0'312,+
; 	alloc(&_allaccts, 4 * _totalaccts + 4);
;#{"srcline":318}
NOP
EVAL64 ii0'312,@gii0'40,
EVAL32 ii0'320,4,gii0'48,*4,+
ALLOC iii0'312,ii0'320,
; 	read(_allaccts, abi("_allaccts"));
;#{"srcline":319}
NOP
LOAD igii0'40,xaae13487,
; 	*(_allaccts + _totalaccts) = paypoint;
;#{"srcline":320}
NOP
EVAL64 ii0'312,gii0'40,Dgii0'48,4,*+
EVAL32 iii0'312,i8,
; 	a.len = 4 * _totalaccts;
;#{"srcline":322}
NOP
EVAL64 ii0'312,0,@ii0'288,+
EVAL32 iii0'312,4,gii0'48,*
; 	a.data = (char*) (_allaccts + 1);
;#{"srcline":323}
NOP
EVAL64 0,@ii0'288,4,++0,gii0'40,1,4,*++
; 	write(abi("_allaccts"), &a);
;#{"srcline":324}
NOP
EVAL64 ii0'312,@@ii0'288,
EVAL64 ii0'8,iii0'312"4,
STORE xaae13487,iii0'312,iii0'8,
; 	a.len = 4;
;#{"srcline":326}
NOP
EVAL64 ii0'312,0,@ii0'288,+
EVAL32 iii0'312,4,
; 	a.data = (char*) &_totalaccts;
;#{"srcline":327}
NOP
EVAL64 0,@ii0'288,4,++@gii0'48,
; 	write(abi("_totalaccts"), &a);
;#{"srcline":328}
NOP
EVAL64 ii0'312,@@ii0'288,
EVAL64 ii0'8,iii0'312"4,
STORE xfebda3af,iii0'312,iii0'8,
define openRETURN .
RETURN
;#{"endcode":""}
define close .
;#{"code":"close","types":{},"vars":[{"acct0":{"loc":"@ii0'40","size":88,"type":"account"}},{"buf":{"loc":"@ii0'128","size":80,"type":"[80]char"}},{"a":{"loc":"@ii0'208","size":12,"type":"__storedata__"}},{"p":{"loc":"ii0'224","size":8,"type":"*int"}},{"i":{"loc":"ii0'232","size":4,"type":"int"}}]}
ALLOC 0,344,
; Assign @ii0'40 to var acct0
; Assign @ii0'128 to var buf
; Assign @ii0'208 to var a
; Assign ii0'224 to var p
; Assign ii0'232 to var i
; Assign @ii0'240 to var y
; 	delacct
;#{"srcline":339}
NOP
EVAL64 ii0'8,0,i24,4,+4,+4,+4,++P0,>
IF ii0'8,.__label1614684140,
IF 1,.__label1614684141,
define __label1614684140 .
; 		i
;#{"srcline":340}
NOP
EVAL64 ii0'320,0,i24,4,+4,+4,+4,+8,+8,+4,+8,++
EVAL32 ii0'8,iii0'320,0,>
IF ii0'8,.__label1614684142,
IF 1,.__label1614684143,
define __label1614684142 .
; 		if (acct->_remains > 0) return 0;
;#{"srcline":340}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684144,
EVAL8 ii8,0,
define __label1614684144 .
RETURN
define __label1614684143 .
; 		i = 0;
;#{"srcline":342}
NOP
EVAL32 @ii0'232,0,
; 		}
;#{"srcline":343}
NOP
define __label1614684145 .
EVAL64 ii0'320,0,i24,4,+4,+4,+4,+8,+8,++
EVAL32 ii0'8,ii0'232,iii0'320,<
IF ii0'8,2,
IF 1,.__label1614684146,
; 			if
;#{"srcline":345}
NOP
EVAL64 ii0'321,@@ii0'240,
CALL 0,.getclaim,@ii0'320,Qii0'321,i16,ii0'232,
EVAL8 ii0'8,ii0'320,0,=
IF ii0'8,.__label1614684147,
IF 1,.__label1614684148,
define __label1614684147 .
; 			if (getclaim(&y, paypoint, i) == 0) continue;
;#{"srcline":345}
NOP
IF 1,.__label1614684145,
define __label1614684148 .
; 			i
;#{"srcline":346}
NOP
EVAL64 ii0'8,0,@ii0'240,32,+8,++P0,!
IF ii0'8,.__label1614684149,
IF 1,.__label1614684150,
define __label1614684149 .
; 			if (y._claim.guaranteed != 0) return 0;
;#{"srcline":346}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684151,
EVAL8 ii8,0,
define __label1614684151 .
RETURN
define __label1614684150 .
; 			i += 1;
;#{"srcline":347}
NOP
EVAL32 @ii0'232,ii0'232,1,+
IF 1,.__label1614684145,
define __label1614684146 .
define __label1614684141 .
; 	delacct(paypoint);
;#{"srcline":351}
NOP
CALL 0,.delacct,i16,

; 	read
;#{"srcline":353}
NOP
EVAL64 ii0'8,0,i24,4,+4,+4,+4,++P0,>
IF ii0'8,.__label1614684152,
IF 1,.__label1614684153,
define __label1614684152 .
; 		getaccount(&acct0, 0);
;#{"srcline":355}
NOP
EVAL64 ii0'321,@@ii0'40,
CALL 0,.getaccount,@ii0'320,Qii0'321,0,

; 		acct0
;#{"srcline":357}
NOP
EVAL64 ii0'8,0,@ii0'40,4,+4,+4,+4,++P0,!
IF ii0'8,.__label1614684154,
IF 1,.__label1614684155,
define __label1614684154 .
; 		if (acct0._amount != 0) addTxin(&acct0._balance);
;#{"srcline":357}
NOP
EVAL64 ii0'328,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'320,ii0'328,
SPEND iii0'320,iii0'320"32,
define __label1614684155 .
; 		acct0._amount += acct->_amount;
;#{"srcline":359}
NOP
EVAL64 0,@ii0'40,4,+4,+4,+4,++0,@ii0'40,4,+4,+4,+4,++P0,i24,4,+4,+4,+4,++P+
; 		makeoutput(&acct0._balance, acct0._amount, 21, CONTRACT);
;#{"srcline":362}
NOP
EVAL64 ii0'328,0,@ii0'40,4,+4,+4,+4,+8,+8,+4,+8,+4,++
EVAL64 ii0'320,ii0'328,
EVAL64 ii0'336,0,@ii0'40,4,+4,+4,+4,++P
CALL 0,.makeoutput,Qii0'320,Qii0'336,21,@gii0'56,

; 		saveacct(&acct0);
;#{"srcline":364}
NOP
EVAL64 ii0'320,@@ii0'40,
CALL 0,.saveacct,Qii0'320,

define __label1614684153 .
; 	read(buf, abi("_totalaccts"));
;#{"srcline":367}
NOP
LOAD @ii0'128,xfebda3af,
; 	_totalaccts = *(int*) (buf + 4);
;#{"srcline":368}
NOP
EVAL64 ii0'320,0,@ii0'128,4,++
EVAL32 @gii0'48,iii0'320,
; 	alloc(&_allaccts, 4 * _totalaccts + 4);
;#{"srcline":370}
NOP
EVAL64 ii0'320,@gii0'40,
EVAL32 ii0'328,4,gii0'48,*4,+
ALLOC iii0'320,ii0'328,
; 	read(_allaccts, abi("_allaccts"));
;#{"srcline":371}
NOP
LOAD igii0'40,xaae13487,
; 	p = _allaccts + 1;
;#{"srcline":372}
NOP
EVAL64 @ii0'224,gii0'40,1,4,*+
; 	i = 0;
;#{"srcline":374}
NOP
EVAL32 @ii0'232,0,
; 	}
;#{"srcline":375}
NOP
define __label1614684156 .
EVAL32 ii0'8,ii0'232,gii0'48,<
IF ii0'8,2,
IF 1,.__label1614684157,
; 		i
;#{"srcline":376}
NOP
EVAL32 ii0'8,i16,iii0'224,=
IF ii0'8,.__label1614684158,
IF 1,.__label1614684159,
define __label1614684158 .
; 			a.len = 4 * _totalaccts - 4;
;#{"srcline":377}
NOP
EVAL64 ii0'320,0,@ii0'208,+
EVAL32 iii0'320,4,gii0'48,*4,-
; 			a.data = (char*) (_allaccts + 1);
;#{"srcline":378}
NOP
EVAL64 0,@ii0'208,4,++0,gii0'40,1,4,*++
; 			write
;#{"srcline":379}
NOP
EVAL32 ii0'8,ii0'232,gii0'48,1,-<
IF ii0'8,.__label1614684160,
IF 1,.__label1614684161,
define __label1614684160 .
; 				memcopy(p, p + 1, 4 * (_totalaccts - i - 1));
;#{"srcline":380}
NOP
EVAL64 ii0'320,ii0'224,1,4,*+
EVAL32 ii0'328,4,0,gii0'48,ii0'232,-1,-+*
COPY iii0'224,iii0'320,ii0'328,
define __label1614684161 .
; 			write(abi("_allaccts"), &a);
;#{"srcline":381}
NOP
EVAL64 ii0'320,@@ii0'208,
EVAL64 ii0'8,iii0'320"4,
STORE xaae13487,iii0'320,iii0'8,
; 			_totalaccts -= 1;
;#{"srcline":383}
NOP
EVAL32 @gii0'48,gii0'48,1,-
; 			a.len = 4;
;#{"srcline":384}
NOP
EVAL64 ii0'320,0,@ii0'208,+
EVAL32 iii0'320,4,
; 			a.data = (char*) &_totalaccts;
;#{"srcline":385}
NOP
EVAL64 0,@ii0'208,4,++@gii0'48,
; 			write(abi("_totalaccts"), &a);
;#{"srcline":386}
NOP
EVAL64 ii0'320,@@ii0'208,
EVAL64 ii0'8,iii0'320"4,
STORE xfebda3af,iii0'320,iii0'8,
; 			return 1;
;#{"srcline":387}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684162,
EVAL8 ii8,1,
define __label1614684162 .
RETURN
define __label1614684159 .
; 		i += 1;
;#{"srcline":389}
NOP
EVAL32 @ii0'232,ii0'232,1,+
; 		i += 1; p += 1;
;#{"srcline":389}
NOP
EVAL64 @ii0'224,ii0'224,1,4,*+
IF 1,.__label1614684156,
define __label1614684157 .
; 	return 1;
;#{"srcline":391}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684163,
EVAL8 ii8,1,
define __label1614684163 .
RETURN
define closeRETURN .
RETURN
;#{"endcode":""}
define makeoutput .
;#{"code":"makeoutput","types":{},"vars":[{"i":{"loc":"ii0'40","size":4,"type":"int"}},{"buf":{"loc":"@ii0'48","size":48,"type":"[48]char"}},{"op":{"loc":"ii0'96","size":4,"type":"int"}}]}
ALLOC 0,120,
; Assign ii0'40 to var i
; Assign @ii0'48 to var buf
; Assign ii0'96 to var op
; 	i = 0;
;#{"srcline":398}
NOP
EVAL32 @ii0'40,0,
; 	}
;#{"srcline":399}
NOP
define __label1614684164 .
EVAL32 ii0'8,ii0'40,48,<
IF ii0'8,2,
IF 1,.__label1614684165,
; 		buf[i] = 0;
;#{"srcline":400}
NOP
EVAL64 ii0'104,0,@ii0'48,+Dii0'40,+
EVAL8 iii0'104,0,
; 		i = i + 1;
;#{"srcline":401}
NOP
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614684164,
define __label1614684165 .
; 	memcopy(buf + 8, (char*) &amount, 8);
;#{"srcline":403}
NOP
EVAL64 ii0'104,@ii0'48,8,+
EVAL64 ii0'112,@i16,
COPY iii0'104,iii0'112,8,
; 	memcopy(buf + 16, &ln, 4);
;#{"srcline":404}
NOP
EVAL64 ii0'104,@ii0'48,16,+
EVAL64 ii0'112,@i24,
COPY iii0'104,iii0'112,4,
; 	memcopy(buf + 20, script, ln);
;#{"srcline":405}
NOP
EVAL64 ii0'104,@ii0'48,20,+
COPY iii0'104,ii32,i24,
; 	addTxout(&op, buf);
;#{"srcline":406}
NOP
EVAL64 ii0'104,@ii0'96,
ADDTXOUT iii0'104,@ii0'48,

; 	getOutpoint
;#{"srcline":408}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684166,
IF 1,.__label1614684167,
define __label1614684166 .
; 	if (ret == nil) return;
;#{"srcline":408}
NOP
RETURN
define __label1614684167 .
; 	getOutpoint(ret);
;#{"srcline":410}
NOP
RECEIVED ii8,
; 	ret->index = op;
;#{"srcline":411}
NOP
EVAL64 ii0'104,0,i8,32,++
EVAL32 iii0'104,ii0'96,
define makeoutputRETURN .
RETURN
;#{"endcode":""}
define saveacct .
;#{"code":"saveacct","types":{},"vars":[{"ntakersabi":{"loc":"ii0'40","size":8,"type":"long"}},{"a":{"loc":"@ii0'48","size":12,"type":"__storedata__"}}]}
ALLOC 0,76,
; Assign ii0'40 to var ntakersabi
; Assign @ii0'48 to var a
; 	a.len = sizeof(struct account);
;#{"srcline":422}
NOP
EVAL64 ii0'64,0,@ii0'48,+
EVAL32 iii0'64,88,
; 	a.data = (char*) acct;
;#{"srcline":423}
NOP
EVAL64 0,@ii0'48,4,++i8,
; 	ntakersabi = (1 << 32) | (long) acct->_paypoint;
;#{"srcline":425}
NOP
EVAL64 ii0'68,0,i8,+
EVAL32 ii0'64,iii0'68,
EVAL64 @ii0'40,0,1,32,[+Dii0'64,|
; 	write(ntakersabi, &a);
;#{"srcline":426}
NOP
EVAL64 ii0'64,@@ii0'48,
EVAL64 ii0'8,iii0'64"4,
STORE ii0'40,iii0'64,iii0'8,
define saveacctRETURN .
RETURN
;#{"endcode":""}
define delacct .
;#{"code":"delacct","types":{},"vars":[{"ntakersabi":{"loc":"ii0'40","size":8,"type":"long"}}]}
ALLOC 0,48,
; Assign ii0'40 to var ntakersabi
; 	ntakersabi = (1 << 32) | (long) paypoint;
;#{"srcline":432}
NOP
EVAL64 @ii0'40,0,1,32,[+Di8,|
; 	delete(ntakersabi);
;#{"srcline":433}
NOP
DEL Qii0'40,
define delacctRETURN .
RETURN
;#{"endcode":""}
define saveclaim .
;#{"code":"saveclaim","types":{},"vars":[{"claimabi":{"loc":"ii0'40","size":8,"type":"long"}},{"a":{"loc":"@ii0'48","size":12,"type":"__storedata__"}}]}
ALLOC 0,72,
; Assign ii0'40 to var claimabi
; Assign @ii0'48 to var a
; 	a.len = sizeof(struct xclaim);
;#{"srcline":440}
NOP
EVAL64 ii0'64,0,@ii0'48,+
EVAL32 iii0'64,74,
; 	a.data = (char*) x;
;#{"srcline":441}
NOP
EVAL64 0,@ii0'48,4,++i8,
; 	claimabi = (((long) paypoint) << 32) | (long) d;
;#{"srcline":443}
NOP
EVAL64 @ii0'40,0,0,Di16,+32,[+Di24,|
; 	write(claimabi, &a);
;#{"srcline":445}
NOP
EVAL64 ii0'64,@@ii0'48,
EVAL64 ii0'8,iii0'64"4,
STORE ii0'40,iii0'64,iii0'8,
define saveclaimRETURN .
RETURN
;#{"endcode":""}
define delclaim .
;#{"code":"delclaim","types":{},"vars":[{"claimabi":{"loc":"ii0'40","size":8,"type":"long"}},{"qhi":{"loc":"ii0'48","size":8,"type":"long"}}]}
ALLOC 0,56,
; Assign ii0'40 to var claimabi
; Assign ii0'48 to var qhi
; 	qhi = *(long*) x->_claim.hash | (1 << 63);
;#{"srcline":451}
NOP
EVAL64 @ii0'48,0,0,i8,++P0,1,63,[+|
; 	delete(qhi);
;#{"srcline":452}
NOP
DEL Qii0'48,
; 	claimabi = (((long) paypoint) << 32) | (long) d;
;#{"srcline":454}
NOP
EVAL64 @ii0'40,0,0,Di16,+32,[+Di24,|
; 	delete(claimabi);
;#{"srcline":455}
NOP
DEL Qii0'40,
define delclaimRETURN .
RETURN
;#{"endcode":""}
define getclaim .
;#{"code":"getclaim","types":{},"vars":[{"claimabi":{"loc":"ii0'40","size":8,"type":"long"}},{"claimbuf":{"loc":"@ii0'48","size":128,"type":"[128]char"}}]}
ALLOC 0,208,
; Assign ii0'40 to var claimabi
; Assign @ii0'48 to var claimbuf
; 	claimabi = (((long) paypoint) << 32) | (long) d;
;#{"srcline":462}
NOP
EVAL64 @ii0'40,0,0,Di24,+32,[+Di32,|
; 	read(claimbuf, claimabi);
;#{"srcline":464}
NOP
LOAD @ii0'48,ii0'40,
; 	*
;#{"srcline":465}
NOP
EVAL64 ii0'176,@@ii0'48,
EVAL32 ii0'8,iii0'176,74,!
IF ii0'8,.__label1614684168,
IF 1,.__label1614684169,
define __label1614684168 .
; 		return 0;
;#{"srcline":466}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684170,
EVAL8 ii8,0,
define __label1614684170 .
RETURN
define __label1614684169 .
; 	*x = *(struct xclaim *) (claimbuf + 4);
;#{"srcline":467}
NOP
EVAL64 ii0'184,0,i16,+
EVAL64 ii0'176,ii0'184,
EVAL64 ii0'200,0,@ii0'48,4,++
EVAL64 ii0'192,ii0'200,
COPY iii0'176,iii0'192,74,
; 	return 1;
;#{"srcline":469}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684171,
EVAL8 ii8,1,
define __label1614684171 .
RETURN
define getclaimRETURN .
RETURN
;#{"endcode":""}
define qindex .
;#{"code":"qindex","types":{},"vars":[{"d":{"loc":"ii0'40","size":4,"type":"int"}}]}
ALLOC 0,56,
; Assign ii0'40 to var d
; 	d = getqindex(hash);
;#{"srcline":475}
NOP
CALL 0,.getqindex,@ii0'48,i16,
EVAL32 @ii0'40,ii0'48,
; 	output(4, (char*) &d);
;#{"srcline":477}
NOP
EVAL64 ii0'48,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'48,4,
EVAL32 gi0,4,
STOP
; 	return d;
;#{"srcline":479}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684172,
EVAL32 ii8,ii0'40,
define __label1614684172 .
RETURN
define qindexRETURN .
RETURN
;#{"endcode":""}
define getqindex .
;#{"code":"getqindex","types":{},"vars":[{"qhi":{"loc":"ii0'40","size":8,"type":"long"}},{"buf":{"loc":"@ii0'48","size":128,"type":"[128]char"}},{"d":{"loc":"ii0'176","size":4,"type":"int"}}]}
ALLOC 0,192,
; Assign ii0'40 to var qhi
; Assign @ii0'48 to var buf
; Assign ii0'176 to var d
; 	qhi = *(long*) hash | (1 << 63);
;#{"srcline":487}
NOP
EVAL64 @ii0'40,0,i16,+P0,1,63,[+|
; 	read(buf, qhi);
;#{"srcline":488}
NOP
LOAD @ii0'48,ii0'40,
; 	d
;#{"srcline":489}
NOP
EVAL64 ii0'184,@@ii0'48,
EVAL32 ii0'8,iii0'184,4,!
IF ii0'8,.__label1614684173,
IF 1,.__label1614684174,
define __label1614684173 .
; 	if (*(int*)buf != 4) return -1;
;#{"srcline":489}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684175,
EVAL32 ii8,0,1,-
define __label1614684175 .
RETURN
define __label1614684174 .
; 	d = *(int*)(buf + 4);
;#{"srcline":491}
NOP
EVAL64 ii0'184,0,@ii0'48,4,++
EVAL32 @ii0'176,iii0'184,
; 	return d;
;#{"srcline":493}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684176,
EVAL32 ii8,ii0'176,
define __label1614684176 .
RETURN
define getqindexRETURN .
RETURN
;#{"endcode":""}
define hasheq .
;#{"code":"hasheq","types":{},"vars":[{"i":{"loc":"ii0'40","size":4,"type":"int"}},{"match":{"loc":"ii0'48","size":1,"type":"char"}}]}
ALLOC 0,72,
; Assign ii0'40 to var i
; Assign ii0'48 to var match
; 	match = 1;
;#{"srcline":500}
NOP
EVAL8 @ii0'48,1,
; 	match = 1; i = 0;
;#{"srcline":500}
NOP
EVAL32 @ii0'40,0,
; 	}
;#{"srcline":501}
NOP
define __label1614684177 .
EVAL32 ii0'8,ii0'40,32,<
IF ii0'8,2,
IF 1,.__label1614684178,
; 		i
;#{"srcline":502}
NOP
EVAL64 ii0'56,0,i16,Dii0'40,1,*++
EVAL64 ii0'64,0,i24,Dii0'40,1,*++
EVAL8 ii0'8,iii0'56,iii0'64,!
IF ii0'8,.__label1614684179,
IF 1,.__label1614684180,
define __label1614684179 .
; 			match = 0;
;#{"srcline":503}
NOP
EVAL8 @ii0'48,0,
; 			break;
;#{"srcline":504}
NOP
IF 1,.__label1614684178,
define __label1614684180 .
; 		i += 1;
;#{"srcline":506}
NOP
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614684177,
define __label1614684178 .
; 	return match;
;#{"srcline":508}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684181,
EVAL8 ii8,ii0'48,
define __label1614684181 .
RETURN
define hasheqRETURN .
RETURN
;#{"endcode":""}
define totalaccts .
;#{"code":"totalaccts","types":{},"vars":[{"buf":{"loc":"@ii0'40","size":128,"type":"[128]char"}},{"d":{"loc":"ii0'168","size":4,"type":"int"}}]}
ALLOC 0,184,
; Assign @ii0'40 to var buf
; Assign ii0'168 to var d
; 	read(buf, abi("_totalaccts"));
;#{"srcline":517}
NOP
LOAD @ii0'40,xfebda3af,
; 	d
;#{"srcline":518}
NOP
EVAL64 ii0'176,@@ii0'40,
EVAL32 ii0'8,iii0'176,4,!
IF ii0'8,.__label1614684182,
IF 1,.__label1614684183,
define __label1614684182 .
; 	if (*(int*)buf != 4) return -1;
;#{"srcline":518}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684184,
EVAL32 ii8,0,1,-
define __label1614684184 .
RETURN
define __label1614684183 .
; 	d = *(int*)(buf + 4);
;#{"srcline":520}
NOP
EVAL64 ii0'176,0,@ii0'40,4,++
EVAL32 @ii0'168,iii0'176,
; 	output(4, buf + 4);
;#{"srcline":522}
NOP
EVAL64 ii0'176,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'176,4,
EVAL32 gi0,4,
STOP
; 	return d;
;#{"srcline":524}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614684185,
EVAL32 ii8,ii0'168,
define __label1614684185 .
RETURN
define totalacctsRETURN .
RETURN
;#{"endcode":""}
define acctlist .
;#{"code":"acctlist","types":{},"vars":[{"buf":{"loc":"@ii0'40","size":128,"type":"[128]char"}}]}
ALLOC 0,192,
; Assign @ii0'40 to var buf
; 	read(buf, abi("_allaccts"));
;#{"srcline":530}
NOP
LOAD @ii0'40,xaae13487,
; 	output
;#{"srcline":531}
NOP
EVAL64 ii0'168,@@ii0'40,
EVAL32 ii0'8,iii0'168,4,<
IF ii0'8,.__label1614684186,
IF 1,.__label1614684187,
define __label1614684186 .
; 	if (*(int*)buf < 4) return -1;
;#{"srcline":531}
NOP
RETURN
define __label1614684187 .
; 	output(*(int*)buf, buf + 4);
;#{"srcline":533}
NOP
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
;#{"endcode":""}
define account .
;#{"code":"account","types":{},"vars":[{"acct":{"loc":"@ii0'40","size":88,"type":"account"}}]}
ALLOC 0,137,
; Assign @ii0'40 to var acct
; 	getaccount(&acct, paypoint);
;#{"srcline":539}
NOP
EVAL64 ii0'129,@@ii0'40,
CALL 0,.getaccount,@ii0'128,Qii0'129,i8,

; 	output(sizeof(struct account), (char*) &acct);
;#{"srcline":541}
NOP
EVAL64 ii0'128,@@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'128,88,
EVAL32 gi0,88,
STOP
define accountRETURN .
RETURN
;#{"endcode":""}
define claims .
;#{"code":"claims","types":{},"vars":[{"x":{"loc":"@ii0'40","size":74,"type":"xclaim"}}]}
ALLOC 0,129,
; Assign @ii0'40 to var x
; 	}
;#{"srcline":547}
NOP
EVAL64 ii0'121,@@ii0'40,
CALL 0,.getclaim,@ii0'120,Qii0'121,i8,i16,
EVAL8 ii0'8,ii0'120,
IF ii0'8,.__label1614684188,
; 		output(0, (char*) &x);
;#{"srcline":550}
NOP
EVAL64 ii0'120,@@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'120,0,
EVAL32 gi0,0,
STOP
IF 1,.__label1614684189,
define __label1614684188 .
; 		output(sizeof(struct xclaim), (char*) &x);
;#{"srcline":548}
NOP
EVAL64 ii0'120,@@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'120,74,
EVAL32 gi0,74,
STOP
define __label1614684189 .
define claimsRETURN .
RETURN
;#{"endcode":""}
;#{"endcode":""}
