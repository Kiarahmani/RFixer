
Given the regular expression:

  [4-9][0-9]\.

That that should match the strings:

  ✓ (0:4)    1000
  ✓ (4:7)    999
  ✓ (7:13)   999.75
  ✓ (13:15)  40

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[0-9])\.              fail dotstar or empty
  2      |  1     ([4-9]■)\.              fail dotstar or empty
  3      |  1     ([4-9][0-9])■           fail dotstar or empty
  4      |  2     (■■)\.                  fail dotstar or empty
  5      |  2     (■[0-9])■               fail dot
  6      |  2     ([4-9]■)■               fail dotstar or empty
  7      |  3     (■■)■                   fail dot
  8      |  3     (■)\.                   fail dotstar or empty
  9      |  3     ((■■)[0-9])■            fail dot
  10     |  3     ((■|■)[0-9])■           fail dot
  11     |  3     ((■){■}[0-9])■          get a solution: (([1\.90]){0,4}[0-9])[590]
add positive: 91.
add negative: 00
  unsatisfiable SAT formula       
  12     |  3     (■[0-9])(■■)            fail dot
  13     |  3     (■[0-9])(■|■)           fail dot
  14     |  3     (■[0-9])(■){■}          get a solution: ([149][0-9])([\.5790]){0,4}
