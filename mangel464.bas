1 '
3 'So I Mangled My Mom
4 'by Aaron Oldenburg
5 '1995 -> converted to Schneider CPC 11/2017 SRS
7 REM begin.yes.no:
8 mode 2
9 PRINT "Type everything in lowercase."
10 PRINT
11 PRINT "Which part would you like to go to (1/2/3)?"
12 INPUT "(If beginning a new game, choose 1)", a
13 IF a=1 THEN GOTO 18:REM begin.new
14 IF a=2 THEN CLS:cbs=1:hsniffy=1:hguilty=1:gosub 244:gosub 257:goto 55
15 IF a=3 THEN CLS:yhc=1:nis=1:gosub 386:gosub 392:goto 55
16 GOTO 7:rem begin.yes.no
18 REM begin.new:
19 CLS
20 PRINT TAB(30);"Part I"
21 PRINT
22 PRINT "Your mother glares  at you from the  backseat of the taxi.  You glare"
23 PRINT "back at her through the rearview mirror.  Turning the wheel  slightly"
24 PRINT "to  the  side, you veer  off the  highway, into  the park.  Headlight"
25 PRINT "beams illuminate a barn and then a dense forest as you slow."
26 PRINT
27 PRINT "Although  you try to  avoid it,  your  eyes  look in  the  mirror and"
28 PRINT "glimpse your mother in the backseat.  Without warning, she shoves her"
29 PRINT "fingernail  into her eye.  As you stare  in surprise she  applies her"
30 PRINT "other hand, now  wrinkled, with  claws, to the  side of  her head.  A"
31 PRINT "liquid oozes  down her finger.  Her skin peels as she  pulls her hand"
32 PRINT "away  from  her face.  There is  now no skin  on her head.  Her  legs"
33 PRINT "shorten.  Able to avert your eyes, you jump into the backseat.  While"
34 PRINT "something is  screaming at  you not to  let her go, you open the rear"
35 PRINT "door."
36 PRINT
37 PRINT "She's gone and you're now in the  driver's seat, again.  The only way"
38 PRINT "to go is out, so you exit the car, leaving on your headlights."
39 GOSUB 252
41 CLS
42 LOCATE 30,9
43 PRINT "So I Mangled My Mom"
44 PRINT
45 PRINT TAB(39);"by"
46 PRINT
47 PRINT TAB(32);"Aaron Oldenburg"
48 PRINT TAB(34);"August 1995":print:print tab(25);"Converted to CPC 11/17 by SRS"
49 GOSUB 252
51 REM in.the.beginning:
52 CLS
53 gosub 117
55 REM question:
56 PRINT
57 LINE INPUT a$
58 gosub 60:REM answer
59 goto 55
60 REM answer:
61 PRINT
62 IF a$="exit" OR a$="quit" THEN goto 830
63 IF LEFT$(a$,4)="park" AND cbs=1 AND loy=2 THEN goto 233
64 IF LEFT$(a$,4)="park" AND cbs=1 AND loy=3 THEN goto 233
65 IF LEFT$(a$,7)="highway" AND cbs=1 AND loy=4 THEN goto 233
66 IF LEFT$(a$,8)="backyard" AND cbs=1 AND loy=11 THEN goto 233
67 IF a$="" AND loy=1 THEN goto 117
68 IF a$="" AND loy=2 THEN goto 206
69 IF a$="" AND loy=3 THEN goto 135
70 IF a$="" AND loy=4 THEN goto 392
71 IF a$="" AND loy=5 THEN goto 257
72 IF a$="" AND loy=6 THEN goto 269
73 IF a$="" AND loy=7 THEN goto 281
74 IF a$="" AND loy=8 THEN goto 324
75 IF a$="" AND loy=9 THEN goto 291
76 IF a$="" AND loy=10 THEN goto 310
77 IF a$="" AND loy=11 THEN goto 355
78 IF a$="" AND loy=12 THEN goto 364
79 IF a$="" AND loy=13 THEN goto 416
80 IF a$="" AND loy=14 THEN goto 493
81 IF a$="" AND loy=15 THEN goto 430
82 IF a$="where" THEN goto 617
83 IF a$="barn" AND loy=1 THEN CLS:goto 206
84 IF a$="highway" AND loy=1 THEN CLS:gosub 126:PRINT:goto 135
85 IF a$="park" AND loy=2 THEN CLS:goto 117
86 IF a$="park" AND loy=3 THEN CLS:goto 117
87 IF a$="bus" AND loy=3 THEN CLS:goto 392
88 IF a$="highway" AND loy=4 THEN CLS:gosub 165:PRINT:goto 135
89 IF a$="inside" AND loy=5 THEN CLS:goto 269
90 IF a$="outside" AND loy=6 THEN CLS:goto 257
91 IF a$="kitchen" AND loy=6 THEN CLS:goto 281
92 IF a$="waiting room" AND loy=6 THEN CLS:goto 291
93 IF a$="refrigerator" AND loy=7 THEN CLS:goto 324
94 IF a$="stairs" AND loy=7 THEN CLS:goto 269
95 IF a$="kitchen" AND loy=8 THEN CLS:goto 281
96 IF a$="outside" AND loy=9 THEN CLS:goto 310
97 IF a$="stairs" AND loy=9 THEN CLS:goto 269
98 IF a$="inside" AND loy=10 THEN CLS:goto 291
99 IF a$="backyard" AND loy=11 THEN CLS:goto 364
100 IF a$="driveway" AND loy=12 THEN CLS:goto 355
101 IF a$="pool" AND loy=13 THEN CLS:goto 493
102 IF a$="monument" AND loy=13 THEN CLS:goto 430
103 IF a$="garden" AND loy=14 THEN CLS:goto 416
104 IF a$="garden" AND loy=15 THEN CLS:goto 416
105 IF a$="door" AND loy=2 AND diul=1 THEN CLS:goto 416
106 IF LEFT$(a$,4)="look" THEN goto 736
107 IF LEFT$(a$,3)="use" THEN goto 748
108 IF LEFT$(a$,4)="take" THEN goto 788
109 IF LEFT$(a$,4)="talk" THEN goto 817
110 IF a$="help" THEN goto 838
111 IF a$="pockets" THEN goto 767
112 IF a$="hint" THEN goto 864
113 gosub 130
114 RETURN
116 'Text
117 REM 1
118 PRINT "This is the park.  It's dark, with the exception of the headlights of"
119 PRINT "your car,  which  allow  you to view  a red barn and a  dense forest."
120 PRINT "There is also a highway somewhere."
121 loy=1
122 IF cbs=1 THEN PRINT:PRINT "Spiteful is running at you."
123 IF cbs=0 AND hsniffy=1 THEN PRINT:PRINT "Sniffy says, `I smell a hat.'"
124 RETURN
126 REM 2
127 PRINT "You stumble around behind the car and eventually find a highway."
128 RETURN
130 REM 3
131 PRINT "You got me there.  Type `help' for a list of commands or `hint' if"
132 PRINT "if you're stuck."
133 RETURN
135 REM 4
136 PRINT "After being blinded by a streetlamp, you notice that you're standing"
137 PRINT "on a paved road.  There is a stopped  bus down the street."
138 loy=3
139 IF hsniffy=0 AND nis=0 AND ttom=0 THEN PRINT:PRINT "Behind the bus is a strange creature."
140 IF hguilty=0 AND nis=0 AND ttom=0 THEN PRINT:PRINT "There is a strange creature riding a bike."
141 IF hsniffy=0 AND nis=0 AND ttom=1 THEN PRINT:PRINT "Behind the bus is Sniffy."
142 IF hguilty=0 AND nis=0 AND ttom=1 THEN PRINT:PRINT "Guilty is riding a bicylcle."
143 RETURN
145 REM 5
146 IF ttom=1 THEN GOTO repeat.old.man
147 PRINT "`Listen,' says the old man, `I know what happened to your mom, and I"
148 PRINT "can help  you get  her back.  What I  want  you to do for me is--see"
149 PRINT "these things?'  He points to the sneaky creature.  `They're dwarves."
150 PRINT "There are seven of them and I want'em.  I'll pay you for them, too."
151 PRINT
152 PRINT "`When you need to, I'll give you a ride on my bus.  Your mom may be"
153 PRINT "in trouble;I've heard someone is after her."
154 REM repeat.old.man:
155 IF nis <> 0 AND hgreedy=0 THEN PRINT "That creature right in front of you's named Greedy.":ttom=1:RETURN
156 IF hguilty=1 AND hsniffy=0 THEN PRINT "The creature in front of you's Greedy.  The one in the street's sniffy.":ttom=1:RETURN
157 IF hsniffy=1 AND hguilty=0 THEN PRINT "The creature in front of you's Greedy and the one in the street's Guilty.":ttom=1:RETURN
158 PRINT
159 PRINT "`That creature right in front of you's named Greedy.  The two out in"
160 PRINT "the street--one's named Sniffy and the other's Guilty.  Guilty's the"
161 PRINT "one on the bike.'"
162 ttom=1
163 RETURN
165 REM 6
166 PRINT "You step off the bus and onto the street."
167 RETURN
169 REM 7
170 PRINT "`Have you seen my butterfly net?' askes Sniffy.  `I lost it around"
171 PRINT "here somewhere and now I can't find it.'"
172 RETURN
174 REM 8
175 PRINT "`Hey, Guilty,' you say, `why don't you let Sniffy have a turn on the"
176 PRINT "bike?'  Guilty looks ashamed and gets off."
177 IF pfih=1 THEN goto 182
178 IF bnih=1 THEN goto 190
179 IF bnih=0 AND pfih=0 THEN PRINT "Guilty walks away.":hysu=1:goto 719
180 RETURN
182 REM 9
183 PRINT "Greedy lands on the pitchfork."
184 PRINT "A metal spear pokes through the top of Guilty.  The old man shouts"
185 PRINT "from the bus, `I want'em alive, not dead.'"
186 hysu=1
187 gosub 719
188 RETURN
190 REM 10
191 PRINT "Guilty plops down into the butterfly net."
192 PRINT "You pick him up and put him in your pocket."
193 hbn=1:hguilty=1:bnih=0
194 RETURN
196 REM 11
197 PRINT "Okay."
198 RETURN
200 REM 12
201 IF hguilty=1 THEN PRINT "`Boy, this thing is heavy,' Sniffy says, and jumps into your pocket."
202 IF hguilty=0 THEN PRINT "`Thanks,' Sniffy says, and jumps into your pocket."
203 hsniffy=1
204 RETURN
206 REM 14
207 PRINT "A powerful odor of horse manure knocks you back as you enter the barn."
208 PRINT "There is hay  everywhere.  Bales  of it are  stacked to the top of the"
209 PRINT "barn.  ";
210 loy=2
211 IF hpf=0 THEN PRINT "There is a pitchfork lying beside a small door."
212 IF hpf=1 THEN PRINT "There is a small door where there used to be a pitchfork."
213 IF hgreedy=1 THEN PRINT:PRINT "Greedy jerks around in your pocket.  `Hey, wanna' go through that":PRINT "door?' he asks."
214 RETURN
216 REM 15
217 PRINT "A tower of hay collapses beside you revealing a butterfly net."
218 bnuc=1
219 RETURN
221 REM 17
222 PRINT "You reach  into the bush in  front of the forest and  pull out a hat."
223 PRINT "Sniffy places the hat on your head."
224 PRINT
225 PRINT "A small  dwarf runs  out of the trees.  `Arr!' it  shouts, then  gets"
226 PRINT "ready to spit at you. Sniffy whispers in your ear, `That's Spiteful.'"
227 cbs=1
228 RETURN
230 REM 18
231 'Nothing
233 REM 19
234 PRINT "Spiteful spits at you as you leave.  You enter into a strange halluci-"
235 PRINT "nation of being eaten by a small dwarf."
236 hysu=2
237 gosub 719
238 RETURN
240 REM 20
241 PRINT "`Let's go!' you yell."
242 RETURN
244 REM 21
245 nis=1
246 CLS
247 PRINT TAB(30);"Part II"
248 PRINT
249 PRINT "The bus arrives at an airport.  The old man lets the door swing open."
250 RETURN
252 REM 22
253 LOCATE 1,24:INPUT "Press ENTER to continue",a$
255 RETURN
257 REM 23
258 PRINT "You find yourself on the outside of and looking  into an airport.  On"
259 PRINT "either  side of you, revolving  doors spin  people in and out; into a"
260 PRINT "stairwell  and out to the  sidewalk.  If you  press your face against"
261 PRINT "the glass  wall you can see  down the stairs,  but can't tell what it"
262 PRINT "is, exactly, that's down there."
263 PRINT
264 PRINT "Spiteful is running up the road toward you, warning you of his power."
265 PRINT "A blond-haired woman is behind him.":loy=5:RETURN
269 REM 24
270 PRINT "You're standing on a wide  staircase, where lots of  people are going"
271 PRINT "back and forth.  Some are going down; some are going up, but very few"
272 PRINT "are standing  in the middle  like you.  That angers  some of them and"
273 PRINT "some of them  are more than happy to start you going in either direc-"
274 PRINT "tion.":loy=6
276 IF rds=0 THEN PRINT:PRINT "You hear Spiteful and the woman running in the opposite direction."
277 rds=1
278 IF msw>1 THEN PRINT:PRINT "The blond-haired woman sits at the top of the steps.  She invites you":PRINT "over for hot tea."
279 RETURN
281 REM 27
282 PRINT "This is the kitchen to one of the airport restaurants.  The kitchen is"
283 PRINT "empty with the exception of cupboards  and knives and a  refrigerator."
284 PRINT "There aren't any cooks--the restaurant must be closed."
285 PRINT
286 PRINT "A buzzing fluourescent light casts a dim glow over the center table."
287 loy=7
288 IF bic=1 THEN PRINT:PRINT "Spiteful and the blond-haired woman glare at you from atop a counter.":PRINT "Spiteful laughs, `The poison is taking effect!'":msw=msw + 1
289 RETURN
291 REM 29
292 IF btt=0 THEN PRINT "As you enter the waiting room, you feel something touch your foot and"
293 IF btt=0 THEN PRINT "are soon on the ground.  The two dwarves tumble out of your pocket."
294 IF btt=0 THEN PRINT "A  stewardess laughs.  A pilot giggles."
295 IF btt=0 THEN hsniffy=0:hguilty=0:btt=1
296 PRINT
297 PRINT "Stretched across the floor of the airport waiting area is a long wire,"
298 PRINT "used as a  safety precaution.  When someone comes into the room, he or"
299 PRINT "she is  tripped,  sending any weapons  he or she may have tumbling out"
300 PRINT "of his or her  pockets.  There are  more revolving  doors leading into"
301 PRINT "the parking lot."
302 PRINT
303 PRINT "A large window shows a  black sky and planes taking off and landing."
304 PRINT "The door leading outside is open, although it shouldn't be."
305 loy=9
306 IF hsniffy=0 THEN PRINT:PRINT "Sniffy lies on the floor."
307 IF hguilty=0 THEN PRINT:PRINT "Guilty lies on the floor."
308 RETURN
310 REM 31
311 PRINT "You are standing in the middle of the runway admiring the planes zooming"
312 PRINT "overhead.  You  feel something  wet wiz by  your ear.  The runway lights"
313 PRINT "illuminate a small dwarf and a woman."
314 PRINT
315 PRINT "The dwarf bares his teeth."
316 loy=10
317 msw=msw + 1
318 RETURN
320 REM 32
321 PRINT "On your way back to the terminal, you feel your movements slowed."
322 RETURN
324 REM 33
325 PRINT "Once the door  is closed, the refrigerator light goes out.  It's a"
326 PRINT "good thing the refrigerator door doesn't have a locking handle, or"
327 PRINT "you'd suffocate."
328 loy=8
329 bic=1
330 RETURN
332 REM 35
333 PRINT "You gulp the  tea, then make  love to the  woman.  As you are  doing so,"
334 PRINT "you  make it out  the revolving  doors and  roll into  the  street.  The"
335 PRINT "woman's  hair gets  caught on a passing  car and you are dragged several"
336 PRINT "miles  until  her hair  finally  tears out.  You  find yourself  at your"
337 PRINT "childhood home."
338 PRINT
339 PRINT "Before  you climax,  however, your  mother, looking very young, shrieks."
340 PRINT "She stomps out of the  house.  You've  forgotten  about the blond-haired"
341 PRINT "woman  until  you  notice  that now she is nothing  but a  pillow.  Your"
342 PRINT "mother stomps toward you. She opens her jaws and you realize that that's"
343 PRINT "not your mom, that's Spiteful!"
344 yhp=1
345 RETURN
347 REM 36
348 PRINT "The pillow catches itself in Spiteful's mouth.  He begins intaking"
349 PRINT "his own juices and is soon halucinating."
350 cbs=0
351 sis=1
352 yhp=0
353 RETURN
355 REM 38
356 PRINT "The driveway of your old house is cracked with weeds.  Standing in a"
357 PRINT "lawn of knee-high  grass is a  for-sale sign.  It's been there since"
358 PRINT "your mom moved to an apartment.  You remember there was a backyard."
359 loy=11
360 IF sis=0 AND hspiteful=0 THEN PRINT:PRINT "Spiteful is coming towards you, open jaws dripping with":PRINT "halucinogenic slobber."
361 IF sis=1 AND hspiteful=0 THEN PRINT:PRINT "Spiteful lies on the street, a damp pillow in his mouth."
362 RETURN
364 REM 40
365 PRINT "The backyard of your house is shadowed by a large oak.  Under the oak"
366 PRINT "stands the old man."
367 loy=12
368 RETURN
370 REM 41
371 PRINT "`Give me the dwarves,' he says.":RETURN
374 REM 42
375 IF hguilty=0 OR hsniffy=0 THEN PRINT "The old man says, `You forgot a dwarf!'":hysu=6:goto 719
376 PRINT "The man hands  you ninety dollars.  `Get in the bus,' he says, as you"
377 PRINT "realize that there is, indeed, a bus parked in the backyard.  You hop"
378 PRINT "in."
379 hguilty=0:hsniffy=0:hspiteful=0
380 yhc=1
381 GOSUB 252
382 gosub 386
383 gosub 392
384 RETURN
386 REM 43
387 CLS:PRINT TAB(30);"Part III":PRINT:RETURN
392 REM 44
393 PRINT "On the bus you see that the driver is an old man wearing a trench-"
394 PRINT "coat.  He greets you with a friendly smile.":loy=4
396 IF hgreedy=0 THEN PRINT:PRINT "Another creature is trying to sneak onto the bus without paying a"
397 PRINT "fare."
398 RETURN
400 REM 46
401 PRINT "Greedy flips through the money as if to mock counting it.  `Very":PRINT "nice,' he remarks, and jumps into your pocket."
403 hgreedy=1:yhc=0:RETURN
407 REM 48
408 PRINT "`Drop me,' he says, `I'll unlock it.'":RETURN
411 REM 49
412 PRINT "The door is unlocked.":diul=1:RETURN
416 REM 50
417 IF gil=0 THEN PRINT "Greedy locks the door behind you and runs off.":gil=1:PRINT:hgreedy=0
418 PRINT "Marvelous stone  pillars with  fires atop them  throw light  on the "
419 PRINT "wonders of the garden.  Under the night sky are flowered  trees and"
420 PRINT "birds that make strange noises.  Beyond a large monument is a quiet"
421 PRINT "pool.":loy=13
423 IF hloving=0 AND hinsecure=0 AND iiu=0 AND nar=1 THEN PRINT:PRINT "Loving cuddles Insecure on a bench."
424 IF hloving=0 AND hinsecure=0 AND iiu=0 AND nar=0 THEN PRINT:PRINT "Two dwarves sit on a bench in an embrace."
425 IF hloving=0 AND iiu=1 AND hinsecure=0 THEN PRINT:PRINT "Loving sits alone on a bench."
426 IF hloving=0 AND hinsecure=1 THEN PRINT:PRINT "Loving sits alone on a bench."
427 IF iiu=1 AND hinsecure=0 THEN PRINT:PRINT "Insecure lies unconscious at Loving's feet."
428 RETURN
430 REM 54
431 PRINT "Behind the  monument the  light from the  fire doesn't  venture.  The"
432 PRINT "statue is of a  man whose  name is  all but rubbed  away  completely."
433 PRINT "What is left are the last two letters of the first name, e and k, and"
434 PRINT "the first two letters of the last name, J and a.":loy=15
436 IF wwt>0 AND yhv=0 THEN PRINT:PRINT "A vase lies on the ground."
437 IF wwt>1 AND yhm=0 THEN PRINT:PRINT "A mirror rests by the statue."
438 PRINT:PRINT "There is a rustle in the darkness."
439 IF wwt=0 THEN PRINT:PRINT "A vase flies at you and hits the monument, unshattered.":wwt=1:RETURN
440 IF wwt=1 THEN PRINT:PRINT "A mirror flies at you and hits the monument, unshattered.":wwt=2
441 IF iiv=0 AND hinsecure=1 THEN GOTO 475:'63
442 IF hinsecure=1 AND hloving=1 AND hgreedy=1 THEN GOSUB 531:'73
443 RETURN
445 REM 57
446 PRINT "Insecure takes the flowers and jumps into your pocket.":hinsecure=1:RETURN
450 REM 58
451 PRINT "They tell you that their names are Loving and Insecure.":nar=1:RETURN
455 REM 59
456 PRINT "Insecure runs off, jumps in the pool, and drowns.":hysu=3:gosub 719:return
461 REM 60
462 PRINT "The flowers are dead.":RETURN
465 REM 61
466 PRINT "You put Insecure in the vase.":iiv=1:RETURN
470 REM 62
471 PRINT "You give the heavy vase to Loving and he jumps into your pocket.":hloving=1:RETURN
475 REM 63
476 PRINT "You took Insecure's flowers away."
477 PRINT "Insecure jumps out of your pocket and runs away.":hysu=3:goto 719
482 REM 65
483 PRINT "You dip the vase in the pool and fill it with water.":yhw=1:RETURN
487 REM 66
488 PRINT "You toss the rock at Insecure and hit him in the head, knocking him"
489 PRINT "unconscious.":iiu=1:yhr=0:RETURN
493 REM 67
494 PRINT "You stand at the edge of a pool.  A tall, white rock wall looms above"
495 PRINT "you.  The water is deep and black.  A few stones are scattered around"
496 PRINT "the edge.":loy=14
498 IF hgreedy=0 AND gic=0 THEN PRINT:PRINT "Atop the wall there is a light, held by the hand of Greedy."
499 IF gic=1 THEN PRINT:PRINT "Greedy is standing a few yards from where you are standing."
500 IF gic=2 AND hgreedy=0 THEN PRINT:PRINT "Greedy is lying unconscious by the pool."
501 RETURN
503 REM 68
504 PRINT "Greedy says, `You  know what'll  make me come  down?'  He holds out a"
505 PRINT "huge diamond.  It glances a brief shimmer of reflection on the water."
506 PRINT "He continues, `There's another one  around here  somewhere, just like"
507 PRINT "it.'  He still holds out the gem.":gsr=1:RETURN
511 REM 69
512 PRINT "You throw the rock at Greedy.  It knocks the diamond out of his hand."
513 PRINT "There is a plip in the water as the  gem sinks into the pool.  Greedy"
514 PRINT "leaves.":hysu=5:goto 719
519 REM 70
520 PRINT "You hold the mirror towards Greedy.  `Okay,' he says, and climbs down"
521 PRINT "the wall.  As he walks toward you his  expression changes.  `Hey,' he"
522 PRINT "shouts, `Where's my rock?'":gic=1:RETURN
526 REM 71
527 PRINT "The rock hits Greedy in the head and knocks him unconscious.":gic=2:yhr=0:RETURN
531 REM 73
532 PRINT "The old man is here.  A light shines over a bed with a dwarf in it."
533 PRINT "The old man whispers, `That's  Wonderful.'  A pair of handcuffs are"
534 PRINT "connected to the headboard."
535 IF gihc=1 THEN PRINT:PRINT "A gnome is handcuffed to the headboard."
536 IF stw=1 AND gihc=0 AND yhg=0 THEN PRINT:PRINT "There is a squished gnome on the floor."
537 RETURN
539 REM 74
540 IF stw=1 THEN GOTO 545
541 PRINT "Wonderful glares at you.  `I  was enjoying  making love  to this gnome"
542 PRINT "until this moron,' pointing to the old man, `stepped on him.  Now he's"
543 PRINT "dead.'  You notice a squished gnome on the floor."
544 PRINT
545 REM repeat.wonderful:
546 PRINT "`Bring him back to life,' he says.":stw=1:RETURN
550 REM 75
551 PRINT "With his arms attached to the headboard, you pull his feet until he"
552 PRINT "is stretched back to normal.":giok=1:RETURN
556 REM 76
557 PRINT "`He's still unconscious,' says Wonderful, rejecting him.":RETURN
560 REM 77
561 PRINT "You splash water on the gnome until he revives.":giok=2:RETURN
565 REM 78
566 CLS
567 PRINT "`Oh, thank you,' says Wonderful, jumping into your pocket."
568 PRINT
569 PRINT "`I'll take those,' says the old man, relieving you of the dwarves."
570 PRINT
571 PRINT "`Where's my mom?' you ask."
572 PRINT
573 PRINT "The old man hands you Guilty. You stare open-mouthed at the man as"
574 PRINT "he walks off.  And as you watch, your mother, the dwarf, slips out"
575 PRINT "of your hands and wanders away."
576 PRINT
577 PRINT TAB(26);"The End"
578 PRINT
579 while INKEY$<>CHR$(32):wend
580 END
582 REM 79
583 PRINT "`I don't want that,' says";who$;".":RETURN
586 REM 80
587 IF ttom=1 THEN GOTO 603
588 IF lat=1 THEN GOTO 599
589 PRINT "They look like old men.  You are suddenly hit by a  terrible thought:"
590 PRINT "if they were met by walking,  it would  be worse than if protected by"
591 PRINT "a vehicle.  You gasp as you realize you are not in a  car.  Suddenly,"
592 PRINT "you're calmed by the idea of the creatures behaving silly.  You begin"
593 PRINT "to  laugh, but  they are beginning to look more  sinister.  Imagining"
594 PRINT "the `little old men' dancing and singing and other madness makes your"
595 PRINT "skin  crawl.  You suppress the  urge to howl with  something far from"
596 PRINT "laughter.":lat=1:RETURN
599 REM breif.glance:
600 PRINT "You can't help but glance in that direction.  As quickly as you look"
601 PRINT "the other way, the image still burns in your mind."
602 RETURN
603 REM look.again:
604 PRINT "You see them again.  The dwarves are now tangible.  You laugh at your"
605 PRINT "previous fright.  You notice that they are, in fact, dancing.":RETURN
608 REM 81
609 PRINT "A pipe smokes from the shadow of his face.  From his neck extends a"
610 PRINT "long, brown trenchcoat.":RETURN
613 REM 82
614 PRINT "You're ignored.":RETURN
617 REM 84
618 PRINT:PRINT "Exits:"
619 IF loy=1 THEN PRINT "barn":PRINT "highway"
620 IF loy=2 THEN PRINT "park"
621 IF loy=3 THEN PRINT "park":PRINT "bus"
622 IF loy=4 THEN PRINT "highway"
623 IF loy=5 THEN PRINT "inside"
624 IF loy=6 THEN PRINT "outside":PRINT "kitchen":PRINT "waiting room"
625 IF loy=7 THEN PRINT "refrigerator":PRINT "stairs"
626 IF loy=8 THEN PRINT "kitchen"
627 IF loy=9 THEN PRINT "outside":PRINT "stairs"
628 IF loy=10 THEN PRINT "inside"
629 IF loy=11 THEN PRINT "backyard"
630 IF loy=12 THEN PRINT "driveway"
631 IF loy=13 THEN PRINT "pool":PRINT "monument"
632 IF loy=14 OR loy=15 THEN PRINT "garden"
633 IF loy=2 AND diul=1 THEN PRINT "door"
634 RETURN
636 REM 85
637 PRINT "Don't drop that.":RETURN
640 REM 86
641 IF MID$(a$,18)="hay" AND loy=2 AND hbn=0 THEN goto 216
642 PRINT "`Ouch!' says ";MID$(a$,18);".":RETURN
644 REM 87
645 IF MID$(a$,12)="guilty" AND loy=3 THEN goto 657
646 IF MID$(a$,12)="sniffy" AND loy=3 THEN goto 200
647 PRINT "You just cought yourself a ";MID$(a$,12);".":RETURN
649 REM 88
650 IF MID$(a$,15)="man" AND loy=12 THEN goto 374
651 PRINT "Guilty doesn't like the looks of the ";MID$(a$,15);".":RETURN
653 REM 89
654 IF MID$(a$,15)="man" AND loy=12 THEN goto 374
655 PRINT "Sniffy clings to your pocket.":RETURN
657 REM 90
658 IF hguilty=1 THEN PRINT "He's already in the net.":RETURN
659 PRINT "You net guilty."
660 hguilty=1
661 RETURN
663 REM 91
664 IF MID$(a$,17)="man" AND loy=12 THEN goto 374
665 PRINT "`No thanks,' says ";MID$(a$,17);"."
667 REM 92
668 IF MID$(a$,17)="vase" OR who$="flowers" THEN goto 465
669 PRINT "He's not going anywhere without his flowers.":RETURN
671 REM 93
672 IF MID$(a$,15)="greedy" AND loy=14 AND gsr=1 AND gic=0 THEN goto 519
673 PRINT MID$(a$,15);" sees a reflection of itself.":RETURN
675 REM 94
676 IF MID$(a$,13)="insecure" AND hinsecure=1 THEN goto 465
677 IF MID$(a$,13)="pool" AND loy=14 THEN goto 482
678 IF MID$(a$,13)="water" AND loy=14 THEN goto 482
679 PRINT "Don't use the vase on that.":RETURN
681 REM 95
682 IF MID$(a$,16)="loving" AND iiv=0 AND loy=13 AND yhw=1 THEN gosub 196:goto 455
683 IF MID$(a$,16)="loving" AND iiv=1 AND loy=13 AND yhw=1 THEN goto 471
684 IF MID$(a$,16)="insecure" AND loy=13 AND hinsecure=0 AND yhw=0 THEN gosub 461:goto 455
685 IF MID$(a$,16)="loving" AND loy=13 AND yhw=0 THEN goto 461
686 IF MID$(a$,16)="insecure" AND loy=13 AND hinsecure=0 AND yhw=1 THEN goto 445
687 IF MID$(a$,16)="vase" AND yhv=1 AND fiv=0 AND yhw=1 THEN PRINT "You put the flowers in the vase.":fiv=1:RETURN
688 PRINT "Don't use the flowers on that.":RETURN
690 REM 96
691 IF MID$(a$,13)="insecure" AND loy=13 AND hinsecure=0 THEN goto 488
692 IF MID$(a$,13)="greedy" AND loy=14 AND hgreedy=0 AND gic=1 THEN goto 526
693 IF MID$(a$,13)="greedy" AND loy=14 AND hgreedy=0 AND gic=0 THEN goto 511
694 IF MID$(a$,14)="insecure" AND loy=13 AND hinsecure=0 THEN goto 488
695 IF MID$(a$,14)="greedy" AND loy=14 AND hgreedy=0 AND gic=1 THEN goto 526
696 IF MID$(a$,14)="greedy" AND loy=14 AND hgreedy=0 AND gic=0 THEN goto 511
697 PRINT "Watch where you throw that rock.":RETURN
699 REM 97
700 IF MID$(a$,14)="wonderful" AND giok=2 AND loy=15 THEN goto 565
701 IF MID$(a$,14)="wonderful" AND giok=1 AND loy=15 THEN goto 556
702 IF MID$(a$,14)="handcuffs" AND giok=0 AND loy=15 THEN goto 550
703 IF MID$(a$,14)="pool" AND giok=1 AND loy=14 THEN goto 560
704 IF MID$(a$,14)="water" AND giok=1 AND loy=14 THEN goto 560
705 PRINT "Be careful with the gnome.":RETURN
707 REM 98
708 IF MID$(a$,15)="spiteful" AND cbs=1 AND sis=0 THEN goto 347
709 PRINT MID$(a$,15);" doesn't feel sleepy.":RETURN
711 REM 99
712 IF MID$(a$,15)="door" AND loy=2 THEN goto 411
713 PRINT "You couldn't pay him to do that.":RETURN
715 REM 100
716 IF MID$(a$,14)="greedy" AND loy=4 THEN goto 400
717 PRINT MID$(a$,14);" isn't that kind of girl.":RETURN
719 REM 101
720 PRINT
721 screw=INT(RND*2)+1
722 IF screw=1 THEN PRINT "Try that again." else IF screw=2 THEN PRINT "You screwed up."
724 GOSUB 252:'22
725 CLS
726 IF hysu=1 THEN pfih=0:goto 135
727 IF hysu=2 THEN goto 732
728 IF hysu=3 THEN goto 416
729 IF hysu=4 THEN goto 416
730 IF hysu=5 THEN goto 493
731 IF hysu=6 THEN sis=0:hspiteful=0:cbs=1:GOto 291
732 REM killed.by.spiteful:
733 IF loy<5 THEN goto 117
734 IF loy=12 OR loy=11 THEN goto 196
736 REM look:
737 PRINT
738 IF MID$(a$,9)="creature" AND loy=3 THEN goto 586
739 IF MID$(a$,9)="creature" AND loy=4 THEN goto 586
740 IF MID$(a$,9)="man" AND (loy=4 OR loy=12) THEN goto 608
741 'IF MID$(a$,9)="man" AND loy=12 THEN goto 608
742 IF MID$(a$,9)="dwarf" AND (loy=3 OR loy=4) THEN goto 586
743 'IF MID$(a$,9)="dwarf" AND loy=4 THEN goto 586
744 IF MID$(a$,9)="hat" AND loy=1 AND hsniffy=1 THEN PRINT "There is a brown hat hiding under a bush.":RETURN
745 PRINT "It's nothing special."
746 RETURN
748 REM use:
749 IF MID$(a$,5,9)="pitchfork" AND hpf=1 THEN goto 640
750 IF MID$(a$,5,3)="net" AND hbn=1 THEN goto 644
751 IF MID$(a$,5,6)="guilty" AND hguilty=1 THEN goto 649
752 IF MID$(a$,5,6)="sniffy" AND hsniffy=1 THEN goto 653
753 IF MID$(a$,5,8)="spiteful" AND hspiteful=1 THEN goto 663
754 IF MID$(a$,5,8)="insecure" AND hinsecure=1 THEN goto 667
755 IF MID$(a$,5,6)="mirror" AND yhm=1 THEN goto 671
756 IF MID$(a$,5,4)="vase" AND yhv=1 THEN goto 675
757 IF MID$(a$,5,7)="flowers" AND yhf=1 THEN goto 681
758 IF MID$(a$,5,5)="gnome" AND yhg=1 THEN goto 699
759 IF MID$(a$,5,4)="rock" AND yhr=1 THEN goto 690
760 IF MID$(a$,5,5)="stone" AND yhr=1 THEN goto 690
761 IF MID$(a$,5,6)="pillow" AND yhp=1 THEN goto 707
762 IF MID$(a$,5,6)="greedy" AND hgreedy=1 THEN goto 711
763 IF MID$(a$,5,5)="money" AND yhc=1 THEN goto 715
764 PRINT "Check your inventory."
765 RETURN
767 REM inventory:
768 PRINT "Inventory:"
769 IF hpf=1 THEN PRINT "pitchfork"
770 IF hbn=1 THEN PRINT "net"
771 IF hguilty=1 THEN PRINT "Guilty"
772 IF hsniffy=1 THEN PRINT "Sniffy"
773 IF hgreedy=1 THEN PRINT "Greedy"
774 IF hspiteful=1 THEN PRINT "Spiteful"
775 IF hloving=1 THEN PRINT "Loving"
776 IF hinsecure=1 THEN PRINT "Insecure"
777 IF hwonderful=1 THEN PRINT "Wonderful"
778 IF yhm=1 THEN PRINT "mirror"
779 IF yhv=1 AND yhw=0 THEN PRINT "vase"
780 IF yhv=1 AND yhw=1 THEN PRINT "vase with water"
781 IF yhr=1 THEN PRINT "rock"
782 IF yhf=1 THEN PRINT "flowers";:IF fiv=1 THEN PRINT " (in vase)" ELSE PRINT
783 IF yhg=1 THEN PRINT "gnome"
784 IF yhp=1 THEN PRINT "pillow"
785 IF yhc=1 THEN PRINT "money"
786 RETURN
788 REM take:
789 PRINT
790 IF MID$(a$,6)="pitchfork" AND hpf=1 THEN PRINT "You already have the pitchfork.":RETURN
791 IF MID$(a$,6)="net" AND hpn=1 THEN PRINT "You already have the net.":RETURN
792 IF MID$(a$,6)="spiteful" AND hspiteful=1 THEN PRINT "You already have Spitful.":RETURN
793 IF MID$(a$,6)="insecure" AND hinsecure=1 THEN PRINT "You already have Insecure.":RETURN
794 IF MID$(a$,6)="greedy" AND hgreedy=1 THEN PRINT "You already have Greedy.":RETURN
795 IF MID$(a$,6)="vase" AND yhv=1 THEN PRINT "You already have the vase.":RETURN
796 IF MID$(a$,6)="mirror" AND yhm=1 THEN PRINT "You already have the mirror.":RETURN
797 IF MID$(a$,6)="flowers" AND yhf=1 THEN PRINT "You already have the flowers.":RETURN
798 IF MID$(a$,6)="gnome" AND yhg=1 THEN PRINT "You already have the gnome.":RETURN
799 IF MID$(a$,6)="rock" AND yhr=1 THEN PRINT "You already have the rock.":RETURN
800 IF MID$(a$,6)="stone" AND yhr=1 THEN PRINT "You already have the rock.":RETURN
801 IF MID$(a$,6)="pitchfork" AND hpf=0 AND loy=2 THEN gosub 196:hpf=1:RETURN
802 IF MID$(a$,6)="net" AND hbn=0 AND loy=2 AND bnuc=1 THEN gosub 196:hbn=1:RETURN
803 IF MID$(a$,6)="spiteful" AND loy=11 AND sis=1 AND hspiteful=0 THEN gosub 196:hspiteful=1:RETURN
804 IF MID$(a$,6)="insecure" AND loy=13 AND iiu=1 AND hinsecure=0 THEN gosub 196:hinsecure=1:RETURN
805 IF MID$(a$,6)="greedy" AND loy=14 AND gic=2 AND hgreedy=0 THEN gosub 196:hgreedy=1:RETURN
806 IF MID$(a$,6)="vase" AND loy=15 AND wwt>0 AND yhv=0 THEN gosub 196:yhv=1:RETURN
807 IF MID$(a$,6)="mirror" AND loy=15 AND wwt>1 AND yhm=0 THEN gosub 196:yhm=1:RETURN
808 IF MID$(a$,6)="flowers" AND loy=13 AND yhf=0 THEN gosub 196:yhf=1:RETURN
809 IF MID$(a$,6)="gnome" AND loy=15 AND stw=1 AND yhg=0 THEN gosub 196:yhg=1:RETURN
810 IF MID$(a$,6)="rock" AND loy=14 AND yhr=0 THEN gosub 196:yhr=1:RETURN
811 IF MID$(a$,6)="stone" AND loy=14 AND yhr=0 THEN gosub 196:yhr=1:RETURN
812 IF MID$(a$,6)="hat" AND loy=1 AND hsniffy=1 THEN goto 221
813 IF MID$(a$,6)="sniffy" AND loy=9 AND hsniffy=0 THEN gosub 196:hsniffy=1:RETURN
814 IF MID$(a$,6)="guilty" AND loy=9 AND hguilty=0 THEN gosub 196:hguilty=1:RETURN
815 PRINT "You can't take that.":RETURN
817 REM talk:
818 PRINT
819 IF MID$(a$,9)="man" AND loy=4 AND cbs=1 AND hguilty=1 AND hsniffy=1 THEN GOSUB 20:GOSUB 252:gosub 244:goto 257
820 IF MID$(a$,9)="man" AND loy=4 THEN goto 145
821 IF MID$(a$,9)="man" AND loy=12 THEN goto 41
822 IF MID$(a$,9)="wonderful" AND loy=15 AND hloving=1 AND hinsecure=1 AND hgreedy=1 THEN goto 74
823 IF MID$(a$,9)="woman" AND loy=6 AND msw>1 THEN GOSUB 35:PRINT:GOSUB355:RETURN
824 IF MID$(a$,9)="dwarves" AND loy=13 THEN goto 450
825 IF MID$(a$,9)="sniffy" AND nis=0 AND loy=3 THEN goto 169
826 IF MID$(a$,9)="guilty" AND nis=0 AND loy=3 THEN goto 174
827 IF MID$(a$,9)="greedy" AND loy=14 AND gic=0 AND hgreedy=0 THEN goto 503
828 PRINT "You are ignored.":RETURN
830 REM the.end:
831 INPUT "Do you want to quit (y/n)";a$
832 IF LEFT$(a$,1)="y" THEN END
833 IF LEFT$(a$,1)="n" THEN RETURN
834 GOTO 830:'the.end
836 REM SUB help
838 CLS
839 PRINT "Instructions:PRINT
840 PRINT "exit/quit        quit":PRINT
842 PRINT "ENTER            room description":PRINT
844 PRINT "where            shows exits":PRINT
846 PRINT "help             this screen":PRINT
848 PRINT "use ____ on ____ use something on something else (does not matter what"
849 PRINT "                 one uses in place of on, just so long as it is two"
850 PRINT "                 letters long)":PRINT
852 PRINT "take ____        take something":PRINT
854 PRINT "look at ____     look at something (does not matter what one uses in"
855 PRINT "                 place of at, just as long as it is two letters long)":PRINT
857 PRINT "talk to ____     talk to something (does not matter what one uses in"
858 PRINT "                 place of to. as long as it is two letters long)":PRINT
860 PRINT "pockets          shows inventory"
862 RETURN
864 REM SUB hints
865 CLS
866 PRINT "Hints:"
867 PRINT
868 PRINT "Rather than this game to make it easier  and make more sense,"
869 PRINT "I've included  this hint  feature to make up  for any  stupidity on"
870 PRINT "my part or yours."
871 PRINT
872 PRINT "A problem  may be due  to the simple  command system.  When prompted"
873 PRINT "to give an object for a verb, only type the noun, not the adjective."
874 PRINT
875 PRINT "Example:"
876 PRINT
877 PRINT "talk to man"
878 PRINT
879 PRINT "(when talking to the old man in the bus)"
880 PRINT
881 REM the.question:
882 INPUT "Did I solve your problem";a$
883 IF a$="yes" THEN GOTO 1054:'my.rear.end
884 IF a$="no" THEN GOTO 886:'skip.the.question
885 GOTO the.question
886 REM skip.the.question:
887 PRINT
888 REM which.act:
889 INPUT "Which part are you stuck on (1,2,3)";a
890 IF a=1 THEN GOTO 894:'act.one
891 IF a=2 THEN GOTO 929:'act.two
892 IF a=3 THEN GOTO 973:'act.three
893 GOTO 888:'which.act
894 REM act.one:
895 CLS
896 PRINT "This is a walktrough of the first act.  Read carefully if you don't"
897 PRINT "want to find out too much."
898 PRINT
899 PRINT "Go in the barn"
900 PRINT
901 PRINT "Take the pitchfork"
902 PRINT
903 PRINT "Use the pitchfork on the hay"
904 PRINT
905 PRINT "Take the net"
906 PRINT
907 PRINT "Go to the highway"
908 PRINT
909 PRINT "Talk to the man"
910 PRINT
911 PRINT "Go to the highway"
912 PRINT
913 PRINT "Use the net on Guilty"
914 PRINT
915 PRINT "Use the net on Sniffy"
916 PRINT
917 INPUT "Press ENTER to continue...", a$
918 CLS
919 PRINT "Go to the park"
920 PRINT
921 PRINT "Take the hat"
922 PRINT
923 PRINT "Go to the bus"
924 PRINT
925 PRINT "Talk to the man"
926 PRINT
927 PRINT "<End of hints for Part I>"
928 GOTO 1054:'my.rear.end
929 REM act.two:
930 CLS
931 PRINT "This is a waugh of the second act.  Read carefully if you don't"
932 PRINT "want to find out too much."
933 PRINT
934 PRINT "Go inside"
935 PRINT
936 PRINT "Go to the kitchen"
937 PRINT
938 PRINT "Go in the refrigerator"
939 PRINT
940 PRINT "Go to the kitchen"
941 PRINT
942 PRINT "Go down the stairs"
943 PRINT
944 PRINT "Go to the terminal"
945 PRINT
946 PRINT "Take Sniffy"
947 PRINT
948 PRINT "Take Guilty"
949 PRINT
950 PRINT "Go outside"
951 PRINT
952 INPUT "Press ENTER to continue", a$
953 CLS
954 PRINT
955 PRINT "Go inside"
956 PRINT
957 PRINT "Go down the rs"
958 PRINT
959 PRINT "Talk to the woman"
960 PRINT
961 PRINT "Use the pillow on Spiteful"
962 PRINT
963 PRINT "Take Spiteful"
964 PRINT
965 PRINT "Go into the backyard"
966 PRINT
967 PRINT "Talk to the man"
968 PRINT
969 PRINT "Use Sniffy on the man"
970 PRINT
971 PRINT "<End of hints on Part II>"
972 GOTO 1054:'my.rear.end
973 REM act.three:
974 CLS
975 PRINT "This is a waugh of the third act.  Read carefully if you don't"
976 PRINT "want to find out too much."
977 PRINT
978 PRINT "Use the money on Greedy"
979 PRINT
980 PRINT "Go to the highway"
981 PRINT
982 PRINT "Go to the park"
983 PRINT
984 PRINT "Go to the barn"
985 PRINT
986 PRINT "Use Greedy on the door"
987 PRINT
988 PRINT "Go through the door"
989 PRINT
990 PRINT "Take the flowers"
991 PRINT
992 PRINT "Go behind the monument"
993 PRINT
994 PRINT "Take the vase"
995 PRINT
996 INPUT "Press ENTER to continue", a$
997 CLS
998 PRINT "Go to the gaden"
999 PRINT
1000 PRINT "Go to the pool"
1001 PRINT
1002 PRINT "Use the vase on the pool"
1003 PRINT
1004 PRINT "Take a rock"
1005 PRINT
1006 PRINT "Go to the garden"
1007 PRINT
1008 PRINT "Use the rock on Insecure"
1009 PRINT
1010 PRINT "Take Insecure"
1011 PRINT
1012 PRINT "Use Insecure on the vase"
1013 PRINT
1014 PRINT "Use the flowers on Loving"
1015 PRINT
1016 PRINT "Go behind the monument"
1017 PRINT
1018 PRINT "Take the mirror"
1019 PRINT
1020 INPUT "Press ENTER to continue", a$
1021 CLS
1022 PRINT "Take anotherrock"
1023 PRINT
1024 PRINT "Talk to Greedy"
1025 PRINT
1026 PRINT "Use the mirror on Greedy"
1027 PRINT
1028 PRINT "Use the rock on Greedy"
1029 PRINT
1030 PRINT "Take Greedy"
1031 PRINT
1032 PRINT "Go to the garden"
1033 PRINT
1034 PRINT "Go behind the monument"
1035 PRINT
1036 PRINT "Talk to Wonderful"
1037 PRINT
1038 PRINT "Take the gnome"
1039 PRINT
1040 PRINT "Use then gnome on the handcuffs"
1041 PRINT
1042 INPUT "Press ENTER to continue", a$
1043 CLS
1044 PRINT "Go to the pol"
1045 PRINT
1046 PRINT "Use the gnome on the pool"
1047 PRINT
1048 PRINT "Go to the monument"
1049 PRINT
1050 PRINT "Use the gnome on Wonderful"
1051 PRINT
1052 PRINT "<End of hints for Part III>"
1053 GOTO 1054:'my.rear.end
1054 REM my.rear.end:
1055 RETURN