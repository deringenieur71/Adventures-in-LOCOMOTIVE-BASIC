70 MODE 2:LOCATE 1,3:PRINT"Please wait ...organizing data"
80 GOSUB 10620
340 CLS
350 PRINT"Survival in New York City"
360 PRINT"A game of interactive fiction"
370 PRINT"Donated to the public domain"
380 PRINT"1986, Bert Lewis"
385 PRINT"converted to CPC in 2017 by SRS"
390 PRINT:PRINT
410 SCE=1:MON=25
420 PRINT"You wake up with a splitting headache.  As you sit rubbing your head, you sadly realize you are somewhere in a New York ghetto."
430 PRINT"You try to remember what happened, but ... "
440 PRINT"A ragged bum sits next to you, holding a bottle in his hands and moaning softly to himself."
450 PRINT"You stumble to your feet and find your wallet.  It contains $25."
460 VM=1
490 GOTO 9040
500 PRINT:LINE INPUT">",an$
510 GOSUB 10340
520 I=0:GOSUB 10550
540 IF A$=""THEN PRINT"What?":GOTO 500
550 IF A$="I"THEN 7820
560 IF A$="GET"THEN I=4:GOTO 4900
570 IF A$="BUY"THEN 6160
580 IF A$="USE"THEN 7060
590 IF A$="DIG"THEN 7420
600 IF A$="EAT"THEN I=4:GOTO 7740
610 IF A$="YES"OR A$="NO"THEN 8120
620 IF A$="PUT"THEN 7520
630 IF A$="QUIT"THEN END
640 IF A$="SAVE"THEN 10820
650 IF A$="TURN"THEN 6380
660 IF A$="TAKE"OR A$="GRAB"THEN I=5:GOTO 4900
670 IF A$="DROP"THEN 5860
680 IF A$="TIME"THEN 9230
690 IF A$="READ"THEN 7160
700 IF A$="OPEN"THEN 6720
710 IF A$="GIVE"THEN 6460
720 IF A$="SCORE"THEN 8070
730 IF A$="SHOOT"THEN 8270
740 IF A$="KNOCK"THEN 6820
750 IF A$="DRINK"THEN 7690
760 IF A$="INVENTORY"THEN 7820
770 IF A$="RESTORE"THEN 10820
780 IF A$="SWALLOW"THEN I=8:GOTO 7740
790 IF A1$="WALK"THEN PRINT"You must supply a direction.":GOTO 500
800 IF A$="WALK"AND LEN(A1$)>=6 THEN A1$=MID$(A1$,6,7)
810 IF A$="STEAL"OR A$="ROB"THEN PRINT"If you wish to take something, type 'GET (object)'":GOTO 500
820 IF A$="SMASH"OR A$="BREAK"OR A$="DESTROY"THEN PRINT"If you wish to break something, type 'USE (object)'":GOTO 500
830 IF A$="SLEEP"THEN IF BH=1 THEN PRINT"Buy the house first.":GOTO 490 ELSE PRINT"Find a a decent place to sleep first.":GOTO 500
840 IF A$="HIT"OR A$="KILL"THEN PRINT"If you wish to kill someone, type 'SHOOT (person)'":GOTO 500
860 IF SCE<>4 THEN 900
870 A$=LEFT$(A1$,3)
880 IF A$="GUN"OR A$="HAN"OR A$="22 "OR A$="RIF"OR A$="AMM"OR A$="6 R"OR A$="BUL"OR A$="CLI"OR A$="12 "OR A$="BOW"OR A$="SHO"OR A$="PRI"OR A$="LIS"THEN 6240
900 IF VM=1 THEN 9500
920 IF A1$="N"OR A1$="NORTH"THEN IF CITY=1 THEN 3190 ELSE 1000
930 IF A1$="S"OR A1$="SOUTH"THEN IF CITY=1 THEN 3310 ELSE 1020
940 IF A1$="E"OR A1$="EAST"THEN IF CITY=1 THEN 3430 ELSE 1040
950 IF A1$="W"OR A1$="WEST"THEN IF CITY=1 THEN 3570 ELSE 1060
970 GOTO 10660
1000 ON SCE GOTO 4540,1200,1600,4520,1830,1360,4540,1670,1930,4520,2230,1790,2090,1990,2370,4520,2770,2180,4540,2400,2840,4520,3020,2550,2900,220,4640,4640,4640,2940
1020 ON SCE GOTO 4540,4510,1150,4520,1460,4510,4540,1200,1600,4520,1830,1360,4520,1670,1930,1880,2230,1790,4540,1990,2370,4520,2770,2180,4520,220,2840,2790,3020,2550
1040 ON SCE GOTO 1460,1090,4530,1360,4570,4570,1830,1540,4590,1790,4570,4570,4520,1880,2090,4520,4570,4570,2770,2270,2450,2550,4570,4570,3020,220,2900,2940,3430,4570
1060 ON SCE GOTO 1150,4580,4580,4550,1280,1090,1600,4580,4580,4590,1710,1540,1930,4580,4580,1990,4630,4630,2370,4580,4580,2400,2450,2270,2840,220,4600,2870,2900,2790
1090 SCE=1
1100 PRINT"You enter an alley."
1110 IF RK=0 THEN PRINT"A rusty key is sitting on top of a garbage can."
1120 IF BUM=1 THEN PRINT"A ragged bum lies still against an empty garbage can.":GOTO 4690
1130 IF WI<>0 THEN PRINT"A drunkard is sleeping in the corner.":GOTO 4690 ELSE PRINT"A drunkard is leaning against the alley wall,":PRINT"taking an occasional swig from a bottle.":GOTO 4690
1150 SCE=2
1160 PRINT"You are on the southern end of 90th street."
1170 PRINT"About 100 feet west of the road, children run":PRINT"and play in front of broken down shacks."
1180 GOTO 4690
1200 SCE=3
1210 GOSUB 4410
1220 PRINT"You stand on the back side of a sporting goods store."
1230 PRINT"The back door reads,"
1240 PRINT"               'EMPLOYEES ONLY'"
1250 PRINT"         Patrons please use front door.":PRINT
1260 GOTO 4690
1280 SCE=4
1290 PRINT"You walk up the entrance to J & M's sporting store."
1300 PRINT"Inside this small store are rows of sporting equipment and a few isles of       camping supplies.  A glass case on the back wall contains an assortment of guns"
1310 PRINT"and rifles.  A price list is taped to the glass case."
1320 PRINT"A clerk standing behind the counter adjusts his glasses and asks,"
1330 PRINT"'Hello, do you see anything you like?'"
1340 GOTO 4690
1360 SCE=5
1370 IF STF=0 AND GUN=1 AND AMMO=6 THEN STF=1:PRINT"You attach the clip to the gun as you walk out the store.":S=S+10
1380 GOSUB 4440
1390 PRINT"To the west is a building.  A sign in front reads,":PRINT
1400 PRINT"         'J & M's SPORTING GOODS'"
1410 PRINT"          - open 7 days a week -"
1420 SHI=SHI+1:PRINT
1430 IF(SHI MOD 2)AND MOG=0 THEN PRINT"A shiny motorcycle roars down the road."
1440 GOTO 4690
1460 SCE=6
1470 PRINT"You are on the southern end of 80th street."
1480 PRINT"Poverty stricken homes and abandoned buildings line the east"
1490 PRINT"side of the street."
1500 PRINT"Every few minutes, a motorcycle roars down the road, circles,"
1510 PRINT"and heads back.":GOTO 4690
1540 SCE=7
1550 PRINT"You enter an alley."
1560 PRINT"Dirty garbage cans, overflowing with garbage, line the alley wall."
1570 IF MEAT=0 THEN PRINT"A small chunk of raw meat lies on the ground."
1580 GOTO 4690
1600 SCE=8
1610 GOSUB 4410
1620 PRINT"There is an alley to the east."
1630 IF GANG=1 THEN PRINT"You stumble over three dead teenagers.":GOTO 4690
1640 PRINT"Three teenagers dressed in leather jackets and faded jeans step in front of    you.  One of them pulls out a chain from his pocket and says,"
1650 PRINT"'Listen here skum face, You aint got no right to mess around here.'":VM=1:GOTO 4690
1670 SCE=9
1680 IF S1=0 THEN S1=1:S=S+10
1690 GOSUB 4410:PRINT"There is a demolished building to the east.":GOTO 4690
1710 SCE=10
1720 PRINT"You begin climbing the mound of rubble."
1730 IF BUR=0 THEN PRINT"You climb over a hill of broken concrete,":PRINT"and notice a peculiar pile of debris.  It appears to have been formed":PRINT"very recently, for the gravel is orderly placed; not like the"
1740 IF BUR=0 THEN PRINT"disorganized debris around it.":GOTO 4690
1750 PRINT"You climb over a hill of broken concrete and stone."
1760 IF SON=0 THEN PRINT"A child lies unconscious here."
1770 GOTO 4690
1790 SCE=11
1800 GOSUB 4440
1810 PRINT"To the west is a mound of rubble.":GOTO 4690
1830 SCE=12
1840 GOSUB 4440
1850 IF MOG=1 THEN PRINT"About 20 men lie dead on the street.":GOTO 4690
1860 PRINT"About 20 dirty men are sitting on motorcycles.  Each one is wearing a black     jacket with a satanic emblem stiched on back.  You realize you've just walked   into a gang of hell's angels!":VM=1:LA$=LEFT$(A1$,1):GOTO 4690
1880 SCE=13
1890 IF WF=0 THEN 2110
1900 PRINT"You walk to the south end of the warehouse."
1910 PRINT"There is a door to the west.":GOTO 4690
1930 SCE=14
1940 GOSUB 4410
1950 PRINT"A large warehouse, with boarded windows and a small 'For Sale' sign tacked on the side, lies to the east."
1970 PRINT"A door leads into the warehouse.":GOTO 4690
1990 SCE=15
2000 GOSUB 4410
2010 IF GA2=-1 THEN GA2=1
2020 PRINT"A door to the warehouse lies east."
2030 IF GA2=1 THEN PRINT"A dead teenager lies here.  A faint path of blood leads north, as if someone    dying (or dead) was dragged north.":GOTO 4690
2040 PRINT"Three teenagers, with the same leather jackets as the first gang you met,       are huddled around a fire, warming their hands over flames flickering from      a garbage can."
2050 IF MOB=1 THEN PRINT"One of them sees your money bag...":VM=1:GOTO 4690
2060 IF GANG=1 THEN PRINT"One of them turns around and looks at you.  He nudges the rest of the group     and yells, 'You shot my best friend and killed two other Black Knights!'":VM=1:GOTO 4690
2070 GOTO 4690
2090 SCE=16
2100 IF WF=1 THEN PRINT"You walk to the north end of the warehouse.":PRINT"There is a door to the west.":GOTO 2150
2110 PRINT"You open the door and walk in."
2120 PRINT"The sunlight shines through cracked ceiling boards, providing"
2130 PRINT"enough light.  The concrete floor is bare and dusty."
2140 PRINT"The building appears empty, except for a few empty crates and a couple of       cardboard boxes.":WF=1:S=S+10
2150 IF DR=0 AND SCE=16 THEN PRINT"A small drill is sitting on top of a wooden crate."
2160 GOTO 4690
2180 SCE=17
2190 GOSUB 4440
2200 PRINT"A large warehouse, with boarded windows and a small 'For Sale' sign tacked on the side, lies to the west.":GOTO 4690
2230 SCE=18
2240 GOSUB 4440
2250 PRINT"The warehouse lies to the west.":GOTO 4690
2270 SCE=19
2280 PRINT"You enter an alley."
2290 PRINT"This is very neat and well-kept; much nicer than the "
2300 PRINT"other alleys down.  A single garbage can rests against"
2310 PRINT"the alley wall.  ";:IF BOX=0 THEN PRINT"A wooden box, with a locked padlock, lies next to it.":GOTO 4690 ELSE PRINT"An open wooden box lies next to it."
2320 PRINT"Inside the box, you find ";
2330 IF SHO=0 THEN PRINT"a small shovel, ";
2340 IF BR=0 THEN PRINT"a whisk broom, ";
2350 IF BR=1 AND SHO=1 THEN PRINT"a stack of empty garbage bags.":GOTO 4690 ELSE PRINT"and a stack of empty garbage bags.":GOTO 4690
2370 SCE=20:GOSUB 4410:IF S2=0 THEN S2=1:S=S+10
2380 PRINT"There is an alley to the east.":GOTO 4690
2400 SCE=21
2410 PRINT"You reach the end of 90th street."
2420 PRINT"To the east, there is a small bank.":GOTO 4690
2450 IF TIME>80 THEN PRINT"The bank is closed.":GOTO 4690
2460 IF PANIC=2 THEN PRINT"The bank closes early.":GOTO 4690
2470 SCE=22
2480 PRINT"You walk up the steps to the bank."
2490 IF PANIC=1 THEN PANIC=2:PRINT"People screaming and running around in panic.":GOTO 4690
2500 PRINT"People are milling in and out.  Large lines of people stand in front"
2510 PRINT"of each bank teller.  Outside the bank, to the east, you see an"
2520 PRINT"armored truck, and an old man carring large sacks of money."
2530 GOTO 4690
2550 SCE=23
2560 IF MID$(A1$,1,1)="E"THEN PRINT"You walk down the steps from the bank."ELSE GOSUB 4440
2570 IF BKS=1 THEN 2650
2580 IF GUA=1 AND WEALTHY=1 THEN PRINT"The street is quiet.  A locked armored truck is parked near the bank's entrance.":PRINT"A security guard lies dead on the cement steps of the bank."
2590 IF GUA=1 AND WEALTHY=1 THEN PRINT"Another man lies dead behind the armored truck.":IF MOB=0 THEN PRINT"There is a money bag here.":GOTO 4690 ELSE 4690
2600 IF GUA=1 THEN PRINT"The security guard lies dead on the cement steps of the bank.":IF BANKFIRST=0 THEN PRINT"The wealthy man jumps into the truck and speeds away.":WEALTHY=-1:MOB=-1:BANKFIRST=1:GOTO 4690 ELSE 4690
2610 PRINT"A small armored truck is parked near the bank's entrance."
2620 PRINT"A very wealthy looking man, around fifty years old, is carrying                 sacks of money from the bank into the truck."
2630 PRINT"You notice a security guard standing here, closely watching you.":GOTO 4690
2650 IF RO=0 THEN PRINT"Four young men stand here, wearing ski masks and carrying small handguns.":PRINT"A dead security guard lies on the cement steps of the bank.":PRINT"The wealthy man, who was loading his truck with money, panics and jumps"
2660 IF RO=0 THEN PRINT"behind the truck.  One of the bank robbers runs after him, lifts him up         by the collar and forces the muzzle of his gun down the old man's throat.":TIME=47:T=1:GOTO 4690
2670 IF RO=-1 THEN PRINT"The street is quiet.  A locked armored truck is parked near the bank's entrance.":PRINT"A security guard lies dead on the cement steps of the bank."
2680 IF RO=-1 THEN PRINT"Another man lies behind the truck, his face cruely blown apart.":GOTO 4690
2690 IF WEALTHY=1 THEN PRINT"The dismal remains of six people are scattered about the street.":IF MOB=0 THEN PRINT"There is a money bag here.":GOTO 4690 ELSE 4690
2700 PRINT"The street is quiet.":PRINT"A security guard lies dead on the cement steps of the bank.":PRINT"Four other men, dressed in dark clothes and wearing ski-masks,":PRINT"also lie dead."
2710 IF BANKFIRST=0 THEN PRINT"The wealthy man jumps in his truck and speeds away.":MOB=-1:WEALTHY=-1:BANKFIRST=1:GOTO 4690 ELSE 4690
2730 PRINT
2740 PRINT"A sleek black car pulls up to the bank.  Four young men step out, wearing       ski masks and carrying small handguns.  The security guard reaches for his gun, but is shot down.  The wealthy man, who was loading his armored truck with"
2750 PRINT"money, panics and jumps behind the truck.  One of the bank robbers runs after   him, lifts him up by the collar and forces the muzzle of his gun down the       old man's throat.":TIME=47:GOTO 500
2770 SCE=24:GOSUB 4440:PRINT"There is an alley to the west":GOTO 4690
2790 SCE=25:NORTH=0
2800 PRINT"A small, rickety newstand is here.  It's closed for the night."
2810 PRINT"A few dusty magazines lie scattered on the ground."
2820 PRINT"There is a pile of discarded newspapers here.":GOTO 4690
2840 IF LEFT$(A1$,1)="S"THEN PRINT"A large barricade blocks the road.  A bright red triangular piece of metal      reads, 'ROAD CLOSED.  Extensive road repairs needed.'":GOTO 490
2850 PRINT"A barricade blocks the road.":GOTO 490
2870 SCE=27
2880 PRINT"You reach the west end of 100th street.":PRINT"Where the street ends, a large over-pass highway begins.":GOTO 4690
2900 SCE=28
2910 GOSUB 4470
2920 NORTH=1:IF NFIRST=1 THEN PRINT"There is a newstand to the south.":GOTO 4690 ELSE GOSUB 2980:GOTO 4690
2940 SCE=29
2950 CITY=0:M=0:GOSUB 4470
2960 NORTH=1:IF NFIRST=1 THEN PRINT"To the south is 80th street."ELSE GOSUB 2980
2970 PRINT"Directly north are two hotels, and a small restaurant.":GOTO 4690
2980 PRINT"You stand on a sidewalk, as the street is dense with traffic."
2990 PRINT"Large lamposts light the city street."
3000 S=S+10:NFIRST=1:RETURN
3020 SCE=30
3030 NORTH=0
3040 IF A1$="S"OR A1$="SOUTH"THEN PRINT"You enter 80th street."ELSE PRINT"You reach the end of 80th street."
3050 IF GANG3=1 THEN PRINT"You stumble over several dead teenagers.":GOTO 4690
3060 IF GANG3=-1 THEN PRINT"Several very drunk teenagers are here.":GOTO 3080
3070 PRINT"A large group of teenagers are here.  Empty liquor bottles line the street."
3080 IF MOB=1 THEN PRINT"A big, husky kid sees your money bag...":VM=1:GOTO 4690 ELSE IF GANG3=-1 THEN 4690
3090 PRINT"A big, husky kid grabs a bottle from one of his friends.":PRINT"He looks inside the bottle and finds it empty."
3100 PRINT"'You idiot!  You drank it all.  Now what am I suppose to drink?'"
3110 PRINT"He walks towards you and asks,":PRINT"'And what do you want?'":VM=1:GOTO 4690
3190 IF BH=1 THEN 3890
3200 IF DOORE=1 OR DOORW=1 THEN 3900
3210 IF D=-1 THEN 4300
3220 IF N=0 THEN 4640
3230 IF(M MOD 3)<>0 THEN 3820 ELSE N=N-1
3240 IF N=0 THEN PRINT"You enter 100th street.":GOTO 4690
3250 IF N=9 THEN 3800
3260 IF N<9 THEN PRINT"You walk up ";N$;" Street.":IF N=1 THEN PRINT"To the north is 100th street.":GOTO 4240 ELSE 3960
3270 PRINT"You walk up ";S$;" Street."
3280 IF N=10 AND M=15 AND LIGHT=0 THEN 4200 ELSE IF N=11 THEN 4240 ELSE 3960
3310 IF BH=1 THEN 3890
3320 IF DOORE=1 OR DOORW=1 THEN 3900
3330 IF D=-1 THEN 4300
3340 IF(N=10 OR N=11)AND M=15 AND LIGHT=0 THEN N=11:GOTO 4230
3350 IF M=1 THEN 3820
3360 IF(M MOD 3)<>0 THEN 3820 ELSE N=N+1
3370 IF N=9 THEN 3800
3380 IF N<9 THEN PRINT"You walk down ";N$;" Street.":IF N=1 THEN 4240 ELSE 3960
3390 PRINT"You walk down ";S$;" Street."
3400 IF N=10 AND M=15 AND LIGHT=0 THEN 4200 ELSE IF N=11 THEN 4240 ELSE 3960
3430 CITY=1
3440 IF N<>0 AND N<>9 THEN 3490
3450 IF M=12 AND N=9 THEN 3880 ELSE M=M+1
3460 IF N=0 THEN PRINT"You walk east on 100th street.":IF M=2 THEN 9450
3470 IF N=9 THEN PRINT"You walk east on 110th street.":IF M=8 THEN 4280
3480 IF(M MOD 3)=0 AND M<19 THEN 3720 ELSE 4690
3490 IF M=15 AND LIGHT=0 AND N=11 THEN 4230
3500 IF DOORE=1 THEN IF BH=1 THEN 3890 ELSE 3830
3510 IF DOORW=1 THEN DOORW=0:GOTO 3840
3520 IF D=-1 THEN 4340
3530 IF(N MOD 4)=0 THEN DOORE=1:GOTO 3910
3540 PRINT"There's nothing interesting over there.":GOTO 490
3570 IF N<>0 AND N<>9 THEN 3640
3580 IF M=2 THEN IF N=9 THEN M=1:PRINT"You reach the west end of 110th Street.":GOTO 4690
3590 IF M=1 THEN IF N=0 THEN 2940 ELSE 4510
3600 IF M=14 AND N=9 THEN 3880 ELSE M=M-1
3610 IF N=0 THEN PRINT"You walk west on 100th street"
3620 IF N=9 THEN PRINT"You walk west on 110th street.":IF M=8 THEN 4280
3630 IF(M MOD 3)=0 AND M<19 THEN 3720 ELSE 4690
3640 IF M=15 AND N=11 AND LIGHT=0 THEN 4230
3650 IF DOORW=1 THEN 3830
3660 IF DOORE=1 THEN DOORE=0:IF BH=1 THEN BH=0:GOTO 3840 ELSE 3840
3670 IF((N-2)MOD 4)=0 THEN DOORW=1:GOTO 3910
3680 PRINT"There's nothing interesting over there.":GOTO 490
3720 IF M=3 THEN N$="Oak":S$="Pearl":A=410
3730 IF M=6 THEN N$="Maple":S$="Fir":A=305
3740 IF M=9 THEN N$="Spruce":S$="Autumn":A=120
3750 IF M=12 THEN N$="Cove":S$="Hemlock":A=912
3760 IF M=15 THEN N$="Sarron":S$="Cedar":A=221
3770 IF M=18 THEN N$="Brook":S$="Tullamore":A=723
3780 IF N=0 THEN PRINT N$;" Street begins south."ELSE PRINT"You stop at a four-way intersection.":PRINT"110th street continues east, ";N$;" Street begins north,":PRINT"and ";S$;" Street begins south."
3790 GOTO 4690
3800 PRINT"You stop at a four-way intersection.":PRINT"110th street travels east and west, and ";:IF LEFT$(A1$,1)="S"THEN PRINT S$;" Street begins south."ELSE PRINT N$;" Street begins north."
3810 GOTO 4690
3820 PRINT"A metal fence blocks the way.":GOTO 490
3830 PRINT"The front door is locked.":GOTO 490
3840 IF N<9 THEN PRINT"You walk back to ";N$;" Street."ELSE PRINT"You walk back to ";S$;" Street."
3850 GOSUB 4050
3860 IF D=-1 THEN 4310
3870 IF M=15 AND LIGHT=0 AND N=10 THEN 4200 ELSE 4690
3880 PRINT"An over-turned semi-truck lies in the middle of the road, blocking the way.":PRINT"A tow truck is parked nearby, and three men stand next to it, arguing to each   other.":GOTO 490
3890 PRINT"Buy the house first, and then you can look around all you want.":GOTO 490
3900 PRINT"You can't climb over the porch.":GOTO 490
3910 PRINT"You walk up to the front porch."
3920 PRINT"A small attractive metal plate with the numbers '";
3930 PRINT USING"###";A+(2*N);:PRINT"'"
3940 PRINT"is attached to the front door.":GOTO 490
3960 IF(N MOD 4)=0 THEN PRINT"There is a house to the east."
3970 IF((N-2)MOD 4)=0 THEN PRINT"There is a house to the west."
3980 IF N=4 AND M<>3 AND M<>9 THEN 4090
3990 IF M=12 AND N=5 THEN 4170
4000 GOSUB 4050
4010 R=INT(RND(1)*20)
4020 IF R=3 OR R=4 THEN PRINT"An over-filled garbage truck drives by, leaving a small trail of garbage."
4030 IF R<2 THEN PRINT"An old man riding a bicycle peddles by."
4040 GOTO 4690
4050 IF M=15 AND N=16 AND DOORE=0 AND WEALTHY=1 THEN PRINT"A white wooden picket in the front lawn reads,":PRINT"'For sale.  Must move immediately'"
4060 RETURN
4090 IF M=6 THEN DOG$="A black German Shepard"
4100 IF M=12 OR M=18 THEN DOG$="A large Domermine Pincher"
4110 IF M=15 THEN DOG$="An ugly pit bull"
4120 PRINT DOG$;" comes trotting out of the front yard."
4130 PRINT"He sniffs you a few times, and begins to growl.":VM=1:DOG=1
4140 GOTO 4690
4170 PRINT"An old battered garbage bin lies here.":PRINT"A neat stack of square cardboard boxes, each one individualy wrapped in plastic,rests on the garbage bin.":GOTO 4690
4200 PRINT"Pieces of shattered glass lie near the base of a narrow lampost, which is held  securily in cement next to the sidewalk.  The top of the lampost, several feet  above the ground, reveals an empty light socket."
4210 PRINT"To the south is darkness.  The lamposts from 110th street provide just enough   light to be able to see here.":GOTO 4690
4230 PRINT"You stumble around in the dark.":GOTO 490
4240 PRINT"A row of mailboxes rests on a wooden plank, supported by two metal posts."
4250 IF N=1 THEN ST$=N$:AD=A+4:AF=AD+12 ELSE ST$=S$:AD=A+20:AF=AD+24
4260 PRINT"The adresses range from";AD;ST$;" Street to";AF;ST$;" Street."
4270 PRINT"Each mailbox is latched with a combination lock.":GOTO 4690
4280 IF CAR=0 THEN PRINT"A squad car, with full siren and flashing lights, speeds by."ELSE 4690
4290 PRINT"The tires squeel around a corner, and the squad car races down Pearl Street.":CAR=1:GOTO 4690
4300 PRINT"You collapse on the city street...":GOTO 9840
4310 PRINT"You can't continue much longer.":PRINT"Your reservoir of energy is completely drained."
4320 IF WEALTHY=-1 AND SON=1 THEN PRINT"The lights from the east come on!"
4330 GOTO 4690
4340 PRINT"You stumble up the porch steps and collapse."
4350 PRINT:PRINT"The dim city lights seem to fade and flicker.  Your body feels light, as if it  were floating softly throught the sky, drifting off to your dark and lonely     death."
4360 IF WEALTHY=-1 AND SON=-5 THEN 4370 ELSE 9840
4370 PRINT:PRINT"The dream shatters as you feel yourself gently lifted from the porch floor.     You try to focus on who it is that holds you, and slowly recognize the face."
4380 PRINT"He's the man at the bank, the one whose life you saved.":PRINT"He carries you into the house.":LOVE=1:GOTO 9930
4410 IF A1$="N"OR A1$="NORTH"THEN PRINT"You walk up 90th street.":RETURN
4420 IF A1$="S"OR A1$="SOUTH"THEN PRINT"You walk down 90th street.":RETURN
4430 PRINT"You enter 90th street.":RETURN
4440 IF A1$="N"OR A1$="NORTH"THEN PRINT"You walk up 80th street.":RETURN
4450 IF A1$="S"OR A1$="SOUTH"THEN PRINT"You walk down 80th street.":RETURN
4460 PRINT"You enter 80th street.":RETURN
4470 IF A1$="E"OR A1$="EAST"THEN PRINT"You walk east on 100th street.":RETURN
4480 IF A1$="W"OR A1$="WEST"THEN PRINT"You walk west on 100th street.":RETURN
4490 PRINT"You enter 100th street.":RETURN
4510 PRINT"You can't go that way.  The road ends.":GOTO 490
4520 PRINT"You can't go that way.":GOTO 490
4530 PRINT"The back door reads, 'EMPLOYEES ONLY'":GOTO 490
4540 PRINT"You bump into a brick wall.":GOTO 490
4550 PRINT"You try to open the back door."
4560 PRINT"The clerk tells you, 'Use the front door, that one's locked.'":GOTO 490
4570 PRINT"Why wander around in poverty stricken homes?":GOTO 490
4580 PRINT"Why wander around in broken down shacks?":GOTO 490
4590 PRINT"The rubble is too high to cross.":GOTO 490
4600 PRINT"You begin walking up the on-ramp to the freeway."
4610 PRINT"A sign on the side of the road reads, 'NO HITCH-HIKERS',"
4620 PRINT"and you turn and walk back.":GOTO 490
4630 PRINT"You can't enter the warehouse from this side.":GOTO 490
4640 PRINT"You start to cross the street.  Unfortunately though, you choose a wrong time   to cross.  You hear a deafening blast from a horn, and the sound of screeching"
4650 PRINT"tires.  You turn your head just long enough to see the front grill of a semi-   truck...":GOTO 9840
4690 IF DOORE=1 OR DOORW=1 THEN 490
4700 IF M=0 THEN SC=SCE+5 ELSE SC=VAL(STR$(M)+STR$(N))+50
4710 IF RK=SC THEN W$="rusty key":GOSUB 4840
4720 IF MEAT=SC THEN W$="chunk of raw meat":GOSUB 4840
4730 IF SON=SC THEN W$="child":GOSUB 4840
4740 IF DR=SC THEN W$="drill":GOSUB 4840
4750 IF(SCE=8 AND MOB=13 AND GANG=1)OR(SCE=15 AND MOB=20 AND GA2=1)THEN W$="money bag":GOSUB 4840
4760 IF SHO=SC THEN W$="shovel":GOSUB 4840
4770 IF BR=SC THEN W$="broom":GOSUB 4840
4780 IF GAB=SC THEN W$="garbage bag":GOSUB 4840
4790 IF MAG=SC THEN W$="magazine":GOSUB 4840
4800 IF NEWSPAPER=SC THEN W$="newspaper":GOSUB 4840
4810 IF SON=SC+10000 THEN W$="dead child":GOSUB 4840
4820 IF YBOX=SC OR YBOX=SC+10000 THEN W$="cardboard box":GOSUB 4840
4830 IF T=1 THEN T=0:GOTO 500 ELSE 490
4840 PRINT"There is a ";W$;" here."
4850 RETURN
4900 IF A1$="GET"THEN PRINT"Get what?":GOTO 500
4910 IF A1$="TAKE"THEN PRINT"Take what?":GOTO 500
4920 IF A1$="GRAB"THEN PRINT"Grab what?":GOTO 500
4930 IF M=0 THEN SC=SCE+5 ELSE SC=VAL(STR$(M)+STR$(N))+50
4940 GOSUB 10550
4950 IF A$="LIGHTBULB"THEN 5790
4960 IF DOORE=1 OR DOORW=1 THEN PRINT"You can't get anything here.":GOTO 500
4970 IF A$="KEY"OR A$="RUSTY"THEN 5150
4980 IF A$="BOTTLE"OR A$="WI"THEN 5180
4990 IF A$="MEAT"OR A$="CHUNK"OR A$="RAW"THEN 5240
5000 IF A$="CHILD"OR A$="YOUNG"THEN 5270
5010 IF A$="DR"THEN 5390
5020 IF A$="BAG"THEN PRINT"You must specify what type of bag, such as 'MON BAG'":GOTO 490
5030 IF A$="MON"THEN 5420
5040 IF A$="SHO"THEN 5580
5050 IF A$="WHISK"OR A$="BR"THEN 5600
5060 IF A$="GARBAGE"THEN 5620
5070 IF A$="MAG"OR A$="MAGS"THEN 5650
5080 IF A$="NEWSPAPER"OR A$="NEWSPAPERS"THEN 5680
5090 IF A$="BOX"OR A$="BOXES"OR A$="CARDBOARD"THEN 5710
5100 IF A$="LIST"OR A$="PRICE"THEN IF SCE=4 THEN PRINT"It's taped to the glass case.":GOTO 490 ELSE W$="price list":GOTO 5830
5110 IF SCE=4 THEN PRINT"If you want something here, you must buy it.":GOTO 490
5120 GOTO 10670
5150 IF(RK=0 AND SCE=1)OR RK=SC THEN IF C=3 THEN 5810 ELSE RK=1:GOTO 5820 ELSE W$="key":GOTO 5830
5180 IF WI=0 AND SCE=1 AND BUM=0 THEN IF C=3 THEN 5810 ELSE PRINT"You reach over and grab the bum's bottle.  He tries to stand up, but falls down.He reaches out and scowls, 'Hey you, gimme back me wine!'":WI=1:C=C+1:GOTO 490
5190 IF WI=0 AND SCE=1 THEN PRINT"The bum's bottle shattered when he collapsed to the ground.":GOTO 490
5200 IF WI=-3 AND SCE=1 THEN PRINT"You already drank the wine, remember?":GOTO 490
5210 W$="bottle of wine":GOTO 5830
5240 IF(MEAT=0 AND SCE=7)OR MEAT=SC THEN IF C=3 THEN 5810 ELSE MEAT=1:GOTO 5820 ELSE W$="raw chunk of meat":GOTO 5830
5270 IF SON=SC THEN IF C=3 THEN 5810 ELSE SON=1:GOTO 5820
5280 IF SON=0 AND BUR=1 AND SCE=10 THEN IF C=3 THEN 5810 ELSE 5310
5290 IF SON=SC+10000 THEN PRINT"You're really sick, you know that?":GOTO 500
5300 W$="child":GOTO 5830
5310 C=C+1:SON=1:S=S+10:PRINT"You carefully place him over your shoulders."
5320 PRINT"The child suddenly wakes up and mumbles, 'I...I was just going to"
5330 PRINT"the store.  I didn't see 'em coming.  They dragged me somewhere.  I"
5340 PRINT"told them my father was trying to help them, but they said they"
5350 PRINT"didn't want his help.  They liked the slums and the poverty, it was"
5360 PRINT"making them a lot of money... You know, the drugdealers":PRINT"I tried to get away, but they...' He falls back asleep.":GOTO 490
5390 IF(DR=0 AND SCE=16)OR DR=SC THEN IF C=3 THEN 5810 ELSE DR=1:C=C+1:PRINT"Taken.":PRINT"A plastic cover on the underside of the drill reveals":PRINT"a dry cell battery.":GOTO 490 ELSE W$="drill":GOTO 5830
5420 IF(SCE=8 AND MOB=13 AND GANG=1)OR(SCE=15 AND MOB=20 AND GA2<>0)THEN IF C=3 THEN 5810 ELSE MOB=1:MON=500000 !:GOTO 5820
5430 IF MOB=SC THEN PRINT"What do you expect them to do, give it back?":GOTO 490
5440 IF SCE<>22 THEN 5480
5450 IF PANIC=0 THEN PRINT"You walk over to one of the bank tellers and demand money.":PRINT"She frantically opens her cash register and pulls out several bundles of"
5460 IF PANIC=0 THEN PRINT"ten dollar bills.  You quickly grab them, but before you can turn around,":PRINT"a bullet from the security guard's gun pierces the back of your skull...":GOTO 9840
5470 PRINT"All the money has been gathered and placed in the bank's main vault.":PRINT"(the vault is locked)":GOTO 490
5480 IF SCE<>23 OR MOB<>0 THEN 5550
5490 IF BKS=1 THEN 5530
5500 IF WEALTHY=1 THEN IF C=3 THEN 5810 ELSE MOB=1:MON=500000 !:GOTO 5820
5510 IF GUA=1 AND GF=0 THEN PRINT"The old man grabs the security guard's gun.  He points it at you with trembling hands and says,":PRINT"'I've never killed anyone before, so please don't make me kill you..'":GF=1:GOTO 490
5520 IF GUA=1 AND GF=1 THEN PRINT"'Please, I don't want to kill you.'":GOTO 490 ELSE PRINT"You reach over and snatch a money bag.  The security guard pulls out his gun andshoots you.":GOTO 9840
5530 IF RO=1 THEN IF WEALTHY=1 THEN IF C=3 THEN 5810 ELSE MOB=1:MON=500000 !:GOTO 5820 ELSE 5510
5540 PRINT"You reach over and snatch a money bag.  One of the bank robbers grabs":PRINT"your hand and says, 'And just who do you think you are?'":8690
5550 PRINT"There isn't any money here.":GOTO 490
5580 IF(SHO=0 AND SCE=19 AND BOX=1)OR SHO=SC THEN IF C=3 THEN 5810 ELSE SHO=1:GOTO 5820 ELSE W$="shovel":GOTO 5830
5600 IF(BR=0 AND SCE=19 AND BOX=1)OR BR=SC THEN IF C=3 THEN 5810 ELSE BR=1:GOTO 5820 ELSE W$="broom":GOTO 5830
5620 IF(GAB=0 AND SCE=19 AND BOX=1)OR GAB=SC THEN IF C=3 THEN 5810 ELSE GAB=1:GOTO 5820 ELSE IF SCE=19 AND GAB<>0 THEN 5840 ELSE W$="garbage bag":GOTO 5830
5650 IF MAG=0 AND SCE=25 OR MAG=SC THEN IF C=3 THEN 5810 ELSE MAG=1:C=C+1:PRINT"Taken.":PRINT"It's cover is torn, but you think it's either 'Field and Stream' or":PRINT"'Fly Fisherman's Monthly.'":GOTO 490
5660 IF SCE=25 THEN 5840 ELSE W$="magazine":GOTO 5830
5680 IF(NEWSPAPER=0 AND SCE=25)OR NEWSPAPER=SC THEN IF C=3 THEN 5810 ELSE NEWSPAPER=1:GOTO 5820 ELSE IF SCE=25 THEN 5840 ELSE W$="newspaper":GOTO 5830
5710 IF YBOX=0 AND SC=175 OR YBOX=SC THEN IF C=3 THEN 5810 ELSE YBOX=1:GOTO 5820
5720 IF YBOX=SC+10000 THEN IF C=3 THEN 5810 ELSE YBOX=-1:GOTO 5820
5730 IF SC=175 THEN 5840
5740 IF SCE=16 OR SCE=13 THEN PRINT"The cardboard boxes are too large and bulky.":GOTO 480
5750 IF SCE=19 THEN PRINT"The box is too heavy.":GOTO 480
5760 W$="box":GOTO 5830
5790 IF YBOX=-1 AND LIGHTBULB=0 THEN LIGHTBULB=1:PRINT"Taken.":GOTO 480 ELSE W$="lightbulb":GOTO 5830
5810 PRINT"You're carrying too many things already.":GOTO 480
5820 C=C+1:PRINT"Taken.":GOTO 480
5830 PRINT"There isn't a ";W$;" here.":GOTO 480
5840 PRINT"You don't need another one.":GOTO 480
5870 IF A1$="DROP"THEN PRINT"Drop what?":GOTO 500
5880 IF M=0 THEN SC=SCE+5 ELSE SC=VAL(STR$(M)+STR$(N))+50
5890 I=5:GOSUB 10550
5900 IF DOORE=1 OR DOORW=1 THEN IF BH=1 THEN PRINT"Buy the house first, then you can do anything you want here.":GOTO 500 ELSE PRINT"This is a clean porch, let's keep it that way.":GOTO 500
5910 IF A$="KEY"OR A$="RUSTY"THEN IF RK=1 THEN RK=SC:GOTO 6100 ELSE 6110
5920 IF A$="BOTTLE"OR A$="WI"THEN IF WI=1 OR WI=-1 THEN W$="bottle":WI=-2:C=C-1:GOTO 6130 ELSE 6110
5930 IF A$="MEAT"OR A$="CHUNK"OR A$="RAW"THEN IF MEAT=1 THEN MEAT=SC:GOTO 6100 ELSE 6110
5940 IF A$="CHILD"THEN IF SON=1 THEN SON=SC:GOTO 6100 ELSE 6110
5950 IF A$="DR"THEN IF DR=1 THEN DR=SC:GOTO 6100 ELSE 6110
5960 IF A$="BAG"THEN PRINT"You must specify what type of bag, such as 'MON BAG'":GOTO 480
5970 IF A$="SHO"THEN IF SHO=1 THEN SHO=SC:GOTO 6100 ELSE 6110
5980 IF A$="WHISK"OR A$="BR"THEN IF BR=1 THEN BR=SC:GOTO 6100 ELSE 6110
5990 IF A$="GARBAGE"THEN IF GAB=1 THEN IF MOB=-2 THEN 6120 ELSE GAB=SC:GOTO 6100 ELSE 6110
6000 IF A$="MAG"OR A$="MAGS"THEN IF MAG=1 THEN MAG=SC:GOTO 6100 ELSE 6110
6010 IF A$="NEWSPAPER"OR A$="NEWSPAPERS"THEN IF NEWSPAPER=1 THEN NEWSPAPER=SC:GOTO 6100 ELSE 6110
6020 IF A$="BOX"OR A$="CARDBOARD"THEN IF YBOX<>1 AND YBOX<>-1 THEN 6110
6030 IF A$="BOX"OR A$="CARDBOARD"THEN IF YBOX=1 THEN YBOX=SC:GOTO 6100 ELSE IF LIGHTBULB<>0 THEN PRINT"Dropped.":PRINT"A gentle gust of wind blows the cardboard box away.":YBOX=-2:GOTO 480 ELSE YBOX=SC+10000:GOTO 6100
6040 IF A$="LIGHTBULB"THEN IF LIGHTBULB=1 THEN LIGHTBULB=-2:W$="lightbulb":GOTO 6130 ELSE 6110
6050 IF A$="MON"THEN IF MON>0 THEN 6120 ELSE 6110
6060 IF A$="GUN"OR A$="HANDGUN"THEN IF GUN=1 THEN 6120 ELSE 6110
6070 IF A$="AMMUNITION"OR A$="BULLETS"OR A$="6"OR A$="CLIP"THEN IF AMMO>0 THEN 6120 ELSE 6110
6080 GOTO 10670
6100 PRINT"Dropped.":C=C-1:GOTO 480
6110 PRINT"You don't have that.":GOTO 480
6120 PRINT"I wouldn't drop that if I were you.":GOTO 480
6130 PRINT"The ";W$;" shatters as it hits the ground.":GOTO 480
6170 IF A1$="BUY"THEN PRINT"Buy what?":GOTO 480
6180 IF SCE=4 THEN 6230
6190 IF BH=1 AND A1$="BUY HOUSE"THEN A$="YES":GOTO 8230
6200 PRINT"You can't buy anything here.":GOTO 480
6230 A$=MID$(A1$,5,3)
6240 IF A$="LIS"OR A$="PRI"THEN PRINT"That's not for sale.":GOTO 480
6250 IF A$="GUN"OR A$="HAN"THEN IF MON>19 AND GUN=0 THEN PRINT"You purchase a gun for $20.":GUN=1:C=C+1:MON=MON-20:GOTO 6320 ELSE IF MON>19 AND GUN=1 THEN PRINT"You already have a gun.":GOTO 480 ELSE IF MON>19 AND GUN=-1 THEN 6340 ELSE 6330
6260 IF A$="RIF"OR A$="22 "THEN IF MON>249 THEN PRINT"Sorry, but a group of teenagers just came in and bought every rifle we had.     They looked real upset about something.":GOTO 6320 ELSE 6330
6270 IF A$="6 R"OR A$="CLI"OR A$="BUL"OR A$="AMM"THEN IF MON>4 THEN PRINT"You purchase a 6 round clip for $5.":AMMO=AMMO+6:MON=MON-5:GOTO 6320 ELSE 6330
6280 IF A$="SHO"OR A$="12 "THEN IF MON<150 THEN 6330 ELSE 6310
6290 IF A$="BOW"THEN IF MON<35 THEN 6330 ELSE 6310
6300 I=4:GOSUB 10550:GOTO 10670
6310 PRINT"Sorry, we're all out of those."
6320 PRINT"Anything else?":GOTO 480
6330 PRINT"You don't have enough money.":GOTO 480
6340 PRINT"Sorry, I sold the last one just for a few hours ago.":GOTO 480
6390 IF A1$="TURN"THEN PRINT"What do you want to turn on?":GOTO 480
6400 IF DR<>1 THEN PRINT"You can't turn anything here.":GOTO 480
6410 IF A1$="TURN DR ON"OR A1$="TURN ON DR"THEN IF TURN=0 THEN PRINT"The drill's bit starts spinning.":TURN=1:GOTO 480 ELSE IF TURN=1 THEN PRINT"It's already on.":GOTO 480 ELSE PRINT"The battery is dead.":GOTO 480
6420 IF A1$="TURN DR OFF"OR A1$="TURN OFF DR"THEN IF TURN=0 THEN PRINT"It isn't on.":GOTO 480 ELSE IF TURN=1 THEN PRINT"The drill's bit stops spinning.":TURN=0:GOTO 480 ELSE PRINT"The battery is dead.":GOTO 480
6430 I=5:GOSUB 10550:GOTO 10670
6470 IF A1$="GIVE"THEN PRINT"What is it you want to give?":GOTO 480
6480 I=5:GOSUB 10550
6490 IF A$="WI"OR A$="BOTTLE"THEN 6540
6500 IF A$="MEAT"OR A$="CHUNK"OR A$="RAW"THEN 6660
6510 RT1=1:GOSUB 10670:PRINT"If you want to give an object to someone,":PRINT"type 'GIVE (object) to (person)'":GOTO 480
6540 IF WI<>1 AND WI<>-1 THEN PRINT"You don't have the bottle of wine.":GOTO 480 ELSE IF SCE=30 AND GANG3=0 THEN 6600
6550 IF SCE<>1 OR BUM=1 THEN PRINT"Nobody wants your bottle of wine here.":GOTO 480
6560 IF WI=1 THEN PRINT"He grabs his bottle back, mumbles something, and resumes his drinking.":WI=0:C=C-1:GOTO 480
6570 IF WI=-1 THEN PRINT"The bum grabs his bottle back, and finding it empty scowls,":PRINT"'You thief, you drank all me wine!  Now you git to a store and":PRINT"buy me some more!'":WI=-3:C=C-1:GOTO 480
6600 IF WI<>1 THEN PRINT"You don't have any wine.":GOTO 480
6610 IF MOB=1 THEN 9710
6620 PRINT"You take a swig to show him that the wine is drinkable.":PRINT"You hand him the bottle and he smiles.":PRINT"'Man, you're ok'":WI=-2:GANG3=-1:C=C-1
6630 IF DE=0 THEN VM=0:GOTO 490 ELSE 490
6660 IF MEAT<>1 THEN PRINT"You don't have any meat.":GOTO 480
6670 IF DOG<>1 THEN PRINT"Nobody wants your chunk of raw meat here.":GOTO 480
6680 PRINT"The dog leaps up and grabs the meat from your hand,":PRINT"nearly biting off a couple of your fingers along with it.":PRINT"He trotts off to the front lawn and gobbles down the raw chunk of meat."
6690 DOG=0:MEAT=-1:S=S+10:C=C-1:VM=0:GOTO 480
6730 IF A1$="OPEN"THEN PRINT"What do you want to open?":GOTO 480
6740 I=5:GOSUB 10550
6750 IF((A$="BOX"OR A$="PADLOCK"OR A$="LOCK")AND SCE=19 AND BOX=0)OR(A$="DOOR"AND SCE=3)THEN IF LEN(A$)+5=LEN(A1$)THEN PRINT"It's locked.":GOTO 480 ELSE I=LEN(A$)+6:GOSUB 10550:GOTO 10670
6760 IF A$="MON"OR A$="BAG"THEN IF MOB=1 THEN PRINT"You untie the string and open the bag of money.":PRINT"You smile.  You've pulled off at least half a million.":PRINT"You tie the string back on.":GOTO 480
6770 IF DOORE=1 OR DOORW=1 THEN IF A$="DOOR"AND BH=0 THEN PRINT"You can't open the door.":PRINT"You might try knocking, though.":GOTO 480
6780 IF A$="BOX"OR A$="CARDBOARD"THEN IF YBOX=1 THEN PRINT"You tear the plastic off, and open the carboard box.":PRINT"Inside is a large, round lightbulb.":YBOX=-1:GOTO 490
6790 IF(SCE=19 AND BOX=0)OR YBOX=1 THEN 10670 ELSE PRINT"You can't open anything here.":GOTO 480
6840 IF BH=1 THEN PRINT"You can't knock on anything here.":GOTO 500
6850 IF M=15 AND N=16 AND DOORE=1 THEN 6870
6860 IF DOORE=1 OR DOORW=1 OR SCE=3 THEN PRINT"Nobody answers the door.":GOTO 480 ELSE PRINT"You can't knock on anything here.":GOTO 480
6870 IF(WEALTHY=-1 AND SON<>1)OR D=-1 THEN 6860
6880 PRINT"The porch light comes on."
6890 PRINT"The door opens, and an elderly lady steps out."
6900 IF WEALTHY=1 AND SON<>1 THEN 6910 ELSE 7000
6910 PRINT"She quietly says, 'I suppose you've come to look at the house...Please come in.'":PRINT"You step inside, and are seated at a large mahogany table.":PRINT
6920 PRINT"As she shuffles through some papers on the table, you gaze at the enormous      amount of wealth accumulated here.  A brilliant glass chandelier glistens above you, gold statues stand on a winding marble staircase, and magnificant paintings"
6930 PRINT"stand unblemished on the walls around you.":PRINT
6940 PRINT"She takes out a piece of paper and says, 'The cost of the house is $460,000.    It comes complete with food and is suitably furnished.  A full time maid lives  upstairs.  As you may have noticed, the cost is only a fraction of the true"
6950 PRINT"value of this home.  It's just that when my son disappeared I...'":PRINT:PRINT"She pauses for a second, and then continues,"
6960 PRINT"'I knew he had been kidnapped.  I was just waiting for the ransom note to       arrive, but none ever came.  After my husband was murdered, I knew what they    wanted.  They didn't want our money.  They wanted us dead..."
6970 PRINT:PRINT"After a long strech of silence, she looks up and asks,"
6980 PRINT"'Well, are you interested?'":BH=1:D=1:GOTO 490
6990 PRINT"She see's her son slumped over your shoulders and takes him from you."
7000 PRINT"She graciously thanks you for finding her son, and carries him into the house.":PRINT"The porch light goes out."
7010 PRINT:PRINT"You stand confused for a few seconds, and then slowly slump to the ground in a  state of dispair.  Every little bit of energy you had seems gone."
7020 D=-1:S=S+10:SON=-5:GOTO 480
7070 IF A1$="USE"THEN PRINT"Use what?":GOTO 480
7080 I=4:GOSUB 10550
7090 IF A$="KEY"OR A$="RUSTY"THEN IF RK<>1 THEN PRINT"You don't have a key.":GOTO 480 ELSE IF SCE=3 OR(SCE=19 AND BOX=0)OR DOORE=1 OR DOORW=1 THEN IF BH=0 THEN PRINT"The key doesn't fit.":GOTO 480
7100 IF A$="DR"THEN IF DR<>1 THEN PRINT"You don't have the drill.":GOTO 480 ELSE IF TURN=0 THEN PRINT"The drill isn't on.":GOTO 480 ELSE IF TURN=2 THEN PRINT"The battery is dead.":GOTO 480
7110 IF A$="DR"THEN IF SCE=19 AND BOX=0 THEN PRINT"The padlock falls to the ground.":BOX=1:S=S+10:GOTO 2320
7120 IF A$="SHO"THEN 7430
7130 IF SCE=19 AND BOX=0 THEN 10670 ELSE PRINT"You can't use anything here.":GOTO 480
7170 IF A1$="READ"THEN PRINT"What do you want to read?":GOTO 480
7180 I=5:GOSUB 10550
7190 IF A$="MAG"THEN IF MAG=1 THEN PRINT"The magazine is too torn and dusty to read.":GOTO 480 ELSE PRINT"You don't have a magazine.":GOTO 480
7200 IF A$="DISCARDED"OR A$="NEWSPAPER"OR A$="NEWSPAPERS"THEN IF NEWSPAPER=1 THEN 7340 ELSE PRINT"You don't have a newspaper.":GOTO 480
7210 IF A$="PRICE"OR A$="LIST"THEN IF SCE=4 THEN 7250 ELSE PRINT"There isn't a price list here.":GOTO 480
7220 IF MAG<>1 AND NEWSPAPER<>1 AND SCE<>4 THEN PRINT"You can't read anything here.":GOTO 480 ELSE 10670
7250 PRINT:PRINT"             J & M'S Sportsman Equipment"
7260 PRINT:PRINT"    Handgun                              .....20.00"
7270 PRINT"    6 round clip                         ......5.00"
7280 PRINT"    22 rifle                             ....250.00"
7290 PRINT"    12 guage shotgun                     ....150.00"
7300 PRINT"    Bow/arrow set                        .....35.00"
7310 GOTO 480
7340 PRINT"It's dated January 12.":PRINT"Big bold letters on the front page read,":PRINT:PRINT"             SON DISAPPEARS, FAMILY FEARS KIDNAPPING.":PRINT
7350 PRINT"  Early this morning, the well-known Mr. and Mrs. Whittinger reported their     thirteen year old son, Rondell Whittinger, missing.  According to Mrs.          Whittinger, Rondell left the house at around 6:30 p.m. to buy something at"
7360 PRINT"J & M's Sporting Store.  She said he never returned home."
7370 PRINT"  Mr. Whittinger believes he was kidnapped, even though no evidence of          kidnapping has yet been produced.  Police authorities continue to search 80th   and 90th street, where the child was last seen."
7380 PRINT"  The Whittinger family has contributed a great deal to the city, showing       special concern for the southern parts, where poverty continues to prevail"
7390 PRINT"despite prior attempts to erradicate it.  If you have any information, please   contact the police.  You may also contact Mr. and Mrs. Whittinger at their home at 253 Cedar Street.":GOTO 480
7430 IF SHO<>1 THEN PRINT"You don't have a shovel.":GOTO 480
7440 IF SCE=9 THEN PRINT"You dig a small hole in the mound of rubble.":GOTO 480
7450 IF SCE<>10 OR BUR=1 THEN PRINT"You can't dig anything here.":GOTO 480
7460 PRINT"You begin digging through the gravel and rocks."
7470 PRINT"The tip of your shovel hits something and you carefully"
7480 PRINT"remove the remaining rocks and dirt by hand."
7490 PRINT"You uncover a child, around 13 or 14 years old.":PRINT"He's unconscious, but still alive.":S=S+10:BUR=1:GOTO 480
7530 IF A1$="PUT"THEN PRINT"Put what?":GOTO 480
7540 IF MID$(A1$,5,5)="MON"THEN IF RIGHT$(A1$,6)="IN BAG"OR RIGHT$(A1$,11)="GARBAGE BAG"THEN 7590
7550 IF MID$(A1$,5,9)="LIGHTBULB"THEN IF RIGHT$(A1$,6)="SOCKET"OR RIGHT$(A1$,7)="LAMPOST"THEN 7640
7560 I=4:GOSUB 10550:RT1=1:GOSUB 10670:PRINT"If you want to put an object into another object,":PRINT"type 'PUT (object) IN (object)'":GOTO 480
7590 IF MOB<>1 THEN PRINT"You don't have the money bag.":GOTO 480
7600 IF GAB<>1 THEN PRINT"You don't have a garbage bag.":GOTO 480
7610 PRINT"You untie the string on the money bag and open it.":PRINT"You smile.  You've pulled off at least half a million.":PRINT"You stuff the money into the garbage bag. (discarding the empty money bag)":MOB=-2:C=C-1:GOTO 480
7640 IF LIGHTBULB<>1 THEN PRINT"You don't have a lightbulb.":GOTO 480
7650 IF M<>15 OR N<>10 OR LIGHT=1 OR DOORW=1 THEN PRINT"You can't do that.":GOTO 500
7660 PRINT"Done.":PRINT"A strong light emits from the lampost, lighting up Cedar street.":LIGHT=1:LIGHTBULB=-1:S=S+10:GOTO 480
7700 IF WI=1 THEN PRINT"You take a swig from the bum's bottle.":PRINT"hhhhmm!  Not bad for a 1985 vintage.":PRINT"You finish off the rest of the bottle.":WI=-1:GOTO 480
7710 PRINT"You don't have anything to drink.":GOTO 480
7750 IF A1$="EAT"THEN PRINT"What do you want to eat?":GOTO 480
7760 IF A1$="SWALLOW"THEN PRINT"What do you want to swallow?":GOTO 480
7770 GOSUB 10550
7780 IF A$="MEAT"OR A$="RAW"OR A$="CHUNK"THEN IF MEAT=1 THEN PRINT"You swallow the raw chunk of decayed meat.":PRINT"(HHMMmmm, Wasn't that tasty?)":MEAT=-1:C=C-1:GOTO 480 ELSE PRINT"You don't have the chunk of raw meat.":GOTO 480
7790 IF MEAT<>1 THEN PRINT"You can't eat anything here.":GOTO 480 ELSE 10670
7830 PRINT"You are carrying"
7840 IF GUN=1 AND AMMO=0 THEN PRINT" A gun.":GOTO 7880
7850 IF GUN<>1 AND AMMO>0 THEN PRINT AMMO;"bullets.":GOTO 7880
7860 IF GUN=1 AND AMMO=1 THEN PRINT" A gun with one bullet.":GOTO 7880
7870 IF GUN=1 THEN PRINT" A gun with";AMMO;"bullets."
7880 IF DR=1 THEN PRINT" A drill."
7890 IF WI=1 THEN PRINT" A bottle of wine."
7900 IF WI=-1 THEN PRINT" An empty bottle."
7910 IF RK=1 THEN PRINT" A rusty key."
7920 IF SON=1 THEN PRINT" A child."
7930 IF SHO=1 THEN PRINT" A small shovel."
7940 IF NEWSPAPER=1 THEN PRINT" A newspaper."
7950 IF MAG=1 THEN PRINT" A magazine."
7960 IF MEAT=1 THEN PRINT" A chunk of raw meat."
7970 IF BR=1 THEN PRINT" A whisk broom."
7980 IF YBOX=1 THEN PRINT" A cardboard box."
7990 IF YBOX=-1 THEN PRINT" An open carboard box.":IF LIGHTBULB=0 THEN PRINT" The box contains a lightbulb."
8000 IF LIGHTBULB=1 THEN PRINT" A lightbulb."
8010 IF MOB=-2 THEN PRINT USING" ###,###";MON;:PRINT" dollars stuffed into a garbage bag.":GOTO 480
8020 IF GAB=1 THEN PRINT" An empty garbage bag."
8030 IF MOB=1 THEN PRINT" A money bag.":GOTO 480
8040 IF MON>0 THEN PRINT MON;"dollars."
8050 GOTO 480
8080 PRINT"Your score is";S;"points out of a possible 200."
8090 IF K>0 THEN PRINT"As of this moment, you are following an evil path."ELSE PRINT"As of this moment, you are following an honest path."
8100 GOTO 480
8130 IF SCE=4 THEN 8190
8140 IF BH=1 THEN 8230
8150 IF A$="YES"THEN PRINT"You sound quite positive."ELSE PRINT"You sound quite negative."
8160 GOTO 480
8190 IF A$="YES"THEN PRINT"What is it you want to buy?":GOTO 480
8200 IF GUN=1 OR AMMO>0 THEN PRINT"The clerk smiles politely, and leaves the table.":GOTO 480 ELSE PRINT"The clerk frowns, and leaves the table.":GOTO 480
8230 IF A$="YES"THEN IF MON>459000 !THEN PRINT"You sign the contract.":GOTO 9930 ELSE IF MON=0 THEN PRINT"You don't any money.":GOTO 480 ELSE PRINT"You only have";MON;"dollars.":GOTO 480
8240 PRINT"She sighs and says, 'ok.'":GOTO 480
8280 IF GUN<>1 THEN PRINT"You don't have a gun.":GOTO 480
8290 IF AMMO=0 THEN PRINT"You don't have any bullets.":GOTO 480
8300 I=6:GOSUB 10550
8310 IF M=0 THEN SC=SCE+5 ELSE SC=VAL(STR$(M)+STR$(N))+50
8320 IF(A$="CHILD"OR A$="YOUNG")THEN 8450
8330 IF SCE=1 AND BUM=0 THEN 8520
8340 IF SCE=8 AND GANG=0 THEN 8560
8350 IF SCE=12 AND MOG=0 THEN 8610
8360 IF SCE=15 AND GA2<>1 THEN 8650
8370 IF SCE=30 AND GANG3<>1 THEN 8730
8380 IF SCE=23 AND BKS=0 AND MOB<>-1 THEN 8790
8390 IF SCE=23 AND MOB<>-1 THEN 8850
8400 IF SCE=2 AND(A$="CHILDREN"OR A$="CHILD"OR A$="THEM")THEN PRINT"You're really sick, you know that?":GOTO 480
8410 IF SCE=4 THEN PRINT"The clerk grabs a gun from under the table.":PRINT"He pulls the trigger before you even have a chance to aim...":GOTO 9840
8420 GOTO 9000
8450 IF BUR=0 THEN 8490
8460 IF(SCE=10 AND SON=0)OR(SON=SC)THEN PRINT"You place the muzzle of your gun against the back of the child's head.":PRINT"You close your eyes and pull the trigger.":SON=SC+10000:K=K+1:AMMO=AMMO-1:GOTO 480
8470 IF SON=1 THEN PRINT"You throw the child off your shoulders and kill him.":AMMO=AMMO-1:K=K+1:C=C-1:IF M=0 THEN SON=SC+10000:GOTO 480
8480 IF SON=SC+10000 THEN PRINT"He's already dead.":GOTO 480
8490 PRINT"The child isn't here.":GOTO 480
8520 PRINT"You raise your gun and fire.  The drunkard collapses to the ground."
8530 BUM=1:AMMO=AMMO-1:K=K+1:GOTO 480
8560 IF AMMO<3 THEN 8990
8570 PRINT"You raise your gun and fire.  The first one collapses to the ground.":PRINT"You aim again and fire.  The gun recoils, and you fire again."
8580 GANG=1:AMMO=AMMO-3:VM=0:K=K+3:IF MOB=SC THEN PRINT"There is a money bag here.":GOTO 480 ELSE 480
8610 IF AMMO<20 THEN 8990
8620 PRINT"You raise your gun and fire.  Several seconds later, (after exhausting":PRINT"nearly four clips of ammunition), each biker lies still on the street.":K=K+20:MOG=1:AMMO=AMMO-20:VM=0:GOTO 480
8650 IF GA2=-1 THEN PRINT"Don't you have any pity in your heart?  Let the child mourn in peace.":GOTO 480
8660 IF AMMO<2 THEN 8990
8670 PRINT"You raise your gun to the closest one and fire.  The bullet hits him in the     chest and he falls backwards.  Instead of fleeing, the other two teenagers"
8680 PRINT"run to his side.  They kneel down and find his chest wound fatal.  One of       them pulls out a dagger, and charges at you, screaming that you'll pay for      what you've done.  You raise your gun to him and fire."
8690 PRINT"The other teenager, alone now; his two friends dead, doesn't move.  He rests    his head on his brothers blood-torn chest, weeping bitterly."
8700 VM=0:GA2=-1:AMMO=AMMO-2:K=K+2:IF MOB=SCE+5 THEN PRINT"There is a money bag here.":GOTO 480 ELSE 480
8730 IF GANG3=-1 THEN PRINT"You raise your gun to the closest one and fire."ELSE PRINT"You raise your gun point-blank at his head and fire."
8740 PRINT"He collapses to the ground."
8750 PRINT"The other teenagers attack you, throwing rocks and glass bottles."
8760 PRINT"A sharp rock hits your forehead...":GOTO 9840
8790 IF A$="GUA"OR A$="SECURITY"THEN IF GUA=0 THEN PRINT"You quickly raise your gun and fire.  The security guard falls to the ground.":GUA=1:PANIC=1:AMMO=AMMO-1:K=K+1:GOTO 8960 ELSE 8970
8800 IF A$="OLD"OR A$="WEALTHY"THEN IF WEALTHY=0 THEN PRINT"You aim your gun at the old man and fire.":PRINT"The bullet strikes him in the chest, and he falls down.":WEALTHY=1:PANIC=1:AMMO=AMMO-1:K=K+1:GOTO 8820 ELSE 8970
8810 IF GUA=1 AND WEALTHY=1 THEN 9000 ELSE 9010
8820 IF GUA=0 THEN PRINT"The guard's slow reflexes finally react and he pulls out his gun...":GOTO 9840 ELSE PRINT"He drops his money bag.":GOTO 480
8850 IF A$<>"FOUR"AND A$<>"BANK"AND A$<>"RO"THEN 8880
8860 IF AMMO<4 AND RO=0 THEN 8990
8870 IF RO=0 THEN PRINT"You raise your gun to them and fire.  Each one falls dead.":RO=1:AMMO=AMMO-4:S=S+20:GOTO 8960 ELSE 8980
8880 IF A$="GUA"OR A$="SECURITY"THEN 8970
8890 IF A$<>"OLD"AND A$<>"WEALTHY"THEN 8930
8900 IF WEALTHY=1 THEN 8970
8910 PRINT"You aim your gun at the old man and pull the trigger.":AMMO=AMMO-1:WEALTHY=1:K=K+1:IF RO=1 THEN PRINT"The bullet strikes him in the chest, and he falls down.":PRINT"He drops his money bag.":GOTO 480
8920 PRINT"The robbers grab the money bag, jump into their car, and speed away.":MOB=-1:RO=-1:GOTO 480
8930 IF RO=1 AND WEALTHY=1 THEN 9000 ELSE 9010
8960 PRINT"The old man stares at you, panic-stricken,":PRINT"holding a money bag in his hand.":GOTO 480
8970 PRINT"He's already dead.":GOTO 500
8980 PRINT"They're already dead.":GOTO 500
8990 PRINT"You don't have enough ammunition to kill them.":GOTO 500
9000 PRINT"You can't kill anybody here.":GOTO 500
9010 PRINT"I don't understand who you are trying to kill.":GOTO 500
9060 IF DR=1 AND S3=0 THEN S3=1:S=S+10
9070 IF WI=1 AND S4=0 THEN S4=1:S=S+10
9080 IF(YBOX=1 OR YBOX=-1)AND S5=0 THEN S5=1:S=S+10
9090 IF NEWSPAPER=1 AND S6=0 THEN S6=1:S=S+10
9100 IF MEAT=1 AND S7=0 THEN S7=1:S=S+10
9110 IF SHO=1 AND S8=0 THEN S8=1:S=S+10
9140 TIME=TIME+1
9150 IF(TIME=125 OR TIME>130)AND NORTH=0 THEN 9350
9160 IF TIME>240 THEN 10130
9170 IF TIME=44 THEN IF GUA=0 THEN BKS=1:GUA=1:PANIC=1:IF SCE=23 THEN 2730 ELSE PRINT"You hear a gunshot!"
9180 IF TIME>46 AND RO=0 AND BKS=1 THEN PRINT"You hear another gunshot!":WEALTHY=1:RO=-1:MOB=-1
9190 IF TURN=1 THEN DRTIME=DRTIME+1:IF DRTIME=10 THEN TURN=2:IF DR=1 THEN PRINT"The drill's bit stops spinning."
9200 GOTO 500
9240 HOURS=(TIME*2+120)\60
9250 MI=(TIME*2+120)MOD 60
9260 IF HOURS>12 THEN HOURS=HOURS-12
9270 PRINT"According to your watch, the time is";
9280 IF HOURS>9 THEN PRINT" ";
9290 IF MI<10 THEN PRINT USING"##:0#.";HOURS,MI:GOTO 9310
9300 PRINT USING"##:##.";HOURS,MI
9310 TIME=TIME-1:GOTO 480
9350 IF TIME=125 THEN PRINT"The sun's going down.  You had better hurry!":TIME=126:PRINT:GOTO 500
9360 IF TIME>130 AND SCE=4 AND NOFIRST=0 THEN PRINT:PRINT"Night falls.":PRINT"The sales clerk looks outside and tells you,":PRINT"'If I were you, I'd leave real soon.  It gets pretty hairy out there at this"
9370 IF TIME>120 AND SCE=4 AND NOFIRST=0 THEN PRINT"time of night.  Heck, I wouldn't go out there without a flashlight and a good   rifle.'":NOFIRST=1:GOTO 500
9380 IF SCE=4 THEN 500
9390 IF TIME>130 THEN PRINT:IF NOFIRST=0 AND TIME<140 THEN PRINT"Night falls.  Dark shadows surround you."ELSE PRINT"Dark shadows surround you."
9400 PRINT"Someone whispers in the dark, 'Hey skum face,  Just who do you think you are,   walking around here late at night?'"
9410 PRINT"You gasp as he slices your throat with his knife.":GOTO 9840
9450 IF DROPGUN=0 AND GUN=1 THEN PRINT"You slip on the pavement and fall down.  You wipe the dust off your knees       and stand back up.  You realize you've dropped your gun!  You search the        ground, but can't find it.":GOTO 9470
9460 GOTO 480
9470 DROPGUN=1:GUN=-1:AMMO=0:C=C-1:GOTO 480
9510 IF A1$="NORTH"OR A1$="N"OR A1$="SOUTH"OR A1$="S"THEN 9550
9520 IF A1$="EAST"OR A1$="E"OR A1$="WEST"OR A1$="W"THEN 9550
9530 GOTO 10660
9550 VM$=LEFT$(A1$,1):VM=0
9560 IF START=0 THEN START=1:GOTO 920
9570 IF DOG=1 THEN PRINT"The dog snarls and lunges at you.  His razor sharp teeth":PRINT"clamp into your leg.  He jerks his head back and forth,":PRINT"trying to tear your leg apart.":PRINT"Your frutile attempt to escape fails.":GOTO 9840
9580 IF SCE=30 OR DE=1 OR DE=2 THEN 9690
9590 IF SCE<>12 THEN PN=PN+1:GOTO 9760
9620 IF LA$="N"AND VM$<>"S"THEN 9660
9630 IF LA$="S"AND VM$<>"N"THEN 9660
9640 IF LA$="E"AND VM$<>"W"THEN 9660
9650 GOTO 920
9660 PRINT"The motorcycle gang beats you to death using clubs and chains...":GOTO 9840
9690 IF DE=1 THEN VM=1:DE=2:GOTO 920
9700 IF DE=2 THEN PRINT"A dizzy spells hits, and you fall to the ground.":PRINT"Seems like that last blow was just too much for you...":GOTO 9840
9710 IF MOB=1 THEN PRINT"A blow from his fist sends you to the ground.":PRINT"He grabs the money bag and runs off.":VM=1:DE=2:MOB=-1:MON=0:GANG3=-1:GOTO 480
9720 PRINT"A blow from his fist sends you to the ground.":PRINT"One of his friends yells, 'Leave him alone, Lue.  I'll find you some booze.'":PRINT"He gives his friend a dirty look, and mumbles 'Yeah, sure you will.'"
9730 VM=1:DE=1:GOTO 480
9760 IF PN=1 THEN PRINT"You try to get away, but the leader strikes you with his chain, and the others  attack you.  You barely manage to escape.":GOTO 9800
9770 IF PN=2 THEN PRINT"The teenagers grab and beat you.  One of them carries a knife, and he is doing  his best to kill you with it.  You finally break loose from their hold and run"
9780 IF PN=2 THEN PRINT"off.  You sit down and tear off a strip from your shirt.  You wrap it around    your leg, trying desperately to stop the bleeding from a large gaping wound.":GOTO 9800
9790 IF PN=3 THEN PRINT"You try to run off, but your wounded leg slows you down.":PRINT"They quickly catch up to you.  This time, you don't get away...":GOTO 9840
9800 IF MOB=1 THEN PRINT"They've stolen your money bag.":MOB=SCE+5:MON=0:PRINT:C=C-1:GOTO 920 ELSE PRINT:GOTO 920
9840 PRINT:PRINT"*** You died. ***":PRINT"    too bad."
9850 PRINT:PRINT"Your score is";S;"points out of a possible 200."
9860 IF K>0 THEN PRINT"You have been following a very evil path.":PRINT
9870 INPUT"Another game? (Y/N) ",an$
9880 IF LEFT$(an$,1)="N"OR LEFT$(an$,1)="n"THEN END
9890 CLEAR:RUN
9930 PRINT:PRINT"**** YOU WIN! ****":PRINT CHR$(7)
9940 IF LOVE=1 THEN IF K=0 THEN 10020 ELSE 10060
9970 PRINT:PRINT"You had to choose good or evil, and you choose a very evil path.     You murdered";K;"innocent people.":PRINT
9980 PRINT"You are an evil person.  You will lie, cheat and steal to achieve self":PRINT"satisfaction.  You chose dishonest and malicious tactics to overcome the"
9990 PRINT"obstacles in this game.  Shall I infer that you would overcome similar":PRINT"obstacles in real life situations the same way?":GOTO 10080
10020 PRINT:PRINT"You had to choose good or evil, and you chose an honest path.":PRINT"You risked your life to save two innocent people.  You win this game with the"
10030 PRINT"highest possible score, and are worthy of the greatest medal ever offered for   courage and bravery!":S=200:GOTO 10080
10060 PRINT:PRINT"You had to choose good or evil, and you chose an honest path.":PRINT"You risked your life to save two innocent people.  You were forced to kill"
10070 PRINT"four bank robbers.  But you also killed other people.  Why?  Did you think that you had to kill them?"
10080 PRINT:PRINT"Your score is";S;"points out of a possible 200."
10090 IF S=200 THEN END ELSE 9870
10130 IF TIME>315 THEN PRINT"You collapse on the city street...":GOTO 9840
10140 IF TIME>285 AND PN=2 THEN 10270
10150 IF TIME>295 THEN TIME=TIME+1
10160 IF(TIME MOD 4)<>0 THEN 500
10170 I=INT(RND(100)*10+1)
10180 ON I GOTO 10190,10200,10210,10220,10210,10190,10240,10240,10230
10190 PRINT"You sit down and rest.":GOTO 500
10200 PRINT"A growl from your stomach reminds you, 'Get some food!'":GOTO 500
10210 PRINT"If you don't find some shelter soon, you're going to collapse!":GOTO 500
10220 PRINT"You can hardly keep your eyes open.":GOTO 500
10230 PRINT"You are very tired.  You better find somewhere to sleep.":GOTO 500
10240 PRINT"You stop to catch your breath.":GOTO 500
10270 IF HURT=0 THEN PRINT"You sit down and rest.":PRINT"Blood continues to seep from the wound in your leg.  You tie the tourniquet     tighter, and stand up."
10280 IF HURT=2 THEN PRINT"Your wounded leg suddenly gives out, and you fall to the ground.":PRINT"You grimace in pain as you tighten the tourniquet."
10290 IF HURT>3 THEN PRINT"You lose the will to continue.  Every muscle in your body is screaming in pain. You find the nearest park bench and lie down.  You close your eyes and pray thatyour misery ends...":GOTO 9840
10300 HURT=HURT+1:GOTO 500
10340 A1$=""
10350 FOR I=1 TO LEN(an$)
10360 X=ASC(MID$(an$,I,1))
10370 IF X>96 AND X<123 THEN X=X-32
10380 X$=CHR$(X):A1$=A1$+X$
10390 NEXT
10400 WHILE RIGHT$(A1$,1)=" "
10410 A1$=LEFT$(A1$,LEN(A1$)-1)
10420 WEND
10430 WHILE LEFT$(A1$,1)=" "OR LEFT$(A1$,1)=">"
10440 A1$=RIGHT$(A1$,LEN(A1$)-1)
10450 WEND
10460 TEMP1$="":I=1
10470 TEMP$=MID$(A1$,I,1)
10480 WHILE TEMP$<>""AND TEMP$<>"."
10490 IF MID$(A1$,I,4)="THE "THEN I=I+3 ELSE IF MID$(A1$,I,2)="A "THEN I=I+1 ELSE TEMP1$=TEMP1$+TEMP$
10500 I=I+1:TEMP$=MID$(A1$,I,1)
10510 WEND
10520 A1$=TEMP1$:RETURN
10550 A$=""
10560 I=I+1:X$=MID$(A1$,I,1):IF X$=""OR X$=" "THEN RETURN
10570 A$=A$+X$:GOTO 10560
10620 DIM DATABASE$(96)
10630 FOR I=1 TO 96:READ DATABASE$(I):NEXT
10640 RETURN
10660 I=0:GOSUB 10550:I=0
10670 FOR J=1 TO 96
10680 IF DATABASE$(J)=A$THEN IF I=0 AND J>36 THEN PRINT"I couldn't find a verb in that sentence.":GOTO 10700 ELSE 10710 ELSE NEXT
10690 PRINT"I don't recognize the word '";A$;"'"
10700 IF RT1=1 THEN RT1=0:RETURN ELSE 480
10710 IF RT1=1 THEN PRINT"That sentence is not one I recognize.":GOTO 10700
10720 PRINT"I don't understand that sentence.":GOTO 10700
10750 DATA I,GET,BUY,USE,DIG,EAT,YES,NO,PUT,QUIT,SAVE,TURN,TAKE,DROP,TIME,READ,OPEN,GIVE,SCORE,GRAB,SHOOT,KNOCK,DRINK,INVENTORY,RESTORE,SWALLOW,WALK,N,S,E,W,NORTH,SOUTH,EAST,WEST,SLEEP
10780 DATA GUN,HANDGUN,22,RIFLE,AMMUNITION,6,ROUND,CLIP,BULLETS,12,SHOTGUN,BOW,BOW/ARROW,LIGHTBULB,RUSTY,KEY,BOTTLE,WI,RAW,CHUNK,MEAT,CHILD,YOUNG,DR,BAG,MON,SHO,WHISK,BR,GARBAGE,MAG,MAGS,NEWSPAPER,NEWSPAPERS,BOX,BOXES
10790 DATA CARDBOARD,LIST,PRICE,HOUSE,LAMPOST,SOCKET,IN,TO,ON,OFF,PADLOCK,LOCK,DOOR,CHILDREN,GUA,SECURITY,OLD,WEALTHY,FOUR,BANK,RO,THE,A,DOG
10830 '
10920 '
10950 GOTO 500
11110 GOTO 500
11280 PRINT:INPUT"Do you want instructions? (Y/N) ",A$
11290 RESUME 130