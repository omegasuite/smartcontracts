; Assign @gii0'40 to var _propostion
; Assign gii0'64 to var _startblk
; Assign gii0'72 to var _votecount
; Assign gii0'80 to var _sequence
; Assign @gii0'88 to var _handler
;#{"code":"","types":{"__outpoint__":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]uchar"},"index":{"loc":"32","size":4,"type":"int"}},"__numcoin__":{"__TYPE__":"struct","value":{"loc":"0","size":8,"type":"long"}},"__numcoinr__":{"__TYPE__":"struct","value":{"loc":"0","size":8,"type":"long"},"right":{"loc":"8","size":32,"type":"[32]uchar"}},"__hashcoin__":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]uchar"}},"__hashcoinr__":{"__TYPE__":"struct","hash":{"loc":"0","size":32,"type":"[32]uchar"},"right":{"loc":"32","size":32,"type":"[32]uchar"}},"__coin__":{"__TYPE__":"struct","tokentype":{"loc":"0","size":8,"type":"long"},"data":{"loc":"8","size":64,"type":"union{}"}},"__storedata__":{"__TYPE__":"struct","len":{"loc":"0","size":4,"type":"int"},"data":{"loc":"4","size":8,"type":"*char"}},"__VertexDef__":{"__TYPE__":"struct","lat":{"loc":"0","size":4,"type":"int"},"lng":{"loc":"4","size":4,"type":"int"},"alt":{"loc":"8","size":4,"type":"int"}},"__BorderDef__":{"__TYPE__":"struct","father":{"loc":"0","size":32,"type":"[32]uchar"},"begin":{"loc":"32","size":12,"type":"__VertexDef__"},"end":{"loc":"44","size":12,"type":"__VertexDef__"}},"__LoopDef__":{"__TYPE__":"struct","nborders":{"loc":"0","size":4,"type":"int"},"data":{"loc":"4","size":8,"type":"*[32]uchar"}},"__PolygonDef__":{"__TYPE__":"struct","nloops":{"loc":"0","size":4,"type":"int"},"loops":{"loc":"4","size":8,"type":"*__LoopDef__"}},"__RightDef__":{"__TYPE__":"struct","father":{"loc":"0","size":32,"type":"[32]uchar"},"len":{"loc":"32","size":4,"type":"int"},"desc":{"loc":"36","size":8,"type":"*uchar"},"attrib":{"loc":"44","size":1,"type":"uchar"}},"__RightSetDef__":{"__TYPE__":"struct","nhash":{"loc":"0","size":4,"type":"uint"},"hashes":{"loc":"4","size":8,"type":"*[32]uchar"}},"__definition__":{"__TYPE__":"struct","type":{"loc":"0","size":1,"type":"uchar"},"data":{"loc":"1","size":56,"type":"union{}"}},"__minttype__":{"__TYPE__":"struct","tokentype":{"loc":"0","size":8,"type":"long"},"minted":{"loc":"8","size":36,"type":"__outpoint__"}},"vote":{"__TYPE__":"struct","coin":{"loc":"0","size":36,"type":"__outpoint__"},"yesno":{"loc":"36","size":1,"type":"char"}}},"vars":[{"_propostion":{"loc":"@gii0'40","size":20,"type":"[20]char"}},{"_startblk":{"loc":"gii0'64","size":4,"type":"int"}},{"_votecount":{"loc":"gii0'72","size":4,"type":"int"}},{"_sequence":{"loc":"gii0'80","size":4,"type":"int"}},{"_handler":{"loc":"@gii0'88","size":20,"type":"[20]char"}}]}
;#{"code":"constructor","types":{},"vars":[{"buf":{"loc":"@gii0'152","size":12,"type":"__storedata__"}}]}
MALLOC 0,176,
; Assign @gii0'152 to var buf
; 	_startblk = 0;
;#{"srcline":394}
EVAL32 @gii0'64,0,
; 	_sequence = 0;
;#{"srcline":395}
EVAL32 @gii0'80,0,
; 	buf.len = 4;
;#{"srcline":397}
EVAL64 ii0'168,0,@gii0'152,+
EVAL32 iii0'168,4,
; 	buf.data = (char *) &_startblk;
;#{"srcline":398}
EVAL64 0,@gii0'152,4,++@gii0'64,
; 	write(abi("_startblk"), &buf);
;#{"srcline":399}
EVAL64 ii0'168,@@gii0'152,
EVAL64 ii0'8,iii0'168"4,
STORE xab0256ab,iii0'168,iii0'8,
; 	buf.data = (char*) &_sequence;
;#{"srcline":401}
EVAL64 0,@gii0'152,4,++@gii0'80,
; 	write(abi("_sequence"), &buf);
;#{"srcline":402}
EVAL64 ii0'168,@@gii0'152,
EVAL64 ii0'8,iii0'168"4,
STORE x17a30677,iii0'168,iii0'8,
define mainRETURN .
EVAL32 gi0,4,
EVAL32 gi4,BODY,
STOP
;#{"endcode":""}
define BODY .
MALLOC 0,112,
EVAL32 gii0'8,x1e731cfa,gi8,!
IF gii0'8,4,
CALL 0,.sequence,gi12,
RETURN
STOP
EVAL32 gii0'8,x7ebea5df,gi8,!
IF gii0'8,4,
CALL 0,.votes,gi12,
RETURN
STOP
EVAL32 gii0'8,xf8b2eb3b,gi8,!
IF gii0'8,4,
CALL 0,.started,gi12,
RETURN
STOP
EVAL32 gii0'8,x3197e3ab,gi8,!
IF gii0'8,4,
CALL 0,.propostion,gi12,
RETURN
STOP
EVAL32 gii0'8,xe09a6a09,gi8,!
IF gii0'8,4,
CALL 0,.getvote,gi12,gi20,
RETURN
STOP
EVAL32 gii0'8,xd20d49c9,gi8,!
IF gii0'8,4,
CALL 0,.queryvote,gi12,gi20,
RETURN
STOP
EVAL32 gii0'8,x7af94998,gi8,!
IF gii0'8,4,
CALL 0,.passed,gi12,
RETURN
STOP
EVAL32 gii0'8,x32a53ae5,gi8,!
IF gii0'8,4,
CALL 0,.makevote,gi12,gi20,gi28,
RETURN
STOP
EVAL32 gii0'8,x622d0db7,gi8,!
IF gii0'8,4,
CALL 0,.propose,gi12,
RETURN
STOP
EVAL32 gii0'8,x1a14371f,gi8,!
IF gii0'8,4,
CALL 0,.finalizevote,
RETURN
STOP
;#{"code":"_","types":{},"vars":[{"h":{"loc":"ii0'152","size":8,"type":"*char"}},{"buf":{"loc":"@ii0'160","size":48,"type":"[48]char"}}]}
ALLOC 0,208,
; Assign ii0'152 to var h
; Assign @ii0'160 to var buf
; 	read(buf, abi("_handler"));
;#{"srcline":530}
LOAD @ii0'160,xf9044c2d,
; 	h = buf + 4;
;#{"srcline":531}
EVAL64 @ii0'152,@ii0'160,4,+
; 	@@
;#{"srcline":534}

		LIBLOAD x20,i\h,
	; 	exit();
