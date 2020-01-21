1 REM *** Discovered circa 1980 on a Commodore PET
3 REM ***   at Hereford Technical College
4 REM *** Resurrected & bugfixed By Jon Bradbury / micro_brain
5 REM ***   from a yellowing 31 year old dot matrix printout
6 REM *** http://forum.6502.org
7 REM *** For UK101 8k BASIC, 71 character lines but should work on all.
8 REM *** CONVERTED TO CPC 12'2018 SRS
9 MODE 2
10 PRINT"Wait till the coast is clear...":PRINT
100 DIM R$(3,3,3),RZ(6),T$(3),MZ(5),M$(5),F$(7),G$(7)
112 DIM C$(7),B$(3),BZ(3),Z$(20),S$(3),W$(3)
120 DATA "W0rough","01carved","02stone","$3square"
130 DATA "\\1decorated","03child's"," 1misty","L0lamp-lit"
140 DATA "\\1decorated","00mossy","&3pink","L1grey"
150 DATA "X3poster","02dark","81gloomy","(2round"
160 DATA "E1armoured","P0icy","53peacock","$0octagonal"
170 DATA "X2crystal","&3tumble-down","L0slimy","H1magnificent"
180 DATA "T3tilted",",0treacly","Y1humped","$2whispering"
190 DATA "J0echoing","X1medical"," 2lace","H3glass"
200 DATA "T2vast","%2vast","D0hermit's","D1boulder-strewn"
210 DATA "H2vast","H0sloping","L1narrow","L2silken"
220 DATA "T0littered","01vaulted",":2smoky","(3frog"
230 DATA "Y1musty","02rich","03glittering"," 0bone-strewn"
240 DATA "P3tattered","40jewelled","00jewelled"," 2torture"
250 DATA "E0silver","X1splendid","02doctor's","$3waiting"
260 DATA "\\1flickering","02music","03bear",",0eerie"
270 DATA "X2bird"," 3tiny","P0foul-smelling","(1mouldy"
280 FOR L=0 TO 3:FOR J=0 TO 3:FOR K=0 TO 3:READ R$(J,K,L)
282 NEXT K:NEXT J:NEXT L
290 DATA "cave","hall","chamber","room"
300 FOR J=0 TO 3:READ T$(J):NEXT J
310 DATA -16,16,4,-4,1,-1
320 DATA "up","down","north","south","east","west"
330 FOR X=0 TO 5:READ MZ(X):NEXT X:FOR X=0 TO 5:READ M$(X):NEXT X
340 DATA "/01mean","dwarf","#41nasty little","gnome"
350 DATA "942blood sucking","vampire","244fearsome","ogre"
352 DATA "G00huge and smelly","wumpus"
360 DATA "M13gibbering","orc","_25deadly","manticore"
362 DATA "Q40fiery","dragon"
370 FOR X=0 TO 7:READ F$(X):READ G$(X):NEXT X
380 DATA "#1silver coins","+1doubloons","32dollars",">2sovereigns"
390 DATA "N3pieces of eight","G4byzantine coins","R6gold pieces"
392 DATA "^9treasure coins"
400 FOR X=0 TO 7:READ C$(X):NEXT X
401 DATA " Daylight filters down from above.."
402 DATA ",There are travel posters all over the walls."
403 DATA "0Rusted suits of armour line the walls."
404 DATA "'Water drips down from above..."
405 DATA "5The stairs are broken and dangerous."
406 DATA "9The going gets sticky..."
407 DATA "EBroken stairs hang out of reach above."
408 DATA "<Something belches... belches... belches..."
409 DATA "1Rubble chokes a downward tunnel.","1It's cold..."
410 DATA "6..watch your step!"
411 DATA "JSign - 'Folding stairs / One way only'"
412 DATA "ZAn empty bear cage is bolted to the wall"
413 DATA "OSome bones look recent..","Q** NO SMOKING **"
414 DATA "RA large treasure chest stands open."
415 DATA "\\Exotic birds flit overhead."
416 DATA "SIncome tax forms are strewn about."
417 DATA "SGhostly screams are heard..","DA clogged tunnel lies below."
418 DATA "KI hear croaking... ribbit... ribbit..."
419 FOR J=0 TO 20:READ Z$(J):NEXT J
420 DATA "%doll","=bottle of ointment","Fring","[sword"
422 FOR X=0 TO 3:READ B$(X):NEXT X
430 DATA ",A poster says 'Travel",";A voice says 'Sleep"
440 DATA "BA scrawled note says 'Battle","VA diploma reads 'Healing"
450 X=RND(10):FOR X=0 TO 3:READ S$(X):W$(X)="X"
460 FOR J=1 TO X+2:Z$=CHR$(RND(1)*15+65):W$(X)=W$(X)+Z$:NEXT J,X
470 V=20
480 IF V<15 THEN V=15:PRINT "Vitality restored to 15."
490 J=0:K=0:L=-1:D$=">":R$="You are above ground over a cave.":GOTO 520
500 D$=LEFT$(R$,1):T=VAL(MID$(R$,2,1)):H$=T$(T)
510 RR$=MID$(R$,3):R$="You are in a":LR=ASC(LEFT$(RR$,1))
512 IF LR=97 OR LR=101 OR LR=105 OR LR=111 OR LR=117 THEN RG$="n"
514 R$=R$+RG$+" "+RR$+" "+H$+"."
520 PRINT R$:RG$="":A=J*4+K+L*16
530 R=-1:D=ASC(D$):D1=1:FOR X=0 TO 5:IF (D AND D1)>0 THEN GOSUB 1320
540 D1=D1*2:NEXT X:A1=A+32
542 IF (R=0) AND (RZ(0)+M2=0) THEN PRINT "== DEAD END =="
545 FOR X=0 TO 20:IF ASC(Z$(X))=A1 THEN PRINT MID$(Z$(X),2)
546 NEXT X
550 FOR X=0 TO 3:IF ASC(S$(X))=A1 THEN 570
560 NEXT X:GOTO 580
570 IF (X<>3) OR (BZ(1)=1) THEN 572
571 GOTO 580
572 PRINT MID$(S$(X),2);" spell word is ";W$(X);"'."
580 B1=0:FOR X=0 TO 3:IF ASC(B$(X))=A1 THEN 600
590 NEXT X:GOTO 620
600 B$=MID$(B$(X),2):B1=1:B2=X
610 PRINT "There is a ";B$;" here."
620 C1=0:FOR X=0 TO 7
622 IF C$(X)="" THEN C$(X)=" ":GOTO 630
624 IF ASC(C$(X))=A1 THEN 640
630 NEXT X:GOTO 660
640 C1=VAL(MID$(C$(X),2,1))*100:C$=MID$(C$(X),3)
642 PRINT "There are ";C1;C$;" here."
650 C2=X
660 G$="":FOR X=0 TO 7
662 IF F$(X)="" THEN F$(X)=" ":GOTO 670
664 IF ASC(F$(X))=A1 THEN 680
670 NEXT X:GOTO 710
680 G$=G$(X):PRINT "A ";MID$(F$(X),4);" ";G$;" bars your way!"
690 G1=VAL(MID$(F$(X),2,1)):G2=VAL(MID$(F$(X),3,1))*100
692 IF G2=0 THEN G2=1E+09
700 G3=INT(X+1)*INT(X/3+1):G5=X
710 REM INPUT MOVE
720 INPUT "Move :";Y$:Z$=LEFT$(Y$,1)
730 J1=0:K1=0:L1=0
740 IF Z$="D" OR Z$="d" THEN L1=1
750 IF Z$="U" OR Z$="u" THEN L1=-1
760 IF Z$="N" OR Z$="n" THEN J1=1
770 IF Z$="S" OR Z$="s" THEN J1=-1
780 IF Z$="E" OR Z$="e" THEN K1=1
790 IF Z$="W" OR Z$="w" THEN K1=-1
795 IF (Z$="L" OR Z$="l") AND L=-1 THEN 490
796 IF (Z$="L" OR Z$="l") THEN 870
797 IF Z$="Q" OR Z$="q" THEN 1440
800 M1=K1+4*J1+16*L1:IF M1=0 THEN 880
810 FOR X=0 TO R:IF M1=RZ(X) THEN 830
820 NEXT X:PRINT "You can't go that way.":GOTO 720
830 IF (G$<>"") AND (M1+M2<>0) THEN 834
832 GOTO 840
834 PRINT "The ";G$;" won't let you pass!":GOTO 720
840 M9=M9+1:M2=M1:J=J+J1:K=K+K1:L=L+L1
850 IF (L=-1) AND (J+K=0) THEN 480
860 IF L=-1 THEN 1440
870 R$=R$(J,K,L):GOTO 500
880 IF (Z$="F") OR (Z$="B") OR Z$="f" OR Z$="b" THEN 1120
890 IF Z$="T" OR Z$="t" THEN 1030
900 IF Z$="X" OR Z$="x" THEN 930
910 PRINT:PRINT"North South East West Up Down Fight Bargain Take":PRINT
920 GOTO 720
930 FOR X=0 TO 3:IF Y$=W$(X) THEN 960
940 NEXT X
950 PRINT "?? Nothing happens ??":GOTO 720
960 IF (L=3) AND (X=2) THEN 950
970 IF X=0 THEN J=3:K=3:M2=3:GOTO 850
980 IF (X>0) AND (X<3) AND (G$="") THEN 950
990 S$(X)="":W$(X)=""
1000 IF X=1 THEN PRINT "The ";G$;" falls asleep.":G$="":GOTO 720
1010 IF X=2 THEN PRINT "The ";G$;" vanishes!":G$="":F$(G5)="a":GOTO 720
1020 V=20:PRINT "Vitality restored to 20":GOTO 720
1030 IF B1+C1=0 THEN PRINT "?? Nothing here ??":GOTO 720
1040 IF G$<>"" THEN PRINT "The ";G$;" won't let you have it!":GOTO 720
1050 IF B1=0 THEN GOTO 1110
1060 BZ(B2)=1:B1=0:B$(B2)="a"+MID$(B$(B2),2)
1070 PRINT "You now have:";:Z=C$(L*2)=C$(L*2+1)
1072 FOR X=0 TO 3:IF BZ(X)=0 THEN 1090
1080 PRINT:PRINT ".. A ";MID$(B$(X),2);"."
1090 NEXT X:IF Z THEN PRINT:PRINT "** All treasure in level ";L+1;
1100 PRINT:PRINT ".. ";V1;"coins.":GOTO 720
1110 E=E+1:V1=V1+C1:C1=0:C$(C2)="a":T9=T9+1:GOTO 1070
1120 IF G$="" THEN PRINT "?? Nobody here ??":GOTO 720
1130 IF Z$="B" OR Z$="b" THEN 1210
1140 PRINT "The ";G$;" ";:G4=5:IF G3<=5 THEN G4=G3:GOTO 1170
1150 PRINT "is wounded!";
1160 GOTO 1180
1170 PRINT "is dead!";:G$="":F$(G5)="a":E=E+1
1180 V=V-INT(G4*10/(10+E+8*BZ(2)))
1182 IF V<=0 THEN PRINT " - BUT YOU'VE BEEN KILLED TOO!":GOTO 1480
1190 PRINT:PRINT "Your vitality is reduced to ";V
1192 IF V<5 THEN PRINT "I think you need magical assistance.."
1200 G3=G3-G4:GOTO 720
1210 IF G2>V1 THEN 1240
1220 PRINT "The greedy swine of a ";G$;" wants ";G2;"coins - OK?";
1222 INPUT Z$:IF LEFT$(Z$,1)="N" OR LEFT$(Z$,1)="n" THEN 1240
1230 V1=V1-G2:GOTO 1290
1240 IF G1>3 THEN 1310
1250 IF BZ(G1)=0 THEN 1310
1260 PRINT "The ";G$;" will take the ";MID$(B$(G1),2);" - OK?";
1270 INPUT Z$:IF LEFT$(Z$,1)="N" OR LEFT$(Z$,1)="n" THEN 1310
1280 BZ(G1)=0
1290 PRINT"It's a deal! The ";G$;" is gone."
1300 E=E+1:G$="":F$(G5)="a":GOTO 1070
1310 PRINT "No deal - looks like a smackdown is in order..":GOTO 720
1320 R=R+1:M=MZ(X):RZ(R)=M:M$=M$(X)
1330 X$="You may go":IF L<0 THEN 1430
1340 A1=A+M:IF A1<0 THEN 1430
1350 L1=INT(A1/16):A1=A1-L1*16:J1=INT(A1/4):K1=A1-J1*4
1360 T1=VAL(MID$(R$(J1,K1,L1),2,1))
1370 IF T=1 THEN X$="The "+H$+" continues":GOTO 1430
1380 IF (T<>3) AND (T1<>3) THEN 1410
1390 X$="A doorway opens":IF ABS(M)>15 THEN X$="A stairway leads"
1400 GOTO 1430
1410 IF (T=0) OR (T=1) THEN X$="A tunnel goes":GOTO 1430
1420 X$="A passage leads"
1430 PRINT X$;" ";M$;".":RETURN
1440 PRINT "You have left the cave area with ";V1;"coins."
1460 FOR X=0 TO 7
1462 IF LEFT$(C$(X),1)<>"a" THEN PRINT "You missed the ";MID$(C$(X),3)
1470 NEXT X
1480 PRINT:PRINT "Your score is ";
1490 IF M9=0 THEN PRINT V*2:END
1495 PRINT INT(V1*24/M9+V*2)
1497 END