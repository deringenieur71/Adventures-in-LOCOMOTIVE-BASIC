100 MODE 2:INK 0,26:INK 1,0:BORDER 26:LOCATE 1,10:X$="Subway Scavenger":GOSUB 5540:LOCATE 1,13:X$="(c) by David H. Ahl, 1986":GOSUB 5540:LOCATE 1,16:X$=CHR$(24)+"Converted to CPC 2017 by SRS"+CHR$(24):GOSUB 5540:LOCATE 1,23:GOSUB 5500:GOSUB 1650
140 LOCATE 1,21:X$="(Initializing data  please be patient)":GOSUB 5540:DIM PN(20),P$(20),P2(20),P0(20,5),P1(20,5),L(20):DIM D(20),S0$(300),S(300),S1(300,6):DIM T$(12),T1(12),T2(12,50),T0$(12,2),D0(20):PS=20:S=264:T1=11:GOSUB 5680
190 L=10:T=20:GOSUB 1790:GOSUB 2060:GOSUB 4770:WHILE R>32767:R=R-65635:WEND:RANDOMIZE R:GOSUB 5570:S0=21:LOCATE 1,21:PRINT TAB(60)" ":GOSUB 5500:PRINT:INPUT"Do you want to be able to deliver after 5:00 pm (easier)";A$:GOSUB 5310
250 IF A$="Y"THEN TM=540:TM$="6:00":GOTO 270
260 TM=480:TM$="5 : 00"
270 FOR I=1 TO 5:D(I)=1:NEXT I:FOR I=6 TO 10:D(I)=2:NEXT I:CLS:PRINT"You may want to print or copy this screen for later reference.":PRINT:GOSUB 5400
350 GOSUB 5150:PRINT"You have arrived at "S0$(S0)"station.":PRINT"Trains that stop at this station:":FOR I=1 TO S(S0):PRINT" "T$(S1(S0,I)):NEXT I:IF P=0 THEN GOSUB 1110:GOTO 540
410 IF S0<>T2(TR,1)AND S0<>T2(TR,T1(TR))THEN 430
420 PRINT"End of the line. You'll have to get off.":GOTO 450
430 INPUT"Do you want to get off";A$:GOSUB 5310:IF A$="N"THEN 700
450 P=0:PRINT"Do you want to:":PRINT" Make a pickup (P)":PRINT" Make a delivery (D)":PRINT" Check your logbook (C)":PRINT" Get another train (T)":INPUT"Your choice please (P, D, C, or T)";A$
490 GOSUB 5360:IF A$="P"OR A$="D"THEN 760 ELSE IF A$="T"THEN 540
500 IF A$="C"THEN GOSUB 5400:GOTO 450
510 INPUT"Not a valid choice. Enter P, D, C, or T please.";A$:GOTO 490
540 GOSUB 5150
550 R=INT(1+S(S0)*RND(1)):TR=S1(S0,R):IF S0=T2(TR,1)THEN D0=2:GOTO 600
580 IF S0=T2(TR,T1(TR))THEN D0=1:GOTO 600
590 D0=INT(1+2*RND(1))
600 PRINT"Here comes the "T$(TR)" train to"T0$(TR,D0):MI=MI+1:INPUT"Do you want to get on";A$:GOSUB 5310:IF A$="N"THEN 550
640 FOR I=1 TO T1(TR):IF T2(TR,I)<>S0 THEN NEXT I:PRINT"ERROR at Line 465"
660 T2=I:IF D0=1 THEN T3=-1 ELSE T3=1
700 P=1:PRINT"You are on the "T$(TR)" train to "T0$(TR,D0):GOSUB 1230:T2=T2+T3:S0=T2(TR,T2):MI=MI+INT(2+1.3*RND(1)):GOTO 350
760 IF A$="P"THEN X$="pickup"ELSE X$="delivery"
770 PRINT"Which "X$;:INPUT" do you want to make (by Logbook number)";A:IF D(A)<>0 THEN 820
790 INPUT"That number seems to be in error. Want to check your logbook";A$:GOSUB 5310:IF A$="Y"THEN GOSUB 5400
810 GOTO 450
820 PRINT"That "X$" is at "P$(A):FOR I=1 TO P2(A):IF P0(A,I)=S0 THEN 870
850 NEXT I:PRINT"which is too far to walk from this station.":PRINT"Perhaps you should try something else.":GOTO 450
870 IF P1(A,I)>1 THEN X$="s"ELSE X$=""
880 PRINT"which is"P1(A,I)"block"X$" from here. Off you go.":MI=MI+2*P1(A,I)+6:D=D+1:IF D(A)=2 THEN 950
930 PRINT:PRINT"You find someone to sign for the package.":D(A)=0:GOTO 1000
950 L=L+1:PRINT"You pick up a package and log it in as no."L:PRINT"The address on it is "P$(L):D(A)=0:D(L)=1:GOTO 1020
1000 IF D=15 THEN 1580
1010 IF P2(A)=1 THEN X$=""ELSE X$="S"
1020 PRINT:"From here you can walk to the following subway station"X$" : ":IF P2(A)=1 THEN PRINT" "S0$(P0(A,1)):GOTO 350
1040 FOR I=1 TO P2(A):PRINT" "I"  "S0$(P0(A,I)):NEXT I
1060 INPUT"Which station do you want to go to (by number)";B:IF B<1 OR B>P2(A)THEN PRINT"Not a valid response.":GOTO 1060
1080 S0=P0(A,B):MI=MI+3+P1(A,B):GOTO 350
1110 T0=T0+1:IF T0<=T THEN 1190
1120 PRINT:PRINT"You have spent the entire $20 your boss gave you on tokens.":IF TK=0 THEN 1150
1140 PRINT"Moreover, you have used up your own money as well.":GOTO 1530
1150 TK=1:INPUT"Do you want to buy tokens with your own money";A$:GOSUB 5310:IF A$"N"THEN PRINT"Okay, that's it then.":GOTO 1530
1170 R=INT(300+600*RND(1))/100:PRINT"You have exactly $"R;:PRINT"so you can buy"INT(R)"more tokens.":T=T+INT(R)
1190 RETURN
1230 IF RND(1)>0.05 THEN 1290
1240 PRINT"One of the car doors refuses to close and the train can't move.":R=INT(1+2.5*RND(1)):MI=MI+R:IF R>1 THEN X$="s"ELSE X$=""
1260 PRINT"You're stuck here for"R"minute"X$"."
1290 IF RND(1)>0.35 THEN 1440
1300 IF RND(1)>0.05 THEN RETURN
1310 PRINT"Some real unsavory types are whooping it up in the car across from":INPUT"your seat. Do you want to move to another car";A$:GOSUB 5310:IF A$="Y"THEN IF RND(1)>0.05 THEN 1350 ELSE 1370
1340 IF RND(1)>0.05 THEN 1360 ELSE 1380
1350 PRINT"They jeer at you but let you pass. All is okay...for now.":RETURN
1360 PRINT"They look at you and try to bait you, but you avoid them.":RETURN
1370 PRINT"Uh oh. Two of them get up and block your way."
1380 PRINT"Oh my, oh my. They're all moving to surround you.":PRINT"They pull knives and demand your money.":GOSUB 5480:PRINT"You, deciding that discretion is the better part of valor, give":PRINT"them all your money and call it quits for the day."
1410 GOTO 1530
1440 IF RND(1)>0.008000001 THEN RETURN
1450 PRINT"Uh oh. The train is slowing down and seems to be stopping.":GOSUB 5480:PRINT"You're stuck here in the tunnel.":GOSUB 5480:PRINT"A trainman finally comes through and announces, 'It's just a":R=INT(10+35*RND(1)):MI=MI+R
1490 PRINT"fire on the tracks folks. We'll be under way in a few minutes.'":PRINT"In fact, the delay is more like"R"minutes!":RETURN
1530 IF D=15 THEN 1580
1540 PRINT:PRINT"You made it to"D"Locations, but":PRINT"your log still shows the following items:":GOSUB 5400:GOSUB 5260:PRINT"Perhaps you'll be able to do better tomorrow.":GOTO 1610
1580 GOSUB 5260:PRINT:PRINT TAB(25)"CONGRATULATIONS !":PRINT:PRINT"You made all your deliveries and pick-ups successfully in the":PRINT"Largest city in the world. Very good!"
1610 PRINT"You used $"T0" for tokens.":PRINT:INPUT"Would you like to try again";A$:GOSUB 5310:IF A$="Y"THEN RUN ELSE CLS:PRINT"Bye for now.":END
1650 CLS:X$="Subway Scavenger":GOSUB 5540:PRINT:PRINT:PRINT" You have a job with a messenger/courier service located in":PRINT"mid-town Manhattan. Today, you have five packages to deliver and"
1680 PRINT"five packages to pick up for delivery to other locations in the":PRINT"city. So, in total you must visit 15 different locations.":PRINT:PRINT" You can use 264 stations of the New York Subway System which"
1710 PRINT"are serviced by the following 11 trains: A, B, CG, D, E, F, N, 1,":PRINT"2, 4, and 7.":PRINT:PRINT" You must complete all your deliveries and pickups by 5:00 pm.":PRINT"Your boss has given you $20 for tokens (which will allow for a few"
1750 PRINT"wrong trains). Any money that you don't use on tokens is yours to":PRINT"keep. Good luck! (You'll need it.)":RETURN
1790 FOR I=1 TO PS:READ PN(I),P$(I),P2(I):FOR J=1 TO P2(I):READ P0(I,J),P1(I,J):NEXT J:NEXT I:RETURN:DATA 1,"Curator, Museum of Natural History",1,17,1
1850 DATA 2,"George Washington Bridge Bus Terminal",1,5,1
1860 DATA 3,"West Side Tennis Club, Forest Hills",1,75,4
1870 DATA 4,"Nathan's at Coney Island Amusement Park",1,95,2
1880 DATA 5,"Big Al's Discount Mart, Rockaway Blvd, Woodhaven",3,50,1,49,9,51,9
1890 DATA 6,"Apollo Theater, 125th St, Harlem",2,11,1,12,9
1900 DATA 7,"Met's Dugout, Shea Stadium",1,260,3
1910 DATA 8,"Press Room, Yankee Stadium",1,246,3
1920 DATA 9,"Lion Keeper, Bronx Zoo",2,204,5,205,8
1930 DATA 10,"Borough Hall, Brooklyn",2,32,1,221,2
1940 DATA 11,"Brooklyn Academy of Music",1,67,2
1950 DATA 12,"Registrar, Brooklyn College, Flatbush",1,234,1
1960 DATA 13,"Computer Science Dept, NYU, Washington Sq",1,25,3
1970 DATA 14,"NY Botanical Gardens",1,55,4
1980 DATA 15,"Windows on the World, World Trade Center",3,29,1,28,5,191,1
1990 DATA 16,"Metropolitan Museum of Art",1,249,1
2000 DATA 17,"Computer Education Dept, Columbia Univ.",2,174,2,175,8
2010 DATA 18,"Alice Tully Hall, Lincoln Center",1,181,2
2020 DATA 19,"New York Stock Exchange",2,219,2,252,2
2030 DATA 20,"Lin Chows, Mott St, Chinatown",2,65,4,146,4
2060 FOR I=1 TO S:READ S0,S0$(I),S(I):FOR J=1 TO S(I):READ S1(I,J):NEXT J:NEXT I:RETURN:DATA 1,"207 St/Bdwy/Wash Hts (Manhattan)",1,1
2120 DATA 2,"Dyckman St/Bdwy",1,1
2130 DATA 3,"190 St/Ft Wash Av",1,1
2140 DATA 4,"181 St/Ft Wash Av",1,1
2150 DATA 5,"175 St/GW Bridge",1,1
2160 DATA 6,"168 St/Bdwy (Manhattan)",3,1,3,6
2170 DATA 7,"163 St/Amsterdam Av",1,3
2180 DATA 8,"155 St/St Nicholas Av",1,3
2190 DATA 9,"145 St/St Nicholas Av",3,1,3,4
2200 DATA 10,"135 St/St Nicholas Av",1,3
2210 DATA 11,"125 St/St Nicholas Av",3,1,3,4
2220 DATA 12,"116 St/8 Av",1,3
2230 DATA 13,"110 St/Cathedral Pkwy",1,3
2240 DATA 14,"103 St/Central Pk W",1,3
2250 DATA 15,"96 St/Central Pk W",1,3
2260 DATA 16,"86 St/Central Pk W",1,3
2270 DATA 17,"81 St/Museum Natl History",1,3
2280 DATA 18,"72 St/Central Pk W",1,3
2290 DATA 19,"59 St/Columbus Circle",4,1,3,4,6
2300 DATA 20,"50 St/8 Av",1,2
2310 DATA 21,"42 St/8 Av",2,1,2
2320 DATA 22,"34 St/Penn Station",2,1,2
2330 DATA 23,"23 St/8 Av",1,2
2340 DATA 24,"14 St/8 Av",2,1,2
2350 DATA 25,"W 4 St/Washington Sq",5,1,2,3,4,5
2360 DATA 26,"Spring St/6 Av",1,2
2370 DATA 27,"Canal St/6 Av",2,1,2
2380 DATA 28,"Chambers St/Church St",3,1,2,7
2390 DATA 29,"World Trade Center",1,2
2400 DATA 30,"Bdwy/Nassau St/Fulton St (Manhattan)",3,1,7,8
2410 DATA 31,"High St/Brooklyn Br (Bklyn)",1,1
2420 DATA 32,"Jay St/Borough Hall",2,1,5
2430 DATA 33,"Hoyt St",2,1,11
2440 DATA 34,"Lafayette Av",1,11
2450 DATA 35,"Clinton Av",1,11
2460 DATA 36,"Franklin Av",1,11
2470 DATA 37,"Nostrand Av",1,1
2480 DATA 38,"Kingston Av",1,11
2490 DATA 39,"Utica Av",1,1
2500 DATA 40,"Ralph Av",1,11
2510 DATA 41,"Rockaway Av",1,11
2520 DATA 42,"Bdwy, E NY",1,11
2530 DATA 43,"Liberty Av",1,11
2540 DATA 44,"Van Sicien Av",1,11
2550 DATA 45,"Shepherd Av",1,11
2560 DATA 46,"Euclid Av",1,1
2570 DATA 47,"Grant Av (Brooklyn)",1,1
2580 DATA 48,"80 St/Liberty Av (Queens)",1,1
2590 DATA 49,"88 St/Liberty Av",1,1
2600 DATA 50,"Rockaway Blvd",1,1
2610 DATA 51,"104 St/Liberty Av",1,1
2620 DATA 52,"111 St/Liberty Av",1,1
2630 DATA 53,"Lefferts Blvd (Queens)",1,1
2640 DATA 54,"205 St/Bainbridge Av (Bronx)",1,4
2650 DATA 55,"Bedford Pk Blvd (NY Botanical Garden)",1,4
2660 DATA 56,"Kingsbridge Rd",1,4
2670 DATA 57,"Fordham Rd",1,4
2680 DATA 58,"Tremont Av",1,4
2690 DATA 59,"47-50 St/Rockefeller Center",3,3,4,5
2700 DATA 60,"42 St/Av Americas",4,3,4,5,9
2710 DATA 61,"34 St/Herald Sq",4,3,4,5,10
2720 DATA 62,"23 St/Av Americas",1,5
2730 DATA 63,"14 St/Av Americas",3,5,6,7
2740 DATA 64,"Bdwy/Lafayette St",4,3,4,5,8
2750 DATA 65,"Grand St (Manhattan)",2,3,4
2760 DATA 66,"DeKalb Av/Flatbush Av (Bklyn)",2,4,10
2770 DATA 67,"Atlantic Av/Pacific St/BAM",5,3,4,7,8,10
2780 DATA 68,"179 St/Hillside Av (Queens)",2,2,5
2790 DATA 69,"169 St",1,2
2800 DATA 70,"Parsons Blvd",2,2,5
2810 DATA 71,"Sutphin Av",1,2
2820 DATA 72,"Van Wyck Blvd",1,2
2830 DATA 73,"Union Tpk",2,2,5
2840 DATA 74,"75 Av",1,2
2850 DATA 75,"71 Av/Continental Av/Forest Hills",4,2,5,10,11
2860 DATA 76,"Roosevelt Av",5,2,5,9,10,11
2870 DATA 77,"Queens Plaza",4,2,5,10,11
2880 DATA 78,"23 St/Ely Av (Queens)",2,2,5
2890 DATA 79,"Lexington Av (Manhattan)",2,2,5
2900 DATA 80,"5th Av/53 St",2,2,5
2910 DATA 81,"7th Av/53 St",3,2,3,4
2920 DATA 82,"36 St/4 Av",2,3,10
2930 DATA 83,"9 Av/39 St",1,3
2940 DATA 84,"Ft Hamilton Pky",1,3
2950 DATA 85,"50 St/New Utrecht Av",1,3
2960 DATA 86,"55 St/New Utrecht Av",1,3
2970 DATA 87,"62 St/New Utrecht Av",2,3,10
2980 DATA 88,"71 St/New Utrecht Av",1,3
2990 DATA 89,"79 St/New Utrecht Av",1,3
3000 DATA 90,"18 Av/New Utrecht Av",1,3
3010 DATA 91,"20 Av/86 St",1,3
3020 DATA 92,"Bay Pky/86 St",1,3
3030 DATA 93,"25 Av/86 St",1,3
3040 DATA 94,"Bay 50 St",1,3
3050 DATA 95,"Coney Island/Surf Av (Bklyn)",4,3,4,5,10
3060 DATA 96,"67 Av/Queens Blvd",2,10,11
3070 DATA 97,"63 Dr/Queens Blvd",2,10,11
3080 DATA 98,"Woodhaven Blvd",2,10,11
3090 DATA 99,"Grand Av/Queens Blvd",2,10,11
3100 DATA 100,"Elmhurst Av",2,10,11
3110 DATA 101,"65 St/Bdwy",2,10,11
3120 DATA 102,"Northern Blvd",2,10,11
3130 DATA 103,"46 St/Bdwy",2,10,11
3140 DATA 104,"Steinway St",2,10,11
3150 DATA 105,"2 Av/Houston St",1,5
3160 DATA 106,"Delancey St",1,5
3170 DATA 107,"East Bdwy (Manhattan)",1,5
3180 DATA 108,"York St/Jay St (Brooklyn)",1,5
3190 DATA 109,"Bergen St",2,5,11
3200 DATA 110,"Carroll St",2,5,11
3210 DATA 111,"Smith St",2,5,11
3220 DATA 112,"4 Av/9 St",2,5,10
3230 DATA 113,"7 Av/9 St",1,5
3240 DATA 114,"15 St/Prospect Park",1,5
3250 DATA 115,"Ft Hamilton Pwy",1,5
3260 DATA 116,"Church Av",1,5
3270 DATA 117,"Ditmas Av",1,5
3280 DATA 118,"18 Av/McDonald Av",1,5
3290 DATA 119,"Kings Hwy",1,5
3300 DATA 120,"Avenue U",1,5
3310 DATA 121,"Avenue X",1,5
3320 DATA 122,"Neptune Av",1,5
3330 DATA 123,"W 8th/NY Aquarium",1,5
3340 DATA 124,"7 Av/Flatbush Av",1,4
3350 DATA 125,"Prospect Park",1,4
3360 DATA 126,"Church Av/E 18 St",1,4
3370 DATA 127,"Newkirk Av",1,4
3380 DATA 128,"Kings Hwy/E 16 St",1,4
3390 DATA 129,"Sheepshead Bay",1,4
3400 DATA 130,"Brighton Beach",1,4
3410 DATA 131,"Court Square",1,11
3420 DATA 132,"21 St/Jackson Av (Queens)",1,11
3430 DATA 133,"Greenpoint Av (Bklyn)",1,11
3440 DATA 134,"Nassau Av",1,11
3450 DATA 135,"Metropolitan Av",1,11
3460 DATA 136,"Broadway/Union Av",1,11
3470 DATA 137,"Flushing-Marcy Avs",1,11
3480 DATA 138,"Myrtle-Willoughby Avs",1,11
3490 DATA 139,"Bedford-Nostrand Avs",1,11
3500 DATA 140,"36 St/Northern Blvd",2,10,11
3510 DATA 141,"Lexington Av/59-60 Sts (Manhattan)",2,8,10
3520 DATA 142,"5th Av/59-60 Sts",1,10
3530 DATA 143,"57 St/7 Av",1,10
3540 DATA 144,"Times Sq/42 St/Bdwy",4,6,7,9,10
3550 DATA 145,"Union Sq/14 St",2,8,10
3560 DATA 146,"Canal St/Bdwy (Manhattan)",1,10
3570 DATA 147,"Union St/4 Av",1,10
3580 DATA 148,"Prospect Av",1,10
3590 DATA 149,"25 St/4 Av",1,10
3600 DATA 150,"45 St/4 Av",1,10
3610 DATA 151,"53 St/4 Av",1,10
3620 DATA 152,"59 St/4 Av",1,10
3630 DATA 153,"8 Av/62 St",1,10
3640 DATA 154,"Ft Hamilton Pwy",1,10
3650 DATA 155,"18 Av/64 St",1,10
3660 DATA 156,"20 Av/64 St",1,10
3670 DATA 157,"Bay Pwy/Av O",1,10
3680 DATA 158,"Kings Hwy/W 7 St",1,10
3690 DATA 159,"Avenue U/W 7 St",1,10
3700 DATA 160,"86 St/W 7 St",1,10
3710 DATA 161,"242 St/Van Cortlandt Park",1,6
3720 DATA 162,"238 St/Bdwy",1,6
3730 DATA 163,"231 St/Bdwy (Bronx)",1,6
3740 DATA 164,"225 St/Bdwy (Manhattan)",1,6
3750 DATA 165,"215 St/10 Av",1,6
3760 DATA 166,"207 St/10 Av",1,6
3770 DATA 167,"Dyckman Av",1,6
3780 DATA 168,"191 St/St Nicholas Av",1,6
3790 DATA 169,"181 St/St Nicholas Av",1,6
3800 DATA 170,"157 St/Bdwy",1,6
3810 DATA 171,"145 St/Bdwy",1,6
3820 DATA 172,"137 St/Bdwy",1,6
3830 DATA 173,"125 St/Bdwy",1,6
3840 DATA 174,"116 St/Bdwy/Columbia Univ",1,6
3850 DATA 175,"110 St/Cathedral Pkwy",1,6
3860 DATA 176,"103 St/Bdwy",1,6
3870 DATA 177,"96 St/Bdwy",2,6,7
3880 DATA 178,"86 St/Bdwy",1,6
3890 DATA 179,"79 St/Bdwy",1,6
3900 DATA 180,"72 St/Bdwy",2,6,7
3910 DATA 181,"66 St/Bdwy/Lincoln Center",1,6
3920 DATA 182,"50 St/Bdwy",1,6
3930 DATA 183,"Penn Station/34 St/7 Av",2,6,7
3940 DATA 184,"28 St/7 Av",1,6
3950 DATA 185,"23 St/7 Av",1,6
3960 DATA 186,"18 St/7 Av",1,6
3970 DATA 187,"Christopher St",1,6
3980 DATA 188,"Houston St",1,6
3990 DATA 189,"Canal & Varick Sts",1,6
4000 DATA 190,"Franklin St",1,6
4010 DATA 191,"Chambers St/W Bdwy",2,6,7
4020 DATA 192,"Cortlandt St/World Trade Center",1,6
4030 DATA 193,"Rector St/Greenwich St",1,6
4040 DATA 194,"South Ferry/Battery Park",1,6
4050 DATA 195,"241 St/White Plains Rd (Bronx)",1,7
4060 DATA 196,"238 St/White Plains Rd",1,7
4070 DATA 197,"233 St/White Plains Rd",1,7
4080 DATA 198,"225 St/White Plains Rd",1,7
4090 DATA 199,"219 St/White Plains Rd",1,7
4100 DATA 200,"Gun Hill Rd/White Plains Rd",1,7
4110 DATA 201,"Burke Av/White Plains Rd",1,7
4120 DATA 202,"Allerton Av/White Plains Rd",1,7
4130 DATA 203,"Pelham Pkwy/White Plains Rd",1,7
4140 DATA 204,"Bronx Pk E/White Plains Rd",1,7
4150 DATA 205,"E 180 St/Bronx Zoo",1,7
4160 DATA 206,"E Tremont Av/Boston Rd",1,7
4170 DATA 207,"174 St/Southern Blvd",1,7
4180 DATA 208,"Freeman St",1,7
4190 DATA 209,"Simpson St",1,7
4200 DATA 210,"Intervale Av",1,7
4210 DATA 211,"Prospect Av",1,7
4220 DATA 212,"Jackson Av",1,7
4230 DATA 213,"3 Av/149 St",1,7
4240 DATA 214,"149 St/Grand Concourse (Bronx)",2,7,8
4250 DATA 215,"135 St/Lenox Av (Manhattan)",1,7
4260 DATA 216,"125 St/Lenox Av",1,7
4270 DATA 217,"116 St/Lenox Av",1,7
4280 DATA 218,"110 St/Lenox Av",1,7
4290 DATA 219,"Wall St (Manhattan)",1,7
4300 DATA 220,"Clark St (Brooklyn)",1,7
4310 DATA 221,"Borough Hall/Court St (Bklyn)",2,7,8
4320 DATA 222,"Hoyt St/Fulton St",1,7
4330 DATA 223,"Nevins St",2,7,8
4340 DATA 224,"Bergen St",1,7
4350 DATA 225,"Grand Army Plaza, Prospect Park",1,7
4360 DATA 226,"Eastern Pkwy/Brooklyn Museum",1,7
4370 DATA 227,"Franklin Av/Eastern Pkwy",1,7
4380 DATA 228,"President St",1,7
4390 DATA 229,"Sterling St/Nostrand Av",1,7
4400 DATA 230,"Winthrop St/Nostrand Av",1,7
4410 DATA 231,"Church Av/Nostrand Av",1,7
4420 DATA 232,"Beverley Rd/Nostrand Av",1,7
4430 DATA 233,"Newkirk Av/Nostrand Av",1,7
4440 DATA 234,"Flatbush Av/Bklyn College",1,7
4450 DATA 235,"Woodlawn/Jerome Av (Bronx)",1,8
4460 DATA 236,"Mosholu Pkwy",1,8
4470 DATA 237,"Bedford Park Blvd",1,8
4480 DATA 238,"Kingsbridge Rd",1,8
4490 DATA 239,"Fordham Rd/Jerome Av",1,8
4500 DATA 240,"183 St/Jerome Av",1,8
4510 DATA 241,"Burnside Av/Jerome Av",1,8
4520 DATA 242,"176 St/Jerome Av",1,8
4530 DATA 243,"Mt Eden Av/Jerome Av",1,8
4540 DATA 244,"170 St/Jerome Av",1,8
4550 DATA 245,"167 St/River Av",1,8
4560 DATA 246,"161 St/Yankee Stadium (Bronx)",2,4,8
4570 DATA 247,"",1,11
4580 DATA 248,"125 St/Lexington Av (Manhattan)",1,8
4590 DATA 249,"86 St/Lexington Av/Metropolitan Museum",1,8
4600 DATA 250,"42 St/Grand Central Sta",2,8,9
4610 DATA 251,"Bklyn Bridge/Worth St",1,8
4620 DATA 252,"Wall St/Bdwy",1,8
4630 DATA 253,"Bowling Green (Manhattan)",1,8
4640 DATA 254,"Nostrand Av/Eastern Pkwy",1,8
4650 DATA 255,"Rockaway Av/Livonia Av",1,8
4660 DATA 256,"New Lots Av (Brooklyn)",1,8
4670 DATA 257,"Queensboro Plaza (Queens)",1,9
4680 DATA 258,"61 St/Roosevelt Av",1,9
4690 DATA 259,"Junction Blvd",1,9
4700 DATA 260,"Willets Point/Shea Stadium",1,9
4710 DATA 261,"Main St/Flushing (Queens)",1,9
4720 DATA 262,"Classon Av",1,11
4730 DATA 263,"Clinton-Washington Avs",1,11
4740 DATA 264,"Fulton St/Lafayette Av",1,11
4770 FOR I=1 TO T1:READ TR,T$(I),T1(I):FOR J=1 TO T1(I):READ T2(I,J):NEXT J:T0$(TR,1)=S0$(T2(TR,1)):T0$(TR,2)=S0$(T2(TR,T1(TR))):NEXT I:RETURN:DATA 1,"A - 8 Av Express",29,1,2,3,4,5,6,9,11,19,21,22,24,25,27,28
4860 DATA 30,31,32,33,37,39,46,47,48,49,50,51,52,53
4870 DATA 2,"E - 8 Av Local",24,68,69,70,71,72,73,74,75,76,77,78,79,80,81,20,21
4880 DATA 22,23,24,25,26,27,28,29
4890 DATA 3,"B - Av Americas Express",36,6,7,8,9,10,11,12,13,14,15,16,17,18
4900 DATA 19,81,59,60,61,25,64,65,67,82,83,84,85,86,87,88,89,90,91,92,93,94,95
4910 DATA 4,"D - Av Americas Express",26,54,55,56,57,58,246,9,11,19,81,59,60
4920 DATA 61,25,64,65,66,67,124,125,126,127,128,129,130,95
4930 DATA 5,"F - Av Americas Local",37,68,70,73,75,76,77,78,79,80
4940 DATA 59,60,61,62,63,25,64,105,106,107,108,32,109,110
4950 DATA 111,112,113,114,115,116,117,118,119,120,121,122,123,95
4960 DATA 6,"1 - Bdwy-7th Av Local",38,161,162,163,164,165,166,167,168,169,6
4970 DATA 170,171,172,173,174,175,176,177,178,179,180,181,19,182,144,183,184
4980 DATA 185,186,63,187,188,189,190,191,192,193,194
4990 DATA 7,"2 - 7th Av Express",49,195,196,197,198,199,200,201,202,203,204
5000 DATA 205,206,207,208,209,210,211,212,213,214,215,216,217,218,177,180,144
5010 DATA 183,63,191,28,30,219,220,221,222,223,67,224,225,226,227,228,229,230
5020 DATA 231,232,233,234
5030 DATA 8,"4 - Lexington Av Express",29,235,236,237,238,239,240,241,242,243
5040 DATA 244,245,246,214,248,249,141,250,145,64,251,30,252,253,221,223,67,254
5050 DATA 255,256
5060 DATA 9,"7 - Flushing Express",9,144,60,250,257,258,76,259,260,261
5070 DATA 10,"N - Broadway Express",40,75,96,97,98,99,100,76,101,102,103,104
5080 DATA 140,77,141,142,143,144,61,145,146,66,67,147,112,148,149,82,150,151
5090 DATA 152,153,154,87,155,156,157,158,159,160,95
5100 DATA 11,"CG - Bklyn/Queens Crosstown",29,75,96,97,98,99,100,76,101,102,
5110 DATA 103,104,140,77,131,132,133,134,135,136,137,138,139,262,263,264,33,
5120 DATA 109,110,111
5150 IF MI>TM THEN 5220
5160 GOSUB 5260:IF L0=1 THEN RETURN
5180 IF MI<180 THEN RETURN
5190 IF P=1 THEN RETURN
5200 PRINT:PRINT"Time for a lunch break. Chili dog and cola. Burp!":PRINT:MI=MI+INT(24+20*RND(1)):L0=1:RETURN
5220 PRINT:PRINT"So sorry, it is after "TM$"pm and the places to which":PRINT"you want to go will be closed.":GOTO 1530
5260 HR=INT(MI/60):M=MI-60*HR:IF HR<4 THEN HP=9+HR ELSE HP=HR-3
5270 HP=100*HP+M+10000:H$=STR$(HP):PRINT:PRINT"Time "MID$(H$,3,2)":"RIGHT$(H$,2):RETURN
5310 IF A$=""THEN A$="Y":RETURN
5320 GOSUB 5360:IF A$="Y"OR A$="N"THEN RETURN
5330 INPUT"Don't understand your answer. Enter 'Y' or 'N' please";A$:GOTO 5320
5360 A$=LEFT$(A$,1):IF A$>="A"AND A$<="Z"THEN RETURN
5370 A$=CHR$(ASC(A$)-32):RETURN
5400 PRINT:PRINT TAB(20)"Delivery - Pick-up Log":PRINT:FOR I=1 TO 15:IF D(I)=0 OR D(I)=3 THEN 5450
5430 IF D(I)=1 THEN X$="Delivery"ELSE X$="Pick-up"
5440 PRINT I,X$,P$(I)
5450 NEXT I:PRINT:GOSUB 5500:RETURN
5480 FOR I=1 TO 1200:NEXT I:RETURN
5500 X$="Press any key to continue.":GOSUB 5540:WHILE LEN(INKEY$)=0:R=R+1:WEND:PRINT:RETURN
5540 PRINT TAB((80-LEN(X$))/2)X$;:RETURN
5570 FOR I=1 TO PS:D0(I)=I:NEXT I:FOR I=1 TO PS-1:K=I+INT((PS+1-I)*RND(I)):J=PN(I):PN(I)=PN(K):PN(K)=J:X$=P$(I):P$(I)=P$(K):P$(K)=X$:A=P2(I):P2(I)=P2(K)
5610 P2(K)=A:FOR J=1 TO 3:A=P0(I,J):P0(I,J)=P0(K,J):P0(K,J)=A:A=P1(I,J):P1(I,J)=P1(K,J):P1(K,J)=A:NEXT J:NEXT I:RETURN
5680 PRINT CHR$(7):RETURN