100 MODE 2:INK 0,26:INK 1,0:BORDER 26:DEFINT a-z
110 LOCATE 17,10:PRINT"Around the World Flight of Amelia Earhart, 1937"
120 PRINT:PRINT:PRINT TAB(29)"(c) David H. Ahl, 1986":PRINT:PRINT TAB(26)"converted to CPC by SRS 2017":LOCATE 27,23
130 PRINT"Press any key to continue.":RN=-32500
140 WHILE LEN(INKEY$)=0:RN=RN+1:WEND:GOSUB 4160
170 DIM LA$(35),LB$(34),FX(35),C(35),R(35),WX(35),DX(35),M$(12)
180 GOSUB 3270:GOSUB 3470
190 PRINT TAB(16)"Press any key when you're ready to go";:WHILE LEN(INKEY$)=0
200 RN=RN+1:WEND:WHILE RN>32767:RN=RN-65535:WEND:RANDOMIZE RN:CLS
230 J=J+1:DY=DY+1:TG=0:GOSUB 3960:GOSUB 3990
240 F=FX(J):W=WX(J):D=DX(J)
250 GOSUB 540
260 PRINT"You are at "LA$(J)", "LB$(J)". Repair facilities are ";F$(F)"."
270 PRINT"Runway is made of ";C$(C(J));" and is ";R$(R(J))" for your plane."
280 IF DC=0 THEN 350
290 PRINT:PRINT"You have flown"DC"miles in total and you have flown"
300 PRINT INT(TM+0.5)"hours since your last major overhaul."
310 GOSUB 650
320 GOSUB 740
330 IF TP+TQ=0 THEN 350
340 TG=TG+TP+TQ:DY=DY+TP+TQ:TP=0:TQ=0:GOSUB 540
350 GOSUB 860
360 GOSUB 930
370 IF ND=1 THEN 460
380 GOSUB 1040
390 INPUT"How many gallons of fuel do you want in the plane";FU
400 IF FU>1150 THEN PRINT"Maximum capacity is 1150 gallons.":GOTO 390
420 WA=INT(W+1.6*RND(1)-0.3):IF WA>6 THEN WA=6 ELSE IF WA<1 THEN WA=1
430 PRINT"Current weather : ";W$(WA):IF WA<3 THEN 480
440 INPUT"Do you want to wait a day for better weather (Y or N)";A$
450 GOSUB 3830:IF A=1 THEN 480
460 AB=0:TG=TG+1:DY=DY+1:GOSUB 540
470 GOTO 350
480 GOSUB 1090
490 IF AB=1 THEN 460
500 GOSUB 1280
510 GOSUB 3960:GOTO 230
540 IF DY<12 THEN 560 ELSE IF DY>56 THEN 590 ELSE IF DY>41 THEN 570
550 MO$="June":DA=DY-11:GOTO 580
560 MO$="May":DA=DY+20:GOTO 580
570 MO$="July":DA=DY-41
580 PRINT:PRINT"Date: "MO$;DA", 1937":RETURN
590 PRINT:PRINT"It's July 16 and your money has completely run out."
600 PRINT"Sorry, you were unsuccessful. Perhaps you and George Putnam"
610 PRINT"can raise enough money for a try again next year."
620 GOTO 4040
650 TQ=0:IF M=0 THEN RETURN
660 PRINT"Your ";M$(M);" has been giving you problems."
670 INPUT"Do you want to have it repaired here (Y or N)";A$:GOSUB 3830
680 IF A=1 THEN RETURN
690 M=0:PRINT"That will take"2*F+1"hours";
700 IF(DX(J+1)>600 AND F>1)OR F>3 THEN 710 ELSE PRINT".":RETURN
710 PRINT" and will prevent you from leaving today.":TQ=1:RETURN
740 TP=0:IF TM<28 THEN 780 ELSE IF TM<39 THEN 790
750 PRINT"You should probably have a major overhaul";:IF TM>60 THEN 770
760 PRINT"sometime soon.":GOTO 790
770 PRINT"as soon as possible.":GOTO 790
780 IF(J=5 OR J=9 OR J=19 OR J=25)AND TM>12 THEN 800 ELSE RETURN
790 IF F>2 THEN RETURN
800 INPUT"Do you want a major overhaul here (Y or N)";A$:GOSUB 3830
810 TP=0:IF A=1 THEN RETURN
820 IF RND(1)>0.7 THEN TP=F+1 ELSE TP=F
830 DM=0:TM=0:PRINT"That will take"TP"day(s).":RETURN
860 X=10*RND(1):PRINT:PRINT"You are feeling";
870 IF X<5 THEN 890 ELSE IF X<8 THEN 900
880 PRINT"as if you could use some more sleep.":RETURN
890 PRINT"pretty good, all things considered.":RETURN
900 PRINT"fit as a fiddle and ready to go.":RETURN
930 ND=0:NC=0.002*DC+15*TG:PRINT"Your navigator is ";
940 IF NC>80 THEN 980 ELSE IF NC>50 THEN 970 ELSE IF NC>25 THEN 960
950 PRINT"well rested and ready to go.":RETURN
960 PRINT"a bit under the weather from drinking last night.":RETURN
970 PRINT"droopy and has a bad hangover.":GOTO 990
980 PRINT"drunk and barely able to walk."
990 PRINT"Do you want to wait until tomorrow and hope he will be in"
1000 INPUT" better shape (Y or N)";A$:GOSUB 3830:IF A=1 THEN RETURN
1010 ND=1:RETURN
1040 IF J=10 OR J=21 THEN JA=J+2 ELSE JA=J+1
1050 PRINT"Your next destination is "LA$(JA)", "LB$(JA)","DX(JA)"miles away."
1060 RETURN
1090 PRINT"Revving up engines everything seems okay rolling"
1100 PRINT"picking up speed and ";:GOSUB 3960
1110 X=RND(1):IF X>0.99 THEN 1190 ELSE IF X>0.98 THEN 1200
1120 Y=C(J)+R(J)+WA
1130 IF Y>9 AND X>0.85 THEN 1160
1140 IF Y>8 AND FU>900 AND X>0.6 THEN 1160
1150 PRINT"you're finally off!":PRINT:RETURN
1160 PRINT"the wheels just won't lift out of the mud!"
1170 PRINT"Reluctantly you concede there is no chance of a takeoff today."
1180 AB=1:RETURN
1190 PRINT"the landing gear strut broke!":GOTO 1220
1200 PRINT"engines aren't synchronizedplane is turning!"
1210 GOSUB 3960:PRINT CHR$(7):PRINT CHR$(7):PRINT CHR$(7):PRINT
1220 PRINT"Disaster! The Electra is lying helpless on the runway with"
1230 PRINT"a broken wing, smashed engine, and structural damage just"
1240 PRINT"as in the ill-fated March 20 takeoff from Honolulu. So sorry."
1250 GOTO 4040
1280 INPUT"At what speed do you wish to fly";S
1290 IF S>119 AND S<171 THEN 1330
1300 PRINT"Minimum cruising speed is 120 mph; maximum is 170 mph.":GOTO 1280
1330 WA=INT(WA+1.6*RND(1)-0.3):IF WA>6 THEN WA=6 ELSE IF WA<1 THEN WA=1
1340 PRINT"Current weather aloft is : ";W$(WA)
1350 IF J=6 OR J=7 THEN SW=30:PRINT"Strong 30+ mph headwind."
1360 IF J=10 THEN SW=15:PRINT"Mixed weatherd old rumshead winds."
1370 IF J<20 OR J>22 THEN 1450
1380 SW=20:PRINT"The plane is being buffetted about, ";
1390 IF RND(1)>0.4 THEN 1420
1400 PRINT"and you'll have to turn back."
1410 GOTO 1880
1420 PRINT"but you decide to push on."
1450 SA=S-SW:DJ=DX(JA):TE=DJ/SA
1460 DC=DC+DJ:TC=TC+TE
1470 DM=DM+DJ:TM=TM+TE
1500 PC=DM*DM/(900000 !*TM)
1510 MP=ATN(14*PC-17)/3.14159+0.5
1520 IF RND(1)>MP THEN 1750
1530 M=11:GOSUB 3930
1540 PRINT"Right engine gauges are going crazy major engine failure!"
1550 INPUT"Want to try to limp along on one engine (Y or N)";A$:GOSUB 3830
1560 IF A=0 THEN 1640
1570 X=RND(1):IF X<0.333 THEN 1600 ELSE IF X>0.667 THEN 1650
1580 PRINT"No chance of making "LA$(JA)". You'll have to turn back."
1590 GOTO 1880
1600 GOSUB 3960:PRINT"Whew! It looks as if you can nurse it along."
1610 GOTO 2050
1640 IF J=4 OR J=10 OR J=27 OR J>28 THEN 1710
1650 PRINT"Going downlooking for a suitable place to landnothing"
1660 IF RND(1)>0.2 THEN 1680
1670 GOSUB 3960:PRINT" C R A S H ! No survivors.":GOTO 4040
1680 PRINT"maybe that small clearing";:GOSUB 3960:PRINT"you made it!"
1690 PRINT"The plane is a wreck but at least you're alive."
1700 GOTO 4040
1710 PRINT"Going down nothing but water..looking for a reef or anything"
1720 GOTO 1670
1750 IF RND(1)>0.3 THEN 1910
1760 IF N>0 THEN MQ=M ELSE MQ=0
1770 M=INT(1+10*RND(1)):GOSUB 3930:PRINT:PRINT"Malfunction in the "M$(M)
1780 IF MQ=0 THEN 1810
1790 PRINT"This combined with the previous malfuntion of the "M$(MQ)" will"
1800 PRINT"create very serious problems for you.":GOTO 1570
1810 MD=INT(DJ*RND(1))
1820 PRINT"You have flown"MD"miles of this flight leg. Do you want to"
1830 INPUT"push on (Y or N)";A$:GOSUB 3830:IF A=0 THEN ME=DJ-MD ELSE ME=MD
1840 IF RND(1)<0.05*ME/DJ THEN 1850 ELSE 1870
1850 GOSUB 3930:PRINT"Uh oh. Fuel-feed system has malfunctioned also."
1860 PRINT"Things look pretty bad.":PRINT:GOSUB 3960:GOTO 1640
1870 IF A=0 THEN 1910
1880 AB=1:J=J-1:JA=J:FU=0.7*FU
1910 TF=FU*(5.6/S-0.02)
1920 IF TF*0.8>TE THEN 2050
1930 IF S<121 THEN PRINT"Fuel consumption seems very high":GOTO 1990
1940 PRINT"You're going to be tight on fuel. Perhaps you should throttle"
1950 INPUT"back. What speed would you like";SQ
1960 IF SQ<120 THEN INPUT"Too slow. Now then, what speed";SQ:GOTO 1960
1970 IF J>28 AND FU>1100 THEN 2050
1980 IF S-SQ<9 THEN 2000
1990 IF TF*0.96>TE THEN 2050
2000 PRINT"Uh ohthe right engine is sputtering"
2010 GOSUB 3960:PRINT"And now the left engine too. You're out of fuel."
2020 GOTO 1640
2050 IF NC<51 THEN 2090
2060 PRINT"Your navigator isn't going to be of much use to you today."
2070 PRINT"You'll have to rely upon dead reckoning and landmarks."
2080 IF M=5 OR M=7 THEN PRINT"Moreover, your "M$(M)" is on the fritz."
2090 TR=INT(TE):IF TR<2 THEN TR=1.2
2100 PRINT:PRINT"You have been flying for over"TR"hours but there is"
2110 PRINT"no sign of ";:IF AB=0 THEN 2140 ELSE AB=0:GOTO 2990
2140 IF J<>10 THEN 2220
2150 PRINT"land. Pushing onwards. ";:GOSUB 3960:PRINT"Wow! Land! Look!"
2160 PRINT"Approaching coast of Africa; ahead of you is ";
2170 IF RND(1)>0.95 THEN PRINT"Dakar! Nice flying!":J=11:GOTO 3010
2180 PRINT"nothing but jungle. Turning north.":GOSUB 3960
2190 PRINT"A half hour later you sight St. Louis, Senegal, and decide to land."
2200 JA=11:DX(12)=163:GOTO 3010
2220 IF J<>21 THEN 2270
2230 PRINT"anything except the deluge of water. You'll have to put down at"
2240 PRINT"Rangoonif you can find it.":GOSUB 3960:PRINT"Look! There!"
2250 JA=22:GOTO 3000
2270 IF J<>25 THEN 2340
2280 IF MJ=1 THEN 2990
2290 PRINT"civilization. Moreover, several of your instruments"
2300 PRINT"are behaving quite badly. Reluctantly, you turn back to"
2310 PRINT"Bandoeng because you know that facilities at Saurabaya are minimal."
2320 DC=DC-300:DM=DM-300:TC=TC-2:TM=TM-2:J=24:JA=24:MJ=1:GOTO 3040
2340 IF J<>29 THEN 2700
2350 PRINT"land. You spotted the arc lights at Nauru 8 hours ago."
2360 PRINT"Calling Coast Guard cutter Itasca";:GOSUB 3890:GOSUB 3960
2370 IF RF=1 THEN 2390 ELSE PRINT"Nothing."
2380 PRINT"Switch radio frequencytry again":RF=1:GOTO 2360
2390 PRINT"Still nothing.":GOSUB 3960:PRINT"You're very low on fuel!"
2400 PRINT"You can search for Howland or turn back to the Gilbert Islands."
2410 INPUT"Want to search (Y or N)";A$:GOSUB 3830:IF A=1 THEN 2470
2420 FOR K=1 TO 4:PRINT"Searching":GOSUB 3960:NEXT K:GOSUB 3960
2430 IF NC<30 THEN RN=0.3 ELSE RN=0.02
2450 IF RND(1)>RN THEN 1640
2460 PRINT"My gosh! There it is! A tiny speck of land. WOW!":GOTO 3010
2470 PRINT"Tuvalu, the only island in the Gilberts with a landing strip,"
2480 PRINT"is almost 4 hours distant on a course almost due west."
2490 FOR K=1 TO 4:PRINT"Flying":GOSUB 3960:NEXT K:GOSUB 3960
2500 PRINT:PRINT"Look! Coral reefs. A small island.":GOSUB 3960
2510 PRINT"Virtually no fuel left both engines sputtering try to put"
2520 PRINT"it down in that flat area along the beach.":GOSUB 3960
2530 PRINT"You made it down a wing tore off the plane navigator injured."
2540 GOSUB 3960:PRINT"Men in uniform are coming over the sand dunes."
2550 GOSUB 3960:GOSUB 3960:PRINT:IF RND(1)>0.985 THEN 2650
2560 PRINT"They're Japanese. An English-speaking native tells you that"
2570 PRINT"this is Mili Atoll in the Marshall Islands. You are put on a"
2580 PRINT"warship bound for Majuro. Days later you are put on another"
2590 PRINT"Japanese warship bound for Saipan. The Japanese accuse you"
2600 PRINT"of being a spy, torture you, and put you in a tiny prison cell."
2610 GOSUB 3960:PRINT:GOSUB 3960
2620 PRINT"After months in a tiny, damp prison cell you contract dysentery."
2630 PRINT"Your navigator is executed and in August 1938 you die of disease"
2640 PRINT"and thus become the first U.S. casualities of World War II."
2650 GOTO 4040
2660 PRINT"They're British. You're safe. In three days the USS Itasca"
2670 PRINT"picks you up and deposits you in Honolulu a week later."
2680 GOTO 4040
2700 IF J<>30 THEN 2790
2710 PRINT"the Hawaiian Islands. But you're buoyed by the thought"
2720 PRINT"that you found Howland Island in the middle of the Pacific."
2730 FOR K=1 TO 4:PRINT"Flying";:GOSUB 3960:NEXT K:GOSUB 3960
2740 PRINT:PRINT"Calling Honolulucome in please":GOSUB 3890:GOSUB 3960
2750 PRINT"Honolulu to Electra: You're right on course. Weather is"
2760 PRINT"excellent. You should sight Diamond Head very soon.":GOSUB 3960
2770 PRINT:PRINT"Yesthere it is. What a welcome sight!":GOTO 3040
2790 IF J<>31 THEN 2990
2800 PRINT"the mainland. But you're confident you'll make it."
2810 GOSUB 3960:PRINT:PRINT"You've been flying nearly 20 hours and you're"
2820 PRINT"bone tired. You wish your navigator could relieve you.":GOSUB 3960
2830 GOSUB 3890:PRINT"Oakland calling Electra Oakland calling Electra"
2840 INPUT"Are you okay please respond are you okay";A$:GOSUB 3830
2850 IF A=0 THEN PRINT"Oakland : Glad to hear it.";:GOTO 2870
2860 PRINT"Oakland: Sorry to hear that. Keep going. Just a short way now."
2870 GOSUB 3960:PRINT" Oh yes, G.P. sends greetings.":GOSUB 3960:PRINT
2880 PRINT"And there it is; the Pacific coast and the Golden Gate Bridge."
2890 PRINT"What a beautiful sight! Coming into Oakland steady steady."
2900 PRINT"Touchdown slowing down HUGE crowds all around stopping."
2910 FOR K=1 TO 4:GOSUB 3960:NEXT K:CLS:X=0
2920 FOR I=1 TO 30:FOR K=1 TO 100:NEXT K:LOCATE 30,10:PRINT X$:PRINT CHR$(7)
2930 IF X=0 THEN X$="CONGRATULATIONS !":X=1:GOTO 2950
2940 X$=" ":X=0
2950 NEXT I
2960 PRINT:PRINT:PRINT:PRINT:GOTO 4050
2990 PRINT LA$(JA)". Flying on":GOSUB 3960:PRINT"Look to the right!"
3000 PRINT"It looks likeyes it isan aerodrome. What a welcome sight."
3010 PRINT"Field looks "R$(R(JA))" for the plane."
3020 IF M<>7 THEN 3040 ELSE PRINT"Radio broken. You'll have to try to land"
3030 PRINT"without establishing contact.":PRINT:GOTO 3090
3040 PRINT"Electra calling control tower":GOSUB 3890:IF RND(1)<0.1 THEN 3110
3050 PRINT"Tower to Electratower to Electra":IF WX(JA)>3 THEN 3080
3060 INPUT"Condition of field is fine. Do you want clearance to land";A$
3070 GOSUB 3830:IF A=0 THEN 3130 ELSE PRINT"Repeat: ";:GOTO 3050
3080 INPUT"Field is a bit soggy. Do you want clearance to land";A$
3090 GOSUB 3830:IF A=0 THEN 3130 ELSE INPUT"Do you want to turn back";A$
3100 GOSUB 3830:IF A=0 THEN 1880 ELSE PRINT"Repeat : ";:GOTO 3050
3110 INPUT"Can't establish contact. Do you want to land";A$:GOSUB 3830
3120 IF A=1 THEN PRINT"Circlingcirclingtrying radio again.":GOTO 3040
3130 PRINT"Coming insteadysteady";:GOSUB 3960:PRINT"touchdown."
3140 IF C(JA)+R(JA)+WX(JA)>9 AND RND(1)<0.15 THEN 3150 ELSE 3170
3150 PRINT"Field is soggyone wheel caught in mudplane is tipping."
3160 GOTO 1220
3170 PRINT"Slowing downturningbring it to a stopshut down engines."
3180 IF JA=11 OR JA=2 THEN K=6 ELSE K=INT(1+4.9*RND(1))
3190 PRINT"A "Z$(K)" crowd is waiting for you. Nice job."
3200 IF J<>28 THEN RETURN
3220 PRINT"Australian authorities claim that your medical papers are"
3230 PRINT"not in order and hold you on the plane for 10 hours. That"
3240 PRINT"costs you an extra day.":DY=DY+1:TG=TG+1:RETURN
3270 FOR I=1 TO 4:READ F$(I):NEXT I
3280 FOR I=1 TO 3:READ C$(I):NEXT I
3290 FOR I=1 TO 3:READ R$(I):NEXT I
3300 FOR I=1 TO 6:READ W$(I):NEXT I
3310 FOR I=1 TO 11:READ M$(I):NEXT I
3320 FOR I=1 TO 6:READ Z$(I):NEXT I
3330 DATA"excellent","good","fair","poor"
3340 DATA"concrete","packed gravel","grass and dirt"
3350 DATA"plenty long","of adequate length","barely long enough"
3360 DATA"clear","scattered clouds","overcast","light rain"
3370 DATA"wind and heavy rain","high wind and monsoon rains"
3380 DATA"thermocouple","turn & bank indicator","fuel gauge","altimeter"
3390 DATA"Bendix radio direction finder","Sperry Gyro Pilot","radio"
3400 DATA"mixture control lever","hydraulic system","electrical system"
3410 DATA"engine"
3420 DATA"small","large","noisy","clamorous","restless","tiny"
3430 RETURN
3470 FOR I=1 TO 32:READ X,LA$(I),LB$(I),FX(I),C(I),R(I),WX(I),DX(I):NEXT I
3480 RETURN
3490 DATA 1,"Oakland","California",1,1,1,1,0
3500 DATA 2,"Burbank","California",2,1,1,1,332
3510 DATA 3,"Tucson","Arizona",2,1,1,1,456
3520 DATA 4,"New Orleans","Louisiana",1,1,1,1,1287
3530 DATA 5,"Miami","Florida",1,1,1,1,688
3540 DATA 6,"San Juan","Puerto Rico",2,2,2,1,1053
3550 DATA 7,"Caripito","Colombia",1,1,1,3,624
3560 DATA 8,"Paramaribo","Dutch Guiana",3,3,1,2,610
3570 DATA 9,"Fortaleza","Brazil",1,3,2,5,1332
3580 DATA 10,"Natal","Brazil",3,3,2,4,270
3590 DATA 11,"St. Louis","Senegal",4,3,2,2,1992
3600 DATA 12,"Dakar","French West Africa",2,2,2,1,1974
3610 DATA 13,"Gao","French Sudan",3,3,2,2,1150
3620 DATA 14,"Fort Lamy","Chad",4,3,3,1,1027
3630 DATA 15,"El Fasher","Fr. Equatorial Africa",4,3,3,1,679
3640 DATA 16,"Khartoum","Anglo Egyptian Sudan",4,2,3,1,494
3650 DATA 17,"Massawa","Abyssinia",3,3,2,1,442
3660 DATA 18,"Assab","Eritrea",3,2,2,1,340
3670 DATA 19,"Karachi","India",1,1,1,3,1920
3680 DATA 20,"Calcutta","India",2,2,2,6,1390
3690 DATA 21,"Akyab","Burma",3,2,2,6,338
3700 DATA 22,"Rangoon","Burma",3,2,2,6,330
3710 DATA 23,"Bangkok","Siam",2,2,2,5,365
3720 DATA 24,"Singapore","Asia",2,2,2,2,895
3730 DATA 25,"Bandoeng","Java",1,3,1,2,635
3740 DATA 26,"Saurabaya","Java",4,3,3,2,365
3750 DATA 27,"Koepang","Timor",4,3,3,2,1148
3760 DATA 28,"Port Darwin","Australia",2,1,1,1,517
3770 DATA 29,"Lae","New Guinea",3,3,2,2,1196
3780 DATA 30,"Howland Island","Pacific",4,2,2,2,2556
3790 DATA 31,"Honolulu","Hawaii",1,1,1,1,1818
3800 DATA 32,"Oakland","California",1,1,1,1,2420
3830 IF A$="Y"OR A$="y"THEN A=0:RETURN
3840 IF A$="N"OR A$="n"THEN A=1:RETURN
3850 PRINT"Don't understand your answer of ";A$;"."
3860 INPUT"Please enter Y for 'yes' or N for 'no.'";A$:GOTO 3830
3890 FOR I=1 TO 4:X=1+3*RND(1):FOR K=1 TO X:PRINT CHR$(7):NEXT K
3900 FOR K=1 TO 500:NEXT K:NEXT I:RETURN
3930 PRINT:FOR I=1 TO 3:PRINT CHR$(7):PRINT CHR$(7):FOR K=1 TO 500:NEXT K:NEXT I:RETURN
3960 FOR I=1 TO 1500:NEXT I:RETURN
3990 PRINT:FOR I=1 TO 7:PRINT CHR$(7):NEXT I
4000 PRINT"There goes the alarm. It's"INT(3+3.7*RND(1))"a.m. Y - A - W - N"
4010 FOR I=1 TO 250:NEXT I:FOR I=1 TO 7:PRINT CHR$(7):NEXT I:RETURN
4040 GOSUB 3960:PRINT:PRINT:PRINT"Sorry your flight was unsuccessful."
4050 PRINT:PRINT"You flew"DC"miles and were aloft for";
4060 T=INT(TC):TM=INT(60*(TC-T)):PRINT T"hours and"TM"minutes."
4070 PRINT"Your flight started on May 20 and ended on"MO$;DA", 1937."
4080 PRINT:PRINT"Amelia Earhart flew approximately 27,000 miles between"
4090 PRINT"May 20 and July 2, 1937 before going down at Mili Atoll"
4100 PRINT"in the Japanese-held Marshall Islands.":GOSUB 3960:PRINT
4110 PRINT:INPUT"Would you like to try again (Y or N)";A$:GOSUB 3830
4120 IF A=0 THEN PRINT"Okay. Good luck!":GOSUB 3960:CLS:RUN
4130 PRINT"Okay. So long for now.":GOSUB 3960:CLS:END
4160 CLS:PRINT TAB(20)"Around the World Flight Attempt":PRINT
4170 PRINT" In this simulation, you take the role of Amelia Earhart in her"
4180 PRINT"attempt to fly around the world in a twin-engine Lockheed Electra."
4190 PRINT" Prior to each flight leg, you are given information about your"
4200 PRINT" physical condition and that of your navigator, the distance to your"
4210 PRINT"next destination, and the current weather. As pilot, you must make"
4220 PRINT"many decisions before taking off, while aloft, and prior to landing."
4230 PRINT" Under ideal conditions, at 150 mph, your plane can fly 2.3"
4240 PRINT"miles on one gallon of fuel, but conditions are seldom ideal."
4250 PRINT"The Electra can hold up to 1150 gallons of fuel."
4260 PRINT" Your engine and mechanical components will last longer if they"
4270 PRINT"are maintained regularly; on the Electra, the recommended interval"
4280 PRINT"for a major overhaul is 40 hours. But remember, not all airports"
4290 PRINT"are equipped to service your aircraft."
4300 PRINT" If you have malfunctions along the way, you may want to have"
4310 PRINT"them fixed at a secondary aerodrome. Of course, this costs time."
4320 PRINT" You navigator has a serious alcohol problem. As long as your"
4330 PRINT"ground time is minimal, he won't have much chance to get lost in"
4340 PRINT"the bottle, but if you get trapped on the ground by a series of"
4350 PRINT"tropical storms and he gets drunk, you may find you have to rely"
4360 PRINT"on dead reckoning and landmarks when you get back in the air."
4370 PRINT:RETURN