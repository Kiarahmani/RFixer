
Given the regular expression:

  [1-9]([0-9])*

That that should match the strings:

  ✓ (0:11)   +9089098909
  ✓ (11:24)  +919089098909

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([0-9])*               get a solution: +([0-9])*
add positive: 
add negative: +
  2      |  1     [1-9](■)*               fail dotstar or empty
  3      |  1     [1-9]([0-9]){■}         fail dotstar or empty
  4      |  2     ■(■)*                   fail dot
  5      |  2     ■([0-9]){■}             fail dot
  6      |  2     (■■)([0-9])*            fail dot
  7      |  2     (■|■)([0-9])*           fail solve
  8      |  2     (■){■}([0-9])*            unsatisfiable SAT formula       
  9      |  2     [1-9](■){■}             fail dotstar or empty
  10     |  2     [1-9]■                  fail dotstar or empty
  11     |  3     (■■)(■)*                fail dot
  12     |  3     (■|■)(■)*               fail dot
  13     |  3     (■){■}(■)*                unsatisfiable SAT formula       
  14     |  3     ■(■■)*                  fail dot
  15     |  3     ■((■|■))*               fail dot
  16     |  3     ■((■){■})*              fail dot
  17     |  3     ■■                      fail dot
  18     |  3     (■■)([0-9]){■}          fail dot
  19     |  3     (■|■)([0-9]){■}         fail dot
  20     |  3     (■){■}([0-9]){■}          unsatisfiable SAT formula       
  21     |  3     (■)([0-9])*             fail dot
  22     |  3     ((■■)■)([0-9])*         fail dot
  23     |  3     ((■|■)■)([0-9])*        fail dot
  24     |  3     ((■){■}■)([0-9])*       fail dot
  25     |  3     (■■|■)([0-9])*          fail dot
  26     |  3     ((■|■)|■)([0-9])*       fail solve
  27     |  3     ((■){■}|■)([0-9])*        unsatisfiable SAT formula       
  28     |  3     (■■){■}([0-9])*         get a solution: ([19+0][890]){0,5}([0-9])*
add negative: +0
get a solution: ([1+0][89]){0,3}([0-9])*
add negative: +8
get a solution: ([1+]9){0,2}([0-9])*
add negative: +9
  unsatisfiable SAT formula       
  29     |  3     ((■|■)){■}([0-9])*      fail solve
  30     |  3     ((■){■}){■}([0-9])*     get a solution: (([189+0]){3}){0,1}([0-9])*
add negative: +++

5.0206708908081055
timeout