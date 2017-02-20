    1 mode 0:goto 10
	2 c$=c$+" ":k=0:d$=n$
    3 k=k+1:a$=left$(c$,k):if right$(a$,1)<>" " then 3
    4 b$=mid$(c$,k):if left$(b$,1)=" " then k=k+1:goto 4
    5 if b$="" then n$="***":goto 7
    6 b$=left$(b$,len(b$)-1)
    7 a$=left$(a$,len(a$)-1):v$=left$(a$+"***",3)
    8 n$=left$(b$+"***",3):if n$<>"it*" and n$<>"***" then return
    9 n$=d$:return
   10 ?"     NOSFERATU":?"   by M. Taylor.":n$="***"
   15 dim q$(4):q$(1)="N":q$(2)="S":q$(3)="E":q$(4)="W":q$=chr$(34)
   20 l=32:o=45:dim l$(l),d$(l),o$(o),c$(o),p(o),f(o)
   30 for i=1 to o:read o$(i),c$(i),p(i),f(i):next:for i=1 to l:read l$(i),d$(i):next:i=1
   35 data "transylvanian Atlas",atl,4,1
   40 data "book of Magic",mag,4,1
   45 data "book of Games",gam,4,1
   50 data "long Rope",rop,8,1
   55 data "brass Key",key,6,1
   60 data "golden Coins",coi,25,1
   65 data "old Lamp",lam,,1
   70 data "balcony Rail",rai,5,
   75 data "newly dug open Grave",gra,10,
   80 data "locked Door",doo,8,
   85 data "wrinkled old Witch",wit,12,
   90 data "Tombstone, engraved:  BEWARE THE WITCH",sto,10,
   95 data "large red no. 29 Bus",bus,,
  100 data "Hole (above me)",hol,12,
  105 data "bus Conductor",con,13,
  110 data "scarlet Kipper",kip,6,1
  115 data "bottle of Whisky",whi,7,1
  120 data "Water of youth",wat,29,9
  125 data "sharp Axe",axe,14,1
  130 data "inpeneterable Thicket",thi,27,
  135 data "hanging Rope",rop,6,2
  140 data "garden Spade",spa,21,1
  145 data "Hut with locked door",hut,20,
  150 data "oak-Trees",tre,24,
  155 data "brick Wall",wal,26,
  160 data "Sign says: 'TREES ARE RESERVED FOR COFFINS'",sig,24,
  165 data "tall Ladder",lad,15,1
  170 data "Fountain of youth",fou,29,
  175 data "maneating Shark!",sha,16,3
  180 data "brick Wall",wal,28,
  185 data "safety Match",mat,28,1
  190 data "Hole in thicket",hol,29,
  195 data "Sign here says:  'EXA NA FO TROHS'",sig,27,0
  200 data "Pit in the ground",pit,98,
  205 data "secret Tunnel",tun,30,
  210 data "Stalactites hanging   from the ceiling",sta,31,
  215 data "the count Nosferatu",nos,32,
  220 data "stone Altar",alt,32,
  225 data "giant *BLOODSTONE*",blo,32,1
  230 data "sharp wooden Stick",sti,21,1
  235 data "7-pound Mallet",mal,9,1
  240 data "Crusif ix engraved on  the ground",cru,23,
  245 data "stone Sarcophagus",sar,3,
  250 data "decomposing Body",bod,,1
  255 data "wooden Cross",cro,,1
  300 data "in a tall, satin- lined wooden box",000002
  305 data in an empty room,07030501
  310 data in a dark crypt,020004
  315 data in the library,05000003
  320 data on a balcony over-looking a tall clif f,00040002
  325 data on a narrow ledge high up a clif f,
  330 data in the kitchen,0802
  335 data in the washroom,000709
  340 data in the mortuary,10000008
  345 data in a desolate windswept graveyard,1109
  350 data by a bus-stop,0010
  355 data in a dark gloomy  cave,
  360 data on a double-deckerbus,0011
  365 data in a rather dark  yard,15000816
  370 data in a dark shed,0014
  375 data by a fishpond ..,001714
  380 data in a damp swamp,16000018
  385 data "on a track.  To myNorth is a bridge overa pond",19001723
  390 data on a very flimsy  bridge..,2018
  395 data "on a lawn to the  North of a pond",0019
  400 data in a small hut,0020
  405 data west of a pond,00230027
  410 data in a sunny field,22241826
  415 data in an oak-forest,23242425
  420 data at the bottom of adisused cesspit,
  425 data north of a rather smelly hole,272523
  430 data at the top of a   clif f,002622
  435 data "on a narrow ledge,East of a chasm",29
  440 data at the edge of a  deep chasm,002827
  445 data at the bottom of adeep hole,
  450 data in a subterranean cavern,0030
  455 data in a cavern where the count sleeps,0031
  700 ?"   press 'RETURN'"
  710 r$=inkey$:if r$<>chr$(13) then 710
  720 d=0:if((p(7)<>99 and p(7)<>i) or f(7)<>13) and i>30 then d=1
  730 if d=1 then ?"It's too dark to see!":goto 830
  750 ?"I'm ";l$(i);"."
  760 k=0:for j=1 to o:if p(j)=i then k=1
  770 next:if k=0 then 800
  780 ?"Visible items:":for j=1 to o:if p(j)=i then ?o$(j)
  790 next
  800 if val(d$(i))=0 then 830
  810 ?"I can go: ";:for j=1 to 4:if val(mid$(d$(i),j*2-1,2))<>0 then ? q$(j)",";
  820 next:?"."
  830 ?"----------------------";
  831 if i=19 and c>1 then 988
  832 if i=32 and p(45)<>99 and p(37)=i then 9950
  840 if f(43)<0 then f(43)=f(43)+1:if f(43)=0 then ?"I feel weaker."
  841 c$="":input"Command";c$:?"";:if left$(c$,3)<>"aga" then gosub 2
  842 rem ifc$="{CBM-B} " then ?"I don't understand.":goto 840
  845 if n$="the" then e$=v$:c$=b$:gosub 2:v$=e$
  846 if n$="ax*" then n$="axe"
  850 if v$="q**" or v$="qui" then 9000
  851 k=0:for j=1 to o:if c$(j)=n$ then k=j:j=o
  852 next
  855 if v$="n**" or v$="nor" then k=1:goto 1500
  860 if v$="s**" or v$="sou" then k=2:goto 1500
  865 if v$="e**" or v$="eas" then k=3:goto 1500
  870 if v$="w**" or v$="wes" then k=4:goto 1500
  871 if v$="i**" or v$="inv" then 3000
  873 if v$="l**" or v$="loo" then 720
  874 if v$="wai" then 4500
  876 if v$="scr" then b$="Yaaaagh!":goto 8500
  877 if n$="***" then ?"I need a Noun too!":goto 840
  879 if v$="go*" then 1000
  880 if v$="get" or v$="tak" or v$="g**" then 2000
  885 if v$="dro" or v$="lea" or v$="d**" then 2500
  895 if v$="tie" then 3490
  900 if v$="to*" then 3500
  901 if v$="i=*" then i=val(b$):goto 750
  905 if v$="cli" then 4000
  915 if v$="giv" then 5000
  920 if v$="rea" then 5500
  925 if v$="ope" then 6000
  930 if v$="dri" then 6500
  935 if v$="thr" then 6990
  940 if v$="at*" then 7000
  950 if v$="cho" or v$="cut" then 7500
  955 if v$="lig" then 7600
  960 if v$="dig" then 8000
  965 if v$="say" then 8500
  970 ?"I don't know "q$a$q$:goto 840
  982 ?"It shatters!":goto 700
  983 ?"It's locked!":goto 840
  984 ?"He doesn't want it.":goto 840
  985 ?"Nothing happens.":goto 840
  987 ?"It's not here.":goto 840
  988 ?"I'm too heavy:I fall!"
  989 ?"I'm dead!":goto 9000
  991 ?"I've already done it!":goto 840
  992 ?"I'm carrying too much.";:goto 840
  993 ?"I can't "a$:?"a "b$:goto 840
  994 ?"I don't have it.":goto 840
  995 ?"I can't do that.":goto 840
  996 ?"I've already got it.":goto 840
  997 ?"not now.":goto 840
  998 ?"I can't go there.":goto 840
  999 ?"OK.":goto 840
 1000 if n$="hol" then 1100
 1005 if n$="gra" then 1130
 1010 if n$="bus" then 1150
 1020 if n$="pit" then 1170
 1030 if n$="tun" then 1190
 1095 v$=n$:goto 855
 1100 if i<>12 then 997
 1120 i=10:goto 720
 1130 if i<>10 then 997
 1140 i=12:goto 720
 1150 if i<>p(13) then 987
 1160 i=13:goto 720
 1170 if p(34)<>i then 997
 1180 i=30:goto 720
 1190 if i<>30 then 997
 1200 i=31:goto 720
 1500 d$=mid$(d$(i),2*k-1,2):if val(d$) then i=val(d$):goto 720
 1510 if d then?"I fall and break my   neck!":goto 989
 1520 goto 998
 2000 if n$="i**" or n$="inv" then 3000
 2001 k=0:for j=1 to o:if c$(j)=n$ then k=j:j=o
 2005 if f(k)=3 then ?"He doesn't seem to be too keen on that idea:He's eating me!":goto 989
 2010 next:if f(k)=2 then ?"It's tied to a rail!":goto 840
 2020 if p(k)=99 then 996
 2030 if p(k)<>i then ?"I can't see it here.":goto 840
 2031 if n$="dus" then ?"It slips through my   fingers":goto 840
 2032 if k=44 then f(k)=31:o$(k)="pile of Dust":c$(k)="dus":?"It turns to dust!":goto 700
 2033 if f(k)=9 and (p(17)<>99 or f(17)<>4) then ?"I need a container.":goto 840
 2034 if k=39 and p(37)=i then 9950
 2035 if f(k)=0 then ?"That's beyond me!":goto 840
 2040 if c=5 then 992
 2050 if k=18 then o$(17)="whisky Bottle"
 2060 if k=17 and p(18)=i and f(k)=4 then c=c+1:p(18)=99
 2070 c=c+1:p(k)=99:goto 999
 2500 if p(k)<99 then 994
 2510 if k=18 and i<>29 then p(k)=98:?"It soaks away.":c=c-1:goto 840
 2540 if i<>12 or k<>17 or p(18)<>99 then p(k)=i:c=c-1:goto 999
 2550 p(18)=98:p(7)=i:p(11)=98:c=c-2:?"The witch drinks the  water, rejuvenates,"
 2560 p(17)=i:?"drops something, and  disappears!":goto 700
 3000 ?"I'm carrying:":k=0:for j=1 to o:if p(j)=99 then ?o$(j):k=j
 3010 next:if k=0 then?"Nothing at all!"
 3020 goto 840
 3490 if n$<>"rop" then 993
 3492 if p(4)<>99 then 994
 3495 ?"To what? (eg. to key)":goto 840
 3500 if p(4)<>99 then ?"I haven't got a rope.":goto 840
 3510 if n$<>"rai" then a$="tie a rope to":goto 993
 3520 if i<>5 then 997
 3530 c=c-1:p(4)=5:o$(4)="rope tied to rail":f(4)=2:goto 700
 4000 if k=27 then 7310
 4005 if n$<>"rop" then 993
 4010 if f(4)<>2 or (i<>5 and i<>6) then 997
 4020 if c>1 then 988
 4030 if i=5 then i=6:goto 720
 4040 i=5:goto 720
 4500 ?"time passes...":for j=1 to 2000:next:if i<>11 or p(13)=11 then 985
 4510 p(13)=11:?"a bus arrives!":goto 700
 5000 if i<>13 then 997
 5010 if p(k)<>99 then 994
 5015 if k<>6 then 984
 5020 ?"He takes them, the busstarts, and I'm home"
 5030 ?"with";:if p(39)<99 then ?"out";
 5040 ?" Nosferatu's Bloodstone.":if p(39)=99 then ?"* Congratulations *   You win!
 5050 goto 9000
 5500 if n$="boo" then ?"Which one?":goto 840
 5501 if n$="lib" then ?"OK, but it'll take a  while.":for j=1 to 5000:next
 5502 if n$="lib" then ?"That was boring!  It  was in Transylvanian!":goto 840
 5509 if k=0 or k>3 then 993
 5510 if p(k)<>99 then 994
 5520 ?"The book says:":on k goto 5530,5550,5600
 5530 ?"Near the forest is a  disused cess-pit.":goto 840
 5550 ?"Magic word is:":?"'OVYEZ'":goto 840
 5600 ?"Bored with this game  already, huh?":goto 840
 6000 if n$="sar" then 6100
 6001 if n$<>"doo" then 993
 6005 if i=20 then 6040
 6010 if i<>8 or f(10)=2 then 997
 6020 if p(5)<>99 then 983
 6030 f(10)=2:d$(8)="00070914":o$(10)="wide open door":goto 700
 6040 if p(5)<>99 then 983
 6050 ?"My key won't fit!":goto 840
 6100 if i<>p(43) then 997
 6105 if f(43)=24 then 991
 6110 if f(43)>-1 then?"The lid's too heavy!":goto 840
 6120 p(44)=i:f(43)=24:p(45)=i:o$(43)="open Sarcophagus":?"I find something!":goto 700
 6500 if k<>17 then 993
 6510 if p(k)<>99 then 994
 6520 if f(k)=4 then 991
 6525 f(43)=-6:?"OK.":?"Burp!  It's good!":?"I feel stronger."
 6530 f(k)=4:o$(k)="empty whisky Bottle":c$(k)="bot":goto 840
 6990 if n$<>"axe" then 993
 6993 if p(19)<>99 then 994
 6996 ?"At what? (eg. at bus)":goto 840
 7000 if p(19)<>99 then ?"I need an ax.":goto 840
 7010 c=c-1:p(19)=i:if n$="sta" then 7040
 7015 if n$<>"doo" then ?"It bounces off.":goto 700
 7020 if i<>20 then 997
 7030 o$(23)="hut with smashed door":d$(20)="21190000":goto 982
 7040 if i<>31 then 997
 7050 o$(36)="entrance to cave":d$(31)="3230":goto 982
 7310 if p(k)<>i then 987
 7320 if i<>25 and i<>30 then 997
 7330 if f(k)=6 then ?"It's broken!":goto 840
 7340 if c<4 then i=24:p(27)=i:goto 700
 7350 ?"I'm too heavy:The ladder breaks!":f(k)=6:o$(k)="broken Ladder":goto 700
 7500 if p(19)<>99 then 7000
 7505 if n$="tre" and i=24 then ?"What's the point?":goto 840
 7510 if k<>20 then 993
 7520 if i<>27 then 997
 7530 if f(k)=8 then 991
 7540 f(k)=8:o$(k)="mutilated thicket":d$(27)="00262229"
 7550 o$(33)="'SHORT OF AN AXE' is  written backwards on  a Sign nearby":goto 700
 7600 if p(31)<>99 then ?"First I need a match.":goto 840
 7610 if f(31)=3 then ?"Using a SPENT match?":goto 840
 7620 f(31)=3:o$(31)="spent Match":if k<>7 then ?"It won't burn.":goto 840
 7630 if p(k)<>99 then 994
 7640 f(k)=13:o$(k)="lit Lamp":?"OK.":goto 700
 8000 if p(22)<>99 then ?"I'll need a spade.":goto 840
 8010 if n$<>"hol" then 993
 8020 if i<>23 then 997
 8030 if p(34)=i then 991
 8040 p(42)=98:p(34)=i:goto 700
 8500 ?"OK.":?q$b$q$:if p(39)<>i or n$<>"ovy" then 985
 8510 ?"Nosferatu vanishes in a cloud of smoke!":p(37)=98:goto 700
 9000 ?"Play again? (Y/N)"
 9010 input r$:if r$="y" then run
 9020 if r$="n" then call 0
 9030 goto 9010
 9950 ?"Nosferatu rises from  his altar, and bites  my neck!":goto 989
