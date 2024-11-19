8 MODE 2:PRINT"Type everything in lowercase.":PRINT:PRINT"Which part would you like to go to (1/2/3)?":INPUT"(If beginning a new game, choose 1)",a:IF a=1 THEN 19
14 IF a=2 THEN CLS:C=1:H6=1:H1=1:GOSUB 245:GOSUB 258:GOTO 56
15 IF a=3 THEN CLS:Y=1:N0=1:GOSUB 387:GOSUB 393:GOTO 56
16 GOTO 8
19 CLS
20 PRINT TAB(30);"Part I":PRINT:PRINT"Your mother glares  at you from the  backseat of the taxi.  You glare":PRINT"back at her through the rearview mirror.  Turning the wheel  slightly"
24 PRINT"to  the  side, you veer  off the  highway, into  the park.  Headlight":PRINT"beams illuminate a barn and then a dense forest as you slow.":PRINT:PRINT"Although  you try to  avoid it,  your  eyes  look in  the  mirror and"
28 PRINT"glimpse your mother in the backseat.  Without warning, she shoves her":PRINT"fingernail  into her eye.  As you stare  in surprise she  applies her":PRINT"other hand, now  wrinkled, with  claws, to the  side of  her head.  A"
31 PRINT"liquid oozes  down her finger.  Her skin peels as she  pulls her hand":PRINT"away  from  her face.  There is  now no skin  on her head.  Her  legs":PRINT"shorten.  Able to avert your eyes, you jump into the backseat.  While"
34 PRINT"something is  screaming at  you not to  let her go, you open the rear"
35 PRINT"door.":PRINT:PRINT"She's gone and you're now in the  driver's seat, again.  The only way":PRINT"to go is out, so you exit the car, leaving on your headlights.":GOSUB 253
41 CLS:LOCATE 30,9:PRINT"So I Mangled My Mom":PRINT:PRINT TAB(39);"by":PRINT:PRINT TAB(32);"Aaron Oldenburg":PRINT TAB(34);"August 1995":PRINT:PRINT TAB(25);"Converted to CPC 11/17 by SRS":GOSUB 253:CLS:GOSUB 118
56 PRINT:LINE INPUT a$:GOSUB 61:GOTO 56
61 PRINT:IF a$="exit"OR a$="quit"THEN 831
63 IF LEFT$(a$,4)="park"AND C=1 AND L0=2 THEN 234
64 IF LEFT$(a$,4)="park"AND C=1 AND L0=3 THEN 234
65 IF LEFT$(a$,7)="highway"AND C=1 AND L0=4 THEN 234
66 IF LEFT$(a$,8)="backyard"AND C=1 AND L0=11 THEN 234
67 IF a$=""AND L0=1 THEN 118
68 IF a$=""AND L0=2 THEN 207
69 IF a$=""AND L0=3 THEN 136
70 IF a$=""AND L0=4 THEN 393
71 IF a$=""AND L0=5 THEN 258
72 IF a$=""AND L0=6 THEN 270
73 IF a$=""AND L0=7 THEN 282
74 IF a$=""AND L0=8 THEN 325
75 IF a$=""AND L0=9 THEN 292
76 IF a$=""AND L0=10 THEN 311
77 IF a$=""AND L0=11 THEN 356
78 IF a$=""AND L0=12 THEN 365
79 IF a$=""AND L0=13 THEN 417
80 IF a$=""AND L0=14 THEN 494
81 IF a$=""AND L0=15 THEN 431
82 IF a$="where"THEN 618
83 IF a$="barn"AND L0=1 THEN CLS:GOTO 207
84 IF a$="highway"AND L0=1 THEN CLS:GOSUB 127:PRINT:GOTO 136
85 IF a$="park"AND L0=2 THEN CLS:GOTO 118
86 IF a$="park"AND L0=3 THEN CLS:GOTO 118
87 IF a$="bus"AND L0=3 THEN CLS:GOTO 393
88 IF a$="highway"AND L0=4 THEN CLS:GOSUB 166:PRINT:GOTO 136
89 IF a$="inside"AND L0=5 THEN CLS:GOTO 270
90 IF a$="outside"AND L0=6 THEN CLS:GOTO 258
91 IF a$="kitchen"AND L0=6 THEN CLS:GOTO 282
92 IF a$="waiting room"AND L0=6 THEN CLS:GOTO 292
93 IF a$="refrigerator"AND L0=7 THEN CLS:GOTO 325
94 IF a$="stairs"AND L0=7 THEN CLS:GOTO 270
95 IF a$="kitchen"AND L0=8 THEN CLS:GOTO 282
96 IF a$="outside"AND L0=9 THEN CLS:GOTO 311
97 IF a$="stairs"AND L0=9 THEN CLS:GOTO 270
98 IF a$="inside"AND L0=10 THEN CLS:GOTO 292
99 IF a$="backyard"AND L0=11 THEN CLS:GOTO 365
100 IF a$="driveway"AND L0=12 THEN CLS:GOTO 356
101 IF a$="pool"AND L0=13 THEN CLS:GOTO 494
102 IF a$="monument"AND L0=13 THEN CLS:GOTO 431
103 IF a$="garden"AND L0=14 THEN CLS:GOTO 417
104 IF a$="garden"AND L0=15 THEN CLS:GOTO 417
105 IF a$="door"AND L0=2 AND D=1 THEN CLS:GOTO 417
106 IF LEFT$(a$,4)="look"THEN 737
107 IF LEFT$(a$,3)="use"THEN 749
108 IF LEFT$(a$,4)="take"THEN 789
109 IF LEFT$(a$,4)="talk"THEN 818
110 IF a$="help"THEN 838
111 IF a$="pockets"THEN 768
112 IF a$="hint"THEN 865
113 GOSUB 131:RETURN
118 PRINT"This is the park.  It's dark, with the exception of the headlights of":PRINT"your car,  which  allow  you to view  a red barn and a  dense forest.":PRINT"There is also a highway somewhere.":L0=1
122 IF C=1 THEN PRINT:PRINT"Spiteful is running at you."
123 IF C=0 AND H6=1 THEN PRINT:PRINT"Sniffy says, `I smell a hat.'"
124 RETURN
127 PRINT"You stumble around behind the car and eventually find a highway.":RETURN
131 PRINT"You got me there.  Type `help' for a list of commands or `hint' if":PRINT"if you're stuck.":RETURN
136 PRINT"After being blinded by a streetlamp, you notice that you're standing":PRINT"on a paved road.  There is a stopped  bus down the street.":L0=3:IF H6=0 AND N0=0 AND T0=0 THEN PRINT:PRINT"Behind the bus is a strange creature."
140 IF H1=0 AND N0=0 AND T0=0 THEN PRINT:PRINT"There is a strange creature riding a bike."
141 IF H6=0 AND N0=0 AND T0=1 THEN PRINT:PRINT"Behind the bus is Sniffy."
142 IF H1=0 AND N0=0 AND T0=1 THEN PRINT:PRINT"Guilty is riding a bicylcle."
143 RETURN
146 IF T0=1 THEN R0
147 PRINT"`Listen,' says the old man, `I know what happened to your mom, and I":PRINT"can help  you get  her back.  What I  want  you to do for me is--see":PRINT"these things?'  He points to the sneaky creature.  `They're dwarves."
150 PRINT"There are seven of them and I want'em.  I'll pay you for them, too.":PRINT:PRINT"`When you need to, I'll give you a ride on my bus.  Your mom may be":PRINT"in trouble;I've heard someone is after her."
155 IF N0<>0 AND H0=0 THEN PRINT"That creature right in front of you's named Greedy.":T0=1:RETURN
156 IF H1=1 AND H6=0 THEN PRINT"The creature in front of you's Greedy.  The one in the street's sniffy.":T0=1:RETURN
157 IF H6=1 AND H1=0 THEN PRINT"The creature in front of you's Greedy and the one in the street's Guilty.":T0=1:RETURN
158 PRINT:PRINT"`That creature right in front of you's named Greedy.  The two out in":PRINT"the street--one's named Sniffy and the other's Guilty.  Guilty's the":PRINT"one on the bike.'":T0=1:RETURN
166 PRINT"You step off the bus and onto the street.":RETURN
170 PRINT"`Have you seen my butterfly net?' askes Sniffy.  `I lost it around":PRINT"here somewhere and now I can't find it.'":RETURN
175 PRINT"`Hey, Guilty,' you say, `why don't you let Sniffy have a turn on the":PRINT"bike?'  Guilty looks ashamed and gets off.":IF P=1 THEN 183
178 IF B0=1 THEN 191
179 IF B0=0 AND P=0 THEN PRINT"Guilty walks away.":H9=1:GOTO 720
180 RETURN
183 PRINT"Greedy lands on the pitchfork.":PRINT"A metal spear pokes through the top of Guilty.  The old man shouts":PRINT"from the bus, `I want'em alive, not dead.'":H9=1:GOSUB 720:RETURN
191 PRINT"Guilty plops down into the butterfly net.":PRINT"You pick him up and put him in your pocket.":H=1:H1=1:B0=0:RETURN
197 PRINT"Okay.":RETURN
201 IF H1=1 THEN PRINT"`Boy, this thing is heavy,' Sniffy says, and jumps into your pocket."
202 IF H1=0 THEN PRINT"`Thanks,' Sniffy says, and jumps into your pocket."
203 H6=1:RETURN
207 PRINT"A powerful odor of horse manure knocks you back as you enter the barn.":PRINT"There is hay  everywhere.  Bales  of it are  stacked to the top of the":PRINT"barn.  ";:L0=2:IF H4=0 THEN PRINT"There is a pitchfork lying beside a small door."
212 IF H4=1 THEN PRINT"There is a small door where there used to be a pitchfork."
213 IF H0=1 THEN PRINT:PRINT"Greedy jerks around in your pocket.  `Hey, wanna' go through that":PRINT"door?' he asks."
214 RETURN
217 PRINT"A tower of hay collapses beside you revealing a butterfly net.":B1=1:RETURN
222 PRINT"You reach  into the bush in  front of the forest and  pull out a hat.":PRINT"Sniffy places the hat on your head.":PRINT:PRINT"A small  dwarf runs  out of the trees.  `Arr!' it  shouts, then  gets"
226 PRINT"ready to spit at you. Sniffy whispers in your ear, `That's Spiteful.'":C=1:RETURN
234 PRINT"Spiteful spits at you as you leave.  You enter into a strange halluci-":PRINT"nation of being eaten by a small dwarf.":H9=2:GOSUB 720:RETURN:PRINT"`Let's go!' you yell.":RETURN
245 N0=1:CLS:PRINT TAB(30);"Part II":PRINT:PRINT"The bus arrives at an airport.  The old man lets the door swing open.":RETURN
253 LOCATE 1,24:INPUT"Press ENTER to continue",a$:RETURN
258 PRINT"You find yourself on the outside of and looking  into an airport.  On":PRINT"either  side of you, revolving  doors spin  people in and out; into a":PRINT"stairwell  and out to the  sidewalk.  If you  press your face against"
261 PRINT"the glass  wall you can see  down the stairs,  but can't tell what it":PRINT"is, exactly, that's down there.":PRINT:PRINT"Spiteful is running up the road toward you, warning you of his power.":PRINT"A blond-haired woman is behind him.":L0=5
265 RETURN
270 PRINT"You're standing on a wide  staircase, where lots of  people are going":PRINT"back and forth.  Some are going down; some are going up, but very few":PRINT"are standing  in the middle  like you.  That angers  some of them and"
273 PRINT"some of them  are more than happy to start you going in either direc-":PRINT"tion.":L0=6:IF R=0 THEN PRINT:PRINT"You hear Spiteful and the woman running in the opposite direction."
277 R=1:IF M>1 THEN PRINT:PRINT"The blond-haired woman sits at the top of the steps.  She invites you":PRINT"over for hot tea."
279 RETURN
282 PRINT"This is the kitchen to one of the airport restaurants.  The kitchen is":PRINT"empty with the exception of cupboards  and knives and a  refrigerator.":PRINT"There aren't any cooks--the restaurant must be closed.":PRINT
286 PRINT"A buzzing fluourescent light casts a dim glow over the center table.":L0=7:IF B=1 THEN PRINT:PRINT"Spiteful and the blond-haired woman glare at you from atop a counter.":PRINT"Spiteful laughs, `The poison is taking effect!'":M=M+1
289 RETURN
292 IF B2=0 THEN PRINT"As you enter the waiting room, you feel something touch your foot and"
293 IF B2=0 THEN PRINT"are soon on the ground.  The two dwarves tumble out of your pocket."
294 IF B2=0 THEN PRINT"A  stewardess laughs.  A pilot giggles."
295 IF B2=0 THEN H6=0:H1=0:B2=1
296 PRINT:PRINT"Stretched across the floor of the airport waiting area is a long wire,":PRINT"used as a  safety precaution.  When someone comes into the room, he or":PRINT"she is  tripped,  sending any weapons  he or she may have tumbling out"
300 PRINT"of his or her  pockets.  There are  more revolving  doors leading into":PRINT"the parking lot.":PRINT:PRINT"A large window shows a  black sky and planes taking off and landing.":PRINT"The door leading outside is open, although it shouldn't be."
305 L0=9:IF H6=0 THEN PRINT:PRINT"Sniffy lies on the floor."
307 IF H1=0 THEN PRINT:PRINT"Guilty lies on the floor."
308 RETURN
311 PRINT"You are standing in the middle of the runway admiring the planes zooming":PRINT"overhead.  You  feel something  wet wiz by  your ear.  The runway lights":PRINT"illuminate a small dwarf and a woman.":PRINT:PRINT"The dwarf bares his teeth.":L0=10
317 M=M+1:RETURN:PRINT"On your way back to the terminal, you feel your movements slowed.":RETURN
325 PRINT"Once the door  is closed, the refrigerator light goes out.  It's a":PRINT"good thing the refrigerator door doesn't have a locking handle, or":PRINT"you'd suffocate.":L0=8:B=1:RETURN
333 PRINT"You gulp the  tea, then make  love to the  woman.  As you are  doing so,":PRINT"you  make it out  the revolving  doors and  roll into  the  street.  The":PRINT"woman's  hair gets  caught on a passing  car and you are dragged several"
336 PRINT"miles  until  her hair  finally  tears out.  You  find yourself  at your":PRINT"childhood home.":PRINT:PRINT"Before  you climax,  however, your  mother, looking very young, shrieks."
340 PRINT"She stomps out of the  house.  You've  forgotten  about the blond-haired":PRINT"woman  until  you  notice  that now she is nothing  but a  pillow.  Your":PRINT"mother stomps toward you. She opens her jaws and you realize that that's"
343 PRINT"not your mom, that's Spiteful!":Y3=1:RETURN
348 PRINT"The pillow catches itself in Spiteful's mouth.  He begins intaking":PRINT"his own juices and is soon halucinating.":C=0:S0=1:Y3=0:RETURN
356 PRINT"The driveway of your old house is cracked with weeds.  Standing in a":PRINT"lawn of knee-high  grass is a  for-sale sign.  It's been there since":PRINT"your mom moved to an apartment.  You remember there was a backyard.":L0=11
360 IF S0=0 AND H7=0 THEN PRINT:PRINT"Spiteful is coming towards you, open jaws dripping with":PRINT"halucinogenic slobber."
361 IF S0=1 AND H7=0 THEN PRINT:PRINT"Spiteful lies on the street, a damp pillow in his mouth."
362 RETURN
365 PRINT"The backyard of your house is shadowed by a large oak.  Under the oak":PRINT"stands the old man.":L0=12:RETURN:PRINT"`Give me the dwarves,' he says.":RETURN
375 IF H1=0 OR H6=0 THEN PRINT"The old man says, `You forgot a dwarf!'":H9=6:GOTO 720
376 PRINT"The man hands  you ninety dollars.  `Get in the bus,' he says, as you":PRINT"realize that there is, indeed, a bus parked in the backyard.  You hop":PRINT"in.":H1=0:H6=0:H7=0:Y=1:GOSUB 253:GOSUB 387:GOSUB 393:RETURN
387 CLS:PRINT TAB(30);"Part III":PRINT:RETURN
393 PRINT"On the bus you see that the driver is an old man wearing a trench-":PRINT"coat.  He greets you with a friendly smile.":L0=4:IF H0=0 THEN PRINT:PRINT"Another creature is trying to sneak onto the bus without paying a"
397 PRINT"fare.":RETURN
401 PRINT"Greedy flips through the money as if to mock counting it.  `Very":PRINT"nice,' he remarks, and jumps into your pocket.":H0=1:Y=0:RETURN:PRINT"`Drop me,' he says, `I'll unlock it.'":RETURN
412 PRINT"The door is unlocked.":D=1:RETURN
417 IF G2=0 THEN PRINT"Greedy locks the door behind you and runs off.":G2=1:PRINT:H0=0
418 PRINT"Marvelous stone  pillars with  fires atop them  throw light  on the ":PRINT"wonders of the garden.  Under the night sky are flowered  trees and":PRINT"birds that make strange noises.  Beyond a large monument is a quiet":PRINT"pool.":L0=13
423 IF H3=0 AND H2=0 AND I=0 AND N=1 THEN PRINT:PRINT"Loving cuddles Insecure on a bench."
424 IF H3=0 AND H2=0 AND I=0 AND N=0 THEN PRINT:PRINT"Two dwarves sit on a bench in an embrace."
425 IF H3=0 AND I=1 AND H2=0 THEN PRINT:PRINT"Loving sits alone on a bench."
426 IF H3=0 AND H2=1 THEN PRINT:PRINT"Loving sits alone on a bench."
427 IF I=1 AND H2=0 THEN PRINT:PRINT"Insecure lies unconscious at Loving's feet."
428 RETURN
431 PRINT"Behind the  monument the  light from the  fire doesn't  venture.  The":PRINT"statue is of a  man whose  name is  all but rubbed  away  completely.":PRINT"What is left are the last two letters of the first name, e and k, and"
434 PRINT"the first two letters of the last name, J and a.":L0=15:IF W0>0 AND Y5=0 THEN PRINT:PRINT"A vase lies on the ground."
437 IF W0>1 AND Y2=0 THEN PRINT:PRINT"A mirror rests by the statue."
438 PRINT:PRINT"There is a rustle in the darkness.":IF W0=0 THEN PRINT:PRINT"A vase flies at you and hits the monument, unshattered.":W0=1:RETURN
440 IF W0=1 THEN PRINT:PRINT"A mirror flies at you and hits the monument, unshattered.":W0=2
441 IF I0=0 AND H2=1 THEN 476
442 IF H2=1 AND H3=1 AND H0=1 THEN GOSUB 532
443 RETURN
446 PRINT"Insecure takes the flowers and jumps into your pocket.":H2=1:RETURN
451 PRINT"They tell you that their names are Loving and Insecure.":N=1:RETURN
456 PRINT"Insecure runs off, jumps in the pool, and drowns.":H9=3:GOSUB 720:RETURN
462 PRINT"The flowers are dead.":RETURN
466 PRINT"You put Insecure in the vase.":I0=1:RETURN
471 PRINT"You give the heavy vase to Loving and he jumps into your pocket.":H3=1:RETURN
476 PRINT"You took Insecure's flowers away.":PRINT"Insecure jumps out of your pocket and runs away.":H9=3:GOTO 720
483 PRINT"You dip the vase in the pool and fill it with water.":Y6=1:RETURN
488 PRINT"You toss the rock at Insecure and hit him in the head, knocking him":PRINT"unconscious.":I=1:Y4=0:RETURN
494 PRINT"You stand at the edge of a pool.  A tall, white rock wall looms above":PRINT"you.  The water is deep and black.  A few stones are scattered around":PRINT"the edge.":L0=14
498 IF H0=0 AND G1=0 THEN PRINT:PRINT"Atop the wall there is a light, held by the hand of Greedy."
499 IF G1=1 THEN PRINT:PRINT"Greedy is standing a few yards from where you are standing."
500 IF G1=2 AND H0=0 THEN PRINT:PRINT"Greedy is lying unconscious by the pool."
501 RETURN
504 PRINT"Greedy says, `You  know what'll  make me come  down?'  He holds out a":PRINT"huge diamond.  It glances a brief shimmer of reflection on the water.":PRINT"He continues, `There's another one  around here  somewhere, just like"
507 PRINT"it.'  He still holds out the gem.":G4=1:RETURN
512 PRINT"You throw the rock at Greedy.  It knocks the diamond out of his hand.":PRINT"There is a plip in the water as the  gem sinks into the pool.  Greedy":PRINT"leaves.":H9=5:GOTO 720
520 PRINT"You hold the mirror towards Greedy.  `Okay,' he says, and climbs down":PRINT"the wall.  As he walks toward you his  expression changes.  `Hey,' he":PRINT"shouts, `Where's my rock?'":G1=1:RETURN
527 PRINT"The rock hits Greedy in the head and knocks him unconscious.":G1=2:Y4=0:RETURN
532 PRINT"The old man is here.  A light shines over a bed with a dwarf in it.":PRINT"The old man whispers, `That's  Wonderful.'  A pair of handcuffs are":PRINT"connected to the headboard.":IF G=1 THEN PRINT:PRINT"A gnome is handcuffed to the headboard."
536 IF S1=1 AND G=0 AND Y1=0 THEN PRINT:PRINT"There is a squished gnome on the floor."
537 RETURN:IF S1=1 THEN 546
541 PRINT"Wonderful glares at you.  `I  was enjoying  making love  to this gnome":PRINT"until this moron,' pointing to the old man, `stepped on him.  Now he's":PRINT"dead.'  You notice a squished gnome on the floor.":PRINT
546 PRINT"`Bring him back to life,' he says.":S1=1:RETURN
551 PRINT"With his arms attached to the headboard, you pull his feet until he":PRINT"is stretched back to normal.":G0=1:RETURN
557 PRINT"`He's still unconscious,' says Wonderful, rejecting him.":RETURN
561 PRINT"You splash water on the gnome until he revives.":G0=2:RETURN
566 CLS:PRINT"`Oh, thank you,' says Wonderful, jumping into your pocket.":PRINT:PRINT"`I'll take those,' says the old man, relieving you of the dwarves.":PRINT:PRINT"`Where's my mom?' you ask.":PRINT
573 PRINT"The old man hands you Guilty. You stare open-mouthed at the man as":PRINT"he walks off.  And as you watch, your mother, the dwarf, slips out":PRINT"of your hands and wanders away.":PRINT:PRINT TAB(26);"The End":PRINT:WHILE INKEY$<>CHR$(32):WEND
580 END:PRINT"`I don't want that,' says";W$;".":RETURN
587 IF T0=1 THEN 604
588 IF L=1 THEN 600
589 PRINT"They look like old men.  You are suddenly hit by a  terrible thought:":PRINT"if they were met by walking,  it would  be worse than if protected by":PRINT"a vehicle.  You gasp as you realize you are not in a  car.  Suddenly,"
592 PRINT"you're calmed by the idea of the creatures behaving silly.  You begin":PRINT"to  laugh, but  they are beginning to look more  sinister.  Imagining":PRINT"the `little old men' dancing and singing and other madness makes your"
595 PRINT"skin  crawl.  You suppress the  urge to howl with  something far from":PRINT"laughter.":L=1:RETURN
600 PRINT"You can't help but glance in that direction.  As quickly as you look":PRINT"the other way, the image still burns in your mind.":RETURN
604 PRINT"You see them again.  The dwarves are now tangible.  You laugh at your":PRINT"previous fright.  You notice that they are, in fact, dancing.":RETURN
609 PRINT"A pipe smokes from the shadow of his face.  From his neck extends a":PRINT"long, brown trenchcoat.":RETURN:PRINT"You're ignored.":RETURN
618 PRINT:PRINT"Exits:":IF L0=1 THEN PRINT"barn":PRINT"highway"
620 IF L0=2 THEN PRINT"park"
621 IF L0=3 THEN PRINT"park":PRINT"bus"
622 IF L0=4 THEN PRINT"highway"
623 IF L0=5 THEN PRINT"inside"
624 IF L0=6 THEN PRINT"outside":PRINT"kitchen":PRINT"waiting room"
625 IF L0=7 THEN PRINT"refrigerator":PRINT"stairs"
626 IF L0=8 THEN PRINT"kitchen"
627 IF L0=9 THEN PRINT"outside":PRINT"stairs"
628 IF L0=10 THEN PRINT"inside"
629 IF L0=11 THEN PRINT"backyard"
630 IF L0=12 THEN PRINT"driveway"
631 IF L0=13 THEN PRINT"pool":PRINT"monument"
632 IF L0=14 OR L0=15 THEN PRINT"garden"
633 IF L0=2 AND D=1 THEN PRINT"door"
634 RETURN:PRINT"Don't drop that.":RETURN
641 IF MID$(a$,18)="hay"AND L0=2 AND H=0 THEN 217
642 PRINT"`Ouch!' says ";MID$(a$,18);".":RETURN
645 IF MID$(a$,12)="guilty"AND L0=3 THEN 658
646 IF MID$(a$,12)="sniffy"AND L0=3 THEN 201
647 PRINT"You just cought yourself a ";MID$(a$,12);".":RETURN
650 IF MID$(a$,15)="man"AND L0=12 THEN 375
651 PRINT"Guilty doesn't like the looks of the ";MID$(a$,15);".":RETURN
654 IF MID$(a$,15)="man"AND L0=12 THEN 375
655 PRINT"Sniffy clings to your pocket.":RETURN
658 IF H1=1 THEN PRINT"He's already in the net.":RETURN
659 PRINT"You net guilty.":H1=1:RETURN
664 IF MID$(a$,17)="man"AND L0=12 THEN 375
665 PRINT"`No thanks,' says ";MID$(a$,17);"."
668 IF MID$(a$,17)="vase"OR W$="flowers"THEN 466
669 PRINT"He's not going anywhere without his flowers.":RETURN
672 IF MID$(a$,15)="greedy"AND L0=14 AND G4=1 AND G1=0 THEN 520
673 PRINT MID$(a$,15);" sees a reflection of itself.":RETURN
676 IF MID$(a$,13)="insecure"AND H2=1 THEN 466
677 IF MID$(a$,13)="pool"AND L0=14 THEN 483
678 IF MID$(a$,13)="water"AND L0=14 THEN 483
679 PRINT"Don't use the vase on that.":RETURN
682 IF MID$(a$,16)="loving"AND I0=0 AND L0=13 AND Y6=1 THEN GOSUB 197:GOTO 456
683 IF MID$(a$,16)="loving"AND I0=1 AND L0=13 AND Y6=1 THEN 471
684 IF MID$(a$,16)="insecure"AND L0=13 AND H2=0 AND Y6=0 THEN GOSUB 462:GOTO 456
685 IF MID$(a$,16)="loving"AND L0=13 AND Y6=0 THEN 462
686 IF MID$(a$,16)="insecure"AND L0=13 AND H2=0 AND Y6=1 THEN 446
687 IF MID$(a$,16)="vase"AND Y5=1 AND F=0 AND Y6=1 THEN PRINT"You put the flowers in the vase.":F=1:RETURN
688 PRINT"Don't use the flowers on that.":RETURN
691 IF MID$(a$,13)="insecure"AND L0=13 AND H2=0 THEN 488
692 IF MID$(a$,13)="greedy"AND L0=14 AND H0=0 AND G1=1 THEN 527
693 IF MID$(a$,13)="greedy"AND L0=14 AND H0=0 AND G1=0 THEN 512
694 IF MID$(a$,14)="insecure"AND L0=13 AND H2=0 THEN 488
695 IF MID$(a$,14)="greedy"AND L0=14 AND H0=0 AND G1=1 THEN 527
696 IF MID$(a$,14)="greedy"AND L0=14 AND H0=0 AND G1=0 THEN 512
697 PRINT"Watch where you throw that rock.":RETURN
700 IF MID$(a$,14)="wonderful"AND G0=2 AND L0=15 THEN 566
701 IF MID$(a$,14)="wonderful"AND G0=1 AND L0=15 THEN 557
702 IF MID$(a$,14)="handcuffs"AND G0=0 AND L0=15 THEN 551
703 IF MID$(a$,14)="pool"AND G0=1 AND L0=14 THEN 561
704 IF MID$(a$,14)="water"AND G0=1 AND L0=14 THEN 561
705 PRINT"Be careful with the gnome.":RETURN
708 IF MID$(a$,15)="spiteful"AND C=1 AND S0=0 THEN 348
709 PRINT MID$(a$,15);" doesn't feel sleepy.":RETURN
712 IF MID$(a$,15)="door"AND L0=2 THEN 412
713 PRINT"You couldn't pay him to do that.":RETURN
716 IF MID$(a$,14)="greedy"AND L0=4 THEN 401
717 PRINT MID$(a$,14);" isn't that kind of girl.":RETURN
720 PRINT:S=INT(RND*2)+1:IF S=1 THEN PRINT"Try that again."ELSE IF S=2 THEN PRINT"You screwed up."
724 GOSUB 253:CLS:IF H9=1 THEN P=0:GOTO 136
727 IF H9=2 THEN 733
728 IF H9=3 THEN 417
729 IF H9=4 THEN 417
730 IF H9=5 THEN 494
731 IF H9=6 THEN S0=0:H7=0:C=1:GOTO 292
733 IF L0<5 THEN 118
734 IF L0=12 OR L0=11 THEN 197
737 PRINT:IF MID$(a$,9)="creature"AND L0=3 THEN 587
739 IF MID$(a$,9)="creature"AND L0=4 THEN 587
740 IF MID$(a$,9)="man"AND(L0=4 OR L0=12)THEN 609
742 IF MID$(a$,9)="dwarf"AND(L0=3 OR L0=4)THEN 587
744 IF MID$(a$,9)="hat"AND L0=1 AND H6=1 THEN PRINT"There is a brown hat hiding under a bush.":RETURN
745 PRINT"It's nothing special.":RETURN
749 IF MID$(a$,5,9)="pitchfork"AND H4=1 THEN 641
750 IF MID$(a$,5,3)="net"AND H=1 THEN 645
751 IF MID$(a$,5,6)="guilty"AND H1=1 THEN 650
752 IF MID$(a$,5,6)="sniffy"AND H6=1 THEN 654
753 IF MID$(a$,5,8)="spiteful"AND H7=1 THEN 664
754 IF MID$(a$,5,8)="insecure"AND H2=1 THEN 668
755 IF MID$(a$,5,6)="mirror"AND Y2=1 THEN 672
756 IF MID$(a$,5,4)="vase"AND Y5=1 THEN 676
757 IF MID$(a$,5,7)="flowers"AND Y0=1 THEN 682
758 IF MID$(a$,5,5)="gnome"AND Y1=1 THEN 700
759 IF MID$(a$,5,4)="rock"AND Y4=1 THEN 691
760 IF MID$(a$,5,5)="stone"AND Y4=1 THEN 691
761 IF MID$(a$,5,6)="pillow"AND Y3=1 THEN 708
762 IF MID$(a$,5,6)="greedy"AND H0=1 THEN 712
763 IF MID$(a$,5,5)="money"AND Y=1 THEN 716
764 PRINT"Check your inventory.":RETURN
768 PRINT"Inventory:":IF H4=1 THEN PRINT"pitchfork"
770 IF H=1 THEN PRINT"net"
771 IF H1=1 THEN PRINT"Guilty"
772 IF H6=1 THEN PRINT"Sniffy"
773 IF H0=1 THEN PRINT"Greedy"
774 IF H7=1 THEN PRINT"Spiteful"
775 IF H3=1 THEN PRINT"Loving"
776 IF H2=1 THEN PRINT"Insecure"
777 IF H8=1 THEN PRINT"Wonderful"
778 IF Y2=1 THEN PRINT"mirror"
779 IF Y5=1 AND Y6=0 THEN PRINT"vase"
780 IF Y5=1 AND Y6=1 THEN PRINT"vase with water"
781 IF Y4=1 THEN PRINT"rock"
782 IF Y0=1 THEN PRINT"flowers";:IF F=1 THEN PRINT" (in vase)"ELSE PRINT
783 IF Y1=1 THEN PRINT"gnome"
784 IF Y3=1 THEN PRINT"pillow"
785 IF Y=1 THEN PRINT"money"
786 RETURN
789 PRINT:IF MID$(a$,6)="pitchfork"AND H4=1 THEN PRINT"You already have the pitchfork.":RETURN
791 IF MID$(a$,6)="net"AND H5=1 THEN PRINT"You already have the net.":RETURN
792 IF MID$(a$,6)="spiteful"AND H7=1 THEN PRINT"You already have Spitful.":RETURN
793 IF MID$(a$,6)="insecure"AND H2=1 THEN PRINT"You already have Insecure.":RETURN
794 IF MID$(a$,6)="greedy"AND H0=1 THEN PRINT"You already have Greedy.":RETURN
795 IF MID$(a$,6)="vase"AND Y5=1 THEN PRINT"You already have the vase.":RETURN
796 IF MID$(a$,6)="mirror"AND Y2=1 THEN PRINT"You already have the mirror.":RETURN
797 IF MID$(a$,6)="flowers"AND Y0=1 THEN PRINT"You already have the flowers.":RETURN
798 IF MID$(a$,6)="gnome"AND Y1=1 THEN PRINT"You already have the gnome.":RETURN
799 IF MID$(a$,6)="rock"AND Y4=1 THEN PRINT"You already have the rock.":RETURN
800 IF MID$(a$,6)="stone"AND Y4=1 THEN PRINT"You already have the rock.":RETURN
801 IF MID$(a$,6)="pitchfork"AND H4=0 AND L0=2 THEN GOSUB 197:H4=1:RETURN
802 IF MID$(a$,6)="net"AND H=0 AND L0=2 AND B1=1 THEN GOSUB 197:H=1:RETURN
803 IF MID$(a$,6)="spiteful"AND L0=11 AND S0=1 AND H7=0 THEN GOSUB 197:H7=1:RETURN
804 IF MID$(a$,6)="insecure"AND L0=13 AND I=1 AND H2=0 THEN GOSUB 197:H2=1:RETURN
805 IF MID$(a$,6)="greedy"AND L0=14 AND G1=2 AND H0=0 THEN GOSUB 197:H0=1:RETURN
806 IF MID$(a$,6)="vase"AND L0=15 AND W0>0 AND Y5=0 THEN GOSUB 197:Y5=1:RETURN
807 IF MID$(a$,6)="mirror"AND L0=15 AND W0>1 AND Y2=0 THEN GOSUB 197:Y2=1:RETURN
808 IF MID$(a$,6)="flowers"AND L0=13 AND Y0=0 THEN GOSUB 197:Y0=1:RETURN
809 IF MID$(a$,6)="gnome"AND L0=15 AND S1=1 AND Y1=0 THEN GOSUB 197:Y1=1:RETURN
810 IF MID$(a$,6)="rock"AND L0=14 AND Y4=0 THEN GOSUB 197:Y4=1:RETURN
811 IF MID$(a$,6)="stone"AND L0=14 AND Y4=0 THEN GOSUB 197:Y4=1:RETURN
812 IF MID$(a$,6)="hat"AND L0=1 AND H6=1 THEN 222
813 IF MID$(a$,6)="sniffy"AND L0=9 AND H6=0 THEN GOSUB 197:H6=1:RETURN
814 IF MID$(a$,6)="guilty"AND L0=9 AND H1=0 THEN GOSUB 197:H1=1:RETURN
815 PRINT"You can't take that.":RETURN
818 PRINT:IF MID$(a$,9)="man"AND L0=4 AND C=1 AND H1=1 AND H6=1 THEN GOSUB 20:GOSUB 253:GOSUB 245:GOTO 258
820 IF MID$(a$,9)="man"AND L0=4 THEN 146
821 IF MID$(a$,9)="man"AND L0=12 THEN 41
822 IF MID$(a$,9)="wonderful"AND L0=15 AND H3=1 AND H2=1 AND H0=1 THEN 74
823 IF MID$(a$,9)="woman"AND L0=6 AND M>1 THEN GOSUB 35:PRINT:G3:RETURN
824 IF MID$(a$,9)="dwarves"AND L0=13 THEN 451
825 IF MID$(a$,9)="sniffy"AND N0=0 AND L0=3 THEN 170
826 IF MID$(a$,9)="guilty"AND N0=0 AND L0=3 THEN 175
827 IF MID$(a$,9)="greedy"AND L0=14 AND G1=0 AND H0=0 THEN 504
828 PRINT"You are ignored.":RETURN
831 INPUT"Do you want to quit (y/n)";a$:IF LEFT$(a$,1)="y"THEN END
833 IF LEFT$(a$,1)="n"THEN RETURN
834 GOTO 831
838 CLS:PRINT"Instructions:PRINT":PRINT"exit/quit        quit":PRINT:PRINT"ENTER            room description":PRINT:PRINT"where            shows exits":PRINT:PRINT"help             this screen":PRINT
848 PRINT"use ____ on ____ use something on something else (does not matter what":PRINT"                 one uses in place of on, just so long as it is two":PRINT"                 letters long)":PRINT:PRINT"take ____        take something":PRINT
854 PRINT"look at ____     look at something (does not matter what one uses in":PRINT"                 place of at, just as long as it is two letters long)":PRINT:PRINT"talk to ____     talk to something (does not matter what one uses in"
858 PRINT"                 place of to. as long as it is two letters long)":PRINT:PRINT"pockets          shows inventory":RETURN
865 CLS:PRINT"Hints:":PRINT:PRINT"Rather than this game to make it easier  and make more sense,":PRINT"I've included  this hint  feature to make up  for any  stupidity on":PRINT"my part or yours.":PRINT
872 PRINT"A problem  may be due  to the simple  command system.  When prompted":PRINT"to give an object for a verb, only type the noun, not the adjective.":PRINT:PRINT"Example:":PRINT:PRINT"talk to man":PRINT
879 PRINT"(when talking to the old man in the bus)":PRINT:INPUT"Did I solve your problem";a$:IF a$="yes"THEN 1055
884 IF a$="no"THEN 887
885 GOTO T
887 PRINT
889 INPUT"Which part are you stuck on (1,2,3)";a:IF a=1 THEN 895
891 IF a=2 THEN 930
892 IF a=3 THEN 974
893 GOTO 889
895 CLS:PRINT"This is a walktrough of the first act.  Read carefully if you don't":PRINT"want to find out too much.":PRINT:PRINT"Go in the barn":PRINT:PRINT"Take the pitchfork":PRINT:PRINT"Use the pitchfork on the hay":PRINT:PRINT"Take the net":PRINT
907 PRINT"Go to the highway":PRINT:PRINT"Talk to the man":PRINT:PRINT"Go to the highway":PRINT:PRINT"Use the net on Guilty":PRINT:PRINT"Use the net on Sniffy":PRINT:INPUT"Press ENTER to continue...",a$:CLS:PRINT"Go to the park":PRINT:PRINT"Take the hat"
922 PRINT:PRINT"Go to the bus":PRINT:PRINT"Talk to the man":PRINT:PRINT"<End of hints for Part I>":GOTO 1055
930 CLS:PRINT"This is a waugh of the second act.  Read carefully if you don't":PRINT"want to find out too much.":PRINT:PRINT"Go inside":PRINT:PRINT"Go to the kitchen":PRINT:PRINT"Go in the refrigerator":PRINT:PRINT"Go to the kitchen":PRINT
942 PRINT"Go down the stairs":PRINT:PRINT"Go to the terminal":PRINT:PRINT"Take Sniffy":PRINT:PRINT"Take Guilty":PRINT:PRINT"Go outside":PRINT:INPUT"Press ENTER to continue",a$:CLS:PRINT:PRINT"Go inside":PRINT:PRINT"Go down the rs":PRINT
959 PRINT"Talk to the woman":PRINT:PRINT"Use the pillow on Spiteful":PRINT:PRINT"Take Spiteful":PRINT:PRINT"Go into the backyard":PRINT:PRINT"Talk to the man":PRINT:PRINT"Use Sniffy on the man":PRINT:PRINT"<End of hints on Part II>":GOTO 1055
974 CLS:PRINT"This is a waugh of the third act.  Read carefully if you don't":PRINT"want to find out too much.":PRINT:PRINT"Use the money on Greedy":PRINT:PRINT"Go to the highway":PRINT:PRINT"Go to the park":PRINT:PRINT"Go to the barn":PRINT
986 PRINT"Use Greedy on the door":PRINT:PRINT"Go through the door":PRINT:PRINT"Take the flowers":PRINT:PRINT"Go behind the monument":PRINT:PRINT"Take the vase":PRINT:INPUT"Press ENTER to continue",a$:CLS:PRINT"Go to the gaden":PRINT:PRINT"Go to the pool"
1001 PRINT:PRINT"Use the vase on the pool":PRINT:PRINT"Take a rock":PRINT:PRINT"Go to the garden":PRINT:PRINT"Use the rock on Insecure":PRINT:PRINT"Take Insecure":PRINT:PRINT"Use Insecure on the vase":PRINT:PRINT"Use the flowers on Loving":PRINT
1016 PRINT"Go behind the monument":PRINT:PRINT"Take the mirror":PRINT:INPUT"Press ENTER to continue",a$:CLS:PRINT"Take anotherrock":PRINT:PRINT"Talk to Greedy":PRINT:PRINT"Use the mirror on Greedy":PRINT:PRINT"Use the rock on Greedy":PRINT
1030 PRINT"Take Greedy":PRINT:PRINT"Go to the garden":PRINT:PRINT"Go behind the monument":PRINT:PRINT"Talk to Wonderful":PRINT:PRINT"Take the gnome":PRINT:PRINT"Use then gnome on the handcuffs":PRINT:INPUT"Press ENTER to continue",a$:CLS
1044 PRINT"Go to the pol":PRINT:PRINT"Use the gnome on the pool":PRINT:PRINT"Go to the monument":PRINT:PRINT"Use the gnome on Wonderful":PRINT:PRINT"<End of hints for Part III>":GOTO 1055
1055 RETURN
