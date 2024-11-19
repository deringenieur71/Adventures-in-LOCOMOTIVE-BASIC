10 REM COPYRIGHT 2000,CHRIS CHARLA.ALL RIGHTS RESERVED.
35 MODE 2:REM converted to CPC 12 2021 by SRS
40 PRINT"Infil/Traitor by Chris Charla. Converted to CPC by SRS"
45 PRINT"Source: https://ifwizz.de/infil-traitor-(2000-en).html"
50 PRINT:PRINT"Any Key to start":CALL &BB18
55 CLS
100 DIM RM(51,4):DIM OB(23,2):DIM L$(23,2):DIM VB$(36):DIM VT(36)
110 ER=0:R=4:mt=1:tb=1:dd=4:CC=0:vu=1:ci=1:fu=5:td=1:pd=1:cb=1:jo=1:vi=1:si=1:mf=0:DEFINT x,y
130 FOR X=1 TO 51:FOR Y=1 TO 4:READ RM(X,Y):NEXT Y,X
150 FOR X=1 TO 23:FOR Y=1 TO 2:READ OB(X,Y):NEXT Y,X
180 FOR Z=1 TO 23:FOR A=1 TO 2:READ L$(Z,A):NEXT A,Z
210 FOR X=1 TO 36:READ VB$(X):NEXT
240 FOR X=1 TO 36:READ VT(X):NEXT X
1000 cc=cc+1:IF R=ER THEN 1100
1005 IF er=51 AND r=7 THEN 8010
1010 GOSUB 4000
1030 :
1040 FOR X=1 TO 23
1050 IF OB(X,2)=R THEN GOSUB 5200
1060 NEXT X
1100 :
1101 IF CC=W1 THEN 5000
1102 IF CC=3 THEN 5010
1103 IF CC=W2 THEN 5020
1104 IF cc=w3 THEN 5030
1105 IF cc=w4 THEN 5040
1106 IF cc=w5 THEN 5050
1107 IF fu<5 THEN fu=fu-1
1108 IF fu=0 THEN 3570
1109 IF ob(1,2)=0 AND ry=0 AND r>6 THEN 7000
1110 IF mf=1 THEN 7020
1111 IF mf=5 THEN 7020
1112 IF mf=9 THEN 7020
1113 IF mf>0 AND r>8 THEN 7030
1114 IF mf>0 AND ob(1,2)=100 THEN 7060
1115 IF mf>0 THEN mf=mf+1
1200 INPUT M$
1210 PRINT""
1220 L=LEN(M$):IF L=0 THEN 1000
1225 M1$="":M2$="":M2=0:X=0
1230 FOR I=1 TO L
1240 A$=MID$(M$,I,1):A=ASC(A$):IF A>=97 AND A<=122 THEN A$=CHR$(A-32)
1250 IF A$<>" "THEN 1260
1255 IF M2$<>""THEN 1300
1257 X=1:GOTO 1290
1260 IF X=0 THEN M1$=M1$+A$:GOTO 1290
1270 M2$=M2$+A$
1290 NEXT I
1300 IF M1$=""THEN PRINT"Input,please!":GOTO 1000
1306 MG$=M1$:ML$=LEFT$(M1$,3):M1$=ML$:MM$=LEFT$(M2$,3):M2$=MM$
1317 IF LEN(M1$)=1 THEN 5300
1320 FOR X=1 TO 36
1330 IF VB$(X)=M1$THEN T=VT(X):GOTO 1350
1340 NEXT X
1345 PRINT"I'm sorry,I don't know how to ";MG$:GOTO 1000
1350 ON T GOTO 2100,2200,2300,2500,2520,2600,2700,2800,2900,3000,3100,3200,3300,3400,3500,3600,3700,3800
2100 : 
2110 IF M1$="NOR"OR M2$="NOR"THEN M1$="N":GOTO 1317
2120 IF M1$="SOU"OR M2$="SOU"THEN M1$="S":GOTO 1317
2130 IF M1$="EAS"OR M2$="EAS"THEN M1$="E":GOTO 1317
2140 IF M1$="WES"OR M2$="WES"THEN M1$="W":GOTO 1317
2150 PRINT"I'm sorry,I didn't understand."
2170 GOTO 1000
2200 ta=0
2202 IF m2$=""THEN PRINT"You mumble to yourself.Feel better?":GOTO 1000
2206 IF R>8 THEN PRINT"There's no one to talk to in here.":GOTO 1000
2207 IF m2$="WAI"OR m2$="CAT"THEN 2280
2209 IF m2$="GUE"THEN 2270
2210 IF m2$="COP"OR m2$="POL"THEN PRINT"You like to live dangerously,but you don't have a death wish!":GOTO 1000
2211 IF m2$="MAR"OR m2$="DAV"OR m2$="SPY"THEN ta=5
2220 IF ta=5 AND r=7 AND mt=1 THEN 2290
2222 IF ta=5 AND r=7 AND mt=0 THEN PRINT"Marchant looks away.'Remember our deal,Cartright.'":GOTO 1000
2224 IF ta=5 AND r<>7 THEN PRINT"Marchant isn't here.":GOTO 1000
2230 PRINT"I don't understand who you want to talk to.":GOTO 1000
2270 x=0:x=RND(3)
2272 IF x=0 THEN PRINT"'Isn't it exciting!' says a woman from the English embassy."
2273 IF x=1 THEN PRINT"'Why are you speaking to me?' asks a suspicious Vladistani."
2274 IF x=2 THEN PRINT"'Someone will pay for this outrage.' mutters a Morolian diplomat."
2276 GOTO 1000
2280 IF OB(1,2)<>0 THEN 2286
2281 IF r<4 OR R>5 THEN 2287
2282 PRINT"Unless you want one of them to recognize you as an imposter and go to the police,you should probably steer clear of your fellow waiters.Anyway they"
2284 PRINT"might find that tux you have on under your waiter's uniform a little weird."
2285 GOTO 1000
2286 PRINT"It's not polite for guests to talk to the help in Vladistan.":GOTO 1000
2287 PRINT"There are no waiters around here.":GOTO 1000
2290 PRINT"Marchant looks at you.'Cartright.I thought zat was you in zee waiter outfeet.I suspect we have been sent here on similar errands by our superiors."
2292 PRINT"And now I suspect zat zis bomb threat may be your doing,no? It eez troubling.'He pauses for a moment then turns to you.'For one of us to accompleesh his "
2294 PRINT"mission,the other must fail.I am thus tempted to turn you in.No doubt you may be theenking the same thing.So I propose a truce of sorts.I will keep my"
2296 PRINT"mouth shut about you,and you do zee same for me.Of course,like all bargins in zees business,I cannot make any guarentees about the duration of our deal.":mt=0:GOTO 1000
2300 IF m2$=""THEN 2390
2310 FOR x=1 TO 23
2320 IF m2$=LEFT$(l$(x,2),3)THEN 2340
2330 NEXT x
2335 PRINT"You don't see anything special.":GOTO 1000
2340 IF x=10 THEN 2380
2342 IF x=15 OR x=17 THEN 2378
2345 IF x=16 THEN 2382
2350 IF x=21 THEN 2384
2351 IF x=20 THEN 2385
2355 IF x=2 THEN 2386
2356 IF x=8 THEN 2365
2360 PRINT"It's just an ordinary ";:PRINT l$(x,2);:PRINT".":GOTO 1000
2365 IF(vi=0 AND si=1)OR(vi=1 AND si=0)THEN PRINT"There is some vinegar in the jar and ";:GOTO 2376
2367 IF vi=1 AND si=1 THEN PRINT"The jar is empty,and ";:GOTO 2376
2368 IF vi=0 AND si=0 AND jo=0 THEN PRINT"The jar is open,and filled with a bubbling solution.":GOTO 1000
2369 IF vi=0 AND si=0 AND jo=1 THEN PRINT"The jar is closed,but there is bubbling inside.":GOTO 1000
2376 IF jo=1 THEN PRINT"the jar is closed.":GOTO 1000
2377 IF jo=0 THEN PRINT"the jar is open.":GOTO 1000
2378 PRINT"It looks like ordinary cleanser of Eastern European design -- "
2379 PRINT"meaning it looks rough and kind of gray.":GOTO 1000
2380 PRINT"The note is in French.It says: Marchant,the Slava is the plastique."
2381 PRINT"Good luck,Yves.":GOTO 1000
2382 PRINT"At first it looked like cleanser,but on closer examination,it"
2383 PRINT"actually bears a closer resemblance to modeling clay.":GOTO 1000
2384 PRINT"These are the plans to the XJ-39 nuclear device!":PRINT"They are?ed on special,waxy,paper.":GOTO 1000
2385 PRINT"It's a top secret Morolian codebook.":GOTO 1000
2386 PRINT"It's loaded.":GOTO 1000
2390 er=0:GOTO 1000
2500 M1$="I":GOTO 1317
2520 REM
2530 IF td=1 THEN PRINT"As always,you are in top physical condition."
2540 IF td=0 THEN PRINT"You're a little shaken from the blast,but otherwise you feel fine."
2550 GOTO 1000
2600 IF ob(5,2)=0 THEN 2620
2615 PRINT"You need a knife before you can cut anything!":GOTO 1000
2620 IF r=16 THEN 2650
2630 IF r=51 THEN 2670
2640 IF r=19 THEN 2648
2642 PRINT"You can't cut anything here.":GOTO 1000
2648 PRINT"Cutting the wires is pointless -- you need to really disable the transmitter.":GOTO 1000
2650 PRINT"You cut the ropes holding the dumbwaiter up and it plunges down!":PRINT""
2660 r=50:GOTO 1000
2670 IF ob(19,2)=0 THEN 3374
2680 IF ob(19,2)<>0 THEN 3373
2700 IF M2$="COP"OR M2$="POLICE"THEN 2750
2720 IF M2$="ME"OR M2$="SEL"THEN 2760
2730 IF m1$="sho"THEN 2740
2735 PRINT"You are a spy,not an assassin.Killing is not the way you do business.":GOTO 1000
2740 IF ob(2,2)=0 THEN 2742
2741 PRINT"You need a gun or rifle to shoot!":GOTO 1000
2742 PRINT"The rifle misfires! The bullets must be 100 years old.":GOTO 1000
2750 IF ci=0 THEN 2752
2751 PRINT"You can't see anyone to shoot!":GOTO 1000
2752 PRINT"Before you can react,the Vladistani officer delivers a well"
2753 PRINT"placed bullet to your kneecap,and you go down hard.":GOTO 5052
2760 IF ci=0 THEN 2765
2761 PRINT:PRINT"As you crack the cyanide pill in your tooth,you muse: the mission"
2762 PRINT"is a failure,the XJ-39 is as good as in the Red's hands,but at"
2763 PRINT"least you won't be around to see the Soviets take over...":GOTO 8000
2765 PRINT:PRINT"As you crack the cyanide pill in your tooth,you muse: the mission"
2766 PRINT"is a failure,but at least the Vladistanis won't get the satisfaction"
2767 PRINT"of tossing you to one of their meaty torturers.Your secrets die with you.":GOTO 8000
2800 IF ob(22,2)=0 THEN 2815
2810 PRINT"You don't have a shovel!":GOTO 1000
2815 IF r=46 THEN 2840
2817 IF R=45 THEN 2876
2820 IF r<50 AND r>37 THEN PRINT"You dig a little into the dirt floor,but it fails to accomplish much here."
2825 IF r<38 THEN PRINT"You need dirt to dig in."
2830 GOTO 1000
2840 PRINT"You dig out some dirt from the soft cellar floor just under the":PRINT"massive vault door.":PRINT:dd=dd-1
2845 if dd>=0 and dd<3 then PRINT"The hole under the door is ";
2850 IF dd=3 THEN PRINT"There is now a little hole under the massive door.":GOTO 1000
2855 IF dd=2 THEN PRINT"getting much bigger now.":GOTO 1000
2857 IF dd=1 THEN PRINT"almost big enough to crawl through!":GOTO 1000
2860 IF dd=0 THEN PRINT"big enough to crawl through! ":GOTO 2875
2867 IF dd=-1 THEN PRINT"Any more digging and you could collapse the hole!":GOTO 1000
2869 IF dd=-2 THEN PRINT"The hole under the door collapses!":dd=5:rm(46,1)=0:GOTO 1000
2870 GOTO 1000
2875 RM(46,1)=45:GOTO 1000
2876 PRINT"You dug under the door,now don't try to get cute.":GOTO 1000
2900 IF M2$="ALL"THEN 2955
2910 FOR X=1 TO 23
2915 IF M2$=LEFT$(L$(X,2),3)THEN 2930
2920 NEXT X
2925 PRINT"You can drop what you can't take!":GOTO 1000
2930 IF OB(X,2)=0 THEN 2945
2940 PRINT"You aren't holding that!":GOTO 1000
2945 IF X=1 THEN 2960
2946 IF X=16 AND r=33 THEN 2970
2947 IF X=13 AND r=33 AND ob(16,2)=33 THEN 2972
2948 IF jo=0 AND ob(8,2)=0 AND x=7 THEN 2980
2949 IF jo=0 AND ob(8,2)=0 AND x=6 THEN 2985
2950 OB(X,2)=R:PRINT"Dropped.":GOTO 1000
2960 OB(1,2)=100:PRINT"You stash the jacket behind some bushes,revealing your tux."
2965 PRINT"Now you're ready to mingle with the guests!":GOTO 1000
2970 ob(16,2)=33:PRINT"You pull the Slava out of the box and mold it into one of the support beams of the radio tower.":GOTO 1000
2972 ob(13,2)=33:PRINT"You insert the blasting cap into the plastique,with the fuse sticking out,ready to light.":GOTO 1000
2980 ob(7,2)=100:vi=0:PRINT"You drop the vinegar into the open jar.":GOTO 1000
2985 ob(6,2)=100:si=0:PRINT"You drop the baking soda into the open jar.":GOTO 1000
3000 IF m2$="ALL"THEN 3055
3010 FOR X=1 TO 23
3015 IF M2$=LEFT$(L$(X,2),3)THEN 3030
3020 NEXT X
3025 PRINT"Sorry,you can't take that.":GOTO 1000
3030 IF R=OB(X,2)THEN 3045
3035 IF OB(X,2)=0 THEN 3050
3040 PRINT"You can't see the ";:PRINT l$(x,2);:PRINT" here.":GOTO 1000
3045 OB(X,2)=0:PRINT"You take the ";:PRINT l$(x,2);:PRINT".":GOTO 3060
3050 PRINT"You're already holding it!":GOTO 1000
3055 PRINT"You need to 'TAKE' each item individually.":GOTO 1000
3060 OB(X,1)=0
3065 IF X=9 THEN PRINT"As you pick up the coat you notice a handwritten message on a slip";:GOTO 3085
3070 IF X=12 THEN 3072
3071 GOTO 1000
3072 PRINT"You grab the attache case and open it,to reveal,along with a copy of":PRINT"Le Monde,which you discard,a small blasting cap with a length of fuse"
3080 PRINT"coming from one end.":OB(13,2)=0:GOTO 1000
3085 PRINT" of paper in an inner pocket.":OB(10,2)=0:GOTO 1000
3100 IF m2$="JAR"THEN 3150
3120 IF r=11 THEN 3140
3140 PRINT"You gently close the French door you came in.":GOTO 1000
3150 IF ob(8,2)=0 THEN 3153
3151 IF ob(8,2)=r THEN 3153
3152 PRINT"You can't see any jar here.":GOTO 1000
3153 IF jo=1 THEN 3170
3160 jo=1:PRINT"You close the jar tightly.":GOTO 1000
3170 PRINT"The jar is already closed!":GOTO 1000
3200 IF R=13 THEN 3230
3220 IF R=14 OR R=46 THEN 3229
3221 IF R=51 THEN 3228
3222 PRINT"There's nothing to unlock here.":GOTO 1000
3228 PRINT"You don't have a key for the iron padlock.":GOTO 1000
3229 PRINT"You haven't got the combination.":GOTO 1000
3230 IF ob(14,2)=0 THEN 3240
3235 PRINT"You haven't got the key!":GOTO 1000
3240 PRINT"You unlock the cloak room with the key."
3250 rm(13,2)=15:GOTO 1000
3300 IF m2$="JAR"THEN 3340
3302 IF r=46 THEN 3320
3303 IF m2$="PAD"OR m2$="LOC"OR m2$="DOO"THEN 3370
3304 IF m2$="WIR"THEN 3322
3305 IF m2$="TOW"OR M2$="RAD"THEN 3324
3310 PRINT"You can't break anything here.":GOTO 1000
3320 PRINT"The blast door withstands your efforts.":GOTO 1000
3322 PRINT"You snap the wires,but you can't be sure they are the ONLY wires...":GOTO 1000
3324 IF r=33 THEN 3325:PRINT"You can't see that here.":GOTO 1000
3325 PRINT"You'll need more than brute strength to take down the radio tower.":GOTO 1000
3340 IF ob(8,2)=0 THEN 3350
3341 IF ob(8,2)=r THEN 3350
3342 PRINT"You can't see the jar here.":GOTO 1000
3350 IF vi=0 AND si=0 AND jo=1 THEN 3360
3351 IF vi=0 AND si=0 AND jo=0 THEN 3357
3352 print""You smash the jar";
3353 IF (vi=1 AND si=0) or (vi=0 and si=1) THEN 3355
3354 PRINT".It doesn't make as loud a noise as you'd expect.":ob(8,2)=100:GOTO 1000
3355 PRINT",spilling its contents.":ob(8,2)=100:GOTO 1000
3357 PRINT"You smash the open jar,spilling its contents.The soda and vinegar foams for a while on the floor.":ob(8,2)=100:GOTO 1000
3360 PRINT"You smash the closed jar on the floor.The stored up gasses make a surprisingly loud POP! A moment later,your wrist radio buzzes."
3362 PRINT"'I don't know what you did in there,' says K,'but they picked it up on their listening devices,and they now seem convinced that there's"
3364 PRINT"some kind of explosive activity going on in there.I think the authorities will stay out for the time being.'":ob(8,2)=100:vu=0:GOTO 1000
3370 IF r=51 THEN 3372
3371 PRINT"Despite your efforts,you fail.":GOTO 1000
3372 IF ob(19,2)=0 THEN 3374
3373 PRINT"You don't have the tool to do that!":GOTO 1000
3374 PRINT"You snap off the old padlock.":rm(51,3)=7:GOTO 1000
3400 IF m2$="JAR"THEN 3450
3420 IF m2$="DOO"THEN 3430
3425 IF m2$="SLA"OR m2$="SUD"OR m2$="STA"THEN 3440
3430 PRINT"The door doesn't budge.":GOTO 1000
3440 PRINT"You open the box,look inside,then close it again.":GOTO 1000
3450 IF ob(8,2)=0 THEN 3455
3451 IF ob(8,2)=r THEN 3455
3452 PRINT"What jar?":GOTO 1000
3455 IF jo=0 THEN 3470
3460 jo=0:PRINT"You open the jar.":GOTO 1000
3470 PRINT"The jar is already open!":GOTO 1000
3500 IF m2$="FUS"OR m2$="BLA"OR m2$="CAP"THEN 3545
3502 IF R=41 THEN 3514
3503 IF ob(11,2)<>0 THEN 3512
3504 FOR x=1 TO 23:IF m2$=LEFT$(l$(x,2),3)THEN 3507
3505 NEXT x
3506 PRINT"You can't burn that.":GOTO 1000
3507 IF x=21 THEN 3510
3508 IF x=16 THEN 3511
3509 PRINT" There's no point in burning the ";:PRINT l$(x,2);:PRINT".":GOTO 1000
3510 PRINT"The plans are?ed on some kind of flame retardant paper.":PRINT"You'll need more heat to destroy them.":GOTO 1000
3511 PRINT"The matches are ineffective on the plastique.You need to find":PRINT"something with more power.":GOTO 1000
3512 PRINT"You don't have anything to burn anything with!":GOTO 1000
3514 FOR x=1 TO 23
3515 IF m2$=LEFT$(l$(x,2),3)THEN 3518
3516 NEXT x
3517 PRINT"You can't burn that here.":GOTO 1000
3518 IF x=16 THEN 3523
3519 IF x=21 THEN 3528
3520 IF x=20 THEN 3530
3521 PRINT"You toss the ";:PRINT l$(x,2);:PRINT" in the furnace,where it is consumed."
3522 ob(x,2)=100:GOTO 1000
3523 PRINT:PRINT"The next thing to go through your mind after you toss the Slava into"
3524 PRINT"the furnace is the furnace door itself.The Slava was actually plastique,":PRINT"and you are dead."
3526 IF pd=0 THEN PRINT"At least the plans are destroyed,so your mission wasn't a total failure."
3527 GOTO 8000
3528 PRINT"You toss the plans in the furnace with gusto.Let's see the Ruskies try to":PRINT"rebuild the plans from the ashes! The XJ-39 remains American technology!"
3529 PRINT"Your primary mission is complete.Now to escape with your life...":ob(21,2)=100:pd=0:GOTO 1000
3530 PRINT"The code book burns quickly.You'd never have gotten it past Marchant,anyway.":ob(20,2)=100:cb=0:GOTO 1000
3545 IF ob(13,2)=r OR ob(13,2)=0 THEN 3551
3546 PRINT"You don't have the blasting cap!":GOTO 1000
3551 IF ob(11,2)<>0 THEN PRINT"You haven't got any matches!":GOTO 1000
3552 PRINT"You light the fuse on the end of the blasting cap.":fu=4:GOTO 1000
3570 PRINT:PRINT"You hear the pop of the blasting cap going off!"
3571 IF ob(16,2)=ob(13,2)THEN 3575
3572 ob(13,2)=100:GOTO 1000
3575 PRINT"The blasting cap sets off the plastique!"
3576 IF ob(16,2)<>0 THEN 3578
3577 PRINT:PRINT"Unfortunately,you were holding the plastique.You gaze for a moment at the fountain of blood shooting from your wrists before everything goes black.":GOTO 8000
3578 IF ob(16,2)=33 THEN 3583
3579 IF ob(16,2)=r THEN 3596
3580 ob(13,2)=100:ob(16,2)=100:vu=0:PRINT"That ought to convince them there was a reason for the bomb threat!"
3581 PRINT:PRINT"*** Your radio crackles.'We heard the explosion,but the tower is still there.We better hope the plans weren't ready for transfer...":GOTO 1000
3583 IF r=33 THEN 3590
3584 PRINT"A moment after the main blast,you hear the satisfying sound of"
3585 PRINT"transmission tower falling.":vu=0:ob(13,2)=100:ob(16,2)=100:td=0
3586 PRINT:PRINT"*** Your radio crackles.'Nice work,Cartright.'":GOTO 1000
3590 PRINT:PRINT"As you fly through the air towards the ground,after being blown":PRINT"off the roof by the blast,it occurs to you that there may have been"
3592 PRINT"safer places to stand after you lit the fuse.Really,though,falling":PRINT"two stories is the least of your problems.Getting away from the cops"
3594 PRINT"with your legs blown off will be a much bigger challenge...":GOTO 8000
3596 PRINT:PRINT"The blast sounds especially loud because you're in the same room as it!":PRINT"Blinded and disorientated by the flash,you don't even"
3597 PRINT"notice the fountain of blood shooting from your neck.":PRINT"You just get very,very sleepy...":GOTO 8000
3600 PRINT"Sorry,you can't use the word USE.An accepted verb list follows:":PRINT"Go,North,South,East,West,Talk,Read,Look,Search,Examine,"
3612 PRINT"Inventory,Health,Diagnose,Cut,Shoot,Kill,Dig,Put,Drop,":PRINT"Remove,Get,Take,Close,Unlock,Break,Pry,Smash,Bend,Open,"
3614 PRINT"Light,Burn,and Use (well,sorta).":GOTO 1000
3700 CLS
3720 FOR x=1 TO 2000:NEXT x
3730 PRINT"Okay,you asked for it..."
3740 INPUT po$
3750 CLS
3760 PRINT"You are in a maze of twisty little passageways,all alike."
3770 PRINT"Exits lead in all directions."
3780 INPUT po$
3790 PRINT"Just kidding...":INPUT po$
3795 er=0:CLS:GOTO 1000
3800 PRINT"What would your betrothed,Carrie Shepherd,think if she knew you,":PRINT"Drake Cartright,master spy,resorted to profanity as soon as"
3820 PRINT"things got tough? Pull yourself together,man!":GOTO 1000
3999 END
4000 IF r>25 THEN 4020
4010 ON R GOTO 4040,4045,4050,4055,4060,4065,4070,4075,4080,4085,4090,4095,4100,4105,4110,4115,4120,4125,4130,4135,4140,4145,4150,4155,4160
4020 g=r:g=g-25
4026 ON g GOTO 4165,4170,4175,4180,4185,4190,4195,4200,4205,4210,4215,4220,4225,4230,4235,4240,4245,4250,4255,4260,4265,4270,4275,4280,4285,4290
4040 PRINT"You are on the front lawn of the house,just east of the driveway.":GOTO 4340
4045 PRINT"This is the front of the Morolian Ambassador's mansion.To your north is":PRINT"the front door.":GOTO 4340
4050 PRINT"You are standing on the front lawn of the estate,just west of the driveway.Several guests are here,waiting for the valets to bring their cars.":GOTO 4340
4055 PRINT"The back service lot.Nervous caterers mill around,exchanging gossip about the bomb threat.Police are questioning some of them,but your skills and"
4057 PRINT"your waiter jacket let you mingle with the help without being singled out.":GOTO 4340
4060 PRINT"You are in the backyard.You can see into the Game Room from here,but you'd need a ladder to get in from this spot.South of here,you can see."
4062 PRINT"guests chatting in their finery -- a far cry from your waiter's jacket.":GOTO 4340
4065 PRINT"The backyard.To your west is the back service lot.Tittering guests have congregated here.The bomb threat and heavy police response has made this THE":PRINT"event of Vladistan's bleak social season.":GOTO 4340
4070 PRINT"The heaviest concentration of guests and police are here,east of the house.Most of the guests are diplomats,but one your recognize: Davide Marchant,with"
4071 PRINT"the French Intelligence service.He must be here on an op of his own.Possibly he's after the XJ-39 plans too.The front lawn is south,but to the "
4072 PRINT"east,there appear to be a set of doors that lead to the cellar.Not wanting to be recognized by Marchant,it's tough to look too closely.":GOTO 4340
4075 PRINT"Here,west of the house,only a few guests are gathered.You spy an open French door leading to the ball room.This may be your big chance.":GOTO 4340
4080 PRINT"This is the Parlor and Smoking Room.Hunting trophies and traditional Morolian hunting horns adorn the walls,and the air is still heavy with":PRINT"cigar and pipe smoke.":GOTO 4340
4085 PRINT"The grand foyer of the mansion is well named -- twenty foot ceilings and a grand chandelier make this one of the more brilliant rooms in all of"
4087 PRINT"Vladistan.A majestic double staircase to the north leads up,and to the east and west are the living and ball rooms respectively.":GOTO 4340
4090 PRINT"The grand ballroom.The game room is north,a service hall east,and the main foyer is south.":IF W0=1 THEN 4092 ELSE GOTO 4340
4092 W0=0:W1=CC+5:GOTO 4340
4095 PRINT"The game room.Morolian games tend to run to blood sports,but a pooltable has been installed in a nod to local sensibilities.":GOTO 4340
4100 PRINT"This is the service hall.The kitchen is north,and the cloakroom is south":GOTO 4340
4105 PRINT"The kitchen is rarely used.An old dumbwaiter is north and stairs to the cellar are east.":GOTO 4340
4110 PRINT"This is the cloak room.The only exit is north.":GOTO 4340
4115 PRINT"With great effort you squeeze yourself into the dumbwaiter.The controls are outside,but here inside you can see the ropes that actually move the platform.":GOTO 4340
4120 PRINT"North Hall.North,stairs lead down.The hallways continues south,and doors lead east and west.":GOTO 4340
4125 PRINT"The ambassador's wife's bedroom.It is surprisingly austere.":GOTO 4340
4130 PRINT"The ambassador's office.Wires lead from a typewriter-like machine north out a set of French doors here to a roof deck.":GOTO 4340
4135 PRINT"After the opulence of the downstairs,this hallway is almost austere.There are exits in all directions.":GOTO 4340
4140 PRINT"This east/west hallway is distinguished by a framed? of Morolian shepherds.":GOTO 4340
4145 PRINT"This west end of the hall features a framed? of Oscar D'Agistino,a scientist of Morolian-Italian descent who worked with Fermi.":GOTO 4340
4150 PRINT"The only bathroom upstairs.A small linen closet is south.":GOTO 4340
4155 PRINT"The south hall features a? of the pride of Morolian industrial accomplishment: a coal-fired power plant.":GOTO 4340
4160 PRINT"This guest room is coated in dust.":GOTO 4340
4165 PRINT"The Ambassador's bedroom.It's decorated in gaudy gold lame and red velvet.":GOTO 4340
4170 PRINT"The servants' quarters.This military style barracks features narrow cots.A closet is south.":GOTO 4340
4175 PRINT"This is a dusty closet.":GOTO 4340
4180 PRINT"Linen closet.":GOTO 4340
4185 PRINT"A faint odor of urine hangs in the air of this unused bedroom.":GOTO 4340
4190 PRINT"The sitting room is decorated with cross-stitched renditions of Morolia's national foods,including blood dumplings and steaming mare's milk.":GOTO 4340
4195 PRINT"This is a small roof deck.To the west is the radio tower.":GOTO 4340
4200 PRINT"You are at the base of a tall radio tower (you can probably see to Moscow from the top,you think grimly).":GOTO 4340
4205 PRINT"The other main entertainment room,the living room is decorate with gold velvet couches and rugs of Morolian yak fur,died royal purple.":GOTO 4340
4210 PRINT"This magnificent walk in closet is packed with gilded uniforms of the Morolian Foreign Service.":GOTO 4340
4215 PRINT"Tiny closet.":GOTO 4340
4220 PRINT"As bleak as its description,this closet is.":GOTO 4340
4225 PRINT"This old cellar room is filled with cobwebs.":GOTO 4340
4230 PRINT"The western end of the cellar hallway.":GOTO 4340
4235 PRINT"Apparently this is an interrogation room (or else the Ambassador's pretty kinky).Various implements of torture that you thought went out with the Plague litter the room,including a rack.":GOTO 4340
4240 PRINT"This room is dominated by a massive black furnace: a gaping hole in the side reveals white hot flames.":GOTO 4340
4245 PRINT"The hallway goes east and west here,and a passage heads north.":GOTO 4340
4250 PRINT"You're in a dirt-floored north/south hallway.":GOTO 4340
4255 PRINT"This was probably the kitchen storeroom at one time,judging from the old orange crates and what not littering the floor.A door in the west"
4257 PRINT"wall probably used to lead up,but it is firmly boarded shut.":GOTO 4340
4260 PRINT"A high-tech warren of East German VAX clones,the hum of air conditioning and massive reel to reel tape drives makes it hard to even think in here."
4262 PRINT"Clearly,this is where the bulk of the espionage happens in Vladistan.":GOTO 4340
4265 PRINT"The hall continues east and west from here.An imposing door lies north.":GOTO 4340
4270 PRINT"This dirt floored room is entirely empty.":GOTO 4340
4275 PRINT"This room is filled with garbage of every imaginable kind.":GOTO 4340
4280 PRINT"Given its contents,you could probably (if you were feeling charitable) call this room 'garden storage,' but you'd probably be just as accurate"
4282 PRINT"calling it 'more garbage' or 'dingy cellar room.'":GOTO 4340
4285 PRINT"You are crammed into the dumbwaiter,which is wedged into the bottom of its shaft.One lone cut rope swings piteously.":GOTO 4340
4290 PRINT"You are on some sloping stairs that lead to the lawn.Doors close above your head.":GOTO 4340
4340 ER=R:RETURN
5000 IF vu=0 THEN 1000
5001 PRINT:PRINT"***Your one-way wrist radio crackles to life.It's K,with a message:Cartright,the bomb scare won't hold the police back very "
5003 PRINT"long.You need to make a boom in there,even if its a small one,to keep them outside.***":w2=cc+10:GOTO 1000
5010 PRINT:PRINT"***Your one-way wrist radio crackles to life.It's K,with a message: Cartright,we've received word that a French agent may be on the"
5012 PRINT"premises.We don't know why he's there.Avoid him or talk to him":PRINT"at your discretion,but remember,";
5013 PRINT"when it comes to nuclear secrets,":PRINT"we have no allies.***":GOTO 1000
5020 PRINT:PRINT"***Your one-way wrist radio crackles to life.It's K,with a message:"
5021 PRINT"'We may have an opportunity to kill two birds with one stone here."
5022 PRINT"Now that you're in,see if you can destroy the radio tower on the "
5023 PRINT"roof.Good luck.'*** ":w3=cc+40
5024 PRINT:PRINT"A moment later the radio crackles again.'Cartright,K.Bit of a wrinkle for you.It appears the tower there is a reverse packet."
5026 PRINT"radio transmitter.The XJ-39 data may be waiting for the Russians to"
5027 PRINT"call in.You must,I repeat MUST,bring that radio tower down! K out.'":GOTO 1000
5030 IF vu=0 THEN 1000
5031 PRINT:PRINT"***Your one-way wrist radio crackles to life.'Cartright!,' barks K,'the cops haven't detected a blast and they're about to come in!"
5033 PRINT"GET OUT! But if you can't,make sure you are not taken alive."
5034 w4=cc+3 GOTO 1000
5040 IF vu=0 THEN 1000
5041 PRINT:PRINT"***Your wrist radio crackles to life,but you don't need to listen to know what K is about to say -- you can hear the cops coming"
5043 PRINT"into the building.It's only a matter of time before they get you."
5044 ci=0:w5=cc+3:GOTO 1000
5050 PRINT:PRINT"Uh-oh.You are face to face with two of Vladistan's finest,joined by a very angry looking Morolian Marine."
5052 PRINT"Images of a rat-infested prison cell and all the torture you can stand rush to your head."
5054 PRINT"Of course the agency will deny all knowledge of your actions.As far as they're concerned,what you're about to get is probably just"
5056 PRINT"punishment for not killing yourself as soon as you realized the cops were inside.As they drag you away,you wonder how long you can hold"
5058 PRINT"before they break you...":GOTO 8000
5200 FOR X=1 TO 23
5220 IF OB(X,2)=R AND OB(X,1)=1 THEN PRINT l$(x,1)
5230 IF OB(X,2)=R AND OB(x,1)=0 THEN PRINT"You see a ";l$(x,2)
5240 NEXT X
5250 RETURN
5300 IF M1$="I"THEN 5420
5320 IF M1$="L"THEN ER=0:GOTO 1000
5325 IF M1$="N"THEN 5345
5330 IF M1$="S"THEN 5355
5335 IF M1$="E"THEN 5365
5340 IF M1$="W"THEN 5375
5341 PRINT"I'M SORRY,BUT YOUR INPUT WASN'T UNDERSTOOD.":GOTO 1000
5345 IF RM(R,1)<1 THEN B=1:GOTO 5385
5353 ER=R:R=RM(ER,1):GOTO 1000
5355 IF RM(R,2)<1 THEN B=2:GOTO 5385
5363 ER=R:R=RM(ER,2):GOTO 1000
5365 IF RM(R,3)<1 THEN B=3:GOTO 5385
5373 ER=R:R=RM(ER,3):GOTO 1000
5375 IF RM(R,4)<1 THEN B=4:GOTO 5385
5383 ER=R:R=RM(ER,4):GOTO 1000
5385 FOR X=1 TO 4
5386 IF B<>X THEN 5396
5387 IF RM(R,X)=-1 THEN PRINT"There're too many people around to sneak in that way.":GOTO 1000
5388 IF RM(R,X)=-2 THEN PRINT"You could go out that way,but you'd probably be (unfortunately but correctly)":PRINT"shot as a spy.":GOTO 1000
5389 IF RM(R,X)=-3 THEN PRINT"The door between the cellar and kitchen is locked tight.":GOTO 1000
5390 IF RM(R,X)=-4 THEN PRINT"Impossible.You'd be too conspicuous,and the doors are locked on the inside.":GOTO 1000
5391 IF RM(R,X)=-5 THEN PRINT"You scramble up the dusty shoot,but it is cemented over at the top.":GOTO 1000
5392 IF RM(R,X)=-6 THEN PRINT"The door to the cloak room is locked.":GOTO 1000
5393 IF RM(R,X)=-7 THEN PRINT"That's the way you got in,but there's too many people there now to go out.":GOTO 1000
5394 IF RM(R,X)=-8 THEN PRINT"The door to the north is sealed shut with a massive vaulted blast door.":PRINT"It looks strong enough to defeat even your safe cracking skills.":GOTO 1000
5395 IF RM(R,X)=-9 THEN PRINT"The cellar doors are sealed with a strong iron padlock.":GOTO 1000
5396 NEXT X
5399 FOR X=1 TO 4:IF RM(R,X)=0 THEN J=RND(5)
5400 IF J=0 OR J=4 THEN PRINT"You can't go that way.":GOTO 1000
5402 IF J=1 THEN PRINT"That's not an exit":GOTO 1000
5404 IF J=2 THEN PRINT"Despite your best efforts,you fail to find an exit that way.":GOTO 1000
5406 IF J=3 THEN PRINT"Nope,pick another direction.":GOTO 1000
5410 NEXT X
5420 :
5425 PRINT"You are holding the following:":b=0
5430 FOR X=1 TO 23
5440 IF OB(X,2)=0 THEN PRINT"A ";L$(X,2):B=B+1
5450 NEXT X
5460 IF B=0 THEN PRINT"NOTHING."
5470 GOTO 1000
7000 PRINT:PRINT"'Why is that waiter mingling with the guests?' you hear a suspicious voice say behind you.":mf=mf+1:ry=1:GOTO 1000
7020 PRINT:PRINT"You notice a man following you.":mf=mf+1:GOTO 1000
7030 PRINT:PRINT"Just as you step inside the hose,the man who's been following you signals to some police,who quickly surround you and haul you off for"
7050 PRINT"questioning...":GOTO 8000
7060 PRINT:PRINT"After stashing the waiter's jacket and revealing your tux,you slip away from your tail and melt into the crowd.":mf=0:GOTO 1000
8000 PRINT:PRINT"Game over.":END
8010 PRINT:PRINT
8020 PRINT:PRINT"You burst through the celler doors,directly into a crowd of guests.":PRINT"Among them is Marchant.'Ahh,Cartright,' he says,as he turns to his left,"
8040 PRINT"indicating rapidly approaching men in uniform.'I zink your mission ees at an":PRINT"end,one way or another.'"
8060 IF ob(21,2)=0 THEN eg1=1
8070 IF ob(21,2)<>0 AND pd=1 THEN eg1=2
8080 IF pd=0 THEN eg1=3
8090 IF td=1 THEN eg2=1
8100 IF td=0 THEN eg2=0
8110 IF ob(20,2)=0 THEN eg3=1
8120 IF ob(20,2)<>0 AND cb=1 THEN eg3=2
8130 IF cb=0 THEN eg3=3
8135 IF eg1=1 THEN PRINT:PRINT"He reaches inside your tux.'I will take thees,' he says as he grabs the plans.":PRINT"He looks briefly at the plans.'Thees is not the codebook I was sent to steal,'"
8147 IF eg1=1 THEN PRINT"he says.He looks up at you.'But I think it may be even more valuable,no?'"
8149 IF eg1=2 THEN PRINT:PRINT"He looks at you.'I see from your eyes that you did not find what you came for.'"
8155 IF eg1=3 THEN PRINT:PRINT"He pauses.'You have the look of a man who has completed his mission.It is a look only one in our line of work could see.'"
8175 IF eg3=1 THEN PRINT:PRINT"He eyes you briefly,then reaches over and snatches the small Morolian codebook":PRINT"out of your pants pocket.'The codebook! Wonderful! Cartright,' he beams,'you"
8200 IF eg3=1 THEN PRINT"have done my mission for me! Merci,' he says as he tucks it away in his coat."
8205 IF eg3=2 THEN PRINT:PRINT"Marchant looks at you and frowns.'You didn't get it did you? Damnit,"
8220 IF eg3=2 THEN PRINT"Cartright.After zis show you put on tonight,how will I get inzide to get zat "
8230 IF eg3=2 THEN PRINT"codebook now,eh? You,my friend,have made my life tres difficile ce soir.'"
8240 IF eg3=2 THEN PRINT"He sighs.'Ah well,you must do your job just as I must do mine,no?'"
8242 IF eg3=3 THEN PRINT:PRINT"He grabs you.'The codebook,you deedn't destroy it,did you.' You nod."
8250 IF eg3=3 THEN PRINT"Marchant winces.'My my mission...blown.' He sighs and pulls himself together."
8260 IF eg3=3 THEN PRINT"'Ahh well.Zat is the way,sometimes,the game ends up,eh?'"
8270 INPUT x$
8280 PRINT:PRINT"Before you can do anything,the police are upon you.As they reach for you,Marchant steps forward.'Do not touch him,' he says in perfect Vladistani."
8300 PRINT"'This man is with me.He has the full protection of France,and should be treated as a diplomat,with full immunity.Come with me,mon ami,' he says to"
8320 PRINT"you,and takes you by the arm.As you walk away from the mansion,he leans in.'You owe me one,' he says."
8340 IF td=1 THEN PRINT"'Merci,' you say 'I just wish I had destroyed the tower...'"
8350 PRINT:PRINT:PRINT"FINIS."
9999 END
10000 DATA 7,0,0,2,-1,0,1,3,8,0,2,0,0,-1,6,5,0,8,4,0,0,7,0,4,6,1,-4,0,5,3,11,0,-2,34,-2,-2,17,-2,34,11
10010 DATA 12,10,13,-7,-2,11,-2,-2,14,-6,34,11,16,13,-3,0,13,0,0,0,0,14,0,0,10,20,19,18,0,0,17,0,32,0,0,17,17,24,21,22
10020 DATA 0,26,27,20,31,30,20,0,0,29,24,0,20,0,25,23,0,36,0,24,21,35,0,0,0,28,0,21,27,0,0,0,23,0,0,0,22,37,0,0
10030 DATA 0,22,0,0,0,19,0,33,0,0,32,0,9,10,-2,13,26,0,0,0,25,0,0,0,30,0,0,0,0,39,0,0,38,40,42,0,39,0,0,0
10040 DATA 42,-5,0,0,43,41,46,39,50,42,0,44,0,0,43,-3,0,46,0,0,-8,47,48,42,46,0,0,0,49,0,51,46,0,48,0,0,0,43,0,0,0,0,-9,48
10050 DATA 0,0,1,12,1,12,1,12,1,12,1,14,1,14,1,14,1,9,0,100,1,9,1,15,0,100,1,28,1,29,1,29,1,29,1,38,1,38,1,45,1,45,1,49,1,49
10060 DATA "WAITER'S JACKET","JACKET","On the wall is an antique hunting rifle.","RIFLE","On the pool table sits an ivory ball.","BALL"
10070 DATA "A pool cue sits on the floor where it was hastily dropped.","POOL CUE","In a special case rests a Morolian hunting knife.","KNIFE"
10080 DATA "A box of soda is on the floor.","SODA","A bottle of vinegar is on the counter.","VINEGAR","A small mason jar is on the stove.","JAR"
10085 DATA "A well made coat is draped across a chair here.","COAT"
10090 DATA "MESSAGE","MESSAGE","A book of matches sits in an ashtray.","MATCHES","An case with the initials DM on it catches your attention.","CASE"
10100 DATA "BLASTING CAP","BLASTING CAP","In the dust of the servants's closet you notice a key.","KEY","A box of Sudski sits on the floor.","SUDSKI","A box of Slava soap sits on the floor.","SLAVA"
10110 DATA "An unused bottle of StalinClean (Russia's #1 soap) rests here.","STALINCLEAN","A crowbar rusts in the corner.","CROWBAR","Bolt cutters hang from a hook in the ceiling."
10120 DATA "BOLTCUTTER","A Morolian Codebook sits unguarded by the console.","CODEBOOK","There! Atop a manila folder lie the plans for the XJ-39!"
10130 DATA "PLANS","A well used gardening shovel sits in the corner.","SHOVEL","A broken rake lies on the floor.","RAKE"
10140 DATA "GO","NOR","SOU","EAS","WES","TAL","REA","LOO","EXA","SEA","INV","HEA","DIA","CUT","SHO","KIL"
10150 DATA "DIG","PUT","DRO","REM","GET","TAK","CLO","UNL","BRE","PRY","SMA","BEN","OPE","LIG","BUR","USE","XYZ","FUC","SHI","PIS"
10160 DATA 1,1,1,1,1,2,3,3,3,3,4,5,5,6,7,7,8,9,9,9,10,10,11,12,13,13,13,13,14,15,15,16,17,18,18,18