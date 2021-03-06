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
NOP
EVAL32 @gii0'64,0,
; 	_sequence = 0;
;#{"srcline":395}
NOP
EVAL32 @gii0'80,0,
; 	buf.len = 4;
;#{"srcline":397}
NOP
EVAL64 ii0'168,0,@gii0'152,+
EVAL32 iii0'168,4,
; 	buf.data = (char *) &_startblk;
;#{"srcline":398}
NOP
EVAL64 0,@gii0'152,4,++@gii0'64,
; 	write(abi("_startblk"), &buf);
;#{"srcline":399}
NOP
EVAL64 ii0'168,@@gii0'152,
EVAL64 ii0'8,iii0'168"4,
STORE xab0256ab,iii0'168,iii0'8,
; 	buf.data = (char*) &_sequence;
;#{"srcline":401}
NOP
EVAL64 0,@gii0'152,4,++@gii0'80,
; 	write(abi("_sequence"), &buf);
;#{"srcline":402}
NOP
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
NOP
LOAD @ii0'160,xf9044c2d,
; 	h = buf + 4;
;#{"srcline":531}
NOP
EVAL64 @ii0'152,@ii0'160,4,+
; 	@@
;#{"srcline":534}
NOP

		LIBLOAD x20,i\h,
	; 	exit();
;#{"srcline":535}
NOP
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
IF ii0'8,.__label1614787065,
IF 1,.__label1614787066,
define __label1614787065 .
; 	if (r == nil) return;
RETURN
define __label1614787066 .
; 	n = 0;
EVAL32 @ii0'40,0,
; 	p = a;
EVAL64 @ii0'48,i16,
; 	}
define __label1614787067 .
EVAL8 ii0'8,iii0'48,0,!
IF ii0'8,2,
IF 1,.__label1614787068,
; 		p += 1;
EVAL64 @ii0'48,ii0'48,1,1,*+
; 		n += 1;
EVAL32 @ii0'40,ii0'40,1,+
IF 1,.__label1614787067,
define __label1614787068 .
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
IF ii0'8,.__label1614787069,
; 	}
EVAL64 ii0'8,ii0'40,2,=
IF ii0'8,.__label1614787071,
; 		@@

			MINT ii8,ii16,ii16"8,ii16"40,
		IF 1,.__label1614787072,
define __label1614787071 .
; 		@@

			MINT ii8,ii16,ii16"8,ii16"16,
		define __label1614787072 .
IF 1,.__label1614787070,
define __label1614787069 .
; 		@@

			MINT ii8,ii16,ii16"8,
		define __label1614787070 .
