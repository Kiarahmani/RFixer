
Given the regular expression:

  ([A-Z]){2}

That that should match the strings:

  ✓ (0:5)    HeLlo
  ✓ (5:10)   Hello
  ✓ (10:15)  HELLo
  ✓ (15:20)  HELLO
  ✓ (20:25)  heLLO

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){2}                  fail dot
  2      |  1     ([A-Z]){■}              fail dotstar or empty
  3      |  2     (■){■}                  get a solution: ([EeHhLlOo]){1,5}
add positive: AA
add negative: E
get a solution: ([AEeHhLlOo]){2,5}
add positive: AB
add negative: ee
  unsatisfiable SAT formula       
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
  15     |  3     ((■){■}■){2}            get a solution: (([EeHLl]){0,3}[ABEHhloO]){2}
add positive: LA
add negative: Ah
get a solution: (([EeHhLl]){0,3}[ABEHLloO]){2}
add positive: EC
add negative: lA
get a solution: (([EeHhLl]){0,3}[ABCEHLoO]){2}
add positive: AD
add negative: Ao
  unsatisfiable SAT formula       
  16     |  3     ((■■|■)){2}             fail dot
  17     |  3     (((■|■)|■)){2}          fail dot
  18     |  3     (((■){■}|■)){2}         get a solution: ((([EehLlOo]){2,4}|[ABCDEHL])){2}
add positive: AF
add negative: eeA
get a solution: ((([EehHlLOo]){3,4}|[ABCDEFHLO])){2}
add positive: AG
add negative: eeeA
get a solution: ((([EehHlLOo]){4}|[ABCDEFGHLO])){2}
add positive: EI
add negative: eeeeA
  unsatisfiable SAT formula       
  19     |  3     ((■■){■}){2}            fail dot
  20     |  3     (((■|■)){■}){2}         fail solve
  21     |  3     (((■){■}){■}){2}          unsatisfiable SAT formula       
  22     |  4     ((■■)■){■}              fail dot
  23     |  4     ((■|■)■){■}             fail dot
  24     |  4     ((■){■}■){■}              unsatisfiable SAT formula       
  25     |  4     ((■■|■)){■}             get a solution: (([AEeHL][ABCDEFGILlO]|[BCDFGhHIloO])){1,5}
add positive: BJ
add negative: B
get a solution: (([ABEeHL][ABCDEFGIJLlO]|[hHlo])){1,5}
add positive: HK
add negative: H
get a solution: (([ABEHhL][ABCDeEFGIJKLl]|[CDFGIJKloO])){1,4}
add positive: MA
add negative: l
  unsatisfiable SAT formula       
  26     |  4     (((■|■)|■)){■}          fail solve
  27     |  4     (((■){■}|■)){■}           unsatisfiable SAT formula       
  28     |  4     ((■■){■}){■}            fail dot
  29     |  4     (((■|■)){■}){■}         fail solve
  30     |  4     (((■){■}){■}){■}        
5.116909027099609
timeout