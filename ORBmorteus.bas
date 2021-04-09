10 MODE 2:BORDER 13:INK 0,13:INK 1,0:GOTO 5300
20 CLEAR:RANDOMIZE TIME:CLS:G=0:J=0:M=0:D=0:O=0:S0=0:Q=0:O0=0:R=0:DIM S$(14):FOR JJ=1 TO 14:READ S$(JJ):NEXT JJ:DIM G$(5):FOR JJ=1 TO 5:G$(JJ)="":NEXT
110 S=1:G=1:IF O0=1 THEN GOSUB 5130
120 IF Q=1 THEN 140
130 GOSUB 4130
140 PRINT"You are in ";S$(S):PRINT"The route follows a path West":PRINT A2$;D1$;A1$:IF G=1 THEN GOSUB 2420:PRINT P0$
190 GOSUB 1850:IF C$="w"THEN 250
230 IF C$="s"OR C$="n"OR C$="nw"OR C$="e"OR C$="ne"OR C$="se"OR C$="sw"THEN GOSUB 3770:PRINT A3$
240 GOTO 110
250 S=2:G=1:PRINT A0$;S$(S):PRINT"Pathways lead Northeast or Northwest, East or West":PRINT A2$;D1$;A1$:IF G=1 THEN GOSUB 2420:PRINT P0$
290 GOSUB 1850:IF C$="ne"THEN 1300
310 IF C$="nw"THEN 1680
320 IF C$="e"THEN 110
330 IF C$="s"OR C$="n"OR C$="se"OR C$="sw"THEN GOSUB 3770:PRINT A3$
340 IF C$="w"THEN 360
350 GOTO 250
360 S=3:G=1:PRINT A0$;S$(S):PRINT"you may now go East, Northeast and North":PRINT A2$;D1$;A1$:IF G=1 THEN GOSUB 2420:PRINT P0$
400 GOSUB 1850:IF C$="ne"THEN 1680
420 IF C$="n"THEN 460
430 IF C$="e"THEN 250
440 IF C$="s"OR C$="se"OR C$="sw"OR C$="nw"OR C$="w"THEN GOSUB 3770:PRINT A3$
450 GOTO 360
460 S=4:J=1:PRINT A0$;S$(S):PRINT"You may choose to go North, South or East":PRINT A2$;D1$;A1$:IF J=1 THEN GOSUB 2530:PRINT P0$
500 GOSUB 1850:IF C$="n"THEN GOSUB 4490:GOTO 560
520 IF C$="e"THEN 1680
530 IF C$="s"THEN 360
540 IF C$="w"OR C$="nw"OR C$="se"OR C$="ne"OR C$="sw"THEN GOSUB 3770:PRINT A3$
550 GOTO 460
560 S=5:J=1:PRINT A0$;S$(S):PRINT"You struggle to go  South or East":PRINT A2$;D1$;A1$:IF J=1 THEN GOSUB 2530:PRINT P0$
600 GOSUB 1850:IF C$="s"THEN 460
630 IF C$="e"THEN 660
640 IF C$="w"OR C$="nw"OR C$="n"OR C$="se"OR C$="ne"OR C$="sw"THEN GOSUB 3770:PRINT A3$
650 GOTO 560
660 S=6:J=1:PRINT A0$;S$(S):PRINT"You may hack your way West, South, East or Northwest":PRINT A2$;D1$;A1$:IF J=1 THEN GOSUB 2530:PRINT P0$
700 GOSUB 1850:IF C$="w"THEN 560
720 IF C$="nw"THEN 770
730 IF C$="s"THEN 1680
740 IF C$="e"THEN 1530
750 IF C$="n"OR C$="nw"OR C$="se"OR C$="ne"OR C$="sw"THEN GOSUB 3770:PRINT A3$
760 GOTO 660
770 S=7:M=1:IF O0=1 THEN PRINT"the bridge is down"
780 PRINT A0$;S$(S):PRINT"The path goes Southeast and East":PRINT A2$;D1$;A1$:IF M=1 THEN GOSUB 2630:PRINT P0$
820 IF S0=1 THEN 850
830 IF O0=1 THEN 870
840 GOSUB 4610
850 GOSUB 1850:IF O0=1 THEN 870
860 IF C$="e"THEN 920
870 IF C$="se"THEN 660
890 IF C$="w"OR C$="n"OR C$="s"OR C$="se"OR C$="ne"OR C$="nw"OR C$="sw"THEN GOSUB 3770:PRINT A3$
910 GOTO 770
920 S=8:M=1:IF O0=1 THEN PRINT"the bridge is out"
930 PRINT A0$;S$(S):PRINT"the track continues West, South and East":PRINT A2$;D1$;A1$:IF O0=1 THEN 1060
970 IF M=1 THEN GOSUB 2630:PRINT P0$
980 GOSUB 1840:IF C$="e"THEN GOSUB 4710:GOSUB 4810
1010 IF C$="s"THEN 1530
1020 IF C$="w"THEN 770
1040 IF C$="n"OR C$="se"OR C$="ne"OR C$="nw"OR C$="sw"THEN GOSUB 3770:PRINT A3$
1050 GOTO 920
1060 S=9:M=1:IF O0=1 THEN 1070 ELSE 1080
1070 PRINT"Your passage is slow through the winter snow without your horses."
1080 PRINT A0$;S$(S):PRINT"A southerly path is Southeast or Southwest or you may go West":PRINT A2$;D1$;A1$:IF M=1 THEN GOSUB 2630:PRINT P0$
1120 GOSUB 1840:IF C$="w"THEN 920
1140 IF C$="se"THEN 1180
1150 IF C$="sw"THEN 1530
1160 IF C$="s"OR C$="n"OR C$="e"OR C$="ne"OR C$="nw"THEN GOSUB 3770:PRINT A3$
1170 GOTO 1060
1180 S=10:D=1:PRINT A0$;S$(S):PRINT"You may follow the trail West, South  and Northwest":PRINT A2$;D1$;A1$:IF D=1 THEN GOSUB 2740:PRINT P0$
1220 GOSUB 1840:IF C$="w"THEN 1530
1240 IF C$="s"THEN 1430
1250 IF C$="nw"THEN 1060
1270 IF C$="e"OR C$="n"OR C$="se"OR C$="sw"OR C$="ne"THEN GOSUB 3770:PRINT A3$
1280 GOTO 1180
1290 IF C$="s"THEN 1430
1300 S=11:D=1:PRINT A0$;S$(S):PRINT"Directions to travel are West, Southwest and Northwest,East":PRINT A2$;D1$;A1$:IF D=1 THEN GOSUB 2740:PRINT P0$
1340 GOSUB 1840:IF C$="sw"THEN 250
1360 IF C$="w"THEN 1680
1380 IF C$="nw"THEN 1530
1390 IF C$="e"THEN 1430
1410 IF C$="s"OR C$="n"OR C$="ne"OR C$="se"THEN GOSUB 3770:PRINT A3$
1420 GOTO 1290
1430 S=12:D=1:PRINT A0$;S$(S):PRINT"You may go West, and North ":PRINT A2$;D1$;A1$:IF D=1 THEN GOSUB 2740:PRINT P0$
1470 GOSUB 1840:IF C$="w"THEN 1300
1500 IF C$="n"THEN 1180
1510 IF C$="e"OR C$="se"OR C$="s"OR C$="ne"OR C$="nw"OR C$="sw"THEN GOSUB 3770:PRINT A3$
1520 GOTO 1430
1530 S=13:O=1:IF G$(1)=""THEN GOSUB 5180
1540 IF G$(1)="raft"THEN GOSUB 4310
1550 PRINT A0$;S$(S):PRINT"You know of land to the Southeast,Southwest,West,East, North and Northeast":IF O=1 THEN GOSUB 2850:PRINT P0$
1590 GOSUB 1840:IF C$="w"THEN 660
1610 IF C$="n"THEN 920
1620 IF C$="ne"THEN 1060
1630 IF C$="e"THEN 1180
1640 IF C$="se"THEN 1300
1650 IF C$="sw"THEN 1680
1660 IF C$="s"OR C$="nw"THEN GOSUB 3770:PRINT A3$
1670 GOTO 1530
1680 S=14:O=1:IF G$(1)=""THEN GOSUB 5180
1690 IF G$(1)="raft"THEN GOSUB 4310
1700 PRINT A0$;S$(S):PRINT"You know of land to the East,Southeast,Southwest,West, North and Northeast":IF O=1 THEN GOSUB 2850:PRINT P0$
1740 GOSUB 1840:IF C$="w"THEN 460
1760 IF C$="n"THEN 660
1770 IF C$="e"THEN 1300
1780 IF C$="se"THEN 250
1790 IF C$="sw"THEN 360
1800 IF C$="ne"THEN 1530
1810 IF C$="s"OR C$="nw"THEN GOSUB 3770:PRINT A3$
1820 GOTO 1680
1840 PRINT:PRINT
1850 INPUT"Type l or c for commands :-";C$:R0=INT(RND*13)+1:IF R0=4 THEN R0=5
1880 IF C$="help"THEN GOSUB 5270:GOTO 2390
1890 IF S=12 THEN GOSUB 3990
1900 IF S=6 THEN GOSUB 3930
1910 IF S=3 THEN GOSUB 3720
1920 IF S=8 THEN GOSUB 3570
1930 C0=0:GOSUB 3200:GOSUB 3470:GOSUB 3620:PRINT:PRINT:L=LEN(C$):IF L=0 THEN 1850:IF L=1 THEN 2010
1960 IF L<2 THEN 2010
1970 FOR I=1 TO L:A$=MID$(C$,I,L):C0=C0+1:A=ASC(A$):IF A=32 THEN F=C0:IF A>=97 AND A<=122 THEN A$=CHR$(A-32)
1980 NEXT:IF L>2 AND F=0 THEN V$=LEFT$(C$,F):N$=MID$(C$,F+1,L):GOTO 2030
2000 IF L>2 AND F>0 THEN PRINT"first word or verb>";LEFT$(C$,F-1);"<":PRINT"second word or noun>";MID$(C$,F+1,L);"<":GOTO 2040
2010 GOSUB 2230:GOTO 2390:IF L>2 AND F=0 THEN PRINT"cmd$ is one verb >";MID$(C$,F+1,L);"< and noun>";LEFT$(C$,F-1);"<":GOTO 2040
2030 C1$=C$
2040 V$=LEFT$(C$,F-1):W0$=MID$(C$,F+1,L):IF C$="get raft"THEN GOSUB 4570:GOTO 2390
2060 IF C$="get fruit"AND S=3 THEN GOSUB 4410:GOTO 2390
2070 IF C$="get spear"AND S=7 THEN GOSUB 4670:GOTO 2390
2080 IF C$="get orb"AND S=8 THEN GOSUB 4931:GOTO 2390
2090 IF C$="steal orb"AND S=8 THEN GOSUB 4931:GOTO 2390
2100 IF C$="take orb"AND S=8 THEN GOSUB 4931:GOTO 2390
2110 IF C$="go gorge"OR C$="go ravine"AND S=8 THEN GOSUB 4810:GOTO 2390
2120 IF C$="make raft"OR C$="make boat"THEN GOSUB 4570:GOTO 2390
2130 IF C$="q"OR C$="quit"THEN 5300
2140 IF V$="examine"THEN LOCATE 1,17:PRINT:PRINT:GOSUB 5360:PRINT:PRINT E0$:GOTO 2390
2150 IF V$="take"THEN LOCATE 1,17:PRINT:PRINT"I took the ";W0$;" as quickly as I could but it still got away from me.":PRINT:GOTO 2390
2160 IF V$="collect"THEN PRINT:PRINT"I tried to collect the ";W0$;" but I failed miserably.":PRINT:GOTO 2390
2170 IF V$="inspect"THEN PRINT:PRINT:GOSUB 5360:PRINT E0$:PRINT:PRINT:GOTO 2390
2180 IF V$="build"THEN PRINT:PRINT"I have tried to build the ";W0$;"  but have not been able to yet.":PRINT:GOTO 2390
2190 IF V$="search"THEN LOCATE 1,17:PRINT:PRINT"I have tried to search for the ";W0$;"  but have not been able to yet.":PRINT:GOTO 2390
2230 IF C$="q"THEN 5300
2240 IF C$="e"THEN D1$="East":GOTO 2390
2250 IF C$="ne"THEN D1$="NorthEast":GOTO 2390
2260 IF C$="se"THEN D1$="SouthEast":GOTO 2390
2270 IF C$="w"THEN D1$="West":GOTO 2390
2280 IF C$="nw"THEN D1$="NorthWest":GOTO 2390
2290 IF C$="sw"THEN D1$="SouthWest":GOTO 2390
2300 IF C$="s"THEN D1$="South":GOTO 2390
2310 IF C$="n"THEN D1$="North":GOTO 2390
2320 IF C$="d"THEN D1$="Down":GOTO 2390
2330 IF C$="u"THEN D1$="Up":GOTO 2390
2340 IF C$="l"THEN D1$="with vision":GOTO 2390
2350 IF C$="i"THEN D1$="bringing these items":GOTO 2380
2360 IF C$="c"THEN CLS:GOSUB 3020:GOSUB 3170:GOTO 2390
2370 GOTO 2390
2380 PRINT"You are carrying :-";:FOR JJ=1 TO 5:PRINT G$(JJ):NEXT JJ:GOTO 2390
2390 RETURN
2420 P1=INT(RND*6)+1:ON P1 GOTO 2430,2440,2450,2460,2470,2480,2490
2430 P0$="The wild grasses here are still waist deep.":GOTO 2500
2440 P0$="There are snakes hidden in the long grass.":GOTO 2500
2450 P0$="Many wild animals lurk in the depths of the grasses.":GOTO 2500
2460 P0$="You can't tell how solid the ground is beneath your feet.":GOTO 2500
2470 P0$="Flocks of birds suddenly fly up as you approach.":GOTO 2500
2480 P0$="The grasses cut into your arms and legs and makes you itch.":GOTO 2500
2490 P0$="These are treeless unending fields of waiving grass.":GOTO 2500
2500 G=0:RETURN
2530 P1=INT(RND*5)+1:ON P1 GOTO 2540,2550,2560,2570,2580,2590
2540 P0$="The Deep Forests of Timbrell come as a wall preventing easy passage":GOTO 2600
2550 P0$="The forest is nearly impenetrable":GOTO 2600
2560 P0$="Insects prove to be the greatest menace here.":GOTO 2600
2570 P0$="The Jungle of the Twin Valleys is wrought with unseen danger.":GOTO 2600
2580 P0$="Beware of snakes dropping from the trees.":GOTO 2600
2590 P0$="You must slash your way through the dense undergrowth.":GOTO 2600
2600 J=0:RETURN
2630 P1=INT(RND*5)+1:ON P1 GOTO 2640,2650,2660,2670,2680,2690
2640 P0$="Robbers and Bandits infest the Steppes of Drubel all the way to the Mountains.":GOTO 2710
2650 P0$="There are many different species of burrowing creatures which leave dangerous     holes in the ground.":GOTO 2710
2660 P0$="The Steppes are easy going compared to the rugged rocky ravines of the mountains.":GOTO 2710
2670 P0$="Severely cold icy winds sweep down from the heights.":GOTO 2710
2680 P0$="A blanket of snow envelopes Winter bringing passage to a standstill.":GOTO 2710
2690 P0$="The Ravine of Mortus looms up like a barrier. The closer you get the more impossible it appears.":GOTO 2710
2710 M=0:RETURN
2740 P1=INT(RND*5)+1:ON P1 GOTO 2750,2760,2770,2780,2790,2800
2750 P0$="Thick Forests and rising waters make the Darklands unpredictable.":GOTO 2820
2760 P0$="Swamps are frequently encountered slowing progress even further.":GOTO 2820
2770 P0$="Insects and mosquitoes plague the crossing in such numbers that even speaking is dangerous.":GOTO 2820
2780 P0$="It is necessary to construct rafts from bamboo in order to cross the many        streams and lagoons.":GOTO 2820
2790 P0$="The constant wetness saturates everything in your packs.":GOTO 2820
2800 P0$="There is nowhere to rest in these forsaken swamps.":GOTO 2820
2820 D=0:RETURN
2850 P1=INT(RND*5)+1:ON P1 GOTO 2860,2870,2880,2890,2900,2910
2860 P0$="The vastness of the Oceans makes crossing it impossible.":GOTO 2930
2870 P0$="The saltwater cannot be drunk and will not sustain life.":GOTO 2930
2880 P0$="It is impossible to carry enough food for the months it would take to cross.":GOTO 2930
2890 P0$="Small inconveniences become major problems on such a crossing.":GOTO 2930
2900 P0$="Being exposed to the elements in an open boat for so long is highly dangerous.":GOTO 2930
2910 P0$="Even the best mariners dread the fullness of the Oceans.":GOTO 2930
2930 O=0:RETURN:DATA"The Grasslands in the Kingdom of Brihad","The Grasslands in the neighbouring Country of Rihad","The Trees and grasslands of Upper Arborine","The Tall Forests of Timbrell"
2950 DATA"The First Jungle of the Twin Valleys","The Second Jungle of the Twin Valleys"
2960 DATA"The Highlands of Drubel","The Northern Escarpment of Morteus","The Northern Wilderness of Morteus"
2970 DATA"The Rain Forests of Florien","The Dark Forests of Lansabad","The Forests of Blear"
2980 DATA"The Great Northern Ocean","The Deep Southern Ocean"
3020 PRINT"SOME WORDS I KNOW":PRINT"---------------":PRINT"get,  go, build ":PRINT"examine, collect":PRINT"spear, fruit,orb":PRINT"raft, take, boat":PRINT"inspect, search ":PRINT"quit, look, help":PRINT"some abreviations are"
3110 PRINT"n,s,w,e,nw,ne,sw,se,l,c,i":PRINT" You are now in ";S$(S):RETURN
3170 INPUT"press enter ";P$:RETURN
3200 A0=INT(RND*8)+1:ON A0 GOTO 3210,3220,3230,3240,3250,3260,3270,3280,3290
3210 A0$="Now you are in ":GOTO 3300
3220 A0$="Finally you reach ":GOTO 3300
3230 A0$="After a harrowing effort you find yourself in ":GOTO 3300
3240 A0$="This time you are in ":GOTO 3300
3250 A0$="Soon you arrive in ":GOTO 3300
3260 A0$="Eventually you make it to ":GOTO 3300
3270 A0$="You find that you are in ":GOTO 3300
3280 A0$="Here you are in ":GOTO 3300
3290 A0$="Your persistance has brought to ":GOTO 3300
3300 RETURN:FOR P=1 TO 3000:NEXT P:RETURN:RETURN:RETURN
3470 A2=INT(RND*5)+1:ON A2 GOTO 3480,3490,3500,3510,3520,3530
3480 A2$="You travelled ":GOTO 3540
3490 A2$="You wandered ":GOTO 3540
3500 A2$="You came ":GOTO 3540
3510 A2$="You pushed your way ":GOTO 3540
3520 A2$="You blazed a trail ":GOTO 3540
3530 A2$="You chose a "+D1$+"erly direction ":GOTO 3540
3540 RETURN
3570 PRINT"You are now confronted by the Ravine of Morteus":PRINT"The only way across it is via a narrow rope bridge":PRINT"The Ravine drops off hundreds of feet below":RETURN
3620 A1=INT(RND*5)+1:ON A1 GOTO 3630,3640,3650,3660,3670,3680
3630 A1$=" to get here.":GOTO 3690
3640 A1$=" to arrive at this place.":GOTO 3690
3650 A1$=" to make it this far.":GOTO 3690
3660 A1$=" to reach this destination.":GOTO 3690
3670 A1$=" to be here.":GOTO 3690
3680 A1$=" set up camp here."
3690 RETURN
3720 PRINT"The Orchards of Arborine lie west of the grassy plains.":PRINT"The fruit of the Orchards is poisonous both to the touch and to consume.":PRINT"The fruit-fly carry a toxin which can infect unwary travellers.":RETURN
3770 W=INT(RND*9)+1:ON W GOTO 3800,3810,3820,3830,3840,3850,3860,3870,3880,3890
3800 A3$="There is no way out this far "+D1$:GOTO 3910
3810 A3$="The "+D1$+"erly path is overgrown and lost":GOTO 3910
3820 A3$="The way is blocked to travelers going "+D1$:GOTO 3910
3830 A3$="I can see no exit in this "+D1$+"erly direction":GOTO 3910
3840 A3$="There is a sheer cliff in front of me "+D1$:GOTO 3910
3850 A3$="An impenetrable forest lies to the "+D1$+" blocking the way "+D1$:GOTO 3910
3860 A3$="A dense fog makes further travel "+D1$+" impossible.":GOTO 3910
3870 A3$="A Witch has put a curse on the road to the "+D1$+". We had better choose another route.":GOTO 3910
3880 A3$="The "+D1$+"ern path is washed out by floodwaters. Choose another route.":GOTO 3910
3890 A3$="Ferocious Pygmys ambush the way ahead to the "+D1$+". You must turn back now!"
3910 RETURN
3930 PRINT"You are lost in the darkest jungle of the Twin Valleys":PRINT"Here you stumble across a long lost city made entirely out of sandstone":PRINT"The hidden city of Triolle is deserted and completely taken over by the jungle"
3960 PRINT"Monkeys and other primates inhabit it now. Beware they steal your provisions.":RETURN
3990 PRINT"Unlike the Darklands of Lansabad, the Forests of Blear are ":PRINT"inhabited by the poison pygmy people of Prahm.":PRINT"They live in the trees of Prahm and use poisonous darts to hunt":PRINT" their prey and to kill their enemies"
4030 PRINT"There is no reasoning with them. They can't communicate through ":PRINT"language as their own is too primitive.":PRINT"As you pass through their territory you come under attack"
4060 PRINT"Poisonous darts fly into your luggage and thick leather clothing":PRINT"You are saved from death by the armour you wear however it still is":PRINT"a harrowing experience and you make haste for the protective"
4090 PRINT"forests of Lansabad to the west.":RETURN
4130 PRINT"Your quest is to receive the famed Orb of Morteus from the ":PRINT"recluse who dwells on the threshold of Morteus.":PRINT"Your path is yours to discover but beware there are many ":PRINT"dangers that lie in    wait for your passage."
4170 PRINT"The hermit is difficult to find as he moves around":PRINT" on the Steppes of Drubel     hunting his living.":PRINT"The Orb of Morteus as its name suggests is a sphere.":PRINT"of pure crystal with some    unique properties."
4210 PRINT"In the right hands it can predict future events so ":PRINT"that unnatural catastrophies   can be avoided.":PRINT"You however do not possess the gene necessary to wield ":PRINT"the Orb. You are merely   the courier."
4250 PRINT"You are an adventurer, one of many who have attempted this quest.":PRINT"journey West to begin your Quest .":Q=1:RETURN
4310 PRINT"You have been adrift on a bamboo raft for days now.":PRINT"You have drunk the last of your water and the only ":PRINT"provisions you have left are a few coconuts.":PRINT"Look to see if any land is within sight"
4350 PRINT"By some miracle you have survived this crossing":RETURN
4410 G$(2)="fruit":PRINT"Got it!":PRINT"You find yourself in the Orchards of Upper Arborine.":PRINT"You must give the order to pick the fruit carefully wearing leather gloves.":PRINT"You only take  five of the pear shaped fruits. "
4450 PRINT"Just enough to coax the Druid of Drubel out of the Orb.":PRINT"You stow the fruit in your saddlebags and continue on your way.":RETURN
4490 PRINT"As you enter the Forests of Timbrell you are overcome ":PRINT"by the majestic beauty and spaciousness of the tall timbers.":PRINT"This is open forest wherein many animals graze and find shelter."
4520 PRINT"The hunting is good here and you and your party eat well for the time being.":PRINT"But the further north you travel this spaciousness is devoured ":PRINT"by thick underbrush which soon becomes jungle.":RETURN
4570 G$(1)="raft":PRINT"Got it!":PRINT"You build a makeshift raft out of Bamboo and some other timbers that     seemed to be suitable.":PRINT"You add provisions that should last you many days, mostly fruit and coconuts.":RETURN
4610 PRINT"As you approach the Steppes of Drubel You are attacked ":PRINT"by a gang of ruthless bandits.":PRINT"One of them throws a spear at you but you dodge":PRINT"it and then drive them off. The spear could be an asset.":S0=1:RETURN
4670 G$(3)="spear":PRINT"Got it !":PRINT"In picking up the spear you are careful not to ":PRINT"touch the tip as it could be poisonous.":S0=1:RETURN
4710 PRINT"After travelling for months you finally come into the Steppes of Drubel":PRINT"You find yourself in the Ravine of Morteus, a narrow gorge hundreds of feet deep":PRINT"with a gushing river which consumes  anything which falls into it."
4760 PRINT"The Ravine is crossed by a narrow rope bridge that stretches two hundred meters":PRINT"across the Gorge. Below in the walls of the gorge you can see caves.":RETURN
4810 PRINT"You decide not to take the rope bridge but instead to explore the ravine below.":PRINT"There are many caves, some showing signs of habitation.":PRINT"One cave you discover is massive and you decide to follow the many volcanic      tubes "
4840 PRINT"that form its tunnels. The tube opens into a cathedral sized cavern. It is here":PRINT"that you discover the Hermit of Drubel closely guarding the Orb of Morteus.":GOSUB 3170
4870 PRINT"Now you must decide whether to go through with the plan to steal ":PRINT" the Orb of Morteus. What must you do now? ":GOSUB 1850:RETURN
4931 IF G$(2)<>"fruit"THEN 5525
4940 G$(2)="Orb of Morteus":O0=1:PRINT"You place the fruit that you have of the Arborine trees":PRINT"on a pedestal then step away from it, and you watch as the hermit":PRINT"approaches the fruit cautiously."
4980 PRINT"Your heart beats furiously as you watch him handle the fruit.":PRINT"Suddenly he hisses and throws the fruit to the floor in disgust.":PRINT"You wonder with amazement 'does he know the fruit? "
5010 PRINT"Does he know the secret of the poison?' Why is it that he didn't taste it.":PRINT"A lethal taste is all that was needed but as it turned out":PRINT"the handling of the fruit was enough to place the hermit"
5040 PRINT"into a deep sleep, almost a coma. When he fell to the floor you ran in ":PRINT"and grabbed the Orb of Morteus. You steal the Orb without hesitation.":PRINT"Packing the Orb into your saddlebags you and your entourage flee"
5070 PRINT"to the surface once again. Once there you use the rope bridge to cross the":PRINT" Ravine unfortunately leaving your horses and mules behind.":PRINT"You slash the bridge from its moorings thereby ensuring your getaway.":GOSUB 3170:RETURN
5130 PRINT"Congratulations you have made it back to the safety of the Grasslands of Brihad":PRINT"You are hailed as a hero to return with the Orb of Morteus":GOSUB 5460:RETURN
5180 PRINT"You find yourself in the ocean without a raft or any means to keep afloat.":PRINT"You cannot survive for more than a few hours. It will be the toss of the Dice":PRINT"to see whether you survive. The Die has been cast......":D0=INT(RND*9)+1
5210 IF D0<5 THEN 5230
5220 IF D0>6 THEN 5240
5230 PRINT"You manage to swim to shore":GOSUB 3170:GOTO 5250
5240 PRINT"You unfortunately do not survive. Next time build a raft.":GOSUB 3170:GOTO 5300
5250 RETURN
5270 PRINT:PRINT"Take your boat with you wherever you go in case you fall into the ocean":PRINT:PRINT:RETURN
5300 CLS:LOCATE 24,5:PRINT"THE ORB OF MORTEUS":LOCATE 29,7:PRINT"by":LOCATE 27,9:PRINT"Hannah Orion":LOCATE 20,11:PRINT"Converted to CPC 04'2021 by SRS":LOCATE 1,25:INPUT"Press Enter to start";AS$:GOTO 20
5360 E=INT(RND*3)+1:ON E GOTO 5370,5380,5390,5400
5370 E0$="I have examined the "+W0$+" carefully but did not find anything unusual.":GOTO 5410
5380 E0$="An examination of the "+W0$+" did not reveal any insights.":GOTO 5410
5390 E0$="The "+W0$+" was examined thoroughly without any problems.":GOTO 5410
5400 E0$="The "+W0$+" did not pass the examination."
5410 RETURN
5460 RETURN:RETURN
5525 PRINT"You need the poisonous fruit of the Arborine trees in order to complete this     plan.":RETURN