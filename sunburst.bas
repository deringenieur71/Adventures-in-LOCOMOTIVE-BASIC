1 MODE 1:INK 0,26:BORDER 26:INK 1,0:WINDOW 1,39,3,23
2 PRINT"              Welcome to"
3 PRINT"              Att Scoddams"
4 PRINT"     Sophisticated Basic Adventure:"
5 PRINT"         Sunburst Contamination":GOSUB 551:a$="               "
6 PRINT:PRINT a$;"Instructions"
8 PRINT a$;"Start game."
9 PRINT a$;"Reset computer."
10 a$=INKEY$:IF a$=""THEN 10
11 IF a$="i"THEN 16
13 IF a$="s"THEN 31
14 IF a$="r"THEN PRINT" As good as reset...":CALL 0
15 GOTO 10
16 REM instructions
17 PRINT"You are George Raft, an employee at a"
18 PRINT" small space trading company on earth."
19 PRINT"       You have borrowed a small"
20 PRINT "   trading space craft to visit your"
21 PRINT"   girlfriend on Geeron in the Geisti"
22 PRINT" system. The weekend has now come to an"
23 PRINT"   end, and it's time for you to get"
24 PRINT"          back to earth again."
25 GOSUB 610
26 PRINT"    Your loan of the ship is quite"
27 PRINT" inofficial, and you know that if you"
28 PRINT"   don't get it back in time, your"
29 PRINT"       employment is history."
30 GOSUB 610:CLS
31 PRINT"Sunburst contamination."
32 PRINT"Copyright Att Scoddams 1982.":PRINT"Adapted to CPC by SRS 2020"
33 GOSUB 37:REM show room
34 IF RND<0.05 THEN GOSUB 408
35 GOSUB 43:REM parser
36 GOTO 60
37 GOSUB 613:IF p=25 AND (p(1)<>-1 AND p(1)<>p)THEN RETURN
38 f=0:FOR i=1 TO af
39 IF p(i)<>p OR d(i)THEN 42
40 IF f=0 THEN f=1:PRINT"You see:"
41 PRINT"  "f$(i)
42 NEXT i:RETURN
43 mo=1
44 PRINT"><";:in$="":REM parser
45 a$=INKEY$:IF a$=CHR$(13)THEN PRINT" ";:GOTO 52
46 IF(a$>="a" AND a$<="z")OR(a$>="0"AND a$<="9")OR a$=" "AND LEN(a$)<39 THEN 49
47 IF a$=CHR$(20)AND LEN(in$)THEN PRINT a$;:in$=LEFT$(in$,LEN(in$)-1):GOTO 45
48 GOTO 45
49 IF in$=""AND a$=" "THEN 45
50 IF RIGHT$(in$,1)=a$ AND a$=" "THEN 45
51 PRINT a$;"<";:in$=in$+a$:GOTO 45
52 IF RIGHT$(in$,1)=" "THEN in$=LEFT$(in$,LEN(in$)-1):PRINT"";
53 v$="":s$=v$:n$=s$:PRINT".":REM tolk
54 IF mo AND in$=""THEN PRINT"Avoiding conversation accomplishes      nothing!":GOTO 44
55 mo=0
56 FOR i=1 TO LEN(in$):IF MID$(in$,i,1)>" "THEN NEXT:GOTO 58
57 v1$=LEFT$(in$,i-1):n1$=MID$(in$,i+1):v$=LEFT$(v1$,3):n$=LEFT$(n1$,3):RETURN
58 s1$=in$:s$=LEFT$(in$,3):v1$=s1$:v$=s$:RETURN
59 END
60 REM ** ** ** ** ** ** ** ** ** **
61 REM *** *** *** *** *** *** ***
62 REM **** **** **** **** **** ****
63 REM   main
64 GOSUB 547:IF w THEN 277
65 IF v$="go" OR v$="wal" OR v$="run"THEN 282
66 IF v$="loo" OR v$="l"THEN 87
67 IF v$="exa" OR v$="rea"THEN 90
68 IF v$="kil" OR v$="bre" OR v$="cut" OR v$="str" OR v$="des" OR v$="hit"THEN 122
69 IF v$="i" OR v$="inv"THEN 124
70 IF v$="tak" OR v$="get"THEN 128
71 IF v$="dro"THEN 147
72 IF v$="q" OR v$="qui"THEN 175
73 IF v$="ope"THEN 296
74 IF v$="tal" OR v$="say"THEN 185
75 IF v$="clo" OR v$="shu"THEN 331
76 IF v$="con" OR v$="att"THEN 194
77 IF v$="giv" OR v$="han"THEN 220
78 IF v$="pus" OR v$="pre" OR v$="mov" OR v$="rem" OR v$="pul"THEN 229
79 IF v$="tur"THEN 248
80 IF v$="typ"THEN 258
81 IF v$="fuc"OR n$="dic"OR n$="coc"THEN 418
82 IF v$="put" OR v$="ins"THEN 267
83 IF v$="men" OR v$="sav" OR v$="loa"THEN 533
84 PRINT"I don't understand!":GOTO 34
85 IF n$=""THEN PRINT"Now really, shouldn't there be a noun inthat sentence?":GOTO 34
86 PRINT"What in space do you mean by ";n1$;"?":GOTO 34
87 REM look
88 IF v$<>s$THEN 90
89 v(p)=0:GOTO 33
90 REM examine
91 IF n$=""THEN PRINT"You'd better tell me what to examine    first!":GOTO 34
92 GOSUB 160:IF((n$="pan"OR f=107)AND p=6)OR(p=15 AND n$="pan")THEN 753
93 IF f=0 THEN 85
94 IF f>99 THEN 96
95 IF p(f)<>-1 AND p(f)<>pthen 376
96 IF f=100 AND p=3 THEN 388
97 IF f=101 AND(p=12 OR p=26 OR p=25 OR p=28 OR p=7 OR p=27)THEN 390
98 IF f=101 AND p>3 AND p<6 THEN PRINT"There's a microphone next to it.":GOTO 34
99 IF f=102 AND p>1 THEN PRINT"He isn't around here.":GOTO 34
100 IF f=102 AND kd=0 THEN PRINT"He really looks like a tough bloke!":GOTO 34
101 IF f=102 THEN PRINT"He's happy as a child with a new toy!":GOTO 34
102 IF f=2 AND ka=0 THEN PRINT"The flashlight is currently off.":GOTO 34
103 IF f=2 THEN PRINT"The flashlight is providing light.":GOTO 34
104 IF f=4 THEN 393
105 IF f=3 THEN 397
106 IF p=4 AND f=103 THEN PRINT"The craft is covered by heatresistant   tiles.":GOTO 34
107 IF p=4 AND f=104 THEN PRINT"One plate seems to be a bit loose.":GOTO 34
108 IF f=1 THEN PRINT"It seems to be somewhat flourescent.":GOTO 34
109 IF(f=105 OR f=106)AND(p<>9 OR k4)THEN 376
110 IF f=105 THEN PRINT"It has a switch on top of it.":GOTO 34
111 IF f=106 THEN PRINT"The switch is set to 'off'.":GOTO 34
112 IF(f=107 OR f=108)AND p<>19 THEN 376
113 IF f=107 THEN PRINT"The console is dominated by a sturdy    lever.":GOTO 34
114 IF f=108 THEN 419
115 IF f=20 THEN 443
116 IF f=22 THEN PRINT"It's the brand new docking computer     ($10.000.000).":GOTO 34
117 IF f=21 THEN 475
118 GOTO 390
119 PRINT"In the middle of the control panel,     there is a small, ";
120 PRINT"insignificant button.":GOTO 34
121 GOTO 390
122 REM brutalo
123 PRINT"Violence will probably only get you intodeep trouble.":GOTO 34
124 REM inventory
125 f=0:PRINT"You are carrying:":FOR i=1 TO af:IF p(i)=-1 THEN PRINT"  ";f$(i):f=1
126 NEXT:IF f=0 THEN PRINT"No tea"
127 GOTO 34
128 REM take
129 IF p=25 AND p(1)<>-1 AND p(1)<>p THEN PRINT"I can't see a thing!":GOTO 34
130 IF n$="all"THEN 142
131 GOSUB 160:IF f=0 THEN 85
132 IF f>99 OR f=22 THEN PRINT"Let's be serious, shall we?":GOTO 34
133 IF p(f)=-1 THEN PRINT"Do you really think you need another":PRINT n1$;"?":GOTO 34
134 IF p(f)<>p THEN PRINT"I can't see any ";n1$;" here, can you?":GOTO 34
135 IF RND<0.02 THEN PRINT"Why should I take orders from you?":GOTO 34
136 IF kc>5 THEN PRINT"Hey, cool out. You aint no superman!":GOTO 34
137 GOSUB 751
138 IF f=17 AND p(18)+p(19)=-2 THEN 34
139 IF f=17 AND(p(18)=-1 OR p(19)=-1)THEN 437
140 IF f=17 THEN PRINT"The snow is all too cold. It burns your hands away.":GOTO 178
141 GOTO 34
142 f=0:FOR i=1 TO af-1:IF p(i)<>p OR d(i)=1 OR i=17 THEN 145 
143 IF kc>5 THEN 136
144 kc=kc+1:printf$(i)" - Taken.":p(i)=-1:f=1
145 NEXT:IF f=0 THEN PRINT"There is nothing to take!"
146 GOTO 34
147 REM drop
148 IF n$="all"THEN 156
149 IF n$=""THEN PRINT"No tea - Dropped.":GOTO 34
150 GOSUB 160:IF f=0 THEN 85
151 IF f>99 THEN 153
152 IF p(f)=-1 THEN 154
153 PRINT"You don't seem to have the "n1$".":GOTO 34
154 kc=kc-1:PRINT f$(f)" - dropped.":p(f)=p:IF f<18 OR f>19 OR p(17)<>-1 GOTO 34
155 GOTO 437
156 IF kc=0 THEN n$="":GOTO 147
157 fori=1 toaf:IF p(i)<>-1 THEN 159
158 PRINT f$(i);" - dropped.":p(i)=p:kc=kc-1
159 NEXT:GOTO 34
160 REM test noun
161 f=(1 AND n$="sta")+(2 AND(n$="fla" OR n$="lig"))
162 f=f+(3 AND n$="gam")+(4 AND(n$="wri"OR n$="wat"OR n$="laz"OR n$="sup"))
163 f=f+(5 AND n$="pla")+(6 AND n$="red")+(7 AND n$="ora")+(8 AND n$="yel")
164 f=f+(9 AND n$="gre")+(10 AND n$="blu")+(11 AND n$="ind")+(12 AND n$="vio")
165 f=f+(13 AND n$="tun")+(14 AND n$="amp")+(15 AND n$="lef")+(16 AND n$="rig")
166 f=f+(17 AND n$="sno")+(18 AND n$="mit")+(19 AND n$="glo")+(20 AND n$="rem")
167 f=f+(21 AND(n$="nov"OR n$="boo"))+(22 AND n$="box")
168 f=f+(100 AND n$="ben")+(101 AND n$="hat")+(102 AND n$="gua")
169 f=f+(103 AND(n$="spa"OR n$="cra"))+(104 AND n$="til")+(105 AND n$="rob")
170 f=f+(106 AND n$="swi")+(107 AND n$="con")+(108 AND n$="lev")
171 f=f+(109 AND n$="hig")+(110 AND n$="low")+(111 AND n$="twi")
172 f=f+(112 AND n$="str")+(113 AND n$="cir")+(114 AND(n$="sma"OR n$="ins"))
173 IF f>99 THEN RETURN
174 pr=(1 AND(p(f)=-1 OR p(f)=p)):RETURN
175 REM quit
176 PRINT"Are you really sure? ";:GOSUB 44:IF LEFT$(v$,1)="y"THEN 180
177 PRINT"Thought so...":GOTO 34
178 REM dead
179 PRINT" The game seems to have come to an end."
180 REM
181 PRINT"   Press return to play again!":GOSUB 611:RUN
182 GOSUB 610:PRINT"You haven't got a chance to get the     ship back ";
183 PRINT"into shape again. You get     fired when you come back to earth."
184 GOTO 178
185 REM talk
186 IF n$=""THEN PRINT"Talking to yourself, eh?":GOTO 34
187 IF n$="gua"AND p=1 THEN 192
188 IF n$<>"hat" AND n$<>"mic"THEN PRINT"Okay, you two have a nice little chat.":GOTO 34
189 IF p<4 OR p>5 THEN PRINT"You and the hatch get along pretty well.";:GOTO 34
190 IF k0=0 THEN k0=1:GOTO 382
191 k0=0:PRINT"With a discreet sound the hatch swings  shut.":GOTO 34
192 IF kd=0 THEN 383
193 PRINT"The guard doesn't notice you.":GOTO 34
194 REM connect
195 IF n$=""THEN PRINT"You have to tell me what to connect     first!":GOTO 34
196 GOSUB 160:IF f=0 THEN 85
197 IF pr=0 THEN  PRINT"I can't see it around here!":GOTO 34
198 IF f>12 AND f<17 THEN 206
199 IF f<>3 AND f<>4 THEN  PRINT"It can't be connected!":GOTO 34
200 PRINT"To what?";:GOSUB 44:IF v$=""THEN 200
201 PRINT:f0=f:n$=v$:GOSUB 160:IF f=f0 THEN PRINT"It can't be connected to itself!":GOTO 34
202 IF pr=0 THEN PRINT"I can't see it around here!":GOTO 34
203 IF f<>3 AND f<>4 THEN PRINT"It's useless effort.":GOTO 34
204 PRINT"You make the connection, and after a    second, when the game is fully ";
205 PRINT"restored,you disconnect them again.":ke=1:GOTO 34
206 f0=f:PRINT"To what ?";:GOSUB 44:IF v$=""THEN 206
207 n$=v$:GOSUB 160:IF f=f0 THEN PRINT"It can't be connected to itself!":GOTO 34
208 IF pr=0 THEN PRINT"I can't see it around here!":GOTO 34
209 IF f0>f THEN i=f:f=f0:f0=i
210 IF f<>14 AND f0<>14 THEN 199
211 IF f0=13 THEN f=1:GOTO 215
212 IF f=16 THEN f=2:GOTO 215
213 IF f=15 THEN f=4:GOTO 215
214 GOTO 199
215 PRINT"You make the connection.";:kh=kh OR f:IF kh<7 THEN  PRINT:GOTO 34
216 PRINT"The stereo comesto life with a bang. You hear some      beautiful ";
217 PRINT"Bach from the left":PRINT"loudspeaker, but something more like "
218 PRINT"speed-metal from the right one. As      suddenly as it ";
219 PRINT"woke up, the stereo goes silent.":GOTO 34
220 REM give
221 IF p<>1 THEN  PRINT"There's noone around!":GOTO 34
222 IF n$<>"gam"THEN  PRINT"He doesn't want it!":GOTO 34
223 IF p(3)<>-1 THEN  PRINT"You haven't got it!":GOTO 34
224 IF ke=0 THEN  PRINT"The guard looks at the game and yawns.":GOTO 34
225 PRINT"He grabs it and examines it closely.    'What's this', he says.";
226 PRINT" He sits down on the ground and starts playing wildly.   His mind ";
227 PRINT"starts to explore the world of Donkey Kong,instead of doing his duty."
228 kd=1:p(3)=-2:GOTO 34
229 REM push
230 IF v$=s$THEN 85
231 GOSUB 160:IF f=0 THEN 376
232 IF f>108 AND f<114 andp(20)<>-1 THEN PRINT"You don't have the remote control.":GOTO 34
233 IF f>108 THEN 239
234 IF f=22 AND pr=1 THEN PRINT"It's too big to be pushed around.":GOTO 34
235 IF f=5 AND p=4 THEN 402
236 IF f=108 AND p=19 THEN 422
237 IF f=106 AND p=9 AND k4=0 THEN 424
238 GOTO 247
239 IF f=114 THEN 484
240 IF p<>7 OR kj THEN PRINT"You press the button, but nothing seems to happen.":GOTO 34
241 IF kg=0 THEN 501
242 IF f=113 THEN 445
243 IF f=109 THEN 451
244 IF f=110 THEN 457
245 IF f=111 THEN 459
246 IF f=112 THEN 467
247 PRINT"Moving it around has no effect.":GOTO 34
248 REM turn
249 IF n$=""THEN PRINT"Shouldn't you add what you want to turn?";:GOTO 34
250 IF n$="swi"AND p=9 AND k4=0 THEN 424
251 IF n$<>"pag"THEN PRINT"What's the use of turning that?":GOTO 34
252 IF p(21)<>-1 THEN PRINT"You don't seem to have the novel.":GOTO 34
253 IF kf=0 THEN 255
254 PRINT"There's nothing of interest on the otherpages.":GOTO 34
255 PRINT"You turn to page two in the novel. In   the upper left corner there";
256 kf$="e%":kf=1
257 PRINT" is some     handwriting: ";kf$:GOTO 34
258 REM type
259 IF p<>20 THEN PRINT"There is nothing you can type on here.":GOTO 34
260 IF k8=1 THEN PRINT"You don't need to open the door now:":GOTO 377
261 IF n$=""THEN 265
262 IF n1$<>kf$ THEN PRINT"Nothing happens.":GOTO 34
263 PRINT"The keypad turns silent for a moment,   then the door goes up ";
264 PRINT"with a mighty     roar.":k8=1:GOTO 34
265 PRINT"Enter codenumber: ";:GOSUB 44:IF v$=""THEN 265
266 n1$=v1$:GOTO 262
267 REM put
268 GOSUB 160:IF f=0 THEN 85
269 IF p(f)<>-1 THEN PRINT"You haven't got it!":GOTO 34
270 PRINT" Where (i.e. in hole.) ?";:GOSUB 44:IF v$<>"in"THEN PRINT"Useless!":GOTO 34
271 IF f<>17 THEN PRINT"Why would I ever do that?":GOTO 34
272 IF p<>17 THEN PRINT"Not here!":GOTO 34
273 IF n$="hol"THEN 438
274 IF n$<>"ove"THEN PRINT"I don't get where to put it!":GOTO 34
275 IF k7=0 THEN PRINT"It's closed!":GOTO 34
276 PRINT"Okay, you put it in the oven.":p(17)=100:kc=kc-1:GOTO 34
277 REM *** walk0
278 g=0:FOR i=1 TO LEN(u$(p))-2 STEP 3:IF ASC(MID$(u$(p),i))=ASC(MID$(ri$,w))THEN 280
279 NEXT:PRINT"How can I go in that direction?":GOTO 34
280 GOSUB 285:IF f=1 THEN 34
281 p=VAL(MID$(u$(p),i+1,3)):GOTO 33
282 REM *** walk
283 s$=n$:GOSUB 547:IF w THEN 277
284 PRINT"You just can't go there, that's all!":GOTO 34
285 REM walk check
286 IF w=4 AND p=17 THEN 368
287 f=0:IF w>2 AND w<5 OR(w=1 AND p>1)OR(w=2 AND p<>15 AND p<>20 AND p<>9)THEN RETURN
288 f=1:IF w=1 AND kd=0 THEN 358
289 IF w=1 THEN f=0:GOTO 362
290 IF(((p=4 AND w>2)OR(p=5 AND w>5)) AND k0=0)OR(p=7 AND k3=0 AND(w=6 OR w=8))THEN 365
291 IF(((p=12 AND w>4)OR(p=26 AND w>2)) AND k5=0)OR(p=28 AND w>5 AND kb=0)THEN 365
292 IF w=2 AND p=15 AND k6=0 THEN 366
293 IF w=2 AND p=9 AND k4=0 THEN 370
294 IF w=2 AND p=20 AND k8=0 THEN 367
295 f=0:RETURN
296 REM open
297 IF n$=""THEN PRINT"You try to open thin air, but don't     succeed!":GOTO 34
298 IF n$="gat"THEN PRINT"It's open, but there's a guard at it.":GOTO 34
299 IF n$<>"hat"THEN 306
300 IF p=12 OR p=26 THEN f1=k5:k5=1:f=1:GOTO 371
301 IF p=25 OR p=28 THEN f1=kb:kb=1:f=1:GOTO 371
302 IF p=7 AND kj=0 AND (kl=0 OR k1)THEN 474
303 IF p=7 THEN f1=k3:k3=1:f=1:GOTO 371
304 IF p=4 OR p=5 THEN 375
305 GOTO 374
306 IF n$<>"doo"THEN 310
307 IF p=20 THEN PRINT"Use the keypad!":GOTO 34
308 IF p=23 THEN PRINT"The door is already open!":GOTO 34
309 GOTO 376
310 IF n$<>"ove" AND n$<>"mic"then315
311 IF p<>17 THEN 376
312 IF k7=1 THEN 377
313 k7=1:IF p(p)=101 THEN p(p)=0:p(11)=p:GOTO 442
314 GOTO 378
315 IF n$<>"pan"THEN 319
316 IF p<>15 THEN 376
317 IF k6=1 THEN 377
318 k6=1:GOTO 379
319 IF n$<>"cup"THEN 324
320 IF p<>23 THEN 376
321 IF k9=1 THEN 377
322 k9=1:IF p(9)=0 THEN p(9)=23:GOTO 406
323 GOTO 378
324 IF kh<>7 AND n$="rig" OR n$="lef"THEN PRINT"You'd probably just ruin it!":GOTO 34
325 IF n$="lef"THEN PRINT"Why, that speaker sounded great!":GOTO 34
326 IF n$<>"rig"THEN PRINT"How can you open a "n1$"?":GOTO 34
327 PRINT"You open the speaker, and a violett package falls out."
328 p(12)=p:PRINT"A cleaning robot enters the room, gets  the pieces of the ";
329 IF p(16)=-1 THEN kc=kc-1
330 PRINT"broken loudspeaker,   and disappears, idly whistling.":p(16)=0:GOTO 34
331 REM close
332 IF n$=""THEN PRINT"You'll have to tell me what to close!":GOTO 34
333 IF n$<>"hat"THEN 339
334 IF p=12 OR p=26 THEN f1=k5:k5=0:f=0:GOTO 384
335 IF p=28 THEN f1=kb:kb=0:f=0:GOTO 384
336 IF p=27 OR p=25 THEN 387
337 IF p=4 OR p=5 THEN 375
338 GOTO 374
339 IF n$<>"doo"THEN 344
340 IF p=20 AND k8=0 THEN 385
341 IF p=20 THEN k8=0:GOTO 386
342 IF p=23 THEN PRINT"You don't know how to close it from the inside!":GOTO 34
343 GOTO 376
344 IF n$<>"ove" AND n$<>"mic"THEN 349
345 IF p<>17 THEN 376
346 IF k7=0 THEN 385  
347 IF p(17)=100 THEN p(17)=101:k7=0:GOTO 440
348 k7=0:GOTO 386
349 IF n$<>"pan"THEN 353
350 IF p<>15 THEN 376
351 IF k6=0 THEN 385
352 k6=0:GOTO 386
353 IF n$<>"cup"THEN PRINT"How can you close a ";n1$;"?":GOTO 34
354 IF p<>23 THEN 376
355 IF k9=0 THEN 385
356 k9=0:GOTO 386
357 END
358 PRINT"The guard blocks your path. 'I have beenordered not to let anyone ";
359 PRINT"pass. The areahas been invaded by slimetoads. We can'trisk ";
360 PRINT"having them spread out all over thegalaxy. You'll have to wait ";
361 PRINT"for at leasta week!'.":GOTO 476
362 kd=kd+1:IF kd>2 THEN RETURN
363 PRINT"The guard doesn't seem to notice your   trespassing, he has just ";
364 PRINT"killed his     first Donkey Kong.":RETURN
365 PRINT"You just bump into a closed hatch!":RETURN
366 PRINT"How can I go in that direction?":RETURN
367 PRINT"The door is securely locked.":RETURN
368 PRINT"Oooops! That hole seems to have been a  garbage disposer. ";
369 PRINT"You are fastly choppedto death of razor-sharp blades...":GOTO 178
370 PRINT"The little robot blocks the narrow      passage.":RETURN
371 IF f<>f1 THEN 373
372 PRINT"This kind of hatch cannont be re-opened when it is already open.":GOTO 34
373 PRINT"O.K. The hatch is now open.":GOTO 34
374 PRINT"If there is a hatch to be seen, I must  be blind!":GOTO 34
375 PRINT"The hatch hasn't got a handle on it.":GOTO 34
376 PRINT"What "n1$" are you refering to?":GOTO 34
377 PRINT"It's open already.":GOTO 34
378 PRINT"O.K. It's open alright!":GOTO 34
379 PRINT"The panel slides aside and reveals a    small room in the ";
380 PRINT"southern wall. It is  obviously only known by the inner circleof ";
381 PRINT"the Electricians.":GOTO 34
382 PRINT"The hatch swings open with a silent     whistle.":GOTO 34
383 PRINT"'There is no use trying to talk your wayin.', the guard replies.":GOTO 34
384 IF f<>f1 THEN 386
385 PRINT"It's pretty closed already.":GOTO 34
386 PRINT"O.K. It's closed now.":GOTO 34
387 PRINT"It can't be closed from this side.":GOTO 34
388 IF p(3)<>3 AND p(3)<>0 THEN 390
389 p(3)=3:PRINT"Lying on one of the benches is a Game & Watch-game.":GOTO 34
390 IF RND(ti)<0.5 THEN 392
391 PRINT"There's nothing special about the ";n1$;".":GOTO 34
392 PRINT"It's just an ordinary ";n1$;".":GOTO 34
393 PRINT"It's a brand new Giga watch, with radar,sonar, thermometer, ";
394 PRINT"earth's current     distance to the sun, saturn and 12 other";
395 PRINT"selectable planets, seismograph, radio, tv-set, video, ";
396 PRINT"3V power output, and it  even shows time.":GOTO 34
397 PRINT"The Game & Watch-game is 'Donkey Kong   and the vampire penguins'. ";
398 PRINT"There's a    small hole in the side, with the text   '3V DC'. ";
399 IF ke THEN 401
400 PRINT"The game is slow and boring.":GOTO 34
401 PRINT"The game is fast as light, and offers a thrilling experience.":GOTO 34
402 IF p(6)THEN PRINT"You push it, but nothing happens.":GOTO 34
403 PRINT"You push the loose plate, and it pops   out, revealing a red ";
404 PRINT"package, that fallsto the ground. The plate closes"
405 p(6)=4:PRINT"immediately.":GOTO 34
406 PRINT"As you open the cupboard, a green       package falls out and ";
407 PRINT"hits the floor.":GOTO 34
408 i=INT(RND*5):IF p<5 OR(p>24 AND p<>27)THEN RETURN
409 PRINT:ON i+1 GOTO 410,412,414,415,416
410 PRINT"You think you see something blue on the floor beside you, ";
411 PRINT"but when you turn to  look, there's nothing there.":RETURN
412 PRINT"You hear the sound of a mud ball fallingto the floor behind you, ";
413 PRINT"but as you turnaround, you see nothing of interest.":RETURN
414 PRINT"Something blue just scurried by behind agrating in the air shaft.":RETURN
415 PRINT"You hear a hatch open and close         somewhere in the ship.":RETURN
416 PRINT"Suddenly, there's a thud, as if         something just fell to ";
417 PRINT"the floor in     another part of the craft.":RETURN
418 PRINT"Sorry, you're in the wrong game for thatkind of language!":GOTO 34
419 PRINT"The lever has two positions, marked     'INT' and 'EXT'.";
420 PRINT" It is currently set to '";:IF kg=0 THEN PRINT"EXT'.":GOTO 34
421 PRINT"INT'.":GOTO 34
422 PRINT"You move the lever to '";:kg=(1 AND kg=0):IF kg THEN  PRINT"INT'.":GOTO 34
423 PRINT"EXT'.":GOTO 34
424 PRINT"You turn on the robot's transportation  mechanism.";
425 IF kg THEN 435
426 PRINT" For a start, the robot emittsa cloud of sparkles. Then it's ";
427 PRINT"small    wheels enter hyperspace  with a loud    shriek and a ";
428 PRINT"heavy smoke of burning     rubber. After a second or so, the wheels";
429 PRINT"get a grip, and the robot flashes up thecorridor leaving ";
430 PRINT"a trail of smoke":PRINT"behind, due to heavy overload. The      journey ";
431 PRINT"comes to an end as the robot    reaches the fore end of the ship ";
432 PRINT"at     about 90 m.p.h. You stand still and     watch the robot shaped ";
433 PRINT"hole in the wall of the ship, as you hear a slowly "
434 PRINT"decaying whirring sound from the runway outside...":GOTO 182
435 PRINT"With a faint buzz, the robot  rolls away to the hatch, ";
436 PRINT"goes down, and disappears.":k4=1:GOTO 34
437 PRINT"The snow is a bit too cold. It destroys your hands.":GOTO 178
438 PRINT"As you put your hands in the hole, they are instantly chopped off."
439 GOTO 178
440 PRINT"As you close the oven, a low sound is   heard, and some water ";
441 PRINT"forms a stream outof the oven and down to the floor.":GOTO 34
442 PRINT"An indigo package falls out!":GOTO 34
443 PRINT"It is a small circular plate with five  dif ferent buttons; One high, ";
444 PRINT"one low,   one twisted, one straight, and one      circular.":GOTO 34
445 IF km=0 THEN 468
446 PRINT"A loud 'Click' is heard from the crane.":ki=(1 AND ki=0)
447 IF ki OR k1 OR kl=0 THEN 34
448 PRINT"The large box falls to the floor with anenormous power.";
449 IF k2 THEN PRINT:GOTO 182
450 PRINT"Sadly enough, you were   under it...":GOTO 178
451 IF k1=0 THEN 468
452 k1=0:PRINT"With a whirring sound the crane rises tothe ceiling.";
453 IF kl=0 THEN PRINT:GOTO 34
454 PRINT" The box hangs under it.":IF kithen 34
455 PRINT"Suddenly, it drops to the floor, and ":IF k2 THEN PRINT"through it.":GOTO 182
456 PRINT"that's where you are.":GOTO 178
457 IF k1 THEN 468
458 k1=1:PRINT"The crane slowly descends to the floor.":GOTO 471
459 IF k1 THEN 468
460 k2=(1 AND k2=0):PRINT"The crane moves to its ";:IF k2 THEN PRINT"eastern";:GOTO 462
461 PRINT"western";
462 PRINT" position.";:GOTO 34
463 km=(1 AND km=0):PRINT"The crane's claws ";:IF km THEN PRINT"close.":GOTO 465
464 PRINT"open.":IF kl AND k1=0 THEN 448
465 IF km=0 OR k1=0 OR k2 THEN 469
466 PRINT"The box is now held in a firm grip.":kl=1:GOTO 34
467 IF ki=0 THEN 463
468 PRINT"A buzz is heard from the crane, but     nothing happens.":GOTO 34
469 IF kl=1 THEN PRINT"It releases the box.":kl=0
470 GOTO 34
471 IF k2=0 OR kl=0 THEN 34
472 PRINT"The box lands, and then the crane goes  absolutely silent.":kj=1:GOTO 34
473 IF ki THEN THEN 469
474 PRINT"The box stands right on the hatch.":GOTO 34
475 PRINT"The first page says:'Johnny Tough meets the killer joysticks'.":GOTO 34
476 kn=kn+1:IF kn>1 THEN RETURN
477 PRINT"You just remeber that slimetoads live onpaste, and that every ";
478 PRINT"member of the crewof your ship, 'Sunburst', have been"
479 PRINT"given an emergency package of food,     containing spaghetti. ";
480 PRINT"You don't know howmany packages there are, but you do know";
481 PRINT"that one single package would be enough for a slimetoad ";
482 PRINT"to grow to unwanted     dimensions. However, if they don't get"
483 PRINT"any paste, they will die before you     reach earth.":RETURN
484 IF p<>6 THEN PRINT"Where is it?":GOTO 34
485 PRINT"You press the small, insignificant      button, and the craft ";
486 PRINT"is launched...":IF kg=0 THEN 493
487 IF k0+k5<>0 THEN 497
488 IF kb THEN 499
489 FOR i=6 TO 12:IF p(i)=6 OR p(i)=-1 THEN NEXT:GOTO 506
490 PRINT"When you have almost reached your home  planet, you hear a ";
491 PRINT"gasp behind you. As  you turn around,a huge blue toad attacksyou..."
492 GOTO 178
493 PRINT"After just 200 meters, the ship stops,  and falls to the ground.";
494 PRINT"Remember to     engage the internal powersupply next    time,";
495 PRINT" so that you wont have any"
496 PRINT"connections to the harbor when you      leave.":GOTO 182
497 PRINT"When you leave the atmosphere, the air  leaves the ship, and you ";
498 PRINT"die. How about trying to keep the air inside the craft next time?":GOTO 178
499 PRINT"After a while, the fuel tank explodes,  and sends your remains ";
500 PRINT "to Earth, Venus, Andromeda, and a lot of other places.":GOTO 178
501 PRINT"The crane stops all activity for a      moment. Then it begins ";
502 PRINT"to rotate. First slowly, but instantly increasing the    speed. ";
503 PRINT"After 10 seconds or so, it gets  loose, and flies like a ";
504 PRINT"helicopter      through the room. Finally, it hits you, and parts ";
505 PRINT"your body from your legs.":GOTO 178
506 PRINT"You successfully return to earth, where noone have noticed your ";
507 PRINT"loan of the     ship...":GOSUB 610
508 PRINT"       Congratulations!"
509 PRINT"      You have completed the game!"
510 GOSUB 610:PRINT"":GOTO 181
511 REM load
512 REM
513 REM
514 REM
515 REM 
516 REM 
517 GOTO 34
518 REM save
519 REM
520 REM
521 REM
522 REM 
523 REM 
524 REM 
525 GOTO 34
526 REM dir
527 REM 
528 REM 
529 REM 
530 REM
531 REM 
532 PRINT"":GOSUB 610:PRINT"":GOTO 34
533 REM menu
534 REM 
535 REM 
536 REM 
537 REM
538 REM
539 REM
540 REM
541 REM
542 REM
543 REM
544 REM
545 GOTO 34
546 REM save
547 w=(1 AND(s$="n" OR s$="nor"))+(2 AND(s$="s"OR s$="sou"))
548 w=w+(3 AND(s$="e"OR s$="eas"))+(4 AND(s$="w"OR s$="wes"))
549 w=w+(5 AND(s$="u"OR s$="up"))+(6 AND(s$="d"OR s$="dow"))
550 w=w+(7 AND(s$="o"OR s$="out"))+(8 AND s$="in"):RETURN
551 REM * init *
552 DIM r$(30),u$(30),v(30),f$(50),p(50),d(50)
553 ri$="nsewudoi":ar=1:af=1:p=1:kc=1:k1=1:k2=1
554 READ r$(ar),u$(ar):IF r$(ar)<>"*"THEN ar=ar+1:GOTO 554
555 READ f$(af),p(af),d(af):IF f$(af)<>"*"THEN af=af+1:GOTO 555
556 af=af-1:ar=ar-1:RETURN
557 DATA"Entrance to space harbor",e02n04i04
558 DATA"Park",w01s03
559 DATA"Fountain",n02
560 DATA"Outside ship",s01i05u05
561 DATA"Main corridor",n06s09e07w08u11o04d04
562 DATA"Bridge",s05o05
563 DATA"Black cargo bay",d27w05o05i27
564 DATA"Grey cargo bay",e05o05
565 DATA"Narrow passage",n05s10
566 DATA"Small closet",n09o09
567 DATA"Central chamber",n12s20e24w21d05
568 DATA"Walkway",n13s11o26u26
569 DATA"Corridor split",s12e15w14
570 DATA"Blue section",n17s16e13
571 DATA"Red section",n18w13s19
572 DATA"Fridge room",n14o14
573 DATA"Kitchen",s14o14w01
574 DATA"Store room",s15o15
575 DATA"Electric room",o15n15
576 DATA"Green section",n11s23w22
577 DATA"Crew's quarters",e11o11
578 DATA"Crew's sanfac",e20o20
579 DATA"Commander's quarters",o20n20
580 DATA"Communication room",w11o11
581 DATA"Fuel tank",o28u28
582 DATA"Top of spacecraft",i12d12s28
583 DATA"Small compartment",u07o07
584 DATA"Aft end",d25i25n26
585 DATA *,*
586 REM things
587 DATA"a small glass staff",18,0
588 DATA"a flashlight",8,0
589 DATA"a Game & Watch-game",0,0
590 DATA"a Giga Superlazer wristwatch",-1,0
591 DATA"a fucking plate",4,1
592 DATA"a red package",0,0
593 DATA"an orange package",25,0
594 DATA"a yellow package",27,0
595 DATA"a green package",0,0
596 DATA"a blue package",10,0
597 DATA"an indigo package",0,0
598 DATA"an violett package",0,0
599 DATA"a Hi-fi Tuner",6,0
600 DATA"a Hi-tech amplifier",24,0
601 DATA"a Left-angled loudspeaker",21,0
602 DATA"a Right-angled loudspeaker",8,0
603 DATA"a bit of Carbon Dioxide Snow",16,0
604 DATA"a pair of mitts",7,0
605 DATA"a pair of gloves",21,0
606 DATA"a Remote Control Unit",21,0
607 DATA"a thin hard-cover novel",6,0
608 DATA"a large wooden box",7,0
609 DATA *,0,0
610 REM
611 a$=INKEY$:IF a$=CHR$(13)THEN RETURN
612 GOTO 611
613 REM rumsbeskrivningar
614 IF p=25 AND p(1)<>-1 THEN 616
615 PRINT r$(p);".":IF v(p) OR br=1 THEN RETURN
616 v(p)=1:ON p GOTO 619,622,626,629,633,638,646,653,655
617 ON p-9 GOTO 661,663,666,672,674,677,684,686,692,694
618 ON p-19 GOTO 697,702,704,706,711,713,717,723,730
619 PRINT"You stand right outside the entrance to Geeron Space harbor.";
620 PRINT"To the east there   is a green park, and through the guardedgate ";
621 PRINT"to the north you can see your ship.":RETURN
622 PRINT"This is the Geeron space park, with the biggest collection of ";
623 PRINT"space orchids in  this galaxy. To the south a fountain canbe ";
624 PRINT"seen, and to the west the entrance   to the space harbor ";
625 PRINT"is barely visible.":RETURN
626 PRINT"This is an idyllic piece of nature, witha big fountain rising ";
627 PRINT"in the middle of  a beatuiful pond. Benches are":PRINT"strategically ";
628 PRINT"placed all around the     fountain. A narrow path stretches north.";:RETURN
629 PRINT"You stand right outside your spacecraft,it's only entrance ";
630 PRINT"is a large hatch far above your head. You can also go south."
631 PRINT"The hatch is ";:IF k0then PRINT"open.":RETURN
632 PRINT"closed.":RETURN
633 PRINT"This is the main corridor of Sunburst.  Walkways lead off in ";
634 PRINT"all directions. A  ladder leads up, and a large hatch in   the ";
635 PRINT"floor forms the only exit of the    craft.";
636 PRINT"The hatch is ";:IF k0then PRINT"open.":GOTO 746
637 PRINT"closed.":RETURN
638 PRINT"You stand in the middle of the bridge.  You are completely ";
639 PRINT"surrounded by "
640 PRINT"advanced navigational and entertainment equipment.";
641 PRINT"The huge control panel is     covered by hundreds of flickering ";
642 PRINT"lamps,pulsating LED's, and tiny levers and    buttons. ";
643 PRINT"You have thought of trying to  understand at least some of the "
644 PRINT"controls, but you never seem to get the time needed. ";
645 PRINT"There seems to be an":PRINT"opening in the panels to the south.":GOTO 742
646 PRINT"You are in a largish cargo bay. All the walls are painted ";
647 PRINT"black, and a complex  system of monorails is mounted in the"
648 PRINT"ceiling.An overhead crane hangs from oneof them.";
649 PRINT"A small hatch is mounted in the floor.";
650 PRINT"You stand in the western part of  the room, the only ";
651 PRINT"section accessible tohumans.";
652 GOTO 733
653 PRINT"You are standing in a pretty large cargobay. It is now totally ";
654 PRINT"relieved from    cargo. The only visible exit is to the  east.":RETURN
655 PRINT"This is an extremely unsignificant pieceof corridor. Some would ";
656 PRINT"might call it   narrow, at least for humans. A small    closet ";
657 PRINT"can be entered to the south, and another doorway leads north. ";
658 IF k4 THEN PRINT:RETURN
659 PRINT"A pathetic looking robot blocks your way south. ";
660 PRINT"It just stands there and flickers with its lamps irregulary.":RETURN
661 PRINT"You are in a rather small closet, with  no special features. ";
662 PRINT"The only exit is   out to the corridor, to the north.":RETURN
663 PRINT"You're standing in the most central     chamber of the ship.";
664 PRINT" Passages lead off  in all directions you can think of. ";
665 PRINT"A   manhole leads down.":RETURN
666 PRINT"This is a short, tube shaped walkway,   connecting the supply ";
667 PRINT"sections with the living quarters. A hatch is placed in   the ";
668 PRINT"highest part of the tube, only"
669 PRINT"accessible by a built-in ladder embeddedin the tube wall.";
670 PRINT" This hatch is, at thisvery moment, ";:IF k5 then PRINT"open.":RETURN
671 PRINT"closed.":RETURN
672 PRINT"You're standing where the tube from the south splits into two ";
673 PRINT"separate":PRINT"corridors, leading east and west.":RETURN
674 PRINT"This is a heptagonal shaped corridor,   sloping downward ";
675 PRINT"to the east. The blue  walls seem to be pushing you to the"
676 PRINT"north. There is also a potential exit tothe south.":RETURN
677 PRINT"You have entered a devilish red part of the craft.";
678 PRINT" Everything here is red, even the panelling on the walls. ";
679 PRINT"Doorways    lead both north and west, but the       threatening ";
680 PRINT"colour makes you wish you   had never went here in the first place."
681 IF k6=0 THEN PRINT:RETURN
682 PRINT"The panel on the wall is open, and"
683 PRINT"reveals a passage to the south.":RETURN
684 PRINT"You are in warm fridge (warm to be a    fridge.). ";
685 PRINT"There is only one exit, and   that is north.":RETURN
686 PRINT"You are in a fully automatized kitchen  with the usual ";
687 PRINT"data controlled kitchen  tools and machines. ";
688 PRINT"You also notice the hyper modern microwave oven. A hole in  the ";
689 PRINT"western wall is, except for the"
690 PRINT"doorway to the south, the only exit.";:IF k7=0 THEN PRINT:RETURN
691 PRINT"The oven is open.":RETURN
692 PRINT"This is a useful store room, but right  now unused. ";
693 PRINT"The exit is to the south.":RETURN
694 PRINT"This room is filled of electronical     equipment of all kinds. ";
695 PRINT"There is a      dangerous looking console set in the"
696 PRINT"southern wall. You can only go north    from here.":RETURN
697 PRINT"You are in the green section of the     craft. To the north ";
698 PRINT"a doorway leads intothe central chamber, and a passage goes west. ";
699 PRINT"To the south a door frame is set  deeply into the wall and, beside";
700 PRINT" it, a  numeric keypad.";:IF k8=0 THEN PRINT:RETURN
701 PRINT"The door is widely open.":RETURN
702 PRINT"You are standing in the crew's sleeping quarters. A number of ";
703 PRINT"beds line the     walls. You can only go east from here.":RETURN
704 PRINT"You have entered the crew's sanitary    facilities. ";
705 PRINT"There is only one way out ofhere, and that is to the east.":RETURN
706 PRINT"You have by some unknown reason bolted  into the commander's ";
707 PRINT"private room. The  only furniture is a bed, a bookshelf anda ";
708 PRINT"cupboard. There is a door to the      north, which is open.";
709 IF k9=0 THEN PRINT:RETURN
710 PRINT" The cupboard door is open.":RETURN
711 PRINT"This is the Sunburst's communication    room. It is far too ";
712 PRINT"complicated for you to understand. The only exit is to the  west.":RETURN
713 IF p(2)=-1 AND ka=1 GOTO 740
714 IF p(1)<>-1 THEN PRINT"It's too dark to see.":v(p)=0:RETURN
715 PRINT"You are wallowing in hydrogen peroxide  up to your waist. ";
716 PRINT"The only way out of   here is up through the hatch.":RETURN
717 PRINT"The top of your space craft forms an    excellent viewpoint ";
718 PRINT"for surveying your  surroundings. You can go south cross the";
719 PRINT"surface to the fueltanks.";
720 PRINT" The hatch thatleads back into the space craft is ";
721 IF k5 THEN PRINT"open.";:RETURN
722 PRINT:PRINT"closed.":RETURN
723 PRINT"This is the smallest compartment of the ship. ";
724 PRINT"You can get up through the hatch.":IF kj=1 then return
725 IF k2 then 728
726 PRINT"The box hanging in the crane falls down and crashes against the ";
727 PRINT"hatch. Since    noone knows you're here, you starve to  death...":GOTO 178
728 PRINT" The crane begins to move, and suddenly it drops the box on the ";
729 GOTO 727
730 PRINT"You're standing at the aft end of the   space craft's surface. ";
731 PRINT"The hatch down tothe fuel tank is currently ";:IF kb THEN PRINT"open.":RETURN
732 PRINT"closed.":RETURN
733 PRINT" The crane is now in its ";:IF k1 THEN PRINT"low":GOTO 735
734 PRINT"high"
735 PRINT"position, in the ";:IF k2 THEN PRINT"eastern";:GOTO 737
736 PRINT"western";
737 PRINT" part of the    room. ";:IF kl=1 THEN PRINT"The crane holds the box. "
738 PRINT"The hatch is ";:IF k3 THEN PRINT"open.":RETURN
739 PRINT"closed.":RETURN
740 PRINT"A spark from the flashlight lights the  fuel and sends you and";
741 PRINT" your space craft straight into eternity...":GOTO 178
742 ko=ko+1:IF ko<>1 THEN RETURN
743 PRINT"You suddenly realise that this must be avery safe place for";
744 PRINT" the packages; a tinyslimetoad would never dare to enter a"
745 PRINT"place with so many lamps and stuff.":RETURN
746 kp=kp+1:IF kp<>1 THEN RETURN
747 PRINT"When you first enter the ship, you      notice that the light ";
748 PRINT"is somewhat       flickering sometimes, and too strong allthe time. ";
749 PRINT"'Probably it's just that bad, irregular power supply they ";
750 PRINT"have around here', you think to yourself.":RETURN
751 IF d(f) THEN PRINT"Not bloody likely!":RETURN
752 kc=kc+1:PRINT f$(f);" - Taken.":p(f)=-1:RETURN
753 IF p=6 THEN 119
754 PRINT"The panel seems to move slightly as you touch it...":GOTO 34