define mintRETURN .
RETURN
;#{"endcode":""}
define sequence .
;#{"code":"sequence","types":{},"vars":[{"text":{"loc":"@ii0'40","size":56,"type":"[56]char"}}]}
ALLOC 0,104,
; Assign @ii0'40 to var text
; 	read(text, abi("_sequence"));
;#{"srcline":27}
NOP
LOAD @ii0'40,x17a30677,
; 	_sequence = *(int*) (text + 4);
;#{"srcline":28}
NOP
EVAL64 ii0'96,0,@ii0'40,4,++
EVAL32 @gii0'80,iii0'96,
; 	output(4, text + 4);
;#{"srcline":29}
NOP
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,4,
EVAL32 gi0,4,
STOP
; 	return _sequence;
;#{"srcline":30}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787073,
EVAL32 ii8,gii0'80,
define __label1614787073 .
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
NOP
EVAL32 @ii0'40,0,
; 	}
;#{"srcline":37}
NOP
define __label1614787074 .
EVAL32 ii0'8,ii0'40,36,<
IF ii0'8,2,
IF 1,.__label1614787075,
; 		i
;#{"srcline":38}
NOP
EVAL8 ii0'8,ii16,ii24,!
IF ii0'8,.__label1614787076,
IF 1,.__label1614787077,
define __label1614787076 .
; 			return 0;
;#{"srcline":39}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787078,
EVAL8 ii8,0,
define __label1614787078 .
RETURN
define __label1614787077 .
; 		i += 1;
;#{"srcline":40}
NOP
EVAL32 @ii0'40,ii0'40,1,+
; 		i += 1; p += 1;
;#{"srcline":40}
NOP
EVAL64 @i16,i16,1,1,*+
; 		i += 1; p += 1; q += 1;
;#{"srcline":40}
NOP
EVAL64 @i24,i24,1,1,*+
IF 1,.__label1614787074,
define __label1614787075 .
; 	return 1;
;#{"srcline":42}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787079,
EVAL8 ii8,1,
define __label1614787079 .
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
NOP
LOAD @ii0'40,x53c6c547,
; 	_votecount = *(int*) (text + 4);
;#{"srcline":49}
NOP
EVAL64 ii0'96,0,@ii0'40,4,++
EVAL32 @gii0'72,iii0'96,
; 	output(4, text + 4);
;#{"srcline":50}
NOP
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,4,
EVAL32 gi0,4,
STOP
; 	return _votecount;
;#{"srcline":51}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787080,
EVAL32 ii8,gii0'72,
define __label1614787080 .
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
NOP
LOAD @ii0'40,xab0256ab,
; 	_startblk = *(int*) (text + 4);
;#{"srcline":58}
NOP
EVAL64 ii0'96,0,@ii0'40,4,++
EVAL32 @gii0'64,iii0'96,
; 	output(4, text + 4);
;#{"srcline":59}
NOP
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,4,
EVAL32 gi0,4,
STOP
; 	return _startblk;
;#{"srcline":60}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787081,
EVAL32 ii8,gii0'64,
define __label1614787081 .
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
NOP
EVAL32 @gii0'64,0,
; 	read(buf, abi("_startblk"));
;#{"srcline":67}
NOP
LOAD @ii0'40,xab0256ab,
; 	if
;#{"srcline":68}
NOP
EVAL64 ii0'96,@@ii0'40,
EVAL32 ii0'8,iii0'96,4,=
IF ii0'8,.__label1614787082,
IF 1,.__label1614787083,
define __label1614787082 .
; 		_startblk = *((int*)(buf + 4));
;#{"srcline":69}
NOP
EVAL64 ii0'96,0,0,@ii0'40,4,+++
EVAL32 @gii0'64,iii0'96,
define __label1614787083 .
; 	else read(buf, abi("_propostion"));
;#{"srcline":71}
NOP
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614787084,
; 	else read(buf, abi("_propostion"));
;#{"srcline":72}
NOP
LOAD @ii0'40,x7cea960f,
IF 1,.__label1614787085,
define __label1614787084 .
; 	if (_startblk <= 0) read(buf, abi("_handler"));
;#{"srcline":71}
NOP
LOAD @ii0'40,xf9044c2d,
define __label1614787085 .
; 	output(20, buf + 4);
;#{"srcline":74}
NOP
EVAL64 ii0'96,@ii0'40,4,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'96,20,
EVAL32 gi0,20,
STOP
; }
;#{"srcline":75}
NOP
EVAL64 ii0'8,i8,0,!
IF ii0'8,.__label1614787086,
IF 1,.__label1614787087,
define __label1614787086 .
; 		memcopy(res, buf + 4, 20);
;#{"srcline":76}
NOP
EVAL64 ii0'96,@ii0'40,4,+
COPY ii8,iii0'96,20,
define __label1614787087 .
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
NOP
EVAL64 @ii0'40,0,xaf389dda,32,[+Di16,|
; 	read(vote, userabi);
;#{"srcline":84}
NOP
LOAD @ii0'48,ii0'40,
; 	output
;#{"srcline":86}
NOP
EVAL64 ii0'8,i8,0,!
IF ii0'8,.__label1614787088,
IF 1,.__label1614787089,
define __label1614787088 .
; 	if (v != nil) *v = *(struct vote *)(vote + 4);
;#{"srcline":86}
NOP
EVAL64 ii0'104,0,i8,+
EVAL64 ii0'96,ii0'104,
EVAL64 ii0'120,0,@ii0'48,4,++
EVAL64 ii0'112,ii0'120,
COPY iii0'96,iii0'112,37,
define __label1614787089 .
; 	output(37, vote + 4);
;#{"srcline":88}
NOP
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
NOP
EVAL8 @ii0'96,0,
; 	qih = *(int*)(utxo + 32 - 3);
;#{"srcline":103}
NOP
EVAL64 ii0'296,0,i16,32,13,*+3,13,*-+
EVAL32 @ii0'160,iii0'296,
; 	read
;#{"srcline":104}
NOP
EVAL32 ii0'8,ii0'160,xaf389dda,!ii0'160,0,!&
IF ii0'8,.__label1614787090,
IF 1,.__label1614787091,
define __label1614787090 .
; 		read(buf, *(long*)(utxo + 32 - 7));
;#{"srcline":110}
NOP
EVAL64 ii0'296,0,0,i16,32,13,*+7,13,*-++P
LOAD @ii0'104,ii0'296,
; 		userabi
;#{"srcline":111}
NOP
EVAL64 ii0'296,@@ii0'104,
EVAL32 ii0'8,iii0'296,4,!
IF ii0'8,.__label1614787092,
IF 1,.__label1614787093,
define __label1614787092 .
; 			vresult = 0xff;
;#{"srcline":113}
NOP
EVAL8 @ii0'96,xff,
; 			output(1, &vresult);
;#{"srcline":114}
NOP
EVAL64 ii0'296,@ii0'96,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 			return 0xff;
;#{"srcline":115}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787094,
EVAL8 ii8,xff,
define __label1614787094 .
RETURN
define __label1614787093 .
; 		userabi = (abi("_votes") << 32) | (ulong) (*(uint*)(buf + 4));
;#{"srcline":119}
NOP
EVAL64 ii0'300,0,@ii0'104,4,++
EVAL32 ii0'296,0,iii0'300,+
EVAL64 @ii0'40,0,xaf389dda,32,[+Dii0'296,|
; 		read(vote, userabi);
;#{"srcline":120}
NOP
LOAD @ii0'168,ii0'40,
; 	}
;#{"srcline":122}
NOP
EVAL64 ii0'297,i16,
EVAL64 ii0'305,@ii0'168,4,+
CALL 0,.eqoutpoint,@ii0'296,Qii0'297,Qii0'305,
EVAL8 ii0'8,ii0'296,
IF ii0'8,.__label1614787095,
IF 1,.__label1614787096,
define __label1614787095 .
; 			output(1, vote + 40);
;#{"srcline":124}
NOP
EVAL64 ii0'296,@ii0'168,40,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 			return *(vote + 40);
;#{"srcline":125}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787097,
EVAL64 ii0'296,0,@ii0'168,40,++
EVAL8 ii8,iii0'296,
define __label1614787097 .
RETURN
define __label1614787096 .
define __label1614787091 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":130}
NOP
EVAL64 ii0'296,@@ii0'104,
LOAD iii0'296,x53c6c547,
; 	_votecount
;#{"srcline":131}
NOP
EVAL64 ii0'296,@@ii0'104,
EVAL32 ii0'8,iii0'296,4,!
IF ii0'8,.__label1614787098,
IF 1,.__label1614787099,
define __label1614787098 .
; 	if (*(int*)buf != 4) fail();
;#{"srcline":131}
NOP
REVERT
define __label1614787099 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":132}
NOP
EVAL64 ii0'296,0,0,@ii0'104,4,+++
EVAL32 @gii0'72,iii0'296,
; 	i = 0;
;#{"srcline":134}
NOP
EVAL32 @ii0'152,0,
; 	}
;#{"srcline":135}
NOP
define __label1614787100 .
EVAL32 ii0'8,ii0'152,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614787101,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":139}
NOP
EVAL64 @ii0'240,0,xaf389dda,32,[+Dii0'152,|
; 		read(vote, userabi);
;#{"srcline":140}
NOP
LOAD @ii0'248,ii0'240,
; 		i
;#{"srcline":142}
NOP
EVAL64 ii0'297,i16,
EVAL64 ii0'305,@ii0'248,4,+
CALL 0,.eqoutpoint,@ii0'296,Qii0'297,Qii0'305,
EVAL8 ii0'8,ii0'296,
IF ii0'8,.__label1614787102,
IF 1,.__label1614787103,
define __label1614787102 .
; 			output(1, vote + 40);
;#{"srcline":143}
NOP
EVAL64 ii0'296,@ii0'248,40,+
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 			return *(vote + 40);
;#{"srcline":144}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787104,
EVAL64 ii0'296,0,@ii0'248,40,++
EVAL8 ii8,iii0'296,
define __label1614787104 .
RETURN
define __label1614787103 .
; 		i += 1;
;#{"srcline":147}
NOP
EVAL32 @ii0'152,ii0'152,1,+
IF 1,.__label1614787100,
define __label1614787101 .
; 	vresult = 0xff;
;#{"srcline":150}
NOP
EVAL8 @ii0'96,xff,
; 	output(1, &vresult);
;#{"srcline":151}
NOP
EVAL64 ii0'296,@ii0'96,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'296,1,
EVAL32 gi0,1,
STOP
; 	return 0xff;
;#{"srcline":152}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787105,
EVAL8 ii8,xff,
define __label1614787105 .
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
NOP
LOAD @ii0'64,xab0256ab,
; 	result = 0;
;#{"srcline":164}
NOP
EVAL8 @ii0'40,0,
; 	_startblk
;#{"srcline":166}
NOP
EVAL64 ii0'320,@@ii0'64,
EVAL32 ii0'8,iii0'320,4,!
IF ii0'8,.__label1614787106,
IF 1,.__label1614787107,
define __label1614787106 .
; 		output(1, &result);
;#{"srcline":167}
NOP
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":168}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787108,
EVAL8 ii8,0,
define __label1614787108 .
RETURN
define __label1614787107 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":171}
NOP
EVAL64 ii0'320,0,0,@ii0'64,4,+++
EVAL32 @gii0'64,iii0'320,
; 	getBlockHeight
;#{"srcline":172}
NOP
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614787109,
IF 1,.__label1614787110,
define __label1614787109 .
; 		output(1, &result);
;#{"srcline":173}
NOP
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":174}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787111,
EVAL8 ii8,0,
define __label1614787111 .
RETURN
define __label1614787110 .
; 	getBlockHeight(&height);
;#{"srcline":177}
NOP
EVAL64 ii0'320,@ii0'56,
HEIGHT iii0'320,
; 	read
;#{"srcline":180}
NOP
EVAL32 ii0'8,ii0'56,gii0'64,400,+<
IF ii0'8,.__label1614787112,
IF 1,.__label1614787113,
define __label1614787112 .
; 		output(1, &result);
;#{"srcline":181}
NOP
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":182}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787114,
EVAL8 ii8,0,
define __label1614787114 .
RETURN
define __label1614787113 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":186}
NOP
EVAL64 ii0'320,@@ii0'64,
LOAD iii0'320,x53c6c547,
; 	_votecount
;#{"srcline":188}
NOP
EVAL64 ii0'320,@@ii0'64,
EVAL32 ii0'8,iii0'320,4,!
IF ii0'8,.__label1614787115,
IF 1,.__label1614787116,
define __label1614787115 .
; 		output(1, &result);
;#{"srcline":189}
NOP
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":190}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787117,
EVAL8 ii8,0,
define __label1614787117 .
RETURN
define __label1614787116 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":192}
NOP
EVAL64 ii0'320,0,0,@ii0'64,4,+++
EVAL32 @gii0'72,iii0'320,
; 	i
;#{"srcline":194}
NOP
EVAL32 ii0'8,gii0'72,3,<
IF ii0'8,.__label1614787118,
IF 1,.__label1614787119,
define __label1614787118 .
; 		output(1, &result);
;#{"srcline":196}
NOP
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 		return 0;
;#{"srcline":197}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787120,
EVAL8 ii8,0,
define __label1614787120 .
RETURN
define __label1614787119 .
; 	i = 0;
;#{"srcline":200}
NOP
EVAL32 @ii0'48,0,
; 	i = 0; yes = 0;
;#{"srcline":200}
NOP
EVAL64 @ii0'112,0,
; 	i = 0; yes = 0; coincount = 0;
;#{"srcline":200}
NOP
EVAL64 @ii0'120,0,
; 	}
;#{"srcline":201}
NOP
define __label1614787121 .
EVAL32 ii0'8,ii0'48,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614787122,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":206}
NOP
EVAL64 @ii0'128,0,xaf389dda,32,[+Dii0'48,|
; 		read(vote, userabi);
;#{"srcline":207}
NOP
LOAD @ii0'144,ii0'128,
; 		getUtxo(utxo, vote + 4);
;#{"srcline":209}
NOP
EVAL64 ii0'320,@ii0'144,4,+
GETUTXO @ii0'192,iii0'320,ii0'320"32,
; 		v
;#{"srcline":210}
NOP
EVAL64 ii0'8,0,0,@ii0'192,+P+0,!
IF ii0'8,.__label1614787123,
IF 1,.__label1614787124,
define __label1614787123 .
; 			i += 1;
;#{"srcline":211}
NOP
EVAL32 @ii0'48,ii0'48,1,+
; 			continue;
;#{"srcline":212}
NOP
IF 1,.__label1614787121,
define __label1614787124 .
; 		v = *(long*)(utxo + 8);
;#{"srcline":215}
NOP
EVAL64 @ii0'136,0,0,@ii0'192,8,+++P
; 		coincount += v;
;#{"srcline":216}
NOP
EVAL64 @ii0'120,ii0'120,ii0'136,+
; 		i
;#{"srcline":218}
NOP
EVAL64 ii0'320,0,@ii0'144,+40,+
EVAL8 ii0'8,iii0'320,1,=
IF ii0'8,.__label1614787125,
IF 1,.__label1614787126,
define __label1614787125 .
; 		if (vote[40] == 1) yes += v;
;#{"srcline":218}
NOP
EVAL64 @ii0'112,ii0'112,ii0'136,+
define __label1614787126 .
; 		i += 1;
;#{"srcline":220}
NOP
EVAL32 @ii0'48,ii0'48,1,+
IF 1,.__label1614787121,
define __label1614787122 .
; 	output
;#{"srcline":223}
NOP
EVAL64 ii0'8,ii0'112,100,*ii0'120,95,*)
IF ii0'8,.__label1614787127,
IF 1,.__label1614787128,
define __label1614787127 .
; 	if (yes * 100 >= coincount * 95) result = 1;
;#{"srcline":223}
NOP
EVAL8 @ii0'40,1,
define __label1614787128 .
; 	output(1, &result);
;#{"srcline":225}
NOP
EVAL64 ii0'320,@ii0'40,
EVAL64 ii0'8,@gi0,0,!
IF ii0'8,4,
COPY gi4,iii0'320,1,
EVAL32 gi0,1,
STOP
; 	return result;
;#{"srcline":226}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787129,
EVAL8 ii8,ii0'40,
define __label1614787129 .
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
NOP
CALL 0,.votecheck,@ii0'408,

