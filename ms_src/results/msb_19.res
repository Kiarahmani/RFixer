
Given the regular expression:

  [a-z][_][a-z]

That that should match the strings:

  ✓ (0:9)    blah_blah

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[_])[a-z]             fail dotstar or empty
  2      |  1     ([a-z]■)[a-z]           fail dot
  3      |  1     ([a-z][_])■             fail dotstar or empty
  4      |  2     (■■)[a-z]               fail dot
  5      |  2     (■[_])■                 fail dot
  6      |  2     ([a-z]■)■               fail dot
  7      |  2     ([a-z](■■))[a-z]        fail dot
  8      |  2     ([a-z](■|■))[a-z]       fail dot
  9      |  2     ([a-z](■){■})[a-z]      get a solution: ([a-z]([abhl_]){1,7})[a-z]
add positive: ac_a
add negative: aaa
get a solution: ([a-z]([abchl_]){2,7})[a-z]
add positive: a_d
add negative: a__a
  unsatisfiable SAT formula       
  10     |  3     (■■)■                   fail dot
  11     |  3     (■)[a-z]                fail dot
  12     |  3     ((■■)■)[a-z]            fail dot
  13     |  3     ((■|■)■)[a-z]           fail dot
  14     |  3     ((■){■}■)[a-z]            unsatisfiable SAT formula       
  15     |  3     ((■■)[_])■              fail dot
  16     |  3     ((■|■)[_])■             fail dot
  17     |  3     ((■){■}[_])■            fail dot
  18     |  3     (■[_])(■■)              fail dot
  19     |  3     (■[_])(■|■)             fail dot
  20     |  3     (■[_])(■){■}            fail dot
  21     |  3     ([a-z](■■))■            fail dot
  22     |  3     ([a-z](■|■))■           fail dot
  23     |  3     ([a-z](■){■})■            unsatisfiable SAT formula       
  24     |  3     ([a-z]■)(■■)            fail dot
  25     |  3     ([a-z]■)(■|■)           fail dot
  26     |  3     ([a-z]■)(■){■}            unsatisfiable SAT formula       
  27     |  3     ([a-z](■))[a-z]         fail dot
  28     |  3     ([a-z]((■■)■))[a-z]     fail dot
  29     |  3     ([a-z]((■|■)■))[a-z]    fail dot
  30     |  3     ([a-z]((■){■}■))[a-z]     unsatisfiable SAT formula       
  31     |  3     ([a-z](■■|■))[a-z]      
1.0165858268737793
timeout