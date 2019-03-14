1 r=1
2 REM The Mary Celeste Adventure converted to CPC 2018 by SRS
3 gsl=0:gpw=0:gp=0:gd=0:crewmate=1:captain=1:wife=1:daughter=1
12 MODE 2:INK 0,0:BORDER 0:INK 1,13
13 LOAD"!marycele.scr",&C000
17 mins=20:secs=0:GameTime=mins*60*300+secs*300
18 CALL &BB18
21 DIM d$(16)
22 d$(1)="EAST OR SOUTH"
23 d$(2)="EAST OR WEST"
24 d$(3)="EAST OR WEST"
25 d$(4)="WEST OR SOUTH"
26 d$(5)="NORTH OR WEST"
27 d$(6)="EAST OR WEST"
28 d$(7)="EAST, WEST, OR DOWN"
29 d$(8)="NORTH OR EAST"
30 d$(9)="EAST, WEST, OR UP"
31 d$(10)="EAST, WEST, OR NORTH"
32 d$(11)="NORTH OR WEST"
33 d$(12)="EAST OR SOUTH"
34 d$(13)="EAST, WEST, OR SOUTH"
35 d$(14)="EAST OR WEST"
36 d$(15)="EAST"
37 d$(16)="EAST"
39 LOCATE 1,19:PRINT"It has been month's since the tragic day to which the Mary Celeste went"
42 PRINT"missing without anyone knowing what caused it's crew to vanish. But alas"
43 PRINT"with searching and with some luck, she was found, and brought back to port."
44 PRINT"Now it is your job to find out just what had happened to the crew. You"
45 PRINT"don't have long, as the insurance company wishes to sell this vessel before"
46 PRINT"the end of the week."
47 PRINT
49 CALL &BB18
50 DOOM=TIME+GameTime'change this to desired time for the game to run
52 REM
53 CLS
54 PRINT:PRINT:PRINT:PRINT:PRINT
59 PRINT"                              The Mary Celeste"
60 PRINT
61 PRINT"                                 Written by"
62 PRINT
63 PRINT"                                D.B. Taylor"
64 PRINT
65 PRINT"                             Copyright (c) 2015":PRINT
66 PRINT"                      Converted to CPC Sep 2018 by SRS":PRINT
67 PRINT "Mins:";mins;" Secs:";secs;"left";SPACE$(20);
68 IF INSTR(d$(r),"NORTH")THEN PRINT"N"ELSE PRINT
69 PRINT"*---------------------------------* ";
70 IF INSTR(d$(r),"WEST")THEN PRINT"W";ELSE PRINT" ";
71 PRINT" + ";
72 IF INSTR(d$(r),"EAST")THEN PRINT"E";ELSE PRINT" ";
73 PRINT" *------------------------------------*"
74 PRINT SPACE$(38);
75 IF INSTR(d$(r),"SOUTH")THEN PRINT"S"ELSE PRINT
76 PRINT
77 PRINT"If you are stuck just type HELP."
78 PRINT
79 GOSUB 83
80 GOSUB 103
81 GOTO 53
83 REM ROOM
84 ON r GOSUB 288,293,297,301,306,311,316,321,325,333,338,346,352,356,365,373
101 RETURN
103 REM parser
104 PRINT"> ";
105 c$="":GOSUB 400
107 IF c$="END"OR c$="QUIT"OR c$="EXIT"OR c$="Q"THEN 436
110 IF c$<>"HELP"AND c$<>"H"AND c$<>"?"THEN 128
111 CLS
112 PRINT"HERE ARE SOME BASIC COMMANDS THAT CAN BE USED IN THE GAME..."
113 PRINT
114 PRINT"NORTH, EAST ,SOUTH, AND WEST - MOVE TO AN AVAILABLE LOCATION"
115 PRINT"EXAMINE (OBJECT)             - EXAMINE AN OBJECT"
116 PRINT"USE (OBJECT)                 - USE AN OBJECT"
117 PRINT"TAKE (OBJECT)                - TAKE OR MOVE AN OBJECT"
118 PRINT"INVENTORY                    - VIEW YOUR INVENTORY"
119 PRINT"DRINK                        - DRINK BEER"
120 PRINT"UNLOCK                       - UNLOCK DOOR"
121 PRINT"HELP                         - VIEW THIS SCREEN"
122 PRINT"END                          - END GAME"
123 PRINT
124 PRINT"PRESS ANY KEY..."
125 CALL &BB18
127 GOTO 285
128 IF c$<>"INVENTORY"AND c$<>"INV"AND c$<>"ITEMS"AND c$<>"I"THEN 141
129 CLS
130 PRINT"INVENTORY..."
131 PRINT
132 IF gp=1 THEN PRINT"The photo of the Captains pride and joy."
133 IF gd=1 THEN PRINT"The daughters doll."
134 IF gpw=1 THEN PRINT"The Captain's Pocket watch."
135 IF gsl=1 THEN PRINT"The ships log book."
136 PRINT
137 PRINT"PRESS ANY KEY..."
139 CALL &BB18
140 GOTO 285
141 IF c$<>"GO NORTH"AND c$<>"NORTH"AND c$<>"N"THEN 147
142 IF r=5 THEN r=4:RETURN
143 IF r=8 THEN r=1:RETURN
144 IF r=11 THEN r=12:RETURN
145 IF r=10 THEN r=13:RETURN
146 GOTO 285
147 IF c$<>"GO EAST"AND c$<>"EAST"AND c$<>"E"THEN 161
148 IF r=1 THEN r=2:RETURN
149 IF r=2 THEN r=3:RETURN
150 IF r=3 THEN r=4:RETURN
151 IF r=8 THEN r=7:RETURN
152 IF r=7 THEN r=6:RETURN
153 IF r=6 THEN r=5:RETURN
154 IF r=15 THEN r=14:RETURN
155 IF r=14 THEN r=13:RETURN
156 IF r=13 THEN r=12:RETURN
157 IF r=16 THEN r=9:RETURN
158 IF r=9 THEN r=10:RETURN
159 IF r=10 THEN r=11:RETURN
160 GOTO 285
161 IF c$<>"GO SOUTH"AND c$<>"SOUTH"AND c$<>"S"THEN 167
162 IF r=4 THEN r=5:RETURN
163 IF r=1 THEN r=8:RETURN
164 IF r=12 THEN r=11:RETURN
165 IF r=13 THEN r=10:RETURN
166 GOTO 285
167 IF c$<>"GO WEST"AND c$<>"WEST"AND c$<>"W"THEN 181
168 IF r=4 THEN r=3:RETURN
169 IF r=3 THEN r=2:RETURN
170 IF r=2 THEN r=1:RETURN
171 IF r=5 THEN r=6:RETURN
172 IF r=6 THEN r=7:RETURN
173 IF r=7 THEN r=8:RETURN
174 IF r=11 THEN r=10:RETURN
175 IF r=10 THEN r=9:RETURN
176 IF r=9 THEN r=16:RETURN
177 IF r=12 THEN r=13:RETURN
178 IF r=13 THEN r=14:RETURN
179 IF r=14 THEN r=15:RETURN
180 GOTO 285
181 IF c$<>"GO UP"AND c$<>"UP"AND c$<>"U"THEN 184
182 IF r=9 THEN r=7:RETURN
183 GOTO 285
184 IF c$<>"GO DOWN"AND c$<>"DOWN"AND c$<>"D"THEN 188
185 IF r=7 THEN r=9:RETURN
186 GOTO 285
188 IF(c$<>"EXAMINE CAPTAIN")THEN 196
189 IF r=15 THEN CLS ELSE 196
190 PRINT"He faintly moves in and out of the realm of the living. His face is"
191 PRINT"permanently pulled back, a look of terror, and pain upon his face."
192 PRINT"Before you know it, he vanishes before you, to a fate worse than death."
194 CALL &BB18
195 GOTO 285
196 IF(c$<>"EXAMINE WIFE")THEN 204
197 IF r=16 THEN CLS ELSE 204
198 PRINT"She stands before you, her arms are crossed, and looks feverish. It"
199 PRINT"is as if she is battling the cold or the flu? She seems scared and"
200 PRINT"is muttering to herself...just what is she saying?"
202 CALL &BB18
203 GOTO 285
204 IF(c$<>"EXAMINE DAUGHTER")THEN 211
205 IF r=14 THEN CLS ELSE 211
206 PRINT"She's sitting on the floor. Holding her doll and talking to it as if"
207 PRINT"it were alive. Poor child, my heart weeps for thee."
209 CALL &BB18
210 GOTO 285
211 IF(c$<>"EXAMINE CREWMATE")THEN 218
212 IF r=10 THEN CLS ELSE 218
213 PRINT"He runs towards you, with his hands on the sides of his mouth. As if"
214 PRINT"he was trying to warn everyone of what was to come."
216 CALL &BB18
217 GOTO 285
218 IF(c$<>"EXAMINE SHIPS LOG")AND gsl<>1 THEN 225
219 CLS
220 PRINT"A newish leather bound book. With the name of the ship written on a"
221 PRINT"white card placed on the cover."
223 CALL &BB18
224 GOTO 285
225 IF(c$<>"READ SHIPS LOG") THEN 232
226 IF gsl=1 THEN CLS ELSE 232
227 PRINT"You open it and turn to the last entry. It reads -All is lost and I"
228 PRINT"have damned them all.-"
230 CALL &BB18
231 GOTO 285
232 IF c$<>"EXAMINE POCKET WATCH" THEN 238
233 IF gpw=1 THEN CLS ELSE 238
234 PRINT"A handcrafted gold pocket watch. Most likely a gift from his wife."
236 CALL &BB18
237 GOTO 285
238 IF(c$<>"OPEN POCKET WATCH")THEN 245
239 IF gpw=1 THEN CLS ELSE 245
240 PRINT"You open the watch and find that the watch had stopped at -9:15-."
241 PRINT"There's an inscription that reads -To my loving Husband. Sarah."
243 CALL &BB18
244 GOTO 285
245 IF(c$<>"EXAMINE PHOTO")THEN 252
246 IF gp=1 THEN CLS ELSE 252
247 PRINT"The photo is that of the Mary Celeste. The job of which he had always"
248 PRINT"wanted. With that it brought him death."
250 CALL &BB18
251 GOTO 285
252 IF c$<>"EXAMINE DOLL"THEN 259
253 IF gd=1 THEN CLS ELSE 259
254 PRINT"A store bought doll. From some toy store on the upper part of town."
255 PRINT"Looks expensive and there fore must be the daughters."
257 CALL &BB18
258 GOTO 285
259 IF c$<>"TALK"AND c$<>"TALK TO CAPTAIN" THEN 268
260 IF captain=1 AND r=15 THEN CLS ELSE 268
261 PRINT"What are you doing here? Your not suppose to be here? No one"
262 PRINT"is. -You fool, this ship is cursed, and so will be your soul.-"
263 PRINT"He laughs like an insane old man on the brink of death, laughing"
264 PRINT"just one last time before slipping away."
266 CALL &BB18
267 GOTO 285
268 IF(c$<>"GIVE DOLL")THEN 271
269 IF gd=1 AND r=15 GOTO 391 ELSE 271
270 GOTO 285
271 IF(c$<>"TALK"OR c$<>"TALK TO WIFE")THEN 280
272 IF wife=1 AND r=16 THEN CLS ELSE 280
273 PRINT"Just what in the devil happened here? -My husband's a good"
274 PRINT"man. He didn't mean too, he didn't mean too. You see, he's"
275 PRINT"a god fearing man, but he just couldn't handle the pressure"
276 PRINT"of it no more, no more, no more..."
278 CALL &BB18
279 GOTO 285
280 IF(c$<>"GIVE POCKET WATCH")THEN 285
281 IF gpw=1 AND r=16 THEN 380 ELSE 285
284 REM moved:
285 RETURN
288 PRINT"You are standing upon the deck of the Mary Celeste. An eerie"
289 PRINT"feeling washes over you."
290 RETURN
293 PRINT"The crash of the washes upon the shore echo through the winds."
294 RETURN
297 PRINT"Being the only one on board, you feel as if you are being watched."
298 RETURN
301 PRINT"The faint stench of rotten flesh and the lingering tail end of"
302 PRINT"death surrounds you. Nothing but deadman's tales upon this vessel."
303 RETURN
306 PRINT"You are standing before a railing. The ocean is quiet restless and"
307 PRINT"it feels as if the sea herself is against you being here."
308 RETURN
311 PRINT"The faint cries of the recently murdered fills the air. The world"
312 PRINT"that was taking place upon this ship, seems to bring fear and pain."
313 RETURN
316 PRINT"You are standing before a ladder that will bring you to the bottom"
317 PRINT"level."
318 RETURN
321 PRINT"With every step you take, the wood beneath your feet creeks and cracks."
322 RETURN
325 PRINT"You are standing before the small living quarters that housed those"
326 PRINT"poor souls."
327 PRINT""
328 IF gpw=0 THEN PRINT"A gold pocket watch rests on a small desk."
329 IF gpw=1 THEN PRINT"You take the pocket watch."
330 RETURN
333 PRINT"You are witnessed by the spirit of one of the formal crewman. He"
334 PRINT"passes back and forth and does not even see you."
335 RETURN
338 PRINT"You wander around the lower elvel of the ship. A strong musty smell"
339 PRINT"of dust and mold fills the air."
340 PRINT
341 IF gp=0 THEN PRINT"A framed photo is hanging on the wall."
342 IF gp=1 THEN PRINT"You take the photo."
343 RETURN
346 PRINT"You wonder what had just happened upon this ship all those months"
347 PRINT"ago and while you do hear the odd whisper and groan. You feel almost"
348 PRINT"at home here."
349 RETURN
352 PRINT"A cold breeze embraces you which is odd since it's humid out."
353 RETURN
356 PRINT"You hear the laughter of a little girl fills the area. Before your"
357 PRINT"eye's you see the faint image of the daughter. Just what in God's name"
358 PRINT"is going on here?"
359 PRINT""
360 IF gd=0 THEN PRINT"A childs doll rests on the floor."
361 IF gd=1 THEN PRINT"You take the doll."
362 RETURN
365 PRINT"A man stands before you and is crying into his hands. He mutters"
366 PRINT"something about having to do God's work! Must be the Captain!"
367 PRINT""
368 IF gsl=0 THEN PRINT"The ships log book is resting on a desk."
369 IF gsl=1 THEN PRINT"You take the log book."
370 RETURN
373 PRINT"You reach the end of the short hallway and are greeted by that of"
374 PRINT"who was once the mother and husband of the family who's lived were"
375 PRINT"cut short."
376 RETURN
378 REM win:
380 CLS
381 PRINT"A bright light blinds you as you find yourself standing on"
382 PRINT"the shore. The ship is no more, it vanished before the sun"
383 PRINT"rose filling the area with a warmth that brings you new life."
384 PRINT"The souls of the lost crew are now at rest."
385 PRINT
386 CALL &BB18
387 END
389 REM lose:
391 CLS
392 PRINT"You are thrown into a black void of death and despair. Darkness"
393 PRINT"surrounds you and you spend eternity with the murderous Captain"
394 PRINT"and his trapped souls for all eternity."
395 PRINT
396 CALL &BB18
397 END
399 REM getinput
400 LOCATE 2,VPOS(#0)
401 LINE INPUT c$:c$=UPPER$(c$):IF c$=""THEN 400
423 timerleft=(DOOM-TIME):secs=timerleft/300:mins=secs/60:secs=(timerleft-mins*18000)
426 rem LOCATE 15,25:PRINT USING" ###:##.###";mins,secs
427 IF timerleft<=0 THEN 436
433 RETURN
435 REM doomed:
436 CLS:INK 0,13:BORDER 13:INK 1,0
437 PRINT"You find nothing that could be used towards cracking the case. I guess"
438 PRINT"this mystery will never go solved."
440 END