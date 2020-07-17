
Given the regular expression:

  ([a-zA-Z])+([a-zA-Z])+\([0-2]\)

That that should match the strings:

  ✓ (0:15)   Word Word (2) >
  ✓ (15:30)  Word Word (1) >

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)+([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  2      |  1     (((([a-zA-Z]){■}([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  3      |  1     (((([a-zA-Z])+(■)+)\()[0-2])\)fail dotstar or empty
  4      |  1     (((([a-zA-Z])+([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  5      |  1     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  6      |  1     (((([a-zA-Z])+([a-zA-Z])+)\()■)\)fail dotstar or empty
  7      |  1     (((([a-zA-Z])+([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  8      |  2     ((((■){■}([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  9      |  2     ((((■)+(■)+)\()[0-2])\) fail dotstar or empty
  10     |  2     ((((■)+([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  11     |  2     ((((■)+([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  12     |  2     ((((■)+([a-zA-Z])+)\()■)\)fail dotstar or empty
  13     |  2     ((((■)+([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  14     |  2     (((([a-zA-Z]){■}(■)+)\()[0-2])\)fail dotstar or empty
  15     |  2     (((([a-zA-Z]){■}([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  16     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  17     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)\()■)\)fail dotstar or empty
  18     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  19     |  2     (((■([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  20     |  2     (((([a-zA-Z])+(■){■})\()[0-2])\)fail dotstar or empty
  21     |  2     (((([a-zA-Z])+(■)+)■)[0-2])\)fail dotstar or empty
  22     |  2     (((([a-zA-Z])+(■)+)\()■)\)fail dotstar or empty
  23     |  2     (((([a-zA-Z])+(■)+)\()[0-2])■fail dot
  24     |  2     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  25     |  2     (((([a-zA-Z])+([a-zA-Z]){■})\()■)\)fail dotstar or empty
  26     |  2     (((([a-zA-Z])+([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  27     |  2     (((([a-zA-Z])+■)\()[0-2])\)fail dotstar or empty
  28     |  2     (((([a-zA-Z])+([a-zA-Z])+)■)■)\)fail dotstar or empty
  29     |  2     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])■fail dot
  30     |  2     (((([a-zA-Z])+([a-zA-Z])+)\()■)■fail dotstar or empty
  31     |  3     ((((■){■}(■)+)\()[0-2])\)fail dotstar or empty
  32     |  3     ((((■){■}([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  33     |  3     ((((■){■}([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  34     |  3     ((((■){■}([a-zA-Z])+)\()■)\)fail dotstar or empty
  35     |  3     ((((■){■}([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  36     |  3     ((((■)+(■){■})\()[0-2])\)fail dotstar or empty
  37     |  3     ((((■)+(■)+)■)[0-2])\)  fail dotstar or empty
  38     |  3     ((((■)+(■)+)\()■)\)     fail dotstar or empty
  39     |  3     ((((■)+(■)+)\()[0-2])■  fail dot
  40     |  3     ((((■)+([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  41     |  3     ((((■)+([a-zA-Z]){■})\()■)\)fail dotstar or empty
  42     |  3     ((((■)+([a-zA-Z]){■})\()[0-2])■fail dot
  43     |  3     ((((■)+■)\()[0-2])\)    fail dotstar or empty
  44     |  3     ((((■)+([a-zA-Z])+)■)■)\)fail dotstar or empty
  45     |  3     ((((■)+([a-zA-Z])+)■)[0-2])■fail dot
  46     |  3     ((((■)+([a-zA-Z])+)\()■)■fail dotstar or empty
  47     |  3     (((([a-zA-Z]){■}(■){■})\()[0-2])\)fail dotstar or empty
  48     |  3     (((([a-zA-Z]){■}(■)+)■)[0-2])\)fail dotstar or empty
  49     |  3     (((([a-zA-Z]){■}(■)+)\()■)\)fail dotstar or empty
  50     |  3     (((([a-zA-Z]){■}(■)+)\()[0-2])■fail dot
  51     |  3     (((■(■)+)\()[0-2])\)    fail dotstar or empty
  52     |  3     (((([a-zA-Z]){■}([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  53     |  3     (((([a-zA-Z]){■}([a-zA-Z]){■})\()■)\)fail dotstar or empty
  54     |  3     (((([a-zA-Z]){■}([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  55     |  3     (((■([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  56     |  3     (((([a-zA-Z]){■}■)\()[0-2])\)fail dotstar or empty
  57     |  3     (((([a-zA-Z]){■}([a-zA-Z])+)■)■)\)fail dotstar or empty
  58     |  3     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])■fail dot
  59     |  3     (((■([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  60     |  3     (((([a-zA-Z]){■}([a-zA-Z])+)\()■)■fail dotstar or empty
  61     |  3     (((■([a-zA-Z])+)\()■)\) fail dotstar or empty
  62     |  3     (((■([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  63     |  3     (((([a-zA-Z])+(■){■})■)[0-2])\)fail dotstar or empty
  64     |  3     (((([a-zA-Z])+(■){■})\()■)\)fail dotstar or empty
  65     |  3     (((([a-zA-Z])+(■){■})\()[0-2])■fail dot
  66     |  3     (((([a-zA-Z])+(■)+)■)■)\)fail dotstar or empty
  67     |  3     (((([a-zA-Z])+(■)+)■)[0-2])■fail dot
  68     |  3     (((([a-zA-Z])+(■)+)\()■)■fail dot
  69     |  3     (((([a-zA-Z])+(■■)+)\()[0-2])■fail dot
  70     |  3     (((([a-zA-Z])+((■|■))+)\()[0-2])■fail dot
  71     |  3     (((([a-zA-Z])+((■){■})+)\()[0-2])■fail dot
  72     |  3     (((([a-zA-Z])+(■)+)\()[0-2])(■■)fail dot
  73     |  3     (((([a-zA-Z])+(■)+)\()[0-2])(■|■)fail dot
  74     |  3     (((([a-zA-Z])+(■)+)\()[0-2])(■){■}  (((([a-zA-Z])+([rdWo ])+)\()[0-2])([)> ]){1,3}
template: (((([a-zA-Z])+(■)+)\()[0-2])(■){■} size: 6 holes: 4 time: 4.155034ms
longest: #mn#(((([a-zA-Z])+(■)+)\()[0-2])(■){■}#mn# size: #ms#6#ms# holes: #mh#4#mh# time: #mt#4.155034#mt#ms

Computed in:

  #c#879#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  8    (((([a-zA-Z])+([rdWo ])+)\()[0-2])([)> ]){1,3}

All done

last template: #t#(((([a-zA-Z])+(■)+)\()[0-2])(■){■}#t#
#num#74#num#
#dep#3#dep#
#t1#0#t1#
#t2#15#t2#
#t3#58#t3#
solution is #sol#(((([a-zA-Z])+([rdWo ])+)\()[0-2])([)> ]){1,3}#sol#
before exit