;#{"srcline":535}
STOP

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
IF ii0'8,.__label1614812402,
IF 1,.__label1614812403,
define __label1614812402 .
; 	if (r == nil) return;
RETURN
define __label1614812403 .
; 	n = 0;
EVAL32 @ii0'40,0,
; 	p = a;
EVAL64 @ii0'48,i16,
; 	}
define __label1614812404 .
EVAL8 ii0'8,iii0'48,0,!
IF ii0'8,2,
IF 1,.__label1614812405,
; 		p += 1;
EVAL64 @ii0'48,ii0'48,1,1,*+
; 		n += 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614812404,
define __label1614812405 .
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
IF ii0'8,.__label1614812406,
; 	}
EVAL64 ii0'8,ii0'40,2,=
IF ii0'8,.__label1614812408,
; 		@@

			MINT ii8,ii16,ii16"8,ii16"40,
		IF 1,.__label1614812409,
define __label1614812408 .
; 		@@

			MINT ii8,ii16,ii16"8,ii16"16,
		define __label1614812409 .
IF 1,.__label1614812407,
define __label1614812406 .
; 		@@

			MINT ii8,ii16,ii16"8,
		define __label1614812407 .
define mintRETURN .
RETURN
;#{"endcode":""}
define sequence .
;#{"code":"sequence","types":{},"vars":[{"text":{"loc":"@ii0'40","size":56,"type":"[56]char"}}]}
ALLOC 0,104,
; Assign @ii0'40 to var text
; 	read(text, abi("_sequence"));
;#{"srcline":27}
LOAD @ii0'40,x17a30677,
; 	_sequence = *(int*) (text + 4);
;#{"srcline":28}
EVAL64 ii0'96,0,@ii0'40,4,++
EVAL32 @gii0'80,iii0'96,
; 	output(4, text + 4);
;#{"srcline":29}
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,4,
EVAL32 gi0,4,
STOP
; 	return _sequence;
;#{"srcline":30}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812410,
EVAL32 ii8,gii0'80,
define __label1614812410 .
RETURN
define sequenceRETURN .
RETURN
;#{"endcode":""}
define eqoutpoint .
;#{"code":"eqoutpoint","types":{},"vars":[{"i":{"loc":"ii0'40","size":4,"type":"int"}}]}
ALLOC 0,48,
; Assign ii0'40 to var i
; 	i = 0;
;#{"srcline":36}
EVAL32 @ii0'40,0,
; 	}
;#{"srcline":37}
define __label1614812411 .
EVAL32 ii0'8,ii0'40,36,<
IF ii0'8,2,
IF 1,.__label1614812412,
; 		i
;#{"srcline":38}
EVAL8 ii0'8,ii16,ii24,!
IF ii0'8,.__label1614812413,
IF 1,.__label1614812414,
define __label1614812413 .
; 			return 0;
;#{"srcline":39}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812415,
EVAL8 ii8,0,
define __label1614812415 .
RETURN
define __label1614812414 .
; 		i += 1;
;#{"srcline":40}
EVAL32 @ii0'40,ii0'40,1,+
; 		i += 1; p += 1;
;#{"srcline":40}
EVAL64 @i16,i16,1,1,*+
; 		i += 1; p += 1; q += 1;
;#{"srcline":40}
EVAL64 @i24,i24,1,1,*+
IF 1,.__label1614812411,
define __label1614812412 .
; 	return 1;
;#{"srcline":42}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812416,
EVAL8 ii8,1,
define __label1614812416 .
RETURN
define eqoutpointRETURN .
RETURN
;#{"endcode":""}
define votes .
;#{"code":"votes","types":{},"vars":[{"text":{"loc":"@ii0'40","size":56,"type":"[56]char"}}]}
ALLOC 0,104,
; Assign @ii0'40 to var text
; 	read(text, abi("_votecount"));
;#{"srcline":48}
LOAD @ii0'40,x53c6c547,
; 	_votecount = *(int*) (text + 4);
;#{"srcline":49}
EVAL64 ii0'96,0,@ii0'40,4,++
EVAL32 @gii0'72,iii0'96,
; 	output(4, text + 4);
;#{"srcline":50}
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,4,
EVAL32 gi0,4,
STOP
; 	return _votecount;
;#{"srcline":51}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812417,
EVAL32 ii8,gii0'72,
define __label1614812417 .
RETURN
define votesRETURN .
RETURN
;#{"endcode":""}
define started .
;#{"code":"started","types":{},"vars":[{"text":{"loc":"@ii0'40","size":56,"type":"[56]char"}}]}
ALLOC 0,104,
; Assign @ii0'40 to var text
; 	read(text, abi("_startblk"));
;#{"srcline":57}
LOAD @ii0'40,xab0256ab,
; 	_startblk = *(int*) (text + 4);
;#{"srcline":58}
EVAL64 ii0'96,0,@ii0'40,4,++
EVAL32 @gii0'64,iii0'96,
; 	output(4, text + 4);
;#{"srcline":59}
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,4,
EVAL32 gi0,4,
STOP
; 	return _startblk;
;#{"srcline":60}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812418,
EVAL32 ii8,gii0'64,
define __label1614812418 .
RETURN
define startedRETURN .
RETURN
;#{"endcode":""}
define propostion .
;#{"code":"propostion","types":{},"vars":[{"buf":{"loc":"@ii0'40","size":56,"type":"[56]char"}}]}
ALLOC 0,104,
; Assign @ii0'40 to var buf
; 	_startblk = 0;
;#{"srcline":66}
EVAL32 @gii0'64,0,
; 	read(buf, abi("_startblk"));
;#{"srcline":67}
LOAD @ii0'40,xab0256ab,
; 	if
;#{"srcline":68}
EVAL64 ii0'96,@@ii0'40,
EVAL32 ii0'8,iii0'96,4,=
IF ii0'8,.__label1614812419,
IF 1,.__label1614812420,
define __label1614812419 .
; 		_startblk = *((int*)(buf + 4));
;#{"srcline":69}
EVAL64 ii0'96,0,0,@ii0'40,4,+++
EVAL32 @gii0'64,iii0'96,
define __label1614812420 .
; 	else read(buf, abi("_propostion"));
;#{"srcline":71}
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614812421,
; 	else read(buf, abi("_propostion"));
;#{"srcline":72}
LOAD @ii0'40,x7cea960f,
IF 1,.__label1614812422,
define __label1614812421 .
; 	if (_startblk <= 0) read(buf, abi("_handler"));
;#{"srcline":71}
LOAD @ii0'40,xf9044c2d,
define __label1614812422 .
; 	output(20, buf + 4);
;#{"srcline":74}
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,20,
EVAL32 gi0,20,
STOP
; }
;#{"srcline":75}
EVAL64 ii0'8,i8,0,!
IF ii0'8,.__label1614812423,
IF 1,.__label1614812424,
define __label1614812423 .
; 		memcopy(res, buf + 4, 20);
;#{"srcline":76}
EVAL64 ii0'96,@ii0'40,4,+
COPY ii8,iii0'96,20,
define __label1614812424 .
define propostionRETURN .
RETURN
;#{"endcode":""}
define getvote .
;#{"code":"getvote","types":{},"vars":[{"userabi":{"loc":"ii0'40","size":8,"type":"long"}},{"vote":{"loc":"@ii0'48","size":48,"type":"[48]char"}}]}
ALLOC 0,128,
; Assign ii0'40 to var userabi
; Assign @ii0'48 to var vote
; 	userabi = (abi("_votes") << 32) | (long) n;
;#{"srcline":83}
EVAL64 @ii0'40,0,xaf389dda,32,[+Di16,|
; 	read(vote, userabi);
;#{"srcline":84}
LOAD @ii0'48,ii0'40,
; 	output
;#{"srcline":86}
EVAL64 ii0'8,i8,0,!
IF ii0'8,.__label1614812425,
IF 1,.__label1614812426,
define __label1614812425 .
; 	if (v != nil) *v = *(struct vote *)(vote + 4);
;#{"srcline":86}
EVAL64 ii0'104,0,i8,+
EVAL64 ii0'96,ii0'104,
EVAL64 ii0'120,0,@ii0'48,4,++
EVAL64 ii0'112,ii0'120,
COPY iii0'96,iii0'112,37,
define __label1614812426 .
; 	output(37, vote + 4);
;#{"srcline":88}
EVAL64 ii0'96,@ii0'48,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,37,
EVAL32 gi0,37,
STOP
define getvoteRETURN .
RETURN
;#{"endcode":""}
define queryvote .
;#{"code":"queryvote","types":{},"vars":[{"userabi":{"loc":"ii0'40","size":8,"type":"long"}},{"vote":{"loc":"@ii0'48","size":48,"type":"[48]char"}},{"vresult":{"loc":"ii0'96","size":1,"type":"char"}},{"buf":{"loc":"@ii0'104","size":48,"type":"[48]char"}},{"i":{"loc":"ii0'152","size":4,"type":"int"}},{"qih":{"loc":"ii0'160","size":4,"type":"int"}}]}
ALLOC 0,313,
; Assign ii0'40 to var userabi
; Assign @ii0'48 to var vote
; Assign ii0'96 to var vresult
; Assign @ii0'104 to var buf
; Assign ii0'152 to var i
; Assign ii0'160 to var qih
; Assign @ii0'168 to var vote
; Assign ii0'216 to var i
; Assign ii0'224 to var j
; Assign ii0'232 to var p
; Assign ii0'240 to var userabi
; Assign @ii0'248 to var vote
; 	vresult = 0;
;#{"srcline":100}
EVAL8 @ii0'96,0,
; 	qih = *(int*)(utxo + 32 - 3);
;#{"srcline":103}
EVAL64 ii0'296,0,i16,32,13,*+3,13,*-+
EVAL32 @ii0'160,iii0'296,
; 	read
;#{"srcline":104}
EVAL32 ii0'8,ii0'160,xaf389dda,!ii0'160,0,!&
IF ii0'8,.__label1614812427,
IF 1,.__label1614812428,
define __label1614812427 .
; 		read(buf, *(long*)(utxo + 32 - 7));
;#{"srcline":110}
EVAL64 ii0'296,0,0,i16,32,13,*+7,13,*-++P
LOAD @ii0'104,ii0'296,
; 		userabi
;#{"srcline":111}
EVAL64 ii0'296,@@ii0'104,
EVAL32 ii0'8,iii0'296,4,!
IF ii0'8,.__label1614812429,
IF 1,.__label1614812430,
define __label1614812429 .
; 			vresult = 0xff;
;#{"srcline":113}
EVAL8 @ii0'96,xff,
; 			output(1, &vresult);
;#{"srcline":114}
EVAL64 ii0'296,@ii0'96,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 			return 0xff;
;#{"srcline":115}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812431,
EVAL8 ii8,xff,
define __label1614812431 .
RETURN
define __label1614812430 .
; 		userabi = (abi("_votes") << 32) | (ulong) (*(uint*)(buf + 4));
;#{"srcline":119}
EVAL64 ii0'300,0,@ii0'104,4,++
EVAL32 ii0'296,0,iii0'300,+
EVAL64 @ii0'40,0,xaf389dda,32,[+Dii0'296,|
; 		read(vote, userabi);
;#{"srcline":120}
LOAD @ii0'168,ii0'40,
; 	}
;#{"srcline":122}
EVAL64 ii0'297,i16,
EVAL64 ii0'305,@ii0'168,4,+
CALL 0,.eqoutpoint,@ii0'296,Qii0'297,Qii0'305,
EVAL8 ii0'8,ii0'296,
IF ii0'8,.__label1614812432,
IF 1,.__label1614812433,
define __label1614812432 .
; 			output(1, vote + 40);
;#{"srcline":124}
EVAL64 ii0'296,@ii0'168,40,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 			return *(vote + 40);
;#{"srcline":125}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812434,
EVAL64 ii0'296,0,@ii0'168,40,++
EVAL8 ii8,iii0'296,
define __label1614812434 .
RETURN
define __label1614812433 .
define __label1614812428 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":130}
EVAL64 ii0'296,@@ii0'104,
LOAD iii0'296,x53c6c547,
; 	_votecount
;#{"srcline":131}
EVAL64 ii0'296,@@ii0'104,
EVAL32 ii0'8,iii0'296,4,!
IF ii0'8,.__label1614812435,
IF 1,.__label1614812436,
define __label1614812435 .
; 	if (*(int*)buf != 4) fail();
;#{"srcline":131}
REVERT
define __label1614812436 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":132}
EVAL64 ii0'296,0,0,@ii0'104,4,+++
EVAL32 @gii0'72,iii0'296,
; 	i = 0;
;#{"srcline":134}
EVAL32 @ii0'152,0,
; 	}
;#{"srcline":135}
define __label1614812437 .
EVAL32 ii0'8,ii0'152,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614812438,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":139}
EVAL64 @ii0'240,0,xaf389dda,32,[+Dii0'152,|
; 		read(vote, userabi);
;#{"srcline":140}
LOAD @ii0'248,ii0'240,
; 		i
;#{"srcline":142}
EVAL64 ii0'297,i16,
EVAL64 ii0'305,@ii0'248,4,+
CALL 0,.eqoutpoint,@ii0'296,Qii0'297,Qii0'305,
EVAL8 ii0'8,ii0'296,
IF ii0'8,.__label1614812439,
IF 1,.__label1614812440,
define __label1614812439 .
; 			output(1, vote + 40);
;#{"srcline":143}
EVAL64 ii0'296,@ii0'248,40,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 			return *(vote + 40);
;#{"srcline":144}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812441,
EVAL64 ii0'296,0,@ii0'248,40,++
EVAL8 ii8,iii0'296,
define __label1614812441 .
RETURN
define __label1614812440 .
; 		i += 1;
;#{"srcline":147}
EVAL32 @ii0'152,ii0'152,1,+
IF 1,.__label1614812437,
define __label1614812438 .
; 	vresult = 0xff;
;#{"srcline":150}
EVAL8 @ii0'96,xff,
; 	output(1, &vresult);
;#{"srcline":151}
EVAL64 ii0'296,@ii0'96,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 	return 0xff;
;#{"srcline":152}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812442,
EVAL8 ii8,xff,
define __label1614812442 .
RETURN
define queryvoteRETURN .
RETURN
;#{"endcode":""}
define passed .
;#{"code":"passed","types":{},"vars":[{"result":{"loc":"ii0'40","size":1,"type":"char"}},{"i":{"loc":"ii0'48","size":4,"type":"int"}},{"height":{"loc":"ii0'56","size":4,"type":"int"}},{"buf":{"loc":"@ii0'64","size":48,"type":"[48]char"}},{"yes":{"loc":"ii0'112","size":8,"type":"long"}},{"coincount":{"loc":"ii0'120","size":8,"type":"long"}}]}
ALLOC 0,328,
; Assign ii0'40 to var result
; Assign ii0'48 to var i
; Assign ii0'56 to var height
; Assign @ii0'64 to var buf
; Assign ii0'112 to var yes
; Assign ii0'120 to var coincount
; Assign ii0'128 to var userabi
; Assign ii0'136 to var v
; Assign @ii0'144 to var vote
; Assign @ii0'192 to var utxo
; 	read(buf, abi("_startblk"));
;#{"srcline":163}
LOAD @ii0'64,xab0256ab,
; 	result = 0;
;#{"srcline":164}
EVAL8 @ii0'40,0,
; 	_startblk
;#{"srcline":166}
EVAL64 ii0'320,@@ii0'64,
EVAL32 ii0'8,iii0'320,4,!
IF ii0'8,.__label1614812443,
IF 1,.__label1614812444,
define __label1614812443 .
; 		output(1, &result);
;#{"srcline":167}
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":168}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812445,
EVAL8 ii8,0,
define __label1614812445 .
RETURN
define __label1614812444 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":171}
EVAL64 ii0'320,0,0,@ii0'64,4,+++
EVAL32 @gii0'64,iii0'320,
; 	getBlockHeight
;#{"srcline":172}
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614812446,
IF 1,.__label1614812447,
define __label1614812446 .
; 		output(1, &result);
;#{"srcline":173}
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":174}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812448,
EVAL8 ii8,0,
define __label1614812448 .
RETURN
define __label1614812447 .
; 	getBlockHeight(&height);
;#{"srcline":177}
EVAL64 ii0'320,@ii0'56,
HEIGHT iii0'320,
; 	read
;#{"srcline":180}
EVAL32 ii0'8,ii0'56,gii0'64,403200,+<
IF ii0'8,.__label1614812449,
IF 1,.__label1614812450,
define __label1614812449 .
; 		output(1, &result);
;#{"srcline":181}
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":182}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812451,
EVAL8 ii8,0,
define __label1614812451 .
RETURN
define __label1614812450 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":186}
EVAL64 ii0'320,@@ii0'64,
LOAD iii0'320,x53c6c547,
; 	_votecount
;#{"srcline":188}
EVAL64 ii0'320,@@ii0'64,
EVAL32 ii0'8,iii0'320,4,!
IF ii0'8,.__label1614812452,
IF 1,.__label1614812453,
define __label1614812452 .
; 		output(1, &result);
;#{"srcline":189}
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":190}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812454,
EVAL8 ii8,0,
define __label1614812454 .
RETURN
define __label1614812453 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":192}
EVAL64 ii0'320,0,0,@ii0'64,4,+++
EVAL32 @gii0'72,iii0'320,
; 	i
;#{"srcline":194}
EVAL32 ii0'8,gii0'72,100,<
IF ii0'8,.__label1614812455,
IF 1,.__label1614812456,
define __label1614812455 .
; 		output(1, &result);
;#{"srcline":196}
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":197}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812457,
EVAL8 ii8,0,
define __label1614812457 .
RETURN
define __label1614812456 .
; 	i = 0;
;#{"srcline":200}
EVAL32 @ii0'48,0,
; 	i = 0; yes = 0;
;#{"srcline":200}
EVAL64 @ii0'112,0,
; 	i = 0; yes = 0; coincount = 0;
;#{"srcline":200}
EVAL64 @ii0'120,0,
; 	}
;#{"srcline":201}
define __label1614812458 .
EVAL32 ii0'8,ii0'48,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614812459,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":206}
EVAL64 @ii0'128,0,xaf389dda,32,[+Dii0'48,|
; 		read(vote, userabi);
;#{"srcline":207}
LOAD @ii0'144,ii0'128,
; 		getUtxo(utxo, vote + 4);
;#{"srcline":209}
EVAL64 ii0'320,@ii0'144,4,+
GETUTXO @ii0'192,iii0'320,ii0'320"32,
; 		v
;#{"srcline":210}
EVAL64 ii0'8,0,0,@ii0'192,+P+0,!
IF ii0'8,.__label1614812460,
IF 1,.__label1614812461,
define __label1614812460 .
; 			i += 1;
;#{"srcline":211}
EVAL32 @ii0'48,ii0'48,1,+
; 			continue;
;#{"srcline":212}
IF 1,.__label1614812458,
define __label1614812461 .
; 		v = *(long*)(utxo + 8);
;#{"srcline":215}
EVAL64 @ii0'136,0,0,@ii0'192,8,+++P
; 		coincount += v;
;#{"srcline":216}
EVAL64 @ii0'120,ii0'120,ii0'136,+
; 		i
;#{"srcline":218}
EVAL64 ii0'320,0,@ii0'144,+40,+
EVAL8 ii0'8,iii0'320,1,=
IF ii0'8,.__label1614812462,
IF 1,.__label1614812463,
define __label1614812462 .
; 		if (vote[40] == 1) yes += v;
;#{"srcline":218}
EVAL64 @ii0'112,ii0'112,ii0'136,+
define __label1614812463 .
; 		i += 1;
;#{"srcline":220}
EVAL32 @ii0'48,ii0'48,1,+
IF 1,.__label1614812458,
define __label1614812459 .
; 	output
;#{"srcline":223}
EVAL64 ii0'8,ii0'112,100,*ii0'120,95,*)
IF ii0'8,.__label1614812464,
IF 1,.__label1614812465,
define __label1614812464 .
; 	if (yes * 100 >= coincount * 95) result = 1;
;#{"srcline":223}
EVAL8 @ii0'40,1,
define __label1614812465 .
; 	output(1, &result);
;#{"srcline":225}
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 	return result;
;#{"srcline":226}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812466,
EVAL8 ii8,ii0'40,
define __label1614812466 .
RETURN
define passedRETURN .
RETURN
;#{"endcode":""}
define makevote .
;#{"code":"makevote","types":{},"vars":[{"userabi":{"loc":"ii0'40","size":8,"type":"long"}},{"text":{"loc":"@ii0'48","size":56,"type":"[56]char"}},{"buf":{"loc":"@ii0'104","size":48,"type":"[48]char"}},{"hash":{"loc":"@ii0'152","size":32,"type":"[32]char"}},{"vresult":{"loc":"ii0'184","size":1,"type":"char"}},{"a":{"loc":"@ii0'192","size":12,"type":"__storedata__"}},{"qih":{"loc":"ii0'208","size":4,"type":"int"}},{"height":{"loc":"ii0'216","size":4,"type":"int"}}]}
ALLOC 0,425,
; Assign ii0'40 to var userabi
; Assign @ii0'48 to var text
; Assign @ii0'104 to var buf
; Assign @ii0'152 to var hash
; Assign ii0'184 to var vresult
; Assign @ii0'192 to var a
; Assign ii0'208 to var qih
; Assign ii0'216 to var height
; Assign @ii0'224 to var vote
; Assign ii0'272 to var i
; Assign ii0'280 to var j
; Assign ii0'288 to var p
; Assign @ii0'296 to var buf
; Assign ii0'344 to var i
; Assign ii0'352 to var userabi
; Assign @ii0'360 to var vote
; 	votecheck();
;#{"srcline":240}
CALL 0,.votecheck,@ii0'408,

