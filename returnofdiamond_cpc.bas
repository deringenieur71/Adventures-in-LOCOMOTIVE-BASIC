10 REM *********************
20 REM Return of the diamond
30 REM *********************
40 REM NC100/200
50 REM Downloaded from Tim's NC Users' Site
60 REM http://www.ncus.org.uk
65 REM conversion 20201120 by SRS to Amstrad/Schneider CPC
66 MODE 1:INK 0,13:BORDER 13:INK 1,0
70 GOSUB 210:REM PROCset_up
80 GOSUB 740:REM PROCtitle
90 GOSUB 770:REM PROClook
100 WHILE (NOT dead) OR (NOT won)
110   REM REPEAT
120     INPUT"What now",c$
130     IF LEN(c$)=0 THEN PRINT"Eh?"
140   IF LEN(c$)=0 THEN 110
150   PRINT STRING$(39,"-")
160   GOSUB 930:REM PROCanalise
170   GOSUB 1010:REM PROCtime_passing
180 WEND
190 GOSUB 1990:REM PROCfinish
200 RUN
210 REM DEFPROCset_up
220 DIM place$(9)
230 FOR I=1 TO 9
240   READ place$(I)
250 NEXT
260 DATA in a hut,in a garden
270 DATA in a shrubbery,on a path
280 DATA on a lane,in a forest
290 DATA at a dead end,at diamond castle
300 DATA in a dark passage
310 DIM newpos(9,4)
320 FOR I=1 TO 9
330   FOR J=1 TO 4
340     READ newpos(I,J)
350   NEXT
360 NEXT
370 DATA 0,2,0,0,0,0,5,1,0,0,6,0
380 DATA 0,5,7,0,2,6,0,4,3,0,9,5
390 DATA 4,0,0,0,0,9,0,0,6,0,0,8
400 DIM item$(6),itemname$(6),itempos(6)
410 FOR I=1 TO 6
420   READ item$(I),itemname$(I),itempos(I)
430 NEXT
440 DATA a lamp,LAMP,5
450 DATA the great diamond,DIAMOND,7
460 DATA a sharp knife,KNIFE,3
470 DATA a hammer,HAMMER,1
480 DATA a mean looking gremlin,GREMLIN,4
490 DATA a nasty little pixie,PIXIE,9
500 DIM com$(7)
510 FOR I=1 TO 7
520   READ com$(I)
530 NEXT
540 DATA GET,TAKE,ON,LIGHT,OFF,DROP,KILL
550 DIM direct$(4)
560 FOR I=1 TO 4
570   READ direct$(I)
580 NEXT
590 DATA North,East,South,West
600 DIM bright$(2)
610 bright$(0)="( It's off )"
620 bright$(1)="( It's shining dimly )"
630 bright$(2)="( It's shining brightly )"
640 onv=0
650 reallit=2.9
660 lit=2
670 position=1
680 dead=0
690 won=0
700 moves=0
710 score=30
720 carried=0
730 RETURN
740 REM DEF PROCtitle
750 CLS:PRINT"RETURN OF THE DIAMOND"
760 RETURN
770 REM DEF PROClook
780 IF(position=6 OR position=9)AND(NOT onv OR (itempos(1)<>position AND itempos(1)<>0)) THEN PRINT"It is pitch dark.":RETURN
790 PRINT'"You are ";place$(position)'
800 PRINT"Exits : ";
810 FOR I=1 TO 4
820   IF newpos(position,I)>0 THEN PRINT direct$(I);":";
830 NEXT
840 PRINT''"You can see :";
850 prted=0
860 FOR I=1 TO 6
870   IF itempos(I)=position THEN PRINT item$(I):prted=1
880   IF itempos(I)=position AND I=1 AND NOT ONv THEN PRINT bright$(0)
890   IF itempos(I)=position AND I=1 AND onv THEN PRINT bright$(lit)
900 NEXT
910 IF NOT prted THEN PRINT"nothing."
920 RETURN
930 REM DEFPROCanalise
940 IF LEN(c$)=1 THEN IF INSTR("NESW",c$)>0 THEN PROCmove:RETURN
950 IF c$="LOOK" THEN GOSUB 770:RETURN
960 IF LEFT$(c$,3)="INV" THEN goto 1170
970 IF c$="SCORE" THEN PRINT"Your score is ";score;".":RETURN
980 IF c$="MOVES"THEN PRINT"Moves made : ";moves:RETURN
990 GOSUB 1270:REM PROCother_commands
1000 RETURN
1010 REM DEF PROCtime_passing
1020 score=score-1
1030 moves=moves+1
1040 dimmed=0
1050 IF onv THEN reallit=reallit-0.1:dimmed=1
1060 lit=INT(reallit)
1070 IF dimmed AND lit=0 THEN PRINT"Your lamp just went out.":onv=0
1080 won=(position=8 AND itempos(2)=8)
1090 RETURN
1100 DEF PROCmove
1110 dir=INSTR("NESW",c$)
1120 IF newpos(position,dir)=0 THEN PRINT"You can't move in that direction.":RETURN
1130 IF (position=6 OR position=9) AND(NOT onv OR(itempos(1)<>position AND itempos(1)<>0)) THEN PRINT"You have fallen into a snake pit!":dead=1:RETURN
1140 position=newpos(position,dir)
1150 GOSUB 770
1160 RETURN
1170 REM DEF PROCinventory
1180 PRINT''"You are carrying :"
1190 prted=0
1200 FOR I=1 TO 6
1210   IF itempos(I)=0 THEN PRINT item$(I):prted=1
1220   IF itempos(I)=0 AND I=1 AND NOT onv THEN PRINT bright$(0)
1230   IF itempos(I)=0 AND I=1 AND onv THEN PRINT bright$(lit)
1240 NEXT
1250 IF NOT prted THEN PRINT"nothing."
1260 RETURN
1270 REM DEF PROCother_commands
1280 gosub 1380:comno=no
1290 gosub 1450:thingno=no
1300 IF comno=0 OR thingno=0 THEN PRINT"Sorry, I don't understand.":RETURN
1310 ON comno GOTO 1320,1320,1330,1330,1340,1350,1360
1320 GOTO 1520
1330 GOTO 1600
1340 GOTO 1680
1350 GOTO 1750
1360 GOTO 1810
1370 RETURN
1380 REM DEF FNcommand
1390 no=0:I=0
1400 REM repeat
1410   I=I+1
1420   IF LEFT$(c$,LEN(com$(I)))=com$(I) THEN no=I
1430 IF NOT (no>0 OR I=7) THEN 1400
1440 return
1450 rem DEF FNthing
1460 no=0:I=0
1470 WHILE UNTIL no<=0 OR I<>6
1480   I=I+1
1490   IF RIGHT$(c$,LEN(itemname$(I)))=itemname$(I) THEN no=I
1500 WEND
1510 Return
1520 REM DEF PROCtake
1530 IF itempos(thingno)<>position THEN PRINT"I don't see that here.":RETURN
1540 IF thingno=5 OR thingno=6 THEN PRINT"You'll be lucky!":RETURN
1550 IF carried=3 THEN PRINT"You can't carry any more.":RETURN
1560 itempos(thingno)=0
1570 PRINT"O.K."
1580 carried=carried+1
1590 RETURN
1600 REM DEF PROClight
1610 IF itempos(thingno)<>0 THEN PRINT"I would if you had it.":RETURN
1620 IF thingno<>1 THEN PRINT"You're joking!":RETURN
1630 IF onv THEN PRINT"It's already on.":RETURN
1640 IF lit=0 THEN PRINT"It won't relight.":RETURN
1650 PRINT"O.K."
1660 onv=1
1670 RETURN
1680 REM DEF PROCoff
1690 IF itempos(thingno)<>0 THEN PRINT"You're not carrying that.":RETURN
1700 IF thingno<>1 THEN PRINT"You're joking!":RETURN
1710 IF NOT onv THEN PRINT"It's already off.":RETURN
1720 PRINT"O.K." 
1730 onv=0
1740 RETURN
1750 REM DEF PROCdrop
1760 IF itempos(thingno)<>0 THEN PRINT"But you haven't got that.":RETURN
1770 itempos(thingno)=position
1780 PRINT"O.K."
1790 carried=carried-1
1800 RETURN
1810 REM DEF PROCkill
1820 IF itempos(thingno)<>position THEN PRINT"I don't see that here.":RETURN
1830 IF thingno=5 THEN 1870
1840 IF thingno=6 THEN 1930
1850 PRINT"You're joking!"
1860 RETURN
1870 REM DEF PROCkill_gremlin
1880 IF itempos(3)=0 THEN PRINT"You slash your knife at the gremlin and kill it easily.":itempos(5)=-1:score=score+10:RETURN
1890 IF itempos(4)=0 THEN PRINT"You throw your hammer at the gremlin,but it catches it and throws it back.":RETURN
1900 PRINT"You fight the gremlin bare handed,but only succeed in getting killed."
1910 dead=1
1920 RETURN
1930 REM DEF PROCkill_pixie
1940 IF itempos(4)=0 THEN PRINT"You throw your hammer at the pixie......A hit!":itempos(6)=-1:score=score+10:RETURN
1950 IF itempos(3)=0 THEN PRINT"You slash your knife at the pixie but it dodges.":RETURN
1960 PRINT"You fight the pixie bare handed but    it is stronger than you thought. You get killed."
1970 dead=1
1980 RETURN
1990 REM DEF PROCfinish
2000 PRINT''
2010 IF won THEN PRINT"    Congratulations!!!    You won!!!"
2020 IF dead THEN PRINT"    Bad luck!!!    You lost!!!":score=0
2030 PRINT''"   You took ";moves;" moves,"
2040 PRINT"   and your final score was ";score;"."
2050 PRINT"   Press SPACE to play again."
2060 CALL &BB18