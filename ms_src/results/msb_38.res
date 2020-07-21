
Given the regular expression:

  [brsuemN]

That that should match the strings:

  ✓ (0:3)    [6]
  ✓ (3:6)    [7]
  ✓ (6:9)    [8]

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■                       fail dot
  2      |  2     ■■                      fail dot
  3      |  2     (■|■)                   fail dot
  4      |  2     (■){■}                  get a solution: ([678[]]){1,3}
add positive: [0]
add negative: [
get a solution: ([678[]0]){2,3}
add positive: [1]
add negative: 00
get a solution: ([1678[]0]){3}
add positive: [2]
add negative: [00
  unsatisfiable SAT formula       
  5      |  3     (■■)■                   get a solution: ([[126780])]
add positive: [3]
get a solution: ([[1236780])]
add positive: [4]
get a solution: ([[12346780])]
add positive: [5]
get a solution: ([[123456780])]
add positive: [9]
get a solution: ([[1234567890])]
add positive: [00]
  6      |  3     (■|■)■                  fail dot
  7      |  3     (■){■}■                 get a solution: ([123456789[0]){2,3}]
add positive: [000]
add negative: [[]
  unsatisfiable SAT formula       
  8      |  3     (■■|■)                  fail dot
  9      |  3     ((■|■)|■)               fail dot
  10     |  3     ((■){■}|■)                unsatisfiable SAT formula       
  11     |  3     (■■){■}                 fail dot
  12     |  3     ((■|■)){■}              fail solve
  13     |  3     ((■){■}){■}               unsatisfiable SAT formula       
  14     |  4     (■)■                    fail dot
  15     |  4     ((■■)■)■                fail dot
  16     |  4     ((■|■)■)■               fail solve
  17     |  4     ((■){■}■)■              get a solution: (([[0]){1,3}[1234567890])]
add positive: [10]
add negative: 00]
  unsatisfiable SAT formula       
  18     |  4     (■■)(■■)                fail dot
  19     |  4     (■■)(■|■)               fail solve
  20     |  4     (■■)(■){■}                unsatisfiable SAT formula       
  21     |  4     (■■|■)■                 fail dot
  22     |  4     ((■|■)|■)■              fail dot
  23     |  4     ((■){■}|■)■               unsatisfiable SAT formula       
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
  53     |  4     ((■){■}■){■}            get a solution: (([1234567890]){0,3}[9[]]){2}
add positive: [0009]
add negative: [[
  unsatisfiable SAT formula       
  54     |  4     ((■■|■)){■}               unsatisfiable SAT formula       
  55     |  4     (((■|■)|■)){■}          fail solve
  56     |  4     (((■){■}|■)){■}           unsatisfiable SAT formula       
  57     |  4     ((■■){■}){■}            fail dot
  58     |  4     (((■|■)){■}){■}         fail solve
  59     |  4     (((■){■}){■}){■}        
2.0493550300598145
timeout