10 REM "The Last City" Copyright (c) 1984 by Roger M. Wilcox / CPC Version Feb 2017 by SRS
20 mode 2:LOCATE 1,14:PRINT"The future has come and gone. Human technology had reached goals that surmountedeven the most impractical dreams of the past. We had strived and succeeded, and"
30 PRINT"at last had begun to tap into the awesome power of...magic!":PRINT:PRINT"It was this which caused our civilization to crumble.":PRINT
40 PRINT"Your magical senses have drawn you to the vicinity of humanity's last city":PRINT"because of a warning. If not rescued very soon, the last of human technology":PRINT"will be erased from the planet.":for i=1 to 10000:next
50 DEFINT A-Z:DIM D$(6),PLACE$(27),PLACE(27,6),OB$(35),OB(35),VERB$(45),NOUN$(66):Q$=CHR$(34):OFFSET=1:FOR X=1 TO 6:READ D$(X):NEXT
60 FOR X=1 TO 27:READ PLACE$(X):FOR Y=1 TO 6:READ PLACE(X,Y):NEXT Y,X:FOR X=1 TO 35:READ OB$(X),OB(X):NEXT:FOR X=1 TO 45:READ VERB$(X):NEXT:FOR X=1 TO 66:READ NOUN$(X):NEXT:TR=300:CP=1:cls
70 LOCATE 35,25:print"Any key":call &bb18:cls:LOCATE 1,1:IF (CP=8 OR CP=9 OR CP=10 OR CP=22 OR CP=23) AND OB(35)<28 AND OB(35)<>CP THEN PRINT"It's too dark to see!":GOTO 150 ELSE IF CP=13 OR CP>14 AND CP<20 OR CP=21 THEN OB(13)=CP
80 IF LEFT$(PLACE$(CP),1)="*" THEN PRINT MID$(PLACE$(CP),2); ELSE PRINT"You are in "+PLACE$(CP);
90 PRINT".";:Y=1:FOR X=1 TO 35:IF OB(X)<>CP THEN 120 ELSE IF Y THEN PRINT" Visible items:":PRINT:Y=0
100 IF POS(#0)+LEN(OB$(X))>78 THEN PRINT
110 PRINT OB$(X)". ";
120 NEXT:Y=1:FOR X=1 TO 6:IF PLACE(CP,X)=0 THEN 140 ELSE IF Y THEN PRINT:PRINT:PRINT"Obvious exits:";:Y=0
130 PRINT" "D$(X);
140 NEXT:PRINT
150 PRINT STRING$(80,223)
160 IF CP=3 AND OB(28)<28 THEN LOCATE 1,14:PRINT"You couldn't defend against the strong magic alone! You're dead!":GOTO 1120
170 A$="":B$="":A=0:B=0:X=2:LOCATE 1,13:PRINT"  ------";:INPUT" What now";A$:a$=upper$(a$):IF A$="" THEN 170
180 IF MID$(A$,X,1)="" THEN 200 ELSE IF MID$(A$,X,1)<>" " THEN X=X+1:GOTO 180 ELSE B$=MID$(A$,X+1):A$=LEFT$(A$,X-1)
190 IF LEFT$(B$,1)=" " THEN B$=MID$(B$,2):GOTO 190
200 IF LEFT$(A$,1)>"Z" OR LEFT$(B$,1)>"Z" OR MID$(A$,2,1)>"Z" OR MID$(B$,2,1)>"Z" THEN PRINT"Use only capital letters, please.":goto 70 ELSE A1$=LEFT$(A$,4):B1$=LEFT$(B$,4):FOR X=1 TO 45:IF A1$=VERB$(X) THEN A=X
210 NEXT:IF A=0 THEN PRINT"I don't know how to "Q$A$Q$" something.":for i=1 to 1000:next:goto 70 ELSE IF B$="" THEN 230 ELSE FOR X=1 TO 66:IF B1$=NOUN$(X) THEN B=X
220 NEXT:IF B=0 THEN PRINT"I don't know what "Q$B$Q$" is.":for i=1 to 1000:next:goto 70
230 TR=TR-1:IF TR<40 THEN PRINT"Magical premonition: city will cease to exist in"TR+1"turns.":IF TR=0 THEN 1100
240 ON A GOTO 250,250,250,250,250,250,260,260,260,690,690,690,860,860,860,290,1120,300,310,320,320,350,350,350,350,440,440,440,500,500,510,510,530,530,560,580,590,600,610,630,650,660,660,680,680
250 D=A:GOTO 940
260 IF B=0 THEN PRINT"You need a direction too.":goto 70 ELSE IF B<7 THEN D=B:GOTO 940 ELSE IF B=9 THEN 580 ELSE IF B=8 THEN IF OB(2)<>CP THEN 980 ELSE PRINT"You feel much better now.":goto 70
270 IF B=28 OR B=29 THEN IF OB(14)<>CP THEN 980 ELSE CP=27:GOTO 70 ELSE IF B<>61 THEN 960 ELSE IF CP=24 THEN PRINT"You're on it.":goto 70 ELSE IF CP<>18 THEN 980 ELSE IF OB(34)<28 THEN PRINT"Sorry, it's too steep and smooth.":goto 70
280 PRINT"Ok":CP=24:GOTO 70
290 IF OB(20)=CP OR OB(20)=28 THEN PRINT"Look up fulcrum in the dictionary.":PRINT"(Try: MAKE object)":goto 70 ELSE PRINT"I can't help you. This is supposed to be a hard adventure!":goto 70
300 IF B=0 THEN 1010 ELSE IF B<>63 THEN 1020 ELSE INPUT"Ready diskette in drive A...hit <RETURN>";A$:OPENout"LASTCITY.DAT":FOR X=1 TO 35:PRINT #9,OB(X):NEXT:PRINT #9,CP,P5,TP,PLACE(4,3),PLACE(6,3),PLACE(9,6),PLACE(15,6),PLACE(24,5):CLOSEout:goto 70
310 IF B=0 THEN 1010 ELSE IF B<>63 THEN 1020 ELSE INPUT"Ready diskette in drive A...hit <RETURN>";A$:OPENin"LASTCITY.DAT":FOR X=1 TO 35:INPUT #9,OB(X):NEXT:INPUT #9,CP,P5,TP,PLACE(4,3),PLACE(6,3),PLACE(9,6),PLACE(15,6),PLACE(24,5):CLOSEin:GOTO 70
320 PRINT"You are currently holding the following:":A$="Nothing at all":FOR X=19 TO 35:IF OB(X)<28 THEN 340 ELSE A$="":IF POS(#0)+LEN(OB$(X))>78 THEN PRINT
330 PRINT OB$(X)". ";
340 NEXT:PRINT A$:goto 70
350 IF B=0 THEN 70 ELSE IF B=64 THEN IF CP<>26 THEN 980 ELSE IF OB(28)>0 THEN 1000 ELSE OB(28)=CP:GOTO 1030 ELSE IF B=12 THEN IF OB(5)<>CP THEN 980 ELSE PRINT Q$"GO NO FURTHER"Q$:goto 70
360 IF B=13 OR B=14 THEN IF OB(6)<>CP THEN 980 ELSE PRINT"It has a large unlabelled red button, a black button labelled "Q$"SPEED LAUNCH,"Q$:PRINT"and a readout:":PRINT TAB(18)"--COUNTDOWN AT T MINUS"TR"TURNS AND COUNTING--":GOTO 160
370 IF B=8 THEN IF OB(2)<>CP THEN 980 ELSE IF PLACE(CP,6)>0 THEN 1000 ELSE PRINT"No Tidy Bowl man, but there seems to be a passage behind it!":PLACE(CP,6)=10:GOTO 70
380 IF B=30 THEN IF OB(15)<>CP THEN 980 ELSE PRINT"Underneath it's only dirt.":goto 70
390 IF B=34 THEN IF OB(19)<>CP AND OB(19)<28 THEN 980 ELSE PRINT"It has buttons numbered one through five.":goto 70 ELSE IF B=15 OR B=16 THEN IF OB(7)<>CP THEN 980 ELSE PRINT"It has a picture of a half-donut on it.":goto 70
400 IF B=45 THEN IF OB(24)<>CP AND OB(24)<28 THEN 1000 ELSE PRINT"It needs to be recharged.":goto 70
410 IF (B=17 OR B=18) AND CP=1 THEN PRINT"The chunks are too big to lift.":goto 70 ELSE IF B=44 THEN IF OB(23)<>CP AND OB(23)<28 THEN 980 ELSE PRINT Q$"As our world crumbles down, the future I see:"
420 IF B=44 THEN PRINT"To go in is five-four, to go out is five-three!"Q$:goto 70 ELSE IF B<21 OR B>22 THEN 1000 ELSE IF OB(11)<>CP THEN 980 ELSE PRINT"Most of them appear useless or destroyed.":IF OB(24)>0 OR OB(25)>0 THEN 170
430 PRINT"However, your magical senses tell you that one of the wands could be made":PRINT"operational.":goto 70
440 IF B=0 THEN 1010 ELSE IF A=28 AND (B=55 OR B=56) THEN 530 ELSE IF B=35 THEN IF OB(6)=CP THEN PRINT"Say again & use color.":goto 70 ELSE IF OB(19)<>CP AND OB(19)<28 THEN 980 ELSE PRINT"Say again & use number.":goto 70
450 IF B=40 THEN IF OB(19)<28 THEN 990 ELSE PRINT"Ok":P5=1:goto 70
460 IF B=43 THEN IF OB(22)<>CP THEN 970 ELSE PRINT"Ok":IF CP>1 THEN 170 ELSE IF OB(15)=CP THEN OB(15)=0:GOTO 70 ELSE OB(15)=CP:GOTO 70 ELSE IF B>64 THEN 870 ELSE IF B<36 OR B>39 THEN 1020 ELSE IF OB(19)<28 THEN 990 ELSE PRINT"Ok":IF P5=0 THEN 170
470 P5=0:IF B=38 THEN IF CP=13 THEN CP=12 ELSE IF CP=16 THEN CP=26 ELSE IF CP=15 OR CP=17 THEN 490 ELSE 170 ELSE IF B=39 THEN IF CP=12 THEN CP=13 ELSE IF CP=26 THEN CP=16 ELSE 170 ELSE 170
480 GOTO 70
490 IF CP=17 THEN PRINT"You materialize over a cliff and fall to your doom!":GOTO 1120 ELSE PRINT"You materialize inside solid rock and die of system shock.":GOTO 1120
500 IF B=0 THEN 1010 ELSE IF B<>43 THEN 1020 ELSE IF OB(21)<>CP AND OB(21)<28 OR OB(20)<>CP AND OB(20)<28 THEN 970 ELSE PRINT"Ok":OB(20)=0:OB(21)=0:OB(22)=CP:GOTO 70
510 IF B=0 THEN 1010 ELSE IF B=33 THEN IF OB(18)<>CP THEN 980 ELSE PRINT"It is sealed.":goto 70 ELSE IF B=23 OR B=24 THEN IF OB(12)<>CP THEN 980 ELSE IF OB(30)<28 THEN PRINT"It's locked.":goto 70
520 IF B=23 OR B=24 THEN PRINT"Ok":OB(12)=0:PLACE(CP,6)=22:GOTO 70 ELSE 960
530 IF B=0 THEN 1010 ELSE IF B=45 THEN 630 ELSE IF B=55 OR B=56 THEN IF OB(33)=28 THEN PRINT"It's discharged.":goto 70 ELSE IF OB(32)<28 THEN 990 ELSE OB(32)=0:OB(33)=28:PRINT"A flickering beam of ruby light cuts through the air and"
540 IF B=55 OR B=56 THEN IF OB(1)<>CP THEN PRINT"heats it a bit.":goto 70 ELSE PRINT"burns a hole through the door.":OB(1)=0:PLACE(CP,3)=7:GOTO 70 ELSE IF B=21 THEN 650 ELSE IF B=43 THEN 440 ELSE IF B=8 AND A=34 THEN 260
550 IF B=53 OR B=54 THEN 680 ELSE PRINT"Huh?":GOTO 1020
560 IF OB(27)=28 THEN IF OB(15)=CP THEN IF OB(23)=0 THEN OB(23)=CP:GOTO 1030 ELSE 1040 ELSE IF OB(26)<28 THEN PRINT"How? No loose dirt here!":goto 70
570 IF OB(26)<28 THEN PRINT"But you don't have anything to dig with!":goto 70 ELSE IF CP<>2 THEN PRINT"How? No sand here!":goto 70 ELSE IF OB(27)=0 THEN OB(27)=CP:GOTO 1030 ELSE IF OB(30)=0 THEN OB(30)=CP:GOTO 1030 ELSE 1040
580 IF OB(3)<>CP THEN PRINT"Are you kidding? You'd never fall asleep on this hard ground!":goto 70 ELSE PRINT"So you want to take a nap.":PRINT"The last city is about to be destroyed, and you want to take a nap!":PRINT"Forget it!":goto 70
590 PRINT"Sorry. Why don't you try "Q$"The Vial of Doom"Q$" for that?":goto 70
600 IF B=0 THEN 1010 ELSE IF B=43 THEN 440 ELSE PRINT"Try: GET or DROP":goto 70
610 IF B<5 OR B>51 OR OB(7)<>CP THEN 860 ELSE IF OB(29)<28 THEN 990 ELSE PRINT"Ok":PRINT"The object hits the half-donut on the drawbridge, the two symbols combine into afull circle and vanish."
620 PRINT"Slowly, and creaking with age, the huge oaken door drops open.":OB(7)=0:OB(29)=0:PLACE(CP,3)=5:GOTO 70
630 IF B=0 THEN 1010 ELSE IF B<>45 OR OB(24)=28 THEN PRINT"Nothing happens.":goto 70 ELSE IF OB(25)<28 THEN 990 ELSE PRINT"Ok":PRINT"A cloud forms over your head, and a small lightning bolt arcs out.":OB(25)=0:OB(24)=28:IF OB(31)<>CP THEN 170
640 PRINT"Boom!":OB(31)=0:IF OB(18)<>CP THEN 70 ELSE OB(18)=0:PLACE(CP,5)=25:GOTO 70
650 IF B>0 AND B<>21 THEN 1020 ELSE PRINT"Sorry. Your weak magic is chiefly sensory, and hardly formidable.":goto 70
660 IF B=0 THEN 1010 ELSE IF B<>45 THEN 960 ELSE IF OB(25)=28 THEN PRINT"You've already done that.":goto 70 ELSE IF OB(24)<28 THEN 990 ELSE IF CP<>3 THEN PRINT"No luck here.":PRINT"You'll need a stronger source of raw magical energy.":goto 70
670 PRINT"There's plenty of power here for that!":PRINT"Ok":OB(24)=0:OB(25)=28:goto 70
680 IF B=0 THEN 1010 ELSE IF B=59 THEN PRINT"It already is.":goto 70 ELSE IF B=53 OR B=54 THEN PRINT"How? You're going to need some power for that!":goto 70 ELSE PRINT"That won't "B$:GOTO 160
690 IF B=0 THEN 1010 ELSE IF B<6 THEN PRINT"I don't get it.":goto 70 ELSE IF B=6 THEN PRINT"...and boogie!":goto 70 ELSE IF B=62 THEN 320 ELSE IF B<>34 AND B<41 OR B>59 THEN 960 ELSE NA=CP:NB=28:Y=0:FOR X=19 TO 35:IF OB(X)=28 THEN Y=Y+1
700 NEXT:IF Y>6 THEN PRINT"You are currently holding too much. Try: TAKE INVENTORY":goto 70 ELSE 720
710 IF NA=CP THEN 980 ELSE 990
720 IF B>34 THEN ON B-40 GOTO 740,740,740,740,750,760,770,780,790,800,800,810,820,820,830,830,840,840,850
730 IF OB(19)<>NA THEN 710 ELSE PRINT"Ok":OB(19)=NB:GOTO 70
740 IF OB(B-21)<>NA THEN 710 ELSE PRINT"Ok":OB(B-21)=NB:GOTO 70
750 IF NA=CP AND OB(11)=NA AND OB(24)=0 AND OB(25)=0 THEN PRINT"Ok":OB(24)=NB:GOTO 70 ELSE IF OB(25)=NA THEN PRINT"Ok":OB(25)=NB:GOTO 70 ELSE IF OB(24)<>NA THEN 710 ELSE PRINT"Ok":OB(24)=NB:GOTO 70
760 IF OB(27)=NA THEN 780
770 IF OB(26)<>NA THEN 710 ELSE PRINT"Ok":OB(26)=NB:GOTO 70
780 IF OB(27)<>NA THEN 710 ELSE PRINT"Ok":OB(27)=NB:GOTO 70
790 IF OB(28)<>NA THEN 710 ELSE PRINT"Ok":OB(28)=NB:GOTO 70
800 IF OB(29)<>NA THEN 710 ELSE PRINT"Ok":OB(29)=NB:GOTO 70
810 IF OB(30)<>NA THEN 710 ELSE PRINT"Ok":OB(30)=NB:GOTO 70
820 IF OB(31)<>NA THEN 710 ELSE PRINT"Ok":OB(31)=NB:GOTO 70
830 IF OB(33)=NA THEN PRINT"Ok":OB(33)=NB:GOTO 70 ELSE IF OB(32)<>NA THEN 710 ELSE PRINT"Ok":OB(32)=NB:GOTO 70
840 IF OB(34)<>NA THEN 710 ELSE PRINT"Ok":OB(34)=NB:GOTO 70
850 IF OB(35)<>NA THEN 710 ELSE PRINT"Ok":OB(35)=NB:GOTO 70
860 IF B=0 THEN 1010 ELSE IF B<7 THEN PRINT"Oh, just drop it.":goto 70 ELSE IF B<>34 AND B<41 OR B>59 THEN 990 ELSE NA=28:NB=CP:GOTO 720
870 IF OB(6)<>CP THEN 980 ELSE IF B=65 THEN 1050 ELSE PRINT"The countdown suddenly advances to zero!":GOTO 1100
880 PRINT"You've got just one turn before the last city is destroyed!"
890 A$="":LOCATE 1,13:PRINT"  ------"CHR$(26);:INPUT" What now";A$:IF A$="" THEN 890
900 IF LEFT$(A$,4)<>"PRES" AND LEFT$(A$,4)<>"PUSH" THEN 1110 ELSE A$=MID$(A$,5)
910 IF LEFT$(A$,1)<>" " THEN A$=MID$(A$,2):GOTO 910
920 IF LEFT$(A$,1)=" " THEN A$=MID$(A$,2):GOTO 920
930 IF LEFT$(A$,4)="BUTT" THEN PRINT"Say again & use a color.":GOTO 890 ELSE IF LEFT$(A$,4)<>"RED" THEN 1110 ELSE 1060
940 IF PLACE(CP,D)<>0 THEN CP=PLACE(CP,D):GOTO 70 ELSE IF (CP=8 OR CP=9 OR CP=10 OR CP=22 OR CP=23) AND OB(35)<28 AND OB(35)<>CP THEN PRINT"You ran into a wall and broke every bone in your body!":PRINT"You're dead!":GOTO 1120
950 PRINT"There is no way to go that direction.":goto 70
960 PRINT"It's beyond your power to do that.":goto 70
970 PRINT"You can't do that...yet!":goto 70
980 PRINT"You don't see it here.":goto 70
990 PRINT"You aren't holding it.":goto 70
1000 PRINT"You see nothing special.":goto 70
1010 PRINT A$" what?":goto 70
1020 PRINT"Oh, stop being weird.":goto 70
1030 PRINT"You found something.":GOTO 70
1040 PRINT"You didn't find anything.":goto 70
1050 PRINT"The nuclear missile in a nearby hidden silo self-destructs!":PRINT"Unfortunately, the explosion was underground and caused an 11.9 earthquake whichtook you and the city with it! You're dead!":GOTO 1120
1060 CLS:FOR X=1 TO 7:LOCATE 3,40:PRINT CHR$(219):PRINT CHR$(223):PRINT CHR$(219):PRINT CHR$(223):FOR Y=1 TO 50:NEXT
1070 LOCATE 3,40:PRINT" ":LOCATE 1,32:PRINT STRING$(7,220)"   "STRING$(7,220):LOCATE 1,40:PRINT" ":LOCATE 1,40:PRINT" ":FOR Y=1 TO 50:NEXT:LOCATE 4,32:PRINT SPC(17):NEXT
1080 LOCATE 1,5:PRINT TAB(10)"In a flash of yellow, the missile destroys itself in midair!":PRINT TAB(28)"The last city is saved!":PRINT:PRINT"A cheering crowd from the city gallantly marches through the 5-centimeter steel"
1090 PRINT TAB(9)"walls of the control room and carries you off into the sunset.":PRINT:PRINT TAB(9)"Now humanity can live and prosper once again...thanks to you!":LOCATE 19:GOTO 1120
1100 PRINT"In the vicinity of the castle, the ground opens up releasing a nuclear missile  from a hidden silo!":IF OB(6)=CP THEN 880 ELSE PRINT"You watch helplessly as it arcs toward the city";:FOR X=1 TO 10:PRINT".";:FOR Y=1 TO 1000:NEXT Y,X
1110 CLS:FOR X=1 TO 1000:NEXT:CLS:LOCATE 1,11:PRINT"The last city of humankind has been destroyed! The human race is forever lost tothe cosmos."
1120 PRINT:INPUT"The adventure has ended. Care to try again";A$:a$=upper$(a$):A$=LEFT$(A$,1):IF A$="Y" THEN RUN ELSE IF A$="N" THEN call 0 ELSE 1120
59990 REM
60000 DATA North,South,East,West,Up,Down
60010 DATA the remains of an east/west freeway,2,3,14,1,,
60020 DATA a seemingly endless desert,2,1,2,2,,
60030 DATA a magically-contaminated wasteland. The sky above is a murky gray-   black (strange for midday),1,4,3,3,,
60040 DATA *You are at the foot of an ancient-looking castle. A moat surrounding the strong-hold prevents you from reaching its walls except by drawbridge,3,,,,,
60050 DATA the foyer of the castle,,,6,4,,
60060 DATA the main room of the castle. The light here is by comparison rather  subdued,,8,,5,,
60070 DATA an unconceiled missile control room. The illusion of the castle does not extend this far...,,,,6,,
60080 DATA the bedroom of the castle,6,,,9,,
60090 DATA the bathroom of the castle,,,8,,,
60100 DATA an underground storage chamber. Its walls are obviously plastic; the illusion of the castle does not extend this far down...,,,,,9,
60110 DATA a deserted old pawn shop,,14,,,,
60120 DATA *You are at the edge of a gigantic domed city,,,,14,,
60130 DATA the dome on the city's west side,17,15,19,,,
60140 DATA the remains of an ancient boulevard,11,,12,1,,
60150 DATA the south side of the city,21,,16,13,,
60160 DATA the east side of the city,17,15,,20,,
60170 DATA the north side of the city,,18,16,13,,
60180 DATA *You're at the city's central tower. A monolith of sandstone rises all the way upto the dome,17,,20,19,,
60190 DATA the midst of some buildings,18,21,,13,,
60200 DATA an unused part of the city,18,21,16,,,
60210 DATA the city's botanical section,,15,20,19,,
60220 DATA *You are on a metal ladder,,,,,15,23
60230 DATA an advanced (but forgotten) sewer,,,,,22,
60240 DATA "*You are right under the dome, clinging to the tower",,,,,,18
60250 DATA *You're on top of the dome. The view is clear for kilometers around except to thesouthwest where your view is blocked by a dark cloud of magic (too strong for   your senses to penetrate),,,,,,24
60260 DATA a secluded rock formation,,,,,,
60270 DATA city hall,,,19,,,
60280 DATA Steel door,6,Toilet,9,Brass bed,8,Royal paraphernalia,6,Sign,5,Large control console,7,Raised drawbridge,4,Concrete rubble,1,Asphalt rubble,14,Horizontal pipes,23,Various magic items,20,Square metal ground cover,15,Light human traffic,
60290 DATA City hall,19,Levered-up concrete block,,Hydroponics,21,Various potted flowers,21,Circular ceiling hatch,24,Small advanced device,11,Fulcrum,11,Plank,11,Lever,,Parchment,,Magic wand,,Charged wand,,Sand shovel,11,Dirt shovel,
60300 DATA Magic stone,,Half-donut,23,Key,,Small plastic explosive,10,Laser cutter,25,Discharged laser cutter,,Pick & pitons,11,Continual lamp,27
60310 DATA N,S,E,W,U,D,GO,ENTE,CLIM,GET,TAKE,.,DROP,PUT,P,HELP,QUIT,SAVE,LOAD,INVE,I,LOOK,EXAM,READ,L,PUSH,PRES,WORK,FORM,MAKE,UNLO,OPEN,WITH,USE,DIG,SLEE,KILL,MOVE,THRO,WAVE,CAST,CHAR,RECH,LIGH,IGNI
60320 DATA NORT,SOUT,EAST,WEST,UP,DOWN,DOOR,TOIL,BED,ROYA,PARA,SIGN,CONT,CONS,DRAW,BRID,CONC,RUBB,ASPH,PIPE,MAGI,ITEM,SQUA,COVE,HUMA,TRAF,PEOP,CITY,HALL,BLOC,HYDR,FLOW,HATC,DEVI,BUTT,ONE,TWO,THRE,FOUR,FIVE,FULC,PLAN,LEVE,PARC,WAND,SHOV,SAND
60330 DATA DIRT,STON,HALF,DONU,KEY,PLAS,EXPL,LASE,CUTT,PICK,PITO,LAMP,LADD,TOWE,INVE,GAME,ROCK,RED,BLAC
