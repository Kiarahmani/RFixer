
Given the regular expression:

  (([a-zA-Z]){1})(([0-9]){3})

That that should match the strings:

  ✓ (0:4)    123d
  ✓ (4:8)    12d3
  ✓ (8:12)   99A9

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){1}([0-9]){3}        fail dotstar or empty
  2      |  1     ([a-zA-Z]){■}([0-9]){3} fail dotstar or empty
  3      |  1     ([a-zA-Z]){1}(■){3}     fail dotstar or empty
  4      |  1     ([a-zA-Z]){1}([0-9]){■} fail dotstar or empty
  5      |  2     (■){■}([0-9]){3}        fail dotstar or empty
  6      |  2     (■){1}(■){3}            get a solution: ([19]){1}([A23d9]){3}
add positive: A000
add negative: 1222
  unsatisfiable SAT formula       
  7      |  2     (■){1}([0-9]){■}        fail dot
  8      |  2     ■([0-9]){3}             fail dotstar or empty
  9      |  2     ([a-zA-Z]){■}(■){3}     fail dot
  10     |  2     ([a-zA-Z]){■}([0-9]){■} fail dotstar or empty
  11     |  2     ([a-zA-Z]){1}(■){■}     fail dotstar or empty
  12     |  2     ([a-zA-Z]){1}■          fail dotstar or empty
  13     |  3     (■){■}(■){3}              unsatisfiable SAT formula       
  14     |  3     (■){■}([0-9]){■}          unsatisfiable SAT formula       
  15     |  3     (■){1}(■){■}              unsatisfiable SAT formula       
  16     |  3     ■(■){3}                   unsatisfiable SAT formula       
  17     |  3     (■){1}■                 fail dot
  18     |  3     (■■){1}(■){3}           fail dot
  19     |  3     ((■|■)){1}(■){3}        fail solve
  20     |  3     ((■){■}){1}(■){3}         unsatisfiable SAT formula       
  21     |  3     (■){1}(■■){3}           fail dot
  22     |  3     (■){1}((■|■)){3}        fail solve
  23     |  3     (■){1}((■){■}){3}         unsatisfiable SAT formula       
  24     |  3     ■([0-9]){■}             fail dot
  25     |  3     (■■){1}([0-9]){■}       fail dot
  26     |  3     ((■|■)){1}([0-9]){■}    fail dot
  27     |  3     ((■){■}){1}([0-9]){■}     unsatisfiable SAT formula       
  28     |  3     ([a-zA-Z]){■}(■){■}       unsatisfiable SAT formula       
  29     |  3     ([a-zA-Z]){■}■          fail dot
  30     |  3     ([a-zA-Z]){■}(■■){3}    fail dot
  31     |  3     ([a-zA-Z]){■}((■|■)){3} fail dot
  32     |  3     ([a-zA-Z]){■}((■){■}){3}  unsatisfiable SAT formula       
  33     |  4     (■){■}(■){■}            get a solution: ([A123d90]){3}([3d90]){0,1}
add positive: A400
add negative: A0A
get a solution: ([A12490]){2}([1A3d490]){2,4}
add positive: B000
add negative: 0000
get a solution: ([A12B3d49]){1,3}([B3d90]){0,4}
add positive: C000
add negative: 1
get a solution: ([A12BC9]){1,3}([13Cd490]){1,4}
add positive: D000
add negative: A0
  unsatisfiable SAT formula       
  34     |  4     (■){■}■                   unsatisfiable SAT formula       
  35     |  4     (■■){■}(■){3}           fail dot
  36     |  4     ((■|■)){■}(■){3}        fail solve
  37     |  4     ((■){■}){■}(■){3}         unsatisfiable SAT formula       
  38     |  4     (■){■}(■■){3}           fail dot
  39     |  4     (■){■}((■|■)){3}        fail solve
  40     |  4     (■){■}((■){■}){3}         unsatisfiable SAT formula       
  41     |  4     (■■){■}([0-9]){■}         unsatisfiable SAT formula       
  42     |  4     ((■|■)){■}([0-9]){■}    fail solve
  43     |  4     ((■){■}){■}([0-9]){■}     unsatisfiable SAT formula       
  44     |  4     (■■){1}(■){■}           get a solution: ([A1BCD9][2490]){1}([A3d90]){2}
add positive: A100
add negative: 10AA
  unsatisfiable SAT formula       
  45     |  4     ((■|■)){1}(■){■}        fail solve
  46     |  4     ((■){■}){1}(■){■}         unsatisfiable SAT formula       
  47     |  4     (■){1}(■■){■}           fail dot
  48     |  4     (■){1}((■|■)){■}        fail solve
  49     |  4     (■){1}((■){■}){■}         unsatisfiable SAT formula       
  50     |  4     ■■                      fail dot
  51     |  4     (■■)(■){3}              fail dot
  52     |  4     (■|■)(■){3}             fail solve
  53     |  4     ■(■■){3}                fail dot
  54     |  4     ■((■|■)){3}             fail solve
  55     |  4     ■((■){■}){3}              unsatisfiable SAT formula       
  56     |  4     (■■){1}■                fail dot
  57     |  4     ((■|■)){1}■             fail dot
  58     |  4     ((■){■}){1}■              unsatisfiable SAT formula       
  59     |  4     (■){1}(■■)              fail dot
  60     |  4     (■){1}(■|■)             fail dot
  61     |  4     ((■■)■){1}(■){3}        fail dot
  62     |  4     ((■|■)■){1}(■){3}       fail dot
  63     |  4     ((■){■}■){1}(■){3}        unsatisfiable SAT formula       
  64     |  4     (■■){1}(■■){3}          fail dot
  65     |  4     (■■){1}((■|■)){3}       fail dot
  66     |  4     (■■){1}((■){■}){3}        unsatisfiable SAT formula       
  67     |  4     ((■■|■)){1}(■){3}         unsatisfiable SAT formula       
  68     |  4     (((■|■)|■)){1}(■){3}    fail solve
  69     |  4     (((■){■}|■)){1}(■){3}     unsatisfiable SAT formula       
  70     |  4     ((■|■)){1}(■■){3}       fail dot
  71     |  4     ((■|■)){1}((■|■)){3}    fail solve
  72     |  4     ((■|■)){1}((■){■}){3}     unsatisfiable SAT formula       
  73     |  4     ((■■){■}){1}(■){3}      fail dot
  74     |  4     (((■|■)){■}){1}(■){3}   fail solve
  75     |  4     (((■){■}){■}){1}(■){3}    unsatisfiable SAT formula       
  76     |  4     ((■){■}){1}(■■){3}      fail dot
  77     |  4     ((■){■}){1}((■|■)){3}   fail solve
  78     |  4     ((■){■}){1}((■){■}){3}    unsatisfiable SAT formula       
  79     |  4     (■){1}((■■)■){3}        fail dot
  80     |  4     (■){1}((■|■)■){3}       fail dot
  81     |  4     (■){1}((■){■}■){3}        unsatisfiable SAT formula       
  82     |  4     (■){1}((■■|■)){3}         unsatisfiable SAT formula       
  83     |  4     (■){1}(((■|■)|■)){3}    fail solve
  84     |  4     (■){1}(((■){■}|■)){3}     unsatisfiable SAT formula       
  85     |  4     (■){1}((■■){■}){3}      fail dot
  86     |  4     (■){1}(((■|■)){■}){3}   fail solve
  87     |  4     (■){1}(((■){■}){■}){3}  1.0208940505981445
timeout