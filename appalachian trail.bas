100 MODE 2:INK 0,26:INK 1,0:BORDER 26:DEFINT a-z:LOCATE 1,10:X$="Appalachian Trail":GOSUB 5600:LOCATE 1,13:X$="(c) by David H. Ahl, 1986":GOSUB 5600:LOCATE 1,16:X$=CHR$(24)+"Converted to CPC 2017 by SRS"+CHR$(24):GOSUB 5600:LOCATE 1,23
130 X$="Press any key to continue.":GOSUB 5600:WHILE LEN(INKEY$)=0:RN=RN+1:WEND:WHILE RN>32767:RN=RN-65535:WEND:RANDOMIZE RN:CLS:GOSUB 5630:DIM H(25),D(25),L$(25):WHILE LEN(INKEY$)=0:RN=RN+1:WEND:DB=300:CLS:PRINT"First we need some data about you.":PRINT
210 INPUT"Your sex (male or female)";A$:GOSUB 5550:IF A$<>"M"AND A$<>"F"THEN PRINT"Answer 'M' or 'F' please.":GOTO 210
230 INPUT"Your weight in pounds";WB:IF WB>79 AND WB<401 THEN 260
250 PRINT"Surely you jest. Let's try that one again.":GOTO 230
260 PRINT"What is your physical condition (1 = excellent, 2 = good, ";:INPUT"3 = fair, 4 = poor)";P:IF P<1 OR P>4 THEN PRINT"Answer 1, 2, 3, or 4 please.":GOTO 260
290 PRINT:PRINT"Walking pace: You may change your pace as the hike progresses.":PRINT"Remember, a faster pace covers the distance more quickly but":PRINT"burns more calories and has a higher risk of injury.":PRINT"Slow and deliberate......1.7 mph"
330 PRINT"Moderate and vigorous......3 mph":PRINT"Fast and very difficult....4 mph"
350 INPUT"At what rate in mph do you wish to walk (number & decimal okay)";RW:IF RW<1 OR RW>4.2 THEN PRINT"A rate of"RW"mph is silly.":GOTO 350
370 PRINT:PRINT"Walking hours per day: You may change this as time goes on."
380 INPUT"To start, how many hours do you wish to walk per day";TW:IF TW>14 THEN PRINT"That's just too ambitious.":GOTO 380
400 IF TW*RW<7 THEN PRINT"You won't even reach NJ by Christmas.":GOTO 380
410 PRINT:PRINT"Your sensitivity to poison ivy:":PRINT" (1) Highly sensitive":PRINT" (2) Moderately sensitive":PRINT" (3) Immune":PRINT" (4) Had series of desensitization shots"
440 INPUT"Which number describes you";I0:IF I0<1 OR I0>4 THEN PRINT"What's that? Let's try again.":GOTO 440
460 PRINT:PRINT"People who have hiked the Trail have different feelings ";:PRINT"about rain:":PRINT" (1) Let it pour, I love it.":PRINT" (2) No problem as long as the sun comes out every few days.":PRINT" (3) Five solid days of rain really gets me down."
500 PRINT" (4) If I foresee a long stretch of rain, I'll hole up in a":PRINT" shelter or motel and wait it out."
520 INPUT"Which number most closely describes your feeling";R:IF R<1 OR R>4 THEN PRINT"Not possible. Again please.":GOTO 520
560 PRINT:PRINT"You must make some decisions about what to pack."
570 FOR I=1 TO 7:READ S$(I):PRINT:PRINT S$(I)":":FOR J=1 TO 4:READ I0$(J),W(J),C0(J),VL(J):PRINT J".. "I0$(J):W1=W(J):PRINT" ";:GOSUB 5440:IF VL(J)>0 THEN PRINT","VL(J)"cu in";
610 IF C0(J)>0 THEN PRINT", price: $"C0(J)
620 NEXT J
630 INPUT"Which one do you want (number)";A:IF A<1 OR A>4 THEN PRINT"Come on now; answer 1, 2, 3, or 4":GOTO 630
650 I$(I)=I0$(A):WT(I)=W(A):C(I)=C0(A):V(I)=VL(A):NEXT I:V=V(1)+V(5)+V(7):V0=V(3)+V(4):PRINT:IF C(2)>135 THEN IF V(2)>3000+V THEN 720 ELSE 690
680 IF V(2)>3000+V+V0 THEN 720
690 PRINT"Your pack is too small to hold all those things plus clothes and":PRINT"food. You'll have to take a larger pack or some smaller items.":PRINT:PRINT"Let's try again":RESTORE:GOTO 570
720 INPUT"How many changes of underwear do you want to take";U:IF U>6 THEN PRINT"This is not a picnic. Take fewer.":GOTO 720
740 INPUT"Do you want to take a walking stick (Y or N)";A$:GOSUB 5550:IF A$="Y"THEN S0=1 ELSE S0=0
760 PRINT:PRINT"To summarize, here is what you have chosen:":FOR I=1 TO 7:PRINT S$(I)" : "I$(I):NEXT I:PRINT"Changes of underwear:"U:IF S0=1 THEN PRINT"Walking stick."
800 PRINT" In addition, you must carry (or wear) a hat, short-sleeve shirt,":PRINT"chamois shirt, light jacket, long underwear, hiking shorts, long":PRINT"pants, 3 pairs socks, eating gear, water bottle, soap, toilet tissue,"
830 PRINT"toilet supplies, towel, first-aid kit, snakebite kit, flashlight,":PRINT"100' nylon cord, watch, compass, lighter, bandanna, sewing kit, insect":PRINT"repellent, Swiss Army knife, water-purifier tablets, notebook, maps,"
860 PRINT"guidebook, stuff sacks, moleskin, camera, and money.":PRINT:FOR I=1 TO 7:WP=WP+WT(I):C2=C2+C(I):NEXT I:WP=WP+190+U*4:IF S0=1 THEN WP=WP+24
890 PRINT"If you bought everything new, the total cost would be $"225+C2:PRINT"The total weight of what you are wearing and carrying is";:W1=WP:GOSUB 5440:PRINT:PRINT".... not including food or water.":GOSUB 5400:PRINT
940 PRINT"Common systems of food supply include:":PRINT" (1) Caches buried along the trail. Pros: no wasted time leaving":PRINT" the Trail for food, heavy items can be buried.":PRINT" (2) Food sent to post offices along the way. Pros: more flexible"
980 PRINT" than caches. Cons: P.O.s closed nights, Sat pm and Sun.":PRINT" (3) Grocery stores and restaurants. Pros: good variety, cheap.":PRINT" Cons: wasted time leaving Trail, limited opening hours."
1010 INPUT"Which will be your major method of food supply";F:IF F<1 OR F>3 THEN PRINT"Sorry, try again.":GOTO 1010
1030 IF F=1 THEN RT=1 ELSE RT=0.95
1040 RM=RT:GOSUB 5520
1050 CLS:PRINT"Obviously, you will carry your food in the most efficient form:":PRINT"dried, dehydrated, concentrated, etc. However, you must specify":PRINT"the percentage of your diet accounted for by each of the following"
1090 PRINT"food groups (remember, all five must add up to 100).":PRINT" (1) Dairy foods, cheese, yogurt":PRINT" (2) Fruits and vegetables":PRINT" (3) Meat, poultry, fish, eggs":PRINT" (4) Bread, cereal, seeds, nuts,"
1140 PRINT" (5) Margarine, lard, oils, fats":CT=0:FOR I=1 TO 5:LOCATE 39,I+4:INPUT F(I):CT=CT+F(I):NEXT I:LOCATE 39,10:PRINT CT"%":PRINT:IF CT=100 THEN PRINT"Very good.":GOTO 1230
1180 PRINT"Sorry, but your percentages add up to"CT"rather than to 100%.":PRINT:PRINT"Press any key when you're ready to try again.":WHILE LEN(INKEY$)=0:WEND:GOTO 1050
1230 DM=RW*TW:IF DM>30 THEN DM=30
1250 CD=INT(WB*11.5+WB*DM*0.3+(WB+WP/16)*DM*0.21+WB*(15-TW)*0.22):PRINT:PRINT"Given your weight and that of your supplies, your walking":PRINT"speed, and your walking time per day, you can expect"
1280 PRINT"to burn at least"CD"calories per day."
1290 PRINT:INPUT"How many calories worth of food do you want to eat";C1:IF C1>0.6*CD THEN 1330
1310 PRINT"Your body will rebel against burning that much body fat.":PRINT"Better eat a bit more":GOTO 1290
1330 IF C1>1.5*CD THEN PRINT"No blimps allowed on the trail.":GOTO 1290
1340 F0=INT(C1*3.2/(4*F(1)+3*F(2)+4*F(3)+4*F(4)+9*F(5))):W1=F0:PRINT"That means eating an approx food weight per day of";:GOSUB 5440:PRINT:PRINT:IF F=3 THEN DY=2 ELSE DY=3
1370 W=DY*F0+17:C=W*DM*0.21:WP=WP+W:CD=CD+C:PRINT"Food and water add"W"oz. to your trail weight bringing your":PRINT"total weight (worn and carried) to";:W1=WP:GOSUB 5440:PRINT:PRINT:X$="Preparations are finally complete!":GOSUB 5600
1400 GOSUB 5520:WP=WP/16:GOSUB 1940:PRINT:PRINT:GOSUB 5100:PRINT" It is April 1 and you briskly step out on the approach trail":PRINT"at Amicalola Falls, Georgia. You hike the 6.9 miles to the peak"
1480 PRINT"of Springer Mountain and sign the trail log, the first of many":PRINT"that you intend to sign. Your hike will take you through 14":PRINT"states as the Trail wanders 2007 miles along the Appalachian"
1510 PRINT"Mountains to Baxter Peak on Mt. Katahdin in Maine. It is a":PRINT"challenging trail with an average climb of 200 feet each mile.":PRINT"Fewer than 2000 people have walked its entire length. Good luck!":PRINT:GOSUB 5400
1570 T=T+3:TD=INT(T+0.5):PRINT:GOSUB 5210:D0=3*RM*D1:D=D+D0:IF D>1999 THEN 4570
1590 PRINT"You have walked"INT(D)"miles. ";:FOR I=1 TO 21:IF D>D(I)-17 AND D<D(I)+17 THEN 1620
1610 NEXT I:PRINT:GOTO 1630
1620 PRINT"You are near"L$(I)
1630 IF D>1466 THEN R(10)=0.85:T(10)=2007
1640 GOSUB 1720:IF T>12 THEN GOSUB 4040
1660 IF D>1545 AND T>166 THEN GOSUB 4270
1670 IF D>1845 AND K=0 THEN GOSUB 4390
1680 IF D>(S1+1)*400 THEN GOSUB 1830
1690 GOSUB 5400:GOTO 1570
1720 TM=0:RN=INT(1+40*RND(1)):IF RN>35 THEN RN=36
1730 IF RN>12 THEN 1760
1740 ON RN GOSUB 2070,2110,2150,2220,2260,2300,2320,2340,2390,2410,2430,2460:GOTO 1800
1760 IF RN>24 THEN 1790
1770 ON RN-12 GOSUB 2530,2570,2600,2630,2670,2710,2750,2770,2790,2820,2870,2910:GOTO 1800
1790 ON RN-24 GOSUB 2960,2990,3010,3040,3070,3100,3130,3170,3200,3220,3260,3340
1800 T=T+TM:GOSUB 2030:RETURN
1830 S1=S1+1:INPUT"Want to change walking pace or hours of walking";A$:GOSUB 5550:IF A$<>"y "THEN 1910
1850 INPUT"New walking pace (mph)";RW:IF RW<1 OR RW>4.5 THEN PRINT"A rate of"RW"mph is silly.":GOTO 1850
1870 INPUT"New hours per day on the trail";TW:IF TW>14 THEN PRINT"Come now; that's just too ambitious.":GOTO 1870
1890 IF S0=1 THEN 1910 ELSE PRINT"Want to change your mind and carry a";
1900 INPUT"walking stick";A$:GOSUB 5550:IF A$="Y"THEN S0=1
1910 PRINT:GOSUB 1940:RETURN
1940 D1=RW*TW:IF D>600 THEN P=1
1960 D2=6+6*(5-P):IF D1>D2 THEN D1=D2
1970 IF WB/WP>6 THEN 1990
1980 D1=(0.49+0.086*WB/WP)*D1
1990 IF S1=0 THEN RETURN
2000 GOSUB 3830:RETURN
2030 RM=RT:FOR I=1 TO 10:IF T(I)>T THEN RM=RM*R(I)
2040 NEXT I:RETURN
2070 IF D>360 OR H(6)=1 THEN RETURN ELSE TM=0.5:H(6)=1
2080 PRINT"You run into Rangers on military exercises who advise you to avoid":PRINT"the trail for the next few miles because of booby traps.":RETURN
2110 IF D<800 OR H(12)=1 THEN RETURN ELSE TM=1:H(12)=1
2120 PRINT"The back-support strap on your backpack has worn through. You'll":PRINT"have to find a shoemaker to sew on a piece of heavy leather.":RETURN
2150 IF D-DB<500 THEN RETURN ELSE IF H(15)=1 THEN 2180 ELSE TM=1:H(15)=1
2160 PRINT"The soles of your boots have worn through. You'll have to get new":PRINT"soles at a shoemaker.":RETURN
2180 IF D-DB<800 THEN RETURN ELSE TM=1.5:DB=D:H(15)=0
2190 PRINT"Your repaired boot soles are going again. You'll have to buy a new":PRINT"pair of boots along the way.":RETURN
2220 IF D-DB<700 THEN RETURN ELSE IF H(24)=1 THEN RETURN ELSE TM=1:H(24)=1
2230 PRINT"The uppers on your boots are starting to separate from the soles.":PRINT"You'll have to get them repaired by shoemaker.":RETURN
2260 IF D<1000 OR H(23)=1 THEN RETURN ELSE TM=0.4:H(23)=1
2270 PRINT"The seat of your pants has worn through. You can take off the":PRINT"pockets and sew them over the holes.":RETURN
2300 TM=0.3:PRINT"Mice got into your food last night. Yuck.":RETURN
2320 TM=0.3:PRINT"Some Boy Scouts kept you awake 'til 1 am last night.":RETURN
2340 IF D>900 THEN RETURN ELSE TM=0.1
2350 PRINT"Curs attack you as you are walking through a small town.":IF S0=1 THEN PRINT"You drive them off with your walking stick.":RETURN
2370 PRINT"They nip at your heels. You should really carry a stick.":RETURN
2390 TM=0.3:PRINT"Trail is poorly marked and you get temporarily lost.":RETURN
2410 TM=0.2:PRINT"Broken zipper on your pack. Lose time drying stuff.":RETURN
2430 TM=0.3:PRINT"Route marked on map is out of date. You lose time trying":PRINT"to get back on the trail.":RETURN
2460 IF H(1)>1 THEN RETURN ELSE TM=2:H(1)=H(1)+1:D3=1
2470 PRINT"You forget to shake out your boot and a snake has curled up inside":PRINT"for the night. You're scared and he's mad.":GOSUB 5520:IF RND(1)<0.9 THEN PRINT"He slithers away and all is okay. Whew!":RETURN
2500 PRINT"It's a rattler and he bites you. You'll have to get a doctor.":GOTO 3370
2530 IF D>165 OR H(7)=1 THEN RETURN ELSE H(7)=1:RN=INT(1+4*RND(1)):TM=RN
2540 PRINT"Late snow in the Smokies. The trail is unpassable for"RN"days.":RETURN
2570 IF H(8)>3 THEN RETURN ELSE H(8)=H(8)+1:R(1)=0.9:T(1)=T+14
2580 PRINT"You have some nasty blisters that will slow your pace.":RETURN
2600 IF H(9)>2 THEN RETURN ELSE H(9)=H(9)+1:R(2)=0.7:T(2)=T+3
2610 PRINT"You have bad indigestion from an unbalanced diet.":RETURN
2630 IF D>870 OR H(10)=1 THEN RETURN ELSE H(10)=1:TM=0.5
2640 PRINT"A bear got into your food and ripped your pack last night. It's":PRINT"a good thing he wasn't hungry for human burgers.":RETURN
2670 IF H(11)>1 THEN RETURN ELSE H(11)=H(11)+1:R(3)=0.75:T(3)=T+6
2680 PRINT"You twisted your ankle crossing a stream. That will slow your":PRINT"pace for a few days. Be more careful!":RETURN
2710 IF H(2)=1 THEN RETURN ELSE H(2)=1:D3=2
2720 PRINT"You slipped on some rocks on a ledge. It's incredibly painful!":PRINT"Better see a doctor.":GOTO 3370
2750 TM=0.3:PRINT"A branch snaps in your eye. Lose time to treat it.":RETURN
2770 TM=0.3:PRINT"Bad case of constipation. Better change diet.":RETURN
2790 TM=0.5:PRINT"You fell in a stream and everything got wet. Lose time":PRINT"drying out your sleeping bag and clothes.":RETURN
2820 IF H(13)=1 THEN RETURN ELSE H(13)=1:TM=1.5
2830 PRINT"Last night you saw an animal moving near you and swatted at it.":GOSUB 5520:PRINT"Big mistake! It was a skunk. You'll have to wash":PRINT"what you can and replace the rest.":RETURN
2870 IF H(14)=1 THEN RETURN ELSE H(14)=1:TM=2
2880 PRINT"Lowliest of the low! Someone stole your pack while you were taking":PRINT"a shower. You'll have to replace everything.":RETURN
2910 IF H(3)=1 THEN RETURN ELSE H(3)=1:TM=3:D3=3
2920 PRINT"After five solid days of rain, everything is soaked and you just":PRINT"can't stop shivering. You feel so terrible that you'll have to":PRINT"see a doctor.":GOTO 3370
2960 IF H(16)=1 THEN RETURN ELSE H(16)=1:TM=0.4
2970 PRINT"You cut your hand badly with your knife. Be careful!":RETURN
2990 TM=0.3:PRINT"Socks worn through. You'll have to buy new ones.":RETURN
3010 IF H(17)=1 THEN RETURN ELSE H(17)=1:TM=1
3020 PRINT"Bad toothache. You'll have to find a dentist soon.":RETURN
3040 IF H(18)=2 OR WT(1)=0 THEN RETURN ELSE H(18)=H(18)+1:TM=0.5
3050 PRINT"Tent ripped. You'll have to sew on a patch.":RETURN
3070 IF D<1000 OR H(19)=1 THEN RETURN ELSE H(19)=1:TM=0.3
3080 PRINT"Your groundcloth is in shreds. Must buy a new one.":RETURN
3100 IF D<500 OR H(20)=1 OR WT(7)=0 THEN RETURN ELSE H(20)=1:TM=0.4
3110 PRINT"Bad rip in raingear. Must get a replacement.":RETURN
3130 IF D<600 OR H(21)=1 OR S0=0 THEN RETURN ELSE H(21)=1:R(4)=0.9:TM=0.4
3140 PRINT"Your walking stick breaks. You can get a new one in the next":PRINT"town. Maybe they make 'em better up here.":T(4)=T+4:RETURN
3170 IF H(22)=1 THEN RETURN ELSE H(22)=1:TM=0.4
3180 PRINT"Your water bag springs a leak. Better get a new one soon!":RETURN
3200 TM=0.2:PRINT"You run out of toilet tissue. Yucko!":RETURN
3220 PRINT"You run out of water and the springs marked on the map seem":PRINT"to have vanished or dried up. Better take it easy for a bit.":H(5)=1:R(5)=0.9:T(5)=T+3:RETURN
3260 IF H(4)=3 THEN RETURN ELSE H(4)=H(4)+1:D3=4
3270 PRINT"Oh oh, you stumble into a thicket of poison ivy. Zowie!":IF I0=1 OR(I0=2 AND RND(1)>0.5)THEN 3290 ELSE 3300
3290 PRINT"You got it really bad. You'll have to see a doctor.":GOTO 3370
3300 PRINT"Like it or not, you got a mild case. It itches like crazy but the":PRINT"calamine seems to have it under control. It slows you down tho'.":R(6)=0.9:T(6)=T+7:TM=0.4:RETURN
3340 PRINT"Walkingwalkingwalkingwalking.":RETURN
3370 PRINT:PRINT"You're feeling horrible, but you found a nice country doctor.":ON D3 GOTO 3410,3480,3570,3640,3700
3410 PRINT"He examines your swollen leg and says,":GOSUB 5520:PRINT"'Good thing you got here so quickly. I'll give you a shot of anti-":PRINT"venin but you're going to be out of commission for a good 4 days"
3440 PRINT"and even after that you'll have to take it easy for a while.'":TM=4:R(7)=0.7:T(7)=T+15:RETURN
3480 PRINT"He examines your leg and says,":GOSUB 5520:IF RND(1)>0.7 THEN 3520
3490 PRINT"'That's a very nasty sprain. I'll tape it up, but you'll have to":PRINT"take it easy for at least a month.'":TM=1.5:R(8)=0.6:T(8)=T+30:RETURN
3520 PRINT"'Bad news, my young friend. Your leg is broken. I'm surprised you":PRINT"got here under your own power. But this is the end of your hike.":PRINT"Sorry, but maybe you can try again next year.'":GOTO 4610
3570 PRINT"He examines you and says,":GOSUB 5520:TM=INT(5+6*RND(1)):PRINT"'That prolonged rain and cold has put you in a condition that we":PRINT"call hypothermia. You can stay in town here at a motel and I'll"
3600 PRINT"keep an eye on you, but you can't go back on the Trail for at":PRINT"least"TM"days. Sorry, but that's the way it is.'":RETURN
3640 PRINT"He only needs a glance to see that you are suffering from an":PRINT"extremely bad case of poison ivy. He puts you in a clinic for":PRINT"a few days and tells you what you already knewthat you'll just":PRINT"have to let it run its course.":TM=5
3670 RETURN
3700 PRINT"He examines you and says,":GOSUB 5520:IF W3>0.33*WB THEN 3770
3710 PRINT"'You may want to lose some weight, but it's coming off far too":PRINT"quickly. Your body just can't cope. I'm going to keep you here":PRINT"for a week on a controlled dietand then for the rest of the trip"
3740 PRINT"you'll have to go at a slower pace. Also, I want you to consume":PRINT"at least as many calories per day as your body is using up.'":WB=1.18*WB:TM=7:R(9)=0.8:T(9)=T+30:RETURN
3770 PRINT"'Believe it or not, you are in an advanced stage of starvation.":PRINT"You're going to have to remain here for a few weeks on a controlled":PRINT"diet to stabilize your body chemistry. And then you will go home"
3800 PRINT"yes, HOME, and not back to the Trail this year.'":GOTO 4610
3830 C0=CD-1.03*C1:TS=T-TL:TL=T:W2=C0*TS/3500:W3=W3+W2:IF W2<1 THEN RETURN
3860 PRINT"Since the start of the trip, you have lost"INT(W3)"pounds.":IF W3>0.07*WB THEN 3900
3880 PRINT"Right now you are feeling fit as a fiddle, but remember, you":PRINT"still have a long way to go.":GOTO 3970
3900 IF W3>0.15*WB THEN 3930
3910 PRINT"You occasionally feel a bit lightheaded and shaky. You really":PRINT"should eat a bit more.":GOTO 3970
3930 PRINT"That's far too much weight to lose in this short period of time.":IF W3>0.24*WB THEN H(5)=1:D3=5:GOSUB 3370:GOTO 3970
3950 PRINT"You frequently feel lightheaded, nauseated, and sluggish. You'd":PRINT"better add to your dietand soon!"
3970 WB=W0:CD=INT(WB*11.5+WB*D1*0.3+(WB+WP)*D1*0.21+WB*(15-TW)*0.22):PRINT"At your current pace, you are burning"CD"calories per day.":PRINT:INPUT"How many calories worth of food do you want to eat";C1
4000 IF CD-C1>400 THEN PRINT"Okay, suit yourself."
4010 RETURN
4040 IF RND(1)<0.94 THEN H(5)=0:RETURN
4050 IF H(5)=1 THEN H(5)=0:RETURN
4060 H(25)=H(25)+1:TM=R*1.7:IF H(25)>4 THEN H(25)=4
4070 ON H(25)GOTO 4080,4130,4150,4180
4080 PRINT"It has been raining steadily for the past week and you are":PRINT"thoroughly soakedyour clothes, your sleeping bag, your food,":PRINT"and, yes, your spirits. What a bummer.":GOSUB 5520
4110 PRINT"If it continues for another week, you're going to have fungus":PRINT"growing on your skin.":RETURN
4130 PRINT"Good grief! More raintorrential, blustery, miserable rain.":PRINT"This is really beginning to get you down.":RETURN
4150 PRINT"Would you believe it? It is raining again. Not the pitter-patter":PRINT"of the songwriters, but steady, heavy, cold rain.":GOSUB 5520:PRINT"and more rain. Won't it ever stop?":RETURN
4180 PRINT"Unbelievableit is raining againand has been for the past week.":IF(R=2 OR R=3)AND D<1900 THEN 4230 ELSE RETURN
4200 IF R=4 THEN PRINT"Okay, you resign yourself to wait it out.":RETURN
4210 PRINT"Even your cheerful attitude toward rain is taking a beating, but":PRINT"you keep slogging along, hoping for a letup.":RETURN
4230 GOSUB 5520:PRINT:PRINT"That's it. You can't take any more. Maybe":PRINT"you'll try again next year, but that's it for now.":GOTO 4610
4270 IF T>200 AND RND(1)>0.5 THEN 4290
4280 IF RND(1)>0.2 THEN RETURN
4290 S=S+1:PRINT"Oh oh, New England is getting some snow":IF S=1 THEN PRINT"but you keep pushing on.":RETURN
4310 IF S>2 THEN 4350
4320 PRINT"You pushed through the last flurries but this looks":PRINT"more serious. You say to yourself, 'I've gone this":PRINT"far, I'm going to go all the way.' And on you go":RETURN
4350 PRINT"You made a gallant attempt to get through, but the Park":PRINT"Rangers won't let you go on. Too bad.":GOTO 4610
4390 K=1:PRINT:PRINT"You have arrived at the Kennebec River.":INPUT"Did you make prior arrangements to get across";A$:GOSUB 5550:IF A$<>"Y"THEN 4450 ELSE RN=RND(1):IF RN>0.5 THEN 4440
4420 PRINT"Fortunately the person you called showed up to meet you with":PRINT"a canoe. You get across in jig time.":TM=0.5:GOTO 4540
4440 GOSUB 5520:PRINT"Too bad; the guy you called didn't show up.":GOTO 4460
4450 PRINT"That wasn't very sensible. What will you do now?":GOSUB 5520
4460 IF RND(1)>0.7 THEN 4520
4470 PRINT"The river is running very high and the logs from the sawmill are":PRINT"very dangerous. You'll have to hang around until another hiker":PRINT"(who, hopefully, has arranged for a canoe) shows up or hope that":PRINT"someone comes along."
4500 GOSUB 5520:TM=INT(2+3*RND(1)):PRINT"Finallyyou're across, but it cost you"TM"days.":GOTO 4540
4520 PRINT"Fortunately the river isn't running too high and you can probably":PRINT"wade across downstream at the ford. Boy, were you lucky!":TM=0.6
4540 T=T+TM:RETURN
4570 PRINT"You reached the end of the trail at Baxter Peak on Mt. Katahdin!":FOR J=1 TO 3:GOSUB 5520:NEXT J:CLS:FOR J=1 TO 10:PRINT CHR$(7):X$="CONGRATULATIONS!":LOCATE 1,12:GOSUB 5600:FOR I=1 TO 100:NEXT I:CLS:FOR I=1 TO 50:NEXT I:NEXT J:D=2007
4610 TD=INT(T+0.5):D=INT(D):X=(INT(0.5+10*D/TD))/10:PRINT:PRINT"It is now ";:GOSUB 5220:PRINT"and you have been on the"
4630 PRINT"trail for"TD"days. You have covered"D"miles. Your average":PRINT"speed, considering all the delays, was ";:PRINT USING"##.#";X;:PRINT" miles per day.":WB=INT(WB+0.5):WL=INT(W3+0.5):IF WL>0 THEN X$="less":GOTO 4680
4670 X$="more":WL=-WL
4680 PRINT"You weighed"WB"pounds at the end,"WL X$" than at the start.":PRINT"Nice going!":PRINT:INPUT"Would you like to try again (Y or N)";A$:GOSUB 5550:IF A$="Y"THEN RUN ELSE CLS:END
4740 DATA"Tent"
4750 DATA"Sierra Designs Divine Light, 20 sq ft, max height 34 in.",35,135,214
4760 DATA"Eureka! Crescent Bike, 22 sq ft, height 43 in.",48,125,353
4770 DATA"Moss Starlet, 29 sq ft; with vestibule, 37; height 39 in.",78,250,334
4780 DATA"None. Use trail shelters and sleep in open.",0,0,0
4790 DATA"Pack"
4800 DATA"Kelty Mountaineer external - frame with Seneca pack",69,139,3975
4810 DATA"Jansport D2 external - frame pack",99,169,5520
4820 DATA"Camp Trails Grey Wolf internal - frame pack, large",82,119,5975
4830 DATA"Coleman Peak 1 model 680 internal - frame pack",58,115,4013
4840 DATA"Sleeping bag"
4850 DATA"North Face Blue Kazoo, mummy, goose down, rated 25 deg",34,140,452
4860 DATA"Slumberjack Bike Lite, mummy, Quallofil, rated 30 deg",50,65,808
4870 DATA"REI 747 Wide Body, semi-rect, Quallofil, rated 30 deg",54,90,1884
4880 DATA"L.L. Bean Ultra - Lite, rectangular, Quallofil, rated 35 deg",58,80,804
4890 DATA"Sleeping pad/mattress"
4900 DATA"Sevylor Superlight air mattress",32,20,360
4910 DATA"Therm-A-Rest self - inflating ultra-lite pad",28,48,325
4920 DATA"Ensolite 1/2 in. pad",24,23,300
4930 DATA"None.",0,0,0
4940 DATA"Stove"
4950 DATA"MSR Whisperlite, uses white gas (available along trail)",18,37,120
4960 DATA"Gaz Bleuet, fuel: butane cartridge (light and reliable)",16,20,106
4970 DATA"Primus Grasshopper, fuel: propane cylinder (long life)",22,19,90
4980 DATA"None (incidentally, wood fires are PROHIBITED on the trail)",0,0,0
4990 DATA"Boots"
5000 DATA"Asolo Trail II S, mid-ankle leather boots",49,140,0
5010 DATA"Danner Featherlight Trail, mid-ankle leather & Gore-Tex boot",52,95,0
5020 DATA"Timberland Lightweight Hiker, mid-ankle fabric and Gore-Tex",46,50,0
5030 DATA"Raichle Montagnas, full-height leather boots",80,125,0
5040 DATA"Raingear"
5050 DATA"Early Winters Ultralight Gore-Tex rain parka",13,145,25
5060 DATA"Patagonia featherweight Gore-Tex shell",7,58,15
5070 DATA"Campmor nylon poncho",16,25,22
5080 DATA"None.",0,0,0
5100 FOR I=1 TO 21:READ D(I),L$(I):NEXT I:RETURN:DATA 79,"Bly Gap, GA",165,"Doe Knob, NC",302,"Big Bald Mt., NC"
5120 DATA 384,"Wilbur Lake, TN",483,"Big Walker Lookout, VA",602,"Tinker Mt., VA"
5130 DATA 698,"Salt Log Gap, VA",800,"Fishers Gap, VA",889,"Potomac River, WV"
5140 DATA 966,"Piney Mt., PA",1099,"Baer Rocks, PA",1190,"High Point, NC"
5150 DATA 1272,"Shenandoah Mt., NY",1361,"Sages Ravine, CT",1435
5160 DATA"Mt. Greylock, MA",1554,"Killington, VT",1687,"Mt. Washington, NH"
5170 DATA 1776,"Bemis Pond, ME",1855,"Kennebec River, ME",1922
5180 DATA"Chairback Mt., ME",1992,"Penobscot West Branch, ME"
5210 IF TT=TD THEN RETURN
5220 IF TD<31 THEN 5250 ELSE IF TD<62 THEN 5260 ELSE IF TD<90 THEN 5270
5230 IF TD<121 THEN 5280 ELSE IF TD<152 THEN 5290 ELSE IF TD<182 THEN 5300
5240 IF TD<213 THEN 5310 ELSE IF TD<225 THEN 5320 ELSE 5340
5250 MO$="April":M=TD:GOTO 5330
5260 MO$="May":M=TD-30:GOTO 5330
5270 MO$="June":M=TD-61:GOTO 5330
5280 MO$="July":M=TD-89:GOTO 5330
5290 MO$="August":M=TD-120:GOTO 5330
5300 MO$="September":M=TD-151:GOTO 5330
5310 MO$="October":M=TD-181:GOTO 5330
5320 MO$="November":M=TD-212
5330 PRINT MO$;M;:TT=TD:RETURN
5340 PRINT:PRINT"It's November 12 and all the New England states are covered":PRINT"with snow. You have no chance of finishing the trail. Better":PRINT"luck next year. You have been out on the":TD=INT(T+0.5):D=INT(D):X=(INT(0.5+10*D/TD))/10:GOTO 4630
5400 PRINT:X$="Press any key to continue":GOSUB 5600:WHILE LEN(INKEY$)=0:WEND:PRINT:RETURN
5440 W5=INT(W1/16):W4=W1-16*W5:IF W5>1 THEN PRINT W5"pounds";:GOTO 5470
5460 IF W5=1 THEN PRINT" 1 pound";:GOTO 5470
5470 IF W4>1 THEN PRINT W4"ounces";:RETURN
5480 IF W4=1 THEN PRINT" 1 ounce";
5490 RETURN
5520 FOR I=1 TO 900:NEXT I:RETURN
5550 IF A$=""THEN A$="Y":RETURN
5560 A$=LEFT$(A$,1):IF A$>="A"AND A$<="Z"THEN RETURN
5570 A$=CHR$(ASC(A$)-32):RETURN
5600 PRINT TAB((80-LEN(X$))/2)X$;:RETURN
5630 X$="Appalachian Trail":GOSUB 5600:PRINT:PRINT:PRINT" You are a hiker whose goal is to walk the entire 2007 miles of":PRINT"the Appalachian Trail from Springer Mt., GA, to Mt. Katahdin, Maine."
5660 PRINT"You set out in April as soon as the Smokies are clear of snow, and":PRINT"you must reach the northern terminus before it is blocked by snow.":PRINT" Your hike is divided into three-day segments. Along the way,"
5690 PRINT"you encounter natural hazards, difficulties with your equipment,":PRINT"and physical problems.":PRINT" Careful planning for your hike is very important. In deciding":PRINT"what to pack, you have to make trade-offsgenerally between weight"
5730 PRINT"and comfort. Of course, everything must fit in your pack.":PRINT" You must decide how you will obtain food along the route, how":PRINT"much to eat in each food group, and how many calories to replenish."
5760 PRINT" You must decide at what pace you will walk, and how long to":PRINT"hike each day. Of course, a faster pace will cover mileage more":PRINT"quickly than a slower one, but it is much harder on your body."
5790 PRINT" You don't have many choices when dealing with mishaps. It is":PRINT"assumed that you are a sensible hiker, make repairs when necessary,":PRINT"replace things that wear out, and see a doctor if you get sick."
5820 PRINT"Nevertheless, mishaps cost you time, of which you have little to":PRINT"spare as you take another of the five million steps towards Maine.":PRINT:X$="Press any key when you're ready to go.":GOSUB 5600:RETURN