; 	read
;#{"srcline":242}
NOP
EVAL64 ii0'408,0,i8,36,++
EVAL64 ii0'416,0,i8,36,++
EVAL8 ii0'8,iii0'408,1,!iii0'416,0,!&
IF ii0'8,.__label1614787130,
IF 1,.__label1614787131,
define __label1614787130 .
; 	if (utxo->yesno != 1 && utxo->yesno != 0) fail();
;#{"srcline":242}
NOP
REVERT
define __label1614787131 .
; 	read(buf, abi("_startblk"));
;#{"srcline":244}
NOP
LOAD @ii0'104,xab0256ab,
; 	_startblk
;#{"srcline":247}
NOP
EVAL64 ii0'408,@@ii0'104,
EVAL32 ii0'8,iii0'408,4,!
IF ii0'8,.__label1614787132,
IF 1,.__label1614787133,
define __label1614787132 .
; 	if (*(int*)buf != 4) fail();
;#{"srcline":247}
NOP
REVERT
define __label1614787133 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":248}
NOP
EVAL64 ii0'408,0,0,@ii0'104,4,+++
EVAL32 @gii0'64,iii0'408,
; 	getBlockHeight
;#{"srcline":249}
NOP
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614787134,
IF 1,.__label1614787135,
define __label1614787134 .
; 	if (_startblk <= 0)	fail();
;#{"srcline":249}
NOP
REVERT
define __label1614787135 .
; 	getBlockHeight(&height);
;#{"srcline":251}
NOP
EVAL64 ii0'408,@ii0'216,
HEIGHT iii0'408,
; 	getUtxo
;#{"srcline":253}
NOP
EVAL32 ii0'8,ii0'216,gii0'64,400,+>
IF ii0'8,.__label1614787136,
IF 1,.__label1614787137,
define __label1614787136 .
; 		fail();
;#{"srcline":254}
NOP
REVERT
define __label1614787137 .
; 	getUtxo(buf, utxo);
;#{"srcline":256}
NOP
GETUTXO @ii0'104,ii8,i8"32,
; 	if
;#{"srcline":257}
NOP
EVAL64 ii0'8,0,@ii0'104,+P0,!
IF ii0'8,.__label1614787138,
IF 1,.__label1614787139,
define __label1614787138 .
; 		fail();
;#{"srcline":258}
NOP
REVERT
define __label1614787139 .
; 	getUtxo
;#{"srcline":260}
NOP
EVAL64 ii0'408,0,@ii0'104,16,++
EVAL32 ii0'8,iii0'408,25,>
IF ii0'8,.__label1614787140,
IF 1,.__label1614787141,
define __label1614787140 .
; 		fail();
;#{"srcline":261}
NOP
REVERT
define __label1614787141 .
; 	getUtxo(buf, utxo, 1);
;#{"srcline":263}
NOP
GETUTXO @ii0'104,ii8,i8"32,1,
; 	read
;#{"srcline":264}
NOP
EVAL64 ii0'408,0,@ii0'104,+20,+
EVAL64 ii0'416,0,@ii0'104,+41,+
EVAL8 ii0'8,iii0'408,x6f,!iii0'416,x41,!|
IF ii0'8,.__label1614787142,
IF 1,.__label1614787143,
define __label1614787142 .
; 		fail();
;#{"srcline":265}
NOP
REVERT
define __label1614787143 .
; 	read(text, abi("_sequence"));
;#{"srcline":268}
NOP
LOAD @ii0'48,x17a30677,
; 	_sequence = *(int*) (text + 4);
;#{"srcline":269}
NOP
EVAL64 ii0'408,0,@ii0'48,4,++
EVAL32 @gii0'80,iii0'408,
; 	memcopy(text + 8, utxo, 36);
;#{"srcline":271}
NOP
EVAL64 ii0'408,@ii0'48,8,+
COPY iii0'408,ii8,36,
; 	hash(text + 4, 40, hash);
;#{"srcline":272}
NOP
EVAL64 ii0'408,@ii0'48,4,+
HASH @ii0'152,iii0'408,40,
; 	sigverify(&vresult, hash, pubkey, sig);
;#{"srcline":275}
NOP
EVAL64 ii0'408,@ii0'184,
SIGCHECK iii0'408,@ii0'152,ii16,ii24,
; 	vresult
;#{"srcline":276}
NOP
EVAL8 ii0'8,ii0'184,1,!
IF ii0'8,.__label1614787144,
IF 1,.__label1614787145,
define __label1614787144 .
; 	if (vresult != 1) fail();
;#{"srcline":276}
NOP
REVERT
define __label1614787145 .
; 	vresult = 0;
;#{"srcline":281}
NOP
EVAL8 @ii0'184,0,
; 	qih = *(int*)((char*)utxo + 32 - 3);
;#{"srcline":282}
NOP
EVAL64 ii0'408,0,i8,32,1,*+3,1,*-+
EVAL32 @ii0'208,iii0'408,
; 	read
;#{"srcline":283}
NOP
EVAL32 ii0'8,ii0'208,xaf389dda,!ii0'208,0,!&
IF ii0'8,.__label1614787146,
IF 1,.__label1614787147,
define __label1614787146 .
; 		read(text, *(long*)((char*)utxo + 32 - 7));
;#{"srcline":285}
NOP
EVAL64 ii0'408,0,0,i8,32,1,*+7,1,*-++P
LOAD @ii0'48,ii0'408,
; 		}
;#{"srcline":286}
NOP
EVAL64 ii0'408,@@ii0'48,
EVAL32 ii0'8,iii0'408,4,!
IF ii0'8,.__label1614787148,
; 			userabi = (abi("_votes") << 32) | (ulong) (*(uint*)(text + 4));
;#{"srcline":293}
NOP
EVAL64 ii0'412,0,@ii0'48,4,++
EVAL32 ii0'408,0,iii0'412,+
EVAL64 @ii0'40,0,xaf389dda,32,[+Dii0'408,|
; 			read(vote, userabi);
;#{"srcline":294}
NOP
LOAD @ii0'224,ii0'40,
; 			vresult
;#{"srcline":296}
NOP
EVAL64 ii0'409,i8,
EVAL64 ii0'417,@ii0'224,4,+
CALL 0,.eqoutpoint,@ii0'408,Qii0'409,Qii0'417,
EVAL8 ii0'8,ii0'408,
IF ii0'8,.__label1614787150,
IF 1,.__label1614787151,
define __label1614787150 .
; 				fail();
;#{"srcline":297}
NOP
REVERT
define __label1614787151 .
; 			vresult = 0;
;#{"srcline":299}
NOP
EVAL8 @ii0'184,0,
IF 1,.__label1614787149,
define __label1614787148 .
; 		if (*(int*)text != 4) vresult = 1;
;#{"srcline":286}
NOP
EVAL8 @ii0'184,1,
define __label1614787149 .
define __label1614787147 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":303}
NOP
EVAL64 ii0'408,@@ii0'104,
LOAD iii0'408,x53c6c547,
; 	_votecount
;#{"srcline":304}
NOP
EVAL64 ii0'408,@@ii0'104,
EVAL32 ii0'8,iii0'408,4,!
IF ii0'8,.__label1614787152,
IF 1,.__label1614787153,
define __label1614787152 .
; 	if (*(int*)buf != 4) fail();
;#{"srcline":304}
NOP
REVERT
define __label1614787153 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":305}
NOP
EVAL64 ii0'408,0,0,@ii0'104,4,+++
EVAL32 @gii0'72,iii0'408,
; 	userabi
;#{"srcline":307}
NOP
EVAL8 ii0'8,ii0'184,0,=
IF ii0'8,.__label1614787154,
IF 1,.__label1614787155,
define __label1614787154 .
; 		i = 0;
;#{"srcline":311}
NOP
EVAL32 @ii0'344,0,
; 		}
;#{"srcline":312}
NOP
define __label1614787156 .
EVAL32 ii0'8,ii0'344,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614787157,
; 			userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":316}
NOP
EVAL64 @ii0'352,0,xaf389dda,32,[+Dii0'344,|
; 			read(vote, userabi);
;#{"srcline":317}
NOP
LOAD @ii0'360,ii0'352,
; 			i
;#{"srcline":319}
NOP
EVAL64 ii0'409,i8,
EVAL64 ii0'417,@ii0'360,4,+
CALL 0,.eqoutpoint,@ii0'408,Qii0'409,Qii0'417,
EVAL8 ii0'8,ii0'408,
IF ii0'8,.__label1614787158,
IF 1,.__label1614787159,
define __label1614787158 .
; 				fail();
;#{"srcline":320}
NOP
REVERT
define __label1614787159 .
; 			i += 1;
;#{"srcline":322}
NOP
EVAL32 @ii0'344,ii0'344,1,+
IF 1,.__label1614787156,
define __label1614787157 .
define __label1614787155 .
; 	userabi = (abi("_votes") << 32) | (long) _votecount;
;#{"srcline":328}
NOP
EVAL64 @ii0'40,0,xaf389dda,32,[+Dgii0'72,|
; 	a.len = 37;
;#{"srcline":329}
NOP
EVAL64 ii0'408,0,@ii0'192,+
EVAL32 iii0'408,37,
; 	a.data = (char*) utxo;
;#{"srcline":330}
NOP
EVAL64 0,@ii0'192,4,++i8,
; 	write(userabi, &a);
;#{"srcline":331}
NOP
EVAL64 ii0'408,@@ii0'192,
EVAL64 ii0'8,iii0'408"4,
STORE ii0'40,iii0'408,iii0'8,
; 	_votecount
;#{"srcline":333}
NOP
EVAL32 ii0'8,ii0'208,xaf389dda,!ii0'208,0,!&
IF ii0'8,.__label1614787160,
IF 1,.__label1614787161,
define __label1614787160 .
; 		a.len = 4;
;#{"srcline":335}
NOP
EVAL64 ii0'408,0,@ii0'192,+
EVAL32 iii0'408,4,
; 		a.data = (char*) &_votecount;
;#{"srcline":336}
NOP
EVAL64 0,@ii0'192,4,++@gii0'72,
; 		write(*(long*)((char*)utxo + 4 + 32 - 7), &a);
;#{"srcline":337}
NOP
EVAL64 ii0'408,0,0,i8,4,1,*+32,1,*+7,1,*-++P
EVAL64 ii0'416,@@ii0'192,
EVAL64 ii0'8,iii0'416"4,
STORE ii0'408,iii0'416,iii0'8,
define __label1614787161 .
; 	_votecount += 1;
;#{"srcline":340}
NOP
EVAL32 @gii0'72,gii0'72,1,+
; 	_sequence = _sequence + 1;
;#{"srcline":343}
NOP
EVAL32 @gii0'80,gii0'80,1,+
; 	a.len = 4;
;#{"srcline":344}
NOP
EVAL64 ii0'408,0,@ii0'192,+
EVAL32 iii0'408,4,
; 	a.data = &_sequence;
;#{"srcline":345}
NOP
EVAL64 0,@ii0'192,4,++@gii0'80,
; 	write(abi("_sequence"), &a);
;#{"srcline":346}
NOP
EVAL64 ii0'408,@@ii0'192,
EVAL64 ii0'8,iii0'408"4,
STORE x17a30677,iii0'408,iii0'8,
; 	a.data = &_votecount;
;#{"srcline":348}
NOP
EVAL64 0,@ii0'192,4,++@gii0'72,
; 	write(abi("_votecount"), &a);
;#{"srcline":349}
NOP
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
NOP
LOAD @ii0'40,xf9044c2d,
; 	votecheck
;#{"srcline":359}
NOP
EVAL64 ii0'112,@@ii0'40,
EVAL32 ii0'8,iii0'112,20,!
IF ii0'8,.__label1614787162,
IF 1,.__label1614787163,
define __label1614787162 .
; 		a.len = 20;
;#{"srcline":361}
NOP
EVAL64 ii0'112,0,@ii0'96,+
EVAL32 iii0'112,20,
; 		a.data = propostion;
;#{"srcline":362}
NOP
EVAL64 0,@ii0'96,4,++i8,
; 		write(abi("_handler"), &a);
;#{"srcline":363}
NOP
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE xf9044c2d,iii0'112,iii0'8,
; 		libload(propostion);
;#{"srcline":365}
NOP
LIBLOAD 0,ii8,

