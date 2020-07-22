
Given the regular expression:

  ([A-Z]){2}

That that should match the strings:

  ✓ (0:5)    HellO
  ✓ (5:10)   heLLO
  ✓ (10:15)  HELLO
  ✓ (15:20)  HELLo
  ✓ (20:25)  HeLlo

And reject the strings:

  ✗ (25:30)  Hello
  ✗ (30:35)  hello
  ✗ (35:40)  Hello

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){2}                  fail dot
  2      |  1     ([A-Z]){■}              fail dotstar or empty
  3      |  2     (■){■}                    unsatisfiable SAT formula       
  4      |  2     ■                       fail dot
  5      |  2     (■■){2}                 fail dot
  6      |  2     ((■|■)){2}              fail dot
  7      |  2     ((■){■}){2}               unsatisfiable SAT formula       
  8      |  3     (■■){■}                 fail dot
  9      |  3     ((■|■)){■}              fail solve
  10     |  3     ((■){■}){■}               unsatisfiable SAT formula       
  11     |  3     ■■                      fail dot
  12     |  3     (■|■)                   fail dot
  13     |  3     ((■■)■){2}              fail dot
  14     |  3     ((■|■)■){2}             fail dot
  15     |  3     ((■){■}■){2}              unsatisfiable SAT formula       
  16     |  3     ((■■|■)){2}             fail dot
  17     |  3     (((■|■)|■)){2}          fail dot
  18     |  3     (((■){■}|■)){2}           unsatisfiable SAT formula       
  19     |  3     ((■■){■}){2}            fail dot
  20     |  3     (((■|■)){■}){2}         fail solve
  21     |  3     (((■){■}){■}){2}          unsatisfiable SAT formula       
  22     |  4     ((■■)■){■}              fail dot
  23     |  4     ((■|■)■){■}             fail dot
  24     |  4     ((■){■}■){■}              unsatisfiable SAT formula       
  25     |  4     ((■■|■)){■}             get a solution: (([eHLl][LO]|[eEhHloO])){1,4}
add positive: EA
add negative: e
get a solution: (([eHLl][LO]|[AeEhHloO])){2,4}
add positive: AL
add negative: ee
get a solution: (([EHhLl][elLoO]|[AEHLO])){2,5}
add positive: AB
add negative: heA
get a solution: (([AEHhLl][ABelLoO]|[BEhHLO])){1,3}
add positive: CA
add negative: B
get a solution: (([ACEHhLl][ABelLo]|[ChHLO])){0,4}
add positive: CD
add negative: 
get a solution: (([ACEHhLl][ABDEelLo]|[CELO])){1,4}
add positive: OB
add negative: C
get a solution: (([ACEHhLlO][ABDEelLoO]|[DEhHLO])){1,3}
add positive: AC
add negative: D
get a solution: (([ACEHhLlO][ABCDelLo]|[hHLO])){1,4}
add positive: AE
add negative: h
get a solution: (([ACEHhLlO][ABCDEelLoO]|[EHLO])){1,5}
add positive: EF
add negative: E
get a solution: (([ACEHhLlO][ABCDEeFlLo]|[FLO])){1,3}
add positive: AG
add negative: F
get a solution: (([ACEHhLlO][ABCDEeFGlLoO]|[GHLO])){1,4}
add positive: BA
add negative: G
get a solution: (([ABCEHhLlO][ABCDEeFGlLo]|[LO])){1,3}
add positive: DA
add negative: L
  unsatisfiable SAT formula       
  26     |  4     (((■|■)|■)){■}          fail solve
  27     |  4     (((■){■}|■)){■}           unsatisfiable SAT formula       
  28     |  4     ((■■){■}){■}            fail dot
  29     |  4     (((■|■)){■}){■}         fail solve
  30     |  4     (((■){■}){■}){■}        
5.144275188446045
timeout