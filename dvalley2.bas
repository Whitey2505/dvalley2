5 GOSUB 5000
6 rem set up highscore table
8 DIM A$(9)
9 gosub 6000

10 PRINT "        Escape from Death Valley"
11 PRINT
12 PRINT "  You mst fly your ship through death valley"
13 PRINT "       make sure caps lock is on!"
14 PRINT
15 PRINT "control your ship movement with the Q and P keys"
16 PRINT
17 PRINT "   in this version, the longer you fly"
18 PRINT "        the faster the ship goes"
19 PRINT "        how long can you survive?"
20 LET S=0
30 LET M=200
32 LET T=250
35 PRINT
40 PRINT "       select the width of the canyon"
41 PRINT "16 is a good starting point to get the hang of it"
42 print "   go lower for a true 1982 style challenge!"
50 INPUT W
60 LET W=INT(W/2)
70 LET L=10
80 LET Y=W
90 LET R=W
100 LET D=INT(RND*3-1)
110 IF L+D<0 OR L+D>15 THEN GOTO 100
120 LET L=L+D
130 LET Y=Y-D
140 LET R=R+D
150 LET N=L
160 GOSUB 1000
170 PRINT "|";
180 LET N=Y
190 GOSUB 1000
200 PRINT "(o)";
210 LET N=R
220 GOSUB 1000
230 PRINT "|"
235 FOR D=1 TO T: NEXT D
240 LET I$=INKEY$
250 IF I$="Q" THEN GOSUB 1050
280 IF I$="P" THEN GOSUB 1080
310 IF Y<1 OR R<1 THEN GOTO 370
320 LET S=S+1
330 IF S = 100 THEN LET T=T-75
332 IF S = 200 THEN LET T=T-75
334 IF S = 300 THEN LET T=T-75
336 IF S = 400 THEN LET T=1
338 IF S = 500 THEN GOTO 340
339 GOTO 100
340 GOSUB 5000
345 PRINT "Well done- you made it"
350 PRINT "through Death valley"
355 GOTO 388
360 STOP
370 GOSUB 5000
375 PRINT "you crashed into the wall"
380 PRINT "  and disintegrated"
381 print
382 print "whilst you are now stardust"
383 print "You earned ";s;" points"
384 PRINT

388 LET b=S
389 GOSUB 6300

999 STOP
1000 IF N=0 THEN RETURN
1010 FOR I=1 TO N
1020 PRINT " ";
1030 NEXT I
1040 RETURN
1050 LET Y=Y-1
1060 LET R=R+1
1070 RETURN
1080 LET Y=Y+1
1090 LET R=R-1
2000 RETURN
5000 REM CLEAR SCREEN                   
5010 PRINT CHR$(27);"[2J": RETURN 

6000 FOR A = 1 TO 9
6002 READ A$(A)
6004 NEXT A
6006 REM set initial numbers for high score table
6008 DIM HS(9)
6010 LET Z = 0
6012 FOR A= 1 TO 9
6014 LET HS(A) = Z
6016 NEXT A
6020 RETURN

6070 GOSUB 6100
6090 GOSUB 6200
6095 GOSUB 6300
6099 GOTO 6510

6100REM print high score routine
6110 FOR A = 1 TO 9
6120 PRINT "Position ";A;"   ";A$(A);"    Score ";HS(A)
6130 NEXT A
6140 RETURN

6200 REM get three figure random number to test the logic
6210 PRINT "give me a high score ";
6220 INPUT B
6230 RETURN

6300 REM high score position sort
6310 IF B>HS(9) THEN GOTO 6400
6320 PRINT "not a high score"
6330 RETURN
6400 LET D=1
6410 IF B<HS(D) THEN LET D=D+1 ELSE GOTO 6420
6415 GOTO 6410
6420 PRINT "Position  ";D
6425 GOSUB 7000
6430 IF D=9 THEN GOTO 6480
6440 LET C=9
6460 LET HS(C)=HS(C-1)
6461 LET A$(C)=A$(C-1)
6466 IF C<>D THEN LET C=C-1 ELSE GOTO 6480
6470 GOTO 6460
6480 LET HS(D)=B
6485 LET A$(D)=N$
6490 GOSUB 6100
6500 PRINT
6510 PRINT "WOULD YOU LIKE TO PLAY AGAIN. Y/N? ";
6520 INPUT Q$
6521 IF q$<>"Y" THEN STOP
6522 GOTO 10

6530 GOSUB 5000
6540 GOTO 10

6999 STOP
7000 PRINT "Input three initials and press return ";
7010 INPUT N$
7015 RETURN

8000 DATA GAW,AAA,TAA,DAW,QWE,ZSX,ASD,FGR,TRG


1080 LET Y=Y+1
1090 LET R=R-1
2000 RETURN
5000 REM CLEAR SCREEN                   
5010 PRINT CHR$(27);"[2J": RETURN 
