
Given the regular expression:

  (([0-9]){1,3}|1000)

That that should match the strings:

  ✓ (0:5)    -1000

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){1,3}|((10)0)0)     fail dot
  2      |  1     (([0-9]){■}|((10)0)0)   fail dotstar or empty
  3      |  1     (([0-9]){1,3}|((■0)0)0) fail dot
  4      |  1     (([0-9]){1,3}|((1■)0)0) fail dotstar or empty
  5      |  1     (([0-9]){1,3}|((10)■)0) fail dotstar or empty
  6      |  1     (([0-9]){1,3}|((10)0)■) fail dotstar or empty
  7      |  2     ((■){■}|((10)0)0)       get a solution: (([1\-0]){1,5}|((10)0)0)
add positive: 2
add negative: -
  unsatisfiable SAT formula       
  8      |  2     ((■){1,3}|((■0)0)0)     fail dot
  9      |  2     ((■){1,3}|((1■)0)0)     fail dot
  10     |  2     ((■){1,3}|((10)■)0)     fail dot
  11     |  2     ((■){1,3}|((10)0)■)     fail dot
  12     |  2     ((■■){1,3}|((10)0)0)    fail dot
  13     |  2     (((■|■)){1,3}|((10)0)0) fail dot
  14     |  2     (((■){■}){1,3}|((10)0)0)  unsatisfiable SAT formula       
  15     |  2     (([0-9]){■}|((■0)0)0)   fail dot
  16     |  2     (([0-9]){■}|((1■)0)0)   fail dotstar or empty
  17     |  2     (([0-9]){■}|((10)■)0)   fail dotstar or empty
  18     |  2     (([0-9]){■}|((10)0)■)   fail dotstar or empty
  19     |  2     (([0-9]){1,3}|((■■)0)0) fail dot
  20     |  2     (([0-9]){1,3}|((■0)■)0) fail dot
  21     |  2     (([0-9]){1,3}|((■0)0)■) fail dot
  22     |  2     (([0-9]){1,3}|(((■■)0)0)0)get a solution: (([0-9]){1,3}|(((\-1)0)0)0)
add positive: -0
  23     |  2     (([0-9]){1,3}|(((■|■)0)0)0)fail dot
  24     |  2     (([0-9]){1,3}|(((■){■}0)0)0)fail dot
  25     |  2     (([0-9]){1,3}|((1■)■)0) fail dotstar or empty
  26     |  2     (([0-9]){1,3}|((1■)0)■) fail dotstar or empty
  27     |  2     (([0-9]){1,3}|((10)■)■) fail dotstar or empty
  28     |  3     ((■){■}|((■0)0)0)         unsatisfiable SAT formula       
  29     |  3     ((■){■}|((1■)0)0)         unsatisfiable SAT formula       
  30     |  3     ((■){■}|((10)■)0)         unsatisfiable SAT formula       
  31     |  3     ((■){■}|((10)0)■)         unsatisfiable SAT formula       
  32     |  3     ((■■){■}|((10)0)0)      fail dot
  33     |  3     (((■|■)){■}|((10)0)0)   fail solve
  34     |  3     (((■){■}){■}|((10)0)0)    unsatisfiable SAT formula       
  35     |  3     ((■){1,3}|((■■)0)0)     fail dot
  36     |  3     ((■){1,3}|((■0)■)0)     fail dot
  37     |  3     ((■){1,3}|((■0)0)■)     fail dot
  38     |  3     ((■■){1,3}|((■0)0)0)    fail dot
  39     |  3     (((■|■)){1,3}|((■0)0)0) fail dot
  40     |  3     (((■){■}){1,3}|((■0)0)0)  unsatisfiable SAT formula       
  41     |  3     ((■){1,3}|(((■■)0)0)0)    unsatisfiable SAT formula       
  42     |  3     ((■){1,3}|(((■|■)0)0)0) fail dot
  43     |  3     ((■){1,3}|(((■){■}0)0)0)  unsatisfiable SAT formula       
  44     |  3     ((■){1,3}|((1■)■)0)     fail dot
  45     |  3     ((■){1,3}|((1■)0)■)     fail dot
  46     |  3     ((■■){1,3}|((1■)0)0)    fail dot
  47     |  3     (((■|■)){1,3}|((1■)0)0) fail dot
  48     |  3     (((■){■}){1,3}|((1■)0)0)  unsatisfiable SAT formula       
  49     |  3     ((■){1,3}|((1(■■))0)0)  fail dot
  50     |  3     ((■){1,3}|((1(■|■))0)0) fail dot
  51     |  3     ((■){1,3}|((1(■){■})0)0)fail dot
  52     |  3     ((■){1,3}|((10)■)■)     fail dot
  53     |  3     ((■■){1,3}|((10)■)0)    fail dot
  54     |  3     (((■|■)){1,3}|((10)■)0) fail dot
  55     |  3     (((■){■}){1,3}|((10)■)0)  unsatisfiable SAT formula       
  56     |  3     ((■){1,3}|((10)(■■))0)  fail dot
  57     |  3     ((■){1,3}|((10)(■|■))0) fail dot
  58     |  3     ((■){1,3}|((10)(■){■})0)fail dot
  59     |  3     ((■■){1,3}|((10)0)■)    fail dot
  60     |  3     (((■|■)){1,3}|((10)0)■) fail dot
  61     |  3     (((■){■}){1,3}|((10)0)■)  unsatisfiable SAT formula       
  62     |  3     ((■){1,3}|((10)0)(■■))  fail dot
  63     |  3     ((■){1,3}|((10)0)(■|■)) fail dot
  64     |  3     ((■){1,3}|((10)0)(■){■})fail dot
  65     |  3     (((■■)■){1,3}|((10)0)0) fail dot
  66     |  3     (((■|■)■){1,3}|((10)0)0)fail dot
  67     |  3     (((■){■}■){1,3}|((10)0)0)get a solution: ((([1\-0]){0,4}[120]){1,3}|((10)0)0)

1.0217819213867188
timeout