; 	read
;#{"srcline":242}
EVAL64 ii0'408,0,i8,36,++
EVAL64 ii0'416,0,i8,36,++
EVAL8 ii0'8,iii0'408,1,!iii0'416,0,!&
IF ii0'8,.__label1614812467,
IF 1,.__label1614812468,
define __label1614812467 .
; 	if (utxo->yesno != 1 && utxo->yesno != 0) fail();
;#{"srcline":242}
REVERT
define __label1614812468 .
; 	read(buf, abi("_startblk"));
;#{"srcline":244}
LOAD @ii0'104,xab0256ab,
; 	_startblk
;#{"srcline":247}
EVAL64 ii0'408,@@ii0'104,
EVAL32 ii0'8,iii0'408,4,!
IF ii0'8,.__label1614812469,
IF 1,.__label1614812470,
define __label1614812469 .
; 	if (*(int*)buf != 4) fail();
;#{"srcline":247}
REVERT
define __label1614812470 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":248}
EVAL64 ii0'408,0,0,@ii0'104,4,+++
EVAL32 @gii0'64,iii0'408,
; 	getBlockHeight
;#{"srcline":249}
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614812471,
IF 1,.__label1614812472,
define __label1614812471 .
; 	if (_startblk <= 0)	fail();
;#{"srcline":249}
REVERT
define __label1614812472 .
; 	getBlockHeight(&height);
;#{"srcline":251}
EVAL64 ii0'408,@ii0'216,
HEIGHT iii0'408,
; 	getUtxo
;#{"srcline":253}
EVAL32 ii0'8,ii0'216,gii0'64,403200,+>
IF ii0'8,.__label1614812473,
IF 1,.__label1614812474,
define __label1614812473 .
; 		fail();
;#{"srcline":254}
REVERT
define __label1614812474 .
; 	getUtxo(buf, utxo);
;#{"srcline":256}
GETUTXO @ii0'104,ii8,i8"32,
; 	if
;#{"srcline":257}
EVAL64 ii0'8,0,@ii0'104,+P0,!
IF ii0'8,.__label1614812475,
IF 1,.__label1614812476,
define __label1614812475 .
; 		fail();
;#{"srcline":258}
REVERT
define __label1614812476 .
; 	getUtxo
;#{"srcline":260}
EVAL64 ii0'408,0,@ii0'104,16,++
EVAL32 ii0'8,iii0'408,25,>
IF ii0'8,.__label1614812477,
IF 1,.__label1614812478,
define __label1614812477 .
; 		fail();
;#{"srcline":261}
REVERT
define __label1614812478 .
; 	getUtxo(buf, utxo, 1);
;#{"srcline":263}
GETUTXO @ii0'104,ii8,i8"32,1,
; 	read
;#{"srcline":264}
EVAL64 ii0'408,0,@ii0'104,+20,+
EVAL64 ii0'416,0,@ii0'104,+41,+
EVAL8 ii0'8,iii0'408,0,!iii0'416,x41,!|
IF ii0'8,.__label1614812479,
IF 1,.__label1614812480,
define __label1614812479 .
; 		fail();
;#{"srcline":265}
REVERT
define __label1614812480 .
; 	read(text, abi("_sequence"));
;#{"srcline":268}
LOAD @ii0'48,x17a30677,
; 	_sequence = *(int*) (text + 4);
;#{"srcline":269}
EVAL64 ii0'408,0,@ii0'48,4,++
EVAL32 @gii0'80,iii0'408,
; 	memcopy(text + 8, utxo, 36);
;#{"srcline":271}
EVAL64 ii0'408,@ii0'48,8,+
COPY iii0'408,ii8,36,
; 	hash(text + 4, 40, hash);
;#{"srcline":272}
EVAL64 ii0'408,@ii0'48,4,+
HASH @ii0'152,iii0'408,40,
; 	sigverify(&vresult, hash, pubkey, sig);
;#{"srcline":275}
EVAL64 ii0'408,@ii0'184,
SIGCHECK iii0'408,@ii0'152,ii16,ii24,
; 	vresult
;#{"srcline":276}
EVAL8 ii0'8,ii0'184,1,!
IF ii0'8,.__label1614812481,
IF 1,.__label1614812482,
define __label1614812481 .
; 	if (vresult != 1) fail();
;#{"srcline":276}
REVERT
define __label1614812482 .
; 	vresult = 0;
;#{"srcline":281}
EVAL8 @ii0'184,0,
; 	qih = *(int*)((char*)utxo + 32 - 3);
;#{"srcline":282}
EVAL64 ii0'408,0,i8,32,1,*+3,1,*-+
EVAL32 @ii0'208,iii0'408,
; 	read
;#{"srcline":283}
EVAL32 ii0'8,ii0'208,xaf389dda,!ii0'208,0,!&
IF ii0'8,.__label1614812483,
IF 1,.__label1614812484,
define __label1614812483 .
; 		read(text, *(long*)((char*)utxo + 32 - 7));
;#{"srcline":285}
EVAL64 ii0'408,0,0,i8,32,1,*+7,1,*-++P
LOAD @ii0'48,ii0'408,
; 		}
;#{"srcline":286}
EVAL64 ii0'408,@@ii0'48,
EVAL32 ii0'8,iii0'408,4,!
IF ii0'8,.__label1614812485,
; 			userabi = (abi("_votes") << 32) | (ulong) (*(uint*)(text + 4));
;#{"srcline":293}
EVAL64 ii0'412,0,@ii0'48,4,++
EVAL32 ii0'408,0,iii0'412,+
EVAL64 @ii0'40,0,xaf389dda,32,[+Dii0'408,|
; 			read(vote, userabi);
;#{"srcline":294}
LOAD @ii0'224,ii0'40,
; 			vresult
;#{"srcline":296}
EVAL64 ii0'409,i8,
EVAL64 ii0'417,@ii0'224,4,+
CALL 0,.eqoutpoint,@ii0'408,Qii0'409,Qii0'417,
EVAL8 ii0'8,ii0'408,
IF ii0'8,.__label1614812487,
IF 1,.__label1614812488,
define __label1614812487 .
; 				fail();
;#{"srcline":297}
REVERT
define __label1614812488 .
; 			vresult = 0;
;#{"srcline":299}
EVAL8 @ii0'184,0,
IF 1,.__label1614812486,
define __label1614812485 .
; 		if (*(int*)text != 4) vresult = 1;
;#{"srcline":286}
EVAL8 @ii0'184,1,
define __label1614812486 .
define __label1614812484 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":303}
EVAL64 ii0'408,@@ii0'104,
LOAD iii0'408,x53c6c547,
; 	_votecount
;#{"srcline":304}
EVAL64 ii0'408,@@ii0'104,
EVAL32 ii0'8,iii0'408,4,!
IF ii0'8,.__label1614812489,
IF 1,.__label1614812490,
define __label1614812489 .
; 	if (*(int*)buf != 4) fail();
;#{"srcline":304}
REVERT
define __label1614812490 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":305}
EVAL64 ii0'408,0,0,@ii0'104,4,+++
EVAL32 @gii0'72,iii0'408,
; 	userabi
;#{"srcline":307}
EVAL8 ii0'8,ii0'184,0,=
IF ii0'8,.__label1614812491,
IF 1,.__label1614812492,
define __label1614812491 .
; 		i = 0;
;#{"srcline":311}
EVAL32 @ii0'344,0,
; 		}
;#{"srcline":312}
define __label1614812493 .
EVAL32 ii0'8,ii0'344,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614812494,
; 			userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":316}
EVAL64 @ii0'352,0,xaf389dda,32,[+Dii0'344,|
; 			read(vote, userabi);
;#{"srcline":317}
LOAD @ii0'360,ii0'352,
; 			i
;#{"srcline":319}
EVAL64 ii0'409,i8,
EVAL64 ii0'417,@ii0'360,4,+
CALL 0,.eqoutpoint,@ii0'408,Qii0'409,Qii0'417,
EVAL8 ii0'8,ii0'408,
IF ii0'8,.__label1614812495,
IF 1,.__label1614812496,
define __label1614812495 .
; 				fail();
;#{"srcline":320}
REVERT
define __label1614812496 .
; 			i += 1;
;#{"srcline":322}
EVAL32 @ii0'344,ii0'344,1,+
IF 1,.__label1614812493,
define __label1614812494 .
define __label1614812492 .
; 	userabi = (abi("_votes") << 32) | (long) _votecount;
;#{"srcline":328}
EVAL64 @ii0'40,0,xaf389dda,32,[+Dgii0'72,|
; 	a.len = 37;
;#{"srcline":329}
EVAL64 ii0'408,0,@ii0'192,+
EVAL32 iii0'408,37,
; 	a.data = (char*) utxo;
;#{"srcline":330}
EVAL64 0,@ii0'192,4,++i8,
; 	write(userabi, &a);
;#{"srcline":331}
EVAL64 ii0'408,@@ii0'192,
EVAL64 ii0'8,iii0'408"4,
STORE ii0'40,iii0'408,iii0'8,
; 	_votecount
;#{"srcline":333}
EVAL32 ii0'8,ii0'208,xaf389dda,!ii0'208,0,!&
IF ii0'8,.__label1614812497,
IF 1,.__label1614812498,
define __label1614812497 .
; 		a.len = 4;
;#{"srcline":335}
EVAL64 ii0'408,0,@ii0'192,+
EVAL32 iii0'408,4,
; 		a.data = (char*) &_votecount;
;#{"srcline":336}
EVAL64 0,@ii0'192,4,++@gii0'72,
; 		write(*(long*)((char*)utxo + 4 + 32 - 7), &a);
;#{"srcline":337}
EVAL64 ii0'408,0,0,i8,4,1,*+32,1,*+7,1,*-++P
EVAL64 ii0'416,@@ii0'192,
EVAL64 ii0'8,iii0'416"4,
STORE ii0'408,iii0'416,iii0'8,
define __label1614812498 .
; 	_votecount += 1;
;#{"srcline":340}
EVAL32 @gii0'72,gii0'72,1,+
; 	_sequence = _sequence + 1;
;#{"srcline":343}
EVAL32 @gii0'80,gii0'80,1,+
; 	a.len = 4;
;#{"srcline":344}
EVAL64 ii0'408,0,@ii0'192,+
EVAL32 iii0'408,4,
; 	a.data = &_sequence;
;#{"srcline":345}
EVAL64 0,@ii0'192,4,++@gii0'80,
; 	write(abi("_sequence"), &a);
;#{"srcline":346}
EVAL64 ii0'408,@@ii0'192,
EVAL64 ii0'8,iii0'408"4,
STORE x17a30677,iii0'408,iii0'8,
; 	a.data = &_votecount;
;#{"srcline":348}
EVAL64 0,@ii0'192,4,++@gii0'72,
; 	write(abi("_votecount"), &a);
;#{"srcline":349}
EVAL64 ii0'408,@@ii0'192,
EVAL64 ii0'8,iii0'408"4,
STORE x53c6c547,iii0'408,iii0'8,
define makevoteRETURN .
RETURN
;#{"endcode":""}
define propose .
;#{"code":"propose","types":{},"vars":[{"buf":{"loc":"@ii0'40","size":48,"type":"[48]char"}},{"i":{"loc":"ii0'88","size":4,"type":"int"}},{"a":{"loc":"@ii0'96","size":12,"type":"__storedata__"}}]}
ALLOC 0,120,
; Assign @ii0'40 to var buf
; Assign ii0'88 to var i
; Assign @ii0'96 to var a
; 	read(buf, abi("_handler"));
;#{"srcline":358}
LOAD @ii0'40,xf9044c2d,
; 	votecheck
;#{"srcline":359}
EVAL64 ii0'112,@@ii0'40,
EVAL32 ii0'8,iii0'112,20,!
IF ii0'8,.__label1614812499,
IF 1,.__label1614812500,
define __label1614812499 .
; 		a.len = 20;
;#{"srcline":361}
EVAL64 ii0'112,0,@ii0'96,+
EVAL32 iii0'112,20,
; 		a.data = propostion;
;#{"srcline":362}
EVAL64 0,@ii0'96,4,++i8,
; 		write(abi("_handler"), &a);
;#{"srcline":363}
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE xf9044c2d,iii0'112,iii0'8,
; 		libload(propostion);
;#{"srcline":365}
LIBLOAD 0,ii8,

