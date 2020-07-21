
Given the regular expression:

  /[^0-9a-zA-Z]/

That that should match the strings:

  ✓ (0:7)    Unicode

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[^0-9a-zA-Z])/        fail dotstar or empty
  2      |  1     (/■)/                   fail dotstar or empty
  3      |  1     (/[^0-9a-zA-Z])■        fail dotstar or empty
  4      |  2     (■■)/                   fail dotstar or empty
  5      |  2     (■[^0-9a-zA-Z])■        fail dotstar or empty
  6      |  2     (/■)■                   fail dotstar or empty
  7      |  3     (■■)■                   fail dot
  8      |  3     (■)/                    fail dotstar or empty
  9      |  4     (■)■                    fail dot
  10     |  4     ((■■)■)■                fail dot
  11     |  4     ((■|■)■)■               fail dot
  12     |  4     ((■){■}■)■              get a solution: (([cUino]){1,5}d)e
add negative: cde
get a solution: (([cUino]){2,5}d)e
add negative: cUde
get a solution: (([cUino]){3,5}d)e
add negative: UUUde
get a solution: (([cUino]){4,5}d)e
add negative: UnUUde
get a solution: (([cUino]){5}d)e
add negative: cUUUUde
  unsatisfiable SAT formula       
  13     |  4     (■■)(■■)                fail dot
  14     |  4     (■■)(■|■)               fail dot
  15     |  4     (■■)(■){■}              get a solution: (Un)([cdeio]){5}
add negative: Unidccc
  unsatisfiable SAT formula       
  16     |  4     ■/                      fail dotstar or empty
  17     |  5     ■■                      fail dot
  18     |  5     ((■■))■                 fail dot
  19     |  5     ((■|■))■                fail dot
  20     |  5     ((■){■})■                 unsatisfiable SAT formula       
  21     |  5     ((■)■)■                 fail dot
  22     |  5     (((■■)■)■)■             fail dot
  23     |  5     (((■|■)■)■)■            fail dot
  24     |  5     (((■){■}■)■)■           get a solution: ((([cUin]){4}o)d)e
add negative: cUUUode
  unsatisfiable SAT formula       
  25     |  5     ((■■)(■■))■             fail dot
  26     |  5     ((■■)(■|■))■            fail dot
  27     |  5     ((■■)(■){■})■           get a solution: ((Un)([cdio]){4})e
add negative: Unidcce
  unsatisfiable SAT formula       
  28     |  5     ((■■)■)(■■)             fail dot
  29     |  5     ((■■)■)(■|■)            fail dot
  30     |  5     ((■■)■)(■){■}             unsatisfiable SAT formula       
  31     |  5     ((■■|■)■)■              fail dot
  32     |  5     (((■|■)|■)■)■           fail dot
  33     |  5     (((■){■}|■)■)■            unsatisfiable SAT formula       
  34     |  5     ((■|■)(■■))■            fail dot
  35     |  5     ((■|■)(■|■))■           fail dot
  36     |  5     ((■|■)(■){■})■            unsatisfiable SAT formula       
  37     |  5     ((■|■)■)(■■)            fail dot
  38     |  5     ((■|■)■)(■|■)           fail dot
  39     |  5     ((■|■)■)(■){■}            unsatisfiable SAT formula       
  40     |  5     ((■■){■}■)■             fail dot
  41     |  5     (((■|■)){■}■)■          fail solve
  42     |  5     (((■){■}){■}■)■           unsatisfiable SAT formula       
  43     |  5     ((■){■}(■■))■             unsatisfiable SAT formula       
  44     |  5     ((■){■}(■|■))■          fail solve
  45     |  5     ((■){■}(■){■})■           unsatisfiable SAT formula       
  46     |  5     ((■){■}■)(■■)             unsatisfiable SAT formula       
  47     |  5     ((■){■}■)(■|■)          fail solve
  48     |  5     ((■){■}■)(■){■}         get a solution: (([cdUino]){0,6}[ceo])([cdeino]){3,6}
add negative: cccc
get a solution: (([cdUino]){1,6}[ceo])([cdeino]){3,6}
add negative: ccccc
get a solution: (([cdUino]){2,6}[ceno])([cdeino]){3,6}
add negative: UUcccc
get a solution: (([cdUino]){3,6}[ceino])([cdeino]){3,6}
add negative: cUUcccc
get a solution: (([cdUino]){3,6}[ceino])([deino]){3}
add negative: cUUcddd
get a solution: (([Uino]){3,6}[ceino])([cdeino]){1,6}
add negative: iUUcc
get a solution: (([Uino]){3,6}[ceino])([cdeino]){2,6}
add negative: UUUccc
get a solution: (([dUino]){3,6}[ceino])([cdeino]){3,6}
add negative: dUUcccc
get a solution: (([Uino]){3,6}[ceino])([cdeino]){3,6}
add negative: UUUcccc
get a solution: (([dUino]){0,6}[cdeino])([deino]){3,6}
add negative: cddd
get a solution: (([dUino]){1,6}[ceino])([deino]){1,6}
add negative: dcd
get a solution: (([Uino]){1,6}[ceino])([deino]){1,6}
add negative: icd
get a solution: (([dUino]){1,6}[cdeino])([deino]){2,6}
add negative: dcdd
get a solution: (([Uino]){1,6}[cdeino])([deino]){2,6}
add negative: icdd
get a solution: (([dUino]){1,6}[cdeino])([deino]){3,6}
add negative: Ucddd
get a solution: (([dUino]){2,6}[ceino])([deino]){1,6}
add negative: UUcd
get a solution: (([dUino]){2,6}[cdeino])([deino]){2,6}
add negative: Unidd
get a solution: (([dUino]){2,6}[cdeino])([deino]){3,6}
add negative: Uncddd
get a solution: (([dUino]){3,6}[ceino])([deino]){1,6}
add negative: Unicd
get a solution: (([dUino]){3,6}[cdeino])([deino]){2,6}
add negative: dUUcdd
get a solution: (([Uino]){3,6}[cdeino])([deino]){2,6}
add negative: iUUcdd

2.0257568359375
timeout