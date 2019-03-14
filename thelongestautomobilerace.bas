100 MODE 2:INK 0,26:INK 1,0:BORDER 26
110 LOCATE 23,10:PRINT"The Longest Automobile Race, 1908":PRINT
120 PRINT:PRINT TAB(29)"(c) David H. Ahl, 1986":PRINT TAB(25)"converted to CPC by SRS in 2017":LOCATE 21,23
150 DIM LA$(20),LB$(20),TX(20),C(20),WX(20),DX(20)
160 DIM FA$(20),FB$(20),FC$(20),FT(2,20),FL(2,20)
170 Z=1000:GF=0.25
180 GOSUB 2980
190 GOSUB 3080
200 GOSUB 3320
210 PRINT"Press any key when you're ready to go":RN=-32768
220 WHILE LEN(INKEY$)=0:RN=RN+1:WEND
230 WHILE RN>32767:RN=RN-65535:WEND:RANDOMIZE RN:GOSUB 4020
260 J=J+1:T=0:GOSUB 3720:GOSUB 3640
270 DA=0:W=WX(J):D=DX(J):TE=TX(J)
280 GOSUB 950
290 PRINT"You are at "LA$(J)", "LB$(J)"."
300 PRINT"You currently have";:PRINT USING"$$####.##";Z:IF J=1 THEN 420
310 IF FX=0 THEN 340
320 PRINT"A sympathetic garage owner will fix the "FA$(FX)" here.":FX=0
330 TZ=INT(1+3*RND(1)):PRINT"It will take "TZ" day(s).":GOSUB 2600
340 IF J>7 AND J<11 THEN GOSUB 2300
350 IF JV=1 THEN JV=0:TL=TL+TE:GOTO 260
360 PRINT:PRINT"You have driven"INT(DC)"miles in"TD"days."
370 IF J=20 THEN 3750
380 IF TD<TL THEN 400 ELSE IF TD=TL THEN 410
390 PRINT"The race leader passed this point "TD-TL" day(s) ago.":GOTO 420
400 PRINT"You are the race leader and are "TL-TD" day(s) ahead.":GOTO 420
410 PRINT"You and the Italian Zust are running even with each other."
420 TL=TL+TE
430 IF J=7 OR J=12 THEN GOSUB 2300
440 IF JV=1 THEN JV=0:GOTO 260
450 PRINT"Roads to the west of here are "C$(C(J))"."
460 PRINT"The weather forecast is "W$(W)"."
470 PRINT"You set a goal of making"D"miles in the next"TE-2"days."
480 GOSUB 650
490 GOSUB 740
500 GOSUB 830
530 TZ=1:GOSUB 2600
540 GOSUB 1130
550 GOSUB 1650
560 GOSUB 1940
570 DD=SP*HP*PW:DA=DA+DD:DC=DC+DD
580 GM=0.07*DD*(0.8+0.4*RND(1))
590 IF GM<GG THEN GG=GG-GM:GOTO 620
600 PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):GOSUB 950:PRINT"You ran out of gas on the road."
610 GF=0.33:GOSUB 650:GG=GG-GM
620 IF DA>=D THEN 260 ELSE 530
650 GP=GF*(0.7+0.6*RND(1)):PRINT"Gas costs"INT(100*GP)"cents per gallon here."
660 INPUT"How many gallons do you want for the segment ahead";GG
670 GF=0.25:ZN=GG*GP:PRINT"That will cost";:PRINT USING"$$###.##";ZN
680 GOSUB 2670
690 IF A=0 THEN RETURN
700 IF Z<2 THEN PRINT"Your car won't run on fumes. It's all over.":GOTO 3910
710 GG=INT(Z/GP):PRINT"Sorry, you could only get"GG"gallons.":RETURN
740 INPUT"How fast (mph) do you want to drive";SP
750 IF SP>54 THEN PRINT"Top speed of your car is only 54 mph.":GOTO 740
760 IF SP<8 THEN PRINT"At that rate, you'll never get there.":GOTO 740
770 IF W<3 AND SP>30 THEN 780 ELSE 790
780 PRINT"That's too fast for these weather and road conditions.":GOTO 740
790 PB=SP*SP/7000
800 RETURN
830 K=0
840 INPUT"How many hours do you want to drive each day";HP
850 IF K=1 THEN 910
860 IF HP>8 THEN PRINT"That's too much for both you and your car.":GOTO 840
870 IF HP<2 THEN PRINT"No one is that lazy!":GOTO 840
880 HC=HC+HP:IF J>2 AND HC/J>7.55 THEN 890 ELSE 910
890 PRINT"You've been pushing yourself and your crew pretty hard."
900 PRINT"You should probably back off a bit.":K=1:GOTO 840
910 PF=HP^3/1000-0.15:IF PF<0.01 THEN PF=0.01
920 RETURN
950 IF TT=TD THEN RETURN
960 IF TD<19 THEN 990 ELSE IF TD<50 THEN 1000 ELSE IF TD<80 THEN 1010
970 IF TD<111 THEN 1020 ELSE IF TD<141 THEN 1030 ELSE IF TD<172 THEN 1040
980 IF TD<203 THEN 1050 ELSE GOSUB 3640:GOTO 1070
990 MO$="February":MD=TD+11:GOTO 1060
1000 MO$="March":MD=TD-18:GOTO 1060
1010 MO$="April":MD=TD-49:GOTO 1060
1020 MO$="May":MD=TD-79:GOTO 1060
1030 MO$="June":MD=TD-110:GOTO 1060
1040 MO$="July":MD=TD-140:GOTO 1060
1050 MO$="August":MD=TD-171
1060 PRINT:PRINT"Date: "MO$;MD", 1908":TT=TD:RETURN
1070 PRINT:PRINT"It's September 1 and the winning car crossed the finish"
1080 PRINT"line in Paris over a month ago. Your factory refuses to give"
1090 PRINT"you any more money to continue. Better luck next time."
1100 GOTO 3900
1130 ON W GOTO 1160,1240,1300,1360,1360,1500
1160 RN=RND(1):IF RN<0.33 THEN 1170 ELSE IF RN>0.83 THEN 1190 ELSE 1210
1170 GOSUB 960:PW=0.03+0.08*RND(1)
1180 PRINT"Blizzard conditions. Tough going today.":GOSUB 3720:RETURN
1190 GOSUB 960:PW=0.05+0.1*RND(1)
1200 PRINT"You're stuck in a huge snow drift.":GOSUB 1540:RETURN
1210 PW=0.14+0.17*RND(1):RETURN
1240 IF RND(1)<0.1 THEN 1260
1250 PW=0.3+0.4*RND(1):RETURN
1260 PW=0.15+0.1*RND(1):GOSUB 960:PRINT"You have skidded into a ditch."
1270 GOSUB 1540:RETURN
1300 IF RND(1)<0.2 THEN GOSUB 960:GOTO 1320
1310 PW=0.35+0.4*RND(1):RETURN
1320 PW=0.02+0.04*RND(1):PRINT"You are totally bogged down in the mud."
1330 GOSUB 1540:RETURN
1360 RN=RND(1):IF RN>0.08 THEN 1470 ELSE GOSUB 960
1370 IF RN<0.01 THEN PRINT"An unexpected downpour!":GOTO 1320
1380 PRINT"River ahead with no bridge. Some locals tell you there is a bridge"
1390 PRINT"'some distance' north. They also offer to take you across by boat"
1400 ZN=3+2*INT(3*RND(1)):PRINT"for $"ZN;:INPUT". Want to go by boat";A$
1410 GOSUB 3540:IF A=1 THEN 1450
1420 GOSUB 2670
1430 IF A=1 THEN 1450
1440 PRINT"They got you across in"2+INT(3*RND(1))"hours.":PW=0.3:RETURN
1450 TZ=INT(1+2*RND(1)):PRINT"It took"TZ"day(s) for you to drive north ";
1460 PRINT"and find the bridge.":GOSUB 2600:RETURN
1470 PW=0.4+0.4*RND(1):RETURN
1500 IF RND(1)<0.025 THEN GOSUB 960:GOTO 1380
1510 PW=0.45+0.5*RND(1):RETURN
1540 ZN=5*INT(1+4*RND(1)):PRINT"A farmer offers to pull you out for $"ZN
1550 INPUT"Do you want to pay him to pull you out";A$:GOSUB 3540
1560 IF A=1 THEN 1610
1570 GOSUB 2670
1580 IF A=1 THEN 1610
1590 RQ=INT(1.5+5*RND(1)):PRINT"It took"RQ"hours for him to pull you out."
1600 IF RQ<5 THEN RETURN ELSE TZ=1:GOSUB 2600:PW=PW*1.5:RETURN
1610 TZ=INT(1+1.3*RND(1)):PRINT"It took"TZ"day(s) for you and your mechanic"
1620 PRINT"to pull the car out by yourselves.":GOSUB 2600:PW=PW*1.5:RETURN
1650 IF RND(1)>PB THEN RETURN
1660 F=INT(1+15*RND(1)):IF F>13 THEN F=INT(14+5*RND(1))
1670 PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):GOSUB 950
1680 PRINT"Uh oh. You have a problem. It's a "FA$(F)"."
1690 PRINT"Here's what you can do about the problem:"
1700 PRINT TAB(7)"(1) Try to keep going with it"
1710 PRINT TAB(7)"(2) "FB$(F)", cost $"FL(1,F)
1720 IF FC$(F)=""THEN 1740
1730 PRINT TAB(7)"(3) "FC$(F)", cost $"FL(2,F)
1740 INPUT"Which would you like to do";FQ
1750 IF FQ=1 THEN 1840
1760 IF FQ=2 OR FQ=3 THEN 1770 ELSE PRINT"Please enter a number.":GOTO 1740
1770 FQ=FQ-1:FU=FT(FQ,F):IF FU<8 THEN FD$="hours"ELSE 1790
1780 IF FU<5 THEN 1810 ELSE TZ=1:GOTO 1800
1790 FU=FT(FQ,F)/8:TZ=FU:IF FU=1 THEN FD$="day"ELSE FD$="days"
1800 PW=PW*1.5:GOSUB 2600
1810 ZN=FL(FQ,F):PRINT"Repairs will take"FU;FD$" and will cost $"ZN
1820 GOSUB 2670
1830 IF A=0 THEN RETURN
1840 PRINT"You try to nurse the car along to the next major city."
1850 IF FX=0 THEN 1870
1860 PRINT"But with the other problem you just can't make it and":GOTO 1890
1870 IF RND(1)>0.4 THEN 1900
1880 GOSUB 3720:PRINT:PRINT"Unfortunately, it just won't make it and"
1890 PRINT"reluctantly you admit defeat.":GOTO 3900
1900 PRINT"It looks like you'll make but at a drastically reduced speed."
1910 PW=PW*0.5:FX=F:RETURN
1940 IF RND(1)>PF THEN 2110
1950 PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):GOSUB 950:PRINT"You dozed off and your car has run ";
1960 ON INT(1+4*RND(1))GOTO 1970,1980,1990,2000,2000
1970 PRINT"into a tree.":TZ=2:ZN=24:GOTO 2010
1980 PRINT"off the road.":TZ=1:ZN=12:GOTO 2010
1990 PRINT"into a gaping hole.":TZ=1:ZN=18:GOTO 2010
2000 PRINT"into a farmer's wagon.":TZ=2:ZN=25
2010 PRINT"You can try to fix it or get a tow to the next village for $15."
2020 INPUT"Want to try to bang out the damage on the spot";A$:GOSUB 3540
2030 IF A=0 THEN 2070 ELSE PRINT"The tow costs $15 and the repairs cost $"ZN
2040 ZN=ZN+15:GOSUB 2670
2050 IF A=0 THEN 2110
2060 PRINT"The locals impound your car for your unpaid debt.":GOTO 3900
2070 PRINT"You finally manage to do it but it takes"TZ"day(s)."
2080 PW=PW*1.5:GOSUB 2600
2110 IF J<>2 AND J<>5 AND J<>13 AND J<>14 THEN 2200
2120 IF RND(1)>0.4 THEN 2200 ELSE GOSUB 950
2130 PRINT"In this area of terrible roads, you can save some time by driving"
2140 PRINT"on the railraod tracks. However, it is murder on your wheels,"
2150 PRINT"tires, and whole car. ";:INPUT"Want to drive on the tracks";A$
2160 GOSUB 3540:IF A=1 THEN RETURN
2170 PW=PW*1.7:PB=PB*1.25:RETURN
2200 IF J<>15 AND J<>16 THEN RETURN
2210 IF RND(1)>0.2 THEN RETURN
2220 PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):GOSUB 950:PRINT"Your differential is dry and there is"
2230 PRINT"no grease available here. However, you can get Vaseline."
2240 INPUT"Want to use it in place of grease";A$:GOSUB 3540
2250 IF A=0 THEN PRINT"Okay, you buy 20 jars for $4.":Z=Z-4:RETURN
2260 PRINT"The gears sound horrible. You'll have to cut your speed in half."
2270 PW=PW*0.5:RETURN
2300 JV=1:TZ=INT(1+3.5*RND(1))
2310 IF J=12 THEN 2510 ELSE IF J=10 THEN 2480
2320 IF J=9 THEN 2420 ELSE IF J=8 THEN 2390
2330 PRINT"You're stuck in port for"TZ+1"days before you can get a steamer"
2340 PRINT"for Seattle. You use the time to get new countershaft"
2350 PRINT"housings, springs, wheels, drive chains, and tires."
2360 IF Z>300 THEN PRINT"The cost of these items is $164.":Z=Z-164:GOTO 2380
2370 PRINT"These were all furnished by the local Thomas Flyer dealer."
2380 TZ=TZ+1:TD=TD+3:GOSUB 2600:GOSUB 3670:RETURN
2390 PRINT"It took 3 days on the steamer. The next steamer for Valdez"
2400 PRINT"Leaves in"TZ"days. Nothing to do but wait.":GOSUB 2600
2410 GOSUB 3670:TD=TD+7:RETURN
2420 PRINT"The steamer made many stops up the coast and it took 7 days."
2430 PRINT"It is apparent that the race organizers have never been in Alaska"
2440 PRINT"and have no idea that it is impossible to drive on the snow and"
2450 PRINT"ice at all, much less across the Bering Strait to Russia. You'll"
2460 PRINT"have to return to Seattle. Next steamer goes in"TZ"days."
2470 GOSUB 2600:GOSUB 3670:TD=TD+7:RETURN
2480 PRINT"It took 7 days to get back to Seattle. Now you have a"TZ"day"
2490 PRINT"wait before you can get a freighter for Japan."
2500 GOSUB 2600:GOSUB 3670:TD=TD+21:RETURN
2510 PRINT"The freighter across the Pacific takes a leisurely 21 days making"
2520 PRINT"stops at Hawaii, Guam, and the Philippines. Also the Chinese"
2530 PRINT"crewmen made sandals out of your leather fenders and mud flaps."
2540 PRINT"You can't replace them in Japan, but you can at Vladivostock,"
2550 PRINT"Russia. There you'll have to spend several days arranging for"
2560 PRINT"fuel also. But hurry now. A steamer to Russia leaves tonight."
2570 GOSUB 3670:TD=TD+7:RETURN
2600 T=T+TZ:TD=TD+TZ
2610 ZN=10*TZ:GOSUB 2670
2620 IF A=0 THEN RETURN
2630 PRINT:PRINT"You don't even have enough money to pay for meals."
2640 PRINT"That's the end of the road for you.":PRINT:GOTO 3900
2670 IF Z<ZN THEN GOSUB 2720 ELSE 2690
2680 IF Z<ZN THEN A=1:RETURN
2690 Z=Z-ZN:A=0:RETURN
2720 ZB=ZB+1:IF ZB<3 THEN ZW=1000 ELSE ZW=500
2730 PRINT:PRINT"You don't have enough money to continue. Your only hope is"
2740 PRINT"to send a telegram back to Mr. Thomas at the factory and ask"
2750 PRINT"for more money. Remember, telegrams in 1908 used all capital"
2760 PRINT"letters, had no commas, and were short."
2770 INPUT"What is your message";A$:PRINT"Sending telegram now"
2780 GOSUB 3600:IF ZB>3 THEN 2940
2790 AS=0:AP=0:L=LEN(A$):IF L<12 THEN 2920
2800 FOR I=1 TO L-2:AT$=MID$(A$,I,3)
2810 IF AT$="PLE"OR AT$="BEG"OR AT$="SOR"OR AT$="IMP"THEN AP=1
2820 IF AT$="SOO"OR AT$="QUI"OR AT$="EAR"OR AT$="FAS"OR AT$="HUR"THEN AS=1
2830 IF AT$="IMM"OR AT$="ONC"OR AT$="URG"THEN AS=1
2840 NEXT I:IF AP=0 THEN 2880 ELSE IF AS=0 THEN 2860
2850 PRINT"Mr. Thomas wired back $ "ZW" and said 'GOOD LUCK!":Z=Z+ZW:RETURN
2860 PRINT"Mr. Thomas didn't know you needed the money right away and waited"
2870 PRINT"3 days before wiring back $"ZW:Z=Z+ZW:TZ=3:GOSUB 2600:RETURN
2880 IF AS=0 THEN 2910
2890 PRINT"Mr. Thomas wired back, 'YOU COULD AT LEAST BE POLITE,' but did"
2900 ZW=ZW/2:PRINT"include a draft for $"ZW:Z=Z+ZW:RETURN
2910 PRINT"Mr. Thomas was offended by your telegram and refused to":GOTO 2930
2920 PRINT"Your message was short all right. Too short. Mr. Thomas didn't"
2930 PRINT"send any money. Sorry.":RETURN
2940 PRINT"Mr. Thomas wires back: I AM FED UP WITH THIS ADVENTURE STOP"
2950 PRINT"YOU WILL GET NO MORE MONEY FROM ME STOP":RETURN
2980 FOR I=1 TO 6:READ C$(I):NEXT I
2990 FOR I=1 TO 6:READ W$(I):NEXT I
3000 DATA"hard packed gravel","muddy ruts","slightly improved wagon tracks"
3010 DATA"built for narrow carts","practically non-existent","horrible"
3020 DATA"blizzard conditions","snow and sleet","rain"
3030 DATA"cloudy with a chance of rain","mixed","sunny and dry"
3040 RETURN
3080 FOR I=1 TO 20:READ X,LA$(I),LB$(I),WX(I),C(I),TX(I),DX(I):NEXT I
3090 RETURN
3100 DATA 1,"New York","New York",2,1,8,897
3110 DATA 2,"Kendallville","Indiana",1,1,6,166
3120 DATA 3,"Chicago","Illinois",3,2,7,634
3130 DATA 4,"Omaha","Nebraska",6,3,4,482
3140 DATA 5,"Laramie","Wyoming",2,3,7,467
3150 DATA 6,"Ogden","Utah",6,1,8,1237
3160 DATA 7,"San Francisco","California",5,7,8,0
3170 DATA 8,"Seattle","Washington",5,7,8,0
3180 DATA 9,"Valdez","Alaska",5,7,8,0
3190 DATA 10,"Seattle","Washington",5,7,25,0
3200 DATA 11,"Kobe","Japan",4,4,4,350
3210 DATA 12,"Tsuruga","Japan",4,7,7,0
3220 DATA 13,"Vladivostock","Russia",3,5,15,558
3230 DATA 14,"Tsitsihar","Manchuria",5,6,10,659
3240 DATA 15,"Chita","Russia",3,3,8,1116
3250 DATA 16,"Kansk","Russia",4,3,6,1075
3260 DATA 17,"Omsk","Russia",5,1,7,820
3270 DATA 18,"Perm","Russia",3,2,14,1090
3280 DATA 19,"St. Petersburg","Russia",3,1,8,1575
3290 DATA 20,"Paris","France",0,0,0,0
3320 FOR I=1 TO 18
3330 READ X,FA$(I),FB$(I),FC$(I),FT(1,I),FL(1,I),FT(2,I),FL(2,I):NEXT I:RETURN
3340 DATA 1,"tire blowout","Patch the hole","Replace the tire",2,1,2,7
3350 DATA 2,"skipping cylinder","New spark plugs","Grind cylinder",1,2,8,2
3360 DATA 3,"rough running engine","Do a tune up","",4,5,0,0
3370 DATA 4,"binding axle bearing","Regrind bearing","Get a new one",8,2,4,8
3380 DATA 5,"cracked spring","New spring","Weld angle iron to it",8,26,8,4
3390 DATA 6,"cracked wheel","New wheel","Weld brace on it",2,42,8,4
3400 DATA 7,"slipping clutch","Adjust clutch","New clutch plate",4,4,8,54
3410 DATA 8,"stripped gear","Weld teeth back on","New gear",16,6,8,24
3420 DATA 9,"radiator leak","Weld a patch on it","",4,2,0,0
3430 DATA 10,"brakes failure","Replace the linings","",8,7,0,0
3440 DATA 11,"crack in the countershaft housing","A new housing","",24,40,0,0
3450 DATA 12,"broken drive pinion","Weld teeth back on","New pinion",16,6,8,18
3460 DATA 13,"broken rear axle","Get a new axle","",16,68,0,0
3470 DATA 14,"cracked transmission housing","New one from factory","",24,60,0,0
3480 DATA 15,"broken motor support","Make a new one of scrap iron","",16,16,0,0
3490 DATA 16,"worn down clutch shaft","A new clutch shaft","",8,28,0,0
3500 DATA 17,"cracked frame","Weld on braces of angle iron","",24,26,0,0
3510 DATA 18,"total transmission failure","A new one from factory","",40,225,0,0
3540 IF A$=""OR A$="Y"OR A$="y"THEN A=0:RETURN
3550 IF A$="N"OR A$="n"THEN A=1:RETURN
3560 PRINT"Don't understand your answer of ";A$;"."
3570 INPUT"Please enter Y for 'yes' or N for 'no.'";A$:GOTO 3540
3600 FOR I=1 TO 4:X=1+3*RND(1):FOR K=1 TO X:PRINT CHR$(7):NEXT K
3610 FOR K=1 TO 500:NEXT K:NEXT I:RETURN
3640 PRINT:FOR I=1 TO 3:PRINT CHR$(7):PRINT CHR$(7):FOR K=1 TO 500:NEXT K:NEXT I:RETURN
3670 PRINT:PRINT"Press any key when you're ready to go aboard."
3680 WHILE LEN(INKEY$)=0:WEND
3690 RETURN
3720 FOR I=1 TO 500:NEXT I:RETURN
3750 FOR K=1 TO 3:GOSUB 3720:PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):NEXT K:CLS:X=0
3760 FOR I=1 TO 30:FOR K=1 TO 100:NEXT K:LOCATE 30,10:PRINT X$:PRINT CHR$(7)
3770 IF X=0 THEN X$="CONGRATULATIONS!":X=1:GOTO 3790
3780 X$="":X=0
3790 NEXT I:PRINT:PRINT
3800 IF TD<TL THEN 3830 ELSE IF TD=TL THEN 3850
3810 PRINT"You made it to Paris! The German Protos beat you by"
3820 PRINT TD-TL"days but just to finish is a great honor!":GOTO 3860
3830 PRINT"You reached Paris first! The next car is"TL-TD"days behind."
3840 GOTO 3860
3850 PRINT"You reached Paris in a dead tie with the French Motobloc!"
3860 PRINT:PRINT"You reached Paris in"TD"days. In 1908, the Thomas Flyer"
3870 PRINT"won the race reaching Paris on July 30 after 169 days.":GOTO 3970
3900 PRINT:GOSUB 3640:PRINT
3910 PRINT"Sorry you were unsuccessful. Only three of the"
3920 PRINT"cars in the 1908 race ever finished.":PRINT
3930 PRINT"In the"TD"days since the start of the race on February 12, 1908,"
3940 PRINT"you covered"INT(DC)"miles. You almost made it to"LA$(J+1)", ";
3950 PRINT LB$(J+1)". ":PRINT"Not bad, but you can do better.":PRINT
3970 PRINT:INPUT"Would you like to try again (Y or N)";A$:GOSUB 3540
3980 IF A=0 THEN PRINT"Okay. Good Luck!":GOSUB 3720:CLS:RUN
3990 PRINT"Okay. So long for now.":GOSUB 3720:CLS:END
4020 CLS:PRINT TAB(18)"The Longest Automobile Race, 1908":PRINT
4030 PRINT" In this program, you are the captain of the Thomas Flyer team."
4040 PRINT"It is your job to get the car from New York to Pariseast to west"
4050 PRINT"as quickly as possible. The race starts on Febraury 12, 1908."
4060 PRINT" You must overcome many problems : bad weather, accidents,"
4070 PRINT"mechanical breakdowns, fatigue, and a lack of gas stations."
4080 PRINT" For each leg of the trip, buy as much gas as you need, but no"
4090 PRINT"more. You car gets approximately 14 mph, although this will vary."
4100 PRINT"You will carry what fuel you can and ship the rest ahead by rail to"
4110 PRINT"locations along your route to be held for you (called 'spotting')."
4120 PRINT" Your car has a top speed of 54 mph. However, the probability"
4130 PRINT"of a breakdown increases substantially at speeds over 35 mph. Like-"
4140 PRINT"wise, driving more than six hours per day increases your chance of"
4150 PRINT"having an accident. But don't forget, this IS a race."
4160 PRINT" If you get stuck, you can pay someone to pull you out (costs"
4170 PRINT"money) or try to get out on your own (costs time)."
4180 PRINT" You can choose to repair a mechanical problem on the spot or"
4190 PRINT"wait until the next large town to get it fixed. Either choice has"
4200 PRINT"associated risks."
4210 PRINT" If and when you run out of money, you can wire Mr. Thomas for"
4220 PRINT"more, but your request must be carefully and politely worded Also,"
4230 PRINT"your telegram must be in all UPPER CASE letters."
4240 PRINT TAB(21)"Press any key to continue.";
4250 WHILE LEN(INKEY$)=0:WEND:CLS:RETURN