; 		return;
;#{"srcline":366}
RETURN
define __label1614812500 .
; 	votecheck();
;#{"srcline":369}
CALL 0,.votecheck,@ii0'112,

; 	read(buf, abi("_startblk"));
;#{"srcline":371}
LOAD @ii0'40,xab0256ab,
; 	getBlockHeight
;#{"srcline":372}
EVAL64 ii0'112,@@ii0'40,
EVAL32 ii0'8,iii0'112,4,=
IF ii0'8,.__label1614812501,
IF 1,.__label1614812502,
define __label1614812501 .
; 		_startblk = *((int*)(buf + 4));
;#{"srcline":373}
EVAL64 ii0'112,0,0,@ii0'40,4,+++
EVAL32 @gii0'64,iii0'112,
; 	}
;#{"srcline":374}
EVAL32 ii0'8,gii0'64,0,>
IF ii0'8,.__label1614812503,
IF 1,.__label1614812504,
define __label1614812503 .
; 		if (_startblk > 0) fail();
;#{"srcline":374}
REVERT
define __label1614812504 .
define __label1614812502 .
; 	getBlockHeight(&_startblk);
;#{"srcline":377}
EVAL64 ii0'112,@gii0'64,
HEIGHT iii0'112,
; 	a.len = 4;
;#{"srcline":378}
EVAL64 ii0'112,0,@ii0'96,+
EVAL32 iii0'112,4,
; 	a.data = (char*) &_startblk;
;#{"srcline":379}
EVAL64 0,@ii0'96,4,++@gii0'64,
; 	write(abi("_startblk"), &a);
;#{"srcline":380}
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE xab0256ab,iii0'112,iii0'8,
; 	_votecount = 0;
;#{"srcline":382}
EVAL32 @gii0'72,0,
; 	a.data = (char*) &_votecount;
;#{"srcline":383}
EVAL64 0,@ii0'96,4,++@gii0'72,
; 	write(abi("_votecount"), &a);
;#{"srcline":384}
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE x53c6c547,iii0'112,iii0'8,
; 	a.len = 20;
;#{"srcline":386}
EVAL64 ii0'112,0,@ii0'96,+
EVAL32 iii0'112,20,
; 	a.data = propostion;
;#{"srcline":387}
EVAL64 0,@ii0'96,4,++i8,
; 	write(abi("_propostion"), &a);
;#{"srcline":388}
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE x7cea960f,iii0'112,iii0'8,
define proposeRETURN .
RETURN
;#{"endcode":""}
define clearvote .
;#{"code":"clearvote","types":{},"vars":[{"buf":{"loc":"@ii0'40","size":48,"type":"[48]char"}},{"i":{"loc":"ii0'88","size":4,"type":"int"}}]}
ALLOC 0,176,
; Assign @ii0'40 to var buf
; Assign ii0'88 to var i
; Assign ii0'96 to var userabi
; Assign @ii0'104 to var vote
; Assign ii0'152 to var v
; Assign ii0'160 to var qih
; 	read(buf, abi("_startblk"));
;#{"srcline":409}
LOAD @ii0'40,xab0256ab,
; 	_startblk
;#{"srcline":411}
EVAL64 ii0'168,@@ii0'40,
EVAL32 ii0'8,iii0'168,4,!
IF ii0'8,.__label1614812505,
IF 1,.__label1614812506,
define __label1614812505 .
; 	if (*(int*)buf != 4) return;
;#{"srcline":411}
RETURN
define __label1614812506 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":412}
EVAL64 ii0'168,0,0,@ii0'40,4,+++
EVAL32 @gii0'64,iii0'168,
; 	read
;#{"srcline":413}
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614812507,
IF 1,.__label1614812508,
define __label1614812507 .
; 	if (_startblk <= 0)	return;
;#{"srcline":413}
RETURN
define __label1614812508 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":415}
EVAL64 ii0'168,@@ii0'40,
LOAD iii0'168,x53c6c547,
; 	_votecount
;#{"srcline":417}
EVAL64 ii0'168,@@ii0'40,
EVAL32 ii0'8,iii0'168,4,!
IF ii0'8,.__label1614812509,
IF 1,.__label1614812510,
define __label1614812509 .
; 	if (*(int*)buf != 4) return;
;#{"srcline":417}
RETURN
define __label1614812510 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":418}
EVAL64 ii0'168,0,0,@ii0'40,4,+++
EVAL32 @gii0'72,iii0'168,
; 	i = 0;
;#{"srcline":420}
EVAL32 @ii0'88,0,
; 	}
;#{"srcline":421}
define __label1614812511 .
EVAL32 ii0'8,ii0'88,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614812512,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":427}
EVAL64 @ii0'96,0,xaf389dda,32,[+Dii0'88,|
; 		read(vote, userabi);
;#{"srcline":428}
LOAD @ii0'104,ii0'96,
; 		delete(userabi);
;#{"srcline":430}
DEL Qii0'96,
; 		qih = *(int*)(vote + 4 + 32 - 3);
;#{"srcline":434}
EVAL64 ii0'168,0,@ii0'104,4,+32,+3,-+
EVAL32 @ii0'160,iii0'168,
; 		i
;#{"srcline":435}
EVAL32 ii0'8,ii0'160,xaf389dda,!ii0'160,0,!&
IF ii0'8,.__label1614812513,
IF 1,.__label1614812514,
define __label1614812513 .
; 			delete(*(long*)(vote + 4 + 32 - 7));
;#{"srcline":436}
EVAL64 ii0'168,0,0,@ii0'104,4,+32,+7,-++P
DEL Qii0'168,
define __label1614812514 .
; 		i += 1;
;#{"srcline":438}
EVAL32 @ii0'88,ii0'88,1,+
IF 1,.__label1614812511,
define __label1614812512 .
; 	delete(abi("_propostion"));
;#{"srcline":441}
DEL x7cea960f,
; 	delete(abi("_startblk"));
;#{"srcline":442}
DEL xab0256ab,
; 	delete(abi("_votecount"));
;#{"srcline":443}
DEL x53c6c547,
define clearvoteRETURN .
RETURN
;#{"endcode":""}
define finalizevote .
;#{"code":"finalizevote","types":{},"vars":[]}
ALLOC 0,41,
; }
;#{"srcline":447}
CALL 0,.votecheck,@ii0'40,
EVAL8 ii0'8,ii0'40,~1,&
IF ii0'8,.__label1614812515,
IF 1,.__label1614812516,
define __label1614812515 .
; 	if (!votecheck()) fail();
;#{"srcline":447}
REVERT
define __label1614812516 .
define finalizevoteRETURN .
RETURN
;#{"endcode":""}
define votecheck .
;#{"code":"votecheck","types":{},"vars":[{"a":{"loc":"@ii0'40","size":12,"type":"__storedata__"}},{"buf":{"loc":"@ii0'56","size":48,"type":"[48]char"}},{"i":{"loc":"ii0'104","size":4,"type":"int"}},{"yes":{"loc":"ii0'112","size":8,"type":"long"}},{"height":{"loc":"ii0'120","size":4,"type":"int"}},{"coincount":{"loc":"ii0'128","size":8,"type":"long"}}]}
ALLOC 0,336,
; Assign @ii0'40 to var a
; Assign @ii0'56 to var buf
; Assign ii0'104 to var i
; Assign ii0'112 to var yes
; Assign ii0'120 to var height
; Assign ii0'128 to var coincount
; Assign ii0'136 to var userabi
; Assign ii0'144 to var v
; Assign @ii0'152 to var vote
; Assign @ii0'200 to var utxo
; 	read(buf, abi("_startblk"));
;#{"srcline":457}
LOAD @ii0'56,xab0256ab,
; 	_startblk
;#{"srcline":459}
EVAL64 ii0'328,@@ii0'56,
EVAL32 ii0'8,iii0'328,4,!
IF ii0'8,.__label1614812517,
IF 1,.__label1614812518,
define __label1614812517 .
; 	if (*(int*)buf != 4) return 0;
;#{"srcline":459}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812519,
EVAL8 ii8,0,
define __label1614812519 .
RETURN
define __label1614812518 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":460}
EVAL64 ii0'328,0,0,@ii0'56,4,+++
EVAL32 @gii0'64,iii0'328,
; 	getBlockHeight
;#{"srcline":461}
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614812520,
IF 1,.__label1614812521,
define __label1614812520 .
; 	if (_startblk <= 0)	return 0;
;#{"srcline":461}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812522,
EVAL8 ii8,0,
define __label1614812522 .
RETURN
define __label1614812521 .
; 	getBlockHeight(&height);
;#{"srcline":463}
EVAL64 ii0'328,@ii0'120,
HEIGHT iii0'328,
; 	read
;#{"srcline":466}
EVAL32 ii0'8,ii0'120,gii0'64,403200,+<
IF ii0'8,.__label1614812523,
IF 1,.__label1614812524,
define __label1614812523 .
; 		return 0;
;#{"srcline":467}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812525,
EVAL8 ii8,0,
define __label1614812525 .
RETURN
define __label1614812524 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":470}
EVAL64 ii0'328,@@ii0'56,
LOAD iii0'328,x53c6c547,
; 	_votecount
;#{"srcline":472}
EVAL64 ii0'328,@@ii0'56,
EVAL32 ii0'8,iii0'328,4,!
IF ii0'8,.__label1614812526,
IF 1,.__label1614812527,
define __label1614812526 .
; 	if (*(int*)buf != 4) return 0;
;#{"srcline":472}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812528,
EVAL8 ii8,0,
define __label1614812528 .
RETURN
define __label1614812527 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":473}
EVAL64 ii0'328,0,0,@ii0'56,4,+++
EVAL32 @gii0'72,iii0'328,
; 	i
;#{"srcline":475}
EVAL32 ii0'8,gii0'72,100,<
IF ii0'8,.__label1614812529,
IF 1,.__label1614812530,
define __label1614812529 .
; 		clearvote();
;#{"srcline":477}
CALL 0,.clearvote,

