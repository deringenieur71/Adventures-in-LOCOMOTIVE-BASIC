5 RANDOMIZE TIME:MODE 2:GOSUB 5000
6 DEFINT a-z
10 DIM C$(31),ro$(32),R(32,4),O$(33,8),p$(35):CLS
20 O$(1,1)="immovable door":O$(2,1)="a delicious looking malt":O$(2,2)="* platinum spoon"
30 O$(5,1)="sign":O$(6,1)="tombstone":O$(7,1)="motocycle":O$(8,1)="woman":O$(10,1)="folded piece of paper"
40 O$(12,1)="safe":O$(16,1)="manhole":O$(16,2)="dirtpile":O$(17,1)="gas container":O$(17,2)="dirtpile":O$(21,1)="a large pool"
50 O$(22,1)="duct tape":O$(24,1)="sign":O$(24,2)="a very large machine":O$(25,1)="prybar":O$(26,1)="* diamonds"
60 O$(27,1)="scientific book":O$(28,1)="a large cabinet":O$(30,1)="sign":O$(31,1)="crate"
70 O$(32,1)="dying plant":O$(26,2)="a very large machine":O$(18,1)="ladder":FOR x=1 TO 31:READ C$(x):NEXT x
80 FOR d=1 TO 32:FOR x=1 TO 4
90 READ R(d,x):NEXT x:NEXT d
95 FOR f=1 TO 32:READ ro$(f):NEXT f
96 rn=1
100 LOCATE 1,1:FOR x=1 TO 12:PRINT "                                                                        ";:NEXT:LOCATE 1,1
101 PRINT"you are in a ";ro$(rn)
105 PRINT"Exits are: ";
110 FOR x=1 TO 4:IF R(rn,x)<>0 THEN PRINT LEFT$(C$(x),1);" ";
111 NEXT x:PRINT
115 PRINT"Here you see: ";
116 O=0:FOR x=1 TO 8
117 IF O$(rn,x)<>""THEN O=1
118 NEXT x
119 IF O=0 THEN PRINT"Nothing."
120 FOR x=1 TO 8
121 IF O$(rn,x)<>""THEN PRINT O$(rn,x);"    ";
122 NEXT x:PRINT
130 PRINT"------------------------------------------------------------------------"
131 PRINT"                                                                   "
132 LOCATE 1,12
133 IF rn=27 THEN GOSUB 3800
135 INPUT"command";a$:PRINT"                                                                     ":PRINT"                                                                ":LOCATE 1,14
137 x1=1:a$=a$+" ":tw=LEN(a$)
138 p$(0)=LEFT$(a$,3)
139 FOR a1=1 TO tw
140 IF MID$(a$,a1,1)=" "THEN GOSUB 144
141 NEXT a1
142 GOTO 150
143 STOP
144 p$(x1)=MID$(a$,a1+1,3)
145 x1=x1+1
146 RETURN
150 FOR i=0 TO x1
151 IF p$(i)="the"THEN p$(i)=""
152 IF p$(i)="and"THEN p$(i)=""
153 IF p$(i)="at "THEN p$(i)=""
154 IF LEFT$(p$(i),1)="i"AND p$(i)<>"imm"THEN p$(i)="inv"
155 IF LEFT$(p$(i),1)="e"AND p$(i)<>"ent"AND p$(i)<>"exa"AND p$(i)<>"eat"THEN p$(i)="eas"
156 IF LEFT$(p$(i),1)="w"AND p$(i)<>"wom"AND p$(i)<>"wat"THEN p$(i)="wes"
157 IF LEFT$(p$(i),1)="n"AND p$(i)<>"nec"THEN p$(i)="nor"
158 IF LEFT$(p$(i),1)="s"AND p$(i)<>"spa"AND p$(i)<>"say"AND p$(i)<>"sci"AND p$(i)<>"str"AND p$(i)<>"sho"AND p$(i)<>"spo"AND p$(i)<>"sco"AND p$(i)<>"sig"AND p$(i)<>"saf"AND p$(i)<>"sha"AND p$(i)<>"swi"THEN p$(i)="sou"
159 IF p$(i+1)="tap"THEN p$(i+1)="duc"
160 IF p$(i+1)="boo"THEN p$(i+1)="sci"
161 IF p$(i+1)="pap"AND U=0 THEN p$(i+1)="fol"
162 IF p$(i+1)="mac"THEN p$(i+1)="a v"
163 IF p$(i+1)="sto"THEN p$(i+1)="tom"
164 IF p$(i+1)="doo"THEN p$(i+1)="imm"
165 IF p$(i+1)="mal"THEN p$(i+1)="a d"
166 IF p$(i+1)="pla"AND fs=0 THEN p$(i+1)="dyi"
167 IF p$(i+1)="cab"AND B=0 THEN p$(i+1)="a l"
168 IF p$(i+1)="poo"THEN p$(i+1)="a l"
169 IF p$(i+1)="spo"THEN p$(i+1)="* p"
170 IF p$(i+1)="nec"THEN p$(i+1)="* n"
171 IF p$(i+1)="cro"THEN p$(i+1)="* c"
172 IF p$(i+1)="dia"THEN p$(i+1)="* d"
173 IF p$(i+1)="con"THEN p$(i+1)="gas"
174 IF p$(i+1)="cab"AND B=1 THEN p$(i+1)="a b"
175 IF p$(i+1)="pla"AND fs=1 THEN p$(i+1)="a p"
176 IF p$(i+1)="mon"OR p$(i+1)="bag"THEN p$(i+1)="* m"
177 IF p$(i+1)="dou"OR p$(i+1)="spa"THEN p$(i+1)="* s"
195 NEXT i
196 a=0:FOR i=0 TO x1
197 IF p$(i)<>""THEN B$(a)=p$(i):a=a+1
198 NEXT i
199 FOR d=0 TO a-1:p$(d)=B$(d):NEXT d:x1=a-1
201 FOR i=0 TO x1
202 FOR ds=1 TO 31
205 IF p$(i)=C$(ds)THEN ON ds GOSUB 1000,1000,1000,1000,1100,1200,1301,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500,2600,2700,2800,2900,3000,3100,3200,3300,3400,3500,3600,3700
210 NEXT ds,i
220 GOTO 100
1000 FOR x=1 TO 4
1010 IF C$(x)=p$(i)AND R(rn,x)<>0 THEN 1030
1020 NEXT x:PRINT"that direction is not an exit!":FOR f=1 TO 1050:NEXT f:RETURN
1030 N=R(rn,x):rn=N:RETURN
1100 IF rn=16 AND p$(i+1)="man"THEN 1140
1105 GOTO 1199
1140 FOR x=0 TO 9
1145 IF LEFT$(I$(x),3)="mot"THEN 1155
1150 NEXT x:PRINT"you enter the manhole!":rn=18:RETURN
1155 PRINT"the motorcycle hampers your effort.":RETURN
1199 PRINT"you can't enter that!":RETURN
1200 IF rn=18 AND p$(i+1)="lad"THEN PRINT"you climb the ladder.":rn=16:RETURN
1299 PRINT"you can't climb that!":RETURN
1301 FOR x=1 TO 8
1329 IF p$(i+1)=LEFT$(O$(rn,x),3)THEN 1350
1330 NEXT x:PRINT"you can't get it!!":RETURN
1350 IF p$(i+1)="saf"AND rn=12 THEN PRINT"don't be funny, its made of steel and is too large!":RETURN
1351 IF p$(i+1)="a l"AND rn=21 THEN PRINT"the pool is a hole filled with water!":RETURN
1352 IF p$(i+1)="a l"AND rn=28 THEN PRINT"the cabinet is bolted to the floor!":RETURN
1353 IF p$(i+1)="imm"AND rn=1 THEN PRINT"you think your superman? the door wont budge!":RETURN
1354 IF p$(i+1)="dir"AND(rn=16 OR rn=17)THEN PRINT"the dirt runs through your fingers!":RETURN
1355 IF p$(i+1)="wom"AND rn=8 THEN PRINT"she wiggles away from you.":RETURN
1356 IF p$(i+1)="sig"AND rn=5 OR rn=24 OR rn=30 THEN PRINT"the sign wont budge!":RETURN
1357 IF p$(i+1)="tom"AND rn=6 THEN PRINT"I wont defile a place of the dead!!!":RETURN
1358 IF p$(i+1)="dyi"OR p$(i+1)="a p"AND rn=32 THEN PRINT"the plants roots go too deep! it wont budge.":RETURN
1359 IF p$(i+1)="man"AND rn=16 THEN PRINT"you can't expect me to get a manhole!":RETURN
1360 IF p$(i+1)="cra"AND rn=31 THEN PRINT"the crate wont budge!":RETURN
1361 IF rn=24 OR rn=26 AND p$(i+1)="a v"THEN PRINT"the machine won't budge!":RETURN
1365 IF p$(i+1)="bod"AND rn=6 THEN PRINT"that's sick!!!":RETURN
1366 IF p$(i+1)="* n"THEN 1383
1367 IF p$(i+1)="lad"AND rn=18 THEN PRINT"the ladder won't move.":RETURN
1368 IF p$(i+1)="a b"AND rn=28 THEN PRINT"you can't get the broken cabinet!":RETURN
1375 FOR x=1 TO 8:IF p$(i+1)=LEFT$(O$(rn,x),3)THEN 1377
1376 NEXT x:STOP
1377 FOR d=0 TO 9:IF I$(d)<>""THEN 1380
1378 IF p$(i+1)=LEFT$(O$(rn,x),3)THEN I$(d)=O$(rn,x)
1379 O$(rn,x)="":PRINT"taken!":RETURN
1380 NEXT d:PRINT"no room in inventory.":RETURN
1383 FOR d=0 TO 9:IF I$(d)="* cross"THEN 1375
1384 NEXT d:IF rn=6 THEN PRINT"the body springs to life and kills you!":END
1385 GOTO 1375
1400 FOR x=0 TO 9
1405 IF LEFT$(I$(x),3)=p$(i+1)THEN 1415
1410 NEXT x:PRINT"you don't have it!":RETURN
1415 FOR d=1 TO 8
1420 IF O$(rn,d)=""THEN 1430
1425 NEXT d:PRINT"no room to drop it!":RETURN
1430 O$(rn,d)=I$(x):I$(x)="":PRINT"dropped.":RETURN
1500 CLS:PRINT"your inventory: "
1505 FOR x=0 TO 9:PRINT I$(x):NEXT x
1510 INPUT"press return to continue";a$:RETURN
1600 R=RND*6
1605 R=INT(ABS(R)+1)
1610 ON R GOTO 1620,1630,1640,1650,1660,1670
1615 GOTO 1600
1620 PRINT"you will receive no help from me mortal!":RETURN
1630 PRINT"dig that weird tombstone.":RETURN
1640 PRINT"watch out for the librarian!":RETURN
1650 PRINT"try swimming.":RETURN
1660 PRINT"don't operate the machine without doing a little reading first!":RETURN
1670 PRINT"try examining things!":RETURN
1699 RETURN
1700 IF rn=1 AND p$(i+1)="imm"THEN PRINT"on the door you see a button.":RETURN
1701 IF(rn=5 OR rn=24 OR rn=30)AND p$(i+1)="sig"AND p$(i+1)<>"a v"THEN PRINT"the sign has writing on it!":RETURN
1702 IF rn=28 AND p$(i+1)="a l"THEN PRINT"the cabinet is made of glass!":RETURN
1710 IF rn=32 AND p$(i+1)="dyi"AND W=0 THEN PRINT"the plant is murmuring water.....water.":RETURN
1711 IF rn=31 AND p$(i+1)="cra"THEN PRINT"the crate looks like it can be moved.":RETURN
1712 IF rn=6 AND p$(i+1)="tom"THEN PRINT"it has writing on it.":RETURN
1713 IF rn=24 OR rn=26 AND p$(i+1)="a v"THEN PRINT"the machine has a lever on it.":RETURN
1714 IF rn=8 AND p$(i+1)="wom"THEN PRINT"she looks beautiful!":RETURN
1715 IF p$(i+1)="a d"THEN 1785
1716 IF p$(i+1)="bod"AND rn=6 AND fp=0 THEN PRINT"you find a necklace!":GOTO 1777
1776 GOTO 1799
1777 FOR x=1 TO 8:IF O$(rn,x)=""THEN 1779
1778 NEXT x:PRINT"remove an item from room and try again.":RETURN
1779 O$(rn,x)="* necklace":fp=1:RETURN
1785 FOR x=1 TO 8
1786 IF LEFT$(O$(rn,x),3)=p$(i+1)THEN 1790
1787 NEXT x:GOTO 1791
1790 PRINT"the malt smells like burnt almonds.":RETURN
1791 FOR x=0 TO 9:IF LEFT$(I$(x),3)=p$(i+1)THEN 1790
1792 NEXT x:PRINT"you don't see it!":RETURN
1799 PRINT"you see nothing special.":RETURN
1800 IF rn=1 AND p$(i+1)="but"THEN 1850
1810 PRINT"nothing happens!":RETURN
1850 PRINT"the room tilt's and you are thrown into a new room.":rn=2:RETURN
1900 IF rs=1 AND rn=24 AND p$(i+1)="lev"THEN PRINT"everything goes blurry.":rn=26:RETURN
1902 IF rs=1 AND rn=26 AND p$(i+1)="lev"THEN PRINT"everything goes black.":rn=24:RETURN
1904 IF rn=24 OR rn=26 AND rs=0 AND p$(i+1)="lev"THEN PRINT"the machine blows up killing you!":END
1999 PRINT"you can't pull that!":RETURN
2000 IF rn=6 AND db=0 THEN 2040
2001 IF rn=6 AND db=1 THEN PRINT"you can't dig anymore!":RETURN
2003 GOTO 2040
2040 FOR x=0 TO 9
2045 IF LEFT$(I$(x),3)="sho"THEN 2055
2050 NEXT x:PRINT"you need a shovel to dig!":RETURN
2055 IF rn=6 THEN 2060
2056 PRINT"you find nothing.":RETURN
2060 PRINT"you find a body!":FOR x=1 TO 8
2062 IF O$(rn,x)=""THEN 2070
2064 NEXT x:PRINT"remove an item from room and dig again!":RETURN
2070 O$(rn,x)="body":db=1:RETURN
2099 PRINT"you find nothing special.":RETURN
2100 IF rn=16 AND p$(i+1)="dir"THEN 2140
2101 IF rn=17 AND p$(i+1)="dir"THEN 2140
2103 PRINT"you can't jump that!":RETURN
2140 FOR x=0 TO 9
2145 IF LEFT$(I$(x),3)="mot"THEN 2155
2150 NEXT x:PRINT" you need a motorcycle before you jump!":RETURN
2155 IF rn=16 THEN PRINT"you jump the dirtpile with the motorcycle!":rn=17:RETURN
2156 IF rn=17 THEN PRINT"you jump the dirtpile with the motorcycle!":rn=16:RETURN
2157 PRINT"nothing happens!":RETURN
2200 ts=0:FOR x=1 TO 8
2205 IF LEFT$(O$(5,x),1)="*"THEN ts=ts+1
2210 NEXT x:IF ts=6 THEN PRINT"you solved my adventure! my next one will be harder.":END
2220 PRINT"you have got ";ts;" out of a possible 6 treasures so far.":RETURN
2300 IF p$(i+1)="tom"AND rn=6 THEN PRINT"you feel dizzy!":rn=INT(RND*31)+1:RETURN
2310 PRINT"nothing happens.":RETURN
2400 IF rn=6 AND p$(i+1)="tom"THEN PRINT"kilroy was here!":RETURN
2401 IF rn=5 AND p$(i+1)="sig"THEN PRINT"drop treasures here and say score!":RETURN
2402 IF rn=24 AND p$(i+1)="sig"THEN PRINT"experimental time machine":RETURN
2403 IF rn=30 AND p$(i+1)="sig"THEN PRINT"look for more adventures by Thomas Ally!":RETURN
2405 IF p$(i+1)="pap"AND U=1 THEN 2440
2406 IF p$(i+1)="fol"AND U=0 THEN 2460
2407 IF p$(i+1)="sci"AND rs<>1 THEN 2476
2408 IF p$(i+1)="sci"AND rs=1 THEN 2476
2439 GOTO 2499
2440 FOR x=0 TO 9
2445 IF LEFT$(I$(x),3)="pap"THEN 2455
2450 NEXT x:PRINT"you aren't carrying the piece of paper!":RETURN
2455 PRINT"it's the combination to a safe!":C=1:RETURN
2460 FOR x=0 TO 9
2465 IF LEFT$(I$(x),3)="fol"THEN 2475
2470 NEXT x:PRINT"you aren't carrying the piece of paper!":RETURN
2475 PRINT"you have to unfold it first!":RETURN
2476 FOR x=0 TO 9
2477 IF LEFT$(I$(x),3)="sci"THEN 2485
2478 NEXT x:PRINT"you aren't carrying the scientific book!":RETURN
2485 IF rs=0 THEN PRINT"the book tells how to operate a time machine.":rs=1:RETURN
2486 IF rs=1 THEN PRINT"you already read the book.":RETURN
2499 PRINT"you can't read it!":RETURN
2500 IF p$(i+1)="sco"THEN 2200
2599 PRINT"nothing happens!":RETURN
2600 IF p$(i+1)="fol"THEN 2640
2610 IF p$(i+1)="pap"THEN PRINT"you already unfolded that!":RETURN
2615 GOTO 2699
2640 FOR x=0 TO 9
2645 IF LEFT$(I$(x),3)="fol"THEN 2655
2650 NEXT x:PRINT"you aren't carrying the piece of paper!":RETURN
2655 PRINT"you unfold the piece of paper.":U=1:I$(x)="paper":RETURN
2699 PRINT"you can't unfold that!":RETURN
2700 IF p$(i+1)="gas"THEN 2740
2710 GOTO 2799
2740 FOR x=0 TO 9
2742 IF LEFT$(I$(x),3)="gas"THEN 2755
2744 NEXT x:PRINT"you don't have the gas can.":RETURN
2755 FOR x=1 TO 8
2756 IF O$(rn,x)=""AND fd=0 THEN PRINT"you found something!":O$(rn,x)="* spanish doubloon":fd=1:RETURN
2760 NEXT x:PRINT"you find nothing.":RETURN
2799 PRINT"nothing happens.":RETURN
2800 IF p$(i+1)="a d"THEN 2840
2810 GOTO 2899
2840 FOR x=0 TO 9
2842 IF LEFT$(I$(x),3)="a d"THEN 2846
2844 NEXT x:PRINT"you don't have the malt!":RETURN
2846 PRINT"the malt was laced with cyanide! you are dead.":END
2899 PRINT"you can't eat that!":RETURN
2900 IF rn=21 AND p$(i+1)="can"AND fc=0 THEN 2940
2901 IF rn=21 AND p$(i+1)="can"THEN 2940
2903 GOTO 2999
2940 FOR x=0 TO 9
2942 IF LEFT$(I$(x),3)="can"THEN 2944
2943 NEXT x
2944 IF fc=1 THEN PRINT"the canteen is already full!":RETURN
2945 IF fc=0 THEN PRINT"you fill the canteen from the pool!":fc=1:RETURN
2999 PRINT"you can't fill that!":RETURN
3000 IF rn=31 AND p$(i+1)="cra"AND fl=0 THEN 3040
3005 IF rn=1 AND p$(i+1)="imm"THEN PRINT"can't you read? the door can't be moved!":RETURN
3010 GOTO 3099
3040 FOR x=1 TO 8
3042 IF O$(rn,x)=""THEN 3050
3046 NEXT x:PRINT"remove an item from the room and try again.":RETURN
3050 O$(rn,x)="card":fl=1:PRINT"you find something!":RETURN
3099 PRINT"you find nothing!":RETURN
3100 IF rn=21 THEN PRINT"you swim down.":rn=25:RETURN
3105 IF rn=25 THEN PRINT"you swim up.":rn=21:RETURN
3199 PRINT"you can't swim here!":RETURN
3200 IF rn=28 AND p$(i+1)="a l"AND T=0 THEN 3240
3205 IF rn=28 AND p$(i+1)="a l"AND T=1 THEN PRINT"the glass cabinet is already taped up!":RETURN
3210 GOTO 3240
3240 FOR x=0 TO 9
3242 IF LEFT$(I$(x),3)="duc"THEN 3246
3244 NEXT x:PRINT"you aren't carrying the duct tape!":RETURN
3246 IF rn=28 THEN PRINT"you tape the glass cabinet with the duct tape.":T=1:RETURN
3299 PRINT"you can't tape that!":RETURN
3300 IF rn=28 AND p$(i+1)="a l"AND T=1 THEN 3340
3310 IF rn=28 AND p$(i+1)="a l"AND T=0 THEN PRINT"the flying glass cuts you to pieces!":END
3320 GOTO 3399
3340 FOR x=1 TO 8
3342 IF LEFT$(O$(rn,x),3)="a l"THEN 3350
3344 NEXT x:PRINT"you can't break it!":RETURN
3350 FOR d=1 TO 8
3352 IF O$(rn,d)=""THEN 3354
3353 NEXT d:PRINT"remove an item from the room and try again.":RETURN
3354 O$(rn,x)="a broken cabinet":B=1:O$(rn,d)="* cross":PRINT"you find something!":RETURN
3399 PRINT"you can't break that!":RETURN
3400 IF p$(i+1)="wat"OR p$(i+1)="can"AND fc=1 THEN 3405
3405 FOR x=0 TO 9
3406 IF I$(x)="canteen"THEN 3440
3407 NEXT x:PRINT"you don't have the canteen!":RETURN
3440 IF rn=32 AND fc=1 THEN 3445
3441 IF fc=1 AND rn<>32 THEN 3499
3444 PRINT"the canteen is empty!":RETURN
3445 FOR x=1 TO 8
3446 IF LEFT$(O$(rn,x),3)="dyi"THEN O$(rn,x)="a plant"
3447 NEXT x:FOR x=1 TO 8:IF O$(rn,x)=""AND fs=0 THEN 3450
3448 NEXT x:PRINT"you already watered the plant.":RETURN
3450 PRINT"for your kindness you are rewarded!":fc=0:O$(rn,x)="shovel":fs=1:RETURN
3499 PRINT"the ground becomes wet.":fc=0:RETURN
3500 IF rn=32 AND p$(i+1)="dyi"THEN 3540
3510 IF rn=32 AND p$(i+1)="a p"THEN PRINT"you already watered the dying plant!":RETURN
3540 FOR x=0 TO 9
3541 IF I$(x)="canteen"THEN 3550
3542 NEXT x:PRINT"you don't have the canteen!":RETURN
3550 IF rn=32 AND fc=1 THEN 3445
3551 IF fc=1 AND rn<>32 THEN 3499
3552 PRINT"the canteen is empty!":RETURN
3600 IF rn=12 AND C=1 AND fb=0 AND p$(i+1)="saf"THEN 3640
3601 IF rn=31 AND oc=0 AND p$(i+1)="cra"THEN 3610
3602 IF rn=31 AND oc=1 AND p$(i+1)="cra"THEN PRINT"you opened the crate already!":RETURN
3603 IF rn=12 AND C=0 AND p$(i+1)="saf"THEN PRINT"you don't know the combination!":RETURN
3604 IF rn=12 AND fb=1 AND p$(i+1)="saf"THEN PRINT"you already opened the safe!":RETURN
3605 PRINT"you can't open that.":RETURN
3610 FOR x=0 TO 9
3611 IF LEFT$(I$(x),3)="pry"THEN 3613
3612 NEXT x:PRINT"you don't have anything to pry with!":RETURN
3613 FOR x=1 TO 8
3614 IF O$(rn,x)=""THEN 3616
3615 NEXT x:PRINT"remove an item from the room and try again.":RETURN
3616 O$(rn,x)="canteen":PRINT"you find something!":oc=1:RETURN
3640 FOR x=1 TO 8
3641 IF O$(rn,x)=""THEN 3643
3642 NEXT x:PRINT"remove an item from the room and try again.":RETURN
3643 O$(rn,x)="* moneybag":PRINT"you find something!":fb=1:RETURN
3700 IF rn=8 AND p$(i+1)="wom"THEN PRINT" she stabbed you in the back! your dead!":END
3799 PRINT"geesh, you sure kiss alot!":RETURN
3800 FOR x=0 TO 9
3905 IF I$(x)="card"THEN RETURN
3906 NEXT x:PRINT:PRINT"the librarian throws you out for forgetting your card!":rn=17:GOTO 100
4500 DATA nor,sou,eas,wes,ent,cli,get,dro,inv,hel,exa,pus,pul,dig,jum,sco,rub,rea,say,unf,sha,eat,fil,mov,swi,tap,bre,pou,wat,ope,kis
4510 DATA 0,0,0,0,3,0,0,0,0,2,4,5,6,0,7,3,0,0,3,0,0,4,0,0,9,31,8,4,0,0,0,7,11,7,29,10,0,0,9,0,0,9,0,12,13,0,11,0,14,12,0,28,15,13,0,0,0,14,16,0
4520 DATA 0,0,0,15,27,0,0,0,19,0,0,0,0,18,22,20,0,21,19,0,20,0,0,0,23,0,0,19,24,22,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,13,0,0,0,30,9,0,32,0,29,7,0,0,0,30,0,0,0
4530 DATA docking bay,malt shop,street,street,hotel,graveyard,street,geisha house,street,street,street,bank,street,street,street,street,gas station
4540 DATA underground complex,underground complex,underground complex,underground complex,underground complex,underground complex,underground complex
4550 DATA bottom of a pool,slimy cave,library,high school,street,street,warehouse,greenhouse
5000 CLS
5050 LOCATE 26,13
5060 PRINT"Escape From Atlantis by Fly"
5065 LOCATE 34,14:PRINT"Version 5.01"
5066 LOCATE 35,15:PRINT"Converted to CPC in 2017 by SRS"
5070 FOR i%=1 TO 5000:NEXT
5080 RETURN