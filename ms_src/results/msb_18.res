
Given the regular expression:

  ([0-9]){0,2}\.([0-9]){0,2}

That that should match the strings:

  ✓ (0:2)    00

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){0,2}\.)([0-9]){0,2}fail dotstar or empty
  2      |  1     (([0-9]){■}\.)([0-9]){0,2}fail dotstar or empty
  3      |  1     (([0-9]){0,2}■)([0-9]){0,2}get a solution: (([0-9]){0,2}0)([0-9]){0,2}
add positive: 
add negative: 000
  4      |  1     (([0-9]){0,2}\.)(■){0,2}fail dotstar or empty
  5      |  1     (([0-9]){0,2}\.)([0-9]){■}fail dotstar or empty
  6      |  2     ((■){■}\.)([0-9]){0,2}  fail dotstar or empty
  7      |  2     ((■){0,2}■)([0-9]){0,2} fail dot
  8      |  2     ((■){0,2}\.)(■){0,2}    fail dotstar or empty
  9      |  2     ((■){0,2}\.)([0-9]){■}  fail dotstar or empty
  10     |  2     (■\.)([0-9]){0,2}       fail dotstar or empty
  11     |  2     (([0-9]){■}■)([0-9]){0,2}fail dot
  12     |  2     (([0-9]){■}\.)(■){0,2}  fail dotstar or empty
  13     |  2     (([0-9]){■}\.)([0-9]){■}fail dotstar or empty
  14     |  2     (([0-9]){0,2}■)(■){0,2} fail dot
  15     |  2     (([0-9]){0,2}■)([0-9]){■}fail dot
  16     |  2     (([0-9]){0,2}(■■))([0-9]){0,2}fail dot
  17     |  2     (([0-9]){0,2}(■|■))([0-9]){0,2}fail solve
  18     |  2     (([0-9]){0,2}(■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  19     |  2     (([0-9]){0,2}\.)(■){■}  fail dotstar or empty
  20     |  2     (([0-9]){0,2}\.)■       fail dotstar or empty
  21     |  3     ((■){■}■)([0-9]){0,2}   fail dot
  22     |  3     ((■){■}\.)(■){0,2}      fail dotstar or empty
  23     |  3     ((■){■}\.)([0-9]){■}    fail dotstar or empty
  24     |  3     ((■){0,2}■)(■){0,2}     fail dot
  25     |  3     ((■){0,2}■)([0-9]){■}   fail dot
  26     |  3     (■■)([0-9]){0,2}        fail dot
  27     |  3     ((■■){0,2}■)([0-9]){0,2}fail dot
  28     |  3     (((■|■)){0,2}■)([0-9]){0,2}fail dot
  29     |  3     (((■){■}){0,2}■)([0-9]){0,2}fail dot
  30     |  3     ((■){0,2}(■■))([0-9]){0,2}fail dot
  31     |  3     ((■){0,2}(■|■))([0-9]){0,2}fail dot
  32     |  3     ((■){0,2}(■){■})([0-9]){0,2}get a solution: (([∅]){0,2}([∅]){0})([0-9]){0,2}
add positive: .0
get a solution: ((\.){0,2}([\.0]){0})([0-9]){0,2}
add positive: 0.0
add negative: .
  unsatisfiable SAT formula       
  33     |  3     ((■){0,2}\.)(■){■}      fail dotstar or empty
  34     |  3     (■\.)(■){0,2}           fail dotstar or empty
  35     |  3     ((■){0,2}\.)■           fail dotstar or empty
  36     |  3     (■\.)([0-9]){■}         fail dotstar or empty
  37     |  3     (([0-9]){■}■)(■){0,2}   fail dot
  38     |  3     (([0-9]){■}■)([0-9]){■} fail dot
  39     |  3     (([0-9]){■}(■■))([0-9]){0,2}fail dot
  40     |  3     (([0-9]){■}(■|■))([0-9]){0,2}fail dot
  41     |  3     (([0-9]){■}(■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  42     |  3     (([0-9]){■}\.)(■){■}    fail dotstar or empty
  43     |  3     (([0-9]){■}\.)■         fail dotstar or empty
  44     |  3     (([0-9]){0,2}■)(■){■}   fail dot
  45     |  3     (([0-9]){0,2}■)■        fail dot
  46     |  3     (([0-9]){0,2}(■■))(■){0,2}fail dot
  47     |  3     (([0-9]){0,2}(■|■))(■){0,2}fail dot
  48     |  3     (([0-9]){0,2}(■){■})(■){0,2}  unsatisfiable SAT formula       
  49     |  3     (([0-9]){0,2}■)(■■){0,2}fail dot
  50     |  3     (([0-9]){0,2}■)((■|■)){0,2}fail dot
  51     |  3     (([0-9]){0,2}■)((■){■}){0,2}fail dot
  52     |  3     (([0-9]){0,2}(■■))([0-9]){■}fail dot
  53     |  3     (([0-9]){0,2}(■|■))([0-9]){■}fail dot
  54     |  3     (([0-9]){0,2}(■){■})([0-9]){■}  unsatisfiable SAT formula       
  55     |  3     (([0-9]){0,2}(■))([0-9]){0,2}fail dot
  56     |  3     (([0-9]){0,2}((■■)■))([0-9]){0,2}fail dot
  57     |  3     (([0-9]){0,2}((■|■)■))([0-9]){0,2}fail dot
  58     |  3     (([0-9]){0,2}((■){■}■))([0-9]){0,2}fail dot
  59     |  3     (([0-9]){0,2}(■■|■))([0-9]){0,2}fail dot
  60     |  3     (([0-9]){0,2}((■|■)|■))([0-9]){0,2}fail solve
  61     |  3     (([0-9]){0,2}((■){■}|■))([0-9]){0,2}  unsatisfiable SAT formula       
  62     |  3     (([0-9]){0,2}(■■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  63     |  3     (([0-9]){0,2}((■|■)){■})([0-9]){0,2}fail solve
  64     |  3     (([0-9]){0,2}((■){■}){■})([0-9]){0,2}  unsatisfiable SAT formula       
  65     |  4     ((■){■}■)(■){0,2}       fail dot
  66     |  4     ((■){■}■)([0-9]){■}     fail dot
  67     |  4     ((■■){■}■)([0-9]){0,2}  fail dot
  68     |  4     (((■|■)){■}■)([0-9]){0,2}fail dot
  69     |  4     (((■){■}){■}■)([0-9]){0,2}fail dot
  70     |  4     ((■){■}(■■))([0-9]){0,2}fail dot
  71     |  4     ((■){■}(■|■))([0-9]){0,2}fail dot
  72     |  4     ((■){■}(■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  73     |  4     ((■){■}\.)(■){■}        fail dotstar or empty
  74     |  4     ((■){■}\.)■             fail dotstar or empty
  75     |  4     ((■){0,2}■)(■){■}       fail dot
  76     |  4     (■■)(■){0,2}            fail dot
  77     |  4     ((■){0,2}■)■            fail dot
  78     |  4     ((■■){0,2}■)(■){0,2}    fail dot
  79     |  4     (((■|■)){0,2}■)(■){0,2} fail dot
  80     |  4     (((■){■}){0,2}■)(■){0,2}fail dot
  81     |  4     ((■){0,2}(■■))(■){0,2}  fail dot
  82     |  4     ((■){0,2}(■|■))(■){0,2} fail dot
  83     |  4     ((■){0,2}(■){■})(■){0,2}  unsatisfiable SAT formula       
  84     |  4     ((■){0,2}■)(■■){0,2}    fail dot
  85     |  4     ((■){0,2}■)((■|■)){0,2} fail dot
  86     |  4     ((■){0,2}■)((■){■}){0,2}fail dot
  87     |  4     (■■)([0-9]){■}          fail dot
  88     |  4     ((■■){0,2}■)([0-9]){■}  fail dot
  89     |  4     (((■|■)){0,2}■)([0-9]){■}fail dot
  90     |  4     (((■){■}){0,2}■)([0-9]){■}fail dot
  91     |  4     ((■){0,2}(■■))([0-9]){■}fail dot
  92     |  4     ((■){0,2}(■|■))([0-9]){■}fail dot
  93     |  4     ((■){0,2}(■){■})([0-9]){■}  unsatisfiable SAT formula       
  94     |  4     (■)([0-9]){0,2}         fail dot
  95     |  4     ((■■)■)([0-9]){0,2}     fail dot
  96     |  4     ((■|■)■)([0-9]){0,2}    fail dot
  97     |  4     (((■■)■){0,2}■)([0-9]){0,2}fail dot
  98     |  4     (((■|■)■){0,2}■)([0-9]){0,2}fail dot
  99     |  4     (((■){■}■){0,2}■)([0-9]){0,2}fail dot
  100    |  4     ((■■){0,2}(■■))([0-9]){0,2}fail dot
  101    |  4     ((■■){0,2}(■|■))([0-9]){0,2}fail dot
  102    |  4     ((■■){0,2}(■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  103    |  4     (((■■|■)){0,2}■)([0-9]){0,2}fail dot
  104    |  4     ((((■|■)|■)){0,2}■)([0-9]){0,2}fail dot
  105    |  4     ((((■){■}|■)){0,2}■)([0-9]){0,2}fail dot
  106    |  4     (((■|■)){0,2}(■■))([0-9]){0,2}fail dot
  107    |  4     (((■|■)){0,2}(■|■))([0-9]){0,2}fail dot
  108    |  4     (((■|■)){0,2}(■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  109    |  4     (((■■){■}){0,2}■)([0-9]){0,2}fail dot
  110    |  4     ((((■|■)){■}){0,2}■)([0-9]){0,2}fail dot
  111    |  4     ((((■){■}){■}){0,2}■)([0-9]){0,2}fail dot
  112    |  4     (((■){■}){0,2}(■■))([0-9]){0,2}fail dot
  113    |  4     (((■){■}){0,2}(■|■))([0-9]){0,2}fail dot
  114    |  4     (((■){■}){0,2}(■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  115    |  4     ((■){0,2}(■))([0-9]){0,2}fail dot
  116    |  4     ((■){0,2}((■■)■))([0-9]){0,2}fail dot
  117    |  4     ((■){0,2}((■|■)■))([0-9]){0,2}fail dot
  118    |  4     ((■){0,2}((■){■}■))([0-9]){0,2}fail dot
  119    |  4     ((■){0,2}(■■|■))([0-9]){0,2}fail dot
  120    |  4     ((■){0,2}((■|■)|■))([0-9]){0,2}fail dot
  121    |  4     ((■){0,2}((■){■}|■))([0-9]){0,2}  unsatisfiable SAT formula       
  122    |  4     ((■){0,2}(■■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  123    |  4     ((■){0,2}((■|■)){■})([0-9]){0,2}fail solve
  124    |  4     ((■){0,2}((■){■}){■})([0-9]){0,2}  unsatisfiable SAT formula       
  125    |  4     (■\.)(■){■}             fail dotstar or empty
  126    |  4     (■\.)■                  fail dotstar or empty
  127    |  4     (([0-9]){■}■)(■){■}     fail dot
  128    |  4     (([0-9]){■}■)■          fail dot
  129    |  4     (([0-9]){■}(■■))(■){0,2}fail dot
  130    |  4     (([0-9]){■}(■|■))(■){0,2}fail dot
  131    |  4     (([0-9]){■}(■){■})(■){0,2}  unsatisfiable SAT formula       
  132    |  4     (([0-9]){■}■)(■■){0,2}  fail dot
  133    |  4     (([0-9]){■}■)((■|■)){0,2}fail dot
  134    |  4     (([0-9]){■}■)((■){■}){0,2}fail dot
  135    |  4     (([0-9]){■}(■■))([0-9]){■}fail dot
  136    |  4     (([0-9]){■}(■|■))([0-9]){■}fail dot
  137    |  4     (([0-9]){■}(■){■})([0-9]){■}  unsatisfiable SAT formula       
  138    |  4     (([0-9]){■}(■))([0-9]){0,2}fail dot
  139    |  4     (([0-9]){■}((■■)■))([0-9]){0,2}fail dot
  140    |  4     (([0-9]){■}((■|■)■))([0-9]){0,2}fail dot
  141    |  4     (([0-9]){■}((■){■}■))([0-9]){0,2}fail dot
  142    |  4     (([0-9]){■}(■■|■))([0-9]){0,2}fail dot
  143    |  4     (([0-9]){■}((■|■)|■))([0-9]){0,2}fail dot
  144    |  4     (([0-9]){■}((■){■}|■))([0-9]){0,2}  unsatisfiable SAT formula       
  145    |  4     (([0-9]){■}(■■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  146    |  4     (([0-9]){■}((■|■)){■})([0-9]){0,2}fail solve
  147    |  4     (([0-9]){■}((■){■}){■})([0-9]){0,2}  unsatisfiable SAT formula       
  148    |  4     (([0-9]){0,2}(■■))(■){■}fail dot
  149    |  4     (([0-9]){0,2}(■|■))(■){■}fail dot
  150    |  4     (([0-9]){0,2}(■){■})(■){■}  unsatisfiable SAT formula       
  151    |  4     (([0-9]){0,2}■)(■■){■}  fail dot
  152    |  4     (([0-9]){0,2}■)((■|■)){■}fail dot
  153    |  4     (([0-9]){0,2}■)((■){■}){■}fail dot
  154    |  4     (([0-9]){0,2}(■■))■     fail dot
  155    |  4     (([0-9]){0,2}(■|■))■    fail dot
  156    |  4     (([0-9]){0,2}(■){■})■   fail dot
  157    |  4     (([0-9]){0,2}■)(■■)     fail dot
  158    |  4     (([0-9]){0,2}■)(■|■)    fail dot
  159    |  4     (([0-9]){0,2}(■))(■){0,2}fail dot
  160    |  4     (([0-9]){0,2}((■■)■))(■){0,2}fail dot
  161    |  4     (([0-9]){0,2}((■|■)■))(■){0,2}fail dot
  162    |  4     (([0-9]){0,2}((■){■}■))(■){0,2}fail dot
  163    |  4     (([0-9]){0,2}(■■))(■■){0,2}fail dot
  164    |  4     (([0-9]){0,2}(■■))((■|■)){0,2}fail dot
  165    |  4     (([0-9]){0,2}(■■))((■){■}){0,2}fail dot
  166    |  4     (([0-9]){0,2}(■■|■))(■){0,2}fail dot
  167    |  4     (([0-9]){0,2}((■|■)|■))(■){0,2}fail dot
  168    |  4     (([0-9]){0,2}((■){■}|■))(■){0,2}  unsatisfiable SAT formula       
  169    |  4     (([0-9]){0,2}(■|■))(■■){0,2}fail dot
  170    |  4     (([0-9]){0,2}(■|■))((■|■)){0,2}fail dot
  171    |  4     (([0-9]){0,2}(■|■))((■){■}){0,2}fail dot
  172    |  4     (([0-9]){0,2}(■■){■})(■){0,2}get a solution: (([0-9]){0,2}(\.0){0,1})([∅]){0,2}
add positive: .1
get a solution: (([0-9]){0,2}(\.[10]){0,1})([∅]){0,2}
add positive: .2
get a solution: (([0-9]){0,2}(\.[120]){0,1})([∅]){0,2}
add positive: .3
get a solution: (([0-9]){0,2}(\.[1230]){0,1})([∅]){0,2}
add positive: .4
get a solution: (([0-9]){0,2}(\.[12340]){0,1})([∅]){0,2}
add positive: .5
get a solution: (([0-9]){0,2}(\.[123450]){0,1})([∅]){0,2}
add positive: .6
get a solution: (([0-9]){0,2}(\.[1234560]){0,1})([∅]){0,2}
add positive: .7
get a solution: (([0-9]){0,2}(\.[12345670]){0,1})([∅]){0,2}
add positive: .8
get a solution: (([0-9]){0,2}(\.[123456780]){0,1})([∅]){0,2}
add positive: .9
get a solution: (([0-9]){0,2}(\.[1234567890]){0,1})([∅]){0,2}
add positive: .00
  unsatisfiable SAT formula       
  173    |  4     (([0-9]){0,2}((■|■)){■})(■){0,2}fail solve
  174    |  4     (([0-9]){0,2}((■){■}){■})(■){0,2}  unsatisfiable SAT formula       
  175    |  4     (([0-9]){0,2}(■){■})(■■){0,2}  unsatisfiable SAT formula       
  176    |  4     (([0-9]){0,2}(■){■})((■|■)){0,2}fail solve
  177    |  4     (([0-9]){0,2}(■){■})((■){■}){0,2}  unsatisfiable SAT formula       
  178    |  4     (([0-9]){0,2}■)((■■)■){0,2}fail dot
  179    |  4     (([0-9]){0,2}■)((■|■)■){0,2}fail dot
  180    |  4     (([0-9]){0,2}■)((■){■}■){0,2}fail dot
  181    |  4     (([0-9]){0,2}■)((■■|■)){0,2}fail dot
  182    |  4     (([0-9]){0,2}■)(((■|■)|■)){0,2}fail dot
  183    |  4     (([0-9]){0,2}■)(((■){■}|■)){0,2}fail dot
  184    |  4     (([0-9]){0,2}■)((■■){■}){0,2}fail dot
  185    |  4     (([0-9]){0,2}■)(((■|■)){■}){0,2}fail dot
  186    |  4     (([0-9]){0,2}■)(((■){■}){■}){0,2}fail dot
  187    |  4     (([0-9]){0,2}(■))([0-9]){■}fail dot
  188    |  4     (([0-9]){0,2}((■■)■))([0-9]){■}fail dot
  189    |  4     (([0-9]){0,2}((■|■)■))([0-9]){■}fail dot
  190    |  4     (([0-9]){0,2}((■){■}■))([0-9]){■}fail dot
  191    |  4     (([0-9]){0,2}(■■|■))([0-9]){■}fail dot
  192    |  4     (([0-9]){0,2}((■|■)|■))([0-9]){■}fail dot
  193    |  4     (([0-9]){0,2}((■){■}|■))([0-9]){■}  unsatisfiable SAT formula       
  194    |  4     (([0-9]){0,2}(■■){■})([0-9]){■}  unsatisfiable SAT formula       
  195    |  4     (([0-9]){0,2}((■|■)){■})([0-9]){■}fail solve
  196    |  4     (([0-9]){0,2}((■){■}){■})([0-9]){■}  unsatisfiable SAT formula       
  197    |  4     (([0-9]){0,2}((■■)))([0-9]){0,2}fail dot
  198    |  4     (([0-9]){0,2}((■|■)))([0-9]){0,2}fail dot
  199    |  4     (([0-9]){0,2}((■){■}))([0-9]){0,2}  unsatisfiable SAT formula       
  200    |  4     (([0-9]){0,2}((■)■))([0-9]){0,2}fail dot
  201    |  4     (([0-9]){0,2}(((■■)■)■))([0-9]){0,2}fail dot
  202    |  4     (([0-9]){0,2}(((■|■)■)■))([0-9]){0,2}fail dot
  203    |  4     (([0-9]){0,2}(((■){■}■)■))([0-9]){0,2}fail dot
  204    |  4     (([0-9]){0,2}((■■)(■■)))([0-9]){0,2}fail dot
  205    |  4     (([0-9]){0,2}((■■)(■|■)))([0-9]){0,2}fail dot
  206    |  4     (([0-9]){0,2}((■■)(■){■}))([0-9]){0,2}fail dot
  207    |  4     (([0-9]){0,2}((■■|■)■))([0-9]){0,2}fail dot
  208    |  4     (([0-9]){0,2}(((■|■)|■)■))([0-9]){0,2}fail dot
  209    |  4     (([0-9]){0,2}(((■){■}|■)■))([0-9]){0,2}fail dot
  210    |  4     (([0-9]){0,2}((■|■)(■■)))([0-9]){0,2}fail dot
  211    |  4     (([0-9]){0,2}((■|■)(■|■)))([0-9]){0,2}fail dot
  212    |  4     (([0-9]){0,2}((■|■)(■){■}))([0-9]){0,2}fail dot
  213    |  4     (([0-9]){0,2}((■■){■}■))([0-9]){0,2}fail dot
  214    |  4     (([0-9]){0,2}(((■|■)){■}■))([0-9]){0,2}fail dot
  215    |  4     (([0-9]){0,2}(((■){■}){■}■))([0-9]){0,2}fail dot
  216    |  4     (([0-9]){0,2}((■){■}(■■)))([0-9]){0,2}fail dot
  217    |  4     (([0-9]){0,2}((■){■}(■|■)))([0-9]){0,2}fail dot
  218    |  4     (([0-9]){0,2}((■){■}(■){■}))([0-9]){0,2}  unsatisfiable SAT formula       
  219    |  4     (([0-9]){0,2}((■■)■|■))([0-9]){0,2}fail dot
  220    |  4     (([0-9]){0,2}((■|■)■|■))([0-9]){0,2}fail dot
  221    |  4     (([0-9]){0,2}((■){■}■|■))([0-9]){0,2}fail dot
  222    |  4     (([0-9]){0,2}(■■|■■))([0-9]){0,2}fail dot
  223    |  4     (([0-9]){0,2}(■■|(■|■)))([0-9]){0,2}fail dot
  224    |  4     (([0-9]){0,2}(■■|(■){■}))([0-9]){0,2}  unsatisfiable SAT formula       
  225    |  4     (([0-9]){0,2}((■■|■)|■))([0-9]){0,2}fail dot
  226    |  4     (([0-9]){0,2}(((■|■)|■)|■))([0-9]){0,2}fail solve
  227    |  4     (([0-9]){0,2}(((■){■}|■)|■))([0-9]){0,2}  unsatisfiable SAT formula       
  228    |  4     (([0-9]){0,2}((■|■)|■■))([0-9]){0,2}fail dot
  229    |  4     (([0-9]){0,2}((■|■)|(■|■)))([0-9]){0,2}fail solve
  230    |  4     (([0-9]){0,2}((■|■)|(■){■}))([0-9]){0,2}  unsatisfiable SAT formula       
  231    |  4     (([0-9]){0,2}((■■){■}|■))([0-9]){0,2}  unsatisfiable SAT formula       
  232    |  4     (([0-9]){0,2}(((■|■)){■}|■))([0-9]){0,2}fail solve
  233    |  4     (([0-9]){0,2}(((■){■}){■}|■))([0-9]){0,2}  unsatisfiable SAT formula       
  234    |  4     (([0-9]){0,2}((■){■}|■■))([0-9]){0,2}  unsatisfiable SAT formula       
  235    |  4     (([0-9]){0,2}((■){■}|(■|■)))([0-9]){0,2}fail solve
  236    |  4     (([0-9]){0,2}((■){■}|(■){■}))([0-9]){0,2}  unsatisfiable SAT formula       
  237    |  4     (([0-9]){0,2}((■■)■){■})([0-9]){0,2}fail dot
  238    |  4     (([0-9]){0,2}((■|■)■){■})([0-9]){0,2}fail solve
  239    |  4     (([0-9]){0,2}((■){■}■){■})([0-9]){0,2}  unsatisfiable SAT formula       
  240    |  4     (([0-9]){0,2}((■■|■)){■})([0-9]){0,2}  unsatisfiable SAT formula       
  241    |  4     (([0-9]){0,2}(((■|■)|■)){■})([0-9]){0,2}fail solve
  242    |  4     (([0-9]){0,2}(((■){■}|■)){■})([0-9]){0,2}  unsatisfiable SAT formula       
  243    |  4     (([0-9]){0,2}((■■){■}){■})([0-9]){0,2}  unsatisfiable SAT formula       
  244    |  4     (([0-9]){0,2}(((■|■)){■}){■})([0-9]){0,2}fail solve
  245    |  4     (([0-9]){0,2}(((■){■}){■}){■})([0-9]){0,2}
3.0450191497802734
timeout