; 		return 1;
;#{"srcline":478}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812531,
EVAL8 ii8,1,
define __label1614812531 .
RETURN
define __label1614812530 .
; 	i = 0;
;#{"srcline":481}
EVAL32 @ii0'104,0,
; 	i = 0; yes = 0;
;#{"srcline":481}
EVAL64 @ii0'112,0,
; 	i = 0; yes = 0; coincount = 0;
;#{"srcline":481}
EVAL64 @ii0'128,0,
; 	}
;#{"srcline":482}
define __label1614812532 .
EVAL32 ii0'8,ii0'104,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614812533,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":487}
EVAL64 @ii0'136,0,xaf389dda,32,[+Dii0'104,|
; 		read(vote, userabi);
;#{"srcline":488}
LOAD @ii0'152,ii0'136,
; 		getUtxo(utxo, vote + 4);
;#{"srcline":490}
EVAL64 ii0'328,@ii0'152,4,+
GETUTXO @ii0'200,iii0'328,ii0'328"32,
; 		v
;#{"srcline":491}
EVAL64 ii0'8,0,0,@ii0'200,+P+0,!
IF ii0'8,.__label1614812534,
IF 1,.__label1614812535,
define __label1614812534 .
; 			i += 1;
;#{"srcline":492}
EVAL32 @ii0'104,ii0'104,1,+
; 			continue;
;#{"srcline":493}
IF 1,.__label1614812532,
define __label1614812535 .
; 		v = *(long*)(utxo + 8);
;#{"srcline":496}
EVAL64 @ii0'144,0,0,@ii0'200,8,+++P
; 		coincount += v;
;#{"srcline":497}
EVAL64 @ii0'128,ii0'128,ii0'144,+
; 		i
;#{"srcline":499}
EVAL64 ii0'328,0,@ii0'152,+40,+
EVAL8 ii0'8,iii0'328,1,=
IF ii0'8,.__label1614812536,
IF 1,.__label1614812537,
define __label1614812536 .
; 		if (vote[40] == 1) yes = yes + v;
;#{"srcline":499}
EVAL64 @ii0'112,ii0'112,ii0'144,+
define __label1614812537 .
; 		i += 1;
;#{"srcline":501}
EVAL32 @ii0'104,ii0'104,1,+
IF 1,.__label1614812532,
define __label1614812533 .
; 	clearvote
;#{"srcline":504}
EVAL64 ii0'8,ii0'112,100,*ii0'128,95,*)
IF ii0'8,.__label1614812538,
IF 1,.__label1614812539,
define __label1614812538 .
; 		read(buf, abi("_propostion"));
;#{"srcline":506}
LOAD @ii0'56,x7cea960f,
; 		if
;#{"srcline":508}
EVAL64 ii0'328,@@ii0'56,
EVAL32 ii0'8,iii0'328,20,!
IF ii0'8,.__label1614812540,
IF 1,.__label1614812541,
define __label1614812540 .
; 		if (*(int*)buf != 20) return 0;
;#{"srcline":508}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812542,
EVAL8 ii8,0,
define __label1614812542 .
RETURN
define __label1614812541 .
; 		a
;#{"srcline":511}
EVAL32 ii0'8,ii0'120,gii0'64,403200,+201600,+<
IF ii0'8,.__label1614812543,
IF 1,.__label1614812544,
define __label1614812543 .
; 			return 0;
;#{"srcline":512}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812545,
EVAL8 ii8,0,
define __label1614812545 .
RETURN
define __label1614812544 .
; 		a.len = 20;
;#{"srcline":514}
EVAL64 ii0'328,0,@ii0'40,+
EVAL32 iii0'328,20,
; 		a.data = buf + 4;
;#{"srcline":515}
EVAL64 0,@ii0'40,4,++@ii0'56,4,+
; 		write(abi("_handler"), &a);
;#{"srcline":516}
EVAL64 ii0'328,@@ii0'40,
EVAL64 ii0'8,iii0'328"4,
STORE xf9044c2d,iii0'328,iii0'8,
; 		memcopy(_handler, buf + 4, 20);
;#{"srcline":517}
EVAL64 ii0'328,@ii0'56,4,+
COPY @gii0'88,iii0'328,20,
define __label1614812539 .
; 	clearvote();
;#{"srcline":520}
CALL 0,.clearvote,

; 	return 1;
;#{"srcline":521}
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614812546,
EVAL8 ii8,1,
define __label1614812546 .
RETURN
define votecheckRETURN .
RETURN
;#{"endcode":""}
;#{"endcode":""}
