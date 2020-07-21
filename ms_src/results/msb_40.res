
Given the regular expression:

  [0-6]

That that should match the strings:

  ✓ (0:2)    .5
  ✓ (2:5)    1.5

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■                       fail dot
  2      |  2     ■■                      fail dot
  3      |  2     (■|■)                   fail dot
  4      |  2     (■){■}                  get a solution: ([1\.5]){1,3}
add positive: 6
add negative: .
  unsatisfiable SAT formula       
  5      |  3     (■■)■                   fail dot
  6      |  3     (■|■)■                  fail dot
  7      |  3     (■){■}■                 get a solution: ([1\.]){0,2}[56]
add positive: 1
add negative: .6
  unsatisfiable SAT formula       
  8      |  3     (■■|■)                  fail dot
  9      |  3     ((■|■)|■)               fail dot
  10     |  3     ((■){■}|■)              get a solution: (([1\.5]){2,3}|[16])
add positive: 0
add negative: ..
  unsatisfiable SAT formula       
  11     |  3     (■■){■}                 fail dot
  12     |  3     ((■|■)){■}              fail solve
  13     |  3     ((■){■}){■}               unsatisfiable SAT formula       
  14     |  4     (■)■                    fail dot
  15     |  4     ((■■)■)■                fail dot
  16     |  4     ((■|■)■)■               fail dot
  17     |  4     ((■){■}■)■              fail dot
  18     |  4     (■■)(■■)                fail dot
  19     |  4     (■■)(■|■)               fail dot
  20     |  4     (■■)(■){■}              fail dot
  21     |  4     (■■|■)■                 fail dot
  22     |  4     ((■|■)|■)■              fail dot
  23     |  4     ((■){■}|■)■               unsatisfiable SAT formula       
  24     |  4     (■|■)(■■)               fail dot
  25     |  4     (■|■)(■|■)              fail dot
  26     |  4     (■|■)(■){■}               unsatisfiable SAT formula       
  27     |  4     (■■){■}■                fail dot
  28     |  4     ((■|■)){■}■             fail solve
  29     |  4     ((■){■}){■}■              unsatisfiable SAT formula       
  30     |  4     (■){■}(■■)              fail dot
  31     |  4     (■){■}(■|■)             fail solve
  32     |  4     (■){■}(■){■}              unsatisfiable SAT formula       
  33     |  4     ((■■)■|■)               fail dot
  34     |  4     ((■|■)■|■)              fail dot
  35     |  4     ((■){■}■|■)             get a solution: (([1\.]){1,2}5|[160])
add positive: 2
add negative: 15
  unsatisfiable SAT formula       
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
  53     |  4     ((■){■}■){■}              unsatisfiable SAT formula       
  54     |  4     ((■■|■)){■}             get a solution: ((\.5|[1260])){1,2}
add positive: 3
add negative: 00
  unsatisfiable SAT formula       
  55     |  4     (((■|■)|■)){■}          fail solve
  56     |  4     (((■){■}|■)){■}           unsatisfiable SAT formula       
  57     |  4     ((■■){■}){■}            fail dot
  58     |  4     (((■|■)){■}){■}         fail solve
  59     |  4     (((■){■}){■}){■}        
2.061161994934082
timeout