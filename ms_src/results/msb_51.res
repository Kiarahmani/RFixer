
Given the regular expression:

  <abc[!e]

That that should match the strings:

  ✓ (0:4)    abcf
  ✓ (4:8)    abcd
  ✓ (8:12)   abc[
  ✓ (12:15)  abc

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■a)b)c)[!e]          fail dotstar or empty
  2      |  1     (((<■)b)c)[!e]          fail dotstar or empty
  3      |  1     (((<a)■)c)[!e]          fail dotstar or empty
  4      |  1     (((<a)b)■)[!e]          fail dotstar or empty
  5      |  1     (((<a)b)c)■             fail dotstar or empty
  6      |  2     (((■■)b)c)[!e]          fail dotstar or empty
  7      |  2     (((■a)■)c)[!e]          fail dotstar or empty
  8      |  2     (((■a)b)■)[!e]          fail dotstar or empty
  9      |  2     (((■a)b)c)■             fail dot
  10     |  2     (((<■)■)c)[!e]          fail dotstar or empty
  11     |  2     (((<■)b)■)[!e]          fail dotstar or empty
  12     |  2     (((<■)b)c)■             fail dotstar or empty
  13     |  2     (((<a)■)■)[!e]          fail dotstar or empty
  14     |  2     (((<a)■)c)■             fail dotstar or empty
  15     |  2     (((<a)b)■)■             fail dotstar or empty
  16     |  3     (((■■)■)c)[!e]          fail dotstar or empty
  17     |  3     (((■■)b)■)[!e]          fail dotstar or empty
  18     |  3     (((■■)b)c)■             fail dot
  19     |  3     (((■)b)c)[!e]           fail dotstar or empty
  20     |  3     (((■a)■)■)[!e]          fail dotstar or empty
  21     |  3     (((■a)■)c)■             fail dot
  22     |  3     (((■a)b)■)■             fail dot
  23     |  3     ((((■■)a)b)c)■          fail dot
  24     |  3     ((((■|■)a)b)c)■         fail dot
  25     |  3     ((((■){■}a)b)c)■        fail dot
  26     |  3     (((■a)b)c)(■■)          fail dot
  27     |  3     (((■a)b)c)(■|■)         fail dot
  28     |  3     (((■a)b)c)(■){■}        fail dot
  29     |  3     (((<■)■)■)[!e]          fail dotstar or empty
  30     |  3     (((<■)■)c)■             fail dotstar or empty
  31     |  3     (((<■)b)■)■             fail dotstar or empty
  32     |  3     (((<a)■)■)■             fail dotstar or empty
  33     |  4     (((■■)■)■)[!e]          fail dotstar or empty
  34     |  4     (((■■)■)c)■             fail dot
  35     |  4     (((■)■)c)[!e]           fail dotstar or empty
  36     |  4     (((■■)b)■)■             fail dot
  37     |  4     (((■)b)■)[!e]           fail dotstar or empty
  38     |  4     (((■)b)c)■              fail dot
  39     |  4     ((((■■)■)b)c)■          fail dot
  40     |  4     ((((■|■)■)b)c)■         fail dot
  41     |  4     ((((■){■}■)b)c)■        fail dot
  42     |  4     (((■■)b)c)(■■)          fail dot
  43     |  4     (((■■)b)c)(■|■)         fail dot
  44     |  4     (((■■)b)c)(■){■}        fail dot
  45     |  4     ((■b)c)[!e]             fail dotstar or empty
  46     |  4     (((■a)■)■)■             fail dot
  47     |  4     ((((■■)a)■)c)■          fail dot
  48     |  4     ((((■|■)a)■)c)■         fail dot
  49     |  4     ((((■){■}a)■)c)■        fail dot
  50     |  4     (((■a)(■■))c)■          fail dot
  51     |  4     (((■a)(■|■))c)■         fail dot
  52     |  4     (((■a)(■){■})c)■        fail dot
  53     |  4     (((■a)■)c)(■■)          fail dot
  54     |  4     (((■a)■)c)(■|■)         fail dot
  55     |  4     (((■a)■)c)(■){■}        fail dot
  56     |  4     ((((■■)a)b)■)■          fail dot
  57     |  4     ((((■|■)a)b)■)■         fail dot
  58     |  4     ((((■){■}a)b)■)■        fail dot
  59     |  4     (((■a)b)(■■))■          fail dot
  60     |  4     (((■a)b)(■|■))■         fail dot
  61     |  4     (((■a)b)(■){■})■        fail dot
  62     |  4     (((■a)b)■)(■■)          fail dot
  63     |  4     (((■a)b)■)(■|■)         fail dot
  64     |  4     (((■a)b)■)(■){■}        fail dot
  65     |  4     ((((■)a)b)c)■           fail dot
  66     |  4     (((((■■)■)a)b)c)■       fail dot
  67     |  4     (((((■|■)■)a)b)c)■      fail dot
  68     |  4     (((((■){■}■)a)b)c)■     fail dot
  69     |  4     ((((■■)a)b)c)(■■)       fail dot
  70     |  4     ((((■■)a)b)c)(■|■)      fail dot
  71     |  4     ((((■■)a)b)c)(■){■}     fail dot
  72     |  4     ((((■■|■)a)b)c)■        fail dot
  73     |  4     (((((■|■)|■)a)b)c)■     fail dot
  74     |  4     (((((■){■}|■)a)b)c)■    fail dot
  75     |  4     ((((■|■)a)b)c)(■■)      fail dot
  76     |  4     ((((■|■)a)b)c)(■|■)     fail dot
  77     |  4     ((((■|■)a)b)c)(■){■}    fail dot
  78     |  4     ((((■■){■}a)b)c)■       fail dot
  79     |  4     (((((■|■)){■}a)b)c)■    fail dot
  80     |  4     (((((■){■}){■}a)b)c)■   fail dot
  81     |  4     ((((■){■}a)b)c)(■■)     fail dot
  82     |  4     ((((■){■}a)b)c)(■|■)    fail dot
  83     |  4     ((((■){■}a)b)c)(■){■}     (((([∅]){0}a)b)c)([df[]){0,1}   
template: ((((■){■}a)b)c)(■){■} size: 5 holes: 6 time: 3.255208ms
longest: #mn#((((■){■}a)b)c)(■){■}#mn# size: #ms#5#ms# holes: #mh#6#mh# time: #mt#3.255208#mt#ms

Computed in:

  #c#222#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#4#d#

Finds the following solutions (and the corresponding fitness):

  4    (((([∅]){0}a)b)c)([df[]){0,1}

All done

last template: #t#((((■){■}a)b)c)(■){■}#t#
#num#83#num#
#dep#4#dep#
#t1#0#t1#
#t2#56#t2#
#t3#26#t3#
solution is #sol#(((([∅]){0}a)b)c)([df[]){0,1}#sol#
exception while checking
before exit
