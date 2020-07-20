
Given the regular expression:

  [w\\][sww,\\\\\\\\]

That that should match the strings:

  ✓ (0:19)   lastname, firstname

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■[sww,\\\\\\\\]         fail dotstar or empty
  2      |  1     [w\\]■                  fail dotstar or empty
  3      |  2     ■■                      fail dot
  4      |  3     ■                       fail dot
  5      |  3     (■■)■                   fail dot
  6      |  3     (■|■)■                  fail dot
  7      |  3     (■){■}■                 get a solution: ([aefi,lmnrst ]){1,18}e
add positive: ,, ,
add negative: ,e
get a solution: ([aefi,lmnrst ]){2,18}[e,]
add positive:  ,  
add negative:   ,
get a solution: ([aefil,mnrst  ]){3,18}[e, ]
add positive:  , a
add negative:  ,,,
  unsatisfiable SAT formula       
  8      |  4     (■■)                    fail dot
  9      |  4     (■|■)                   fail dot
  10     |  4     (■){■}                    unsatisfiable SAT formula       
  11     |  4     (■)■                    fail dot
  12     |  4     ((■■)■)■                fail dot
  13     |  4     ((■|■)■)■               fail dot
  14     |  4     ((■){■}■)■              get a solution: (([aefil,mnrst  ]){2,17}[m ])[ae, ]
add positive:  , m
add negative:     
  unsatisfiable SAT formula       
  15     |  4     (■■)(■■)                fail dot
  16     |  4     (■■)(■|■)               fail dot
  17     |  4     (■■)(■){■}                unsatisfiable SAT formula       
  18     |  4     (■■|■)■                 fail dot
  19     |  4     ((■|■)|■)■              fail dot
  20     |  4     ((■){■}|■)■               unsatisfiable SAT formula       
  21     |  4     (■|■)(■■)               fail dot
  22     |  4     (■|■)(■|■)              fail dot
  23     |  4     (■|■)(■){■}               unsatisfiable SAT formula       
  24     |  4     (■■){■}■                fail dot
  25     |  4     ((■|■)){■}■             fail solve
  26     |  4     ((■){■}){■}■            
10.017093896865845
timeout