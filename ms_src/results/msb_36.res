
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
  32     |  3     (■){2}((■){■}){6}       
2.017650842666626
timeout