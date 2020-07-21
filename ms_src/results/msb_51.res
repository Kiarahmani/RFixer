
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
  18     |  2     ([a-zA-z]){2}((■){■}){6}
1.0201630592346191
timeout