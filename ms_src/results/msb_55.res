
Given the regular expression:

  [aehooPrRsttU::]

That that should match the strings:

  ✓ (0:11)   [a-zA-Z0-9]

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■                       fail dot
  2      |  2     ■■                      fail dot
  3      |  2     (■|■)                   fail dot
  4      |  2     (■){■}                  get a solution: ([Aa\-9zZ[]0]){1,11}
add positive: [ ]
add negative: -
get a solution: ([Aa\-9zZ[]0 ]){2,11}
add positive: []
add negative:   
get a solution: ([Aa\-9zZ[]0 ]){3,11}
add positive: []
add negative:    
  unsatisfiable SAT formula       
  5      |  3     (■■)■                   fail dot
  6      |  3     (■|■)■                  fail dot
  7      |  3     (■){■}■                 get a solution: ([Aa\-9zZ[0 ]){1,10}]
add positive: []
add negative:  ]
  unsatisfiable SAT formula       
  8      |  3     (■■|■)                  fail dot
  9      |  3     ((■|■)|■)               fail dot
  10     |  3     ((■){■}|■)                unsatisfiable SAT formula       
  11     |  3     (■■){■}                 fail dot
  12     |  3     ((■|■)){■}              fail solve
  13     |  3     ((■){■}){■}               unsatisfiable SAT formula       
  14     |  4     (■)■                    fail dot
  15     |  4     ((■■)■)■                fail dot
  16     |  4     ((■|■)■)■               fail dot
  17     |  4     ((■){■}■)■                unsatisfiable SAT formula       
  18     |  4     (■■)(■■)                fail dot
  19     |  4     (■■)(■|■)               fail dot
  20     |  4     (■■)(■){■}              get a solution: ([[a] ])([A\-9zZ]0]){0,9}
add positive: []
add negative: [ 
  unsatisfiable SAT formula       
  21     |  4     (■■|■)■                 fail dot
  22     |  4     ((■|■)|■)■              fail dot
  23     |  4     ((■){■}|■)■             get a solution: (([Aa0\-9zZ[ ]){2,10}|[)]
add positive: []
add negative: [[]
  unsatisfiable SAT formula       
  24     |  4     (■|■)(■■)               fail dot
  25     |  4     (■|■)(■|■)              fail dot
  26     |  4     (■|■)(■){■}               unsatisfiable SAT formula       
  27     |  4     (■■){■}■                fail dot
  28     |  4     ((■|■)){■}■             fail solve
  29     |  4     ((■){■}){■}■              unsatisfiable SAT formula       
  30     |  4     (■){■}(■■)                unsatisfiable SAT formula       
  31     |  4     (■){■}(■|■)             fail solve
  32     |  4     (■){■}(■){■}              unsatisfiable SAT formula       
  33     |  4     ((■■)■|■)               fail dot
  34     |  4     ((■|■)■|■)              fail dot
  35     |  4     ((■){■}■|■)               unsatisfiable SAT formula       
  36     |  4     (■■|■■)                 fail dot
  37     |  4     (■■|(■|■))              fail dot
  38     |  4     (■■|(■){■})               unsatisfiable SAT formula       
  39     |  4     ((■■|■)|■)              fail dot
  40     |  4     (((■|■)|■)|■)           fail dot
  41     |  4     (((■){■}|■)|■)            unsatisfiable SAT formula       
  42     |  4     ((■|■)|■■)              fail dot
  43     |  4     ((■|■)|(■|■))           fail dot
  44     |  4     ((■|■)|(■){■})            unsatisfiable SAT formula       
  45     |  4     ((■■){■}|■)             fail dot
  46     |  4     (((■|■)){■}|■)          fail solve
  47     |  4     (((■){■}){■}|■)           unsatisfiable SAT formula       
  48     |  4     ((■){■}|■■)               unsatisfiable SAT formula       
  49     |  4     ((■){■}|(■|■))          fail solve
  50     |  4     ((■){■}|(■){■})           unsatisfiable SAT formula       
  51     |  4     ((■■)■){■}              fail dot
  52     |  4     ((■|■)■){■}             fail dot
  53     |  4     ((■){■}■){■}            get a solution: (([Aa0\-9zZ ]){0,9}[a9[]]){2}
add positive: []
add negative: [[
  unsatisfiable SAT formula       
  54     |  4     ((■■|■)){■}               unsatisfiable SAT formula       
  55     |  4     (((■|■)|■)){■}          fail solve
  56     |  4     (((■){■}|■)){■}         
20.036797046661377
timeout