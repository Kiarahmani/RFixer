
Given the regular expression:

  [1-50]

That that should match the strings:

  ✓ (0:2)    06

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■                       fail dot
  2      |  2     ■■                      get a solution: 06
add positive: 1
  3      |  2     (■|■)                   fail dot
  4      |  2     (■){■}                  get a solution: ([160]){1,2}
add positive: 2
add negative: 0
  unsatisfiable SAT formula       
  5      |  3     (■■)■                   fail dot
  6      |  3     (■|■)■                  fail solve
  7      |  3     (■){■}■                 get a solution: (0){0,1}[126]
add positive: 3
get a solution: (0){0,1}[1236]
add positive: 4
get a solution: (0){0,1}[12346]
add positive: 5
get a solution: (0){0,1}[123456]
add positive: 7
get a solution: (0){0,1}[1234567]
add positive: 8
get a solution: (0){0,1}[12345678]
add positive: 9
get a solution: (0){0,1}[123456789]
add positive: 10
  unsatisfiable SAT formula       
  8      |  3     (■■|■)                  get a solution: ([10][60]|[12345789])
add positive: 6
add negative: 00
  unsatisfiable SAT formula       
  9      |  3     ((■|■)|■)               fail dot
  10     |  3     ((■){■}|■)                unsatisfiable SAT formula       
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
  22     |  4     ((■|■)|■)■              fail solve
  23     |  4     ((■){■}|■)■               unsatisfiable SAT formula       
  24     |  4     (■|■)(■■)               fail dot
  25     |  4     (■|■)(■|■)              fail solve
  26     |  4     (■|■)(■){■}               unsatisfiable SAT formula       
  27     |  4     (■■){■}■                fail dot
  28     |  4     ((■|■)){■}■             fail solve
  29     |  4     ((■){■}){■}■              unsatisfiable SAT formula       
  30     |  4     (■){■}(■■)              fail dot
  31     |  4     (■){■}(■|■)             fail solve
  32     |  4     (■){■}(■){■}              unsatisfiable SAT formula       
  33     |  4     ((■■)■|■)               fail dot
  34     |  4     ((■|■)■|■)              fail solve
  35     |  4     ((■){■}■|■)               unsatisfiable SAT formula       
  36     |  4     (■■|■■)                 fail dot
  37     |  4     (■■|(■|■))              fail solve
  38     |  4     (■■|(■){■})               unsatisfiable SAT formula       
  39     |  4     ((■■|■)|■)                unsatisfiable SAT formula       
  40     |  4     (((■|■)|■)|■)           fail dot
  41     |  4     (((■){■}|■)|■)            unsatisfiable SAT formula       
  42     |  4     ((■|■)|■■)                unsatisfiable SAT formula       
  43     |  4     ((■|■)|(■|■))           fail dot
  44     |  4     ((■|■)|(■){■})            unsatisfiable SAT formula       
  45     |  4     ((■■){■}|■)               unsatisfiable SAT formula       
  46     |  4     (((■|■)){■}|■)          fail solve
  47     |  4     (((■){■}){■}|■)           unsatisfiable SAT formula       
  48     |  4     ((■){■}|■■)               unsatisfiable SAT formula       
  49     |  4     ((■){■}|(■|■))          fail solve
  50     |  4     ((■){■}|(■){■})           unsatisfiable SAT formula       
  51     |  4     ((■■)■){■}              fail dot
  52     |  4     ((■|■)■){■}             fail dot
  53     |  4     ((■){■}■){■}              unsatisfiable SAT formula       
  54     |  4     ((■■|■)){■}               unsatisfiable SAT formula       
  55     |  4     (((■|■)|■)){■}          fail solve
  56     |  4     (((■){■}|■)){■}           unsatisfiable SAT formula       
  57     |  4     ((■■){■}){■}            fail dot
  58     |  4     (((■|■)){■}){■}         fail solve
  59     |  4     (((■){■}){■}){■}        10.232899188995361
timeout