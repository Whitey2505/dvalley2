5 GOSUB 5000
10 PRINT "Escape from Death Valley"
11 PRINT
12 PRINT "You mst fly your ship through death valley"
13 PRINT "make sure caps lock is on!"
14 PRINT
15 PRINT "control your movement with the Q and P keys"
16 PRINT
17 PRINT "in this version, the longer you fly"
18 PRINT "the faster the ship goes"
19 PRINT "how long can you survive?"
20 LET S=0
30 LET M=200
32 LET T=250
35 PRINT
40 PRINT "select the width of the canyon"
41 PRINT "16 is a good starting point to get the hang of it"
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
170 PRINT "I";
180 LET N=Y
190 GOSUB 1000
200 PRINT "$";
210 LET N=R
220 GOSUB 1000
230 PRINT "I"
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
340 PRINT "Well done- you made it"
350 PRINT "Death valley"
360 STOP
370 PRINT "you crashed into the wall"
380 PRINT "and disintegrated"
390 STOP
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
