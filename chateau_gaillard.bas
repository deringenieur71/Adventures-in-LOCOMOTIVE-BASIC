10 REM CHATEAU GAILLARD
15 REM Converted to CPC July 2017 by SRS
20 GOSUB 6800
30 REM ****************
40 REM REPORT TO PLAYER
50 FOR Z=1 TO 1000:NEXT Z
60 CLS
70 GOSUB 3300
80 IF A(RO,7)<>0 OR A(RO,9)<>0 OR A(RO,1 O)<>0 THEN GOSUB 6660
90 IF A(RO,7)>98 THEN PRINT "One of the doors is locked":PRINT "preventing you from exploring":PRINT "further"
100 IF A(RO,8)<>0 THEN PRINT TAB(3);"LOOK OUT!":PRINT "THERE IS A ";M$(A(RO,8));" HERE!":IF RND(1)>0.7 AND A(RO,8)<>1 THEN PRINT "THE ";M$(A(RO,8));" ATTACKS!":KW=1:GOSUB 1400:GOTO 40
110 IF ST<1 THEN ST=0 ELSE IF RND(1)>0.84 THEN ST=ST-1
120 IF CH<1 THEN CH=0 ELSE IF RND(1)>0.84 THEN CH=CH-1
130 IF DE<1 THEN DE=0 ELSE IF RND(1)>0.84 THEN DE=DE-1
140 IF IT<1 THEN IT=0 ELSE IF RND(1)>0.84 THEN IT=IT-1
150 IF WI<1 THEN WI=0 ELSE IF RND(1)>.R4 THEN WI=WI-1
160 IF CO<1 THEN CO=0 ELSE IF RND(1)>0.84 THEN CO=CO-1
170 IF RND(1)>0.84 AND RO=16 AND A(RO,8)=1 THEN PRINT:PRINT "You hear a whispered voice warning you:":PRINT "'You must do something about the dwarf'"
180 PRINT:PRINT "Your attributes are:"
190 PRINT TAB(4);"Strength -"ST"  Charisma -"CH
200 PRINT TAB(4);"Dexterity -"DE"  Intelligence -"IT
210 PRINT TAB(4);"Wisdom -"WI"  Constitution -"CO
220 IF ST*CH*DE*IT*WI*CO=0 THEN PRINT "You are exhausted...":PRINT "so this adventure must end":QU=2:GOTO 2590
230 FLAG=0
240 FOR J=1 TO 5
250 IF P(J)<>0 THEN FLAG=1
260 NEXT J
270 IF FLAG=0 THEN 340
280 CASH=0
290 PRINT:PRINT "You are carrying:"
300 FOR J=1 TO 5
310 IF P(J)<>0 THEN PRINT TAB(4);O$(P(J)): CASH=CASH+V(P(J))
320 NEXT J
330 IF CASH>0 THEN PRINT TAB(8);"Total value - $";STR$(CASH)
340 PRINT
350 REM **************
360 REM INPUT HANDLING
370 KW=0
380 FOR Z=1 TO 1000:NEXT Z
390 INPUT "What do you want to do";A$
400 IF A$="" THEN 390
410 AS=ASC(A$)
420 IF AS<65 OR AS>90 THEN PRINT TAB(3);">>> CAPITAL LETTERS, PLEASE":PRINT:GOTO 390
430 M=LEN(A$):IF M<7 THEN A$=A$+" ":GOTO 430
440 B$=LEFT$(A$,3)
450 IF B$="HEL" THEN PRINT "NO HELP FOR MORTALS IN THIS GAME!":PRINT"...although reading and drinking":PRINT "may help...":GOTO 40
460 IF B$="QUI" THEN QU=4:GOTO 2530
470 N=1
480 IF MID$(A$,N,1)=" " THEN C$=MID$(A$,N+1,3):IF LEFT$(C$,1)<>" " THEN 530 ELSE 500
490 IF N<M THEN N=N+1:GOTO 480
500 IF RND(1)>0.5 THEN 520
510 PRINT TAB(6);"BY ITSELF,";A$:PRINT TAB(6);"CAN'T BE ACTED ON":GOTO 390
520 PRINT A$;" IS JUST ONE WORD":PRINT TAB(4);"I NEED TWO":GOTO 390
530 IF RO<>8 AND RO<>34 THEN 560
540 IF B$="STA" OR B$="KIL" OR B$="FIG" OR B$="KIC" OR B$="PUN" OR B$="SLA" OR B$="ATT" THEN KW=1:GOSUB 1400
550 IF A(RO,7)>98 AND B$<>"UNL" THEN PRINT TAB(4);"** The doors are locked **":GOTO 40
560 IF B$="STA" OR B$="KIL" OR B$="FIG" OR B$="KIC" OR B$="PUN" OR B$="SLA" OR B$="ATT" THEN KW=1:GOSUB 1400
570 IF B$="GO " OR B$="MOV" OR B$="CLI" OR B$="RUN" OR B$='WAL" THEN KW=1:GOSUB 740
580 IF B$="TAK" OR B$="GET" OR B$="STE" OR B$="LIF" THEN KW=1:GOSUB 950
590 IF B$="DRO" OR B$="PUT" OR B$="THR" OR B$="BRE" THEN KW=1:GOSUB 1160
600 IF B$="UNL" THEN KW=1:GOSUB 2360
610 IF B$="OPE" THEN KW=1:GOSUB 2660
620 IF B$="REA" THEN KW=1:GOSUB 2750
630 IF B$="DRI" OR B$="SWA" THEN KW=1:GOSUB 2870
640 IF B$="BRI" OR B$="PAY" THEN KW=1:GOSUB 3000
650 IF KW=1 THEN 700
660 R=INT(RND(1)*3)
670 IF R=0 THEN PRINT "IT WOULD NOT BE WISE TO ";A$
680 IF R=1 THEN PRINT "ONLY A FOOL WOULD TRY TO ";A$
690 IF R=2 THEN PRINT "I DON'T UNDERSTAND '";A$
700 FOR Z=1 TO 500:NEXT Z
710 GOTO 40
720 REM * END OF MAJOR HANDLING LOOP *
730 REM ********
740 REM MOVEMENT
750 IF RO<>16 OR A(16,8)<>1 THEN 800
760 PRINT:PRINT "The dwarf refuses to let" 
770 PRINT TAB(9);"you proceed..."
780 FOR Z=1 TO 500:NEXT
790 RETURN
800 C$=LEFT$(C$,1)
810 IF C$="N" AND A(RO,1)=0 THEN PRINT "You cannot go that way":RETURN
820 IF C$="S" AND A(RO,2)=0 THEN PRINT "There is no exit south":RETURN
830 IF C$="E" AND A(RO,3)=0 THEN PRINT "I see nowhere to the east to go":RETURN
840 IF C$="W" AND A(RO,4)=0 THEN PRINT "Even you cannot walk through walls":RETURN
850 IF C$="U" AND A(RO,5)=0 THEN PRINT "There is no way to move up":RETURN
860 IF C$="D" AND A(RO,6)=0 THEN PRINT "You cannot descend from here":RETURN
870 IF C$="N" THEN RO=A(RO,1)
880 IF C$="S" THEN RO=A(RO,2)
890 IF C$="E" THEN RO=A(RO,3)
900 IF C$="W" THEN RO=A(RO,4)
910 IF C$="U" THEN RO=A(RO,5)
920 IF C$="D" THEN RO=A(RO,6)
930 RETURN
940 REM *******************
950 REM GET OBJECTS ROUTINE
960 FLAG=0
970 FOR J=1 TO 5
980 IF P(J)<>0 THEN FLAG=FLAG+1
990 NEXT J
1000 IF FLAG=5 THEN PRINT "You are already carrying your":PRINT "maximum of five objects":RETURN
1010 IF C$="CHE" THEN PRINT "It is far too heavy to lift":RETURN
1020 IF A(RO,7)=0 AND A(RO,9)=0 AND A(RO,10)=0 THEN PRINT "I see nothing to pick up" :RETURN
1030 D$="":E$="":F$="":N=0
1040 D$=LEFT$(O$(A(RO,7)),3)
1050 E$=LEFT$(O$(A(RO,9)),3)
1060 F$=LEFT$(O$(A(RO,10)),3)
1070 IF C$=D$ THEN N=A(RO,7):A(RO,7)=0
1080 IF C$=E$ THEN N=A(RO,9):A(RO,9)=0
1090 IF C$=F$ THEN N=A(RO,10):A(RO,10)=0
1100 J=1
1110 IF P(J)=0 THEN P(J)=N:GOTO 1130
1120 IF J<5 THEN J=J+1:GOTO 1110
1130 IF N>0 THEN PRINT TAB(3);">->YOU NOW HAVE THE ";O$(N)
1140 RETURN
1150 REM ************
1160 REM DROP ROUTINE
1170 FLAG=0
1180 FOR J=1 TO 5
1190 IF P(J)<>0 THEN FLAG=1
1200 NEXT J
1210 IF FLAG=0 THEN PRINT "You are not carrying anything":RETURN
1220 IF A(RO,7)<>0 AND A(RO,9)<>0 AND A(RO,10)<>0 THEN PRINT "This room already holds its":PRINT TAB(6);"maximum objects":RETURN
1230 D$="":D=0
1240 FOR J=1 TO 18
1250 IF LEFT$(O$(J),3)=C$ THEN D$=O$(J):D=J
1260 NEXT J
1270 IF D$="" THEN PRINT TAB(3);"How can you when you're":PRINT TAB(5);"not holding it?":RETURN
1280 FOR J=1 TO 5
1290 IF P(J)=D THEN P(J)=0
1300 NEXT J
1310 IF A(RO,7)=0 THEN A(RO,7)=D:GOTO 1340
1320 IF A(RO,9)=0 THEN A(RO,9)=D:GOTO 1340
1330 IF A(RO,10)=0 THEN A(RO,10)=D
1340 IF B$="DRO" THEN PRINT "YOU HAVE DROPPED THE ";D$
1350 IF B$="PUT" THEN PRINT "YOU HAVE PUT THE ";D8;" DOWN"
1360 IF B$="THR" THEN PRINT "WITH A MIGHTY HEAVE, YOU":PRINT "THROW THE ";D$;" AWAY"
1370 IF B$="BRE" THEN PRINT "YOU HAVE BROKEN THE ";D$
1380 RETURN
1390 REM *************
1400 REM FIGHT ROUTINE
1410 IF A(RO,8)=1 THEN PRINT "The dwarf refuses to fight":PRINT "and his magic protects him":RETURN
1420 IF A(RO,8)<>0 THEN 1470
1430 R=RND(1)
1440 IF R<0.5 THEN PRINT "There is nothing to fight here"
1450 IF R>=0.5 THEN PRINT "You can't fight empty air!"
1460 RETURN
1470 G$=M$(A(RO,8))
1480 S1=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
1490 H1=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
1500 D1=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
1510 I1=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
1520 W1=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
1530 C1=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
1540 PRINT "------------------------------------------"
1550 PRINT "YOUR OPPONENT IS A ";G$
1560 MT=0:HT=0
1570 FF=S1*(INT(RND(1)*6)+1)
1580 PRINT:PRINT "---------------------------------------"
1590 PRINT "THE ";G$;"'S DANGER LEVEL IS"FF
1600 FOR Z=1 TO 1500:NEXT Z
1610 FOR J=1 TO 5
1620 T(J)=0
1630 IF P(J)=1 THEN PRINT "YOUR AXE COULD BE HANDY":T(J)=1
1640 IF P(J)=2 THEN PRINT "YOUR SKILL WITH THE SWORD":PRINT "MAY STAND YOU IN GOOD STEAD":T(J)=2
1650 IF P(J)=3 THEN PRINT "YOUR DAGGER IS USEFUL AGAINST ";G$;"S":T(J)=3
1660 IF P(J)=4 THEN PRINT "THE MACE WILL MAKE SHORT WORK OF IT":T(J)=4
1670 IF P(J)=5 THEN PRINT "YOUR QUARTERSTAFF WILL GIVE":PRINT "IT NO QUARTER...":T(J)=5
1680 IF P(J)=6 THEN PRINT "SWINGING YOUR MORNING STAR MAY INFLICT":PRINT "HEAVY WOUNDS ON THE ";G$:T(J)=6
1690 IF P(J)=7 THEN PRINT "A FALCHION IS A USEFUL WEAPON":T(J)=7
1700 NEXT J
1710 FLAG=0
1720 FOR J=1 TO 5
1730 IF T(J)<>0 THEN FLAG=FLAG+1
1740 NEXT J
1750 IF FLAG=0 THEN PRINT "YOU MUST FIGHT THE ";G$;" WITH":PRINT "YOUR BARE HANDS":GOTO 1910
1760 IF FLAG>1 THEN 1830
1770 FOR J=1 TO 5
1780 IF T(J)<>0 THEN FLAG=T(J)
1790 NEXT J
1800 PRINT "YOU MUST FIGHT WITH YOUR ";O$(FLAG)
1810 FF=INT(FF*2/FLAG)
1820 GOTO 1910
1830 PRINT "CHOOSE YOUR WEAPON:"
1840 FOR J=1 TO 5
1850 IF P(J)<>0 THEN PRINT J;" - ";O$(J)
1860 NEXT J
1870 INPUT "Enter the number to choose";J
1880 IF P(J)=0 THEN PRINT "YOU DO NOT HAVE THE ";O$(J):GOTO 1870
1890 PRINT "RIGHT, SO YOU CHOOSE TO FIGHT":PRINT "WITH THE ";O$(J)
1900 FF=INT(FF*2/J)
1910 FOR Z=1 TO 1500:NEXT Z
1920 PRINT "THE ";G$;" HAS THE FOLLOWING ATTRIBUTES:"
1930 PRINT "1 - Strength"S1"  2 - Charisma";H1
1940 PRINT "3 - Dexterity"D1" 4 - Intelligence"I1
1950 PRINT "5 - Wisdom"W1"    6 - Constitution"C1
1960 PRINT:PRINT "YOUR ATTRIBUTES ARE:"
1970 PRINT "1 - Strength"ST"  2 - Charisma "CH
1980 PRINT "3 - Dexterity"DE" 4 - Intelligence"IT
1990 PRINT "5 - Wisdom"WI"    6 - Constitution"CO
2000 PRINT:PRINT "Which attributes will you fight":PRINT "with (2)";
2010 INPUT Z,Q
2020 IF Z<1 OR Q<1 OR Z>6 OR Q>6 OR Z=Q THEN PRINT "DO NOT FOOL AROUND WHEN A ";G$:PRINT "IS IN THE ROOM WITH YOU!":GOTO 2010
2030 IF Z=1 OR Q=1 THEN MT=MT+S1:HT=HT+ST
2040 IF Z=2 OR Q=2 THEN MT=MT+H1:HT=HT+CH
2050 IF Z=3 OR Q=3 THEN MT=MT+D1:HT=HT+DE
2060 IF Z=4 OR Q=4 THEN MT=MT+I1:HT=HT+IT
2070 IF Z=5 OR Q=5 THEN MT=MT+W1:HT=HT+WI
2080 IF Z=6 OR Q=6 THEN MT=MT+C1:HT=HT+CO
2090 IF HT=MT THEN PRINT TAB(10);"You are evenly matched":GOTO 2130
2100 PRINT "IT LOOKS LIKE THE ODDS"
2110 PRINT "ARE IN FAVOR OF ";
2120 IF HT>MT THEN PRINT "YOU" ELSE PRINT "THE ";G$
2130 K=INT(RND(1)*7)
2140 FOR Z=1 TO 700:NEXT Z
2150 PRINT "THE ";G$;" -"MT
2160 PRINT "YOU -"HT:PRINT
2170 IF K=0 THEN PRINT "You struck a splendid blow!":MT=MT-1
2180 IF K=1 THEN PRINT "THE ";G$;" STRIKES OUT":HT=HT-3:ST=ST-1:CH=CH-1
2190 IF K=2 THEN PRINT "YOU DRAW THE ";G$; "'S BLOOD":MT=MT-1
2200 IF K=3 THEN PRINT "You are wounded!!" :HT=HT-INT(RND(1)*3)-1:DE=DE-1
2210 IF K=4 THEN PRINT "THE ";G$;" IS TIRING":MT=MT-1
2220 IF K=5 THEN PRINT "You are bleeding...":HT=HT-2:WI=WI-1:CO=CO-1
2230 IF K=6 THEN PRINT "YOU WOUND THE ";G$:MT=MT-1
2240 IF RND(1)>0.25 AND HT>0 AND MT>0 THEN FOR T=1 TO 1600:NEXT T:GOTO 2130
2250 IF HT>MT THEN PRINT "YOU HAVE SLAIN THE ";G$:MK=MK+1:GOTO 2330
2260 PRINT "THE ";G$;" GOT THE BETTER OF": PRINT "YOU THAT TIME..."
2270 IF Z=1 OR Q=1 THEN ST=4*INT(ST/5)
2280 IF Z=2 OR Q=2 THEN CH=3*INT(CH/4)
2290 IF Z=3 OR Q=3 THEN DE=6*INT(DE/7)
2300 IF Z=4 OR Q=4 THEN IT=2*INT(IT/3)
2310 IF Z=5 OR Q=5 THEN WI=5*INT(WI/6)
2320 IF Z=6 OR Q=6 THEN CO=INT(CO/2)
2330 A(RO,8)=0
2340 RETURN
2350 REM ************
2360 REM UNLOCK DOORS
2370 IF RO<>8 AND RO<>34 OR A(RO,7)<99 THEN PRINT "There is no locked door in this room":RETURN
2380 FLAG=0
2390 T=0
2400 FOR J=1 TO 5
2410 IF P(J)=17 THEN FLAG=1:T=J
2420 IF P(J)=18 THEN FLAG=2:T=J
2430 NEXT J
2440 IF FLAG=0 THEN PRINT "You do not have a key!":RETURN
2450 IF FLAG=2 AND RO=8 OR FLAG=1 AND RO=34 THEN PRINT "That key does not fit this door":RETURN
2460 PRINT "There is a creak as the key turns"
2470 FOR Z=1 TO 1300:NEXT Z
2480 PRINT ".....THE DOOR IS NOW UNLOCKED..."
2490 A(RO,7)=0
2500 P(T)=0
2510 RETURN
2520 REM ***********
2530 REM END OF GAME
2540 SC=0
2550 IF QU=4 THEN PRINT "I did not imagine you would turn":PRINT TAB(5);"out to be a quitter!":GOTO 2590
2560 PRINT:PRINT "CONGRATULATIONS! You have completed":PRINT TAB(7);"THE ADVENTURE"
2570 SC=100
2580 PRINT:PRINT
2590 SC=(SC+20*CASH+47*MK+ST+2*CH+3*DE+4+IT+5*WI+6*CO)/QU
2600 IF MK>0 THEN PRINT "YOU KILLED"MK"MONSTERS"
2610 IF MK>0 AND CASH>0 THEN PRINT "AND ";
2620 PRINT:PRINT "YOU FOUND $";STR$(CASH);" WORTH":PRINT TAB(8);"OF TREASURE"
2630 PRINT:PRINT "Your score for this Adventure is"SC
2640 END
2650 REM **********
2660 REM OPEN CHEST
2670 FLAG=0
2680 IF C$<>"CHE" THEN PRINT "THAT WOULD NOT BE WISE":RETURN
2690 IF RO<>13 AND RO<>40 THEN PRINT "I CANNOT SEE ANYTHING TO OPEN HERE":RETURN
2700 IF BOX=1 THEN IF RND(1)>0.6 THEN PRINT TAB(4);"It holds nothing but dust...":RETURN
2710 IF RO=13 OR BOX=1 THEN PRINT "IT IS EMPTYI":RETURN
2720 IF BOX=0 THEN PRINT "INSIDE YOU FIND A PARCHMENT, WITH":PRINT "THE FOLLOWING MESSAGE: 'A little":PRINT "man can be bound by gold'":BOX=12730 RETURN
2740 REM ***********
2750 REM READ SCROLL
2760 FLAG=0
2770 FOR J=1 TO 5
2780 IF P(J)=12 THEN FLAG=1
2790 NEXT J
2800 IF FLAG=0 THEN PRINT "You are not holding anything":PRINT "which you can read":RETURN
2810 R=INT(RND(1)*3)
2820 IF R=0 THEN PRINT "It says 'THE LOCKS NEED SPECIAL KEYS'"
2830 IF R=1 THEN PRINT "The scroll reads:'CHESTS CAN CONTAIN AID'"
2840 IF R=2 THEN PRINT "It says 'THE AMULET IS IMPORTANT'"
2850 RETURN
2860 REM ************
2870 REM DRINK POTION
2880 FLAG=0
2890 FOR J=1 TO 5
2900 IF P(J)=13 THEN FLAG=J
2910 NEXT J
2920 IF FLAG=0 THEN PRINT "YOU CAN'T DRINK ";C$:RETURN
2930 PRINT "You are instantly filled with":PRINT "healing, and your strength is restored"
2940 PRINT "The bottle holding the potion"
2950 PRINT "magically fades from view..."
2960 ST=20
2970 P(FLAG)=0
2980 RETURN
2990 REM ***********
3000 REM BRIBE DWARF
3010 IF A(RO,8)<>1 THEN PRINT "YOU SHOULDN'T TRY THAT":PRINT "WITH A ";M$(A(RO,8)):RETURN
3020 PRINT "He demands the amulet!"
3030 FLAG=0
3040 FOR J=1 TO 5
3050 IF P(J)=9 THEN FLAG=J
3060 NEXT J
3070 IF FLAG<>0 THEN 3250
3080 PRINT "YOU DO NOT HAVE IT..."
3090 FOR T=1 TO 1000:NEXT T
3100 IF RND(1)>0.5 THEN PRINT "HE WOULD ACCEPT ANYTHIHG":PRINT "THAT HE REALLY WANTS" :GOTO 3210
3110 PRINT "HE DECIDES, HOWEVER, TO ACCEPT"
3120 PRINT "A 'GIFT' OF ";
3130 FOR J=1 TO 5
3140 IF P(J)<>0 THEN FLAG=J
3150 NEXT J
3160 IF FLAG=0 THEN 3200
3170 PRINT "THE ";O$(FLAG)
3180 P(FLAG)=0
3190 GOTO 3270
3200 PRINT "ANYTHING VALUABLE"
3210 PRINT:PRINT "BUT YOU HAVE NOTHING"
3220 PRINT "AND SO HE KILLS YOU!!"
3230 QU=3
3240 GOTO 2570
3250 PRINT "Lucky for you that you had it!"
3260 P(FLAG)=0
3270 A(RO,8)=0
3280 RETURN
3290 REM *****************
3300 REM ROOM DESCRIPTIONS
3310 IF RO>11 THEN 4140
3320 ON RO GOSUB 3340,3380,3450,3530,3620,3720,3790,3840,3920,3990,4060
3330 RETURN
3340 REM ROOM ONE
3350 PRINT "You are out on the battlements of the"
3360 PRINT "chateau. There is only one way back"
3370 RETURN
3380 REM ROOM TWO
3390 PRINT "This is an eerie room, where once"
3400 PRINT "magicians convorted with evil"
3410 PRINT "sprites and werebeasts..."
3420 PRINT "Exits lead in three directions"
3430 PRINT "An evil smell comes from the south"
3440 RETURN
3450 REM ROOM THREE
3460 PRINT "An old straw mattress lies in one"
3470 PRINT "corner...it has been ripped apart to"
3480 PRINT "find any treasure which was hidden in it"
3490 PRINT "Light comes fitfully from a window to"
3500 PRINT "the north, and around the doors to"
3510 PRINT "south, east and west"
3520 RETURN
3530 REM ROOM FOUR
3540 PRINT "This wooden-panelled room makes"
3550 PRINT "you feel damp and uncomfortable"
3560 IF RND(1)>0.5 THEN PRINT "A mouse scampers across the floor" ELSE PRINT "A bat flits across the ceiling"
3570 PRINT "There are three doors leading"
3580 PRINT "from this room, one made of iron"
3590 PRINT "Your sixth sense warns you to"
3600 PRINT "choose carefully..."
3610 RETURN
3620 REM ROOM FIVE
3630 PRINT "You ignore your intuition..."
3640 PRINT "A Spell of Living Stone, primed"
3650 PRINT "to trap the first intruder has"
3660 PRINT "been set on you...with your last"
3670 PRINT "seconds of life you have time"
3680 PRINT "only to feel profound regret..."
3700 SC=50
3710 GOTO 2590
3720 REM ROOM SIX
3730 PRINT "You are in an L-shaped room"
3740 PRINT "Heavy parchment lines the walls"
3750 PRINT "You can see through an archway"
3760 PRINT "to the east...but that is not"
3770 PRINT "the only exit from this room"
3780 RETURN
3790 REM ROOM SEVEN
3800 PRINT "There is an archway to the west,"
3810 PRINT "leading to an L-shaped room"
3820 PRINT "a door leads in the opposite direction"
3830 RETURN
3840 REM ROOM EIGHT
3850 PRINT "This must be the Chateau's main kitchen"
3860 PRINT "but any food left here has long"
3870 PRINT "rotted away..."
3880 PRINT
3890 PRINT "A door leads to the north, and"
3900 PRINT "there is one to the west"
3910 RETURN
3920 REM ROOM NINE
3930 PRINT "You find yourself in a small,"
3940 PRINT "room...which makes you feel"
3950 PRINT "claustrophobic...":PRINT
3960 PRINT "There is a picture of a black"
3970 PRINT "dragon painted on the north"
3980 PRINT "wall, above the door..."
3990 REM ROOM TEN
4000 PRINT "A stairwell ends in this room, which"
4010 PRINT "more of a landing than a real"
4020 PRINT "room. The door to the north is"
4030 PRINT "made of iron, which has rusted"
4040 PRINT "over the centuries..."
4050 RETURN
4060 REM ROOM ELEVEN
4070 PRINT "There is a stone archway to the north,"
4080 PRINT "You are in a very long room."
4090 PRINT:PRINT "Fresh air blows down some stairs"
4100 PRINT "and rich red drapes cover
4110 PRINT "the walls...You can see doors"
4120 PRINT "to the south and east"
4130 RETURN
4140 IF RO>22 THEN 5030
4150 ON RO-11 GOSUB 4170,4240,4330,4390,4460,4530,4610,4710,4760,4890,4970
4160 RETURN
4170 REM ROOM TWELVE
4180 PRINT "You have entered a room filled"
4190 PRINT "with swirling, choking smoke." :PRINT
4200 PRINT "you must leave quickly to remain"
4210 PRINT "healthy enough to continue"
4220 PRINT "your chosen quest..."
4230 RETURN
4240 REM ROOM THIRTEEN
4250 PRINT "There is a mirror in the corner"
4260 PRINT "you glance at it, and feel"
4270 PRINT "suddenly very ill.":PRINT
4280 PRINT "You realise the looking-glass has"
4290 PRINT "been enfused with a Spell of Charisma"
4300 PRINT "Reduction...oh dear..."
4310 CH=CH-1
4320 RETURN
4330 REM ROOM FOURTEEN
4340 PRINT "This room is richly finished, with"
4350 PRINT "a white marble floor. Strange"
4360 PRINT "footprints lead to the two doors"
4370 PRINT "from this room...Dare you follow them?"
4380 RETURN
4390 REM ROOM FIFTEEN
4400 PRINT "You are in a long, long"
4410 PRINT "hallway, lined on each side"
4420 PRINT "with rich, red drapes..."
4430 PRINT:PRINT "They are parted halfway down"
4440 PRINT "the east wall where there is a door"
4450 RETURN
4460 REM ROOM SIXTEEN
4470 PRINT "Someone has spent a long time"
4480 PRINT "painting this room a bright yellow..."
4490 PRINT:PRINT "You remember reading that"
4500 PRINT "yellow Is the Ancient Oracle's"
4510 PRINT "Color of Warning..."
4520 RETURN
4530 REM ROOM SEVENTEEN - START
4540 PRINT "As you stumble down the ladder"
4550 PRINT "you fall into the room. The ladder"
4560 PRINT "crashes down behind you...there"
4570 PRINT "is now no way back..."
4580 PRINT:PRINT "A small door leads east from"
4590 PRINT "this very cramped room..."
4600 RETURN
4610 REM ROOM EIGHTEEN
4620 PRINT "You find yourself in a Hall of"
4630 PRINT "Mirrors...and see yourself"
4640 PRINT "reflected a hundred times or"
4650 PRINT "more...Through the bright glare"
4660 PRINT "you can make out doors in all"
4670 PRINT "directions...You notice the"
4680 PRINT "mirrors around the east door"
4690 PRINT "are heavily tarnished..."
4700 RETURN
4710 REM ROOM NINETEEN
4720 PRINT "You find yourself in a long corridor"
4730 FOR Z=1 TO 1000:NEXT Z
4740 PRINT "Your footsteps echo as you walk"
4750 RETURN
4760 REM ROOM TWENTY
4770 PRINT "You feel as you've been wandering"
4780 PRINT "around this chateau for ever..."
4790 PRINT "and you begin to despair of ever"
4800 PRINT "escaping..."
4810 PRINT:PRINT "Still, you can't get too depressed, but"
4820 PRINT "must struggle on. Looking around, you"
4830 PRINT "see you are in a room which has a"
4840 PRINT "heavy timbered ceiling, and white"
4850 PRINT "roughly-finished walls..."
4860 PRINT:PRINT "There are two doors..."
4870 FOR Z=1 TO 1000:NEXT Z
4880 RETURN
4890 REM ROOM TWENTY-ONE
4900 PRINT "You are in a small alcove. You"
4910 PRINT "look around...but can see nothing in"
4920 PRINT "gloom...perhaps if you wait a"
4930 PRINT "while your eyes will adjust to the"
4940 PRINT "murky dark of this alcove..."
4950 FOR Z=1 TO 2000:NEXT:RETURN
4960 RETURN
4970 REM ROOM TWENTY-TWO
4980 PRINT "A dried-up fountain stands in the"
4990 PRINT "center of this courtyard, which"
5000 PRINT "once held beautiful flowers...but"
5010 PRINT "have long-since died..."
5020 RETURN
5030 IF RO>33 THEN 5890
5040 ON RO-22 GOSUB 5060,5110,5160,5230,5280,5380,5450,5530,5590,5680,5840
5050 RETURN
5060 REM ROOM TWENTY-THREE
5070 PRINT "The scent of dying flowers fills"
5080 PRINT "this brightly-lit room..."
5090 PRINT:PRINT "There are two exits from it.."
5100 RETURN
5110 REM ROOM TWENTY-FOUR
5120 PRINT "This is a round stone cavern"
5130 PRINT "off the side of the alcove to"
5140 PRINT "your north..."
5150 RETURN
5160 REM ROOM TWENTY-FIVE
5170 PRINT "You are in an enormous circular"
5180 PRINT "room, which looks as if it was"
5190 PRINT "used as a games room. Rubble covers"
5200 PRINT "the floor, partially blocking"
5210 PRINT "the only exit..."
5220 RETURN
5230 REM ROOM TWENTY-SIX
5240 PRINT "Through the dim mustiness of"
5250 PRINT "this small potting shed you can"
5260 PRINT "see a stairwell..."
5270 RETURN
5280 REM ROOM TWENTY-SEVEN - START
5290 PRINT "You begin this Adventure in a small"
5300 PRINT "wood outside the Chateau..."
5310 FOR Z=1 TO 3000:NEXT Z
5320 PRINT:PRINT "While out walking one day, you come"
5330 PRINT "across a small, ramshackle shed in"
5340 PRINT "the woods. Entering it, you see a"
5350 PRINT "hole in one corner...an old ladder"
5360 PRINT "leads down from the hole..."
5370 RETURN
5380 REM ROOM TWENTY-EIGHT - END
5390 PRINT "How wonderful! Fresh air, sunlight..."
5400 FOR Z=1 TO 1000:NEXT Z
5410 PRINT:PRINT "Birds are singing...you"
5420 PRINT "are free at last...."
5430 PRINT:PRINT
5440 GOTO 2560
5450 REM ROOM TWENTY NINE
5460 PRINT "The smell came from bodies"
5470 PRINT "rotting in huge traps..."
5480 FOR Z=1 TO 1000:NEXT Z
5490 PRINT "One springs shut on you,"
5500 PRINT "trapping you forever"
5510 QU=3.5
5520 GOTO 2570
5530 REM ROOM THIRTY
5540 PRINT "You fall into a pit of flames..."
5550 IF RND(1)>0.7 THEN 5540
5560 SC=10
5570 QU=3.4
5580 GOTO 2590
5590 REM ROOM THIRTY-ONE
5600 PRINT "Aaaaahhh...you have fallen into"
5610 FOR Z=1 TO 3000:NEXT Z
5620 PRINT "a pool of acid...now you know - too"
5630 PRINT "late - why the mirrors were"
5640 PRINT "so badly tarnished"
5650 SC=20
5660 QU=3
5670 GOTO 2590
5680 REM ROOM THIRTY-TWO
5690 PRINT "It's too bad you chose that exit"
5700 PRINT "from the alcove..."
5710 FOR Z=1 TO 2000:NEXT Z
5720 PRINT "A giant Funnel-Web Spider leaps"
5730 PRINT "on you...and before you can react"
5740 PRINT "bites you on the neck...you"
5750 PRINT "have 10 seconds to live..."
5760 FOR T= 10 TO 1 STEP -1
5770 PRINT TAB(T);T
5780 FOR Z=1 TO 300:NEXT Z
5790 PRINT
5800 NEXT T
5810 SC=3
5820 QU=5
5830 GOTO 2590
5840 REM ROOM THIRTY-THREE
5850 PRINT "A stairwell leads into this room, a"
5860 PRINT "poor and common hovel with many"
5870 PRINT "doors and exits..."
5880 RETURN
5890 ON RO-33 GOSUB 5920,5970,6030,6100,6240,6310,6360,6430,6510,6560,6600
5900 RETURN
5910 REM **DESCRIPTIONS**
5920 REM ROOM THIRTY-FOUR
5930 PRINT "It is hard to see in this room,"
5940 PRINT "and you slip slightly on the"
5950 PRINT "uneven, rocky floor..."
5960 RETURN
5970 REM ROOM THIRTY-FIVE
5980 PRINT "Horrors! This room was once"
5990 PRINT "the torture chamber of the Chateau.."
6000 PRINT:PRINT "Skeletons lie on the floor, still"
6010 PRINT "with chains around the bones..."
6020 RETURN
6030 REM ROOM THIRTY-SIX
6040 PRINT "Another room with very unpleasant"
6050 PRINT "memories..."
6060 FOR Z=1 TO 1000:NEXT Z
6070 PRINT:PRINT "This foul hole was used as the"
6080 PRINT "Chateau dungeon...."
6090 RETURN
6100 REM ROOM THIRTY-SEVEN
6110 PRINT "Oh no, this is a Gargoyle's lair..."
6120 FOR Z=1 TO 1000:NEXT Z
6130 PRINT "It has been held prisoner here for"
6140 PRINT "three hundred years..."
6150 FOR Z=1 TO 1000:NEXT Z
6160 PRINT:PRINT "In his frenzy he thrashes out at you..."
6170 FOR Z=1 TO 1000:NEXT Z
6180 PRINT TAB(12);"and..."
6190 FOR Z=1 TO 1000:NEXT Z
6200 PRINT "...breaks your neck!!"
6210 SC=0
6220 QU=3
6230 GOTO 2590
6240 REM ROOM THIRTY-EIGHT
6250 PRINT "This was the Lower Dancing Hall..."
6260 PRINT "With doors to the north, the east"
6270 PRINT "and to the west, you would seem to be"
6280 PRINT "able to flee any danger..."
6290 FOR Z=1 TO 1000:NEXT Z
6300 RETURN
6310 REM ROOM THIRTY-NINE
6320 PRINT "This is a dingy pit at the foot of"
6330 PRINT "some extremely dubious-looking"
6340 PRINT "stairs. A door leads to the east..."
6350 RETURN
6360 REM ROOM FORTY
6370 PRINT "Doors open to each compass point from"
6380 PRINT "the Trophy Room of the Chateau..."
6390 PRINT:PRINT "The heads of strange creatures shot"
6400 PRINT "by the ancestral owners are mounted"
6410 PRINT "high up on each wall..."
6420 RETURN
6430 REM ROOM FORTY-ONE
6440 PRINT "You have stumbled on a secret room..."
6450 FOR Z=1 TO 1300:NEXT Z
6460 PRINT:PRINT "Down here, eons ago, the ancient"
6470 PRINT "Necromancers of Thorin plied their"
6480 PRINT "evil craft...and the remnant of"
6490 PRINT "their spells hangs heavy on the air..."
6500 RETURN
6510 REM ROOM FORTY-TWO
6520 PRINT "Cobwebs brush your face as you make"
6530 PRINT "your way through the gloom of this"
6540 PRINT "room of shadows..."
6550 RETURN
6560 REM ROOM FORTY-THREE
6570 PRINT "This gloomy passage lies at the"
6580 PRINT "intersection of three rooms..."
6590 RETURN
6600 REM ROOM FORTY-FOUR
6610 PRINT "You are in the rear turret room, below"
6620 PRINT "the extreme western wall of the"
6630 PRINT "ancient chateau..."
6640 RETURN
6650 REM ****************
6660 REM DESCRIBE OBJECTS
6670 PRINT
6680 IF A(RO,7)>98 AND A(RO,9)=0 AND A(RO,10)=0 THEN RETURN
6690 PRINT TAB(3)"YOU CAN SEE ";
6700 IF A(RO,7)>98 THEN 6720
6710 IF A(RO,7)<>0 THEN PRINT O$(A(RO,7))
6720 IF A(RO,9)>98 THEN 6740
6730 IF A(RO,9)<>0 THEN PRINT O$(A(RO,9))
6740 IF A(RO,10)>98 THEN 6760
6750 IF A(RO,10)<>0 THEN PRINT O$(A(RO,10))
6760 FOR Z=1 TO 500:NEXT Z
6770 PRINT
6780 RETURN
6790 REM **********
6800 REM INITIALISE
6810 CLS
6820 IF INKEY$<>"" THEN 6820
6830 N=0
6840 PRINT "PRESS ANY KEY TO START THE ADVENTURE"
6850 IF INKEY$="" THEN N=N+1:GOTO 6850
6860 RANDOMIZE N
6870 CLS
6880 PRINT:PRINT "Please stand by..."
6900 DIM A(44,10),P(5),O$(20),V(20),M$(20),T(5)
6910 ST=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
6920 CH=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
6930 DE=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
6940 IT=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
6950 WI=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
6960 CO=INT(RND(1)*6+RND(1)*6+RND(1)*6)+3
6970 CASH=0
6980 RO=27
6990 QU=1
7000 MK=0
7010 BOX=0
7020 A(8,7)=99
7030 A(34,7)=100
7040 A(40,7)=20
7050 A(13,7)=19
7060 A(16,8)=1
7070 REM SET UP ROOMS
7080 FOR X=1 TO 44
7090 FOR Y=1 TO 10
7100 READ A(X,Y)
7110 NEXT Y
7120 NEXT X
7130 REM DISTRIBUTE TREASURE
7140 RESTORE 7830
7150 FOR Z=1 TO 20
7160 READ O$(Z), V(Z)
7170 NEXT Z
7180 FOR Q=1 TO 16
7190 Z=INT(RND(1)*44)+1
7200 IF Z=5 OR Z=17 OR Z=27 OR Z=29 OR Z=30 OR Z=31 OR Z=32 OR Z=37 THEN 7190
7210 IF A(Z,7)<>0 THEN 7190
7220 A(Z,7)=Q
7230 NEXT Q
7240 PRINT
7250 PRINT TAB(3);"Just a few moments more..."
7260 REM DISTRIBUTE MONSTERS
7270 RESTORE 7870
7280 FOR J=1 TO 20
7290 READ M$(J)
7300 IF J=1 THEN 7350
7310 Z=INT(RND(1)*44)+1
7320 IF Z=5 OR Z=16 OR Z=17 OR Z=27 OR Z=29 OR Z=30 OR Z=31 OR Z=32 OR Z=37 THEN 7310
7330 IF A(Z,8)<>0 THEN 7310
7340 A(Z,8)=J
7350 NEXT J
7360 RETURN
7370 REM ROOM DATA
7380 DATA 1,1,2,1,1,1,0,0,0,0
7390 DATA 0,29,3,1,0,0,17,0,0,0
7400 DATA 0,8,4,2,0,0,0,0,0,0
7410 DATA 0,9,5,3,0,0,0,0,0,0
7420 DATA 5,5,5,5,5,5,0,0,0,0
7430 DATA 0,11,7,30,0,0,0,0,0,0
7440 DATA 0,0,8,6,0,0,0,0,0,0
7450 DATA 3,0,0,7,0,0,99,0,0,0
7460 DATA 4,10,0,0,0,0,0,0,0,0
7470 DATA 9,0,0,0,0,39,0,0,0,0
7480 DATA 6,0,0,0,28,0,0,0,0,0
7490 DATA 0,16,13,0,0,0,0,0,0,0
7500 DATA 0,0,14,12,0,0,19,0,0,0
7510 DATA 0,18,0,13,0,0,0,0,0,0
7520 DATA 0,21,16,0,0,0,0,0,0,0
7530 DATA 12,20,19,15,0,0,0,1,0,0
7540 DATA 0,0,18,0,27,0,0,0,0,0
7550 DATA 14,19,31,17,0,0,0,0,0,0
7560 DATA 18,23,0,16,0,0,0,0,0,0
7570 DATA 16,25,0,0,0,0,0,0,0,0
7580 DATA 15,24,0,32,0,0,0,0,0,0
7590 DATA 0,26,23,0,0,0,0,0,0,0
7600 DATA 19,0,0,22,0,0,0,0,0,0
7610 DATA 21,0,0,0,0,0,0,0,0,0
7620 DATA 20,25,25,25,25,25,0,0,0,0
7630 DATA 22,0,0,0,0,33,0,0,0,0
7640 DATA 0,0,0,0,0,17,0,0,0,0
7650 DATA 0,0,0,0,0,11,0,0,0,0
7660 DATA 29,29,29,29,29,29,0,0,0,0
7670 DATA 30,30,30,30,30,30,0,0,0,0
7680 DATA 31,31,31,31,31,31,0,0,0,0
7690 DATA 32,32,32,32,32,32,0,0,0,0
7700 DATA 43,42,40,0,26,0,0,0,0,0
7710 DATA 0,38,35,0,0,0,100,0,0,0
7720 DATA 0,43,36,34,0,0,0,0,0,0
7730 DATA 0,40,37,35,0,0,0,0,0,0
7740 DATA 37,37,37,37,37,37,0,0,0,0
7750 DATA 34,0,43,39,0,0,0,0,0,0
7760 DATA 0,0,38,0,10,0,0,0,0,0
7770 DATA 36,41,44,33,0,0,20,0,0,0
7780 DATA 40,41,41,42,41,41,0,0,0,0
7790 DATA 33,42,41,42,42,42,0,0,0,0
7800 DATA 35,33,0,38,0,0,0,0,0,0
7810 DATA 0,0,0,40,0,0,18,0,0,0
7820 REM OBJECT/VALUE DATA
7830 DATA "AXE",0,"SWORD",0,"DAGGER",0,"MACE",0
7840 DATA "QUARTERSTAFF",0,"MORNING STAR",0,"FALCHION",0
7850 DATA "CRYSTAL RALL",99,"AMULET",247," EBONY RING",166,"GEMS",462,"MYSTIC SCROLL",195,"HEALING POTION",231,"DILITHIUM CRYSTALS",162,"COPPER PIECES",27,"DIADEM",141,"SILVER KEY",0,"GOLDEN KEY",0,"CHEST OF STONE",0,"CHEST MADE OF IRON",0
7860 REM DATA MONSTERS
7870 DATA "DWARF","MONOCEROS","PARADRUS","VAMPYRE","WRNACH","GIOLLA DACKER","KRAKEN","FENRIS WOLF","CALOPUS","BASILISK"
7880 DATA "GRIMOIRE","FLYING BUFFALO","BERSERKOID","WYRM","CROWTHERWOOD","GYGAX","RAGNAROK","FOMORINE","HAFGYGR","GRENDEL"
