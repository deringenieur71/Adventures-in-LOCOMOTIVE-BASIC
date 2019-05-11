1 REM VALHALLA
2 REM DIGITIZED BY COLIN APPLEBY
3 REM DEBUGGED BY CHRIS DESPINIDIS
4 REM CONVERTED FROM SPECTRUM ORIGINAL LISTING TO NEWBRAIN
5 REM DATED 8 MAY 2016
6 REM CONVERTED TO AMSTRAD CPC 28 APRIL 2019 BY SRS
7 MODE 2
8 RANDOMIZE TIME
10 REM MASTER ROUTINE
20 GOSUB 1000
30 CLS
40 GOSUB 1500
50 GOSUB 9000
60 yr=1:se=1:h=0
70 GOSUB 2000
80 GOSUB 9000
90 GOSUB 2500
100 GOSUB 9000
110 GOSUB 3000
120 GOSUB 9000
130 IF se=2 THEN GOSUB 4000
140  se=se+1
150 IF se=4 AND yr=1 THEN GOTO 5000
160 IF se=4 THEN GOSUB 9900
170 GOTO 70
1000 DIM a(4,5):DIM f(4):DIM p(4)
1010 FOR x=1 TO 4
1020 FOR y=1 TO 5
1030  a(x,y)=(RND-RND)/5
1040 NEXT y
1050  p(x)=INT(RND*50+1)
1060 NEXT x
1070  l=INT(RND*6)+3
1080 DIM n$(4):DIM p$(4)
1090 RESTORE 9500
1100 FOR x=1 TO 4
1110 READ i$
1120 READ j$
1130  n$(x)=i$
1140  p$(x)=j$
1150 NEXT x
1160 RETURN 
1500 PRINT "THE ROAD TO VALHALLA"
1520 PRINT "You have emigrated from the kingdom of Norway to Iceland. Landing at Helmsdale, you found a settlement in true Viking fashion."
1580 PRINT "After the long, stormy voyage, you are ";
1590 IF l>6 THEN PRINT "still in the best of health."
1600 IF l<=6 AND l>5 THEN PRINT "in moderate health."
1610 IF l<=5 AND l>4 THEN PRINT "rather the worse for""wear."
1620 IF l<=4 THEN PRINT "in a poor state of""health."
1640 PRINT "You know the time has come to think seriously of the after-life. You must increase your honour so you can reach Valhalla when the time comes."
1680 PRINT "You alter your honour in your dealings with the other four clans of settlers, led by Thor, Odin, Olaf and Lars. You also gain honour by increasing your  worldly wealth.";
1730 RETURN 
2000 PRINT 
2010 IF se=1 THEN PRINT "Spring";
2020 IF se=2 THEN PRINT "Summer";
2030 IF se=3 THEN PRINT "Autumn";
2040 IF se=4 THEN PRINT "Winter";
2050 PRINT " of year ";yr
2070 PRINT "Your possessions are:"
2080 FOR x=1 TO 4
2090 PRINT p(x);" ";p$(x)
2100 NEXT x
2110 PRINT 
2120 n=0
2130 FOR x=1 TO 4
2140 IF a(x,1)>0 THEN GOSUB 5500
2150 NEXT x
2160 IF n>0 THEN GOSUB 5600
2170 PRINT 
2180 RETURN 
2500 CLS
2510 PRINT "These are your options:"
2520 PRINT "1. Give away some of your Possessions"
2530 PRINT "2. Do nothing"
2540 PRINT "3. Steal somebodys possessions"
2550 PRINT "4. Kill somebodys possessions"
2555 PRINT
2560 PRINT "Which do you want?"
2570 INPUT j
2580 IF j<1 OR j>4 OR j<>INT(j)THEN GOTO 2500
2590 j=j-2
2600 n=0
2610 k=0
2620 IF j<>0 THEN GOSUB 5800
2630 IF n<>0 THEN f(n)=ABS (f(n)-j)
2640 IF j=-1 THEN GOSUB 6000
2650 IF j=1 THEN GOSUB 6100
2660 IF j=2 THEN GOSUB 6200
2670 FOR x=1 TO 4
2680 IF x=n THEN GOTO 2710
2690 a(x,1)=a(x,1)-j*k*a(x,n+1)/5
2700 h=h-SGN(a(x,1)*j*k*a(x,n+1))/2
2710 NEXT x
2720 RETURN 
3000 FOR x=1 TO 4
3010 s=INT(RND*4)+1
3020 GOSUB 6500
3030 FOR y=1 TO 4
3040 IF t<>1 THEN a(t-1,s)=a(t-1,s)-j*k*a(y,t)
3050 NEXT y
3060 IF t=1 THEN f(x)=ABS (f(x)+j)
3070 NEXT x
3080  s=INT(RND*4)+1
3090 GOSUB 7000
3100 RETURN 
4000 CLS
4020 PRINT "Do you want to go to the moot this year?"
4030 INPUT a$
4040 IF a$<>"" THEN IF a$<>"Y" AND a$<>"y" THEN GOSUB 9000
4050 IF a$<>"" THEN IF a$<>"Y" AND a$<>"y" THEN RETURN
4060 CLS
4070 PRINT "At the moot, you can settle your differences with any one clan."
4090 PRINT 
4100 FOR x=1 TO 4
4110 PRINT x;". ";n$(x)
4120 NEXT x
4130 PRINT "Which one do you want?"
4140 INPUT a
4150 IF a<1 OR a>4 OR a<>INT(a) THEN GOTO 4060
4160  f(a)=0
4170  a(a,1)=RND*2
4190 PRINT "It is the end of the moot. The chief of the Althing from Reykjavik approaches you and tells you that as far as your honour is concerned, you are doing ";
4240 IF INT(h)>0 THEN PRINT "fine."
4250 IF INT(h)=0 THEN PRINT "averagely well."
4260 IF INT(h)<0 THEN PRINT "badly."
4270 GOSUB 9000
4280 RETURN 
5000 FOR x=1 T O 4
5010  h=h-ABS(f(x))+p(x)/15
5020 NEXT x
5040 PRINT "You have reached the end of your life."
5050  d=1+RND*2
5060 IF h>d THEN PRINT "Valhalla welcomes you."
5070 IF h<=1 THEN PRINT "Long may you rot in Hell"
5090 PRINT "Do you wish to play again?"
5100 INPUT a$
5110 IF a$<>"" THEN IF LEFT$(a$,1)="Y" OR LEFT$(a$,1)="y" THEN RUN
5120 GOTO 10000
5500  n=n+1
5510 IF n=1 THEN f$=n$(x)
5520 IF n=2 THEN f$=n$(x)+" and "+f$
5530 IF n>2 THEN f$=n$(x)+", "+f$
5540 RETURN 
5600 PRINT f$;
5610 IF n=1 THEN PRINT " has";
5620 IF n>1 THEN PRINT " have";
5630 PRINT " sent good wishes."
5640 RETURN 
5800 FOR x=1 TO 4
5810 PRINT x;". ";n$(x)
5820 NEXT x
5830 PRINT:PRINT "Which one do you want?"
5840 INPUT n
5850 IF n<1 OR n>4 OR n<>INT(n)THEN n=INT(RND*4)+1
5860 FOR x=1 TO 4
5870 PRINT x;". ";p$(x)
5880 NEXT x
5890 PRINT:PRINT "Which type of possession?"
5900 INPUT k
5910 IF k<1 OR k>4 OR k<>INT(k)THEN k=INT(RND*4)+1
5920 RETURN 
6000  ng=INT(RND*p(k)+.9)
6020 PRINT n$(n);" thanks you for the ";ng;p$(k);"."
6030  p(k)=p(k)-ng
6040 IF a(n,1)<0 THEN h=h-1
6050 IF a(n,1)>=0 THEN h=h+7.5
6060  a(k,1)=a(k,1)+k
6070 RETURN 
6100  ns=INT(RND*40+1)
6120 PRINT "We have stolen ";ns;" of ";n$(n);"'s ";p$(k);"."
6130  p(k)=p(k)+ns
6140 IF a(n,1)>=0 THEN h=h-(a(n,1)+.2)
6150 IF a(n,1)<0 THEN h=h+1.5
6160  a(n,1)=a(n,1)-1.5
6170 RETURN
6200  nk=INT(RND*50+1)
6220 PRINT "We have killed ";nk;" of ";n$(n);"'s ";p$(k);"."
6230 IF a(n,1)>=0 THEN h=h-2*(a(n,1)+.5)
6240 IF a(n,1)<0 THEN h=h+2.5
6250  a(n,1)=a(n,1)-3
6260 RETURN 
6500  t=INT(RND*4)+1
6510 IF t=s+1 THEN GOTO 6500
6520  d=a(s,t)+(RND-RND)/10
6530 IF d<.01 THEN j=1
6540 IF d<-3 THEN j=2
6550 IF d>=.01 THEN RETURN 
6560 IF j=1 THEN s$="stole"
6570 IF j=2 THEN s$="killed"
6580  k=1+INT(ABS(a(s,t)))
6590 IF k>4 THEN k=4
6600 IF t=1 THEN GOSUB 7400
6610 IF t<>1 THEN GOSUB 7500
6620 PRINT n$(s)+" "+s$+" "+STR$(q)+" of "+w$+p$(k)+"."
6630 RETURN 
7000 IF a(s,1)+(RND-RND)/10<=0 THEN RETURN 
7010  q=INT(RND*50)+1
7020  k=INT(RND*4)+1
7030  p(k)=p(k)+q
7040 PRINT n$(s);" sends you ";q;" ";p$(k);"."
7050  f(s)=f(s)-1
7060 RETURN 
7400  q=INT(RND*p(k)+.9)
7410  p(k)=ABS (p(k)-q)
7420  w$="your "
7430 RETURN 
7500  q=INT(RND*50)+1
7510  w$=n$(t-1)+"s "
7520 RETURN 
9000 PRINT:PRINT "Press a key to continue"
9020 while inkey$="":wend
9030 CLS
9040 RETURN 
9500 DATA "Thor","sheep"
9510 DATA "Odin","cattle"
9520 DATA "Olaf","horses"
9530 DATA "Lars","serfs"
9900  se=1
9910  yr=yr+1
9920 RETURN 
10000 END