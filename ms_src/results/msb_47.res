
Given the regular expression:

  ([a-zA-z]){2}([0-9]){6}

That that should match the strings:

  ✓ (0:11)   INM12345678
  ✓ (11:19)  RQ123456

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){2}([0-9]){6}        fail dot
  2      |  1     ([a-zA-z]){■}([0-9]){6} fail dotstar or empty
  3      |  1     ([a-zA-z]){2}(■){6}     fail dot
  4      |  1     ([a-zA-z]){2}([0-9]){■} fail dotstar or empty
  5      |  2     (■){■}([0-9]){6}        get a solution: ([Q12RIMN]){1,5}([0-9]){6}
add positive: INM00000000
add negative: 1000000
get a solution: ([Q12RIMN0]){2,5}([0-9]){6}
add positive: INM30000000
add negative: I0000000
  unsatisfiable SAT formula       
  6      |  2     (■){2}(■){6}            fail dot
  7      |  2     (■){2}([0-9]){■}        fail dot
  8      |  2     ■([0-9]){6}             fail dot
  9      |  2     (■■){2}([0-9]){6}       fail dot
  10     |  2     ((■|■)){2}([0-9]){6}    fail dot
  11     |  2     ((■){■}){2}([0-9]){6}     unsatisfiable SAT formula       
  12     |  2     ([a-zA-z]){■}(■){6}     fail dot
  13     |  2     ([a-zA-z]){■}([0-9]){■} get a solution: ([a-zA-z]){2,3}([0-9]){1,8}
add negative: AA0
get a solution: ([a-zA-z]){2,3}([0-9]){2,8}
add negative: IN00
get a solution: ([a-zA-z]){2,3}([0-9]){3,8}
add negative: RA000
get a solution: ([a-zA-z]){2,3}([0-9]){4,8}
add negative: RA0000
get a solution: ([a-zA-z]){2,3}([0-9]){5,8}
add negative: AA00000
get a solution: ([a-zA-z]){2,3}([0-9]){6,8}
add negative: AA000000
  unsatisfiable SAT formula       
  14     |  2     ([a-zA-z]){2}(■){■}       unsatisfiable SAT formula       
  15     |  2     ([a-zA-z]){2}■          fail dot
  16     |  2     ([a-zA-z]){2}(■■){6}    fail dot
  17     |  2     ([a-zA-z]){2}((■|■)){6} fail dot
  18     |  2     ([a-zA-z]){2}((■){■}){6}  unsatisfiable SAT formula       
  19     |  3     (■){■}(■){6}              unsatisfiable SAT formula       
  20     |  3     (■){■}([0-9]){■}        get a solution: ([Q12R3IMN]){2,5}([0-9]){6,8}
add negative: R1000000
get a solution: ([QR3IMN]){2,4}([0-9]){6,8}
add negative: R3000000
get a solution: ([QRIMN]){2,3}([0-9]){6,8}
add negative: MI000000
get a solution: ([Q1R3IMN]){3,5}([0-9]){0,8}
add positive: RQ000000
add negative: 111
  unsatisfiable SAT formula       
  21     |  3     (■■){■}([0-9]){6}       fail dot
  22     |  3     ((■|■)){■}([0-9]){6}    fail solve
  23     |  3     ((■){■}){■}([0-9]){6}     unsatisfiable SAT formula       
  24     |  3     (■){2}(■){■}            get a solution: ([QRIN]){2}([12345678M0]){6,9}
add positive: RQ900000
add negative: II000000
  unsatisfiable SAT formula       
  25     |  3     ■(■){6}                 fail dot
  26     |  3     (■){2}■                 fail dot
  27     |  3     (■■){2}(■){6}           fail dot
  28     |  3     ((■|■)){2}(■){6}        fail dot
  29     |  3     ((■){■}){2}(■){6}         unsatisfiable SAT formula       
  30     |  3     (■){2}(■■){6}           fail dot
  31     |  3     (■){2}((■|■)){6}        fail dot
  32     |  3     (■){2}((■){■}){6}         unsatisfiable SAT formula       
  33     |  3     ■([0-9]){■}             fail dot
  34     |  3     (■■){2}([0-9]){■}         unsatisfiable SAT formula       
  35     |  3     ((■|■)){2}([0-9]){■}    fail dot
  36     |  3     ((■){■}){2}([0-9]){■}     unsatisfiable SAT formula       
  37     |  3     (■■)([0-9]){6}          fail dot
  38     |  3     (■|■)([0-9]){6}         fail dot
  39     |  3     ((■■)■){2}([0-9]){6}    fail dot
  40     |  3     ((■|■)■){2}([0-9]){6}   fail dot
  41     |  3     ((■){■}■){2}([0-9]){6}  get a solution: (([13IMN0]){0,3}[Q2RN0]){2}([0-9]){6}
add positive: INM40000000
add negative: 00000000
  unsatisfiable SAT formula       
  42     |  3     ((■■|■)){2}([0-9]){6}   fail dot
  43     |  3     (((■|■)|■)){2}([0-9]){6}fail dot
  44     |  3     (((■){■}|■)){2}([0-9]){6}get a solution: ((([Q1R34IMN0]){2,4}|[QR2])){2}([0-9]){6}
add positive: INM50000000
add negative: R2000000
get a solution: ((([Q12R345IMN0]){2,3}|[QR])){2}([0-9]){6}
add positive: INM06000000
add negative: RR000000
  unsatisfiable SAT formula       
  45     |  3     ((■■){■}){2}([0-9]){6}  fail dot
  46     |  3     (((■|■)){■}){2}([0-9]){6}fail solve
  47     |  3     (((■){■}){■}){2}([0-9]){6}  unsatisfiable SAT formula       
  48     |  3     ([a-zA-z]){■}(■){■}       unsatisfiable SAT formula       
  49     |  3     ([a-zA-z]){■}■          fail dot
  50     |  3     ([a-zA-z]){■}(■■){6}    fail dot
  51     |  3     ([a-zA-z]){■}((■|■)){6} fail dot
  52     |  3     ([a-zA-z]){■}((■){■}){6}
5.032675743103027
timeout