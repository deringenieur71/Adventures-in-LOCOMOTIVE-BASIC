1 REM APSE CPC 2020 by SRS
2 mode 2:ink 0,13:border 13:ink 1,0:GOSUB 25000
3 td$="The trees are too dense in that direction."
4 tw$="There's a wall there."
5 defint x,r,m:DIM de$(61),rd$(61),no$(53),ob$(53),lo(53),m(61,6),vb$(22),mh(53)
10 PRINT
15 RESTORE 1001:FOR x=1 TO 20:READ rd$(x),de$(x):NEXT
16 FOR x=1 TO 53:READ no$(x),ob$(x),lo(x):NEXT:lv=1:na$="Dunric"
17 FOR x=1 TO 20:FOR y=1 TO 6:READ m(x,y):NEXT:NEXT:hp=100:hm=100:e=0:ex=0:g=150
18 FOR x=1 TO 21:READ vb$(x):NEXT:FOR x=40 TO 53:READ mh(x):NEXT:GOTO 1800
19 rm=1
20 GOSUB 25000
21 lo(33)=1047
24 CLS
25 IF lt=0 AND rm>7 THEN PRINT "It's too dark to see!":PRINT ">";rd$(rm):GOTO 27
26 PRINT ">";rd$(rm):PRINT de$(rm)
27 IF lt=1 AND rm>7 THEN fue=fue-2:IF fue<0 THEN lt=0:PRINT "Your fuel has expired...":ic=ic-1:lo(10)=10
30 PRINT:PRINT "Obvious exits:<";
31 FOR x=1 TO 6:IF m(rm,x)>0 THEN PRINT no$(x);" ";
32 NEXT:PRINT ">"
33 FOR x=7 TO 50:IF lo(x)=rm THEN PRINT "There is a(n) ";no$(x);" here."
34 NEXT:IF jj=0 THEN jj=1:GOTO 700
35 GOSUB 5000:dt$="":fk$="":a$="":oj$="":n=0:v=0:x=0:o=0:PRINT ">";:INPUT "",a$:ct=ct+1:IF ct>199 THEN ct=0:dy=dy+1:PRINT "It is now day";dy;"..."
36 fk$=a$:IF a$="q" OR a$="qu" OR a$="quit" THEN CLS:PRINT "Bye!":END
37 IF a$="n" OR a$="go north" OR a$="north" OR a$="go no" THEN n=1:GOTO 120
38 IF a$="s" OR a$="go south" OR a$="south" OR a$="go so" THEN n=2:GOTO 120
39 IF a$="e" OR a$="go east" OR a$="east" OR a$="go ea" THEN n=3:GOTO 120
40 IF a$="w" OR a$="go west" OR a$="west" OR a$="go we" THEN n=4:GOTO 120
41 IF a$="u" OR a$="go up" OR a$="up" THEN n=5:GOTO 120
42 IF a$="d" OR a$="go down" OR a$="down" OR a$="go do" THEN n=6:GOTO 120
43 IF a$="l" OR a$="lo" OR a$="look" THEN GOTO 25
44 IF a$="sc" OR a$="score" OR a$="?" THEN GOTO 600
45 IF a$="i" OR a$="in" OR a$="inv" OR a$="inven" OR a$="inve" OR a$="inventory" THEN GOTO 700
46 IF a$="room" THEN PRINT "You are in room";rm:PRINT:GOTO 35
47 IF a$="save" OR a$="save game" THEN GOTO 2000
48 IF lo(33)=-1 THEN PRINT "Congratulations! You have found the Orb of Light!":GOTO 1990
49 IF a$="help" THEN GOTO 2200
50 pt=1:nm=0
51 dt$=a$:FOR a=1 TO LEN(dt$)
52 IF MID$(dt$,a,1)=" " THEN a$=MID$(dt$,pt,a-pt):pt=a+1:nm=nm+1:wd$(nm)=a$
53 NEXT:nm=nm+1:a$=MID$(dt$,pt,a-pt):wd$(nm)=a$
54 IF a$="" THEN PRINT "I didn't understand that. Try again please.":GOTO 35
55 IF LEN(a$)>30 THEN PRINT "Your command is too complex. Please rephrase it.":GOTO 35
56 oj$=wd$(4):IF nm=0 THEN nm=1
57 FOR x=1 TO nm
58 FOR y=1 TO 53:IF wd$(x)=no$(y) AND x=2 THEN o=y
59 IF wd$(x)=no$(y) THEN n=y
60 NEXT:NEXT
61 FOR x=1 TO nm
62 FOR y=1 TO 21
63 IF wd$(x)=vb$(y) THEN v=y
64 NEXT:NEXT
65 IF v=0 THEN PRINT "What?":GOTO 35
66 IF LEFT$(fk$,3)="exa" THEN GOTO 70
67 IF n=0 THEN PRINT "You can't do that.":GOTO 35
70 ON v GOTO 260,270,280,290,300,310,320,330,340,350,361,370,380,390,310,400,490
71 PRINT "What you expected did not happen.":GOTO 35
120 IF n=1 AND rm=7 OR n=3 AND rm=1 OR n=2 AND rm=1 OR rm=2 AND n=4 OR n=1 AND rm=7 OR n=4 AND rm=7 OR rm=8 AND n=3 OR rm=3 AND n=2 THEN PRINT td$:GOTO 35
121 IF n=4 AND rm=11 OR rm=12 AND n=3 OR rm=12 AND n=2 OR rm=9 AND n=1 OR rm=9 AND n=2 OR rm=9 AND n=4 OR rm=16 AND n=1 OR rm=16 AND n=4 THEN PRINT td$:GOTO 35
122 IF rm=18 AND n=1 OR rm=18 AND n=3 OR rm=18 AND n=2 OR rm=14 AND n=2 OR rm=14 AND n=3 OR n=1 AND rm=32 OR n=1 AND rm=34 OR n=1 AND rm=35 THEN PRINT td$:GOTO 35
123 IF rm=10 AND n=1 OR rm=10 AND n=2 OR rm=10 AND n=4 OR rm=4 AND n=1 OR rm=4 AND n=2 OR rm=5 AND n=1 OR rm=5 AND n=2 OR rm=5 AND n=3 THEN PRINT tw$:GOTO 35
124 IF rm=6 AND n<>6 OR rm=22 AND n<>3 OR rm=23 AND n<>4 OR rm=24 AND n<>3 OR rm=26 AND n<>4 OR rm=30 AND n<>2 OR rm=31 AND n<>4 THEN PRINT tw$:GOTO 35
125 IF rm=43 AND n<>4 AND n<>5 OR rm=44 AND n<>6 THEN PRINT tw$:GOTO 35
126 IF rm=3 AND n=1 AND lt=0 OR rm=2 AND n=1 AND lt=0 THEN PRINT "It's too dark to move in that direction!":GOTO 35
129 IF m(rm,n)=0 THEN PRINT "You can't go that way!":GOTO 35
130 rm=m(rm,n):PRINT "You move ";no$(n);"...":PRINT:GOTO 25
259 REM wield
260 IF lo(n)<>-1 THEN PRINT "The ";no$(n);" cannot be wielded.":GOTO 35
261 IF n<>15 AND n<>22 AND n<>27 AND n<>32 AND n<>36 AND n<>37 AND n<>38 AND n<>39 THEN PRINT "The ";no$(n);" cannot be wielded.":GOTO 35
262 IF wd=0 THEN wd=1:PRINT "You wield ";no$(n);".":lo(n)=105:dm=n-7:GOTO 35
263 PRINT "You are already wielding a weapon!":GOTO 35
269 REM unwield
270 IF lo(n)<>105 THEN PRINT "The ";no$(n);" cannot be unwielded.":GOTO 35
271 lo(n)=-1:PRINT "You unwield ";no$(n);".":dm=1:wd=0:GOTO 35
279 REM wear
280 IF lo(n)<>-1 THEN PRINT "The ";no$(n);" cannot be worn.":GOTO 35
281 IF n<>11 AND n<>16 AND n<>17 AND n<>18 THEN PRINT "The ";no$(n);" cannot be worn.":GOTO 35
282 lo(n)=205:ac=ac+(n-14)+n:PRINT "You wear ";no$(n);".":GOTO 35
289 REM remove
290 IF lo(n)<>205 THEN PRINT "The ";no$(n);" cannot be removed.":GOTO 35
292 lo(n)=-1:ac=ac-(n-14)+n:PRINT "You remove ";no$(n);".":GOTO 35
299 REM take
300 GOTO 19000
301 IF lo(n)<>rm THEN PRINT "That isn't here.":GOTO 35
302 IF n<7 OR n>39 THEN PRINT "You can't take the ";no$(n);"!":GOTO 35
303 IF ic>10 THEN PRINT "You are carrying too many items.":GOTO 35
304 lo(n)=-1:ic=ic+1:PRINT no$(n);":Taken.":GOTO 35
310 IF lo(n)<>-1 AND lo(n)<>105 AND lo(n)<>205 THEN PRINT "The ";no$(n);" cannot be dropped.":GOTO 35
311 IF lo(n)=105 THEN PRINT "The ";no$(n);" must be unwielded.":GOTO 35
312 IF lo(n)=205 THEN PRINT "The ";no$(n);" must be removed.":GOTO 35
313 IF lo(n)<>-1 THEN PRINT "The ";no$(n);" isn't here to drop.":GOTO 35
314 lo(n)=rm:ic=ic-1:PRINT no$(n);":Dropped.":GOTO 35
319 REM read
320 IF a$="read sign" AND rm=11 THEN PRINT "The sign reads:'No hunting.'":GOTO 35
321 IF a$="read scroll" THEN IF lo(8)=-1 OR lo(8)=rm THEN PRINT "The scroll reads:'The wolfsbane is poisonous to eat.'":GOTO 35
322 IF a$="read scroll" THEN PRINT "You don't see a scroll here.":GOTO 35
323 PRINT "You don't see anything special.":GOTO 35
329 REM examine command
330 a$=dt$:if lower$(left$(a$,8))="examine " then a$=mid$(a$,9,len(a$)):GOTO 18000
331 IF lo(n)<>-1 AND lo(n)<>rm AND lo(n)<>105 AND lo(n)<>205 THEN PRINT "You don't see that here.":GOTO 35
332 IF n=0 OR n<7 OR n>53 THEN PRINT "You see nothing special.":GOTO 35
333 IF n=9 OR n=18 OR n=19 THEN GOTO 15100
339 PRINT ob$(n):GOSUB 1880:GOTO 35
340 IF lo(o)=105 OR lo(o)=205 THEN PRINT "You can't do that.":GOTO 35
341 IF wd$(4)="backpack" AND lo(9)=-1 THEN si=9:GOTO 1500
342 IF wd$(4)="knapsack" AND lo(18)=-1 THEN si=18:GOTO 15000
343 IF wd$(4)="sack" AND lo(19)=-1 THEN si=19:GOTO 15000
344 IF lo(9)<>-1 THEN PRINT "You don't have the backpack!":GOTO 35
345 IF lo(18)<>-1 THEN PRINT "You don't have the knapsack!":GOTO 35
346 IF lo(19)<>-1 THEN PRINT "You don't have the sack!":GOTO 35
349 REM use part 2
350 IF lo(n)<>-1 THEN PRINT "You can't use that here.":GOTO 35
351 IF n=8 THEN PRINT "Try reading it instead.":GOTO 35
352 IF n=10 THEN PRINT "The oil cannot be used by itself.":GOTO 35
353 IF n=12 THEN PRINT "You use holy water...You feel much better!":hp=hm:GOTO 35
354 IF n=13 AND lo(10)<>-1 THEN PRINT "You need oil for the lantern!":GOTO 35
355 IF n=13 THEN lt=1:PRINT "The lantern is now on...":fue=100:GOTO 35
356 IF n=14 THEN zon=INT(RND * 20)+1:PRINT "You gaze into the mirror...":PRINT:PRINT de$(zon):GOTO 35
357 IF n=20 THEN PRINT "You use the flute...":PRINT "You feel light as air!":rm=6:GOTO 25
358 IF n=29 THEN PRINT "You must use this in combat.":GOTO 35
359 IF n=15 AND rm=12 THEN PRINT "The pole is too short to reach the branches.":GOTO 35
360 PRINT "That cannot be used.":GOTO 35
361 IF lo(n)<>-1 THEN PRINT "You need to be carrying that to light.":GOTO 35
362 IF n=23 AND lo(10)<>-1 THEN PRINT "You need oil to light the torch!":GOTO 35
363 IF n=23 THEN lt=1:fue=50:PRINT "The torch is now lit.":GOTO 35
364 PRINT "What,you think you can light things on fire repeatedly?":GOTO 35
369 REM extinguish
370 IF lo(n)<>-1 THEN PRINT "You need to be carrying that first!":GOTO 35
371 IF lt=0 THEN PRINT "You can't extinguish that!":GOTO 35
372 IF n=13 THEN PRINT "The lantern cannot be extinguished.":GOTO 35
373 IF n=23 AND lt=1 THEN lt=0:fue=0:PRINT "The torch is now unlit.":GOTO 35
374 PRINT "What you expected didn't happen.":GOTO 35
379 REM eat
380 IF lo(n)<>-1 THEN PRINT "You don't have that to eat!":GOTO 35
381 IF n=7 THEN PRINT "You eat the food...":PRINT "You feel better!":hp=hm:lo(7)=4:ic=ic-1:GOTO 35
382 IF n=21 THEN PRINT "You eat the cheese...":PRINT "You feel stronger!":hm=hm+1:lo(21)=4:ic=ic-1:GOTO 35
383 IF n=26 THEN PRINT "You eat the wolfsbane...":PRINT "But it's poisonous!":PRINT "You died...":END
384 PRINT "You can't eat that.":GOTO 35
389 REM drink
390 IF lo(n)<>-1 THEN PRINT "You aren't carrying that to drink!":GOTO 35
391 IF n=12 OR n=24 THEN PRINT "It tastes like normal water.":GOTO 35
392 IF n=25 THEN PRINT "You drink the wine...":PRINT "It tastes good!":lo(25)=4:ic=ic-1:hp=hm:GOTO 35
393 IF n=29 THEN PRINT "You drink potion...":PRINT "However,nothing happens!":hp=1:GOTO 35
394 PRINT "You can't drink that.":GOTO 35
399 REM attack
400 IF n<40 THEN PRINT "You can't kill something that isn't alive.":GOTO 35
401 IF lo(n)<>rm THEN PRINT "The ";no$(n);" isn't here.":GOTO 35
402 si=0:FOR x=7 TO 39:IF lo(x)=105 THEN PRINT "You fight with the ";no$(x);".":dm=x:si=1
403 NEXT:IF si=0 THEN PRINT "Alas,you fight empty-handed...":si=1:dm=1
404 REM
405 i=INT(RND * 25)+1:PRINT "You attack:":dtk=0
406 IF i<5 THEN PRINT "You missed the ";no$(n);"...":GOTO 420
407 IF i>4 AND i<10 THEN PRINT "You struck ";no$(n);" solidly":dtk=dm+i:mh(n)=mh(n)-dtk
408 IF i>9 AND i<15 THEN PRINT "You decimated ";no$(n);"!":dtk=dm * 4:mh(n)=mh(n)-dtk
409 IF i=15 OR i=16 OR i=17 OR i=18 THEN IF lo(38)=105 THEN PRINT "Your scimitar glows!":PRINT "The ";no$(n);" is destroyed!":mh(n)=-1
410 IF i>18 THEN PRINT "The ";no$(n);" parries your attack...":GOTO 420
420 i=INT(RND * 25)+1
421 PRINT:PRINT "The ";no$(n);" attacks:":dtk=0
422 IF i<5 THEN PRINT "You dodge the attack..."
423 IF i>4 AND i<10 THEN PRINT "You sustained a solid blow!":hp=hp-25+CINT(ac / 4)
424 IF i>9 AND i<15 THEN PRINT "You are <<< DESTROYED >>>!":hp=hp-100+CINT(ac / 4)
425 IF i>14 THEN PRINT "You manage to deflect the blow..."
430 IF hp<1 THEN PRINT "Alas,you have died...":PRINT "Better luck next time!":END
431 IF mh(n)<1 THEN PRINT "You killed ";no$(n);".":PRINT "The ";no$(n);" has died.":GOTO 440
432 PRINT:PRINT "Your HP ";hp;:PRINT:PRINT "Monster's ";mh(n);:PRINT:PRINT "The battle continues...":GOTO 400
440 FOR x=7 TO 39:IF lo(x)=1000+n THEN PRINT "You found ";no$(x);" on it!":lo(x)=rm
441 NEXT:dtk=n * 2+i:g=g+dtk:PRINT "You found";dtk;"gold on the corpse of ";no$(n);"...":dtk=0:e=e+g+i+dm
442 ex=ex+n+i
443 IF e>500 THEN PRINT "You gained a level!":hm=hm+25:hp=hm:e=0:ex=ex+25
444 GOTO 35
489 REM day/night
490 IF ct>0 AND ct<25 THEN PRINT "It is sunset."
491 IF ct>24 AND ct<75 THEN PRINT "It is early evening."
492 IF ct>74 AND ct<100 THEN PRINT "It is past midnight."
493 IF ct>99 AND ct<150 THEN PRINT "The sun is rising."
494 IF ct>149 AND ct<160 THEN PRINT "It is sunrise."
495 IF ct>159 AND ct<170 THEN PRINT "It is morning."
496 IF ct>169 AND ct<200 THEN PRINT "It is midday."
497 GOTO 35
499 REM get from
500 IF wd$(4)="backpack" THEN GOTO 505
501 IF wd$(4)="knapsack" THEN GOTO 515
502 IF wd$(4)="sack" THEN GOTO 525
503 PRINT "That didn't seem to work.":GOTO 35
505 IF lo(n)=305 AND ic<11 THEN ic=ic+1:lo(o)=-1:PRINT "You take the ";no$(n);" from backpack.":GOTO 35
506 GOTO 526
515 IF lo(n)=405 AND ic<11 THEN ic=ic+1:lo(o)=-1:PRINT "You take the ";no$(n);" from knapsack.":GOTO 35
516 GOTO 526
525 IF lo(n)=505 AND ic<11 THEN ic=ic+1:lo(o)=-1:PRINT "You take the ";no$(n);" from sack.":GOTO 35
526 PRINT "You are carrying too much weight.":GOTO 35
599 REM score
600 PRINT "You are ";na$;" the Brave ( level";lv;")."
601 PRINT "You have";hp;"of";hm;"hit points and"
602 PRINT "carry with you";g;"gold coins."
603 IF lt=1 THEN PRINT "You have";fue;"units of fuel left."
604 GOTO 35
699 REM inventory
700 ac=0:ic=0:FOR x=7 TO 39
701 IF lo(x)=-1 THEN PRINT " ";no$(x);".":ic=ic+1
702 IF lo(x)=105 THEN PRINT " ";no$(x);" (wielded).":ic=ic+1:wd=1
703 IF lo(x)=205 THEN PRINT " ";no$(x);" (worn).":ic=ic+1:ac=ac+(n-14)+n
704 NEXT:IF ic=0 THEN PRINT "You are empty handed.":GOTO 35
705 PRINT "You are carrying";ic;"items."
706 IF ac>0 THEN PRINT "Your armor is protecting";ac;"% of your body."
707 GOTO 35
1001 DATA "Path approaching village.","A small village lies to the north."
1002 DATA "Path in front of tavern.","The walkway to a tavern lies to the east of this north-south path. The path+continues north."
1003 DATA "Walkway to tavern.","You are on the stone walkway of the tavern. It is paved in cobblestone."
1004 DATA "Tavern.","You are in a poorly lit tavern. A back room occupies the entire downstairs+of this ancient building. A stairway leads up to a bedroom."
1005 DATA "Backroom of tavern.","The backroom of the tavern is used to store unwanted items. There are a few+items of interest scattered about the room."
1006 DATA "Bedroom.","You are in a small bedroom upstairs of the main tavern. There is a small+bed where you can sleep comfortably. A few items adorn the room."
1007 DATA "On the path.","You are on a path that heads north-south across this small village. To the+north lies a large cathedral."
1008 DATA "Small clearing.","You are standing in a small clearing. To the west lies a small path,while+west of here things become dark and oppressive."
1009 DATA "Dense forestland.","You are standing in a dense forest. There is very little light here. The+path west is blocked by fallen trees."
1010 DATA "Small house.","You are inside a small house. Simple furniture adorns the room,while a bed+rests near the back wall. A mantle rests above it."
1011 DATA "Dirt path.","You are walking on a path that cuts north-south across dense forest. There+is a sign by the side of the road here."
1012 DATA "Dense forestland.","You are standing in a dense forest. A large tree,with low-lying+branches,grows by the side of the road here."
1013 DATA "Middle forest.","You are in the middle of a dense forest. To the east lies a large Redwood+forest. A path lies undisturbed to the west here."
1014 DATA "Redwood forest.","You are standing in a large Redwood forest. Thousands of large trees+surround you in all directions."
1015 DATA "Intersection.","You are at an intersection in the middle of the Redwood forest. To the east+lies a small stream."
1016 DATA "Redwood alcove.","You are standing in a secluded alcove in the Redwood forest. There is a+rock here where you can rest if fatigued."
1017 DATA "End of the forest.","You have reached a hillside at the end of the forest. A tree stump sits+oddly in the middle of the grass."
1018 DATA "By the lake.","You are standing by a large lake. It has a mysterious aura about it. The+only exit is back west."
1019 DATA "Middle path.","You are walking along the middle of a long dirt path. To the east lies more+forestland,but the path ends abruptly to the north."
1020 DATA "End of path.","You have reached the end of the path. A large boulder blocks passage to the+north and west."
1101 DATA "north","99",99,"south","99",99,"east","99",99,"west","99",99,"up","99",99,"down","99",99
1107 DATA "food","Some food rations,lasting one week.",4
1108 DATA "scroll","An ancient scroll. It is tattered on the edges.",5
1109 DATA "backpack","A leather backpack. You can put things in it.",5
1110 DATA "oil","A flask of oil. It appears slightly used.",10
1111 DATA "shield","A crusader shield,stained with blood.",10
1112 DATA "holy water","A vial of holy water. It glows with a soft hue.",18
1113 DATA "lantern","A brass lantern,covered partially by rust.",10
1114 DATA "mirror","A small hand mirror. It is old,but useful.",6
1115 DATA "pole","A long wooden pole about seven feet in length.",5
1116 DATA "armor","A suit of leather armor. It is well crafted.",9
1117 DATA "cloak","An elven cloak. It is brown,tied at the waist by a long rope.",5
1118 DATA "knapsack","A small leather knapsack. You can put things in it.",6
1119 DATA "sack","A long sack,tied at one end. You can put things in it.",-1
1120 DATA "flute","A simple wooden flute.",1045
1121 DATA "cheese","A slice of cheese. It is aged to perfection.",1051
1122 DATA "pitchfork","A long metal pitchfork. It is used for baying hay.",30
1123 DATA "torch","A small wooden torch.",5
1124 DATA "canteen","A leather canteen. It is used for holding water.",18
1125 DATA "wine","A bottle of sparkling red wine.",4
1126 DATA "wolfsbane","A clove of wolfsbane. It has a peculiar odor.",15
1127 DATA "ironaxe","An iron axe. It has razor-sharp edges.",35
1128 DATA "ring","A ring of protection. It glows with a bluish hue.",1051
1129 DATA "potion","A magical potion used for making creatures disappear.",1053
1130 DATA "a","a",99
1131 DATA "a","a",99
1132 DATA "dagger","A small metal dagger. It has a jewel attached to the base of the hilt.",-1
1133 DATA "orb","A mysterious orb of unknown origin. It hums with a soft pitch.",44
1134 DATA "a","a",99
1135 DATA "a","a",99
1136 DATA "bowie knife","A large Bowie knife. It has a serrated edge.",1042
1137 DATA "sword","A long sword. It has somewhat dull edges.",1043
1138 DATA "scimitar","A long scimitar. It has a slivered edge.",1040
1139 DATA "two-handed sword","A two-handed sword. It has razor-sharp edges.",1046
1140 DATA "Handy","This is Handy smurf. He runs the shop in town. Ask him about the prices for+items by typing 'list'.",23
1141 DATA "Pappa","This is Pappa smurf. He protects the village from Gargamel and his cat,Asriel. He is mixing up a powerful potion to defeat him.",22
1142 DATA "Brainy","This is infamous Brainy smurf. He composes books and wears dorky looking+glasses. He is the least liked of all the smurfs.",33
1143 DATA "Farmer","This is Farmer smurf. He tends the farm near smurf village.",30
1144 DATA "Gargamel","The evil Gargamel! He is an old man who plots against the smurfs and makes+up deadly potions. He has a cat named Asriel.",43
1145 DATA "Asriel","This is Gargamel's cat,Asriel. He sleeps noisily in the back of the room.",44
1146 DATA "Mordimar","The evil Mordimar,Wizard of Evil! He laughs at you cruelly as you cower+in his presence. You sense great power around you unlike any other!",60
1147 DATA "skeleton","A skeletal warrior. He stares at you with evil eyes.",13
1148 DATA "timberwolf","A domesticated timberwolf,wandering alone by himself.",9
1149 DATA "ghost","A translucent ghost,lingering in the shadows.",18
1150 DATA "orc","A menacing orc. He snarls at you as you pass.",11
1151 DATA "villager","A simple villager. He is wearing a special ring around one of his fingers.",3
1152 DATA "elf","A small elf with pointed ears and a soft voice. He smiles at you with a funny+looking face.",16
1153 DATA "dragon","A large dragon with tough scales and powerful claws.",18
1301 DATA 2,0,0,10,0,0
1302 DATA 7,1,3,0,0,0
1303 DATA 8,0,4,2,0,0
1304 DATA 0,0,5,3,6,0
1305 DATA 0,0,0,4,0,0
1306 DATA 0,0,0,0,0,4
1307 DATA 0,2,8,0,0,0
1308 DATA 11,3,0,7,0,0
1309 DATA 0,0,19,0,0,0
1310 DATA 0,0,1,0,0,0
1311 DATA 19,8,12,0,0,0
1312 DATA 13,0,0,11,0,0
1313 DATA 0,12,14,19,0,0
1314 DATA 15,0,0,13,0,0
1315 DATA 17,14,18,16,0,0
1316 DATA 0,0,15,0,0,0
1317 DATA 0,15,0,0,0,0
1318 DATA 0,0,0,15,0,0
1319 DATA 20,11,13,9,0,0
1320 DATA 0,19,0,0,0,0
1501 DATA "wield"
1502 DATA "unwield"
1503 DATA "wear"
1504 DATA "remove"
1505 DATA "get"
1506 DATA "drop"
1507 DATA "read"
1508 DATA "examine"
1509 DATA "put"
1510 DATA "use"
1511 DATA "light"
1512 DATA "extinguish"
1513 DATA "eat"
1514 DATA "drink"
1515 DATA "throw"
1516 DATA "kill"
1517 DATA "time"
1518 DATA "time"
1519 DATA "time"
1520 DATA "time"
1521 DATA "time"
1600 DATA 20,25,45,58,16,78,218,450,650,280,100,200,1000,1200
1799 REM new game
1800 CLS:PRINT "Westfront to Apse II":PRINT "(C)opyright 1994-2002 by Paul Panks":PRINT "All rights reserved.":print"Converted to CPC 2020 by SRS":PRINT
1801 PRINT "Saved game? (Y/N):";
1802 a$=INKEY$:IF a$="" THEN GOTO 1802
1803 IF a$="y" OR a$="Y" THEN PRINT "Yes":GOTO 1850
1804 IF a$="n" OR a$="N" THEN PRINT "No":GOTO 1860
1805 GOTO 1802
1850 PRINT:PRINT "Enter your":PRINT "character name:";:INPUT "",na$:IF na$=CHR$(13) THEN PRINT "Invalid entry...":GOTO 1850
1851 PRINT:PRINT "Now loading...":GOSUB 2100:GOSUB 1900:GOTO 20
1860 PRINT:PRINT "Enter a name for your":PRINT "new character:";:INPUT "",na$:IF na$=CHR$(13) THEN PRINT "Name was invalid...":PRINT:GOTO 1860
1861 PRINT:PRINT "Your name is ";na$;"...":GOSUB 1900:GOTO 19
1880 IF n<40 THEN RETURN
1881 PRINT "The ";no$(n);" is carrying:"
1882 si=0:FOR x=7 TO 39:IF lo(x)=1000+n THEN PRINT " ";:PRINT no$(x);".":si=1
1883 NEXT:IF si=0 THEN PRINT "Nothing!":RETURN
1884 si=0:RETURN
1899 REM plot introduction
1900 CLS:PRINT "Plot introduction":PRINT
1901 PRINT "You are a common adventurer in seek":PRINT "of a rare Orb of Light. Whomever obtains":PRINT "this orb is said to be immortal.":PRINT
1902 PRINT "Well,you want to be immortal,too!":PRINT
1903 PRINT "Your goal is to locate this orb...":PRINT:PRINT "Press any key to go on"
1904 a$=INKEY$:IF a$="" THEN GOTO 1904
1905 RETURN
1990 CLS:PRINT "You found the Orb of Light!":PRINT:PRINT "You are now immortal! Your deeds have spread far across the"
1991 PRINT "land,and the people now worship you like the Sun above!":PRINT
1992 PRINT "Your final score was:";:PRINT ex+hp+hm+g
1993 PRINT:PRINT "Play again? (Y/N):";
1994 a$=INKEY$:IF a$="" THEN GOTO 1994
1995 IF a$="y" OR a$="Y" THEN PRINT "Yes":CLEAR:RUN
1996 IF a$="n" OR a$="N" THEN PRINT "No":CLEAR:PRINT "Good bye!":END
1997 GOTO 1994
1999 REM save
2000 OPENout na$+".sav"
2002 PRINT #9,hp:PRINT #9,hm:PRINT #9,e:PRINT #9,ex:PRINT #9,g:PRINT #9,ic:PRINT #9,ac:PRINT #9,ct:PRINT #9,fue:PRINT #9,lt:PRINT #9,rm:PRINT #9,bp:PRINT #9,sp:PRINT #9,kp
2003 FOR x=7 TO 53:PRINT #9,lo(x):NEXT:PRINT #9,dy:CLOSEOUT:PRINT "Done.":GOTO 35
2099 REM load
2100 REM load
2101 OPENIN na$+".sav"
2102 INPUT #9,hp:INPUT #9,hm:INPUT #9,e:INPUT #9,ex:INPUT #9,g:INPUT #9,ic:INPUT #9,ac:INPUT #9,ct:INPUT #9,fue:INPUT #9,lt:INPUT #9,rm:INPUT #9,bp:INPUT #9,sp:INPUT #9,kp
2103 FOR x=7 TO 53:INPUT #9,lo(x):NEXT:INPUT #9,dy:CLOSEIN:PRINT "Done.":RETURN
2199 REM help command
2200 PRINT "Command examples include:":PRINT:PRINT "get sword":PRINT "wield sword":PRINT "drop sword":PRINT "wear armor":PRINT "remove armor":PRINT "use lantern":PRINT "light torch":PRINT "extinguish torch"
2201 PRINT "examine dragon"
2202 PRINT "kill dragon":PRINT "put sword in knapsack":PRINT "get sword from knapsack":PRINT "inventory":PRINT "score":PRINT "save":PRINT "quit":GOTO 35
5000 FOR x=1 TO 10:wd$(x)="":NEXT:RETURN
7000 hp=hm:g=0:FOR x=7 TO 39:IF lo(x)=-1 OR lo(x)=105 OR lo(x)=205 THEN lo(x)=rm:PRINT "You drop ";no$(x);"..."
7001 NEXT:rm=4:GOTO 25
15000 IF lo(o)<>-1 THEN PRINT "Sorry,but that's impossible right now...":GOTO 35
15001 IF si=9 AND bp<5 THEN bp=bp+1:lo(o)=305:PRINT "Ok.":ic=ic-1:GOTO 35
15002 IF si=18 AND kp<3 THEN kp=kp+1:lo(o)=405:PRINT "Ok.":ic=ic-1:GOTO 35
15003 IF si=19 AND sp<4 THEN sp=sp+1:lo(o)=505:PRINT "Ok.":ic=ic-1:GOTO 35
15004 PRINT "It won't fit inside the ";wd$(4);".":GOTO 35
15100 IF n=9 THEN GOTO 15110
15101 IF n=18 THEN GOTO 15120
15102 IF n=19 THEN GOTO 15130
15103 PRINT "You see nothing unusual.":GOTO 35
15110 PRINT ob$(9):IF bp=0 THEN GOTO 35
15111 PRINT "Backpack contains:"
15112 FOR x=7 TO 39:IF lo(x)=305 THEN PRINT " ";no$(x);"."
15113 NEXT:GOTO 35
15120 PRINT ob$(18):IF kp=0 THEN GOTO 35
15121 PRINT "Knapsack contains:"
15122 FOR x=7 TO 39:IF lo(x)=405 THEN PRINT " ";no$(x);"."
15123 NEXT:GOTO 35
15130 PRINT ob$(19):IF sp=0 THEN GOTO 35
15131 PRINT "Sack contains:"
15132 FOR x=7 TO 39:IF lo(x)=505 THEN PRINT " ";no$(x);"."
15133 NEXT:GOTO 35
18000 IF a$="village" AND rm=1 THEN PRINT "It's a large village consisting of a church,a small tavern and several houses.":PRINT "Nothing unique.":GOTO 35
18001 IF a$="walkway" THEN IF rm=2 OR rm=3 THEN PRINT "This walkway is made out of cobblestone.":GOTO 35
18002 IF a$="tavern" AND rm=2 THEN PRINT "The tavern looks old and worn. It is a two-story building.":GOTO 35
18003 IF a$="tavern" AND rm=3 THEN PRINT "This tavern was built some time ago. The wall does not seem to support the":PRINT "weight of the structure.":GOTO 35
18004 IF a$="tavern" AND rm=4 THEN PRINT "This tavern consists of two stories. Chairs and tables are visible around the room":PRINT "with a backroom east.":GOTO 35
18005 IF a$="stairway" AND rm=4 THEN PRINT "This stairway looks creaky and worn. It heads upstairs into a bedroom.":GOTO 35
18006 IF a$="room" OR a$="backroom" THEN IF rm=5 THEN PRINT "You notice a large hand mirror near the back wall.":lo(14)=rm:GOTO 35
18007 IF a$="bedroom" AND rm=6 THEN PRINT "This bedroom has seen many visitors. The bed itself is hard as a rock.":GOTO 35
18008 IF a$="bed" AND rm=6 THEN PRINT "The bed is quite hard,but looks comfortable enough to lie in.":GOTO 35
18009 IF a$="path" AND rm=7 THEN PRINT "The path is made from dirt and clay.":GOTO 35
18010 IF a$="village" AND rm=7 THEN PRINT "The village has already been examined.":GOTO 35
18011 IF a$="cathedral" AND rm=7 THEN PRINT "This is a small,one-story cathedral. It appears inaccessible from here.":GOTO 35
18012 IF rm=8 THEN IF a$="clearing" THEN PRINT "You notice nothing special about the clearing.":GOTO 35
18013 IF rm=8 THEN IF a$="path" THEN PRINT "The path is well worn and dirty.":GOTO 35
18014 IF rm=9 THEN IF a$="forest" THEN PRINT "The forest becomes quite dense to the north and west.":GOTO 35
18015 IF rm=9 THEN IF a$="path" THEN PRINT "You notice nothing special.":GOTO 35
18016 IF rm=9 THEN IF a$="trees" THEN PRINT "These are conifers. They block passage to the west.":GOTO 35
18017 IF rm=10 THEN IF a$="house" THEN PRINT "This house is simple in design and relatively plain. You notice":PRINT "a window above a small bed.":GOTO 35
18018 IF rm=10 THEN IF a$="window" THEN PRINT "Looking out the window:":PRINT:PRINT "You see a small stream ahead to the north.":GOTO 35
18019 IF rm=10 THEN IF a$="room" THEN PRINT "The room is small and cramped. It is furnished with simple furniture.":GOTO 35
18020 IF rm=10 THEN IF a$="furniture" THEN PRINT "Which one?":GOTO 35
18021 IF rm=10 THEN IF a$="bed" THEN PRINT "This bed looks quite comfortable!":GOTO 35
18022 IF rm=10 THEN IF a$="wall" OR a$="back wall" THEN PRINT "You notice nothing unusual.":GOTO 35
18023 IF rm=10 THEN IF a$="mantle" THEN PRINT "You notice a few coins laying on the mantle and so you pick them up.":g=g+25:GOTO 35
18024 IF rm=11 THEN IF a$="path" OR a$="road" THEN PRINT "This road is well worn and nearly muddy.":GOTO 35
18025 IF rm=11 THEN IF a$="forest" THEN PRINT "The forest becomes much denser to the north.":GOTO 35
18026 IF rm=11 THEN IF a$="sign" THEN PRINT "It's a small wooden sign. Perhaps you should 'read' it?":GOTO 35
18027 IF rm=12 THEN IF a$="forest" THEN PRINT "The forest becomes dark and oppressive to the west.":GOTO 35
18028 IF rm=12 THEN IF a$="path" OR a$="road" THEN PRINT "The road is well worn.":GOTO 35
18029 IF rm=12 THEN IF a$="tree" THEN PRINT "This is a large tree with low-lying branches. It looks climbable.":GOTO 35
18030 IF rm=13 THEN IF a$="forest" THEN PRINT "There are two distinct forests nearby. Which one?":GOTO 35
18031 IF rm=13 THEN IF a$="Redwood forest" OR a$="redwood forest" THEN PRINT "This is a tall Redwood forest. You are still too far away.":GOTO 35
18032 IF rm=13 THEN IF a$="dense forest" THEN PRINT "The forest is quite dense and not easily penetrated without a sword.":GOTO 35
18033 IF rm=13 THEN IF a$="path" OR a$="road" THEN PRINT "This is a smaller path that heads west here across the landscape.":GOTO 35
18034 IF a$="Redwood forest" OR a$="redwood forest" OR a$="forest" THEN IF rm=14 THEN PRINT "This is a large Redwood forest.":GOTO 35
18035 IF a$="trees" THEN IF rm=14 THEN PRINT "These trees are centuries old. They have many red leaves and pines that stick out":PRINT "high into the air.":GOTO 35
18036 IF rm=15 THEN IF a$="intersection" THEN PRINT "There are four paths that head off in each direction here.":GOTO 35
18037 IF rm=15 THEN IF a$="forest" OR a$="redwood forest" OR a$="Redwood forest" THEN PRINT "This is a centuries old Redwood forest.":GOTO 35
18038 IF rm=15 THEN IF a$="stream" THEN PRINT "This is a small,meandering stream. It cannot be crossed from this point.":GOTO 35
18039 IF a$="alcove" AND rm=16 THEN PRINT "This is a secluded alcove in the middle of a large Redwood forest. You notice a large":PRINT "rock here.":GOTO 35
18040 IF a$="rock" AND rm=16 THEN PRINT "This rock is large and heavy. It appears suited for a tired person to rest on.":GOTO 35
18041 IF rm=17 THEN IF a$="hillside" THEN PRINT "The hillside is full of grass. It seems out of place here,amist the bramble":PRINT "of the forest.":GOTO 35
18042 IF rm=17 THEN IF a$="forest" THEN PRINT "The forest ends here at a large hillside. Back north lies a small path.":GOTO 35
18043 IF rm=17 THEN IF a$="stump" OR a$="tree stump" THEN PRINT "This is a rather odd tree stump! It has a small door attached to it!":GOTO 35
18044 IF rm=17 THEN IF a$="door" THEN PRINT "It's attached to the tree stump. Some small creature obviously lives here.":GOTO 35
18045 IF rm=17 THEN IF a$="grass" THEN PRINT "The grass is pleasant looking and very green.":GOTO 35
18046 IF rm=18 THEN IF a$="lake" THEN PRINT "This is a large lake at the end of the forest. It glimmers oddly!":GOTO 35
18047 IF rm=19 THEN IF a$="path" OR a$="road" THEN PRINT "The path heads north into dense forest land (to the north).":GOTO 35
18048 IF rm=20 THEN IF a$="path" OR a$="road" THEN PRINT "The path stops here at a large boulder.":GOTO 35
18049 IF rm=20 THEN IF a$="boulder" THEN PRINT "This is an immovable boulder. Magic couldn't move this thing!":GOTO 35
18099 GOTO 331
19000 IF oj$<>"sack" AND oj$<>"knapsack" AND oj$<>"backpack" THEN GOTO 301
19001 IF lo(o)<>305 AND lo(o)<>405 AND lo(o)<>505 AND lo(o)<>205 AND lo(o)<>rm THEN PRINT "You don't see that here.":GOTO 35
19002 IF lo(o)=105 OR lo(o)=205 THEN PRINT "You can't do that.":GOTO 35
19003 IF lo(9)=-1 AND wd$(4)="backpack" THEN si=9:GOTO 19110
19004 IF lo(18)=-1 AND wd$(4)="knapsack" THEN si=18:GOTO 19120
19005 IF lo(19)=-1 AND wd$(4)="sack" THEN si=19:GOTO 19130
19006 GOTO 301
19110 IF bp=0 THEN PRINT "The backpack is empty.":GOTO 35
19111 IF ic<10 THEN PRINT "Ok.":lo(o)=-1:ic=ic+1:bp=bp-1:GOTO 35
19112 PRINT "You are carrying too much already!":GOTO 35
19120 IF kp=0 THEN PRINT "The knapsack is empty.":GOTO 35
19121 IF ic<10 THEN PRINT "Ok.":lo(o)=-1:ic=ic+1:kp=kp-1:GOTO 35
19122 PRINT "You are carrying too much already!":GOTO 35
19130 IF sp=0 THEN PRINT "The sack is empty.":GOTO 35
19131 IF ic<10 THEN PRINT "Ok.":lo(o)=-1:ic=ic+1:sp=sp-1:GOTO 35
19132 PRINT "You are carrying too much already!":GOTO 35
25000 RETURN
63000 END

