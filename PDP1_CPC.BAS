10 DIM R$(25),m%(25,6),V$(10),A$(15),N$(15),L(15):MODE 2:m%(1,1)=2:m%(2,2)=1:m%(2,3)=3:m%(3,4)=2:m%(1,4)=4:m%(4,3)=1:m%(5,1)=4:m%(4,2)=5:m%(6,1)=5:m%(5,2)=6:m%(6,3)=7:m%(7,4)=6:m%(7,3)=8:m%(8,1)=9:m%(8,2)=16
40 m%(8,4)=7:m%(9,2)=8:m%(9,3)=10:m%(10,1)=11:m%(10,2)=13:m%(10,4)=9:m%(11,2)=10:m%(11,3)=12:GOSUB 1810:V$(1)="go":V$(2)="get":V$(3)="take":V$(4)="drop":V$(5)="fight":V$(6)="feed":V$(7)="program":V$(8)="examine"
70 V$(9)="inventory":N$(6)="up":N$(1)="north":N$(2)="south":N$(3)="east":N$(4)="west":N$(5)="down":N$(6)="up":N$(7)="tape":N$(8)="reader":N$(9)="pdp-1":N$(10)="spacewar":N$(11)="dragon":N$(12)="janitor"
90 N$(13)="werewolf":A$(1)="North":A$(2)="South":A$(3)="East":A$(4)="West":A$(5)="Up":A$(6)="Down":A$(7)="A Blank Magnetic Tape":A$(8)="A Magnetic Tape Reader":A$(9)="This is the PDP-1 mainframe computer, built by DEC"
120 A$(10)="This is a copy of Space War!, the famous video game. It runs on the PDP-1.":A$(11)="The dragon says,'I was once peaceful, but now you've REALLY toked me off!'":A$(12)="This is a local M.I.T. janitor, underpaid and overworked."
130 L(1)=99:L(2)=99:L(3)=99:L(4)=99:L(5)=99:L(6)=99:L(7)=3:L(8)=1:L(9)=1:L(10)=14:L(11)=1:L(12)=3:R$(1)="In a long hallway, by a PDP-1 mainframe computer":R$(2)="Just past a long hallway, by a closet"
160 SC=0:R$(3)="Inside the janitor's closet, at MIT":L(13)=19
180 A$(13)="A fiery werewolf with red eyes. It growls at you as you enter the               cemetary! The fur on the back of the werewolf springs up, as if alive with      anger at your mere presence! The werewolf growls,'Stay away from here!'"
210 CLS:R=8:PRINT"Space War!...and the PDP-1":PRINT"By: Paul Panks":PRINT"Converted to CPC 2020 by SRS":PRINT"You are a ninja of peace, seeking the PDP-1 a rival student:":PRINT"programmed 'Space War!' on many months ago. The Ancient Chinese"
230 PRINT"Ice Dragon, said to be a dragon sent by the Evil One, guards the":PRINT"PDP-1 deep within the M.I.T. labs near Boston...":PRINT:PRINT"@ Press any key to begin playing! @"
250 a$=INKEY$:IF a$=""THEN 250
260 CLS:PRINT:PRINT:PRINT:PRINT"Space War!...and the PDP-1":PRINT"(Warning: Foul language used! Not suitable for anyone under 20)":PRINT"By: Paul Panks":PRINT"Version 1.03B":PRINT"Conversion to CPC August 2020 by SRS":PRINT
270 IF R<4 THEN PRINT R$(R):PRINT
280 IF R>1 THEN 340 else PRINT"You are in a long hallway, entering into the computer science lab at":PRINT"M.I.T. You are a student, looking for access to a DEC PDP-1 mainframe":PRINT"computer. You have been told that a revolutionary new space game has"
290 PRINT"just been written, called 'Space War!'. It is 1962, and the rumors are":PRINT"flying about the campus. Of course, ever since they junked the TX-0 in":PRINT"1961, you've been looking for a computer to tinker with. An exit lies"
300 PRINT"to the north of here, past a long corridor.":THEN PRINT O$;"<north,west>"
320 IF L(11)=R THEN PRINT"You see a large PDP-1 computer here, guarded by an Ancient Chinese Ice":PRINT"Dragon. This Large, Scaled Dragon blows puffs of green smoke in your":PRINT"direction. It angrily stomps the floor, chanting,'Space War!'."
330 IF L(11)=R THEN PRINT"The Ancient Chinese Ice Dragon looks hungry.":PRINT"Perhaps you should 'feed dragon'."
340 IF R>2 THEN 370 else PRINT"You are walking just past a long hallway near a small closet. This area":PRINT"is dusty and filled with smoke. You didn't know programmers smoked, but":PRINT"this is 1962 and the Surgeon General is on drugs! Or so you hear. A"
350 PRINT"closet stands to the east, usually occupied with several items from the":PRINT"Technical Model Railroad Club. Those damn hippies (er, students)":PRINT"are probably out back enjoying some righteous weed right now. Bummer."
360 PRINT O$;"<south,east>"
370 IF R>3 THEN 400 else PRINT"You are standing in a large broom closet at M.I.T. There are a few items":PRINT"of interest scattered about the room. Perhaps you can snaggle up some":PRINT"tapes for the PDP-1 (in order to program it). But you're looking"
380 PRINT"for the Space War! tape, anyway. It should be here somewhere.":PRINT O$;"<west>"
400 IF R>3 THEN GOSUB 1880
430 PRINT"*** Master O'Ryoko, you can see: ***":si=0:FOR x=7 TO 13:IF L(x)=R THEN PRINT A$(x):si=1
440 NEXT:IF si=0 THEN PRINT"Nothing!"
450 si=0:RANDOMIZE TIME:i=INT(RND*25)+1:IF R=1 THEN IF L(11)=1 THEN IF i=5 THEN PRINT"The dragon angrily stomps the floor! He growls,'Where's my weed, bitch?!'"
460 IF R=1 AND L(11)=1 AND i=10 THEN PRINT"The dragon looks at you and smiles. He barks,'I'll eat you for a quarter!'"
470 IF R=1 AND L(11)=1 AND i=15 THEN PRINT"The dragon kicks the PDP-1!":PRINT"He screams,'Fucking piece of shit! Work, damn you! Work!'"
480 IF SC>=50 THEN SC=50
490 xx=VPOS(#0):GOSUB 1110:LOCATE 1,xx:INPUT">",a$:D$=a$:IF a$="help"THEN PRINT"Commands used in Space War!...and the PDP-1 include:":PRINT:PRINT"GO,GET,TAKE,DROP,INVENTORY,FIGHT,FEED,PROGRAM,EXAMINE,SCORE,SAVE,QUIT":PRINT:GOTO 450
510 IF SC>=50 THEN SC=50
520 IF a$="score"OR a$="points"OR a$="?"OR a$="stats"OR a$="stat"THEN PRINT"You're score is";SC;"out of 50.":GOTO 450
530 IF a$="look"OR a$="lk"OR a$="l"THEN 270
540 IF a$="quit"OR a$="bye"OR a$="exit"OR a$="good bye"OR a$="goodbye"THEN PRINT"You cannot do that. You have not yet completed this adventure.":GOTO 450
550 IF a$="inventory"OR a$="i"OR a$="inv"OR a$="inve"OR a$="inven"OR a$="invent"THEN SC=SC+2:GOTO 1130
560 IF(a$="go north"OR a$="north"OR a$="n")AND R=1 THEN R=2:SC=SC+3:GOTO 270
570 IF(a$="go south"OR a$="south"OR a$="s")AND R=2 THEN R=1:SC=SC+2:GOTO 270
580 IF a$="go east"OR a$="east"OR a$="e"THEN IF R=19 THEN IF L(13)=R THEN PRINT"The werewolf stops you!":PRINT"It growls,'This is MY cemetary, knave! Stay away!'":GOTO 450
590 IF a$="x werewolf"OR a$="examine werewolf"OR a$="exa werewolf"THEN IF L(13)=R THEN PRINT A$(13):SC=SC+3:GOTO 450
600 IF a$="take werewolf"OR a$="get werewolf"OR a$="move werewolf"THEN IF L(13)=R THEN PRINT"The werewolf dodges your movement!":PRINT"It lunges at you, tearing into your neck with deadly force!":PRINT"You died.":PRINT:PRINT"@ It's Game Over, Man! @":END
610 IF a$="kill werewolf"OR a$="fight werewolf"THEN IF L(13)=R THEN PRINT"Slash! You smacked the werewolf with a deadly below across the":PRINT"throat! It falls over...dead.":L(13)=998:SC=SC+10:GOTO 450
620 IF a$="go east"OR a$="east"OR a$="e"THEN IF R=2 THEN R=3:SC=SC+4:GOTO 270
630 IF a$="go west"OR a$="west"OR a$="w"THEN IF R=3 THEN R=2:SC=SC+1:GOTO 270
640 IF a$="go east"OR a$="east"OR a$="e"THEN IF R=4 THEN R=1:SC=SC+2:GOTO 270
650 IF a$="take reader"OR a$="get reader"THEN IF L(8)=R THEN PRINT"The reader is much too heavy to lift.":SC=SC+2:GOTO 450
660 IF a$="take tape"OR a$="get tape"THEN IF L(7)=R THEN L(7)=-1:PRINT"Taken.":SC=SC+5:GOTO 450
670 IF a$="take pdp-1"OR a$="get pdp-1"OR a$="take computer"OR a$="get computer"OR a$="take mainframe"OR a$="get mainframe"THEN IF L(9)=R THEN PRINT"The #$%!?$% thing is too fucking heavy, man!":PRINT"You fucking thief, you! :)":GOTO 450
680 IF a$="take space war!"OR a$="get space war!"OR a$="get spacewar!"OR a$="take spacewar!"OR a$="take space war"OR a$="get space war"OR a$="get spacewar"OR a$="take spacewar"THEN IF L(10)=R THEN L(10)=-1:PRINT"Taken.":SC=SC+10:GOTO 450
690 IF a$="take dragon"OR a$="get dragon"THEN IF L(11)=R THEN PRINT"Oops...":PRINT"You try to take the dragon.":PRINT"It fucking eats you, man!":PRINT"You died.":PRINT:PRINT"@ It's Game Over, Man! @":END
700 IF a$="take janitor"OR a$="get janitor"OR a$="fight janitor"OR a$="kill janitor"OR a$="attack janitor"THEN IF L(12)=R THEN PRINT"A ninja leaps from the shadows!":PRINT:GOTO 1170
710 IF a$="kill dragon"OR a$="fight dragon"OR a$="attack dragon"THEN IF L(11)=R THEN PRINT"A ninja leaps from the shadows!":PRINT:GOTO 1170
720 IF a$="save"OR a$="save game"OR a$="store"OR a$="restore"THEN PRINT"The Gods are not with you on this one, O' Master Ryoko...":GOTO 450
730 IF a$="x computer"OR a$="examine computer"OR a$="exa computer"OR a$="x pdp-1"OR a$="exa pdp-1"OR a$="examine pdp-1"OR a$="x mainframe"OR a$="exa mainframe"OR a$="examine mainframe"THEN IF L(9)=R THEN 1350
740 IF a$="x tape"OR a$="examine tape"OR a$="exa tape"THEN IF L(7)=R OR L(7)=-1 THEN 1390
750 IF a$="x reader"OR a$="examine reader"OR a$="exa reader"THEN IF L(8)=R OR L(8)=-1 THEN 1420
760 IF a$="read tape"THEN IF L(11)=R THEN PRINT"The dragon stops you!":PRINT"He growls,'This is MY PDP-1, bitch! Back off!'":PRINT"He goes back to programming the machine.":GOTO 450
770 IF a$="feed dragon"OR a$="feed tape to dragon"THEN IF L(11)=R THEN IF L(7)=-1 THEN PRINT"You slam the tape into the dragon's mouth!":PRINT"ZOOOORRRRTTTTT!":PRINT"The dragon chokes on it and dies!":PRINT"'AARRGGHH!'":L(11)=998:SC=SC+25:GOTO 450
780 IF a$="feed dragon"OR a$="feed tape to dragon"THEN IF L(11)=R THEN IF L(10)=-1 THEN PRINT"You slam the ONLY copy of Space War! into the dragon's mouth!":PRINT"ZOOOORRRRTTTTT!":PRINT"You fucking dipshit! You've ruined history!":GOTO 1790
790 IF a$="feed werewolf"OR a$="feed tape to werewolf"THEN IF L(13)=R THEN IF L(7)=-1 THEN PRINT"You slam the tape into the werewolf's mouth!":PRINT"It eats the tape whole!":PRINT"The werewolf licks her chops, saying,'Thanks, buddy!'":L(7)=99:GOTO 450
800 IF a$="feed werewolf"OR a$="feed tape to werewolf"THEN IF L(13)=R THEN IF L(10)=-1 THEN PRINT"You slam the ONLY copy of Space War! into the werewolf's mouth!":PRINT"You fucking moron! You've ruined history!":PRINT"The werewolf says,'Yummy!'":GOTO 1790
810 IF a$="read tape"THEN IF L(7)=-1 THEN IF L(8)=-1 OR L(8)=R THEN PRINT"ZIIIPPPP!":PRINT"The tape reads...":S 1:PRINT"The DEC PDP-1 spits out the following message:":PRINT:PRINT"Operator: What the fuck is this shit?!":SC=SC-15:GOTO 450
820 IF a$="read tape"THEN IF L(10)=-1 THEN IF L(8)=-1 OR L(8)=R THEN PRINT"ZIIIPPPP!":PRINT"The tape reads...":S 1:PRINT"The DEC PDP-1 spits out the following output:":PRINT:GOTO 1450
830 IF a$="read tape"THEN PRINT"Aren't you missing something, like a tape or a copy of space war?":GOTO 450
840 IF a$="x spacewar"OR a$="examine spacewar"OR a$="exa spacewar"OR a$="x space war"OR a$="exa space war"OR a$="examine space war"OR a$="x space war!"OR a$="exa space war!"OR a$="examine space war!"OR a$="x spacewar!"THEN 1740
850 IF a$="x dragon"OR a$="examine dragon"OR a$="exa dragon"THEN IF L(11)=R THEN 1770
860 IF a$="x janitor"OR a$="examine janitor"OR a$="exa janitor"THEN IF L(12)=R THEN PRINT"This is a local M.I.T. janitor, underpaid and overworked. He somewhat":PRINT"resembles Joe Lewis, the ex-heavyweight champion of the world.":GOTO 450
870 IF not (a$="program pdp-1"OR a$="program computer"OR a$="program mainframe") THEN 910 else IF L(9)=R THEN IF L(7)<>-1 OR L(10)<>-1 THEN PRINT"You need a tape, or a copy of space war in order":PRINT"to program the DEC PDP-1 mainframe!":GOTO 450
880 IF L(9)=R THEN IF L(7)=-1 THEN PRINT"In order to program the computer, you must 'read tape' first.":GOTO 450
890 IF L(9)=R THEN IF L(10)=-1 THEN PRINT"In order to program the computer, you must 'read tape' first.":GOTO 450
900 IF L(9)=R THEN PRINT"You need a tape to program the computer with first!":GOTO 450
910 IF a$="drop tape"THEN IF L(7)=-1 THEN L(7)=R:SC=SC+2:PRINT"Dropped.":GOTO 450
920 IF a$="drop space war!"OR a$="drop spacewar!"OR a$="drop space war"OR a$="drop spacewar"THEN IF L(10)=-1 THEN L(10)=R:PRINT"Dropped.":SC=SC+4:GOTO 450
930 IF a$="east"OR a$="go east"OR a$="e"THEN n=1:IF m%(R,n)<>0 AND R=4 AND n=3 THEN R=m%(R,n):GOTO 270
940 IF a$="north"OR a$="go north"OR a$="n"THEN n=1:IF m%(R,n)<>0 THEN R=m%(R,n):GOTO 400
950 IF a$="south"OR a$="go south"OR a$="s"THEN n=2:IF m%(R,n)<>0 THEN R=m%(R,n):GOTO 400
960 IF a$="east"OR a$="go east"OR a$="e"THEN n=3:IF m%(R,n)<>0 THEN R=m%(R,n):GOTO 400
970 IF a$="west"OR a$="go west"OR a$="w"THEN n=4:IF m%(R,n)<>0 THEN R=m%(R,n):GOTO 400
980 IF a$="up"OR a$="go up"OR a$="u"THEN n=5:IF m%(R,n)<>0 THEN R=m%(R,n):GOTO 400
990 IF a$="down"OR a$="go down"OR a$="d"THEN n=6:IF m%(R,n)<>0 THEN R=m%(R,n):GOTO 400
1000 IF a$="north"OR a$="go north"OR a$="n"THEN PRINT"You can't go that way.":SC=SC-5:GOTO 450
1010 IF a$="south"OR a$="go south"OR a$="s"THEN PRINT"You can't go that way.":SC=SC-5:GOTO 450
1020 IF a$="east"OR a$="go east"OR a$="e"THEN PRINT"You can't go that way.":SC=SC-5:GOTO 450
1030 IF a$="west"OR a$="go west"OR a$="w"THEN PRINT"You can't go that way.":SC=SC-5:GOTO 450
1040 IF a$="up"OR a$="go up"OR a$="u"THEN PRINT"You can't go that way.":SC=SC-5:GOTO 450
1050 IF a$="down"OR a$="go down"OR a$="d"THEN PRINT"You can't go that way.":SC=SC-5:GOTO 450
1060 IF LEFT$(a$,4)="exam"THEN PRINT"You notice nothing unusual about it.":SC=SC+3:GOTO 450
1070 PRINT"You can't do that. You are not a master yet!":SC=SC-10:IF SC<-120 THEN PRINT"A ninja leaps from the shadows!":SC=0:GOTO 1170
1090 GOTO 450:END
1110 LOCATE 1,1:PRINT SPACE$(80):LOCATE 1,1:PRINT R$(R):LOCATE 70,1:PRINT SC;"/50":RETURN:REM inventory
1130 PRINT"You are carrying:":si=0:FOR x=7 TO 12:IF L(x)=-1 THEN PRINT" ";A$(x):si=1
1150 NEXT:IF si=0 THEN PRINT"Nothing!"
1160 GOTO 450
1170 PRINT"The ninja says,'You twy to rake my fwiend...I take ah-you, Engrashman!'":PRINT"He growls,'Ah-So! You not-a like-a my rice-a??!'":RANDOMIZE T:M=INT(RND*250)+1:H=M+100:RANDOMIZE T:i=INT(RND*37)+1:PRINT">"
1200 IF i<=5 THEN PRINT"The ninja missed you."
1210 IF i>=6 AND i<=10 THEN PRINT"The ninja slashed you hard!":PRINT"You really felt that one!":H=H-25
1220 IF i>=11 AND i<=15 THEN PRINT"Wow! The ninja DESTROYED you!":PRINT"He nearly sliced you in half!":H=H-75
1230 IF i>=16 THEN PRINT"You dodged the ninja's attack..."
1240 PRINT">":RANDOMIZE T:P=INT(RND*35)+1:IF H<=0 THEN PRINT"Alas, you have sustained a mortal blow...":PRINT:PRINT"@ It's Game Over, Man! @":END
1260 IF M<=0 THEN PRINT"The ninja died.":PRINT"You killed ninja.":GOTO 450
1270 IF P<=5 THEN PRINT"You missed ninja."
1280 IF P>=6 AND P<=10 THEN PRINT"You slashed ninja hard!":PRINT"He really felt that one!":M=M-35
1290 IF P>=11 AND P<=15 THEN PRINT"Wow! You DESTROYED the ninja!":PRINT"You nearly sliced ninja in two!":M=M-95
1300 IF P>=16 THEN PRINT"The ninja dodged your attack..."
1310 PRINT:PRINT"@ Press any key to continue... @"
1320 a$=INKEY$:IF a$=""THEN 1320
1330 GOTO 1200:END
1350 PRINT"This is a PDP-1, built by DEC in 1960. Steve Russell, your arch-rival, is":PRINT"said to have programmed 'Space War!' on the machine a few months before.":PRINT"Now everyone and their mom is lined up to play this 50 cent game on a"
1360 PRINT"$120,000 mainframe computer! Fucking hacks! The magnetic core memory of":PRINT"the PDP-1 holds 18-bit words and has 4K word main memory (about 9 KB).":PRINT"At 5 microseconds, the cycle time is fairly quick for a 1960's era"
1370 PRINT"mainframe computer. Random lights blink everywhere across the main":PRINT"console. There is usually a card reader here (somewhere).":GOTO 450
1390 PRINT"This is a tape used with the DEC PDP-1 mainframe computer. It looks blank.":PRINT"There is writing on the label, which reads: 'The fuckers from Stanford":PRINT"don't have their OWN PDP-1! Assholes!'"
1400 PRINT"The dragon guarding the PDP-1 looks hungry. Perhaps you should 'feed tape'":PRINT"to the dragon?":GOTO 450
1420 PRINT"This clunky pile of blue shit is a magnetic card reader, used with the":PRINT"DEC PDP-1 mainframe computer. Apparently you 'read tape' to make the":PRINT"computer spit out the contents of the tape's internal mylar data.":PRINT"Fucking bitch!"
1430 GOTO 450:REM win game
1450 PRINT"Operator: Space War! is ready to play!":PRINT"You type on the ASR-33 teletype: go space war":PRINT:PRINT"############## #############   ############   ############# ##############"
1480 PRINT"###        ### ###        ### ###        ### ###        ### ###        ###":PRINT"###            ###        ### ###        ### ###            ###           ":PRINT"############## ############## ############## ###            ##############"
1510 PRINT"############## #############  ############## ###            ##############":PRINT"           ### ###            ###        ### ###            ###           ":PRINT"###        ### ###            ###        ### ###        ### ###        ###"
1540 PRINT"############## ###            ###        ###  ############# ##############":PRINT"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=":PRINT"###        ###  ############  #############"
1570 PRINT"###        ### ###        ### ###        ###":PRINT"###  ####  ### ###        ### ###        ###":PRINT"### ###### ### ############## ##############":PRINT"######  ###### ############## ############# "
1610 PRINT"#####    ##### ###        ### ###        ###":PRINT"####      #### ###        ### ###         ###":PRINT"###        ### ###        ### ###          ###":PRINT"By: Steve Russell":PRINT"If you play space war, please donate $10 to my college"
1650 PRINT"fund. M.I.T. doesn't pay the bills, and this computer time ain't free, dude!":PRINT"@ Press any key to continue @"
1670 a$=INKEY$:IF a$=""THEN 1670
1680 PRINT:FOR x=1 TO 25:PRINT"...............................................................................";:NEXT:FOR x=1 TO 24:i=INT(RND*20)+1:ix=INT(RND*79)+1:LOCATE ix,i:PRINT"*":NEXT:LOCATE 1,25
1700 PRINT"Whoops, this is a pre-alpha version of Space War! Looks like good ol'":PRINT"Stevie Wonder forgot to program in the space ships...":PRINT"FFFFFFFFFFUUUUUUUUUUUUUUUUUCCCCCCCCCCCCCCCCKKKKKKKKKKKKKKKKKKKKKKK!!!!":PRINT"(The PDP-1 just crashed...)"
1730 PRINT"BZZZZZZZTTTTTTTTTTTTTT! Clunk! Klacloptz!":PRINT"...":PRINT"@ It's Game Over, Man! @":PRINT:PRINT"Your final score was";SC;"out of 50 points.":END
1740 IF L(10)<>R AND L(10)<>-1 THEN 1070
1750 PRINT"This is Space War!, something Steve Russell, a rival programmer, cobbled":PRINT"together in a few months time! The Evil One had sent an Ancient Chinese":PRINT"Ice Dragon to guard the PDP-1, but not this game. It's all yours!"
1760 PRINT"The tape looks filled to maximum RAM!":GOTO 450
1770 PRINT"This Ancient Chinese Ice Dragon is a very Large, Scaled Dragon with sharp":PRINT"claws and powerful teeth! It appears to be smoking something green, for":PRINT"the smoke it blows is quite misty and thick!"
1780 PRINT"The dragon looks to be quite busy, programming the hulking DEC":PRINT"PDP-1 mainframe.":GOTO 450
1790 PRINT"Now we'll NEVER have video games, you stupid tool!":PRINT"You hear Steve Russell scream from afar,'Fucking lamer!'":PRINT:PRINT"@ It's Game Over, Man! @":END:REM rest of map - room 12 (onward to 24)
1810 m%(12,4)=11:m%(13,1)=10:m%(13,3)=14:m%(14,2)=15:m%(14,4)=13:m%(15,1)=14:m%(16,1)=8:m%(16,2)=17:m%(17,1)=16:m%(17,2)=18:m%(18,1)=17:m%(18,3)=19:m%(18,4)=23:m%(19,3)=20:m%(19,4)=18:m%(20,2)=21:m%(20,4)=19:m%(21,1)=20
1840 m%(21,3)=22:m%(22,4)=21:m%(23,1)=24:m%(23,3)=18:m%(24,2)=23:RETURN:REM rooms 4 through 24 printed out
1880 O$="--- Obvious exits: ":IF R<>4 THEN 1910 ELSE R$(R)="In a long corridor, east of the main computing room":PRINT R$(R):PRINT
1890 PRINT"You are walking down a small corridor heading into the M.I.T. central":PRINT"computing room. The hulking mainframes of the DEC PDP-1 unit are visible":PRINT"towards the east of this corridor, blinking bright lights across the"
1900 PRINT"length of the room.":PRINT O$;"<south,east>"
1910 IF R<>5 THEN 1940 ELSE R$(R)="In a long corridor (inside the M.I.T. Computing Center)":PRINT R$(R):PRINT:PRINT"You are walking across a long corridor inside the computing center at the"
1920 PRINT"M.I.T. campus. Loud noises can be heard around the corner, as the elite of":PRINT"the Technical Model Railroad Club can be heard plunking away at the cobbled":PRINT"remains of the TX-0 minicomputer, soon to be replaced by the DEC PDP-1."
1930 PRINT O$;"<north,south>"
1940 IF R<>6 THEN 1970 ELSE R$(R)="At the entrance to the M.I.T. Computing Center":PRINT R$(R):PRINT:PRINT"You stand before the entrance to the M.I.T. Computing Center. Three years ago"
1950 PRINT"this building was a warehouse, housing whatever the university felt wasn't":PRINT"needed. Now it's a bustling area of activity for the members of the Technical":PRINT"Model Railroad Club, a campus club known from their electrical tinkering."
1960 PRINT O$;"<north,east>"
1970 IF R<>7 THEN 2000 ELSE R$(R)="West of Main, on the M.I.T. campus":PRINT R$(R):PRINT:PRINT"You are walking on a small, cobblestone path west of Main (on the campus of"
1980 PRINT"M.I.T.). The area is very beautiful this time of year, with a variety of oak":PRINT"trees in full bloom. The sky above is a crystal blue, with only a few clouds":PRINT"drifting high above you. The entrance to the computing center is west."
1990 PRINT O$;"<east,west>"
2000 IF R<>8 then 2020 else R$(rm)="On the Main path, at the campus of M.I.T.":?RD$(rm):?PRINT"technology and research institution in the Northeastern portion of the":PRINT"United States. Several students walk past you, hurrying towards classes"
2005 PRINT"spread out across campus. The path heads in three directions here."
2010 PRINT O$;"<north,south,west>"
2020 IF R<>9 THEN 2050 ELSE R$(R)="At the entrance to the Technical Model Railroad Club":PRINT R$(R):PRINT:PRINT"You are north of Main on the campus of M.I.T. Before you stands the"
2030 PRINT"esoteric Technical Model Railroad Club, a rogue campus group dedicated":PRINT"to electrical engineering and other nerdy pursuits. Thankfully, the only":PRINT"thing you're concerned with is locating the game 'Space War!'"
2040 PRINT"God knows if these people ever get dates, or party for that matter.":PRINT O$;"<south,east>"
2050 IF R<>10 THEN 2080 ELSE R$(R)="Inside the Technical Model Railroad Club":PRINT R$(R):PRINT:PRINT"You are walking inside the small, narrow building of the Technical Model"
2060 PRINT"Railroad Club. A long corridor extends to either side of the long hallway":PRINT"ahead of you, snaking past several rooms. It appears as though the majority":PRINT"of tinkering is going on to the north, as evidenced by a distant humming"
2070 PRINT"sound. And it's not coming from the air conditioning or the air ducts.":PRINT O$;"<north,south,west>"
2080 IF R<>11 THEN 2110 ELSE R$(R)="In a northern corridor, filled with train sets":PRINT R$(R):PRINT:PRINT"You are walking down a narrow corridor, painted white with yellow stars. You"
2090 PRINT"notice a series of small train sets sprawled across the floor here, some of":PRINT"them operational (the other train sets are in various stages of disassembly).":PRINT"You barely trip over yourself, trying to avoid them, but that's the life of"
2100 PRINT"a nerd, no less!":PRINT O$;"<south,east>"
2110 IF R<>12 THEN 2140 ELSE R$(R)="In the eastern train room, filled with model trains":PRINT R$(R):PRINT:PRINT"You have reached the secret 'lair' of the Technical Model Railroad Club. A"
2120 PRINT"plethora of train sets adorn the room, many of them whirling and beeping about":PRINT"like wayward piles of rusted metal on wheels. As the trains drive you utterly":PRINT"insane, you wonder what these lugnuts are hiding about 'Space War!'"
2130 PRINT O$;"<west>"
2140 IF R<>13 THEN 2170 ELSE R$(R)="South of the main corridor, near a series of dorm rooms":PRINT R$(R):PRINT:PRINT"You are winding your way past a long corridor into a series of small"
2150 PRINT"dorm rooms. There isn't much here, save for a few rooms with basic adornments":PRINT"and furnishings. Do these guys ever party (or get laid)? You notice several":PRINT"amusing posters lining the walls, most of them about science in general."
2160 PRINT"Fucking geeks! No wonder M.I.T.'s culture is so fubared!":PRINT O$;"<north,east>"
2170 IF R<>14 THEN 2200 ELSE R$(R)="Inside a dorm room, at the Technical Model Railroad Club":PRINT R$(R):PRINT:PRINT"You are standing inside the virginous dorm room of some low-life model"
2180 PRINT"club member. The Technical Model Railroad Club isn't known for their":PRINT"social events, or any events, for that matter. What do these pen-pushers":PRINT"do in their spare time? Masterbate to Beethoven?":PRINT O$;"<south,west>"
2200 IF R<>15 THEN 2230 ELSE R$(R)="Inside a small bathroom (which needs repairs badly)":PRINT R$(R):PRINT:PRINT"Eeewww! This bathroom really needs fixing! You think you see the water"
2210 PRINT"running, and it is! Running like a fat kid towards a wedding cake! As":PRINT"amusing as that thought is to you, you can't help but wonder why these":PRINT"fucking nerds ever bother to shower...do they ever get dates?"
2220 PRINT"The only exit is west, out of the stinking virgin-of-a-bathroom.":PRINT O$;"<north>"
2230 IF R<>16 THEN 2260 ELSE R$(R)="South of Main, on the campus of M.I.T.":PRINT R$(R):PRINT:PRINT"You are walking south of Main, on the campus of M.I.T. The road slopes"
2240 PRINT"down towards the southwest, towards a lone road. Past the road lies a":PRINT"large cemetary (not accessible from here). You'll have to go around to":PRINT"the east to see the spooky graveyard!":PRINT O$;"<north,south>"
2260 IF R<>17 THEN 2290 ELSE R$(R)="Heading south towards the end of campus":PRINT R$(R):PRINT:PRINT"You are heading south towards the end of M.I.T. campus. The road turns"
2270 PRINT"sharply here towards the base of a large hillside, covered in leaves and":PRINT"flowers. The grass looks brilliant, a mossy green without the disgusting":PRINT"smell of moss. To the south lies the end of campus.":PRINT O$;"<north,south>"
2290 IF R<>18 THEN 2320 ELSE R$(R)="At the southern edge of M.I.T., near a cemetary":PRINT R$(R):PRINT:PRINT"You are standing on a long, grassy hillside at the southern edge of the"
2300 PRINT"M.I.T. campus. To the east stands a large cemetary, obviously forbidden":PRINT"from the main road. It is guarded by a large iron gate. The hair on your":PRINT"neck rises on end, as the distant howl of a lone wolf echoes throughout"
2310 PRINT"the nearby trees.":PRINT"The road to the cemetary is directly east of here.":PRINT O$;"<north,east,west>"
2320 IF R<>19 THEN 2350 ELSE R$(R)="At the entrance to a large cemetary, blocked by an iron gate":PRINT R$(R):PRINT:PRINT"You stand before the entrance to a large cemetary, which is blocked by a"
2330 PRINT"large, rusted iron gate. The top of the gate reads 'M.I.T. Cemetary' (not":PRINT"terribly original, huh?). Anyway, the cemetary is sometimes guarded by":PRINT"a large wolf, but this is just campus rumor, or so they say..."
2340 PRINT O$;"<east,west>"
2350 IF R<>20 THEN 2380 ELSE R$(R)="Inside a large cemetary, filled with graves and crosses":PRINT R$(R):PRINT:PRINT"You are walking in a lone cemetary, filled with graves and crosses of"
2360 PRINT"the deceased. It's quite a spooky feeling wandering about this cemetary":PRINT"at the edge of campus. You feel as though a set of ghostly eyes are":PRINT"watching your every move! Look out!":PRINT O$;"<south,west>"
2380 IF R<>21 THEN 2410 ELSE R$(R)="Inside a cemetary, on a large hill overlooking M.I.T.":PRINT R$(R):PRINT:PRINT"You stand on a large hill in a cemetary overlooking the campus of M.I.T."
2390 PRINT"The surrounding area is shrouded by a large oak tree, providing ample shade":PRINT"for the graves below. A few leaves cover the ground here, which consists of":PRINT"mostly earthen dirt, solid rock, lush grass and small pebble stones."
2400 PRINT"To the east stands a particularly large grave marker.":PRINT O$;"<north,east>"
2410 IF R<>22 THEN 2440 ELSE R$(R)="In front of a large grave, marked by a stone cross":PRINT R$(R):PRINT:PRINT"You are facing a large grave, marked by an immense stone cross. Reading the"
2420 PRINT"top of the cross you can make out the initials: 'I.B.M.' The dates below the":PRINT"initials are: 1896-1962. An inscription below the date reads: 'Whomever walks":PRINT"with demons shall be free of tyranny forever.'":PRINT O$;"<west>"
2440 IF R<>23 THEN 2470 ELSE R$(R)="Western edge of campus, near a small tool shed":PRINT R$(R):PRINT:PRINT"You are walking on the western edge of the campus of M.I.T. (near a small"
2450 PRINT"tool shed). The shed appears to be mostly abandoned. There isn't much light":PRINT"around to illuminate the darkness, but heading into the shed shouldn't prove":PRINT"too difficult as the door to the shed is drawn wide open."
2460 PRINT O$;"<north,east>"
2470 IF R<>24 THEN 2500 ELSE R$(R)="Inside a small tool shed, on the campus of M.I.T.":PRINT R$(R):PRINT:PRINT"You are standing inside a darkened tool shed on the campus of M.I.T. There"
2480 PRINT"are a few dusty shelves here, but nothing of obvious interest to you. If":PRINT"an item were to catch your eye, surely you'd snag it like a drunk woman":PRINT"at the local dance recital.":PRINT O$;"<south>"
2500 RETURN