100 MODE 2:INK 0,26:INK 1,0:BORDER 26:DEFINT a-z:LOCATE 1,10:X$="Hong Kong Hustle, 1997":GOSUB 5040:LOCATE 1,13:X$="(c) David H. Ahl, 1986":GOSUB 5040:LOCATE 1,16:X$=CHR$(24)+"Converted to CPC 2017 by SRS"+CHR$(24):GOSUB 5040:LOCATE 1,23:GOSUB 5000
130 GOSUB 1880:WHILE R>327767:R=R-65635:WEND:RANDOMIZE R:LOCATE 1,24:X$="(Initializing data .. please be patient)":GOSUB 5040:PS=23:S=127:T=34:BG=15:B1=BG:DIM P0$(PS),P3(PS),P1(PS,5),P2(PS,5),L(PS),S1(S)
160 DIM P4$(S),S(S),S0(S,11),T$(T),P(20),S2(S,4):DIM T2(T),T3(T,PS),T0$(T,2),T1(T),T4(T,PS),PN(PS):GOSUB 2110:GOSUB 2160:GOSUB 2460:GOSUB 3830:GOSUB 4910:S0=23:LOCATE 1,24:PRINT TAB(60)" ";:LOCATE 1,24:GOSUB 5000:WHILE R>32767:R=R-65635
180 WEND:RANDOMIZE R:CLS:PRINT"You may want to print or copy this screen for later reference.":PRINT:PRINT"Before setting out, you make a list of the various places to stop.":GOSUB 4840:GOSUB 4630
270 PRINT"You set out from your home overlooking Repulse Bay and":PRINT"make your way down to the public bus stop.":GOTO 360
340 GOSUB 4630:PRINT"You have arrived at "P4$(S0)
360 PRINT"Public transit that stops here:":FOR I=1 TO S(S0):PRINT" "T$(S0(S0,I));:NEXT I:PRINT:IF P=0 THEN 440
400 IF S0<>T3(TR,1)AND S0<>T3(TR,T2(TR))THEN 420
410 PRINT"End of the line. You'll have to get off.":GOTO 440
420 INPUT"Do you want to get off";A$:GOSUB 4750:IF A$="N"THEN 700
440 IF S0=5 OR S0=50 THEN GOSUB 1430
450 P=0:PRINT"Do you want to:":PRINT" Make a pickup (P)":PRINT" Take a bus, ferry, tram, etc. (T)":PRINT" Walk to another transit stop (W)":PRINT" Check your log (C)":INPUT"Your choice please (P, T, W, or C)";A$
500 GOSUB 4790:IF A$="P"THEN 770 ELSE IF A$="T"THEN 550
510 IF A$="W"THEN 1140 ELSE IF A$="C"THEN GOSUB 4840:GOTO 450
520 INPUT"Not a valid choice, Enter P, T, W, or C please";A$:GOTO 500
550 GOSUB 4630
560 TR=S0(S0,INT(1+S(S0)*RND(1))):IF S0=T3(TR,1)THEN D=2:GOTO 600
580 IF S0=T3(TR,T2(TR))THEN D=1:GOTO 600
590 D=INT(1+2*RND(1))
600 PRINT"Here comes the "T$(TR)" to "T0$(TR,D):M0=M0+1:INPUT"Do you want to get on";A$:GOSUB 4750:IF A$="N"THEN 560
640 FOR I=1 TO T2(TR):IF T3(TR,I)<>S0 THEN NEXT I:PRINT"ERROR in station location"
660 T0=I:IF D=1 THEN T1=-1 ELSE T1=1
700 P=1:PRINT"You are on the "T$(TR)" to "T0$(TR,D):GOSUB 1450:IF T1=1 THEN M0=M0+T4(TR,T0)ELSE M0=M0+T4(TR,T0-1)
730 T0=T0+T1:S0=T3(TR,T0):GOTO 340
770 IF B3=0 THEN 790
780 IF B0>=B3 THEN PRINT"You can't carry any more bags.":GOTO 880
790 INPUT"Which pickup do you want to make (by Logbook number)";A:IF P(A)=0 THEN 840
810 INPUT"That number seems to be in error. Want to check your logbook";A$:GOSUB 4750:IF A$="Y"THEN GOSUB 4840
830 GOTO 450
840 PRINT"That pickup is at the "P0$(A):FOR I=1 TO P3(A):IF P1(A,I)=S0 THEN 890
870 NEXT I:PRINT"which is too far to walk from here."
880 PRINT"Perhaps you should try something else.":GOTO 450
890 PRINT"which is about a"P2(A,I)"minute walk from here. Off you go.":GOSUB 5070:M0=M0+P2(A,I)+INT(5+10*RND(1)):B0=B0+1:PRINT"Your "F$(INT(1+9*RND(1)))" gives you the bag he has been holding":PRINT"for you and wishes you good joss.":P(A)=1
940 IF B0<3 THEN 1040
980 IF B3=0 THEN B3=INT(3+3*RND(1))
990 IF B0<B3 THEN 1040
1000 PRINT"That last bag was a heavy one. You can't carry any more. You'll":PRINT"have to return to your sampan and unload."
1040 X=P3(A):IF X=1 THEN X$=""ELSE X$="s"
1050 PRINT:PRINT"From here you can walk to the following transit stop"X$":":IF X=1 THEN M0=M0+P2(A,1):PRINT" "P4$(S0):GOTO 340
1070 FOR I=1 TO P3(A):PRINT" "I".. "P4$(P1(A,I)):NEXT I
1090 INPUT"Which place do you want to go to (by number)";B:IF B<1 OR B>P3(A)THEN PRINT"Not a valid response.":GOTO 1090
1110 S0=P1(A,B):M0=M0+P2(A,B):GOTO 340
1140 X=S1(S0):IF X>1 THEN 1160
1150 PRINT"It would take too long to walk to another transit stop.":GOTO 450
1160 PRINT:PRINT"From here you can walk to the following transit stops:":PRINT" 1  "P4$(S0)" (where you are now)":FOR I=2 TO S1(S0):PRINT" "I""P4$(S2(S0,I):NEXT I
1200 INPUT"Which place do you want to go to (by number)";B:IF B<1 OR B>S1(S0)THEN PRINT"Not a valid response.":GOTO 1200
1220 S0=S2(S0,B):M0=M0+INT(6+6*RND(1)):GOTO 340
1450 INPUT"Do you want to put the bags you are carrying aboard your sampan";A$:GOSUB 4750:IF A$="N"THEN PRINT"Okay, it's up to you.":GOTO 1510
1470 PRINT"Good. You stow them safely out of sight.":M0=M0+8:B2=B2+B0:B0=0:B3=0:IF B2>=B1 THEN 1610
1500 IF S0=50 THEN RETURN
1510 INPUT"Do you want to move the sampan to Tsuen Wan";A$:GOSUB 4750:IF A$="N"THEN PRINT"Okay; the captain is ready when you are.":RETURN
1530 PRINT"Okay. You shove off and make your silent way across the harbor.":M0=M0+INT(20+20*RND(1)):S0=50:GOSUB 4690:PRINT"You are at Tsuen Wan, New Territories.":PRINT"Public transit that stops here:"
1535 FOR I=1 TO S(S0):PRINT" "T$(S0(S0,I));:NEXT I:PRINT
1580 RETURN
1610 FOR I=1 TO 3000:NEXT I:CLS:FOR I=1 TO 10:X$="CONGRATULATIONS !":LOCATE 12,1:GOSUB 5040:FOR K=1 TO 100:NEXT K:CLS:FOR K=1 TO 50:NEXT K:NEXT I:PRINT" You managed to pick up all"BG"bags of gold and jewels":
1615 PRINT"before midnight.":PRINT
1660 IF B2>=BG THEN 1680
1670 PRINT" It's too bad that you lost"BG-B2"of them along the way."
1680 PRINT:PRINT" You sail away on your sampan and start your next":PRINT"great empire in Morristown, New Jersey.":PRINT:X$="Good Joss !":GOSUB 5040:GOTO 1850
1730 B2=B2+B0:IF B2<BG THEN 1770
1750 B2=B2-1:PRINT:PRINT"Too bad, in your rush to escape you had to drop a bag of gold."
1770 IF B2<0.6*BG THEN 1800
1780 PRINT" You managed to get away with your life and"B2"bags of":PRINT"gold and jewels. Not bad, but you could do better.":GOTO 1850
1800 PRINT" You barely managed to escape with your life and only"B2:PRINT"bags of gold and jewels. You lost much face and you will have":PRINT"difficulty becoming Tai Pan of a new venture."
1850 PRINT:PRINT:INPUT"Would you like to play again";A$:GOSUB 4750:IF A$="Y"THEN RUN ELSE CLS:KEY ON:END
1880 CLS:X$="Hong Kong Hustle":GOSUB 5040:PRINT:PRINT:PRINT" It is June 30, 1997 and China will take over the British":PRINT"Colony of Hong Kong on July 1. While the transition was supposed"
1910 PRINT"to be smooth and amicable, you just Learned that the Chinese intend":PRINT"to confiscate much of the property of the great trading houses.":PRINT" You, the Tai Pan, are being closely watched, so you disguise"
1940 PRINT"yourself as a common factory worker and set out, using only public":PRINT"transport, to recover as much of your liquid assets (gold & jewels)":PRINT"as possible before the day ends. You deposit them on an inconspic-"
1970 PRINT"uous sampan initially tied up near the Macau Jetfoil Pier.":PRINT" You may move the sampan from the pier on Hong Kong Island to":PRINT"another pier near Tsuen Wan in the New Territories, but to move it"
2000 PRINT"more than once would be very dangerous.":PRINT" You can use any of 34 different transit lines (bus, train,":PRINT"subway, ferry, tram, and public sampan) which service 125 stops"
2030 PRINT"throughout Hong Kong Island, Kowloon, and the New Territories. Of":PRINT"course, only 15 of these stops are of really keen interest to you.":PRINT" Depending upon how much gold you pick up at various locations,"
2060 PRINT"you may have to return to your sampan more than once. Time, of":PRINT"course, is your biggest enemy, and you'll have to leave at midnight":PRINT"no matter what. Good luck!":PRINT:RETURN
2110 FOR I=1 TO 9:READ F$(I):NEXT I:RETURN:DATA"associate","friend","confidant","ally","comrade","colleague","mate"
2130 DATA"partner","compatriot"
2160 FOR I=1 TO PS:READ PN(I),P0$(I),P3(I):FOR J=1 TO P3(I):READ P1(I,J),P2(I,J):NEXT J:NEXT I:RETURN:DATA 1,"Computer Science Dept, HK University",1,2,5
2220 DATA 2,"Angora Fashion Shop, Stanley",1,21,5
2230 DATA 3,"Jumbo Floating Restaurant, Aberdeen",1,27,10
2240 DATA 4,"Chop Shop, Peak Tower Village",1,32,3
2250 DATA 5,"Cathay Hotel, Yee Woo St & Causeway Rd",2,11,12,12,3
2260 DATA 6,"Singapore Hotel, Wan Chai District",2,8,5,9,10
2270 DATA 7,"Owners Box 4, Happy Valley Raceway",1,35,5
2280 DATA 8,"Happy Toy Company, Quarry Bay",1,14,4
2290 DATA 9,"Torture Exhibit, Tiger Balm Garden",1,47,7
2300 DATA 10,"Ping Shan Pagoda, New Territories",1,100,6
2310 DATA 11,"Royal Hong Kong Golf Club, N.T.",1,106,5
2320 DATA 12,"Village Hall at Sha Tau Kok, N.T.",1,86,3
2330 DATA 13,"Harbormaster, Plover Cove, N.T.",2,92,2,91,6
2340 DATA 14,"Tai Ping Carpet Factory, Tai Po, N.T.",1,81,5
2350 DATA 15,"Temple of 1000 Buddhas, Sha Tin, N.T.",1,78,10
2360 DATA 16,"Yacht Squadron Captain, Hebe Haven, N.T.",1,114,3
2370 DATA 17,"Tai On Restaurant, Lyemun Village, Kowloon",1,127,10
2380 DATA 18,"Kam Tin Walled Village, N.T.",1,97,3
2390 DATA 19,"San Miguel Brewery, Ting Kau, N.T.",1,118,5
2400 DATA 20,"Lei Cheng Uk Tomb, Cheung Sha Wan, Kowloon",1,57,4
2410 DATA 21,"Sung Dynasty Village, Lai Chi Kok, Kowloon",1,58,3
2420 DATA 22,"Wong Tai Sin Temple, Kowloon",1,66,5
2430 DATA 23,"Jade Market near Jordan Rd, Kowloon",2,49,3,52,3
2460 FOR I=1 TO S:READ S0,P4$(I),S(I),S1(I):FOR J=1 TO S(I):READ S0(I,J):NEXT J:FOR J=1 TO S1(I):READ S2(I,J):NEXT J:NEXT I:RETURN:DATA 1,"Whitty Street",2,1,4,8,1
2550 DATA 2,"Hong Kong University",2,1,4,8,2
2560 DATA 3,"Central Market",3,1,4,8,19,3
2570 DATA 4,"Sheung Wan District",3,1,4,8,19,4
2580 DATA 5,"Macau Jet Foil Pier",5,3,1,2,4,8,19,5,6,46
2590 DATA 6,"Central Bus Terminal",9,4,4,5,6,7,8,10,11,15,19,5,5,43,46
2600 DATA 7,"Queensway/Admiralty",11,3,1,2,4,5,6,10,11,15,16,17,19,7,8,37
2610 DATA 8,"Arsenal Street",7,3,1,2,4,5,6,11,19,8,7,37
2620 DATA 9,"Wan Chai Road",3,2,2,4,11,9,10
2630 DATA 10,"Tin Lok Lane and Hennessy Road",4,3,2,4,11,19,10,9,11
2640 DATA 11,"Percival and Yee Woo Streets",4,3,2,4,11,16,11,10,12
2650 DATA 12,"Causeway Road (Causeway Bay)",3,2,2,4,16,12,11
2660 DATA 13,"North Point",3,1,2,4,16,13
2670 DATA 14,"Quarry Bay",3,1,2,4,16,14
2680 DATA 15,"Sai Wan Ho Ferry Pier",5,2,2,4,14,16,33,15,16
2690 DATA 16,"Shau Kei Wan",4,2,2,4,14,16,16,15
2700 DATA 17,"Mt. Parker",1,1,14,17
2710 DATA 18,"Shek-O Road",1,1,14,18
2720 DATA 19,"Turtle Cove Beach",1,1,14,19
2730 DATA 20,"Hairpin Beach",1,1,14,20
2740 DATA 21,"Stanley",4,1,6,7,9,14,21
2750 DATA 22,"Chung Horn Wan Road",2,1,6,9,22
2760 DATA 23,"Repulse Bay",3,1,5,6,9,23
2770 DATA 24,"Deep Water Bay",1,1,9,24
2780 DATA 25,"Wong Chuk Hang",1,1,9,25
2790 DATA 26,"Ocean Park",2,1,9,10,26
2800 DATA 27,"Aberdeen",3,1,8,9,10,27
2810 DATA 28,"Wah Fu",1,1,8,28
2820 DATA 29,"Pok Fu Lam",1,1,8,29
2830 DATA 30,"Mt. Davis",1,1,8,30
2840 DATA 31,"Kennedy Town",1,1,8,31
2850 DATA 32,"Victoria Peak",2,1,3,15,32
2860 DATA 33,"Magazine Gap",1,1,10,33
2870 DATA 34,"Aberdeen Tunnel",1,1,10,34
2880 DATA 35,"Happy Valley Raceway",2,1,1,19,35
2890 DATA 36,"Garden Street",1,3,3,36,7,46
2900 DATA 37,"Queens Road East",8,3,1,2,4,5,6,7,11,19,37,7,8
2910 DATA 38,"Mt. Nicholson",2,1,5,6,38
2920 DATA 39,"Wong Nei Chong Gap Road",2,1,5,6,39
2930 DATA 40,"Tai Koo Shing",3,1,2,4,16,40
2940 DATA 41,"Fortress Hill",3,1,2,4,16,41
2950 DATA 42,"Tin Hau",3,1,2,4,16,42
2960 DATA 43,"Star Ferry Pier, Hong Kong",4,3,1,2,12,13,43,6,46
2970 DATA 44,"Heng Fa Chuen",1,1,16,44
2980 DATA 45,"Chai Wan",1,1,16,45
2990 DATA 46,"Central",9,4,4,5,6,10,11,15,16,17,19,46,6,36,43
3000 DATA 47,"Tiger Balm Garden",1,1,11,47
3010 DATA 48,"Star Ferry Pier, Kowloon",6,3,12,20,21,22,28,31,48,51,107
3020 DATA 49,"Jordan Road Ferry Pier",3,2,13,23,24,49,52
3030 DATA 50,"Tsuen Wan",3,1,17,22,23,50
3040 DATA 51,"Tsim Sha Tsui, Haiphong & Nathan Rds",4,3,17,21,22,31,51,48,107
3050 DATA 52,"Jordan Rd & Nathan Rd",4,3,17,21,22,31,52,49,53
3060 DATA 53,"Yau Ma Tei & Nathan Rd",6,3,17,18,21,23,24,31,53,52,54
3070 DATA 54,"Mong Kok",6,3,17,18,21,22,24,31,54,53,55
3080 DATA 55,"Prince Edward",5,2,17,18,21,24,31,55,54
3090 DATA 56,"Sham Shui Po",1,1,17,56
3100 DATA 57,"Cheung Sha Wan",1,1,17,57
3110 DATA 58,"Lai Chi Kok",4,1,17,21,22,23,58
3120 DATA 59,"Mei Foo",3,1,17,22,23,59
3130 DATA 60,"Lai King",3,1,17,22,23,60
3140 DATA 61,"Kwai Fong",3,1,17,22,23,61
3150 DATA 62,"Kwai Hing",3,1,17,22,23,62
3160 DATA 63,"Tai Wo Hau",3,1,17,22,23,63
3170 DATA 64,"Shek Kip Mei",5,1,18,21,22,24,31,64
3180 DATA 65,"Lok Fu",1,1,18,65
3190 DATA 66,"Wong Tai Sin",1,1,18,66
3200 DATA 67,"Diamond Hill",1,1,18,67
3210 DATA 68,"Choi Hung Terminal",3,1,18,28,29,68
3220 DATA 69,"Kowloon Bay",1,1,18,69
3230 DATA 70,"Ngau Tau Kong",1,1,18,70
3240 DATA 71,"Kwun Tong",2,1,18,34,71
3250 DATA 72,"Tai Wo Ping",1,1,31,72
3260 DATA 73,"Tsim Sha Tsui Centre",2,2,20,28,73,107
3270 DATA 74,"Hung Hom Train Station",2,1,20,30,74
3280 DATA 75,"Mong Kok",1,1,30,75
3290 DATA 76,"Kowloon Tong",3,1,18,24,30,76
3300 DATA 77,"Tai Wai",1,1,30,77
3310 DATA 78,"Sha Tin",2,1,24,30,78
3320 DATA 79,"Fo Tan (Sha Tin New Town)",2,1,24,30,79
3330 DATA 80,"Chinese University",2,1,24,30,80
3340 DATA 81,"Tai Po",4,1,24,25,27,30,81
3350 DATA 82,"Fanling",3,2,24,26,30,82,84
3360 DATA 83,"Sheung Shui",3,1,24,30,32,83
3370 DATA 84,"Luen Wo Market",1,2,26,84,82
3380 DATA 85,"Hung Leng",1,1,26,85
3390 DATA 86,"Sha Tau Kok",1,1,26,86
3400 DATA 87,"Starling Inlet",1,1,26,87
3410 DATA 88,"Luk Keng",1,1,26,88
3420 DATA 89,"a small crossroad with a sign to Tin Sam",1,1,27,89
3430 DATA 90,"Shuen Wan",1,1,27,90
3440 DATA 91,"Tolo Harbor",1,2,27,91,92
3450 DATA 92,"Plover Cove Dock",1,2,27,92,91
3460 DATA 93,"Tai Mei Tuk",1,1,27,93
3470 DATA 94,"Brides's Pool",1,1,27,94
3480 DATA 95,"a rutted crossroad with a dirty sign, 'Ping Long'",1,1,25,95
3490 DATA 96,"a mountain pass by Route Twisk Lookout",1,1,25,96
3500 DATA 97,"Kam Tin Walled Village",1,1,25,97
3510 DATA 98,"a chicken farm near Ho Hok Shan",1,1,25,98
3520 DATA 99,"Yuen Long",3,1,23,25,32,99
3530 DATA 100,"Ping Shan Pagoda",1,1,25,100
3540 DATA 101,"Lau Fau Shan",1,1,25,101
3550 DATA 102,"Puk Wai",1,1,32,102
3560 DATA 103,"Mai Po",1,1,32,103
3570 DATA 104,"Lok Ma Chau",1,1,32,104
3580 DATA 105,"a duck farm near Pak Shek",1,1,32,105
3590 DATA 106,"Royal HK Golf Club",1,1,32,106
3600 DATA 107,"Salisbury Rd",2,4,20,28,107,48,51,73
3610 DATA 108,"Chatham Rd",1,1,28,108
3620 DATA 109,"Kai Tok Airport",1,1,28,109
3630 DATA 110,"Ngau Chi Wan",1,1,28,110
3640 DATA 111,"Tseng Lan Shue",1,1,29,111
3650 DATA 112,"Pik Uk",1,1,29,112
3660 DATA 113,"Wo Mei",1,1,29,113
3670 DATA 114,"Marina Cove, Hebe Haven",1,1,29,114
3680 DATA 115,"Ta Ho Tun",1,1,29,115
3690 DATA 116,"Sai Kung Town",1,1,29,116
3700 DATA 117,"Lucky Factory Estate, Tso Kung Tam",1,1,23,117
3710 DATA 118,"San Miguel Brewery, Ting Kau",1,1,23,118
3720 DATA 119,"Dragon Beach, Tai Lam",1,1,23,119
3730 DATA 120,"Tuen MunCastle Peak",1,1,23,120
3740 DATA 121,"Ching Chung Koon",1,1,23,121
3750 DATA 122,"Miu Fat Monastery",1,1,23,122
3760 DATA 123,"Lion Rock Tunnel",1,1,24,123
3770 DATA 124,"Amah Rock",1,1,24,124
3780 DATA 125,"Kak Tin",1,1,24,125
3790 DATA 126,"Tsang Tai Uk",1,1,24,126
3800 DATA 127,"Lyemun",2,1,33,34,127
3830 FOR I=1 TO T:READ TR,T$(I),T2(I):FOR J=1 TO T2(I):READ T3(I,J):NEXT J:READ T1(I):FOR J=1 TO T2(I)-1:READ T4(I,J):NEXT J:T0$(TR,1)=P4$(T3(TR,1)):T0$(TR,2)=P4$(T3(TR,T2(TR))):NEXT I:RETURN
3910 DATA 1,"#1 Bus",6,5,43,7,37,8,35
3940 DATA 5,3,3,3,2,9
3950 DATA 2,"#2 Bus",16,5,43,7,37,8,9,10,11,12,42,41,13,14,40,15,16
3960 DATA 4,3,3,3,2,2,3,3,2,3,3,3,3,3,3,2
3970 DATA 3,"Peak Tram",2,32,36
3980 DATA 12,4
3990 DATA 4,"Tram A",21,1,2,3,4,5,6,46,7,37,8,9,10,11,12,42,41,13,14,40,15,16
4000 DATA 4,4,3,3,3,2,2,2,2,3,2,3,3,2,3,4,4,4,4,4,3
4010 DATA 5,"#61 Bus",8,6,46,7,37,8,38,39,23
4020 DATA 20,2,3,3,2,4,4,4
4030 DATA 6,"#6 Bus",10,6,46,7,37,8,38,39,23,22,21
4040 DATA 12,2,3,3,2,4,4,4,5,5
4050 DATA 7,"#260 Express Bus",3,6,37,21
4060 DATA 25,6,19
4070 DATA 8,"#7 Bus",11,6,5,4,3,2,1,31,30,29,28,27
4080 DATA 5,2,3,3,2,3,3,4,4,3,3
4090 DATA 9,"#73 Bus",7,21,22,23,24,25,26,27
4100 DATA 15,5,5,7,8,8,7
4110 DATA 10,"#70 Bus",7,6,46,7,33,34,26,27
4120 DATA 10,2,3,3,4,3,7
4130 DATA 11,"#11 Bus",9,6,46,7,37,8,9,10,11,47
4140 DATA 7,2,3,3,2,2,3,3,9
4150 DATA 12,"Star Ferry",2,43,48
4160 DATA 6,12
4170 DATA 13,"Jordan Road Ferry",2,43,49
4180 DATA 12,16
4190 DATA 14,"#14 Bus",7,15,16,17,18,19,20,21
4200 DATA 45,3,5,6,6,5,5
4210 DATA 15,"#15 Bus",4,6,46,7,32
4220 DATA 17,2,3,8
4230 DATA 16,"MTRRed",13,46,7,11,12,42,41,13,14,40,15,16,44,45
4240 DATA 8,2,2,2,2,2,2,2,2,2,2,2,2
4250 DATA 17,"MTRGreen",16,46,7,51,52,53,54,55,56,57,58,59,60,61,62,63,50
4260 DATA 3,2,4,2,2,2,2,2,2,2,2,2,2,2,2,2
4270 DATA 18,"MTRBlue",12,53,54,55,64,76,65,66,67,68,69,70,71
4280 DATA 3,2,2,2,2,2,2,2,2,2,2,2
4290 DATA 19,"Tram B",10,3,4,5,6,46,7,37,8,10,35
4300 DATA 4,3,3,2,2,2,2,3,2,8
4310 DATA 20,"Mini Bus",4,48,107,73,74
4320 DATA 3,2,2,3
4330 DATA 21,"#6A Bus",8,48,51,52,53,54,55,64,58
4340 DATA 3,2,2,3,2,2,3,4
4350 DATA 22,"#2 Bus",12,48,51,52,54,64,58,59,60,61,62,63,50
4360 DATA 3,2,2,4,3,4,2,3,3,3,3,3
4370 DATA 23,"#68 Bus",17,49,53,64,58,59,60,61,62,63,50,117,118,119,120,121,122
4380 DATA 99,5,2,3,4,2,3,3,3,3,3,5,7,6,8,6,8,6
4390 DATA 24,"#70 Bus",16,49,53,54,55,64,76,123,124,125,126,78,79,80,81,82,83
4400 DATA 5,2,2,2,4,4,5,4,5,4,5,6,5,6,5,4
4410 DATA 25,"#64K Bus",8,81,95,96,97,98,99,100,101
4420 DATA 10,5,6,5,6,5,6,6
4430 DATA 26,"#69K Bus",6,82,84,85,86,87,88
4440 DATA 12,2,8,5,6,5
4450 DATA 27,"#74R Bus",7,81,89,90,91,92,93,94
4460 DATA 15,5,5,6,3,8,10
4470 DATA 28,"#5 Bus",6,48,107,108,109,110,68
4480 DATA 6,2,3,4,4,3
4490 DATA 29,"#92 Bus",7,68,111,112,113,114,115,116
4500 DATA 9,3,4,3,4,3,4
4510 DATA 30,"Kowloon-Canton Railway",10,74,75,76,77,78,79,80,81,82,83
4520 DATA 8,3,3,3,4,3,3,4,4,4
4530 DATA 31,"#9 Bus",8,48,51,52,53,54,55,64,72
4540 DATA 5,2,2,2,3,2,3,3
4550 DATA 32,"#76K Bus",7,99,102,103,104,105,106,83
4560 DATA 15,6,6,5,6,6,6
4570 DATA 33,"HYF Ferry",2,15,127
4580 DATA 15,12
4590 DATA 34,"Sampan",2,71,127
4600 DATA 30,10
4630 IF M0>899 THEN 4650
4640 GOSUB 4690:RETURN
4650 PRINT:PRINT"So sorry, it is after 12 midnight and you'll have to get to":PRINT"your sampan and out of Hong Kong as quickly as possible.":GOTO 1730
4690 HR=INT(M0/60):M=M0-60*HR:IF HR<4 THEN HP=9+HR ELSE HP=HR-3
4700 IF M0<181 OR M0>900 THEN X$="a.m."ELSE X$="p.m."
4710 HP=100*HP+M+10000:H$=STR$(HP):PRINT:PRINT"Time "MID$(H$,3,2)" : "RIGHT$(H$,2)" "X$:RETURN
4750 GOSUB 4790:IF A$="Y"OR A$="N"THEN RETURN
4760 INPUT"Don't understand your answer. Enter 'Y' or 'N' please";A$:GOTO 4750
4790 IF A$=""THEN A$="Y":RETURN
4800 A$=LEFT$(A$,1):IF A$>="A"AND A$<="Z"THEN RETURN
4810 A$=CHR$(ASC(A$)-32):RETURN
4840 PRINT:PRINT"Your pickup notebook shows:":FOR I=1 TO BG:IF P(I)=1 THEN 4880
4870 PRINT I,P0$(I)
4880 NEXT I:PRINT:GOSUB 5000:RETURN
4910 FOR I=1 TO PS-1:K=I+INT((PS+1-I)*RND(1)):J=PN(I):PN(I)=PN(K):PN(K)=J:X$=P0$(I):P0$(I)=P0$(K):P0$(K)=X$:A=P3(I):P3(I)=P3(K):P3(K)=A:FOR J=1 TO 4
4940 A=P1(I,J):P1(I,J)=P1(K,J):P1(K,J)=A:A=P2(I,J):P2(I,J)=P2(K,J):P2(K,J)=A:NEXT J:NEXT I:RETURN
5000 X$="Press any key to continue.":GOSUB 5040:WHILE LEN(INKEY$)=0:R=R+1:WEND:PRINT:RETURN
5040 PRINT TAB((80-LEN(X$))/2);X$;:RETURN
5070 FOR J=1 TO 2500:NEXT J:RETURN