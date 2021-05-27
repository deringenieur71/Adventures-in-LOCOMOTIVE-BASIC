100 MODE 1:c1=0:k1=0:l1=0:b1=0:w1=0:j1=0:s1=0:PRINT"Old West Adventure":PRINT"(c)onverted 2021 from C64 to CPC by SRS"
110 DIM n$(20),l(27),m(11,4),r$(11)
120 GOSUB 500:l=1:PRINT"i hear a rasping noise":FOR td=1 TO 1000:NEXT
125 PRINT"i hear a horse!":FOR td=1 TO 3000:NEXT
126 PRINT:FOR cy=1 TO 10:PRINT"  cloppity":FOR td=1 TO 200:NEXT
128 NEXT
130 GOSUB 700
132 IF n=13 AND l=10 THEN PRINT:PRINT"he's a dangerous outlaw. be careful"
135 IF m(4,2)<>0 OR l(13)<>3 THEN 140
136 CLS:PRINT"you caught black bart!"
137 PRINT"the reward is yours!"
138 END
140 REM
142 PRINT:PRINT"tell me what to do":GOSUB 1000
145 IF s=1 THEN s=0:GOTO 140
150 FOR i=1 TO LEN(v$) STEP 2
160 IF MID$(v$,i,2)=a$ THEN v=(i+1)/2:GOTO 200
170 NEXT
180 PRINT"i don't know how to do that":GOTO 140
200 IF b$="" THEN 300
210 FOR i=1 TO LEN(n$) STEP 2
220 IF MID$(n$,i,2)<>b$ THEN 230
225 n=(i+1)/2
227 IF n=21 THEN n=9
229 GOTO 300
230 NEXT
300 ON v GOTO 350,400,400,450,480,800,800,830,130,800,900,980,950
309 REM unlock drawer desk or cell
310 IF n=6 AND l(17)=0 AND l=2 THEN j1=1:m(2,3)=3:GOSUB 1150:m(3,4)=2:GOTO 130
320 PRINT"can't do that yet"
330 GOTO 130
350 IF n<>7 AND n<22 THEN 380
355 IF n=7 AND m(4,2)<>0 AND (l=5 OR l=3) THEN l=4:GOTO 130
360 IF m(l,n-21)=0 THEN 395
370 l=m(l,n-21):GOTO 130
380 IF n<>4 OR l<>7 THEN 385
381 PRINT"splash--i'm all wet":l(18)=7
382 IF l(11)=50 THEN PRINT"i found something":l(11)=7:GOTO 130
385 IF n=5 AND l=9 THEN l=10:GOTO 130
395 PRINT"can't go that way":GOTO 130
400 IF c>=4 THEN PRINT"go too much--take inventory":GOTO 140
405 IF n=14 THEN 425
410 IF l(n)<>l THEN PRINT"i don't see it here":GOTO 140
420 IF n<8 OR n>19 THEN PRINT"can't take that":GOTO 140
425 IF n=14 AND l<>2 AND l(16)<>0 THEN PRINT"can't do that yet":GOTO 140
430 IF n=14 AND l=2 THEN n$(3)="sink full of water":w1=1:GOTO 130
435 IF n=14 AND l(16)=0 THEN n$(16)="bucket of water":w1=1:GOTO 130
440 IF n=13 AND s1=1 THEN 444
441 IF n<>13 THEN 444
442 PRINT"black bart gets mad!":PRINT"he draws his revolver!"
443 PRINT"that's the end":END
444 IF n=13 AND l(11)<>0 THEN PRINT"can't do that yet":GOTO 140
445 PRINT"okay":c=c+1:l(n)=0:GOTO 140
450 IF l1=1 THEN PRINT"it's not locked":GOTO 140
460 IF l=2 AND l(9)=0 AND l1=0 AND (n=2 OR n=20 OR n=26) THEN 465
462 GOTO 470
465 l1=1:k1=1:PRINT"okay":n$(2)="unlocked desk"
470 GOTO 140
480 IF n<>2 AND n<>20 AND n<>26 THEN PRINT"can't":GOTO 140
490 IF k1=1 AND l=2 AND l(17)=50 THEN l(17)=2:GOTO 495
492 PRINT"can't":GOTO 140
495 PRINT"okay--there's something in there":GOTO 140
500 FOR i=1 TO 20:READ n$(i):NEXT
510 DATA poster,desk with locked drawer,sink,horse trough,room in back
511 DATA jail cell-locked,empty window,bars, bobby pin, sack of cement
512 DATA shiny star,bottle of elixir,black bart,water,water,bucket,key
514 DATA water,empty window,cactus
550 v1$="nsew"
560 v$="gotagepioppudrmilogiswfireun"
570 n$="podesitrrojawibabocestelblwawabukewawidrpinosoeawelo"
600 FOR i=1 TO 20:READ l(i):NEXT
610 DATA 1,2,3,7,9,2,3,5,8,8,50,9,10,50,99,7,50,99,5,11
620 FOR i=1 TO 11:FOR j=1 TO 4:READ m(i,j):NEXT j,i
630 DATA 7,6,2,,,,,1,,,,0,3,5,,,0,,,6
640 DATA 1,,5,11,,1,8,9,,,,7,,,7,,,,9,
642 DATA 0,0,6,0
650 FOR i=1 TO 11:READ r$(i):NEXT
660 DATA dusty street,office,jail,window,dusty street behind jail
670 DATA street corner,dusty street,general store,saloon,room in back
672 DATA desert road
675 r$(2)="sheriff's "+r$(2)
680 RETURN
700 CLS:PRINT:PRINT:PRINT"i am in a _";r$(l)
710 PRINT".i see ";
720 FOR i=1 TO 20
730 IF l(i)=l THEN PRINT n$(i);" ";:PRINT:s=1
740 NEXT
750 IF s=0 THEN PRINT"nothing special"
760 IF s=1 THEN PRINT:s=0
765 IF l=0 THEN RETURN
770 PRINT".obvious exits are .";
775 FOR i=1 TO 4:IF m(l,i)=0 THEN 785
780 PRINT MID$(v1$,i,1)+" ";
785 NEXT:PRINT
790 RETURN
800 IF n=10 OR n=8 THEN 830
805 IF n=12 AND s1=0 THEN 870
810 IF l(n)=0 THEN l(n)=l:c=c-1:PRINT"okay":GOTO 130
820 PRINT"i'm not carrying it":GOTO 140
830 PRINT"where":INPUT c$
840 IF LEFT$(c$,2)<>"si" AND LEFT$(c$,2)<>"wa" AND LEFT$(c$,2)<>"bu" THEN 845
842 IF w1=1 AND n=10 AND l(10)=0 THEN 850
843 GOTO 847
845 IF LEFT$(c$,2)="wi" AND l(8)=0 AND c1=1 AND l=4 AND n=8 THEN 860
847 PRINT"can't do that yet":GOTO 140
850 PRINT"okay.  it's mixed":c1=1:l(10)=50:c=c-1
855 IF LEFT$(c$,2)="bu"thenn$(16)="bucket of cement mixture":GOTO 130
856 n$(15)="cement mixture":l(15)=l:GOTO 130
860 PRINT"okay":n$(7)="barred window":l=3:m(4,2)=0:l(8)=50:c=c-1:GOTO 130
870 IF l(12)<>0 THEN 847
875 IF a$<>"gi" THEN 900
876 IF l<>10 THEN 847
880 l(12)=50:PRINT"black bart gulps elixir and immediatelyfalls asleep"
890 s1=1:c=c-1:n$(13)="sleeping "+n$(13):GOTO 140
900 IF n=12 AND l(12)=0 THEN l(12)=50:PRINT"glug glug glug":c=c-1:GOTO 140
910 IF n=12 THEN PRINT"can't do that yet":GOTO 140
920 PRINT"can't drink that":GOTO 140
950 IF n<>1 OR l<>1 THEN PRINT"can't":GOTO 140
960 PRINT"wanted alive-black bart! $1000reward"
970 GOTO 140
980 IF n<>3 OR l<>3 THEN PRINT"can't":GOTO 140
990 PRINT"how";:INPUT c$
995 IF LEFT$(c$,2)="wa" THEN l(14)=3:w1=1
996 GOTO 130
1000 INPUT a$:b$=""
1005 IF LEFT$(a$,2)="qu" THEN END
1010 IF LEN(a$)=1 THEN 1060
1020 FOR i=1 TO LEN(a$)
1030 IF MID$(a$,i,1)=" " AND LEN(a$)>i+1 THEN b$=MID$(a$,i+1,2):GOTO 1045
1040 NEXT
1045 a$=LEFT$(a$,2):RETURN
1060 IF a$<>"i" THEN 1100
1070 PRINT"i'm carrying ";:t=l:l=0:GOSUB 720
1080 l=t:s=1:RETURN
1100 FOR i=1 TO 4
1110 IF a$<>MID$(v1$,i,1) THEN 1130
1120 a$="go":b$=MID$(n$,2*i+41,2):RETURN
1130 NEXT
1140 PRINT"can't do that":s=1:RETURN
1150 n$(6)="open jail cell":RETURN