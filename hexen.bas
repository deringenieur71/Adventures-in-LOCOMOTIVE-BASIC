1000 REM ** HEXEN MUESSEN BRENNEN ** CPC VERSION 2021 BY SRS
1001 HE=1:H1=0:H2=1:MA=50:AS=1:H5=1:SJ=0:HEX=1:JU=0
1002 DIM B$(10):DIM A$(1):DIM F$(36):MODE 1
1003 INK 0,0:BORDER 0:INK 1,26:SJ=0
1004 PRINT"        IN DER HOELLE DES TEUFELS":PRINT"        ?????????????????????????":PRINT"         cpc version 08/2021 SRS"
1005 PRINT:PRINT"ANWESEND:  ICH   TEUFEL   SHORON"
1010 X=1:GOSUB 11000:X=2:GOSUB 11100:X=0:GOSUB 11200
1020 PRINT:PRINT:PRINT"WAS SOLL ICH TUN?":PRINT
1022 PRINT" 1 = ABWARTEN..."
1023 PRINT" 2 = HOELLE VERLASSEN"
1024 PRINT" 3 = SHORON TOETEN"
1025 PRINT:PRINT"WAHL";:INPUT W1:W=W1
1026 IF W<1 OR W>3 THEN 1000
1027 IF W=1 THEN WA=WA+1:GOTO 1003
1028 IF W=2 THEN 1050
1029 PRINT"}":PRINT"GUT ICH TOETE SHORON!!";
1030 PRINT" MIT HILFE      MEINER MAGISCHEN KRAFT LASSE ICH IHN  ZU STAUB ZERFALLEN."
1031 PRINT:PRINT"LEO FRAGT: 'WARUM HAST DU DAS GETAN?'"
1032 PRINT"ICH: 'ICH KONNTE IHN NIE LEIDEN.'"
1033 PRINT"ER: 'ER WAR EIN TREUER DIENER,            DESHALB WIRST AUCH DU STERBEN.'"
1034 GOTO 11400
1050 PRINT"}"
1051 PRINT" ICH VERLASSE DIE HOELLE."
1052 PRINT:PRINT" AUF DEM WEG NACH OBEN BEMERKE ICH"
1053 PRINT" DEN RUF EINES STERBLICHEN, DER DIE"
1054 PRINT" HOELLE UM HILFE ANFLEHT.":PRINT
1056 PRINT" WAS SOLL ICH TUN?"
1058 PRINT:PRINT" 1 = DEM RUF FOLGEN"
1059 PRINT" 2 = DEN RUF IGNORIEREN"
1060 PRINT:PRINT"WAHL ";:INPUT WA
1061 IF WA<1 OR WA>2 THEN 1050
1062 IF WA=1 THEN 1100
1063 PRINT:PRINT" DER MAGIER HAT DICH BEMERKT"
1064 PRINT" UND DIE BESCHWOERUNG ERZWUNGEN."
1065 PRINT" ICH MUSS ERSCHEINEN.":PRINT:PRINT
1070 GOSUB 11500
1100 PRINT"}":PRINT" ICH ERSCHEINE BEIM MAGIER"
1101 IF AS=1 THEN PRINT" SHORON BEGLEITET MICH"
1102 PRINT" EIN MENSCH ERWARTET MICH"
1103 X=-40:GOSUB 11000:GOSUB 11200
1104 PRINT:PRINT
1105 PRINT" ER IST MIT EINEM MANTEL BEKLEIDET,"
1106 PRINT" DER MIT MAGISCHEN ZEICHEN BESTICKT"
1107 PRINT" IST, AUSSERDEM TRAEGT ER EIN KUPFER-"
1108 PRINT" ARMBAND, (ANSCHEINEND EIN SCHUTZ-"
1109 PRINT" ZAUBER) UND EIN AMULETT UM DEN HALS."
1110 PRINT:PRINT" 'WAS WILLST DU MENSCHLEIN?'"
1111 PRINT" MUSS JA NIEMAND WISSEN, DASS ICH      AUCH EINER BIN."
1112 PRINT:PRINT" 'ICH WILL UNSTERBLICHKEIT.'"
1113 PRINT:PRINT:PRINT:GOSUB 11500
1120 PRINT"}"
1122 PRINT" 'WAS GIBST DU MIR DAFUER?'"
1123 PRINT" ER: 'DIES KUPFERARMBAND IST SEHR          MAECHTIG ES GEHOERT DANN DIR.'"
1125 PRINT:PRINT" WAS SOLL ICH TUN?"
1126 PRINT:PRINT" 1 = AUF DEN HANDEL EINGEHEN"
1127 PRINT" 2 = SCHEINBAR DARAUF EINGEHEN"
1128 PRINT" 3 = EINFACH VERSCHWINDEN"
1129 PRINT:PRINT"WAHL";:INPUT WA
1130 IF WA<1 OR WA>3 THEN 1120
1131 IF WA=1 THEN 1150
1132 IF WA=2 THEN 1200
1140 PRINT"}"
1141 PRINT" ICH SAGE: 'NEIN MENSCHLEIN ICH MACHE"
1142 PRINT" MIT DIR KEINE GESCHAEFTE.'"
1143 PRINT:PRINT" DU STAMPST MIT DEM FUSS AUF UND"
1144 PRINT" LOEST DICH IN EINER WOLKE SCHWEFEL-"
1145 PRINT" DAMPF AUF."
1146 GOSUB 11500
1147 GOTO 1250
1150 PRINT"}"
1151 PRINT" 'NUN GUT, NAMENLOSER MAGIER, GIB MIR"
1152 PRINT" DAS BAND UND DU SOLLST EWIG LEBEN.'"
1153 PRINT:PRINT" DU NIMMST DAS BAND UND MUSST"
1155 PRINT" MIT ENTSETZEN FESTSTELLEN, DASS DAS"
1156 PRINT" LEBEN SEHR KURZ SEIN KANN. DAS BAND"
1157 PRINT" ENTPUPPT SICH ALS MAGISCHE BOMBE"
1158 PRINT" DIE DICH UND SHORON ZERREISST."
1159 PRINT:PRINT:PRINT
1160 GOTO 11400
1200 PRINT"}"
1202 PRINT" DU HAST NATUERLICH LAENGST BEMERKT,"
1203 PRINT" DASS DAS DIE FALLE EINES KLEINEN"
1204 PRINT" MIESEN WEISMAGIERS IST, AUF DESSEN"
1205 PRINT" ARMBAND DU TROTZDEM ACHTEN MUSST.":PRINT
1206 PRINT:PRINT" WAS SOLL ICH TUN?":PRINT
1209 PRINT" 1 = IN DIE HOELLE FLIEHEN"
1210 PRINT" 2 = DEN KAMPF AUFNEHMEN"
1211 PRINT" 3 = SHORON ANGREIFEN LASSEN"
1212 PRINT:PRINT" WAHL";:INPUT WA
1213 IF WA<1 OR WA>3 THEN 1200
1214 IF WA=1 THEN 1230
1215 IF WA=2 THEN 1235
1216 PRINT"}"
1217 PRINT" ICH GEBE SHORON DEN TELEPATISCHEN"
1218 PRINT" BEFEHL, VON HINTEN ANZUGREIFEN UND"
1219 PRINT" SAGE 'WER GARANTIERT MIR, DASS DU ES"
1220 PRINT" EHRLICH MEINST' UM IHN ABZULENKEN."
1221 PRINT:PRINT" PLOETZLICH TAUCHT SHORON AUF UND"
1222 PRINT" REISST DEM HEXER DAS ARMBAND, DAS"
1223 PRINT" AMULETT UND DIE KUTTE HERUNTER."
1224 PRINT:PRINT" 'HEXEN MUESSEN BRENNEN' SAGE ICH NUR."
1225 GOSUB 11500
1227 PRINT"}":PRINT" DA LIEGEN SIE NUN, DIE UTENSILIEN"
1228 PRINT" DES TOTEN HEXERS."
1229 PRINT:PRINT" WAS SOLL ICH NEHMEN?":PRINT:GOSUB 1280:GOTO 1250
1230 PRINT:PRINT" ICH STAMPFE 3 MAL MIT DEM LINKEN"
1231 PRINT" FUSS AUF UND FAHRE IN DIE HOELLE.":GOSUB 11500:GOTO 1250
1235 PRINT"}"
1236 PRINT" 'SCHWEIG ABTRUENNIGER HEXER."
1237 PRINT" DU BIST DURCHSCHAUT"
1238 PRINT" DU WIRST HIER UND JETZT STERBEN'"
1239 PRINT" ICH GREIFE IHN MIT ALL MEINER MACHT"
1240 PRINT" AN. ZUERST KREUZE ICH ZEIGE- UND"
1241 PRINT" MITTELFINGER UND SCHLEUDERE BLITZE."
1242 PRINT" EINEN SCHUTZWALL":PRINT
1245 PRINT" ER RUFT 'NEIN DAEMON DAS IST 'DEIN"
1246 PRINT" ENDE' UND 'ULTIMA SAGDESE FURTNATA'"
1247 PRINT" DIE WELT VERSCHWINDET IN EINEM FLIR-  RENDEM KREISEL."
1249 PRINT:PRINT:GOSUB 11400
1250 PRINT"}"
1251 PRINT:PRINT"       IN DER HOELLE DES TEUFELS !"
1252 PRINT"       ---------------------------"
1253 PRINT:PRINT" ANWESEND:  ICH   TEUFEL   SHORON"
1257 PRINT:PRINT:PRINT" FEIGLINGE HABEN AN DER SEITE DES      HERRSCHERS";
1260 PRINT" NICHTS VERLOREN !!"
1265 PRINT:PRINT:GOSUB 11400
1280 PRINT" 1 = DAS ARMBAND                       2 = DAS AMULETT"
1281 PRINT:PRINT"WAHL";:INPUT WA
1282 IF WA<1 OR WA>2 THEN 1281
1283 IF WA=1 THEN 1153
1285 PRINT"}":PRINT" RICHTIG, ICH HABE NATUERLICH SOFORT"
1286 PRINT" ERKANNT, WAS DAS FUER EIN AMULETT"
1287 PRINT" IST."
1288 PRINT
1289 PRINT" ES IST EIN AMULETT AUS DEM SIEBEN-"
1290 PRINT" GESTIRN MERLINS, DAS ER EINST VOM"
1291 PRINT" HIMMEL HOLTE UND IN 7 STUECKE TEILTE. JEDES DIESER AMULETTE IST EINE"
1292 PRINT" SUPERWAFFE. WEISS DER TEUFEL, WIE"
1293 PRINT" DER MIESE TYP AN DAS AMULETT GEKOMMEN IST.":AM=1
1294 PRINT:PRINT:GOSUB 11500
2000 PRINT"}"
2010 PRINT:PRINT"    IN DER HOELLE DES TEUFELS"
2011 PRINT"    =========================":PRINT
2012 PRINT" ANWESEND:  ICH   TEUFEL  SHORON"
2016 PRINT:PRINT" ICH BESITZE:"
2017 IF AM=1 THEN PRINT" DAS 5. AMULETT"
2018 IF JU=1 THEN PRINT" DEN JU-JU STAB"
2050 PRINT" MAGISCHE KRAFT:";MA
2061 PRINT STRING$(15,CHR$(13)):GOSUB 11500
2091 PRINT"}"
2092 PRINT:PRINT:PRINT:PRINT"_______WIE SOLL ES WEITERGEHEN?_______"
2093 PRINT:PRINT" 1 = DAS LABYRINTH DER HEXEN"
2094 PRINT:PRINT" 2 = JU-JU STAB"
2095 PRINT:PRINT" 3 = SEELENJAGD"
2096 PRINT:PRINT" 4 = KAMPF MIT DEM TEUFEL"
2097 PRINT:PRINT" WAS WILLST DU TUN";:INPUT WA
2100 IF WA=2 THEN GOSUB 3000
2110 IF WA=1 THEN GOSUB 4000
2120 IF WA=3 THEN GOSUB 6000
2130 IF WA=4 THEN GOSUB 7000
2140 GOTO 2000
2507 PRINT" 1 = STUHL        5 = BILD"
3000 PRINT"}"
3010 PRINT:PRINT:PRINT" DER JU-JU STAB":PRINT:PRINT
3040 PRINT"DU WEISST, DASS DER JU-JU STAB IN";
3041 PRINT"     PROF. ZAMORRAS SCHLOSS VERSTECKT IST.":PRINT:GOSUB 11500
3100 PRINT"}"
3110 PRINT:PRINT" ICH STEHE VOR DEM SCHLOSS DES PROF."
3120 PRINT" WENN DER MICH ERWISCHT BIN ICH TOT.";
3125 PRINT"   ES IST EIN WUCHTIGER BAU. SHORON"
3127 PRINT" SPUERT DIE SCHUTZSTRAHLUNG, DIE"
3128 PRINT" SICH UM DAS GEBAEUDE AUSBREITET."
3129 PRINT
3132 GOSUB 11500
3200 PRINT"}             JU-JU"
3201 PRINT"             -----"
3202 PRINT:PRINT:PRINT:PRINT" WAS SOLL ICH TUN"
3206 PRINT" 1 = DEN ORT VERLASSEN"
3207 PRINT" 2 = HANDELN..."
3208 PRINT" 3 = ZURUECK IN DIE HOELLE"
3209 PRINT:PRINT" WAHL ?";:INPUT WA
3210 IF WA<1 OR WA>3 THEN GOTO 3200
3255 IF WA=3 THEN GOTO 2000
3260 IF WA=1 THEN GOTO 3281
3261 PRINT"}":PRINT" WAS SOLL ICH TUN ?"
3262 PRINT:PRINT" 1 = SCHUTZZAUBER VERNICHTEN"
3263 PRINT" 2 = ABWARTEN"
3264 PRINT" 3 = ZURUECK IN DIE HOELLE"
3265 INPUT WA:IF WA<1 OR WA>3 THEN GOTO 3261
3266 IF WA=3 THEN 2000
3267 IF WA=2 THEN 3274
3268 PRINT"} ICH WILL VERSUCHEN DEN ZAUBER ZU       VERNICHTEN."
3269 PRINT" ICH AKTIVIERE MEINEN ANGRIFFSZAUBER UND";
3270 PRINT" SCHLEUDERE IHN GEGEN DIE KUPPEL, DOCH"
3271 PRINT" LEIDER IST DER ZAUBER ZU STARK FUER"
3272 PRINT" MICH, NICHT DER SATAN SELBST KOENNTE    HIER EINDRINGEN."
3273 PRINT" JETZT HUELLT MICH EINE GRUENE FLAMME    EIN.":GOTO 11400
3274 PRINT"} ICH WARTE BIS DER DIENER ZAMORRAS,"
3275 PRINT" RAFFAEL BOIS, DAS HAUS VERLAESST."
3276 PRINT" ES GELINGT MIR, IHN ZUM VERWISCHEN"
3277 PRINT" EINIGER ZEICHEN ZU BRINGEN, WODURCH"
3278 PRINT" EIN LOCH IM SCHUTZSCHILD ENTSTEHT."
3279 PRINT" SO KOENNEN SHORON UND ICH EINDRINGEN."
3280 PRINT:GOSUB 11500:JP=1:GOTO 3300
3281 PRINT" WIR VERSUCHEN EINFACH DAS SCHLOSS ZU"
3282 PRINT" BETRETEN, DOCH MUSS ICH LEIDER FEST-"
3283 PRINT" STELLEN, DASS DER SCHUTZZAUBER ZU"
3284 PRINT" STARK FUER MICH IST."
3286 GOTO 3273
3300 PRINT"}"
3301 PRINT:PRINT" WIR SIND JETZT IM SCHLOSS UND HABEN"
3302 PRINT" VIER ZIMMER ZUR AUSWAHL, IN DENEN     DER STAB VERSTECKT SEIN KOENNTE."
3303 PRINT:PRINT" WELCHES ZIMMER SOLL ICH DURCHSUCHEN?":PRINT " 5 = ZURUECK"
3304 INPUT WA:IF WA<1 OR WA>5 THEN GOTO 3300
3305 IF WA=1 THEN 3310
3306 IF WA=2 THEN 3400
3307 IF WA=3 THEN 3500
3308 IF WA=4 THEN 3600
3309 IF WA=5 THEN 3100
3310 PRINT"}"
3311 PRINT"     DAS ERSTE ZIMMER"
3312 PRINT"     ----------------"
3313 PRINT" SHORON IST MIT DABEI:"
3314 PRINT" "
3316 PRINT:PRINT" DIE KUECHE":PRINT:PRINT" ICH KANN FOLGENDES UNTERSUCHEN"
3317 PRINT:PRINT" 1 = STUHL      5 = RADIO"
3318 PRINT" 2 = BILD       6 = SPUELE"
3319 PRINT" 3 = SCHRANK    7 = WASCHBECKEN"
3320 PRINT" 4 = TISCH      8 = OFEN                      9 = MENUE"
3321 GOSUB 11600
3322 IF WA<1 OR WA>9 THEN GOTO 3310
3323 IF WA=9 THEN GOTO 3301
3325 IF WA=1 THEN PRINT " OH EIN STUHL, ICH SETZTE MICH EIN WENIG"
3326 IF WA=4 THEN PRINT " NA SOWAS! DA STEHT EIN TISCH"
3327 IF WA=5 THEN PRINT " LEISE MUSIK TOENT AUS DEM RADIO."
3328 IF WA=7 THEN PRINT " ICH WASCHE MIR DIE HAENDE."
3329 IF WA=3 THEN PRINT " IM SCHRANK STEHT VIEL GESCHIRR."
3330 IF WA<>2 THEN GOTO 3335
3331 PRINT" DAS BILD IST EIN DUESTERES GEMAELDE ICH BERUEHRE ES MIT DEN FINGERSPITZEN"
3332 PRINT" ICH GLAUBE ES STELLT EINEN ERZENGEL DAR"
3333 PRINT" PLOETZLICH SCHIESST EIN FLAMMENSTRAHL   HERAUS."
3334 GOSUB 11400
3335 IF WA<>6 THEN GOTO 3343
3336 PRINT" EIN LEISES GLUCKSEN ERSCHALLT AUS DER   SPUELE. ES HOERT SICH AN WIE DAS"
3337 PRINT" SCHMATZEN EINES DER MUTIERTEN TIEFSEE-"
3338 PRINT" KRAKEN, DIE SEINERZEIT DIE HERRSCHAFT"
3339 PRINT" UEBER DIE HOELLE WOLLTEN."
3340 PRINT" PLOETZLICH SCHIESST EIN STINKENDER,"
3341 PRINT" SCHLEIMIGER TENTAKEL AUS DEM ABGUSS"
3342 PRINT" UND WUERGT MICH.":GOTO 11400
3343 IF WA<>8 THEN GOTO 3348
3344 PRINT:PRINT" ES HANDELT SICH UM EINEN ALTEN OFEN,  DER NOCH MIT HOLZ UND KOHLE GE-"
3345 PRINT" SCHUERT WIRD. ICH OEFFNE DIE OFENTUER";
3346 PRINT" UND ERKENNE EINEN HALBVERKOHLTEN"
3347 PRINT" ZETTEL MIT EIN PAAR NUMMERN : 180572"
3348 GOSUB 11500:GOTO 3310
3400 PRINT"}       DAS ZWEITE ZIMMER"
3401 PRINT"       -----------------"
3402 GOSUB 11200:PRINT:PRINT:PRINT:PRINT
3403 PRINT" SHORON IST MIT DABEI"
3406 PRINT" DAS WOHNZIMMER":PRINT:PRINT" ICH KANN FOLGENDES UNTERSUCHEN:"
3407 PRINT:PRINT" 1 = SESSEL        5 = FERNSEHER"
3408 PRINT" 2 = BILD          6 = TEPPICH"
3409 PRINT" 3 = SCHRANK       7 = BAR"
3410 PRINT" 4 = TISCH         8 = LAMPE                 9 = MENUE"
3411 GOSUB 11600
3412 IF WA<1 OR WA>9 THEN 3400
3420 IF WA=1 THEN PRINT" ICH SETZE MICH UND UEBERLEGE, WIE ES    WEITERGEHEN SOLL"
3421 IF WA=2 THEN PRINT" DAS BILD GEFAELLT MIR NICHT"
3422 IF WA=3 THEN PRINT" OH, DER SCHRANK. ICH OEFFNE IHN.":GOSUB 11500
3423 IF WA=3 THEN PRINT" ES STROEMT GAS MIT WEIHWASSER VERMISCHT";
3424 IF WA=3 THEN PRINT" HERAUS":GOTO 11400
3425 IF WA=4 THEN PRINT" SOLL ICH DIE ROSE AUF DEM TISCH         UNTERSUCHEN?"
3426 IF WA=4 THEN PRINT" 1=JA -P2=NEIN";:INPUT SO:IF SO=2 THEN GOTO 3400
3427 IF WA=4 THEN PRINT" AU! JETZT HAB ICH MICH GESTOCHEN."
3428 IF WA=4 THEN PRINT" MIR WIRD GANZ SCHWINDLIG":GOTO 11400
3429 IF WA=5 THEN PRINT" DAS FERNSEHPROGRAMM IST AUCH NICHT DAS  BESTE"
3431 IF WA=6 THEN PRINT" ICH BETRETE DEN TEPPICH."
3432 IF WA=6 THEN PRINT" PLOETZLICH ROLLT SICH DER TEPPICH EIN."
3433 IF WA=6 THEN GOSUB 11400
3440 IF WA=7 THEN PRINT" AN DER BAR IST NICHTS BESONDERES"
3442 IF WA=3 THEN PRINT" OH, DER SCHRANK. ICH OEFFNE IHN.":GOSUB 11500
3445 IF WA=8 THEN PRINT" ICH FUMMLE AN DER LAMPE HERUM UND"
3446 IF WA=8 THEN PRINT" ERHALTE EINEN STROMSCHLAG. AAAH!":GOSUB 11400
3450 GOSUB 11500:GOTO 3400
3500 PRINT"}    DAS DRITTE ZIMMER"
3501 PRINT"    -----------------"
3503 PRINT" SHORON IST MIT DABEI":PRINT:PRINT:PRINT:GOSUB 11200:PRINT:PRINT
3506 PRINT" DAS ARBEITSZIMMER":PRINT:PRINT" ICH KANN FOLGENDES UNTERSUCHEN"
3507 PRINT" 1 = STUHL        5 = BILD"
3508 PRINT" 2 = SCHREIBTISCH 6 = TEPPICH"
3509 PRINT" 3 = ABLAGE       7 = PAPIERKORB"
3510 PRINT" 4 = COMPUTER     8 = LAMPE                  9 = MENUE"
3511 GOSUB 11600
3512 IF WA<1 OR WA>9 THEN GOTO 3500
3520 IF WA=1 THEN PRINT " ICH WILL MICH NICHT SETZEN"
3521 IF WA=2 THEN PRINT" ICH SEHE MIR DEN SCHREIBTISCH AN"
3522 IF WA=2 THEN PRINT" SOLL ICH IHN DURCHEINANDER WUEHLEN      1= JA - 2= NEIN";:INPUT SO
3527 IF WA=2 THEN IF SO=1 THEN PRINT" ALLES ZERWUEHLT"
3530 IF WA=3 THEN PRINT" DIE ABLAGE IST LEER"
3535 IF WA=5 THEN PRINT" HINTER DEM BILD IST EIN TRESOR"
3536 IF WA=5 THEN PRINT" SOLL ICH IHN OEFFNEN 1= JA - 2=NEIN"
3537 IF WA=5 THEN INPUT SO:IF SO<>1 THEN GOTO 3500
3538 IF WA=5 THEN PRINT" KOMBINATION";:INPUT B$:IF B$<>"180572" THEN PRINT" FALSCH !!":GOSUB 11500:GOTO 3500
3540 IF WA=5 AND JU=1 THEN PRINT" DER TRESOR IST LEER":GOTO 3599
3541 IF WA=5 THEN PRINT" DER TRESOR OEFFNET SICH UND ICH       NEHME DEN JU-JU STAB":JU=1
3560 IF WA=6 THEN PRINT
3561 IF WA=7 THEN PRINT" IM PAPIERKORB IST NUR MUELL."
3562 IF WA=8 THEN PRINT" SCHEINT EINE 30 WATT BIRNE ZU SEIN."
3563 IF WA=4 THEN PRINT" ES IST EIN PC 10."
3564 GOSUB 11500:GOTO 3500
3600 PRINT"}     DAS VIERTE ZIMMER"
3602 PRINT"     -----------------"
3603 PRINT" SHORON IST MIT DABEI":PRINT:PRINT:PRINT:PRINT
3606 PRINT" DER HEIZKELLER":PRINT:PRINT" ICH KANN FOLGENDES UNTERSUCHEN":GOSUB 11200
3607 PRINT:PRINT" 1 = KANNISTER     5 = SCHAUFEL"
3608 PRINT" 2 = OELKANNE      6 = HOBELBANK"
3609 PRINT" 3 = TANK          7 = BESEN"
3610 PRINT" 4 = WERKZEUG      8 = MESSER                 9 = MENUE"
3611 GOSUB 11600
3612 IF WA<1 OR WA>9 THEN GOTO 3600
3630 IF WA=1 THEN PRINT" GUT ICH UNTERSUCHE DEN KANNISTER"
3631 IF WA=2 THEN PRINT" GUT ICH UNTERSUCHE DIE OELKANNE"
3632 IF WA=3 THEN PRINT" NEHMEN WIR MAL DEN TANK"
3633 IF WA=4 THEN PRINT" NUN IST DAS WERKZEUG DRAN"
3634 IF WA=5 THEN PRINT" ICH NEHME DIE SCHAUFEL"
3635 IF WA=6 THEN PRINT" DIE HOBELBANK IST ZIEMLICH GROSS"
3636 IF WA=7 THEN PRINT" AM BESEN IST NICHTS BESONDERS"
3637 IF WA=8 THEN PRINT" ICH NEHME DAS MESSER"
3640 PRINT" PLOETZLICH OEFFNET SICH EINE FALLTUER   UNTER MIR UND ICH STUERZE AB."
3650 GOSUB 11400
4000 GOSUB 11700
4040 PRINT" ICH SEHE DEN EINGANG ZUM LABYRINTH"
4041 PRINT" MOEGLICHE RICHTUNGEN:"
4042 PRINT" NORDEN"
4043 PRINT" MOEGLICHES HANDELN:":PRINT" 1 = ZURUECK IN DIE HOELLE":PRINT:GOSUB 11800
4061 IF A$="1" THEN GOTO 2000
4062 IF A$="N" THEN 4100
4063 GOTO 4000
4100 GOSUB 11700
4120 PRINT" ICH STEHE IN EINER FINSTEREN HOEHLE"
4141 PRINT" UND SEHE NUR EINE LAMPE, DIE DAS      KARGE ZIMMER LEICHT ERLEUCHTET":PRINT
4145 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" WESTEN, SUEDEN, OSTEN":PRINT" MOEGLICHES HANDELN:"
4146 PRINT" 1 = LAMPE UNTERSUCHEN":PRINT:PRINT:GOSUB 11800
4160 IF A$="W" THEN 4200
4161 IF A$="O" THEN 5200
4162 IF A$="S" THEN 4000
4163 IF A$="1" THEN 4170
4164 GOTO 4100
4170 PRINT" GUT ICH UNTERSUCHE DIE LAMPE"
4171 PRINT" SIE IST UEBER UND UEBER MIT ROST BE-    DECKT."
4172 PRINT" PLOETZLICH ERHALTE ICH EINEN STROM-     SCHLAG!":GOSUB 11400
4200 GOSUB 11700
4210 IF HE<>1 THEN GOTO 4225
4211 PRINT" ICH SEHE EINE HALBVERWESTE GEIFENDE     HEXE VOR MIR, DIE MICH ANGREIFEN WILL":PRINT:PRINT
4225 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" NORDEN,OSTEN ":PRINT" MOEGLICHES HANDELN:"
4226 IF HE<>1 THEN GOTO 4255
4248 PRINT" 1 = MIT BLOSSEN HAENDEN ANGREIFEN"
4249 PRINT" 2 = MIT MAGIE ANGREIFEN"
4250 PRINT" 3 = HEXE EINFACH INGNORIEREN"
4255 GOSUB 11800
4260 IF A$="N" AND HE=1 THEN PRINT" DIE HEXE HINDERT MICH":GOSUB 11400:GOTO 4200
4261 IF A$="O" AND HEX=1 THEN PRINT" DIE HEXE HINDERT MICH":GOSUB 11400:GOTO 4200
4262 IF A$="1" AND HE=1 THEN GOTO 4270
4263 IF A$="2" AND HE=1 THEN GOTO 4280
4264 IF A$="3" AND HE=1 THEN GOTO 4290
4265 IF A$="O" AND HE=0 THEN GOTO 4100
4266 IF A$="N" AND HE=0 THEN GOTO 4300
4269 GOTO 4200
4270 PRINT" ICH GREIFE SIE MIT MEINEN FAEUSTEN AN"
4271 PRINT" SIE SPUCKT MICH AN":GOTO 11500
4280 PRINT" ICH GREIFE SIE MIT MAGIE AN"
4281 PRINT" 1 = MIT EIGENER MAGIE"
4282 IF JU=1 THEN PRINT" 2 = MIT DEM JU-JU STAB"
4283 INPUT WA:IF WA=2 THEN 4287
4284 IF WA=1 THEN GOTO 4286
4285 GOTO 4283
4286 PRINT" ICH SCHLEUDERE BLITZE, SIE SCHLEUDERT   SIE ZURUECK. ICH BIN ZU SCHWACH":GOTO 11400
4287 PRINT" ICH GREIFE SIE MIT DEM JU-JU STAB AN"
4288 PRINT" UND DA SIE UNTOT IST, ZERSTOERT DER     STAB SIE NUN VOLLENDS":HE=0:HEX=0
4289 MA=MA+100:GOSUB 11500:GOTO 4200
4290 PRINT" ICH IGNORIERE SIE EINFACH"
4291 PRINT" DAS MAG SIE NICHT":GOTO 4271
4300 GOSUB 11700
4340 PRINT" ICH BIN IN EINEM KARGEN RAUM UND"
4341 PRINT" SEHE NUR EINEN HEBEL":PRINT:PRINT:PRINT" MOEGLICHE RICHTUNG"
4346 PRINT" NORDEN, SUEDEN":PRINT" MOEGLICHES HANDELN:":PRINT" 1 = HEBEL BEWEGEN":PRINT:PRINT
4355 GOSUB 11800
4360 IF A$="N" THEN 4400
4361 IF A$="S" THEN 4200
4362 IF A$="1" THEN 4370
4363 GOTO 4300
4370 PRINT" DER HEBEL LAESST SICH SCHWER BEWEGEN    AH, JETZT GIBT ER NACH, UND MIT IHM     DER BODEN.":GOSUB 11400
4400 GOSUB 11700
4430 PRINT" ICH BIN JETZT WIEDER AN EINER KREUZ-    UNG. ICH SEHE ZWEI KISTEN"
4445 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" WESTEN, NORDEN, SUEDEN":PRINT" MOEGLICHES HANDELN:"
4446 PRINT" 1 = KISTE 1 OEFFNEN"
4447 PRINT" 2 = KISTE 2 OEFFNEN"
4448 PRINT" 3 = BEIDE KISTEN GLEICHZEITIG OEFFNEN"
4449 GOSUB 11800
4460 IF A$="N" THEN 5000
4461 IF A$="S" THEN 4300
4462 IF A$="W" THEN 4500
4463 IF A$="1" THEN 4470
4464 IF A$="2" THEN 4480
4465 IF A$="3" THEN 4490
4469 GOTO 4400
4470 PRINT" ICH OEFFNE KISTE 1"
4471 IF H1=1 THEN PRINT" SIE IST LEER"
4472 IF H1=0 THEN PRINT" ES FLIESST MAGISCHE KRAFT IN MICH":MA=MA+30:H1=1
4479 GOSUB 11500:GOTO 4400
4480 PRINT" ICH OEFFNE KISTE 2"
4481 PRINT" HEXEN MAGIE GREIFT MICH ERBARMUNGSLOS   AN, SIE BRINGT MICH UM":GOSUB 11400
4490 PRINT" ICH OEFFNE BEIDE KISTEN":GOTO 4481
4500 GOSUB 11700
4530 PRINT" ICH BIN IN EINEM ZWISCHEN GANG"
4541 PRINT:PRINT:PRINT" MOEGLICHE RICHTUNGEN:":PRINT" WESTEN,OSTEN":PRINT" MOEGLICHES HANDELN:"
4542 PRINT" 1 = WARTEN":PRINT:PRINT
4550 GOSUB 11800
4560 IF A$="W" THEN 4600
4561 IF A$="O" THEN 4400
4562 IF A$="1" THEN 4570
4569 GOTO 4400
4570 PRINT" EINE STIMME ERSCHALLT:"
4571 PRINT" 'TERRA PESTEM TENETO SALUS HIC MANETO'"
4572 PRINT" DAS SEI DEINE RETTUNG DIE JETZT EINMAL  WIRKT":H3=1
4573 GOSUB 11500:GOTO 4500
4600 GOSUB 11700
4630 PRINT" ICH SEHE EINEN TOTAL LEEREN RAUM":PRINT:PRINT:PRINT
4631 PRINT" MOEGLICHE RICHTUNGEN":PRINT" NORDEN,OSTEN":PRINT" MOEGLICHES HANDELN:"
4632 PRINT" 1 = WARTEN":PRINT:PRINT
4650 GOSUB 11800
4660 IF A$="N" THEN 4700
4661 IF A$="O" THEN 4500
4662 IF A$="1" THEN 4670
4669 GOTO 4600
4670 PRINT" GUT ICH WARTE"
4671 PRINT" PLOETZLICH SENKT SICH DIE DECKE HERAB":PRINT:GOSUB 11400
4700 GOSUB 11700
4740 IF H2=1 THEN PRINT" EINE HEXE AUF EINEM BESEN GREIFT MICH   AN":PRINT:PRINT:PRINT
4745 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" NORDEN,SUEDEN":PRINT" MOEGLICHES HANDELN:"
4746 IF H2<>1 THEN GOTO 4756
4747 PRINT" 1 = MIT AMULETT ANGREIFEN               2 = MIT JU-JU STAB ANGREIFEN"
4748 PRINT" 3 = MIT ZAUBERSPRUCH ABWEHREN"
4749 PRINT" WAS SOLL ICH TUN";:INPUT A$
4750 IF A$="1" THEN 4770
4751 IF A$="2" THEN 4780
4752 IF A$="3" THEN 4790
4753 GOTO 4757
4756 GOSUB 11800
4757 IF A$="N" AND H2=0 THEN GOTO 4800
4758 IF A$="S" AND H2=0 THEN GOTO 4600
4760 GOTO 4700
4770 PRINT" ICH ATTACKIERE DIE HEXE MIT MERLINS"
4771 PRINT" STERN. NACH LAENGEREM KAMPF GELINGT":MA=MA+60
4772 PRINT" ES MIR, DIE HEXE ZU VERNICHTEN":H2=0:GOSUB 11500:GOTO 4700
4780 PRINT" ICH WILL DIE HEXE MIT DEM JU-JU STAB"
4781 PRINT" BEKAEMPFEN, DOCH ES KLAPPT NICHT"
4782 GOSUB 11400
4790 PRINT" ICH WENDE DEN ZAUBERSPRUCH AN"
4791 PRINT" ZAUBERSPRUCH";:INPUT F$
4792 IF F$="TERRA PESTEM TENETO SALUS HIC MANETO" THEN GOTO 4794
4793 PRINT" DER SPRUCH WAR FALSCH":GOSUB 11500
4794 PRINT" DIE HEXE IST VERNICHTET, DOCH DER":H3=0:H2=0
4795 PRINT" SPRUCH HAT SEINE WIRKUNG VERLOREN":GOSUB 11500:GOTO 4700
4800 GOSUB 11700
4840 IF H4=0 THEN PRINT" ICH BIN IN EINER SACKGASSE":PRINT:PRINT:PRINT
4845 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" SUEDEN";:IF H4=1 THEN PRINT", NORDEN"
4847 PRINT:PRINT" MOEGLICHE HANDELN:":PRINT" 1 = WARTEN":PRINT:PRINT
4855 GOSUB 11800
4860 IF A$="S" THEN 4700
4861 IF A$="1" THEN 4870
4862 IF H4=1 AND A$="N" THEN GOTO 4900
4869 GOTO 4800
4870 PRINT" IM NORDEN OEFFNET SICH PLOETZLICH EIN   TOR"
4871 GOSUB 11500:H4=1:GOTO 4800
4900 GOSUB 11700
4930 PRINT MA;" MAGISCHE KRAFT"
4940 IF H5=1 THEN PRINT" ICH HABE WIKKA DIE SUPERHEXE GEFUNDEN"
4941 IF H5=1 THEN PRINT" WIE SOLL ICH SIE BESIEGEN":PRINT:PRINT:PRINT" MOEGLICHE RICHTUNGEN:"
4942 PRINT" SUEDEN":PRINT " MOEGLICHES HANDELN:"
4948 IF H5=1 THEN PRINT" 1 = JU-JU STAB"
4949 IF H5=1 THEN PRINT" 2 = AMULETT"
4950 IF H5=1 THEN PRINT" 3 = MAGISCHE SPRUECHE"
4955 GOSUB 11800
4960 IF H5=1 AND A$="S" THEN 4900
4961 IF H5=1 AND A$="1" THEN 4970
4962 IF H5=1 AND A$="2" THEN 4980
4963 IF H5=1 AND A$="3" THEN 4990
4964 IF H5=0 AND A$="S" THEN 4800
4965 GOTO 4900
4970 PRINT" GUT ICH SETZE DEN JU-JU STAB EIN"
4971 PRINT" ER REAGIERT NICHT, DA DIE HEXE NICHT"
4972 PRINT" UNTOT ODER EIN DAEMON IST"
4973 GOSUB 11400
4980 PRINT" ICH SETZE DAS AMULETT EIN"
4981 PRINT" ES FLAMMT GRUEN AUF"
4982 PRINT" WIKKA LEITET DIE MAGISCHE KRAFT"
4983 PRINT" MIT IHRER HEXENKRAFT AUF MICH ZURUECK"
4984 GOTO 11400
4990 PRINT" ICH VERSUCHE DEN SPRUCH"
4991 PRINT" DEN SPRUCH BITTE";:INPUT F$
4992 IF F$="TERRA PESTEM TENETO SALUS HIC MANETO" AND H3=1 THEN GOTO 4995
4993 PRINT" DER SPRUCH WIRKT NICHT"
4994 GOSUB 11400
4995 PRINT" DER SPRUCH WIRKT"
4996 PRINT" DAS LEBEN DER HEXE ERLISCHT MIT DEM     VERWEHEN IHRER ASCHE."
4998 GOSUB 11500:H5=0:MA=MA+150:GOTO 4900
5000 GOSUB 11700
5030 PRINT" ICH SEHE EINE TOTE HEXE LIEGEN":PRINT:PRINT:PRINT
5045 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" SUEDEN, OSTEN":PRINT" MOEGLICHES HANDELN"
5048 PRINT" 1 = HEXE UNTERSUCHEN":PRINT:PRINT:GOSUB 11800
5060 IF A$="S" THEN 4400
5061 IF A$="O" THEN 5100
5062 IF A$="1" THEN 5070
5069 GOTO 5000
5070 PRINT" DIE HEXE IST HALB VERFALLEN UND ES      FEHLT DER RECHTE ARM"
5073 PRINT" UND REISST MIR DEN KEHLKOPF HERAUS"
5075 GOSUB 11400
5100 GOSUB 11700
5130 PRINT" ICH BEFINDE MICH IN EINM SEITENKANAL":PRINT:PRINT
5145 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" WESTEN, OSTEN":PRINT:GOSUB 11800
5160 IF A$="W" THEN 5000
5161 IF A$="O" THEN 5500
5169 GOTO 5100
5200 GOSUB 11700
5240 IF HE=1 THEN PRINT" ICH SEHE EINE HALBVERWESTE GEIFERNDE    HEXE VOR MIR, DIE MICH ANGREIFEN WILL":PRINT:PRINT
5245 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" WESTEN, NORDEN":PRINT" MOEGLICHES HANDELN:"
5248 IF HE=1 THEN PRINT" 1 = MIT BLOSSEN HAENDEN ANGREIFEN"
5249 IF HE=1 THEN PRINT" 2 = MIT MAGIE ANGREIFEN"
5250 IF HE=1 THEN PRINT" 3 = HEXE EINFACH IGNORIEREN"
5255 PRINT" WAS SOLL ICH TUN?";:INPUT A$
5260 IF A$="N" AND HE=1 THEN PRINT" DIE HEXE HINDERT MICH":GOSUB 11500:GOTO 5200
5261 IF A$="W" AND HE=1 THEN PRINT" DIE HEXE HINDERT MICH":GOSUB 11500:GOTO 5200
5262 IF A$="1" THEN 5270
5263 IF A$="2" THEN 5280
5264 IF A$="3" THEN 5290
5265 IF A$="W" THEN 4100
5266 IF A$="N" THEN 5300
5269 GOTO 5200
5270 PRINT" ICH GREIFE SIE MIT MEINEN FAUESTEN AN"
5271 PRINT" SIE SPUCKT MICH AN":GOTO 11400
5280 PRINT" ICH GREIFE SIE MIT MAGIE AN"
5281 PRINT" 1 = MIT EIGENER MAGIE"
5282 IF JU=1 THEN PRINT" 2 = MIT JU-JU STAB"
5283 INPUT WA:IF WA=2 AND JU=0 THEN 5283
5284 IF WA=2 THEN GOTO 5287
5285 PRINT" ICH SCHLEUDERE BLITZE, SIE SCHLEUDERT   SIE ZURUECK"
5286 PRINT" ICH BIN ZU SCHWACH":GOTO 11400
5287 PRINT" ICH GREIFE SIE MIT DEM JU-JU STAB AN"
5288 PRINT" UND DA SIE UNTOT IST, ZERSTOERT DER     STAB SIE NUN VOLLENDS":HE=0
5289 MA=MA+100:GOSUB 11500:GOTO 5200
5290 PRINT" ICH IGNORIERE SIE EINFACH, ABER DAS MAG SIE NICHT":GOTO 5271
5300 GOSUB 11700
5340 PRINT" ICH BIN IN EINEM KARGEN RAUM UND"
5341 PRINT" SEHE EIN HUEBSCHES MAEDCHEN MIT GRUENEN AUGEN":PRINT" MOEGLICHE RICHTUNGEN:":PRINT" NORDEN, SUEDEN"
5347 PRINT" MOEGLICHES HANDELN:":PRINT" 1 = MIT MAEDCHEN EINLASSEN":PRINT:PRINT
5350 GOSUB 11800
5360 IF A$="N" THEN 5400
5361 IF A$="S" THEN 5200
5362 IF A$="1" THEN 5370
5369 GOTO 4300
5370 PRINT" DAS MAEDCHEN IST WUNDERSCHOEN, ES IST"
5371 PRINT" MIR EGAL, OB DAS EINE VON WIKKAS FALLEN IST":PRINT" ES IST EINE":GOSUB 11400
5400 GOSUB 11700
5440 PRINT" ICH SEHE IN DEM RAUM 3 AUSGAENGE"
5441 PRINT" DIE NACH NORDEN FUEHREN"
5442 PRINT" WELCHEN SOLL ICH NEHMEN?":PRINT" MOEGLICHE RICHTUNGEN:":PRINT" SUEDEN"
5447 PRINT" MOEGLICHES HANDELN"
5448 PRINT" 1 = AUSGANG 1"
5449 PRINT" 2 = AUSGANG 2"
5450 PRINT" 3 = AUSGANG 3"
5452 GOSUB 11800
5460 IF A$="S" THEN 5300
5462 IF A$="1" THEN 5470
5463 IF A$="2" THEN 5470
5464 IF A$="3" THEN 5470
5469 GOTO 5400
5470 PRINT" HOFFENTLICH IST DAS DER RICHTIGE WEG"
5471 PRINT" ICH VERLASSE DEN RAUM"
5472 GOSUB 11500:GOTO 5500
5500 GOSUB 11700
5540 PRINT" ICH SEHE WIKKA VOR MIR"
5541 PRINT" WIE SOLL ICH SIE TOETEN":PRINT:PRINT
5545 PRINT" MOEGLICHE RICHTUNGEN:":PRINT" WESTEN, SUEDEN":PRINT" MOEGLICHES HANDELN:"
5548 PRINT" 1 = MIT MAGIE ANGREIFEN"
5549 IF AM=1 THEN PRINT" 2 = MIT AMULETT ANGREIFEN"
5555 GOSUB 11800
5560 IF A$="W" THEN 5100
5561 IF A$="S" THEN 5400
5562 IF A$="1" THEN 5570
5563 IF A$="2" THEN 5570
5569 GOTO 5500
5570 PRINT" ICH SCHLAGE MIT ALL MEINER MACHT ZU "
5571 PRINT" UND SIEHE DA, WIKKA ZEREISST ES"
5572 PRINT" ABER DIE EXPLOSION IST SELBST ZU"
5573 PRINT" STARK FUER MICH":GOTO 11400
6000 PRINT"}":IF SJ>1 THEN 6100
6010 GOSUB 21000
6050 PRINT" EIN GESCHAEFTSMANN BRAUCHT FUER EIN";
6051 PRINT"   WICHTIGES GESCHAEFT 1.000.000,-"
6052 PRINT" IN BAR. ER DENKT 'DAFUER WUERDE ICH"
6053 PRINT" MEINE SEELE GEBEN'"
6054 PRINT:GOSUB 21100
6063 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN 6000
6064 IF A$="1" THEN MA=MA+25:SJ=SJ+2:GOTO 2000
6065 GOTO 2000
6100 PRINT"}":IF SJ>2 THEN GOTO 6200
6110 GOSUB 21000
6150 PRINT" EIN DUMMER MENSCH SITZT IN EINER";
6151 PRINT"      BAR UND SIEHT EINER TAENZERIN ZU"
6152 PRINT" 'FUER DIESES MAEDCHEN WUERDE ICH"
6153 PRINT" MEINE SEELE VERPFAENDEN'":GOSUB 21100
6160 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN GOTO 6000
6164 IF A$="1" THEN SJ=SJ+1:MA=MA+25:GOTO 2000
6165 GOTO 2000
6200 PRINT"}":IF SJ>3 THEN GOTO 6300
6210 GOSUB 21000
6250 PRINT" JEMAND WILL SICH AN SEINEN MIT-"
6251 PRINT" MENSCHEN RAECHEN. ER WURDE NIE"
6252 PRINT" GELIEBT, SONDERN IMMER NUR GEHASST"
6255 GOSUB 21100
6263 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN GOTO 6000
6264 IF A$="1" THEN SJ=SJ+1:MA=MA+25:GOTO 2000
6265 GOTO 2000
6300 PRINT"}":IF SJ>4 THEN GOTO 6400
6310 GOSUB 21000
6350 PRINT" EIN MANN AUS EINER TEUFELSSEKTE"
6351 PRINT" BIETET SEINE SEELE FUER 50 JAHRE"
6352 PRINT" JUGEND FEIL"
6355 GOSUB 21100
6363 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN GOTO 6000
6364 IF A$="1" THEN SJ=SJ+1:MA=MA+25:GOTO 2000
6365 GOTO 2000
6400 PRINT"}":IF SJ>5 THEN GOTO 6500
6410 GOSUB 21000
6450 PRINT" EINE FRAU IN EINEM ABSTUERZENDEM"
6451 PRINT" FLUGZEUG, WILL IHRE SEELE VERKAUFEN,"
6452 PRINT" WENN SIE AM LEBEN BLEIBT"
6455 GOSUB 21100
6463 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN GOTO 6000
6464 IF A$="1" THEN SJ=SJ+1:MA=MA+25:GOTO 2000
6465 GOTO 2000
6500 PRINT"}":IF SJ>6 THEN GOTO 6600
6510 GOSUB 21000
6550 PRINT" 'WENN ICH GOLD FINDE, KANN DER"
6551 PRINT" TEUFEL MEINE SEELE HABEN'"
6552 PRINT" DENKT EIN NACH GOLD SCHUERFENDER      ALTER MANN"
6555 GOSUB 21100
6563 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN GOTO 6000
6564 IF A$="1" THEN SJ=SJ+1:MA=MA+25:GOTO 2000
6565 GOTO 2000
6600 PRINT"}":IF SJ>7 THEN SJ=7
6610 GOSUB 21000
6650 PRINT" EIN MANN MITTE DREISSIG BIETET"
6651 PRINT" VON SELBST SEINE SEELE AN"
6652 GOSUB 21100
6663 PRINT:INPUT A$:IF A$<>"1" AND A$<>"2" THEN GOTO 6000
6664 IF A$="2" THEN 2000
6665 PRINT:PRINT" DIES IST EINE FALLE !!!"
6666 PRINT" EIN MAECHTIGER GEGNER DER HOELLE,"
6667 PRINT" JEMAND AUS DER DYNASTIE DER EWIGEN"
6668 PRINT" GREIFT MICH MIT SEINER MAGIE AN":GOTO 11400
6669 GOTO 2000
7000 PRINT"}"
7005 PRINT"   DER TAG DER ENTSCHEIDUNG"
7006 PRINT"   ????????????????????????"
7010 PRINT" ICH FORDERE DEN TEUFEL HERAUS"
7020 PRINT" DER HERRSCHER DER SCHWEFELKLUEFTE MUSS"
7030 PRINT" SICH MIR ZUM KAMPF STELLEN"
7035 PRINT" ICH HABE FOLGENDES ZUR VERFUEGUNG:":PRINT:PRINT:PRINT:PRINT
7050 IF AM=1 THEN PRINT" ICH HABE DAS 5. AMULETT"
7060 IF JU=1 THEN PRINT" ICH HABE DEN JU-JU STAB"
7070 PRINT" ICH HABE ";MA;" MAGISCHE KRAFT"
7080 PRINT:GOTO 11500
7100 IF MA<500 THEN 7200
7110 IF AM<>1 OR JU<>1 THEN 7200
7120 IF AM=1 AND JU=1 THEN 7130
7130 PRINT"}":PRINT:PRINT:PRINT" DER TEUFEL IST BESIEGT"
7150 PRINT" LEONARDO WURDE VON MIR VERNICHTET"
7160 PRINT" JETZT BIN ICH HERRSCHER DER FALSCHEN    HIRARCHIE"
7173 PRINT:PRINT" WER WEISS, VIELLEICHT WERDE ICH EINST   MINISTERPRAESIDENT DES SATANS"
7180 PRINT:PRINT:PRINT" ABER DAS IST EINE ANDERE GESCHICHTE..."
7190 GOTO 7190
7200 PRINT"}":PRINT:PRINT:PRINT" ES IST NICHT GELUNGEN DEN TEUFEL ZU     BESIEGEN."
7230 PRINT:PRINT" MAGNUS FRIEDRICH EISENBEISS EXISTIERT   NICHT MEHR":PRINT:GOTO 11400
10000 PRINT"}":PRINT
10001 PRINT"FRIEDRICH MAGNUS EISENBEISS, DEIN"
10002 PRINT"SCHICKSAL HAT DICH EREILT. JETZT"
10003 PRINT"HERRSCHST DU NICHT IN DER HOELLE,"
10004 PRINT"JETZT SCHMORST DU IN IHR.":PRINT
10005 GOSUB 11500
10007 PRINT"ES IST NICHT TOT WAS EWIG LIEGT,      BIS DASS DER TOD DIE ZEIT BESIEGT."
10009 PRINT:PRINT"SO BEKOMMST DU NOCH EINE CHANCE!":PRINT:PRINT:GOSUB 11500:GOTO 1003
11000 REM 
11010 RETURN 
11100 REM 
11110 RETURN 
11200 REM 
11210 RETURN 
11400 PRINT:PRINT"RETURN";:INPUT A$:GOTO 10000
11500 PRINT"RETURN";:INPUT A$:RETURN 
11600 PRINT" WAS SOLL ICH UNTERSUCHEN?";:INPUT WA
11601 IF WA=9 THEN GOTO 3301
11602 RETURN 
11700 PRINT"}":PRINT:PRINT:PRINT" DAS LABYRINTN DER HEXEN"
11701 PRINT" =======================":PRINT:RETURN 
11800 PRINT" WAS SOLL ICH TUN";:INPUT A$:RETURN 
20000 PRINT FRE(0)
21000 PRINT"      SEELENJAGD"
21001 PRINT"      ??????????":PRINT:RETURN 
21100 PRINT:PRINT:PRINT:PRINT" SOLL ICH DIE SEELE ANNEHMEN?":PRINT" 1 = JA":PRINT" 2 = NEIN":RETURN 