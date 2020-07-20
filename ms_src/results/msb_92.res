
Given the regular expression:

  [1-9](\d)*(,(\d)+)?

That that should match the strings:

  ✓ (0:4)    0,01
  ✓ (4:9)    0,001

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■(\d)*)(,(\d)+)?       get a solution: (0(\d)*)(,(\d)+)?
add positive: 1
get a solution: ([10](\d)*)(,(\d)+)?
add positive: 2
get a solution: ([120](\d)*)(,(\d)+)?
add positive: 3
get a solution: ([1230](\d)*)(,(\d)+)?
add positive: 4
get a solution: ([12340](\d)*)(,(\d)+)?
add positive: 5
get a solution: ([123450](\d)*)(,(\d)+)?
add positive: 6
get a solution: ([1234560](\d)*)(,(\d)+)?
add positive: 7
get a solution: ([12345670](\d)*)(,(\d)+)?
add positive: 8
get a solution: ([123456780](\d)*)(,(\d)+)?
add positive: 9
get a solution: ([1234567890](\d)*)(,(\d)+)?
add positive: +0
get a solution: ([123456789+0](\d)*)(,(\d)+)?
add positive: -0
add negative: +
  unsatisfiable SAT formula       
  2      |  1     ([1-9](■)*)(,(\d)+)?    fail dotstar or empty
  3      |  1     ([1-9](\d){■})(,(\d)+)? fail dotstar or empty
  4      |  1     ([1-9](\d)*)(■(\d)+)?   fail dotstar or empty
  5      |  1     ([1-9](\d)*)(,(■)+)?    fail dotstar or empty
  6      |  1     ([1-9](\d)*)(,(\d){■})? fail dotstar or empty
  7      |  1     ([1-9](\d)*)(,(\d)+){■} fail dotstar or empty
  8      |  2     (■(■)*)(,(\d)+)?          unsatisfiable SAT formula       
  9      |  2     (■(\d){■})(,(\d)+)?       unsatisfiable SAT formula       
  10     |  2     (■(\d)*)(■(\d)+)?         unsatisfiable SAT formula       
  11     |  2     (■(\d)*)(,(■)+)?          unsatisfiable SAT formula       
  12     |  2     (■(\d)*)(,(\d){■})?       unsatisfiable SAT formula       
  13     |  2     (■(\d)*)(,(\d)+){■}       unsatisfiable SAT formula       
  14     |  2     ((■■)(\d)*)(,(\d)+)?    fail dot
  15     |  2     ((■|■)(\d)*)(,(\d)+)?   fail solve
  16     |  2     ((■){■}(\d)*)(,(\d)+)?    unsatisfiable SAT formula       
  17     |  2     ([1-9](■){■})(,(\d)+)?  fail dotstar or empty
  18     |  2     ([1-9](■)*)(■(\d)+)?    fail dotstar or empty
  19     |  2     ([1-9](■)*)(,(■)+)?     fail dotstar or empty
  20     |  2     ([1-9](■)*)(,(\d){■})?  fail dotstar or empty
  21     |  2     ([1-9](■)*)(,(\d)+){■}  fail dotstar or empty
  22     |  2     ([1-9](\d){■})(■(\d)+)? fail dotstar or empty
  23     |  2     ([1-9](\d){■})(,(■)+)?  fail dotstar or empty
  24     |  2     ([1-9](\d){■})(,(\d){■})?fail dotstar or empty
  25     |  2     ([1-9](\d){■})(,(\d)+){■}fail dotstar or empty
  26     |  2     ([1-9]■)(,(\d)+)?       fail dotstar or empty
  27     |  2     ([1-9](\d)*)(■(■)+)?    fail dotstar or empty
  28     |  2     ([1-9](\d)*)(■(\d){■})? fail dotstar or empty
  29     |  2     ([1-9](\d)*)(■(\d)+){■} fail dotstar or empty
  30     |  2     ([1-9](\d)*)(,(■){■})?  fail dotstar or empty
  31     |  2     ([1-9](\d)*)(,(■)+){■}  fail dotstar or empty
  32     |  2     ([1-9](\d)*)(,(\d){■}){■}fail dotstar or empty
  33     |  2     ([1-9](\d)*)(,■)?       fail dotstar or empty
  34     |  2     ([1-9](\d)*)■           fail dotstar or empty
  35     |  3     (■(■)*)(■(\d)+)?          unsatisfiable SAT formula       
  36     |  3     (■(■)*)(,(■)+)?           unsatisfiable SAT formula       
  37     |  3     (■(■)*)(,(\d){■})?        unsatisfiable SAT formula       
  38     |  3     (■(■)*)(,(\d)+){■}        unsatisfiable SAT formula       
  39     |  3     ((■■)(■)*)(,(\d)+)?     fail dot
  40     |  3     ((■|■)(■)*)(,(\d)+)?    fail solve
  41     |  3     ((■){■}(■)*)(,(\d)+)?     unsatisfiable SAT formula       
  42     |  3     (■(■■)*)(,(\d)+)?       fail dot
  43     |  3     (■((■|■))*)(,(\d)+)?    fail solve
  44     |  3     (■((■){■})*)(,(\d)+)?     unsatisfiable SAT formula       
  45     |  3     (■(\d){■})(■(\d)+)?       unsatisfiable SAT formula       
  46     |  3     (■(\d){■})(,(■)+)?        unsatisfiable SAT formula       
  47     |  3     (■(\d){■})(,(\d){■})?     unsatisfiable SAT formula       
  48     |  3     (■(\d){■})(,(\d)+){■}     unsatisfiable SAT formula       
  49     |  3     (■■)(,(\d)+)?           fail dot
  50     |  3     ((■■)(\d){■})(,(\d)+)?  fail dot
  51     |  3     ((■|■)(\d){■})(,(\d)+)? fail solve
  52     |  3     ((■){■}(\d){■})(,(\d)+)?get a solution: (([\-8+,0]){0,4}(\d){1,3})(,(\d)+)?