; 		return;
;#{"srcline":366}
NOP
RETURN
define __label1614787163 .
; 	votecheck();
;#{"srcline":369}
NOP
CALL 0,.votecheck,@ii0'112,

; 	read(buf, abi("_startblk"));
;#{"srcline":371}
NOP
LOAD @ii0'40,xab0256ab,
; 	getBlockHeight
;#{"srcline":372}
NOP
EVAL64 ii0'112,@@ii0'40,
EVAL32 ii0'8,iii0'112,4,=
IF ii0'8,.__label1614787164,
IF 1,.__label1614787165,
define __label1614787164 .
; 		_startblk = *((int*)(buf + 4));
;#{"srcline":373}
NOP
EVAL64 ii0'112,0,0,@ii0'40,4,+++
EVAL32 @gii0'64,iii0'112,
; 	}
;#{"srcline":374}
NOP
EVAL32 ii0'8,gii0'64,0,>
IF ii0'8,.__label1614787166,
IF 1,.__label1614787167,
define __label1614787166 .
; 		if (_startblk > 0) fail();
;#{"srcline":374}
NOP
REVERT
define __label1614787167 .
define __label1614787165 .
; 	getBlockHeight(&_startblk);
;#{"srcline":377}
NOP
EVAL64 ii0'112,@gii0'64,
HEIGHT iii0'112,
; 	a.len = 4;
;#{"srcline":378}
NOP
EVAL64 ii0'112,0,@ii0'96,+
EVAL32 iii0'112,4,
; 	a.data = (char*) &_startblk;
;#{"srcline":379}
NOP
EVAL64 0,@ii0'96,4,++@gii0'64,
; 	write(abi("_startblk"), &a);
;#{"srcline":380}
NOP
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE xab0256ab,iii0'112,iii0'8,
; 	_votecount = 0;
;#{"srcline":382}
NOP
EVAL32 @gii0'72,0,
; 	a.data = (char*) &_votecount;
;#{"srcline":383}
NOP
EVAL64 0,@ii0'96,4,++@gii0'72,
; 	write(abi("_votecount"), &a);
;#{"srcline":384}
NOP
EVAL64 ii0'112,@@ii0'96,
EVAL64 ii0'8,iii0'112"4,
STORE x53c6c547,iii0'112,iii0'8,
; 	a.len = 20;
;#{"srcline":386}
NOP
EVAL64 ii0'112,0,@ii0'96,+
EVAL32 iii0'112,20,
; 	a.data = propostion;
;#{"srcline":387}
NOP
EVAL64 0,@ii0'96,4,++i8,
; 	write(abi("_propostion"), &a);
;#{"srcline":388}
NOP
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
NOP
LOAD @ii0'40,xab0256ab,
; 	_startblk
;#{"srcline":411}
NOP
EVAL64 ii0'168,@@ii0'40,
EVAL32 ii0'8,iii0'168,4,!
IF ii0'8,.__label1614787168,
IF 1,.__label1614787169,
define __label1614787168 .
; 	if (*(int*)buf != 4) return;
;#{"srcline":411}
NOP
RETURN
define __label1614787169 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":412}
NOP
EVAL64 ii0'168,0,0,@ii0'40,4,+++
EVAL32 @gii0'64,iii0'168,
; 	read
;#{"srcline":413}
NOP
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614787170,
IF 1,.__label1614787171,
define __label1614787170 .
; 	if (_startblk <= 0)	return;
;#{"srcline":413}
NOP
RETURN
define __label1614787171 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":415}
NOP
EVAL64 ii0'168,@@ii0'40,
LOAD iii0'168,x53c6c547,
; 	_votecount
;#{"srcline":417}
NOP
EVAL64 ii0'168,@@ii0'40,
EVAL32 ii0'8,iii0'168,4,!
IF ii0'8,.__label1614787172,
IF 1,.__label1614787173,
define __label1614787172 .
; 	if (*(int*)buf != 4) return;
;#{"srcline":417}
NOP
RETURN
define __label1614787173 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":418}
NOP
EVAL64 ii0'168,0,0,@ii0'40,4,+++
EVAL32 @gii0'72,iii0'168,
; 	i = 0;
;#{"srcline":420}
NOP
EVAL32 @ii0'88,0,
; 	}
;#{"srcline":421}
NOP
define __label1614787174 .
EVAL32 ii0'8,ii0'88,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614787175,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":427}
NOP
EVAL64 @ii0'96,0,xaf389dda,32,[+Dii0'88,|
; 		read(vote, userabi);
;#{"srcline":428}
NOP
LOAD @ii0'104,ii0'96,
; 		delete(userabi);
;#{"srcline":430}
NOP
DEL Qii0'96,
; 		qih = *(int*)(vote + 4 + 32 - 3);
;#{"srcline":434}
NOP
EVAL64 ii0'168,0,@ii0'104,4,+32,+3,-+
EVAL32 @ii0'160,iii0'168,
; 		i
;#{"srcline":435}
NOP
EVAL32 ii0'8,ii0'160,xaf389dda,!ii0'160,0,!&
IF ii0'8,.__label1614787176,
IF 1,.__label1614787177,
define __label1614787176 .
; 			delete(*(long*)(vote + 4 + 32 - 7));
;#{"srcline":436}
NOP
EVAL64 ii0'168,0,0,@ii0'104,4,+32,+7,-++P
DEL Qii0'168,
define __label1614787177 .
; 		i += 1;
;#{"srcline":438}
NOP
EVAL32 @ii0'88,ii0'88,1,+
IF 1,.__label1614787174,
define __label1614787175 .
; 	delete(abi("_propostion"));
;#{"srcline":441}
NOP
DEL x7cea960f,
; 	delete(abi("_startblk"));
;#{"srcline":442}
NOP
DEL xab0256ab,
; 	delete(abi("_votecount"));
;#{"srcline":443}
NOP
DEL x53c6c547,
define clearvoteRETURN .
RETURN
;#{"endcode":""}
define finalizevote .
;#{"code":"finalizevote","types":{},"vars":[]}
ALLOC 0,41,
; }
;#{"srcline":447}
NOP
CALL 0,.votecheck,@ii0'40,
EVAL8 ii0'8,ii0'40,~1,&
IF ii0'8,.__label1614787178,
IF 1,.__label1614787179,
define __label1614787178 .
; 	if (!votecheck()) fail();
;#{"srcline":447}
NOP
REVERT
define __label1614787179 .
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
NOP
LOAD @ii0'56,xab0256ab,
; 	_startblk
;#{"srcline":459}
NOP
EVAL64 ii0'328,@@ii0'56,
EVAL32 ii0'8,iii0'328,4,!
IF ii0'8,.__label1614787180,
IF 1,.__label1614787181,
define __label1614787180 .
; 	if (*(int*)buf != 4) return 0;
;#{"srcline":459}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787182,
EVAL8 ii8,0,
define __label1614787182 .
RETURN
define __label1614787181 .
; 	_startblk = *((int*)(buf + 4));
;#{"srcline":460}
NOP
EVAL64 ii0'328,0,0,@ii0'56,4,+++
EVAL32 @gii0'64,iii0'328,
; 	getBlockHeight
;#{"srcline":461}
NOP
EVAL32 ii0'8,gii0'64,0,(
IF ii0'8,.__label1614787183,
IF 1,.__label1614787184,
define __label1614787183 .
; 	if (_startblk <= 0)	return 0;
;#{"srcline":461}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787185,
EVAL8 ii8,0,
define __label1614787185 .
RETURN
define __label1614787184 .
; 	getBlockHeight(&height);
;#{"srcline":463}
NOP
EVAL64 ii0'328,@ii0'120,
HEIGHT iii0'328,
; 	read
;#{"srcline":466}
NOP
EVAL32 ii0'8,ii0'120,gii0'64,400,+<
IF ii0'8,.__label1614787186,
IF 1,.__label1614787187,
define __label1614787186 .
; 		return 0;
;#{"srcline":467}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787188,
EVAL8 ii8,0,
define __label1614787188 .
RETURN
define __label1614787187 .
; 	read(&buf, abi("_votecount"));
;#{"srcline":470}
NOP
EVAL64 ii0'328,@@ii0'56,
LOAD iii0'328,x53c6c547,
; 	_votecount
;#{"srcline":472}
NOP
EVAL64 ii0'328,@@ii0'56,
EVAL32 ii0'8,iii0'328,4,!
IF ii0'8,.__label1614787189,
IF 1,.__label1614787190,
define __label1614787189 .
; 	if (*(int*)buf != 4) return 0;
;#{"srcline":472}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787191,
EVAL8 ii8,0,
define __label1614787191 .
RETURN
define __label1614787190 .
; 	_votecount = *((int*)(buf + 4));
;#{"srcline":473}
NOP
EVAL64 ii0'328,0,0,@ii0'56,4,+++
EVAL32 @gii0'72,iii0'328,
; 	i
;#{"srcline":475}
NOP
EVAL32 ii0'8,gii0'72,3,<
IF ii0'8,.__label1614787192,
IF 1,.__label1614787193,
define __label1614787192 .
; 		clearvote();
;#{"srcline":477}
NOP
CALL 0,.clearvote,

; 		return 1;
;#{"srcline":478}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787194,
EVAL8 ii8,1,
define __label1614787194 .
RETURN
define __label1614787193 .
; 	i = 0;
;#{"srcline":481}
NOP
EVAL32 @ii0'104,0,
; 	i = 0; yes = 0;
;#{"srcline":481}
NOP
EVAL64 @ii0'112,0,
; 	i = 0; yes = 0; coincount = 0;
;#{"srcline":481}
NOP
EVAL64 @ii0'128,0,
; 	}
;#{"srcline":482}
NOP
define __label1614787195 .
EVAL32 ii0'8,ii0'104,gii0'72,<
IF ii0'8,2,
IF 1,.__label1614787196,
; 		userabi = (abi("_votes") << 32) | (long) i;
;#{"srcline":487}
NOP
EVAL64 @ii0'136,0,xaf389dda,32,[+Dii0'104,|
; 		read(vote, userabi);
;#{"srcline":488}
NOP
LOAD @ii0'152,ii0'136,
; 		getUtxo(utxo, vote + 4);
;#{"srcline":490}
NOP
EVAL64 ii0'328,@ii0'152,4,+
GETUTXO @ii0'200,iii0'328,ii0'328"32,
; 		v
;#{"srcline":491}
NOP
EVAL64 ii0'8,0,0,@ii0'200,+P+0,!
IF ii0'8,.__label1614787197,
IF 1,.__label1614787198,
define __label1614787197 .
; 			i += 1;
;#{"srcline":492}
NOP
EVAL32 @ii0'104,ii0'104,1,+
; 			continue;
;#{"srcline":493}
NOP
IF 1,.__label1614787195,
define __label1614787198 .
; 		v = *(long*)(utxo + 8);
;#{"srcline":496}
NOP
EVAL64 @ii0'144,0,0,@ii0'200,8,+++P
; 		coincount += v;
;#{"srcline":497}
NOP
EVAL64 @ii0'128,ii0'128,ii0'144,+
; 		i
;#{"srcline":499}
NOP
EVAL64 ii0'328,0,@ii0'152,+40,+
EVAL8 ii0'8,iii0'328,1,=
IF ii0'8,.__label1614787199,
IF 1,.__label1614787200,
define __label1614787199 .
; 		if (vote[40] == 1) yes = yes + v;
;#{"srcline":499}
NOP
EVAL64 @ii0'112,ii0'112,ii0'144,+
define __label1614787200 .
; 		i += 1;
;#{"srcline":501}
NOP
EVAL32 @ii0'104,ii0'104,1,+
IF 1,.__label1614787195,
define __label1614787196 .
; 	clearvote
;#{"srcline":504}
NOP
EVAL64 ii0'8,ii0'112,100,*ii0'128,95,*)
IF ii0'8,.__label1614787201,
IF 1,.__label1614787202,
define __label1614787201 .
; 		read(buf, abi("_propostion"));
;#{"srcline":506}
NOP
LOAD @ii0'56,x7cea960f,
; 		if
;#{"srcline":508}
NOP
EVAL64 ii0'328,@@ii0'56,
EVAL32 ii0'8,iii0'328,20,!
IF ii0'8,.__label1614787203,
IF 1,.__label1614787204,
define __label1614787203 .
; 		if (*(int*)buf != 20) return 0;
;#{"srcline":508}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787205,
EVAL8 ii8,0,
define __label1614787205 .
RETURN
define __label1614787204 .
; 		a
;#{"srcline":511}
NOP
EVAL32 ii0'8,ii0'120,gii0'64,400,+200,+<
IF ii0'8,.__label1614787206,
IF 1,.__label1614787207,
define __label1614787206 .
; 			return 0;
;#{"srcline":512}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787208,
EVAL8 ii8,0,
define __label1614787208 .
RETURN
define __label1614787207 .
; 		a.len = 20;
;#{"srcline":514}
NOP
EVAL64 ii0'328,0,@ii0'40,+
EVAL32 iii0'328,20,
; 		a.data = buf + 4;
;#{"srcline":515}
NOP
EVAL64 0,@ii0'40,4,++@ii0'56,4,+
; 		write(abi("_handler"), &a);
;#{"srcline":516}
NOP
EVAL64 ii0'328,@@ii0'40,
EVAL64 ii0'8,iii0'328"4,
STORE xf9044c2d,iii0'328,iii0'8,
; 		memcopy(_handler, buf + 4, 20);
;#{"srcline":517}
NOP
EVAL64 ii0'328,@ii0'56,4,+
COPY @gii0'88,iii0'328,20,
define __label1614787202 .
; 	clearvote();
;#{"srcline":520}
NOP
CALL 0,.clearvote,

; 	return 1;
;#{"srcline":521}
NOP
EVAL64 ii0'8,i8,0,=
IF ii0'8,.__label1614787209,
EVAL8 ii8,1,
define __label1614787209 .
RETURN
define votecheckRETURN .
RETURN
;#{"endcode":""}
;#{"endcode":""}
