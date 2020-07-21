
Given the regular expression:

  \+([0-9])+

That that should match the strings:

  ✓ (0:10)   9946546543

And reject the strings:

  ✗ (10:13)  +44
  ✗ (13:15)  +2
  ✗ (15:26)  +0046546543
  ✗ (26:36)  +946546543
  ✗ (36:38)  +1

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([0-9])+               get a solution: 9([0-9])+
add positive: +10
add negative: 90
  unsatisfiable SAT formula       
  2      |  1     \+(■)+                  fail dotstar or empty
  3      |  1     \+([0-9]){■}            fail dotstar or empty
  4      |  2     ■(■)+                     unsatisfiable SAT formula       
  5      |  2     ■([0-9]){■}               unsatisfiable SAT formula       
  6      |  2     (■■)([0-9])+              unsatisfiable SAT formula       
  7      |  2     (■|■)([0-9])+           fail solve
  8      |  2     (■){■}([0-9])+            unsatisfiable SAT formula       
  9      |  2     \+(■){■}                fail dotstar or empty
  10     |  2     \+■                     fail dotstar or empty
  11     |  3     (■■)(■)+                  unsatisfiable SAT formula       
  12     |  3     (■|■)(■)+               fail solve
  13     |  3     (■){■}(■)+                unsatisfiable SAT formula       
  14     |  3     ■(■■)+                  fail dot
  15     |  3     ■((■|■))+               fail solve
  16     |  3     ■((■){■})+                unsatisfiable SAT formula       
  17     |  3     ■■                      fail dot
  18     |  3     (■■)([0-9]){■}            unsatisfiable SAT formula       
  19     |  3     (■|■)([0-9]){■}         fail solve
  20     |  3     (■){■}([0-9]){■}          unsatisfiable SAT formula       
  21     |  3     (■)([0-9])+               unsatisfiable SAT formula       
  22     |  3     ((■■)■)([0-9])+         fail dot
  23     |  3     ((■|■)■)([0-9])+        fail solve
  24     |  3     ((■){■}■)([0-9])+         unsatisfiable SAT formula       
  25     |  3     (■■|■)([0-9])+            unsatisfiable SAT formula       
  26     |  3     ((■|■)|■)([0-9])+       fail solve
  27     |  3     ((■){■}|■)([0-9])+        unsatisfiable SAT formula       
  28     |  3     (■■){■}([0-9])+           unsatisfiable SAT formula       
  29     |  3     ((■|■)){■}([0-9])+      fail solve
  30     |  3     ((■){■}){■}([0-9])+       unsatisfiable SAT formula       
  31     |  4     (■■)(■){■}                unsatisfiable SAT formula       
  32     |  4     (■)(■)+                   unsatisfiable SAT formula       
  33     |  4     ((■■)■)(■)+             fail dot
  34     |  4     ((■|■)■)(■)+            fail solve
  35     |  4     ((■){■}■)(■)+             unsatisfiable SAT formula       
  36     |  4     (■■)(■■)+               fail dot
  37     |  4     (■■)((■|■))+            fail solve
  38     |  4     (■■)((■){■})+             unsatisfiable SAT formula       
  39     |  4     (■|■)(■){■}               unsatisfiable SAT formula       
  40     |  4     (■■|■)(■)+                unsatisfiable SAT formula       
  41     |  4     ((■|■)|■)(■)+           fail solve
  42     |  4     ((■){■}|■)(■)+            unsatisfiable SAT formula       
  43     |  4     (■|■)(■■)+              fail dot
  44     |  4     (■|■)((■|■))+           fail solve
  45     |  4     (■|■)((■){■})+            unsatisfiable SAT formula       
  46     |  4     (■){■}(■){■}              unsatisfiable SAT formula       
  47     |  4     (■■){■}(■)+               unsatisfiable SAT formula       
  48     |  4     ((■|■)){■}(■)+          fail solve
  49     |  4     ((■){■}){■}(■)+           unsatisfiable SAT formula       
  50     |  4     (■){■}(■■)+               unsatisfiable SAT formula       
  51     |  4     (■){■}((■|■))+          fail solve
  52     |  4     (■){■}((■){■})+           unsatisfiable SAT formula       
  53     |  4     ■((■■)■)+               fail dot
  54     |  4     ■((■|■)■)+              fail dot
  55     |  4     ■((■){■}■)+               unsatisfiable SAT formula       
  56     |  4     ■(■(■■))+               fail dot
  57     |  4     ■(■(■|■))+              fail dot
  58     |  4     ■(■(■){■})+               unsatisfiable SAT formula       
  59     |  4     ■((■■|■))+                unsatisfiable SAT formula       
  60     |  4     ■(((■|■)|■))+           fail solve
  61     |  4     ■(((■){■}|■))+          
5.0174689292907715
timeout