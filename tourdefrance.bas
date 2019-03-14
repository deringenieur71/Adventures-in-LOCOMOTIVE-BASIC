100 MODE 2:INK 0,26:INK 1,0:BORDER 26:LOCATE 1,10:X$="Tour de France Bicycle Race":GOSUB 3480:LOCATE 1,13:X$="(c) David H. Ahl, 1986":GOSUB 3480:LOCATE 1,16:X$="Converted to CPC in 2017 by SRS ***www.cpcwiki.eu***":GOSUB 3480:LOCATE 1,23
130 X$="Press any key to continue.":GOSUB 3480:WHILE LEN(INKEY$)=0:RN=RN+1:WEND:CLS:GOSUB 3510:DIM P$(22),T1(23),D(23),PP(14):G=1:P$(0)="Reims":GOSUB 1440:GOSUB 3060:GOSUB 3310:LOCATE 1,23:X$="Press any key to continue.":GOSUB 3480:WHILE LEN(INKEY$)=0
210 RN=RN+1:WEND:WHILE RN>32767:RN=RN-65535:WEND:RANDOMIZE RN:CLS:GOSUB 2830:PRINT:PRINT"About your physical fitness: are you (1) in fantastic health,":PRINT" (2) excellent shape, (3) quite good, (4) okay, (5) poor"
320 INPUT" Please enter a number between 1 and 5";A:IF A<1 OR A>5 THEN PRINT"Huh? I don't understand.":GOTO 320
340 F=0.57-0.04*A
350 PRINT"How many weeks do you intend to take off from work or school to":INPUT"practice and prepare for the race";W:IF W>12 THEN W=12
370 IF W>5 THEN 390 ELSE PRINT"You must be joking. You'll need at least six"
380 PRINT"weeks if you want to be a real contender. Now":GOTO 350
390 F=F-(12-W)*0.05:GOSUB 2770:PRINT"Thank you. Let's go out for a practice run.":P0=10:P5=1:GOSUB 2900:PD=0:PRINT:PRINT"In an upper-middle gear ratio (52 / 17),"R0"rpm would translate"
440 PRINT"to a speed of approximately"INT(0.3956*R0+0.5)"kilometers per hour.":IF R0>60 THEN 480 ELSE PRINT"That speed is barely competitive. Next time"
460 PRINT"you play, try a timing-loop value of"INT(80*PT/R0)"but for now":PRINT"you may want to have the computer do most of the pedaling."
480 PRINT:PRINT"How much do you want to pedal your bike (on the keyboard)?":PRINT"1 = hardly at all, 3 = occasionally, 7 = frequently, 10 = every opportunity":INPUT"Please enter a number between 1 and 10";P0:IF P0<1 THEN P0=1
510 IF P0>10 THEN P0=10
540 D=D+1:PRINT:PRINT"Date : July"D" You are at "P$(D-1)".":IF T1(D)<5 THEN 580
570 PRINT"Today, thank goodness, is a rest and recuperation day.":GOTO 540
580 PRINT"Your destination is "P$(D)","D(D)"km from here.":PRINT"Type of racing this stage:"T1$(T1(D)):IF T1(D)<>T1(D-1)THEN 650
630 INPUT"Do you want a different basic gear range than yesterday";A$:GOSUB 3360:IF A$="N"THEN 860 ELSE G=1
650 PRINT"Naturally you will shift gears, but what will be your basic gear":INPUT"range (ring and cog) for the day. First the ring (40 or 52)";R
670 IF R=40 OR R=52 THEN 690 ELSE PRINT"You don't have that ring."
680 INPUT"Enter 40 or 52 please";R:GOTO 670
690 INPUT"Which cog (13, 15, 17, 19, 21, 23, or 25)";C:IF C=13 OR C=15 OR C=17 OR C=19 OR C=21 OR C=23 OR C=25 THEN 720
710 PRINT"Sorry, you don't have that cog. Please try again.":GOTO 690
720 IF(C=13 AND R=40)OR(C=25 AND R=52)THEN 730 ELSE GR=R/C:GOTO 750
730 PRINT"The chain line will be badly skewed with that combination."
740 PRINT"Let's do it again. First the ring. ";:GOTO 680
750 IF T1(D)=4 THEN 860
760 IF GR>3.2 THEN X$="high"ELSE IF GR<1.8 THEN X$="low"ELSE 790
770 PRINT"That ratio sounds very "X$;:INPUT". Do you want to change it";A$:GOSUB 3360:IF A$="Y"THEN 740
790 IF T1(D)=3 AND GR>2.3 THEN 800 ELSE 830
800 PRINT"For mountainous terrain, that's a rather high basic gear ratio.":INPUT"Do you want to stick with it";A$:GOSUB 3360:IF A$="N"THEN 740
820 G=1.3-0.19*GR:GOTO 860
830 IF GR>3 THEN G=1.35-0.14*GR
860 T=100+INT(59*RND(1)):PRINT"Your departure time is scheduled at 9 : ";:PRINT RIGHT$(STR$(T),2):GOSUB 3450:P5=1:R1=130:GOSUB 2900:K0=R0*0.1292706*GR*G:PRINT USING"##.#";K0;:PRINT" kph.":PRINT:T0=0:GOSUB 1520:CR=0:PRINT:GOSUB 1770
920 IF T1(D)=3 AND GR>2.7 THEN PP(1)=PP(1)+10:P2=P2+10:P3=1
930 PRINT:GOSUB 2150:IF P3=1 THEN P3=0:PP(1)=PP(1)-10:P2=P2-10
950 PRINT:PRINT"Time for a quick breather. You have about";:PRINT INT(20+20*RND(1))"km to go.":PRINT"Press any key when you're ready to go.":WHILE LEN(INKEY$)=0:WEND:PRINT"Okay, on the road again":GOSUB 3450:PRINT
1010 PRINT"You're coming up on 10 km from the end.":PRINT"During the countdown (in 0.1-kilometer increments) you can":PRINT"press any key when you want to start your sprint.":GOSUB 3450:PRINT:FOR D0=10 TO 0 STEP-0.1:LOCATE 10,23:PRINT USING"##.#";D0
1050 IF LEN(INKEY$)>0 THEN 1070
1060 NEXT D0:K1=1:GOTO 1090
1070 P5=D0/2:R1=140:GOSUB 2900:K1=R0*0.396:PRINT USING"##.#";K1;:PRINT" kph.":PRINT
1090 T2=D0/K1:T1=(D(D)-D0)/K0:T(1)=T2+T1+T0:IF D0>3 THEN PRINT"Puffpuffpuff. That was a L-O-N-G sprint!"
1130 PRINT:PRINT"Race summary (total times in hours) :":PRINT" Rider 1 (you) 2 3 4 5 6":T3=T(1):WS=1:PRINT"Stage time",:PRINT USING"#####.##";T(1);:IF T1(D)=3 THEN GQ=0.3 ELSE GQ=0.4
1170 FOR I=2 TO 6:R0=70+20*RND(1):T(I)=D(D)/(GQ*R0)+1.4*RND(1):PRINT USING"#####.##";T(I);:IF T(I)<T3 THEN T3=T(I):WS=I
1200 NEXT I:T4=1000:WT=0:PRINT:PRINT"Total time",:FOR I=1 TO 6:T0(I)=T0(I)+T(I):PRINT USING"#####.##";T0(I);:IF T0(I)<T4 THEN T4=T0(I):WT=I
1240 NEXT I:PRINT:PRINT:PRINT" Stage winner : Rider"WS" Overall leader : Rider"WT:W(WS)=W(WS)+1:IF D<22 THEN 540
1300 PRINT:PRINT"The Tour de France has ended!":PRINT:X=0:FOR I=1 TO 6:IF W(I)>X THEN X=W(I):WS=I
1320 NEXT I:PRINT"Winner of the most stages ("X") was Rider"WS;:IF WS=1 THEN PRINT" That's YOU!"ELSE PRINT
1340 PRINT"Overall winner by elapsed time was Rider"WT;:IF WT=1 THEN PRINT" That's YOU!"ELSE PRINT
1360 T4=1000:WT=0:FOR I=1 TO 6:IF T0(I)-2*W(I)<T4 THEN T4=T0(I)-2*W(I):WT=I
1380 NEXT I:PRINT"Overall points winner (time and stages) was Rider"WT;:IF WT=1 THEN PRINT" That's YOU!"ELSE PRINT
1410 GOTO 2730
1440 FOR I=1 TO 10:READ A:P4=P4+A:PR(I)=P4:NEXT I:DATA 5,5,5,5,5,5,5,5,5,5
1460 FOR I=1 TO 8:READ A:P1=P1+A:PM(I)=P1:NEXT I:DATA 5,5,5,5,5,5,10,5
1480 FOR I=1 TO 14:READ A:P2=P2+A:PP(I)=P2:NEXT I:RETURN:DATA 8,5,5,5,5,5,5,5,5,8,5,5,5,3
1520 RN=INT(P4*RND(1)):FOR I=1 TO 10:IF RN>PR(I)THEN NEXT I:I=10
1540 ON I GOTO 1550,1570,1590,1610,1630,1650,1670,1690,1720,1740
1550 PRINT"Mostly gravel roads this stage. You'll have to slow down.":T0=T0+0.8:RETURN
1570 PRINT"The roads in this area are very bumpy and will slow you down.":T0=T0+0.5:RETURN
1590 PRINT"Hot weather in this area has caused the roads to become very":PRINT"slippery from oil seepage.":T0=T0+0.3:RETURN
1610 PRINT"The wind is at your back making for a very fast ride!":T0=T0+-0.3:RETURN
1630 PRINT"You're heading straight into the wind today. Tough going.":T0=T0+0.5:RETURN
1650 PRINT"There is a gusty sidewind today creating balance problems.":T0=T0+0.3:RETURN
1670 PRINT"Dreary day: drizzle, fog, and clammy chill in the air.":T0=T0+0.2:RETURN
1690 PRINT"Horrible weather! Icy rain that hits you like 1000 needles,":PRINT"stinging your face and arms. Your shoes are soaked. And there":PRINT"are few spectators to cheer you on.":T0=T0+0.5:RETURN
1720 PRINT"Mud and puddles on the road cause you to slide and skid all over.":T0=T0+0.4:RETURN
1740 PRINT"Today is a crisp, clear day in the French countryside.":RETURN
1770 RN=INT(P1*RND(1)):FOR I=1 TO 8:IF RN>PM(I)THEN NEXT I:I=8
1790 ON I GOTO 1800,1830,1850,1890,1930,1970,1990,2120
1800 INPUT"You have a broken spoke. Want to fix it now";A$:GOSUB 3360:IF A$="Y"THEN T0=T0+0.1 ELSE T0=T0+0.15
1820 RETURN
1830 PRINT"You got a flat tire. You'll have to change it now.":T0=T0+0.1:RETURN
1850 PRINT"Your brakes tend to lock every time you apply them hard. You can":INPUT"nurse them along or fix them here. Want to fix them now";A$:GOSUB 3360:IF A$="Y"THEN T0=T0+0.2 ELSE T0=T0+0.4
1880 RETURN
1890 PRINT"You seem to be missing shifts to your 19 cog. Perhaps one or":PRINT"more teeth are worn. You can shift around it or fix it here.":INPUT"Want to fix it now";A$:GOSUB 3360:IF A$="Y"THEN T0=T0+0.2:RETURN
1920 T0=T0+0.4:RETURN
1930 PRINT"On a tight corner, you narrowly missed a spill, but your toe clip":INPUT"got bent on a boulder near the road. Want to bend it out now";A$:IF A$="Y"THEN T0=T0+0.1 ELSE T0=T0+0.2
1960 RETURN
1970 PRINT"Uh oh! Chain broke. You've no choice but to fix it now.":T0=T0+0.15:RETURN
1990 PRINT"WHOOPS! Took a corner too fast, lost traction, slid, and CRASHED!":GOSUB 3450:CR=1:RN=RND(1):IF RN<0.03 THEN 2080 ELSE IF RN<0.5 THEN 2040
2010 PRINT"You pick up yourself and your bicycle. You're both":PRINT"scratched and a bit beaten up but there seems to be no":PRINT"serious damage so you get on your way.":T0=T0+0.3:RETURN
2040 PRINT"You twisted your ankle and it is very painful. You know it will":PRINT"slow you down. However, there is no way you would drop out of the":PRINT"race, so you pick up your bicycle and get on your way.":T0=T0+0.8:RETURN
2080 PRINT"Blood is all over the place; ambulance is called and":PRINT"you are rushed to the local hospital.":GOSUB 3450:PRINT"Bad news! You dislocated your shoulder and you're out of the race.":GOTO 2710
2120 PRINT"Bicycle ran like a charm today. No problems at all!":RETURN
2150 RN=INT(P2*RND(1)):FOR I=1 TO 14:IF RN>PP(I)THEN NEXT I:I=14
2170 IF I>10 THEN 2190
2180 ON I GOTO 2200,2320,2340,2370,2390,2420,2440,2470,2500,2530
2190 ON I-10 GOTO 2560,2600,2640,2660
2200 X=INT(D(D)/50):IF X<2 THEN X=2
2210 PRINT"You're pushing yourself to the absolute limit and after"X"hours":PRINT"you totally collapse. The medics give you oxygen and bring you":PRINT"around, but warn you against resuming the race.":IF CL>0 THEN 2290
2240 CL=1:IF RND(1)>0.8 THEN 2270
2250 GOSUB 3450:PRINT"But nothing can defeat your competitive spirit and you":PRINT"vow to press on regardless.":T0=T0+1:RETURN
2270 GOSUB 3450:PRINT"You heard of another rider dying from overexertion last":PRINT"year, so you follow the doctor's advice and withdraw.":GOTO 2710
2290 GOSUB 3450:PRINT"This is the second time you collapsed in this race,":PRINT"so you reluctantly concede that this just isn't your year":PRINT"and you withdraw from the race.":GOTO 2710
2320 PRINT"You have a terrible abdominal painsomething you ate, perhaps?":PRINT"You'll have to slow down a bit.":T0=T0+0.4:RETURN
2340 PRINT"You're having difficulty breathing and you're feeling lightheaded."
2350 PRINT"You recognize this as an early warning signal of total collapse":PRINT"and wisely decide to slow your pace a bit.":T0=T0+0.3:RETURN
2370 PRINT"You seem to be seeing through a hazeand it's not the weather.":PRINT"Occasionally, you can't seem to focus at all.":GOTO 2350
2390 PRINT"Uh oh! A muscle in your calf seems to have turned to jelly. It's":PRINT"not particularly painful, but it seems to be completely out of":PRINT"control. You'll have to slow down a bit.":T0=T0+0.3:RETURN
2420 PRINT"You have a sharp pain in your lower back. It doesn't seem to be":PRINT"injuredperhaps you're just overly tense.":T0=T0+0.2:RETURN
2440 PRINT"The gearing you've been using is really tough on your legs and":PRINT"you have developed shin splints. You'll have to back off your":PRINT"blistering pace a bit.":T0=T0+0.3:RETURN
2470 PRINT"Terrible pain in the balls of your feet. Your toe clip seems to be":PRINT"adjusted correctly. Maybe it's these new cleats. In any event,":PRINT"you decide to back off a bitjust for today.":T0=T0+0.3:RETURN
2500 PRINT"A medic takes a look at you during lunch break and declares you":PRINT"have a salt/water imbalance. 'Drink more water along the way,'":PRINT"he recommends, 'and don't forget your salt pills.'":RETURN
2530 IF T5<>3 THEN 2660
2540 PRINT"The altitude is getting to you in the mountains. You're short of":PRINT"breath and you feel lightheaded.":GOTO 2445
2560 PRINT"Your saddle feels like it has appended itself to your body. A cyst":PRINT"seems to be starting, something you want to avoid at all costs.":PRINT"You put some extra padding on the saddle and back off on your":PRINT"pace just a tad.":T0=T0+0.15
2590 RETURN
2600 PRINT"The blistering pace you've been keeping has played havoc with your":PRINT"knees. You've heard of football players with bad knees, but a":PRINT"bicycle racer? Nevertheless, you'll have to slow down a bit.":T0=T0+0.2:RETURN
2640 PRINT"You developed a bad cramp in your legs. You'll have to take it":PRINT"just a bit easier.":T0=T0+0.15:RETURN
2660 IF CR=1 THEN 2150
2670 PRINT"You're feeling fit as a fiddle and have no physical problems today.":RETURN
2710 PRINT:PRINT"Too bad. That's it for this year, but there's always":PRINT"next year...."
2730 PRINT:INPUT"Would you like to ride again";A$:GOSUB 3360:IF A$="Y"THEN RUN ELSE CLS:PRINT"Bye for now.":END
2770 PRINT"To pedal your computer bike, you will strike two keys alternately":PRINT"With two fingers (one hand or two, it's up to you).":INPUT"Which key do you want for your left pedal";L$:INPUT"and which key for the right";RT$:RETURN
2830 PRINT"Calculating timing-loop value takes 20 seconds. Please be patient.":PRINT:E=TIME+6000:WHILE TIME<E:PT=PT+1:WEND:PT=PT*2:PRINT"The timing-loop value for your computer is"PT:PRINT"Please write it down for playing this game in the future.":RETURN
2900 IF D=8 AND PD=0 THEN 2950
2910 IF D=17 AND PD=1 THEN 2950
2920 IF P0>=9.92*RND(1)THEN PD=PD+1:GOTO 2950
2930 R0=INT((R1+40*RND(1))*F):PRINT"Computer is pedaling your bicycle.":GOSUB 3450:X$="It":GOTO 3020
2950 PRINT"Start pedaling";:GOSUB 3450:PRINT" NOW!":PRINT:K=0:E0=TIME+6000*P5
2970 A$=INKEY$:IF LEN(A$)=0 OR A$=B$THEN 2990
2980 IF A$=L$OR A$=RT$THEN K=K+1:B$=A$
2990 IF TIME<E0 THEN 2970
3000 PRINT"Okay, stop pedaling.":R0=INT(0.9*F*K/P5):X$="You":IF R0>95 THEN R0=INT(84+10*RND(1))
3020 PRINT X$" pedaled at a rate of"R0"rpm. Calculating speed....";:A$="":FOR I=1 TO 800:B$=INKEY$:NEXT I:RETURN
3060 FOR I=1 TO 22:READ N,P$(I),T1(I),D(I):NEXT I:RETURN:DATA 1,"Lille",1,213
3080 DATA 2,"Arras",4,52
3090 DATA 3,"Caen",1,308
3100 DATA 4,"Le Mans",1,172
3110 DATA 5,"Nantes",1,192
3120 DATA 6,"Bordeaux",1,338
3130 DATA 7,"Biarritz/Bayonne",1,184
3140 DATA 8,"Lourdes",3,168
3150 DATA 9,"Lourdes",5,0
3160 DATA 10,"Toulouse",2,172
3170 DATA 11,"Rodez",2,176
3180 DATA 12,"Avignon",2,294
3190 DATA 13,"Grenoble",2,228
3200 DATA 14,"l'Alpe-d'Huez",4,39
3210 DATA 15,"Lansleburg",3,225
3220 DATA 16,"Martigny, Switzerland",3,230
3230 DATA 17,"Annecy",3,218
3240 DATA 18,"Annecy",5,0
3250 DATA 19,"Lyon",2,182
3260 DATA 20,"Dijon",1,212
3270 DATA 21,"Fountainbleau",1,259
3280 DATA 22,"Paris",1,210
3310 FOR I=1 TO 5:READ T1$(I):NEXT I:RETURN:DATA"Mostly flat with small hills.","Hills, gorges, steep slopes."
3330 DATA"Mountains." ,"Time trial against the clock.","Rest."
3360 GOSUB 3400:IF A$="Y"OR A$="N"THEN RETURN
3370 INPUT"Don't understand your answer. Enter 'Y' or 'N' please";A$:GOTO 3360
3400 IF A$=""THEN A$="Y":RETURN
3410 A$=LEFT$(A$,1):IF A$>="A"AND A$<="Z"THEN RETURN
3420 A$=CHR$(ASC(A$)-32):RETURN
3450 FOR P=1 TO 300:X=X+1:NEXT P:RETURN
3480 PRINT TAB((80-LEN(X$))/2)X$:RETURN
3510 X$="Tour de France Bicycle Race":GOSUB 3480:PRINT:PRINT" You are a bicycle racer entered in the 22-day Tour de France":PRINT"bicycle race around France. Your objective is to win the race by"
3540 PRINT"having the lowest overall elapsed time. In addition, you must try":PRINT"to win as many individual 'stages' or daily races as possible, as":PRINT"wins on these stages count toward the overall points prize."
3570 PRINT" Each day you pedal your bicycle by alternately pressing two":PRINT"keys on your computer keyboard as quickly as possible (you may opt":PRINT"to have the computer do some of the pedaling for you)."
3600 PRINT" While racing, various hazards occur (weather, mechanical":PRINT"breakdowns, road conditions, and physical problems) that hamper":PRINT"your progress.":PRINT" At the end of each stage (day), you may sprint to the finish"
3640 PRINT"line. The computer will count down the distance starting ten":PRINT"kilometers from the end of the race. During this countdown, you":PRINT"must decide when to start your sprint. Remember, if you start too"
3670 PRINT"soon, you may become too exhausted to maintain your sprint to the":PRINT"end, but if you start too late, other riders may overtake you.":RETURN