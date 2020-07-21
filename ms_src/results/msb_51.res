
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
add positive: 3
add negative: 0-0
  unsatisfiable SAT formula       
  68     |  3     (((■■|■)){1,3}|((10)0)0)  unsatisfiable SAT formula       
  69     |  3     ((((■|■)|■)){1,3}|((10)0)0)fail dot
  70     |  3     ((((■){■}|■)){1,3}|((10)0)0)  unsatisfiable SAT formula       
  71     |  3     (((■■){■}){1,3}|((10)0)0)fail dot
  72     |  3     ((((■|■)){■}){1,3}|((10)0)0)fail solve
  73     |  3     ((((■){■}){■}){1,3}|((10)0)0)  unsatisfiable SAT formula       
  74     |  3     (([0-9]){■}|((■■)0)0)   fail dotstar or empty
  75     |  3     (([0-9]){■}|((■0)■)0)   fail dotstar or empty
  76     |  3     (([0-9]){■}|((■0)0)■)   fail dotstar or empty
  77     |  3     (([0-9]){■}|(((■■)0)0)0)fail dot
  78     |  3     (([0-9]){■}|(((■|■)0)0)0)fail dot
  79     |  3     (([0-9]){■}|(((■){■}0)0)0)fail dot
  80     |  3     (([0-9]){■}|((1■)■)0)   fail dotstar or empty
  81     |  3     (([0-9]){■}|((1■)0)■)   fail dotstar or empty
  82     |  3     (([0-9]){■}|((10)■)■)   fail dotstar or empty
  83     |  3     (([0-9]){1,3}|((■■)■)0) fail dot
  84     |  3     (([0-9]){1,3}|((■■)0)■) fail dot
  85     |  3     (([0-9]){1,3}|((■)0)0)  fail dotstar or empty
  86     |  3     (([0-9]){1,3}|(((■■)■)0)0)fail dot
  87     |  3     (([0-9]){1,3}|(((■|■)■)0)0)fail dot
  88     |  3     (([0-9]){1,3}|(((■){■}■)0)0)fail dot
  89     |  3     (([0-9]){1,3}|((■0)■)■) fail dot
  90     |  3     (([0-9]){1,3}|(((■■)0)■)0)fail dot
  91     |  3     (([0-9]){1,3}|(((■|■)0)■)0)fail dot
  92     |  3     (([0-9]){1,3}|(((■){■}0)■)0)fail dot
  93     |  3     (([0-9]){1,3}|((■0)(■■))0)fail dot
  94     |  3     (([0-9]){1,3}|((■0)(■|■))0)fail dot
  95     |  3     (([0-9]){1,3}|((■0)(■){■})0)fail dot
  96     |  3     (([0-9]){1,3}|(((■■)0)0)■)fail dot
  97     |  3     (([0-9]){1,3}|(((■|■)0)0)■)fail dot
  98     |  3     (([0-9]){1,3}|(((■){■}0)0)■)fail dot
  99     |  3     (([0-9]){1,3}|((■0)0)(■■))fail dot
  100    |  3     (([0-9]){1,3}|((■0)0)(■|■))fail dot
  101    |  3     (([0-9]){1,3}|((■0)0)(■){■})fail dot
  102    |  3     (([0-9]){1,3}|(((■)0)0)0)fail dotstar or empty
  103    |  3     (([0-9]){1,3}|((((■■)■)0)0)0)fail dot
  104    |  3     (([0-9]){1,3}|((((■|■)■)0)0)0)fail solve
  105    |  3     (([0-9]){1,3}|((((■){■}■)0)0)0)fail dot
  106    |  3     (([0-9]){1,3}|(((■■|■)0)0)0)fail dot
  107    |  3     (([0-9]){1,3}|((((■|■)|■)0)0)0)fail dot
  108    |  3     (([0-9]){1,3}|((((■){■}|■)0)0)0)fail dot
  109    |  3     (([0-9]){1,3}|(((■■){■}0)0)0)fail dot
  110    |  3     (([0-9]){1,3}|((((■|■)){■}0)0)0)fail dot
  111    |  3     (([0-9]){1,3}|((((■){■}){■}0)0)0)fail dot
  112    |  3     (([0-9]){1,3}|((1■)■)■) fail dotstar or empty
  113    |  4     ((■){■}|((■■)0)0)         unsatisfiable SAT formula       
  114    |  4     ((■){■}|((■0)■)0)         unsatisfiable SAT formula       
  115    |  4     ((■){■}|((■0)0)■)         unsatisfiable SAT formula       
  116    |  4     ((■■){■}|((■0)0)0)      fail dot
  117    |  4     (((■|■)){■}|((■0)0)0)   fail solve
  118    |  4     (((■){■}){■}|((■0)0)0)    unsatisfiable SAT formula       
  119    |  4     ((■){■}|(((■■)0)0)0)      unsatisfiable SAT formula       
  120    |  4     ((■){■}|(((■|■)0)0)0)   fail solve
  121    |  4     ((■){■}|(((■){■}0)0)0)    unsatisfiable SAT formula       
  122    |  4     ((■){■}|((1■)■)0)         unsatisfiable SAT formula       
  123    |  4     ((■){■}|((1■)0)■)         unsatisfiable SAT formula       
  124    |  4     ((■■){■}|((1■)0)0)      fail dot
  125    |  4     (((■|■)){■}|((1■)0)0)   fail solve
  126    |  4     (((■){■}){■}|((1■)0)0)    unsatisfiable SAT formula       
  127    |  4     ((■){■}|((1(■■))0)0)      unsatisfiable SAT formula       
  128    |  4     ((■){■}|((1(■|■))0)0)   fail solve
  129    |  4     ((■){■}|((1(■){■})0)0)    unsatisfiable SAT formula       
  130    |  4     ((■){■}|((10)■)■)         unsatisfiable SAT formula       
  131    |  4     ((■■){■}|((10)■)0)      fail dot
  132    |  4     (((■|■)){■}|((10)■)0)   fail solve
  133    |  4     (((■){■}){■}|((10)■)0)    unsatisfiable SAT formula       
  134    |  4     ((■){■}|((10)(■■))0)      unsatisfiable SAT formula       
  135    |  4     ((■){■}|((10)(■|■))0)   fail solve
  136    |  4     ((■){■}|((10)(■){■})0)    unsatisfiable SAT formula       
  137    |  4     ((■■){■}|((10)0)■)      fail dot
  138    |  4     (((■|■)){■}|((10)0)■)   fail solve
  139    |  4     (((■){■}){■}|((10)0)■)    unsatisfiable SAT formula       
  140    |  4     ((■){■}|((10)0)(■■))      unsatisfiable SAT formula       
  141    |  4     ((■){■}|((10)0)(■|■))   fail solve
  142    |  4     ((■){■}|((10)0)(■){■})    unsatisfiable SAT formula       
  143    |  4     (((■■)■){■}|((10)0)0)   fail dot
  144    |  4     (((■|■)■){■}|((10)0)0)  fail dot
  145    |  4     (((■){■}■){■}|((10)0)0)   unsatisfiable SAT formula       
  146    |  4     (((■■|■)){■}|((10)0)0)    unsatisfiable SAT formula       
  147    |  4     ((((■|■)|■)){■}|((10)0)0)fail solve
  148    |  4     ((((■){■}|■)){■}|((10)0)0)  unsatisfiable SAT formula       
  149    |  4     (((■■){■}){■}|((10)0)0) fail dot
  150    |  4     ((((■|■)){■}){■}|((10)0)0)fail solve
  151    |  4     ((((■){■}){■}){■}|((10)0)0)
10.268720149993896
timeout