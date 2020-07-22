
Given the regular expression:

  ([0-9]){4}

That that should match the strings:

  ✓ (0:7)    . 1900.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){4}                  fail dot
  2      |  1     ([0-9]){■}              fail dotstar or empty
  3      |  2     (■){■}                  get a solution: ([1\.90 ]){1,7}
add positive: .2000.
add negative:  
get a solution: ([12\.90 ]){2,7}
add positive: .3000.
add negative:   
get a solution: ([12\.390 ]){3,7}
add positive: .4000.
add negative: . .
get a solution: ([12\.3490 ]){4,7}
add positive: .5000.
add negative:     
get a solution: ([12\.34590 ]){5,7}
add positive: .0060.
add negative: ..   
get a solution: ([12\.345690 ]){6,7}
add positive: .0070.
add negative:       
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
  15     |  3     ((■){■}■){4}            get a solution: (([12\.3456790 ]){0,3}[12\.3456790]){4}
add positive: .8000.
add negative: .000
  unsatisfiable SAT formula       
  16     |  3     ((■■|■)){4}             get a solution: (([1\.90][2\.345890 ]|[1670])){4}
add positive: .1000.
add negative: 0000
get a solution: (([12\.345780][\.90 ]|[12\.345678])){4}
add positive: .9616.
add negative: .1..
get a solution: (([12\.3456780][1\.690 ]|[2\.3456789])){4}
add positive: .0999.
add negative: .222
get a solution: (([012\.3456789 ][1\.690 ]|[\.3456789])){4}
add positive: .6322.
add negative: 3...
get a solution: (([012\.3456789 ][12\.390 ]|[\.456789])){4}
add positive: .4444.
add negative: ....
  unsatisfiable SAT formula       
  17     |  3     (((■|■)|■)){4}          fail dot
  18     |  3     (((■){■}|■)){4}           unsatisfiable SAT formula       
  19     |  3     ((■■){■}){4}            fail dot
  20     |  3     (((■|■)){■}){4}         fail solve
  21     |  3     (((■){■}){■}){4}        
5.018315076828003
timeout