42 DEFINT x,z,m,p,y:RESTORE:DIM N$(32),E$(32),L(32),A$(30),B$(30),M(60,6),V$(22):V$(21)="put":A=0:C=0:CT=0:H=380:I=0:L=10:LT=0:N=0:Q=0:S=0:SI=0:V=0:X=0:Y=0:Z=0:FOR X=1 TO 30:READ N$(X):NEXT X:A$(24)="troll"
50 A$(25)="oracle":FOR X=1 TO 30:READ E$(X):NEXT X:B$(24)="gomar":B$(25)="time":FOR X=1 TO 30:READ L(X):NEXT X:A$(29)="shadow":B$(29)="demon":A$(30)="orb":B$(30)="light":RESTORE 201:FOR X=1 TO 60:FOR Y=1 TO 6:READ M(X,Y):NEXT Y,X:FOR X=1 TO 20
54 READ V$(X):NEXT X:DATA"north","south","east","west","up","down"
56 DATA"lantern","oil","rope","backpack","key"
57 DATA"gardenspade","shield","helmet","armor"
58 DATA"gauntlets","ring","dagger","broadsword"
59 DATA"wolf","spirit","hellhound","villager"
60 DATA"Troll Gomar","Oracle of Time","blackwidow"
61 DATA"bard","priest","Shadow Demon","Orb of Light"
63 DATA"North is a compass direction heading north."
64 DATA"South is a compass direction heading south."
65 DATA"East is a compass direction heading east."
66 DATA"West is a compass direction heading west."
67 DATA"Up is a compass direction heading up."
68 DATA"Down is a compass direction heading down."
69 DATA"This ghostly brass lantern is stained with blood. It is already lit (glowing brightly)."
70 DATA"This is oil used with the brass lantern. Should it ever go out, have this!"
71 DATA"A small coil of rope about 15' in length. It looks sturdy and well made."
72 DATA"A leather backpack. You can put things in it."
73 DATA"A large metal key with a skull. It appears to fit most any lock."
74 DATA"This is a large gardenspade. It can be used to tend a garden and much more."
75 DATA"A large, rusty shield. It has the emblem of an eagle on the front. It looks heavily dented."
76 DATA"A brass helmet from the Roman fields. It, too, is stained in blood and grossly battered."
77 DATA"A suit of interlinked platemail armor. The interior is made from leather, the shell metal."
78 DATA"A pair of mysterious-looking gauntlets. They feel magical to the touch!"
79 DATA"A magical ring of protection. It glows with a soft, pale blue light."
80 DATA"A jeweled double-edged dagger. Similar to the Roman gladius, but shorter."
81 DATA"A large broadsword with a ruby hilt. It hums softly in the darkness of the light fallen day."
82 DATA"This large, howling wolf looks up at you briefly from the cliff. He appears content on watching you."
83 DATA"This restless spirit wanders the tunnels of this cavern, never stopping to consider his plight!"
84 DATA"A large, menacing hellhound from the fiery pits of hell! Fire consumes him as he gazes into your very soul!"
85 DATA"A simple villager from the surrounding village. He smiles at you briefly before passing."
86 DATA"This is Troll Gomar, a wise troll from deep within the woodland. He bows to you slowly. 'Hello, my friend.' he says to you. You may 'talk' to him at any time."
87 DATA"This is the ancient Oracle of Time deep within the chasms of this world. He looks at you with a haunting emptiness as he sits from his perch inside a wayward keep. 'You have found the Oracle of Time.' he says to you. 'Time neither stops.'
88 DATA"This is a large blackwidow spider. It spins a tangled web, sticky to the touch. As it moves towards you, the drops of blood from its fangs fall warily close to your feet!"
89 DATA"A traveling bard from the surrounding countryside. He carries with him a rosewood harp."
90 DATA"A local priest from the church. He looks up at you from his altar. 'Welcome to my church,' he says to you. 'Care to stay awhile and rest?'"
91 DATA"As you step into the darkness of the crypt, a shiver runs up and down your spine! You have come to the Shadow Demon, an ancient evil so powerful that no one has come out of here alive to tell the tale! Dare you opose him?"
92 DATA"This is a magical orb of light, shining forth unto a darkened world. It is the light of the earth, and any man whom follows its path knows no darkness!"
94 DATA 99,99,99,99,99,99
95 DATA 4,999,10,12,13,17,999,60,44,4,22,999,39
96 DATA 11,43,28,6,22,39,52,27,8,53,39
98 DATA"Ain a large tavern. Wood-rotted tables surround you, while a bar and staircase are visible up ahead. Although there is no bartender here, most of the local patrons can be seen drinking ale from around the dingy tavern."
99 DATA"Aat the bar inside the tavern. There isn't a bartender here at the moment, although you can still order from the 'menu' by leaving gold on the counter and serving yourself."
100 DATA"Win a narrow hallway on the second floor of this tavern. Up ahead lies a small room, while a staircase leads downstairs to the main tavern below."
101 DATA"Vsmall guest room. There isn't much here save for a few wooden barrels and a large bed."
102 DATA"Walong a cobblestone path near the entrance to the tavern (north). There are several buildings here, including a large shop visible to the east. Smoke rises from the chimney of the tavern ahead."
103 DATA"Ain front of a large, ornate fountain in the center of the village. It goes down some 50 feet below the surface, the walls of which are covered in a thick, green moss. It is icky to the touch. A church stands to the west.
104 DATA"Ainside a large church. Rows of pews adorn the room, while tall, stained glass windows rise high above. An altar stands to the north (occupied by a priest)."
105 DATA"You stand before a stone altar inside the church. A priest is here giving blessing to the few inside the church. It must be mass right about now, although you don't have a view of the sun to gauge the time of day. A door is east.
106 DATA"Vsmall storage room within the church. Items pertaining to the priest and his clergy are often stored here. The only exit is back west."
107 DATA"Aat the entrance to a small village. A sign by the side of the road here reads:'Welcome to Eldor.' A cobblestone path heads north into town past a picket fence, while a wider dirt path heads south into a well-lit forest."
108 DATA"Won a dirt path. It heads north and south across the landscape here. A forest lies to the south, with trees towering high above you. There is a large oak tree to the southwest of here, but you cannot reach it from here.
109 DATA"Vsmall room south of the hallway. It is dimly lit. There isn't much here save for a small bed and a dresser. It looks dirty, as if someone has not been here in years."
110 DATA"Vroom west of the main hallway. It is a very cramped room lacking any amenities whatsoever. There may be a few useful items inside, but judging from the dust around the room it hasn't been used for several years."
111 DATA"Ain a dark hallway inside the cottage. From here you can head east into a kitchen, while west and south of here lie unattended rooms. The entrance to the cottage is back north."
112 DATA"Ain a small kitchen within the cottage. There is a square wooden table in the center of the room, atop which rest some useful items. To the north of the kitchen is the outside patio, passed through under tall sheets.
113 DATA"Abefore an old cottage within the village. The outer walls of the building appear charred, blackened with ash and smoke. An open doorway leads into a darkened hallway to the south, while a large fountain is west.
114 DATA"Vdarkened toolshed. Not much can be seen here, for there is very little light! You may need a small candle or lantern to light the contents of this room."
115 DATA"Anorth of the patio in a small garden. A large tree -- too high to be climbed -- stands before you, its rotted bark and twisted branches a testament to the age of this abode. The main area of the garden is east of here."
116 DATA"Aon an open patio just north of a small cottage. Lush, green grass fills the courtyard of this patio, while the sounds of birds echo in the near distance. A large tree stands to the north in the center of a small garden."
117 DATA"Ain a small garden. Rows of beautiful flowers of all shapes, colors and sizes fill the area, while towering vines grow atop the enclosed walls of the courtyard. The only way back is west."
118 DATA"Ainside a large shop. Adventurers can come here to sell their wares and to purchase needed goods. Type 'buy <item>' to buy an item, 'sell <item>' to sell and 'list' to see what's presently in stock."
119 DATA"Ainside a small hut on the branch of a tree. Inside the hut are a table, a wooden bookshelf and a hammock (suspended from the ceiling). A small being looks up at you and smiles. 'Welcome, friend. What can I do for you?'"
120 DATA"Aon a branch atop the tree. A small, thatched roof hut stands on the center of the branch to the east (built into the tree). Looking inside, you can see a figure deep in prayer. Perhaps it would be wise not to disturb him.
121 DATA"Abefore a tree with low-lying branches. Wooden steps -- nailed into the bark of the tree -- lead up into the shaded canopy of the forest."
122 DATA"Win a well-lit forest just south of a large, dirt path. The road forks in four directions here:North, towards a path; East, towards a large, sloping valley; West, towards a tall tree; and South, taking you deeper still.
123 DATA"Abefore a small pond within a lush, green meadow. The water is mossy green, and the pond appears dull and lifeless, as if someone has stolen the life right out of it!"
124 DATA"Ain a large, sloping green valley west of the forest. Clouds move on by endlessly in the near distance, as towering purple mountains frame a small lighthouse far to the east. A path slopes down here to the south."
125 DATA"Ideep within the forest. A long road branches out to the south from here, heading into a beautiful (but rocky) gorge towards the southeast."
126 DATA"Walong a long road sloping southward from a dense forest. The road steadily becomes more difficult to the east, as the climb steepens somewhat into a narrow cliff-face just beyond a large gorge."
127 DATA"Ifacing a tall cliff atop a mile-long gorge snaking around the countryside to the northeast. The gorge continues for miles on end, although it might be better to be just go south where the path is easier to cross."
128 DATA"Abefore a towering stone castle in the midst of a lush, green valley. The castle rises hundreds of feet into the air, as flags flap atop imposing ramparts covered in thick vines. A moat is here, with the drawbridge down."
129 DATA"Ainside the main hall of the castle. Tall gryphons beckon you inward, into an impressive parlor towards the north. You hear a faint laughter echo throughout the castle walls as you step closer inside!"
130 DATA"Ifacing a long gorge about 250 feet down from a narrow cliff. Looking out, you can see a large waterfall cascading down to the east, while further a cave is visible near the bank of a raging river. The only way out is back up.
131 DATA"Ainside a dark cave within the waterfall. As water cascades down behind you, a cold, hallowing wind shivers your spine. Up ahead, a long tunnel heads into darkness in front of you, your lantern dancing upon the walls.
132 DATA"You stand before an impressive waterfall west of the gorge. It is quite a drop from the top of the cliff from which the waterfall emerges. Inside the waterfall you notice a small opening, similar to a cave. It may be possible to enter it.
133 DATA"Winside a narrow tunnel inside a large cavern. South of here lies the main entrance, while north takes you deeper into the cave. An opening is visible here in the ceiling, where a small shaft leads into a chiseled room.
134 DATA"Win a narrow tunnel inside the cave. There is very little light here! Up ahead lies a small intersection, leading into several small tunnels on either side."
135 DATA"You have reached a small opening inside the cave. A narrow shaft heads east here into a small room, carved out of the walls of this cavern. It looks abandoned, though well-maintained despite its age."
136 DATA"Vsmall keep within the caves, chiseled out of the eastern most wall of this cavern. Small candles, ghostly-lit, strangely illuminate the darkness, while crude 'writing' is carved upon the wall to the east."
137 DATA"Icrawling on your belly inside the cave. A narrow tunnel heads east from here, heading into darkness ahead."
138 DATA"Ieast of an intersection into the cave. The tunnel narrows somewhat up ahead to the north."
139 DATA"Iwinding the corner of a small, narrow tunnel. The light dims from your lantern as you crawl slowly through the passageway. The tunnel stops abruptly to the east."
140 DATA"You have reached the end of a long tunnel inside the cave. The air is very damp here. The only exit is back west."
141 DATA"Ainside a massive parlor inside the castle. A tall chandelier hangs down from the ceiling, illuminating the room below. From the parlor you can head north into a lavish throne room (framed by majestic silk curtains).
142 DATA"Abefore a tall, spiraling staircase which heads upstairs, presumedly to the top of the castle. It goes round and round for several hundred feet, the height truly dizzying!"
143 DATA"Aatop the castle on the western rampart. A large red flag with gryphons emblazoned on it flaps smoothly in a near silent breeze. A long walkway is here, extending from rampart to rampart. It is covered in lush vines.
144 DATA"Walong a stone walkway atop the castle. Vines grow along the walls, stretching downward for hundreds of feet. It may be possible to 'climb' the vines down to the castle entrance. To the east and west stand the ramparts.
145 DATA"Aatop the castle on the eastern rampart. A large flag, complete with gryphons on it, flaps in the breeze ahead. There is a walkway here which extends from rampart to rampart, the walls of which are covered in green vines.
146 DATA"Abefore a tall, spiraling staircase which heads upstairs to the castle ramparts. It spirals upward several hundred feet. The castle parlor is east."
147 DATA"Vdark dungeon just east of the throne room. It appears to head in a spiral fashion around the corner of a long crypt-like abode, the walls of which are covered in mold."
148 DATA"Ain an impressive looking throne room inside the castle. Silk curtains adorn either side of the throne, which itself is covered in gold and jewels. Inscribed on the throne are the letters:'SARCA.' South is the parlor.
149 DATA"Win a dark dungeon. Cobwebs line the walls here, and you can sense a presence in the nearby shadows! Whatever lives here isn't human, although plenty of THOSE bones litter the floor here, prey to a vengeful beast!"
150 DATA"You have reached the end of the dungeon. You are amazed by what you see here! A small circular object, softly glowing green, sits suspended in midair above the ground! You feel a cold, evil, foreboding presence here, almost overwhelming!
151 DATA"Won the bank of a swiftly moving river, heading downstream. The river snakes around a small cliff to the northeast, stopping at a pair of wooden docks. To the west, a large waterfall cascades down a steep cliff."
152 DATA"Iwading knee deep in a fast moving river. Although crossing it does not appear to be too difficult, caution should be taken. The river continues east."
153 DATA"Iwading in a river. The pace of the water's movement increases steadily downstream towards the west. The river empties into a large body of water up ahead, next to a pair of wooden docks."
154 DATA"You have reached the docks, just south of a tall lighthouse. The lighthouse rises hundreds of feet into the air, providing a guiding light to incoming vessels. A river flows to the west."
155 DATA"Abefore a large lighthouse near the docks. It is painted in two colors:red and white. The entrance to the light house is wide open."
156 DATA"Iclimbing a spiraling staircase inside the lighthouse. It is just a bit further until you reach the top. Down from here lies the entrance to the lighthouse (the door is open)."
157 DATA"You have reached the top of the lighthouse. A large lantern is here, shining a brilliant beam of light onto the waters ahead. Looking out, you see a few vessels moving about, oblivious to your peering eyes. The only exit is back down."
201 DATA 2,5,0,0,3,0
202 DATA 0,1,0,0,0,0
203 DATA 0,0,4,0,0,1
204 DATA 0,0,0,3,0,0
205 DATA 1,6,21,0,0,0
206 DATA 5,10,16,7,0,0
207 DATA 8,0,6,0,0,0
208 DATA 0,7,9,0,0,0
209 DATA 0,0,0,8,0,0
210 DATA 6,11,0,0,0,0
211 DATA 10,25,0,0,0,0
212 DATA 14,0,0,0,0,0
213 DATA 0,0,14,0,0,0
214 DATA 16,12,15,13,0,0
215 DATA 19,0,0,14,0,0
216 DATA 0,14,0,6,0,0
217 DATA 0,0,19,0,0,0
218 DATA 0,19,20,0,0,0
219 DATA 18,15,0,17,0,0
220 DATA 0,0,0,18,0,0
221 DATA 0,0,0,5,0,0
222 DATA 0,0,0,23,0,0
223 DATA 0,0,22,0,0,24
224 DATA 0,0,25,0,23,0
225 DATA 11,28,27,24,0,0
226 DATA 0,27,0,0,0,0
227 DATA 26,30,0,25,0,0
228 DATA 25,29,0,0,0,0
229 DATA 28,0,30,0,0,0
230 DATA 27,33,31,29,0,0
231 DATA 0,0,32,30,0,0
232 DATA 44,0,0,31,0,0
233 DATA 30,0,35,0,0,0
234 DATA 36,35,0,0,0,0
235 DATA 34,0,54,33,0,0
236 DATA 37,34,0,0,38,0
237 DATA 40,36,0,0,0,0
238 DATA 0,0,39,0,0,36
239 DATA 0,0,0,38,0,0
240 DATA 0,37,41,0,0,0
241 DATA 42,0,0,40,0,0
242 DATA 0,41,43,0,0,0
243 DATA 0,0,0,42,0,0
244 DATA 51,32,45,49,0,0
245 DATA 0,0,0,44,46,0
246 DATA 0,0,0,47,0,45
247 DATA 0,0,46,48,0,0
248 DATA 0,0,47,0,0,49
249 DATA 0,0,44,0,48,0
250 DATA 0,52,51,0,0,0
251 DATA 0,44,0,50,0,0
252 DATA 50,0,53,0,0,0
253 DATA 0,0,0,52,0,0
254 DATA 55,0,0,35,0,0
255 DATA 0,54,56,0,0,0
256 DATA 0,0,57,55,0,0
257 DATA 58,0,0,56,0,0
258 DATA 0,57,0,0,59,0
259 DATA 0,0,0,0,60,58
260 DATA 0,0,0,0,0,59
262 DATA"go","get","drop","wield","unwield","wear","'ove","use","light","examine","read"
263 DATA"buy","sell","list","menu","talk","talk to","fight","kill","attack"
265 DIM P(30):P(1)=10000:P(2)=10000:P(3)=10000:P(4)=10000:P(5)=10000:P(6)=10000:P(7)=30:P(8)=14:P(9)=36:P(10)=42:P(11)=6:P(12)=150:P(13)=328:P(14)=480:G=200:P(15)=890:P(16)=400:P(17)=1200:P(18)=200:P(19)=5000
267 FOR X=20 TO 29:P(X)=10000:NEXT X:P(30)=6000:MODE 2:PRINT"'Green Falls'":PRINT"(C)opyright 2006 by Paul Panks (writing as Dunric)":PRINT"Written for the 12th annual interactive fiction contest.":PRINT"CPC Version 09/2016 by SRS (cpcwiki.eu)":PRINT
277 PRINT"INSTRUCTIONS":PRINT:PRINT"Long ago, the land of Eldor had a life force (Chi) which":PRINT"flowed smoothly across the world. But now, thanks to a nefarious":PRINT"evil, known as the Shadow Demon, a lurking, all-powerful"
278 PRINT"force has sucked the life out of the land.":PRINT:PRINT"Armed with only a dagger and your wits, you must venture deep within Eldor":PRINT"to uncover the truth about the evil permeating the landscape. Along"
280 PRINT"the way, you will battle the evil spawn of the Shadow":PRINT"Demon, sucked up from the bowels of hell itself!":PRINT:PRINT"Dare you conquer the Shadow Demon?":PRINT:PRINT"(Ok, stop laughing...I wasn't drunk when I wrote this adventure!) :)"
281 PRINT:GOSUB 999:CLS:PRINT"NEW CHARACTER OR SAVED GAME?":PRINT:PRINT"Are you playing a saved game (y/n)?";
285 a$=INKEY$:IF a$=""THEN 285
286 IF a$="y"OR a$="Y"OR a$="yes"OR a$="Yes"THEN PRINT a$:PRINT:GOTO 290
287 IF a$="n"OR a$="N"OR a$="no"OR a$="No"THEN PRINT a$:PRINT:GOTO 300
288 GOTO 285
290 OPENIN"game.sav":INPUT#9,a:INPUT#9,c:INPUT#9,CT:INPUT#9,H:INPUT#9,HP:INPUT#9,i:INPUT#9,L:INPUT#9,LT:INPUT#9,n:INPUT#9,Q:INPUT#9,SI:INPUT#9,v:INPUT#9,X:INPUT#9,Y:INPUT#9,Z:INPUT#9,ac:INPUT#9,W:INPUT#9,ap:INPUT#9,G:INPUT#9,E:FOR X=1 TO 30:INPUT#9,L(X)
293 NEXT X:CLOSEIN:GOTO 301
300 L=10
301 IF LT=0 THEN IF L>21 THEN PRINT"It's too dark to see anything!":GOTO 303:ELSE IF L(29)=998 THEN 950
302 RESTORE 98:FOR X=1 TO L:READ H0$:NEXT:GOSUB 995
303 PRINT"Obvious exits:< ";:IF M(L,1)>0 THEN PRINT"North ";
304 IF M(L,2)>0 THEN PRINT"South ";
305 IF M(L,3)>0 THEN PRINT"East ";
306 IF M(L,4)>0 THEN PRINT"West ";
307 IF M(L,5)>0 THEN PRINT"Up ";
308 IF M(L,6)>0 THEN PRINT"Down ";
309 PRINT">":FOR X=7 TO 30:IF L(X)=L THEN PRINT"There is a(n) ";N$(X);" here."
310 NEXT X:IF LT=2 THEN PRINT"(A brilliant light shoots throughout the room)"
320 m$="":v$="":v2$="":n2$="":v=0:n=0:a=0:P=0:nm=0:dt$="":PRINT:LINE INPUT">",a$:P=1:nm=0:dt$=a$:FOR a=1 TO LEN(dt$):IF MID$(dt$,a,1)=" "THEN a$=MID$(dt$,P,a-P):P=a+1:nm=nm+1:W$(nm)=LOWER$(a$)
332 NEXT:nm=nm+1:a$=MID$(dt$,P,a-P):W$(nm)=LOWER$(a$):a$=dt$:M(3,2)=1:m$=W$(2):n2$=W$(5):v$=W$(1):v2$=W$(4):IF L(29)=998 OR SD=1 THEN 950
334 IF W$(1)="talk"AND W$(2)="to"THEN W$(2)=W$(3):m$=W$(2):W$(3)=""
335 IF v$="i"OR v$="inventory"OR v$="inv"OR v$="invent"OR v$="in"THEN 701
336 IF v$="quit"OR v$="bye"OR v$="exit"OR v$="goodbye"OR v$="good bye"OR v$="q"THEN 850
337 IF v$="go"OR v$="n"OR v$="north"OR v$="s"OR v$="south"OR v$="east"OR v$="e"OR v$="w"OR v$="west"OR v$="u"OR v$="up"OR v$="d"OR v$="down"THEN 350
338 IF v$="look"OR v$="l"OR v$="lk"THEN 301:ELSE IF a$="list"THEN 520
339 IF v$="save"OR v$="save game"THEN 810:ELSE IF a$="menu"THEN 530
340 IF v$="help"OR v$="hint"OR v$="mercy"THEN 651:ELSE IF a$="score"THEN 751
341 SI=0:v=0:FOR X=1 TO 21:IF V$(X)=v$THEN v=X:X=22:SI=1
342 NEXT:SI=0:n=0:FOR X=1 TO 30:IF N$(X)=m$OR m$=A$(X)OR m$=B$(X)THEN n=X:X=32:SI=1
344 NEXT:IF SI=0 AND v<>10 THEN PRINT"I don't understand the noun '"m$"'.":GOTO 320
345 ON v GOTO 350,360,370,380,390,400,410,420,420,430,430,500,510,520,530,540,540,600,600,600,980:PRINT"I don't understand the word '";v$;"'.":GOTO 320
350 GOSUB 960:IF n=3 THEN IF L(26)=L THEN PRINT"The blackwidow blocks your path!":PRINT"It twitches and snaps at you, blood dripping from its fangs!":GOTO 320
351 IF n=2 THEN IF L(22)=L THEN PRINT"The hellhound stops you!":PRINT"It growls,'Care to visit another realm?! Like HELL!!!!!":PRINT">>>>>>>>>>>>>>>>>>>> F-I-R-E-B-A-L-L":PRINT"You are burnt to a crisp!":PRINT"You died.":S 4:RUN
352 IF n=1 THEN IF L(21)=L THEN PRINT"The spirit halts your progress!":PRINT"'NOOOOOoooooooo one goes this WAAAAAaaaaayyyyy!' it bellows.":GOTO 320
353 IF n=5 THEN IF L(9)<>0 AND L=36 THEN PRINT"You need a rope to climb up the shaft.":GOTO 320
354 IF n=6 THEN IF L=47 THEN PRINT"You climb down the vines...":L=31:GOTO 301
355 IF n=3 THEN IF L=8 THEN IF L(11)<>0 THEN PRINT"The locked door prevents you from passing east.":PRINT"You need a key to open the door (type 'use key' to open it).":GOTO 320
357 IF M(L,n)>0 THEN L=M(L,n):GOTO 301
358 PRINT"You can't go that way."
360 IF L(n)=L OR L(n)=305 THEN IF n=30 OR n<20 AND n>6 THEN IF CT<8 THEN PRINT"Ok.":L(n)=0:GOTO 320
361 IF CT>=8 THEN PRINT"Too heavy!":GOTO 320
362 PRINT"It's beyond your power to do that!":GOTO 320
370 IF L(n)=0 THEN L(n)=L:PRINT"Ok.":L(n)=L:CT=CT-1:GOTO 320
371 PRINT"You can't drop that here.":GOTO 320
380 IF L(n)=0 THEN IF n=12 THEN IF W<>1 THEN L(n)=105:PRINT"Ok.":W=1:GOTO 320
381 IF L(n)=0 THEN IF n=18 THEN IF W<>1 THEN L(n)=105:PRINT"Ok.":W=1:GOTO 320
382 IF L(n)=0 THEN IF n=19 THEN IF W<>1 THEN L(n)=105:PRINT"Ok.":W=1:GOTO 320
383 IF W=1 THEN PRINT"You are wielding something already!":GOTO 320
384 PRINT"That cannot be wielded.":GOTO 320
390 IF L(n)=105 THEN IF n=12 THEN L(n)=0:PRINT"Ok.":W=0:GOTO 320
391 IF L(n)=105 THEN IF n=18 THEN L(n)=0:PRINT"Ok.":W=0:GOTO 320
392 IF L(n)=105 THEN IF n=19 THEN L(n)=0:PRINT"Ok.":W=0:GOTO 320
394 PRINT"That cannot be unwielded.":GOTO 320
400 IF L(n)=0 THEN IF n=13 OR n=14 OR n=15 OR n=16 OR n=17 THEN L(n)=205:ac=ac+n:PRINT"Ok.":GOTO 320
401 PRINT"That cannot be worn.":GOTO 320
410 IF L(n)=205 THEN IF n=13 OR n=14 OR n=15 OR n=16 OR n=17 THEN L(n)=0:ac=ac-n:PRINT"Ok.":GOTO 320
411 PRINT"That cannot be 'oved.":GOTO 320
420 IF L(n)<>0 AND L(n)<>R THEN PRINT"You can't use that here!":GOTO 320
421 IF L=36 THEN IF n=9 THEN L=38:PRINT"You climb the rope to reach the shaft...":GOTO 301
422 IF n=7 THEN IF L(8)=0 THEN LT=1:PRINT"Fzzzzt! The lantern flickers on!":GOTO 320
423 IF n=7 THEN PRINT"You need the oil first to use the lantern.":GOTO 320
424 IF n=11 THEN IF L=8 THEN L=9:PRINT"Click! The door unlocks and you pass on through...":GOTO 301
425 IF n=30 THEN LT=2:PRINT"Fzzzzzzzzzzzzzzzzzzt!":PRINT"A brilliant light shoots from the orb!":PRINT"The darkness fades and eternal light falls upon the land!":GOTO 320
426 IF n=10 THEN PRINT"Use the 'put' verb instead.":GOTO 320
427 PRINT"That cannot be used.":GOTO 320
430 IF n=0 OR L(n)<>L AND L(n)<>0 AND L(n)<>105 AND L(n)<>205 THEN 433
431 PRINT E$(n):IF n=10 THEN 433
432 GOTO 320
433 IF n=10 THEN PRINT"The backpack contains:":GOSUB 990:GOTO 320
498 PRINT"You notice nothing unusual about it.":GOTO 320
500 IF L<>21 THEN PRINT"You are not in the village shop!":GOTO 320
501 IF L(n)=999 THEN IF G<P(n)THEN PRINT"You do not have enough money to purchase the ";N$(n);".":GOTO 320
502 IF L(n)=999 THEN IF CT<8 THEN G=G-P(n):L(n)=0:CT=CT+1:PRINT"You purchase the ";N$(n);", worth";P(n);"gold coins.":GOTO 320
503 IF L(n)<>999 THEN PRINT"That isn't in stock at the moment. Type 'list' for current items.":GOTO 320
504 IF CT>=8 THEN PRINT"You can't carry that. Transaction aborted.":GOTO 320
505 PRINT"What you expected didn't happen.":GOTO 320
510 IF L<>21 THEN PRINT"You are not in the village shop!":GOTO 320
511 IF L(n)=0 THEN F=P(n)/2:G=G+F:L(n)=999:CT=CT-1:PRINT"You sell the ";N$(n);", worth";F;"gold coins.":GOTO 320
512 PRINT"What you expected didn't happen.":GOTO 320
520 IF L<>21 THEN PRINT"You are not in the village shop!":GOTO 320
521 PRINT"Here is what the shop currently has in stock:":SI=0:FOR X=7 TO 30:IF L(X)=999 THEN SI=1:PRINT" ";P(X);":";N$(X);"."
523 NEXT X:IF SI=0 THEN PRINT"Alas, the shop has nothing in stock at the moment.":PRINT"Perhaps you should 'sell' something to it?":GOTO 320
524 PRINT"Your gold:";G:GOTO 320
530 IF L<>2 THEN PRINT"You are not in the tavern!":GOTO 320
531 PRINT"Here is what we have on tap:":PRINT"(1) Drunk's Delight:Heals 25 hp, costs 15 gold.":PRINT"(2) Wizard's Potion:Heals 75 hp, costs 30 gold":PRINT"(3) Veteran's Vodka:Heals 125 hp, costs 75 gold":PRINT"Your gold:";G
532 PRINT"Enter your selection (1-3), or type '0' for no sale:";
533 a$=INKEY$:IF a$=""THEN 533
534 IF a$="1"THEN PRINT a$:IF G>=15 THEN G=G-15:PRINT"You purchase the Drunk's Delight and consume it with gusto.":PRINT"You feel much better!":HP=HP+15:GOTO 320
535 IF a$="1"THEN PRINT a$:PRINT"You don't have enough money.":GOTO 320
536 IF a$="2"THEN PRINT a$:IF G>=30 THEN G=G-30:PRINT"You purchase the Wizard's Potion and consume it quickly.":PRINT"You feel amazing!":HP=HP+30:GOTO 320
537 IF a$="2"THEN PRINT a$:PRINT"You don't have enough money.":GOTO 320
538 GOTO 590
540 IF n<20 THEN PRINT"Don't be silly!":GOTO 320
541 IF L(n)<>L THEN PRINT"There is no response but the empty echo of your own voice.":GOTO 320
542 IF n=20 THEN PRINT"The wolf howls at you!":PRINT"It does not appear to understand the human tongue.":GOTO 320
543 IF n=21 THEN PRINT"The spirit does not respond to you.":GOTO 320
544 IF n=22 THEN PRINT"The hellhound growls at you! He says,'What are you trying to say, KNAVE?!!!'":PRINT"'Leave these woods at once, or I will send YOU to hell!'":GOTO 320
545 IF n=23 THEN PRINT"The village smiles at you.":PRINT"He says,'Hello there! Welcome to Eldor!'":GOTO 320
546 IF n=24 THEN PRINT"Troll Gomar looks at you.":PRINT"He bows to you and says,'Long ago, many eons ago, this forest was alive":PRINT"with the power of Chi. Everything worked in harmony.'":PRINT"'But He has stolen this prosperity and we suffer for it!'"
547 IF n=25 THEN PRINT"The Oracle of Time says,'What do you want to know about time?'":PRINT"'What is time?' you ask.":PRINT"The Oracle replies,'Time has no beginning and no end. It is forever moving, but it also never stops!'":GOTO 320
548 IF n=26 THEN PRINT"The blackwidow twitches at your words!":PRINT"'Leave me be!' it hisses in loud voice.":GOTO 320
549 IF n=27 THEN PRINT"The bard bows. He says,'I am but a wandering bard of the forest. I play music to make the land happy, but lo, it is not happy! I wonder when it will become happy once more?'":GOTO 320
550 IF n=28 THEN PRINT"The priest smiles. 'Welcome to the house of the LORD! God is almighty here, and you can find him for but a gold piece or two!'":GOTO 320
551 IF n=29 THEN PRINT"The Shadow Demon laughs at you!":PRINT"'Fool!' he cackles. 'You are unwelcome here! But...if you insist on staying...DIIIIIEEEEEE, FIEND!'":GOTO 320
552 PRINT"There is no response but the empty echo of your own voice.":GOTO 320
590 IF a$="3"THEN PRINT a$:IF G>=75 THEN G=G-75:PRINT"You purchase the Veteran's Vodka. A FIREBALL erupts in your head!":PRINT"VVVvvvvrrroooommmmmm!":PRINT"You feel SO much better now!":HP=HP+125:GOTO 320
591 IF a$="3"THEN PRINT a$:PRINT"You don't have enough money.":GOTO 320
592 IF a$="0"THEN PRINT a$:PRINT"No sale. Transaction aborted.":GOTO 320
593 GOTO 533
600 PRINT"Your HP:";HP:IF ac=0 THEN ac=2
601 IF n<20 AND n<>30 THEN PRINT"You cannot kill something that isn't":PRINT"alive.":GOTO 320
602 IF n=20 THEN M=120
603 IF n=21 THEN M=210
604 IF n=22 THEN M=250
605 IF n=23 THEN M=80
606 IF n=24 THEN M=500
607 IF n=25 THEN M=600
608 IF n=26 THEN M=400
609 IF n=27 THEN M=180
610 IF n=28 THEN M=50
611 IF n=29 THEN M=800
612 IF L(12)=105 THEN PRINT"You are wielding the gardenspade.":D=6
613 IF L(18)=105 THEN PRINT"You are wielding the dagger.":D=4
614 IF L(19)=105 THEN PRINT"You are wielding the broadsword.":D=18
615 IF W=0 THEN PRINT"You fight with your bare hands.":D=2
616 PRINT"(Damage potential:";D;"% of a full hit)":PRINT:PRINT"You attack:":IF n=29 THEN SD=1
622 RANDOMIZE T:i=INT(RND*32)+1:PRINT">":IF i<5 THEN PRINT"You missed ";N$(n);"."
623 IF i>=5 AND i<=10 THEN PRINT"You hit ";N$(n);".":M=M-D
624 IF i>=11 AND i<=14 THEN PRINT"You hit ";N$(n);" very hard.":F=D*4:M=M-F
625 IF i>=15 AND i<=18 THEN PRINT"You smashed ";N$(n);" with a bone-crushing sound.":F=D*6:M=M-F
626 IF i>=19 AND i<=21 THEN PRINT"You massacred ";N$(n);" into small fragments.":F=D*8:M=M-F
627 IF i=22 OR i=23 THEN IF D=18 THEN PRINT"Your BROADSWORD glows!":PRINT"A bolt of lightning streaks down and hits ";N$(n);"!":F=D*20:M=M-F
628 IF i>23 THEN PRINT"The ";N$(n);" dodged your attack."
629 PRINT">":PRINT"Your HP:";HP:PRINT"The ";N$(n);"'s:";M:S .333:RANDOMIZE T:c=INT(RND*40)+1:IF c<5 THEN PRINT"The ";N$(n);" missed you."
631 IF c>=5 AND c<=10 THEN PRINT"The ";N$(n);" hit you.":HP=HP-c
632 IF c>=11 AND c<=14 THEN PRINT"The ";N$(n);" hit you very hard.":F=c*3:HP=HP-F
633 IF c>=15 AND c<=19 THEN PRINT"The ";N$(n);" smashed you with a bone-crushing sound.":F=c*4:HP=HP-F
634 IF c>=20 AND c<=22 THEN PRINT"The ";N$(n);" massacred you in to small fragments.":F=c*6:HP=HP-F
635 IF n=26 THEN IF c=23 OR c=24 THEN PRINT"The BLACKWIDOW bites you!":PRINT"You feel weaker!":F=c*8:HP=HP-F
636 IF n=22 THEN IF c=23 OR c=24 THEN PRINT"The HELLHOUND breathes fires on you!":PRINT">>>>>>>>>>>>>>>>>>>> F-I-R-E-B-A-L-L":PRINT"You are burnt to a crisp!":F=c*12:HP=HP-F
637 IF n=29 THEN IF c=23 OR c=24 THEN PRINT"The SHADOW DEMON shoots lightning bolts at you!":PRINT">>>>>>>>>>>>>>>>>>>>>>>>> L-I-G-H-T-N-I-N-G":PRINT"You are atomized into nothingness!":F=c*18:HP=HP-F
638 IF n=29 THEN IF c=25 OR c=26 THEN PRINT"The SHADOW DEMON incants his staff!":PRINT"A ghostly arm snatches life-blood from your very veins into his!":PRINT"'HA HA HA HA!' he laughs.":F=c*6:M=M+F:HP=HP-F
639 IF c>=27 THEN PRINT"You dodged the attack."
640 IF M<0 THEN M=0:ELSE IF c>=15 THEN F=ac/i:F=CINT(F):HP=HP+F:PRINT"Your armor absorbed some of the blow."
641 IF HP<0 THEN HP=0
642 IF M=0 THEN PRINT"The ";N$(n);" died.":PRINT"You killed ";N$(n);".":GOTO 900
643 IF HP=0 THEN PRINT"You died.":PRINT"You are now a ghost.":S 2:PRINT"@@@ GAME OVER @@@":S 2:RUN
644 S 1.8:GOTO 612
651 PRINT"HELP COMMAND":PRINT:PRINT"This is a traditional text adventure in the Scott Adams mold, with some":PRINT"MUD-like and AD&D-inspired elements. You type in one or two word commands"
652 PRINT"such as 'GO NORTH' and 'GET SWORD' to instruct your character what to":PRINT"do. The parser also accepts one word commands and abbreviations, such":PRINT"as 'I' for 'INVENTORY' and 'N' for 'NORTH'. At any time you can"
653 PRINT"type 'HELP' at the game prompt to see what commands are available.":PRINT:GOSUB 999:PRINT:PRINT"COMMANDS AVAILABLE":PRINT:PRINT"Here are the present commands available. 'ember, in some instances":PRINT"you can also use abbreviations:":PRINT
655 GOSUB 1000:PRINT"(Some commands may not be implemented)":PRINT:PRINT"If you need further help, you can email me at:lumberjacks76@lycos.com":GOTO 320
701 SI=0:CT=0:W=0:ac=0:FOR X=7 TO 30:IF L(X)=0 THEN SI=1:CT=CT+1:PRINT" ";N$(X)
702 IF L(X)=105 THEN W=1:SI=1:CT=CT+1:PRINT" ";N$(X);" (wielded)"
703 IF L(X)=205 THEN ac=ac+X:SI=1:CT=CT+1:PRINT" ";N$(X);" (worn)"
704 NEXT X:IF SI=1 THEN PRINT"You are carrying";CT;"item(s)."
705 ap=ac*2:IF ac>0 THEN PRINT"Your armor is protecting";ap;"% of your body."
706 F=G*3:PRINT"You carry with you";G;"gold pieces worth";F;"Denari.":IF SI=0 THEN PRINT"Alas, you are empty-handed."
708 GOTO 320
751 ap=ac*2:PRINT"You have earned";E;"experience points.":PRINT"You have";HP;"hit points and";G;"gold coins.":PRINT"You are carrying";CT;"items and your armor":PRINT"is protecting";ap;"% of your body."
752 PRINT"Type 'INVENTORY' to see a list of items presently carried.":GOTO 320
810 OPENOUT"game.sav":PRINT#9,a:PRINT#9,c:PRINT#9,CT:PRINT#9,H:PRINT#9,HP:PRINT#9,i:PRINT#9,L:PRINT#9,LT:PRINT#9,n:PRINT#9,Q:PRINT#9,SI:PRINT#9,v:PRINT#9,X:PRINT#9,Y:PRINT#9,Z:PRINT#9,ac:PRINT#9,W:PRINT#9,ap:PRINT#9,G:PRINT#9,E:FOR X=1 TO 30:PRINT#9,L(X)
813 NEXT X:CLOSEOUT:PRINT"Game saved as file 'GAME.SAV'.":GOTO 320
850 PRINT"Thanks for playing!":PRINT:PRINT"You finished with";CT;"items carried,";HP;"hit points and";G;"gold coins.":PRINT:GOSUB 999:END
900 PRINT"You gained";c;"gold coins and";i;"experience points.":E=E+i:G=G+c:F=CINT(HP*1.2):HP=HP+F:GOSUB 970:IF i>15 THEN PRINT"You gained a level!":F=CINT(HP*1.8):HP=HP+F:GOSUB 970
901 L(n)=998:M=0:GOTO 320
950 PRINT"The crumbled body of the SHADOW DEMON lay at your field, bathed":PRINT"in blood. No more will the evil of this creature haunt the":PRINT"people of Eldor. As the sun rises on a new day,"
951 PRINT"you lay your sword at your feet, tired of the bloodshed.":PRINT"Taking one long, last look, you turn and walk away for good.":PRINT"For you are the savior of Eldor, and now they need a king!":PRINT:PRINT"@@@ THE END @@@"
953 a$=INKEY$:IF a$=""THEN 953
954 END
960 IF a$="n"OR a$="north"OR a$="go north"THEN n=1
961 IF a$="s"OR a$="south"OR a$="go south"THEN n=2
962 IF a$="e"OR a$="east"OR a$="go east"THEN n=3
963 IF a$="w"OR a$="west"OR a$="go west"THEN n=4
964 IF a$="u"OR a$="up"OR a$="go up"THEN n=5
965 IF a$="d"OR a$="down"OR a$="go down"THEN n=6
966 RETURN
970 IF HP>=1000 THEN HP=1000
971 RETURN
980 IF L(10)<>0 AND L(10)<>L THEN PRINT"The backpack isn't here. You must use the backpack.":GOTO 320
981 IF L(n)<>0 AND L(n)<>L THEN PRINT"That isn't here to place inside.":GOTO 320
982 IF n>19 AND n<>30 OR n<7 THEN PRINT"Don't be silly!":GOTO 320
983 L(n)=305:CT=CT-1:PRINT"Ok.":GOTO 320
990 SI=0:FOR X=7 TO 30:IF L(X)=305 THEN PRINT" ";N$(X);".":SI=1
991 NEXT:IF SI=0 THEN PRINT"Nothing!"
992 RETURN
995 IF LEFT$(H0$,1)="A"THEN PRINT"You are standing ";:GOTO 998 ELSE IF LEFT$(H0$,1)="I"THEN PRINT"You are ";:GOTO 998
996 IF LEFT$(H0$,1)="V"THEN PRINT"You are inside a ";:GOTO 998
997 IF LEFT$(H0$,1)="W"THEN PRINT"You are walking ";
998 PRINT MID$(H0$,2,LEN(H0$)-1):RETURN
999 PRINT"@@@ Press any key to continue @@@":CALL &BB18:RETURN
1000 PRINT"1. go 2. get 3. drop 4. wield 5. unwield 6. wear 7. remove 8. use":PRINT"9. light 10. examine 11. read 12. buy 13. sell 14. list 15. menu":PRINT"16. talk to 17. score 18. inventory 19. kill 20. save":RETURN