add positive: 1000
add negative: ++0
get a solution: (([1\-+0]){0,1}(\d){1,4})(,(\d)+)?
add positive: ,0
get a solution: (([1\-+,]){0,1}(\d){1,4})(,(\d)+)?
add positive: +,0
add negative: ,0,0
  unsatisfiable SAT formula       
  53     |  3     (■(\d)*)(■(■)+)?          unsatisfiable SAT formula       
  54     |  3     (■(\d)*)(■(\d){■})?       unsatisfiable SAT formula       
  55     |  3     (■(\d)*)(■(\d)+){■}       unsatisfiable SAT formula       
  56     |  3     ((■■)(\d)*)(■(\d)+)?    fail dot
  57     |  3     ((■|■)(\d)*)(■(\d)+)?   fail solve
  58     |  3     ((■){■}(\d)*)(■(\d)+)?    unsatisfiable SAT formula       
  59     |  3     (■(\d)*)((■■)(\d)+)?    fail dot
  60     |  3     (■(\d)*)((■|■)(\d)+)?   fail solve
  61     |  3     (■(\d)*)((■){■}(\d)+)?    unsatisfiable SAT formula       
  62     |  3     (■(\d)*)(,(■){■})?        unsatisfiable SAT formula       
  63     |  3     (■(\d)*)(,(■)+){■}        unsatisfiable SAT formula       
  64     |  3     ((■■)(\d)*)(,(■)+)?     fail dot
  65     |  3     ((■|■)(\d)*)(,(■)+)?    fail solve
  66     |  3     ((■){■}(\d)*)(,(■)+)?     unsatisfiable SAT formula       
  67     |  3     (■(\d)*)(,(■■)+)?       fail dot
  68     |  3     (■(\d)*)(,((■|■))+)?    fail solve
  69     |  3     (■(\d)*)(,((■){■})+)?     unsatisfiable SAT formula       
  70     |  3     (■(\d)*)(,(\d){■}){■}     unsatisfiable SAT formula       
  71     |  3     (■(\d)*)(,■)?           fail dot
  72     |  3     ((■■)(\d)*)(,(\d){■})?  fail dot
  73     |  3     ((■|■)(\d)*)(,(\d){■})? fail solve
  74     |  3     ((■){■}(\d)*)(,(\d){■})?  unsatisfiable SAT formula       
  75     |  3     (■(\d)*)■               fail dot
  76     |  3     ((■■)(\d)*)(,(\d)+){■}  fail dot
  77     |  3     ((■|■)(\d)*)(,(\d)+){■} fail solve
  78     |  3     ((■){■}(\d)*)(,(\d)+){■}  unsatisfiable SAT formula       
  79     |  3     ((■)(\d)*)(,(\d)+)?       unsatisfiable SAT formula       
  80     |  3     (((■■)■)(\d)*)(,(\d)+)? fail dot
  81     |  3     (((■|■)■)(\d)*)(,(\d)+)?fail dot
  82     |  3     (((■){■}■)(\d)*)(,(\d)+)?  unsatisfiable SAT formula       
  83     |  3     ((■■|■)(\d)*)(,(\d)+)?    unsatisfiable SAT formula       
  84     |  3     (((■|■)|■)(\d)*)(,(\d)+)?fail solve
  85     |  3     (((■){■}|■)(\d)*)(,(\d)+)?  unsatisfiable SAT formula       
  86     |  3     ((■■){■}(\d)*)(,(\d)+)? get a solution: (([\-+][,0]){0,1}(\d)*)(,(\d)+)?