add positive: 50.
add negative: 40
  unsatisfiable SAT formula       
  15     |  4     (■)■                    fail dot
  16     |  4     ((■■)■)■                fail dot
  17     |  4     ((■|■)■)■               fail dot
  18     |  4     ((■){■}■)■                unsatisfiable SAT formula       
  19     |  4     (■■)(■■)                fail dot
  20     |  4     (■■)(■|■)               fail dot
  21     |  4     (■■)(■){■}                unsatisfiable SAT formula       
  22     |  4     ■\.                     fail dotstar or empty
  23     |  4     ((■)[0-9])■             fail dot
  24     |  4     (((■■)■)[0-9])■         fail dot
  25     |  4     (((■|■)■)[0-9])■        fail dot
  26     |  4     (((■){■}■)[0-9])■       fail dot
  27     |  4     ((■■)[0-9])(■■)         fail dot
  28     |  4     ((■■)[0-9])(■|■)        fail dot
  29     |  4     ((■■)[0-9])(■){■}       fail dot
  30     |  4     ((■■|■)[0-9])■          fail dot
  31     |  4     (((■|■)|■)[0-9])■       fail dot
  32     |  4     (((■){■}|■)[0-9])■        unsatisfiable SAT formula       
  33     |  4     ((■|■)[0-9])(■■)        fail dot
  34     |  4     ((■|■)[0-9])(■|■)       fail dot
  35     |  4     ((■|■)[0-9])(■){■}        unsatisfiable SAT formula       
  36     |  4     ((■■){■}[0-9])■         fail dot
  37     |  4     (((■|■)){■}[0-9])■      fail solve
  38     |  4     (((■){■}){■}[0-9])■       unsatisfiable SAT formula       
  39     |  4     ((■){■}[0-9])(■■)       fail dot
  40     |  4     ((■){■}[0-9])(■|■)      fail solve
  41     |  4     ((■){■}[0-9])(■){■}       unsatisfiable SAT formula       
  42     |  4     (■[0-9])(■)             fail dot
  43     |  4     (■[0-9])((■■)■)         fail dot
  44     |  4     (■[0-9])((■|■)■)        fail dot
  45     |  4     (■[0-9])((■){■}■)       fail dot
  46     |  4     (■[0-9])(■■|■)          fail dot
  47     |  4     (■[0-9])((■|■)|■)       fail dot
  48     |  4     (■[0-9])((■){■}|■)        unsatisfiable SAT formula       
  49     |  4     (■[0-9])(■■){■}         fail dot
  50     |  4     (■[0-9])((■|■)){■}      fail solve
  51     |  4     (■[0-9])((■){■}){■}       unsatisfiable SAT formula       
  52     |  5     ■■                      fail dot
  53     |  5     ((■■))■                 fail dot
  54     |  5     ((■|■))■                fail dot
  55     |  5     ((■){■})■                 unsatisfiable SAT formula       
  56     |  5     ((■)■)■                 fail dot
  57     |  5     (((■■)■)■)■             fail dot
  58     |  5     (((■|■)■)■)■            fail dot
  59     |  5     (((■){■}■)■)■           fail dot
  60     |  5     ((■■)(■■))■             fail dot
  61     |  5     ((■■)(■|■))■            fail dot
  62     |  5     ((■■)(■){■})■           fail dot
  63     |  5     ((■■)■)(■■)             fail dot
  64     |  5     ((■■)■)(■|■)            fail dot
  65     |  5     ((■■)■)(■){■}           fail dot
  66     |  5     ((■■|■)■)■              fail dot
  67     |  5     (((■|■)|■)■)■           fail dot
  68     |  5     (((■){■}|■)■)■            unsatisfiable SAT formula       
  69     |  5     ((■|■)(■■))■            fail dot
  70     |  5     ((■|■)(■|■))■           fail dot
  71     |  5     ((■|■)(■){■})■            unsatisfiable SAT formula       
  72     |  5     ((■|■)■)(■■)            fail dot
  73     |  5     ((■|■)■)(■|■)           fail dot
  74     |  5     ((■|■)■)(■){■}            unsatisfiable SAT formula       
  75     |  5     ((■■){■}■)■             fail dot
  76     |  5     (((■|■)){■}■)■          fail solve
  77     |  5     (((■){■}){■}■)■           unsatisfiable SAT formula       
  78     |  5     ((■){■}(■■))■           fail dot
  79     |  5     ((■){■}(■|■))■          fail solve
  80     |  5     ((■){■}(■){■})■           unsatisfiable SAT formula       
  81     |  5     ((■){■}■)(■■)           fail dot
  82     |  5     ((■){■}■)(■|■)          fail solve
  83     |  5     ((■){■}■)(■){■}           unsatisfiable SAT formula       
  84     |  5     (■■)(■)                 fail dot
  85     |  5     (((■■))[0-9])■          fail dot
  86     |  5     (((■|■))[0-9])■         fail dot
  87     |  5     (((■){■})[0-9])■          unsatisfiable SAT formula       
  88     |  5     ((■)[0-9])(■■)          fail dot
  89     |  5     ((■)[0-9])(■|■)         fail dot
  90     |  5     ((■)[0-9])(■){■}          unsatisfiable SAT formula       
  91     |  5     (((■)■)[0-9])■          fail dot
  92     |  5     ((((■■)■)■)[0-9])■      fail dot
  93     |  5     ((((■|■)■)■)[0-9])■     fail dot
  94     |  5     ((((■){■}■)■)[0-9])■    fail dot
  95     |  5     (((■■)(■■))[0-9])■      fail dot
  96     |  5     (((■■)(■|■))[0-9])■     fail dot
  97     |  5     (((■■)(■){■})[0-9])■    fail dot
  98     |  5     (((■■)■)[0-9])(■■)      fail dot
  99     |  5     (((■■)■)[0-9])(■|■)     fail dot
  100    |  5     (((■■)■)[0-9])(■){■}    fail dot
  101    |  5     (((■■|■)■)[0-9])■       fail dot
  102    |  5     ((((■|■)|■)■)[0-9])■    fail dot
  103    |  5     ((((■){■}|■)■)[0-9])■   fail dot
  104    |  5     (((■|■)(■■))[0-9])■     fail dot
  105    |  5     (((■|■)(■|■))[0-9])■    fail dot
  106    |  5     (((■|■)(■){■})[0-9])■   fail dot
  107    |  5     (((■|■)■)[0-9])(■■)     fail dot
  108    |  5     (((■|■)■)[0-9])(■|■)    fail dot
  109    |  5     (((■|■)■)[0-9])(■){■}   fail dot
  110    |  5     (((■■){■}■)[0-9])■      fail dot
  111    |  5     ((((■|■)){■}■)[0-9])■   fail dot
  112    |  5     ((((■){■}){■}■)[0-9])■  fail dot
  113    |  5     (((■){■}(■■))[0-9])■    fail dot
  114    |  5     (((■){■}(■|■))[0-9])■   fail dot
  115    |  5     (((■){■}(■){■})[0-9])■    unsatisfiable SAT formula       
  116    |  5     (((■){■}■)[0-9])(■■)    fail dot
  117    |  5     (((■){■}■)[0-9])(■|■)   fail dot
  118    |  5     (((■){■}■)[0-9])(■){■}    unsatisfiable SAT formula       
  119    |  5     ((■■)[0-9])(■)          fail dot
  120    |  5     ((■■)[0-9])((■■)■)      fail dot
  121    |  5     ((■■)[0-9])((■|■)■)     fail dot
  122    |  5     ((■■)[0-9])((■){■}■)    fail dot
  123    |  5     ((■■)[0-9])(■■|■)       fail dot
  124    |  5     ((■■)[0-9])((■|■)|■)    fail dot
  125    |  5     ((■■)[0-9])((■){■}|■)   fail dot
  126    |  5     ((■■)[0-9])(■■){■}      fail dot
  127    |  5     ((■■)[0-9])((■|■)){■}   fail dot
  128    |  5     ((■■)[0-9])((■){■}){■}  fail dot
  129    |  5     (((■■)■|■)[0-9])■       fail dot
  130    |  5     (((■|■)■|■)[0-9])■      fail dot
  131    |  5     (((■){■}■|■)[0-9])■     fail dot
  132    |  5     ((■■|■■)[0-9])■         fail dot
  133    |  5     ((■■|(■|■))[0-9])■      fail dot
  134    |  5     ((■■|(■){■})[0-9])■       unsatisfiable SAT formula       
  135    |  5     ((■■|■)[0-9])(■■)       fail dot
  136    |  5     ((■■|■)[0-9])(■|■)      fail dot
  137    |  5     ((■■|■)[0-9])(■){■}       unsatisfiable SAT formula       
  138    |  5     (((■■|■)|■)[0-9])■      fail dot
  139    |  5     ((((■|■)|■)|■)[0-9])■   fail dot
  140    |  5     ((((■){■}|■)|■)[0-9])■    unsatisfiable SAT formula       
  141    |  5     (((■|■)|■■)[0-9])■      fail dot
  142    |  5     (((■|■)|(■|■))[0-9])■   fail dot
  143    |  5     (((■|■)|(■){■})[0-9])■    unsatisfiable SAT formula       
  144    |  5     (((■|■)|■)[0-9])(■■)    fail dot
  145    |  5     (((■|■)|■)[0-9])(■|■)   fail dot
  146    |  5     (((■|■)|■)[0-9])(■){■}    unsatisfiable SAT formula       
  147    |  5     (((■■){■}|■)[0-9])■       unsatisfiable SAT formula       
  148    |  5     ((((■|■)){■}|■)[0-9])■  fail solve
  149    |  5     ((((■){■}){■}|■)[0-9])■   unsatisfiable SAT formula       
  150    |  5     (((■){■}|■■)[0-9])■       unsatisfiable SAT formula       
  151    |  5     (((■){■}|(■|■))[0-9])■  fail solve
  152    |  5     (((■){■}|(■){■})[0-9])■   unsatisfiable SAT formula       
  153    |  5     (((■){■}|■)[0-9])(■■)   fail dot
  154    |  5     (((■){■}|■)[0-9])(■|■)  fail solve
  155    |  5     (((■){■}|■)[0-9])(■){■}   unsatisfiable SAT formula       
  156    |  5     ((■|■)[0-9])(■)         fail dot
  157    |  5     ((■|■)[0-9])((■■)■)     fail dot
  158    |  5     ((■|■)[0-9])((■|■)■)    fail dot
  159    |  5     ((■|■)[0-9])((■){■}■)   fail dot
  160    |  5     ((■|■)[0-9])(■■|■)      fail dot
  161    |  5     ((■|■)[0-9])((■|■)|■)   fail dot
  162    |  5     ((■|■)[0-9])((■){■}|■)    unsatisfiable SAT formula       
  163    |  5     ((■|■)[0-9])(■■){■}     fail dot
  164    |  5     ((■|■)[0-9])((■|■)){■}  fail solve
  165    |  5     ((■|■)[0-9])((■){■}){■}   unsatisfiable SAT formula       
  166    |  5     (((■■)■){■}[0-9])■      fail dot
  167    |  5     (((■|■)■){■}[0-9])■     fail dot
  168    |  5     (((■){■}■){■}[0-9])■      unsatisfiable SAT formula       
  169    |  5     ((■■){■}[0-9])(■■)      fail dot
  170    |  5     ((■■){■}[0-9])(■|■)     fail dot
  171    |  5     ((■■){■}[0-9])(■){■}      unsatisfiable SAT formula       
  172    |  5     (((■■|■)){■}[0-9])■       unsatisfiable SAT formula       
  173    |  5     ((((■|■)|■)){■}[0-9])■  fail solve
  174    |  5     ((((■){■}|■)){■}[0-9])■   unsatisfiable SAT formula       
  175    |  5     (((■|■)){■}[0-9])(■■)   fail dot
  176    |  5     (((■|■)){■}[0-9])(■|■)  fail solve
  177    |  5     (((■|■)){■}[0-9])(■){■}   unsatisfiable SAT formula       
  178    |  5     (((■■){■}){■}[0-9])■    fail dot
  179    |  5     ((((■|■)){■}){■}[0-9])■ fail solve
  180    |  5     ((((■){■}){■}){■}[0-9])■
10.213342905044556
timeout