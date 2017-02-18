 10 DIM ri$(6), r$(35), d(35, 6), v$(12), ob$(45), rn$(45), ob(45)
 15 CLS
 20 PRINT
 25 PRINT
 30 PRINT TAB(9); "Pacy-Face und seine Abenteuer";
 35 PRINT
 40 PRINT
 45 PRINT
 50 PRINT "Januar 1985, von Philipp Koehn geschrieben"
 55 PRINT "PC Uebersetzung Dezember 1993 von Bob Newell"
 60 PRINT "   (mit ein paar kleinen Aenderungen)"
 65 PRINT
 70 PRINT "------------------------------------"
 80 av=12
 85 ao=43
 90 ar=24
 95 am=4
 100 FOR x=1 TO ao
 105 READ ob$(x)
 110 READ rn$(x)
 115 READ ob(x)
 120 NEXT x
 125 FOR x=1 TO ar
 130 READ r$(x)
 135 FOR y=1 TO 6
 140 READ d(x, y)
 145 NEXT y
 150 NEXT x
 155 FOR x=1 TO av
 160 READ v$(x)
 165 NEXT x
 170 FOR x=1 TO 6
 175 READ ri$(x)
 180 NEXT x
 185 FOR x=1 TO am
 190 READ m$(x)
 195 NEXT x
 200 DATA "mehrere Maenner","Madeaenner",1
 205 DATA "eine flasche Bier","Bier",1
 210 DATA "viele Haeuser","Haeuser",2
 215 DATA "wenige Menschen","Menschen",2
 220 DATA "viele Haeuser","Haeuser",3
 225 DATA "ein alter Mann","Mann",3
 230 DATA "Parole","Parole",0
 235 DATA "viele Haeuser","Haeuser",4
 240 DATA "einen brutalen Waechter", "Waechter",4
 245 DATA "einzelne Tannen", "Tannen", 5
 250 DATA "ein Schloss", "Schloss", 5
 255 DATA "ein paar Buesche", "Buesche", 6
 260 DATA "einen kleinen Spiegel", "Spiegel", 7
 265 DATA "einen Kleiderstaender", "Kleiderstaender", 7
 270 DATA "ein Zuckerglas", "Zuckerglas", 8
 275 DATA "ein Tisch", "Tisch", 8
 280 DATA "einen *Rubin*", "Rubin", 0
 285 DATA "ein Stuhl", "Stuhl", 9
 290 DATA "ein Tisch", "Tisch", 9
 295 DATA "ein Tisch", "Tisch", 11
 300 DATA "Buecher", "Buecher", 10
 305 DATA "viele Baeumchen", "Baeumchen", 12
 310 DATA "viele Fichten", "Fichten", 13
 315 DATA "einige Baeume", "Baeume", 14
 320 DATA "viele Eichen", "Eichen", 15
 325 DATA "eine Senke", "Senke", 15
 330 DATA "einen *Smaragden*", "Smaragd", 0
 335 DATA "vereinzelte Straeucher",  Straeucher", 16
 340 DATA "Wasser", "Wasser", 17
 345 DATA "Algen im See", "Algen", 17
 350 DATA "einen Wegweiser", "Wegweiser", 18
 355 DATA "den beruechtigten Trollenkoenig", "Trollenkoenig", 19
 360 DATA "einige Trolle", "Trolle" ,19
 365 DATA "einige Elfen", "Elfen", 20
 370 DATA "mehrere Elfenhoehlen", "Hoehlen", 20
 375 DATA "den elfenkoenig", "elfenkoenig", 21
 380 DATA "einen weisen spruch", "spruch", 0
 385 DATA "einen *saphir*", "saphir", 0
 390 DATA "ein paar kleine huetten", "huetten", 22
 395 DATA "einen prunkvollen palast", "palast", 23
 400 DATA "viele *graphiten*", "graphiten", 23
 405 DATA "einen traurigen gulliver", "gulliver", 24
 410 DATA "einen *graphit*", "graphit", 0
 415 REM Orte und Verbindungen
 420 DATA "in einer Schenke.",  4,2,0,0,0,0
 425 DATA "auf einer Strasse.",30,3,0,1,0,0
 430 DATA "in einer Sackgasse.", 0,0,0,2,0,0
 435 DATA "vor dem Stadttor.",0,0,1,0,0,0
 440 DATA "auf einem Weg.", 16,6,4,12,0,0
 445 DATA "vor einem Schloss.",0,7,0,5,0,0
 450 DATA "im portal des Schlosses.",32,9,10,6,0,0
 455 DATA "im Speiseraum des Schlosses.",0,0,9,32,0,0
 460 DATA "in der Kueche des Schlosses.",8,0,11,7,0,0
 465 DATA "in einer Biblothek." , 7,11,0,0,0,0
 470 DATA "in einem Arbeitszimmer.",9, 0,0,10,0,0
 475 DATA "an einem Waldrand.",15,5,33,13,34,0
 480 DATA "im Wald.",14,12,33,33,34,0
 485 DATA "in einer Lichtung. Im Norden sehe ich ein Haus.", 35,15,13,33,34,0
 490 DATA "in einem Laubwald.",33,33,12,14,34,0
 495 DATA "auf einem Weg.",18,17,5,0,0,0
 500 DATA "an einem See.",  0,0,0,16,0,0
 505 DATA "auf dem Weg.",20,19,16,22,0,0
 510 DATA "im Trollenreich " , 36,36,36,36,0,0
 515 DATA "im Elfenreich",21,0,18,0,0,0
 520 DATA "beim Elfenkoenig.", 0,0,20,0,0,0
 525 DATA "in der Zwergenstadt",23,18,0,24,0,0
 530 DATA "im Zwergenpalast",0,0,22,0,0,0
 535 DATA "bei Gulliver.",  0,22,0,0,0,0
 540 REM Verben
 545 DATA nimm,lege,Fage","sage","untersuche","trinke","oeffne"
 550 DATA "verben","liste","save","load", "quit"
 555 REM Richtungen
 560 DATA "norden","osten","sueden","westen","oben","unten"
 565 REM Phrasen
 570 DATA "Tut mir leid, aber so stark bin ich nicht."
 575 DATA "Ich mag dumm sein, aber ich verstehe nicht was du meinst."
 580 DATA "Wie stellst du dir das vor?!"
 585 DATA "Auch hier hat das Waldsterben schon um sich gegriffen."
 590 CLS
 595 INPUT "Anleitung (j/n)"; e$
 600 IF e$="n" then 920
 605 CLS
 610 s$="@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
 615 PRINT s$
 620 PRINT "Du hast in einer Schenke vier Maenner"'
 625 PRINT "belauscht, die von einem Schatz sprachen, der in der Umgebung ";
 630 PRINT " versteckt sei.  Deine Aufgabe ist: finde diesen Schatz! "
 635 18 PRINT "Aber keine Angst; ich, Pacy-Face, helfe";
 640 PRINT " dir bei dieser schweren Aufgabe. ";
 645 PRINT "Der Schatz besteht aus vier Edelsteinen.";
 650 PRINT "Am Anfang befindest du dich in dieser Schenke (vor einem Glas Bier)."
 655 PRINT
 660 PRINT s$
 665 PRINT
 670 PRINT "Weitere Anweisungen (j/n)"
 675 INPUT a$
 680 IF a$="n" then 920
 685 IF a$<>"j" THEN 675
 690 CLS
 695 21 PRINT s$
 700 PRINT "Auf dem Bildschirm steht jedesmal"
 705 PRINT "1. Der Ort.  Hier wird dir gesagt wo du dich befindest."
 710 PRINT "2. Die Besonderheiten.  Ich, Pacy-Face"
 715 PRINT "   mache dich hier darauf aufmerksam, was"
 720 PRINT "   ich im Blickfeld habe. {Ich sehe...} "
 725 PRINT "                           Sehe ich 'nichts', steht hier:"
 730 PRINT "                           Ich sehe nichts besonderes."
 735 PRINT "3. Die Durchgaenge        {Ich kann nach...}"
 740 PRINT "   Hier schreibe hin ich, in welche Him-"
 745 PRINT "   melsrichtungen (eventuell auch oben"
 750 PRINT "   und unten) ich mich bewegen kann."
 755 PRINT "   Bewegen kannst du mich durch die Be-"
 760 PRINT "   fehle n(norden), s(sueden), o(osten),"
 765 PRINT "   w(westen), ob(oben) und u(unten)."
 770 PRINT
 775 PRINT s$
 780 INPUT "Bitte ENTER druecken "; a$
 785 PRINT s$
 790 PRINT "Wenn du wissen willst, welche Verben ich"
 795 PRINT "verstehe, kannst du hinter die Anweisung"
 800 PRINT "'Was soll ich tun?' das wort 'verben'"
 805 PRINT "setzen. Der Befehl 'liste' ist dazu gut,"
 810 PRINT "alle Gegenstaende, die du besitzt, auf dem"
 815 PRINT "Bildschirm aufzulisten. Zu den 'Service"
 820 PRINT "-Befehlen' gehoeren auch noch 'save'"
 825 PRINT "(zum Abspeichern des Spielstandes) und"
 830 PRINT "'load' (zum Laden des abgespeicherten"
 835 PRINT "Spielstandes), sowie 'quit', um das Spiel zu beenden."
 840 PRINT "Die Befehle 'sage', 'frage', 'untersu-"
 845 PRINT "che', 'oeffne', 'trinke' und 'lege' duerften klar sein."
 850 PRINT "Zu dem Befehl 'nimm' muss ich noch sa-"
 855 PRINT "gen, dass nicht alle Gegenstaende ge-"
 860 PRINT "nommen werden koennen, weil das oft,"
 865 PRINT "wie zum Beispiel 'nimm maenner', un-"
 870 PRINT "logisch ist."
 875 PRINT s$
 880 INPUT "Bitte ENTER druecken "; a$
 885 29 CLS
 890 PRINT s$
 895 PRINT "Wichtig ist:"
 900 PRINT TAB(4); "Zu einem normalen Befehl gehoert"
 905 PRINT TAB(7); "ein Verb und ein Substantiv"
 910 PRINT TAB(80); s$
 915 30 INPUT "Bitte ENTER druecken "; a$
 920 s=1:zz=0
 930 IF s>=30 then 1305
 935 CLS
 940 PRINT "Ich bin "; r$(s)
 945 PRINT "Ich sehe ";
 950 g=0
 955 FOR i=1 TO ao
 960 IF ob(i)<>s then 975
 965 g=1
 970 PRINT ob$(i)
 975 NEXT i
 980 IF g=0 THEN PRINT "nichts besonderes. ";
 985 PRINT:PRINT "Ich kann nach ";
 995 FOR i=1 TO 6
 1000 IF d(s,i)=0 THEN 1010
 1005 PRINT ri$(i), " ";
 1010 NEXT i
 1015 PRINT "."
 1020 IF s=19 AND ob(38)=0 THEN PRINT "Der Trollenkoenig will einen Spruch von mir hoeren.":PRINT "---------------------------------------"
 1035 IF s>=30 then 1305
 1040 IF ob(17)=-1 AND ob(27)=-1 AND ob(38)=-1 AND ob(43)=-1 THEN 3495
 1045 INPUT "Was soll ich tun"; e$
 1050 zz=zz + 1
 1055 IF LEN(e$)>2 THEN 1200
 1060 IF e$="n" AND d(s, 1)<>0 THEN s=d(s, 1):goto 930
 1080 IF e$="o" AND d(s, 2)<>0 THEN s=d(s, 2):goto 930
 1100 IF e$="s" AND d(s, 3)<>0 THEN s=d(s, 3):goto 930
 1120 IF e$="w" AND d(s, 4)<>0 THEN s=d(s, 4):goto 930
 1140 IF e$="ob" AND d(s, 5)<>0 THEN s=d(s, 5):goto 930
 1160 IF e$="u" AND d(s, 6)<>0 THEN s=d(s, 6):goto 930
 1180 PRINT "Dahin fuert kein Weg!":goto 1035
 1190 PRINT "Achtung";b$:goto 1035
 1200 ln=LEN(e$)
 1205 FOR el=1 TO ln
 1210 t$=MID$(e$, el, 1)
 1215 IF t$=" " THEN 1225
 1220 NEXT el
 1225 ev$=LEFT$(e$, el - 1):rl=ln - el
 1235 IF rl < 0 THEN 1245
 1240 eo$=RIGHT$(e$, rl)
 1245 FOR vn=1 TO av
 1250 IF ev$=v$(vn) THEN 1270
 1255 NEXT vn
 1260 PRINT "Das Verb verstehe ich nicht!"
 1265 goto 1035
 1270 FOR o=1 TO ao
 1275 IF eo$="" then 1300
 1280 IF eo$=rn$(o) OR eo$=ob$(o) then 1300
 1285 NEXT o
 1290 PRINT "Ich verstehe das Objekt nicht!"
 1295 goto 1035
 1300 ON vn GOTO 1520,1660,1695,1520,2165,3060,3125,3170,3195,3250,3385,1360:rem 65
 1305 CLS
 1310 ON s - 29 GOSUB 1370,1380,1395,1415,1430,1450,1470,1485,1500
 1315 PRINT
 1320 PRINT
 1325 PRINT "Aus Trauer hast du Selbstmord veruebt."
 1330 PRINT
 1335 PRINT
 1340 PRINT
 1345 PRINT "Willst du es noch einmal versuchen (j/n)"
 1350 INPUT e$
 1355 IF e$="j" THEN RUN
 1360 PRINT "Auf Wiedersehen wuenscht Pacy-Face!"
 1365 END
 1370 PRINT "Ich bin in schlechte Haende geraten. Nun bin ich tot!"
 1375 RETURN
 1380 PRINT "Die Maenner schlugen mich aus Veraer-"
 1385 PRINT "gerung, dass ich sie belauscht habe, tot.";
 1390 RETURN
 1395 PRINT "Ein Geist ueberraschte mich und aus"
 1400 PRINT "Aerger, dass ich sein Schlafzimmer be-"
 1405 PRINT "treten habe, folterte er mich zu Tode."
 1410 RETURN
 1415 PRINT "Ich habe mich im Wald verirrt und bin"
 1420 PRINT "elend zugrunde gegangen."
 1425 RETURN
 1430 PRINT "Als ich im Baumwipfel angekommen war,"
 1435 PRINT "wollte ich wieder hinabsteigen. Was"
 1440 PRINT "mir aber misslang."
 1445 RETURN
 1450 PRINT "In dem Haus wohnte leider eine Hexe,"
 1455 PRINT "die nur darauf wartete, mich zu braten."
 1460 PRINT "Ich habe ihr gut geschmeckt."
 1465 RETURN
 1470 PRINT "Der Koenig liess mich, weil ich fliehen"
 1475 PRINT "wollte, hinrichten."
 1480 RETURN
 1485 PRINT "Der See war vergiftet. Du konntest mir"
 1490 PRINT "nicht mehr helfen."
 1495 RETURN
 1500 PRINT "Ich wurde beim Stehlen erwischt und"
 1505 PRINT "von Tausenden von Speeren niederge-"
 1510 PRINT "metzelt."
 1515 RETURN
 1520 IF ob(o)<>s THEN 1645
 1525 IF o=1 OR o=3 OR o=4 OR o=5 OR o=6 OR o=8 OR o=9 THEN PRINT m$(1):goto 1035
 1545 IF o=10 OR o=11 OR o=12 OR o=14 OR o=16 OR o=18 OR o=19 OR o=20 THEN pRINT m$(1):goto 1035
 1565 IF o>=21 AND o<=26 THEN PRINT m$(1):goto 1035
 1585 IF o>=28 AND o<=40 THEN PRINT m$(1):goto 1035
 1605 IF o>41 THEN PRINT m$(1):goto 1035
 1615 IF o=41 THEN s=38:goto 1035
 1625 PRINT "Ok.":ob(o)=-1:PRINT m$(2):goto 1035
 1645 PRINT "Das sehe ich hier nicht.":goto 1035
 1660 IF ob(o)<>-1 THEN 1685
 1665 PRINT "ok.":ob(o)=s:goto 1035
 1680 PRINT m$(2)
 1685 PRINT "Das habe ich nicht.":goto 1035
 1695 IF ob(o)<>s THEN 1925
 1700 IF o=1 THEN s=31:goto 1035
 1720 IF o=4 THEN PRINT "Sie ruepelten mich nur an.":goto 1035
 1740 IF o=6 THEN PRINT "Er sagte mir eine Parole, die den Waech-":pRINT "ter des Stadttores dazu veranlasst, mich "
 1755 if o=6 then PRINT "aus der Stadt zu lassen.":ob(7)=-1:goto 1035
 1775 IF o=9 THEN PRINT "Er will die Parole wissen.":goto 1035
 1795 IF o=32 THEN PRINT "Er will einen weisen Spruch von mir hoeren.":goto 1035
 1815 IF o=33 THEN PRINT "Sie schweigen.":goto 1035
 1835 IF o=34 THEN PRINT "Sie sagen mir "; ob$(37):ob(37)=-1:goto 1035
 1860 IF o=36 THEN PRINT "Er heisst mich im Elfenreich willkommen.";:goto 1035
 1880 IF o=42 THEN PRINT "Er sagt, er sei betruebt und will nach":?"Hause in die Stadt. Er fragt mich um Rat":goto 1035
 1910 PRINT m$(3):goto 1035
 1925 PRINT "Das sehe ich hier nicht.":goto 1035
 1935 IF ob(o)<>-1 THEN 2155
 1940 IF o=1 OR o=2 OR o=3 OR o=4 OR o=5 OR o=6 OR o=8 OR o=9 THEN PRINT m$(3):goto 1035
 1960 IF o>=10 AND o<=21 THEN pRINT m$(3):goto 1035
 1980 IF o=7 AND s=4 THEN PRINT "Der Waechter laesst mich nun nach Nor-":PRINT "den durch das Stadttor.":d(4,1)=5
 2005 for warte=1 to 4000:next warte
 2010 goto 930
 2015 IF o=7 AND s<>24 THEN PRINT "Ok.":goto 1035
 2035 IF o=37 AND s=19 THEN PRINT "Der Trollenkoenig ist sehr zufrieden":PRINT "und schenkt mir einen *Saphir*.":ob(38)=-1
 2060 IF o=37 AND s=19 THEN d(s, 1)=0:d(s, 2)=0:d(s, 3)=0:d(s, 4)=18
 2080 IF o=37 AND s=19 THEN FOR x=1 TO 2000:NEXT:goto 930
 2095 IF o=7 AND s=24 THEN PRINT "Er ist voller Freude und schenkt mir":ob(43)=-1:PRINT ob$(43); "!!!":goto 1035
 2125 IF o=37 THEN PRINT "Ok.":goto 1035
 2145 PRINT m$(2)
 2150 goto 1035
 2155 PRINT "Das habe ich nicht gelernt oder habe es vergessen."
 2160 goto 1035
 2165 IF ob(o)<>s AND ob(o)<>-1 THEN 3045
 2170 IF o=7 THEN 3030
 2175 IF o=1 THEN PRINT "Das lassen Sie nicht zu.":goto 1035
 2195 IF o=2 THEN PRINT "Auf dem Etikett steht 'Kitzmann Braeu, Erlangen'.":goto 1035
 2215 IF o=3 THEN PRINT "Sie sehen gemuetlich aus.":goto 1035
 2235 IF o=4 THEN PRINT "Ich bin gut erzogen, daher tue ich das nicht.":goto 1035
 2255 IF o=16 THEN PRINT "Er ist aus Holz.":goto 1035
 2275 IF o=17 THEN PRINT "Er glaenzt und funkelt.":goto 1035
 2295 IF o=18 THEN PRINT "Auf der Lehne steht 'Made in Hongkong'.":goto 1035
 2315 IF o=19 THEN PRINT "Eine solide Zwergenarbeit.":goto 1035
 2335 IF o=20 THEN PRINT "Er ist halb vermodert.":goto 1035
 2355 IF o=21 THEN PRINT "Ich kann leider nicht lesen, aber sie sehen sehr wertvoll aus.":goto 1035
 2375 IF o=13 THEN PRINT "Ich sehe einen Pacy-Face, mich!":goto 1035
 2395 IF o=14 THEN PRINT "Es haengt ein mottenzerfressenes Kleid daran.":goto 1035
 2415 IF o=15 THEN PRINT "Es ist etwas drinnen.":goto 1035
 2435 IF o=5 THEN PRINT "Sie sehen gemuetlich aus.":goto 1035
 2455 IF o=6 THEN PRINT "Er sieht einsam aus.":goto 1035
 2475 IF o=8 THEN PRINT "Sie sind solide Zwergenarbeit.":goto 1035
 2495 IF o=9 THEN PRINT "Er schaut mich so grimmig an, dass ich mich das nicht traue":goto 1035
 2515 IF o=10 THEN PRINT m$(4):goto 1035
 2535 IF o=11 THEN PRINT "Es ist sehr verfallen.":goto 1035
 2555 IF o=12 THEN PRINT m$(4):goto 1035
 2575 IF o=22 THEN PRINT "Sie sind so gross wie ich.":goto 1035
 2595 IF o=23 THEN PRINT m$(4):goto 1035
 2605 IF o=24 THEN PRINT "Es sind alles fichten.":goto 1035
 2625 IF o=25 THEN PRINT "Sie sind sehr hoch.":goto 1035
 2645 IF o=26 THEN PRINT "Nachdem ich ein wenig gegraben habe,"
 2655 IF o=26 THEN PRINT "fand ich"; ob$(27); ".":ob(27)=s:goto 1035
 2680 IF o=27 THEN PRINT "Er sieht wundervoll aus und ist echt.":goto 1035
 2700 IF o=28 THEN PRINT m$(4):goto 1035
 2720 IF o=29 THEN PRINT "Es ist glasklar.":goto 1035
 2740 IF o=30 THEN PRINT "Sie sind glitschig.":goto 1035
 2760 IF o<>31 THEN 2795
 2765 PRINT "Ich sehe 4 Tafeln in 4 verschiedene Richtungen.":PRINT "norden elfenreich", "osten"
 2775 PRINT "trollenreich", "suedenstadt ", "":PRINT "westen zwergenland "; ""
 2785 goto 1035
 2795 IF o=32 THEN PRINT "Er sieht furchterregend aus.":goto 1035
 2815 IF o=33 THEN PRINT "Sie haben einen blutruenstigen Blick.":goto 1035
 2835 IF o=34 THEN PRINT "Sie sind sehr lieblich.":goto 1035
 2855 IF o=35 THEN PRINT "Das ist tabu !!!":goto 1035
 2875 IF o=36 THEN PRINT "Er ist freundlich.":goto 1035
 2895 IF o=37 THEN PRINT "Er ist voller Moral.":goto 1035
 2915 IF o=38 THEN PRINT "Er ist der schoenste, den ich je gesehen habe.":goto 1035
 2935 IF o=39 THEN PRINT "Sie sind winzig, aber solide.":goto 1035
 2955 IF o=40 THEN PRINT "Die Mauern sind aus Gold!":goto 1035
 2975 IF o=41 THEN PRINT "Sie blenden mich.":goto 1035
 2995 IF o=42 THEN PRINT "Er hat Heimweh.":goto 1035
 3015 IF o=43 THEN PRINT "Er ist wundervoll!":GOTO 50
 3030 PRINT m$(3):goto 1035
 3045 PRINT "Das sehe ich hier nicht.":goto 1035
 3060 IF ob(o)<>s AND ob(o)<>-1 THEN 3115
 3065 IF o=2 THEN PRINT "Mh, schmeckt gut. Ein Weizen.":ob(o)=0:goto 1035
 3090 IF o=29 THEN s=37:GOTO 3015
 3100 PRINT m$(3)
 3105 goto 1035
 3115 PRINT "Das sehe ich hier nicht und habe es auch nicht."
 3120 goto 1035
 3125 IF ob(o)<>s AND ob(o)<>-1 THEN 3115
 3130 IF o=15 THEN PRINT "Ich sehe einen *rubin* !!!":ob(17)=s:goto 1035
 3155 PRINT m$(3)
 3160 PRINT "Ich verstehe nicht, was du meinst."
 3165 goto 1035
 3170 PRINT "Die Verben, die ich verstehe sind"
 3175 FOR i=1 TO av
 3180 PRINT v$(i)
 3185 NEXT i
 3190 goto 1035
 3195 PRINT "Die Dinge, die ich bei mir habe sind"
 3200 g=0:FOR x=1 TO ao
 3210 IF ob(x)=-1 THEN PRINT ob$(x):g=1
 3230 NEXT x
 3235 IF g=0 THEN PRINT "    Gar nichts."
 3240 goto 1035
 3245 REM Save the game
 3250 PRINT "Speichern ";
 3255 n$=""
 3260 INPUT "welcher Name?"; n$
 3265 IF n$="" THEN PRINT "Keine Abspeicherung.":goto 1035
 3285 IF LEN(n$)>8 THEN PRINT "Zu lang.":GOTO 3250
 3305 PRINT "Speicherung von "; n$; " laueft. "
 3310 OPENOUT n$
 3315 PRINT #9,s;
 3320 FOR x=1 TO ao
 3325 PRINT #9,ob(x);" "
 3330 NEXT x
 3335 PRINT ".";
 3340 FOR i=1 TO ar
 3345 FOR x=1 TO 6
 3350 PRINT #9,d(i,x)
 3355 NEXT x
 3360 NEXT i
 3365 PRINT ".";
 3370 CLOSEOUT
 3375 goto 1035
 3380 REM Restore a saved game.
 3385 PRINT "Laden welcher ";
 3390 n$=""
 3395 INPUT "Name ?"; n$
 3400 IF n$="" THEN PRINT "Es wird nicht geladen.":goto 1035
 3420 PRINT " "; n$; " wird geladen.";
 3425 OPENIN n$
 3430 INPUT #9,s
 3435 FOR x=1 TO ao
 3440 INPUT #9,ob(x)
 3445 NEXT
 3450 PRINT ".";
 3455 FOR x=1 TO ar
 3460 FOR i=1 TO 6
 3465 INPUT #9,d(x, i)
 3470 NEXT i
 3475 NEXT x
 3480 PRINT ".";
 3485 CLOSEIN
 3490 goto 930
 3495 CLS:p=0:pRINT chr$(13)chr$(13)chr$(13)chr$(13)chr$(13)chr$(13)
 3540 PRINT "       Sie haben es geschaft !!!"
 3545 PRINT "Erst einmal einen herzlichen Glueckwunsch."
 3755 PRINT "   Und vielen Dank fuers Mitspielen!"
 3760 END