add positive: +1
add negative: 
  unsatisfiable SAT formula       
  87     |  3     (((■|■)){■}(\d)*)(,(\d)+)?fail solve
  88     |  3     (((■){■}){■}(\d)*)(,(\d)+)?  unsatisfiable SAT formula       
  89     |  3     ([1-9](■){■})(■(\d)+)?  fail dotstar or empty
  90     |  3     ([1-9](■){■})(,(■)+)?   fail dotstar or empty
  91     |  3     ([1-9](■){■})(,(\d){■})?fail dotstar or empty
  92     |  3     ([1-9](■){■})(,(\d)+){■}fail dotstar or empty
  93     |  3     ([1-9](■)*)(■(■)+)?     fail dotstar or empty
  94     |  3     ([1-9](■)*)(■(\d){■})?  fail dotstar or empty
  95     |  3     ([1-9](■)*)(■(\d)+){■}  fail dotstar or empty
  96     |  3     ([1-9](■)*)(,(■){■})?   fail dotstar or empty
  97     |  3     ([1-9](■)*)(,(■)+){■}   fail dotstar or empty
  98     |  3     ([1-9](■)*)(,(\d){■}){■}fail dotstar or empty
  99     |  3     ([1-9](■)*)(,■)?        fail dotstar or empty
  100    |  3     ([1-9](■)*)■            fail dotstar or empty
  101    |  3     ([1-9](\d){■})(■(■)+)?  fail dotstar or empty
  102    |  3     ([1-9](\d){■})(■(\d){■})?fail dotstar or empty
  103    |  3     ([1-9](\d){■})(■(\d)+){■}fail dotstar or empty
  104    |  3     ([1-9]■)(■(\d)+)?       fail dotstar or empty
  105    |  3     ([1-9](\d){■})(,(■){■})?fail dotstar or empty
  106    |  3     ([1-9](\d){■})(,(■)+){■}fail dotstar or empty
  107    |  3     ([1-9]■)(,(■)+)?        fail dotstar or empty
  108    |  3     ([1-9](\d){■})(,(\d){■}){■}fail dotstar or empty
  109    |  3     ([1-9]■)(,(\d){■})?     fail dotstar or empty
  110    |  3     ([1-9](\d){■})(,■)?     fail dotstar or empty
  111    |  3     ([1-9]■)(,(\d)+){■}     fail dotstar or empty
  112    |  3     ([1-9](\d){■})■         fail dotstar or empty
  113    |  3     ([1-9](\d)*)(■(■){■})?  fail dotstar or empty
  114    |  3     ([1-9](\d)*)(■(■)+){■}  fail dotstar or empty
  115    |  3     ([1-9](\d)*)(■(\d){■}){■}fail dotstar or empty
  116    |  3     ([1-9](\d)*)(■■)?       fail dotstar or empty
  117    |  3     ([1-9](\d)*)(,(■){■}){■}fail dotstar or empty
  118    |  3     ([1-9](\d)*)(,■){■}     fail dotstar or empty
  119    |  4     (■(■)*)(■(■)+)?           unsatisfiable SAT formula       
  120    |  4     (■(■)*)(■(\d){■})?        unsatisfiable SAT formula       
  121    |  4     (■(■)*)(■(\d)+){■}        unsatisfiable SAT formula       
  122    |  4     ((■■)(■)*)(■(\d)+)?     fail dot
  123    |  4     ((■|■)(■)*)(■(\d)+)?    fail solve
  124    |  4     ((■){■}(■)*)(■(\d)+)?     unsatisfiable SAT formula       
  125    |  4     (■(■■)*)(■(\d)+)?       fail dot
  126    |  4     (■((■|■))*)(■(\d)+)?    fail solve
  127    |  4     (■((■){■})*)(■(\d)+)?   1.022550106048584
timeout