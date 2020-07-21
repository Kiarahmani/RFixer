
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
  10     |  3     ((■){■}){■}             
1.0147809982299805
timeout