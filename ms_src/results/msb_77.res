
Given the regular expression:

  (\d){4}

That that should match the strings:

  ✓ (0:7)    1/2,4/6

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){4}                  fail dot
  2      |  1     (\d){■}                 fail dotstar or empty
  3      |  2     (■){■}                  get a solution: ([1246,/]){1,7}
add positive: 0/0,0/0
add negative: ,
get a solution: ([1246,/0]){2,7}
add positive: 3/0,0/0
add negative: 0,
get a solution: ([12346,/0]){3,7}
add positive: 0/0,0/5
add negative: 0/,
get a solution: ([123456,/0]){4,7}
add positive: 7/0,0/0
add negative: ,,,,
get a solution: ([1234567,/0]){5,7}
add positive: 0/0,0/8
add negative: ,,,,,
get a solution: ([12345678,/0]){6,7}
add positive: 9/0,0/0
add negative: ,,,,,,
get a solution: ([,/0123456789]){7}
add positive: 00/0,0/0
add negative: ,,,,,,,
  unsatisfiable SAT formula       
  4      |  2     ■                       fail dot
  5      |  2     (■■){4}                 fail dot
  6      |  2     ((■|■)){4}              fail dot
  7      |  2     ((■){■}){4}               unsatisfiable SAT formula       
  8      |  3     (■■){■}                 fail dot
  9      |  3     ((■|■)){■}              fail solve
  10     |  3     ((■){■}){■}               unsatisfiable SAT formula       
  11     |  3     ■■                      fail dot
  12     |  3     (■|■)                   fail dot
  13     |  3     ((■■)■){4}              fail dot
  14     |  3     ((■|■)■){4}             fail dot
  15     |  3     ((■){■}■){4}            get a solution: (([1239,/0]){0,2}[45678/0]){4}
add positive: 0/4,0/1
add negative: ////
get a solution: (([,/0]){0,1}[1234567890]){4}
add positive: 10/0,0/0
add negative: 0000
  unsatisfiable SAT formula       
  16     |  3     ((■■|■)){4}               unsatisfiable SAT formula       
  17     |  3     (((■|■)|■)){4}          fail dot
  18     |  3     (((■){■}|■)){4}           unsatisfiable SAT formula       
  19     |  3     ((■■){■}){4}            fail dot
  20     |  3     (((■|■)){■}){4}         fail solve
  21     |  3     (((■){■}){■}){4}        
10.024867057800293
timeout