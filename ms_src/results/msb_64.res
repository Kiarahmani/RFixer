
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
  43     |  4     ((■){■}){■}([0-9]){■}   
1.0176301002502441
timeout