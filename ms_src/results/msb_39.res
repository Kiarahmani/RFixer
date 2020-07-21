
Given the regular expression:

  42\.[6-9][0-6]

That that should match the strings:

  ✓ (0:5)    42.67

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■2)\.)[6-9])[0-6]    fail dotstar or empty
  2      |  1     (((4■)\.)[6-9])[0-6]    fail dotstar or empty
  3      |  1     (((42)■)[6-9])[0-6]     fail dotstar or empty
  4      |  1     (((42)\.)■)[0-6]        fail dotstar or empty
  5      |  1     (((42)\.)[6-9])■        get a solution: (((42)\.)[6-9])7
add positive: 42.80
add negative: 42.87
  unsatisfiable SAT formula       
  6      |  2     (((■■)\.)[6-9])[0-6]    fail dotstar or empty
  7      |  2     (((■2)■)[6-9])[0-6]     fail dotstar or empty
  8      |  2     (((■2)\.)■)[0-6]        fail dotstar or empty
  9      |  2     (((■2)\.)[6-9])■          unsatisfiable SAT formula       
  10     |  2     (((4■)■)[6-9])[0-6]     fail dotstar or empty
  11     |  2     (((4■)\.)■)[0-6]        fail dotstar or empty
  12     |  2     (((4■)\.)[6-9])■          unsatisfiable SAT formula       
  13     |  2     (((42)■)■)[0-6]         fail dotstar or empty
  14     |  2     (((42)■)[6-9])■           unsatisfiable SAT formula       
  15     |  2     (((42)\.)■)■              unsatisfiable SAT formula       
  16     |  2     (((42)\.)[6-9])(■■)     fail dot
  17     |  2     (((42)\.)[6-9])(■|■)    fail solve
  18     |  2     (((42)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  19     |  3     (((■■)■)[6-9])[0-6]     fail dotstar or empty
  20     |  3     (((■■)\.)■)[0-6]        fail dotstar or empty
  21     |  3     (((■■)\.)[6-9])■          unsatisfiable SAT formula       
  22     |  3     (((■)\.)[6-9])[0-6]     fail dotstar or empty
  23     |  3     (((■2)■)■)[0-6]         fail dotstar or empty
  24     |  3     (((■2)■)[6-9])■           unsatisfiable SAT formula       
  25     |  3     (((■2)\.)■)■              unsatisfiable SAT formula       
  26     |  3     ((((■■)2)\.)[6-9])■     fail dot
  27     |  3     ((((■|■)2)\.)[6-9])■    fail solve
  28     |  3     ((((■){■}2)\.)[6-9])■     unsatisfiable SAT formula       
  29     |  3     (((■2)\.)[6-9])(■■)     fail dot
  30     |  3     (((■2)\.)[6-9])(■|■)    fail solve
  31     |  3     (((■2)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  32     |  3     (((4■)■)■)[0-6]         fail dotstar or empty
  33     |  3     (((4■)■)[6-9])■           unsatisfiable SAT formula       
  34     |  3     (((4■)\.)■)■              unsatisfiable SAT formula       
  35     |  3     (((4(■■))\.)[6-9])■     fail dot
  36     |  3     (((4(■|■))\.)[6-9])■    fail solve
  37     |  3     (((4(■){■})\.)[6-9])■     unsatisfiable SAT formula       
  38     |  3     (((4■)\.)[6-9])(■■)     fail dot
  39     |  3     (((4■)\.)[6-9])(■|■)    fail solve
  40     |  3     (((4■)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  41     |  3     (((42)■)■)■               unsatisfiable SAT formula       
  42     |  3     (((42)(■■))[6-9])■      fail dot
  43     |  3     (((42)(■|■))[6-9])■     fail solve
  44     |  3     (((42)(■){■})[6-9])■      unsatisfiable SAT formula       
  45     |  3     (((42)■)[6-9])(■■)      fail dot
  46     |  3     (((42)■)[6-9])(■|■)     fail solve
  47     |  3     (((42)■)[6-9])(■){■}      unsatisfiable SAT formula       
  48     |  3     (((42)\.)(■■))■         fail dot
  49     |  3     (((42)\.)(■|■))■        fail solve
  50     |  3     (((42)\.)(■){■})■         unsatisfiable SAT formula       
  51     |  3     (((42)\.)■)(■■)         fail dot
  52     |  3     (((42)\.)■)(■|■)        fail solve
  53     |  3     (((42)\.)■)(■){■}         unsatisfiable SAT formula       
  54     |  3     (((42)\.)[6-9])(■)        unsatisfiable SAT formula       
  55     |  3     (((42)\.)[6-9])((■■)■)  fail dot
  56     |  3     (((42)\.)[6-9])((■|■)■) fail dot
  57     |  3     (((42)\.)[6-9])((■){■}■)  unsatisfiable SAT formula       
  58     |  3     (((42)\.)[6-9])(■■|■)     unsatisfiable SAT formula       
  59     |  3     (((42)\.)[6-9])((■|■)|■)fail solve
  60     |  3     (((42)\.)[6-9])((■){■}|■)  unsatisfiable SAT formula       
  61     |  3     (((42)\.)[6-9])(■■){■}  fail dot
  62     |  3     (((42)\.)[6-9])((■|■)){■}fail solve
  63     |  3     (((42)\.)[6-9])((■){■}){■}  unsatisfiable SAT formula       
  64     |  4     (((■■)■)■)[0-6]         fail dotstar or empty
  65     |  4     (((■■)■)[6-9])■           unsatisfiable SAT formula       
  66     |  4     (((■)■)[6-9])[0-6]      fail dotstar or empty
  67     |  4     (((■■)\.)■)■              unsatisfiable SAT formula       
  68     |  4     (((■)\.)■)[0-6]         fail dotstar or empty
  69     |  4     (((■)\.)[6-9])■         fail dot
  70     |  4     ((((■■)■)\.)[6-9])■     fail dot
  71     |  4     ((((■|■)■)\.)[6-9])■    fail solve
  72     |  4     ((((■){■}■)\.)[6-9])■     unsatisfiable SAT formula       
  73     |  4     (((■■)\.)[6-9])(■■)     fail dot
  74     |  4     (((■■)\.)[6-9])(■|■)    fail solve
  75     |  4     (((■■)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  76     |  4     ((■\.)[6-9])[0-6]       fail dotstar or empty
  77     |  4     (((■2)■)■)■               unsatisfiable SAT formula       
  78     |  4     ((((■■)2)■)[6-9])■      fail dot
  79     |  4     ((((■|■)2)■)[6-9])■     fail solve
  80     |  4     ((((■){■}2)■)[6-9])■      unsatisfiable SAT formula       
  81     |  4     (((■2)(■■))[6-9])■      fail dot
  82     |  4     (((■2)(■|■))[6-9])■     fail solve
  83     |  4     (((■2)(■){■})[6-9])■      unsatisfiable SAT formula       
  84     |  4     (((■2)■)[6-9])(■■)      fail dot
  85     |  4     (((■2)■)[6-9])(■|■)     fail solve
  86     |  4     (((■2)■)[6-9])(■){■}      unsatisfiable SAT formula       
  87     |  4     ((((■■)2)\.)■)■         fail dot
  88     |  4     ((((■|■)2)\.)■)■        fail solve
  89     |  4     ((((■){■}2)\.)■)■         unsatisfiable SAT formula       
  90     |  4     (((■2)\.)(■■))■         fail dot
  91     |  4     (((■2)\.)(■|■))■        fail solve
  92     |  4     (((■2)\.)(■){■})■         unsatisfiable SAT formula       
  93     |  4     (((■2)\.)■)(■■)         fail dot
  94     |  4     (((■2)\.)■)(■|■)        fail solve
  95     |  4     (((■2)\.)■)(■){■}         unsatisfiable SAT formula       
  96     |  4     ((((■)2)\.)[6-9])■        unsatisfiable SAT formula       
  97     |  4     (((((■■)■)2)\.)[6-9])■  fail dot
  98     |  4     (((((■|■)■)2)\.)[6-9])■ fail dot
  99     |  4     (((((■){■}■)2)\.)[6-9])■  unsatisfiable SAT formula       
  100    |  4     ((((■■)2)\.)[6-9])(■■)  fail dot
  101    |  4     ((((■■)2)\.)[6-9])(■|■) fail dot
  102    |  4     ((((■■)2)\.)[6-9])(■){■}fail dot
  103    |  4     ((((■■|■)2)\.)[6-9])■     unsatisfiable SAT formula       
  104    |  4     (((((■|■)|■)2)\.)[6-9])■fail solve
  105    |  4     (((((■){■}|■)2)\.)[6-9])■  unsatisfiable SAT formula       
  106    |  4     ((((■|■)2)\.)[6-9])(■■) fail dot
  107    |  4     ((((■|■)2)\.)[6-9])(■|■)fail solve
  108    |  4     ((((■|■)2)\.)[6-9])(■){■}  unsatisfiable SAT formula       
  109    |  4     ((((■■){■}2)\.)[6-9])■  fail dot
  110    |  4     (((((■|■)){■}2)\.)[6-9])■fail solve
  111    |  4     (((((■){■}){■}2)\.)[6-9])■  unsatisfiable SAT formula       
  112    |  4     ((((■){■}2)\.)[6-9])(■■)fail dot
  113    |  4     ((((■){■}2)\.)[6-9])(■|■)fail solve
  114    |  4     ((((■){■}2)\.)[6-9])(■){■}  unsatisfiable SAT formula       
  115    |  4     (((■2)\.)[6-9])(■)        unsatisfiable SAT formula       
  116    |  4     (((■2)\.)[6-9])((■■)■)  fail dot
  117    |  4     (((■2)\.)[6-9])((■|■)■) fail dot
  118    |  4     (((■2)\.)[6-9])((■){■}■)  unsatisfiable SAT formula       
  119    |  4     (((■2)\.)[6-9])(■■|■)     unsatisfiable SAT formula       
  120    |  4     (((■2)\.)[6-9])((■|■)|■)fail solve
  121    |  4     (((■2)\.)[6-9])((■){■}|■)  unsatisfiable SAT formula       
  122    |  4     (((■2)\.)[6-9])(■■){■}  fail dot
  123    |  4     (((■2)\.)[6-9])((■|■)){■}fail solve
  124    |  4     (((■2)\.)[6-9])((■){■}){■}  unsatisfiable SAT formula       
  125    |  4     (((4■)■)■)■               unsatisfiable SAT formula       
  126    |  4     (((4(■■))■)[6-9])■      fail dot
  127    |  4     (((4(■|■))■)[6-9])■     fail solve
  128    |  4     (((4(■){■})■)[6-9])■      unsatisfiable SAT formula       
  129    |  4     (((4■)(■■))[6-9])■      fail dot
  130    |  4     (((4■)(■|■))[6-9])■     fail solve
  131    |  4     (((4■)(■){■})[6-9])■      unsatisfiable SAT formula       
  132    |  4     (((4■)■)[6-9])(■■)      fail dot
  133    |  4     (((4■)■)[6-9])(■|■)     fail solve
  134    |  4     (((4■)■)[6-9])(■){■}      unsatisfiable SAT formula       
  135    |  4     (((4(■■))\.)■)■         fail dot
  136    |  4     (((4(■|■))\.)■)■        fail solve
  137    |  4     (((4(■){■})\.)■)■         unsatisfiable SAT formula       
  138    |  4     (((4■)\.)(■■))■         fail dot
  139    |  4     (((4■)\.)(■|■))■        fail solve
  140    |  4     (((4■)\.)(■){■})■         unsatisfiable SAT formula       
  141    |  4     (((4■)\.)■)(■■)         fail dot
  142    |  4     (((4■)\.)■)(■|■)        fail solve
  143    |  4     (((4■)\.)■)(■){■}         unsatisfiable SAT formula       
  144    |  4     (((4(■))\.)[6-9])■        unsatisfiable SAT formula       
  145    |  4     (((4((■■)■))\.)[6-9])■  fail dot
  146    |  4     (((4((■|■)■))\.)[6-9])■ fail dot
  147    |  4     (((4((■){■}■))\.)[6-9])■  unsatisfiable SAT formula       
  148    |  4     (((4(■■))\.)[6-9])(■■)  fail dot
  149    |  4     (((4(■■))\.)[6-9])(■|■) fail dot
  150    |  4     (((4(■■))\.)[6-9])(■){■}fail dot
  151    |  4     (((4(■■|■))\.)[6-9])■     unsatisfiable SAT formula       
  152    |  4     (((4((■|■)|■))\.)[6-9])■fail solve
  153    |  4     (((4((■){■}|■))\.)[6-9])■  unsatisfiable SAT formula       
  154    |  4     (((4(■|■))\.)[6-9])(■■) fail dot
  155    |  4     (((4(■|■))\.)[6-9])(■|■)fail solve
  156    |  4     (((4(■|■))\.)[6-9])(■){■}  unsatisfiable SAT formula       
  157    |  4     (((4(■■){■})\.)[6-9])■  fail dot
  158    |  4     (((4((■|■)){■})\.)[6-9])■fail solve
  159    |  4     (((4((■){■}){■})\.)[6-9])■  unsatisfiable SAT formula       
  160    |  4     (((4(■){■})\.)[6-9])(■■)fail dot
  161    |  4     (((4(■){■})\.)[6-9])(■|■)fail solve
  162    |  4     (((4(■){■})\.)[6-9])(■){■}  unsatisfiable SAT formula       
  163    |  4     (((4■)\.)[6-9])(■)        unsatisfiable SAT formula       
  164    |  4     (((4■)\.)[6-9])((■■)■)  fail dot
  165    |  4     (((4■)\.)[6-9])((■|■)■) fail dot
  166    |  4     (((4■)\.)[6-9])((■){■}■)  unsatisfiable SAT formula       
  167    |  4     (((4■)\.)[6-9])(■■|■)     unsatisfiable SAT formula       
  168    |  4     (((4■)\.)[6-9])((■|■)|■)fail solve
  169    |  4     (((4■)\.)[6-9])((■){■}|■)  unsatisfiable SAT formula       
  170    |  4     (((4■)\.)[6-9])(■■){■}  fail dot
  171    |  4     (((4■)\.)[6-9])((■|■)){■}fail solve
  172    |  4     (((4■)\.)[6-9])((■){■}){■}  unsatisfiable SAT formula       
  173    |  4     (((42)(■■))■)■          fail dot
  174    |  4     (((42)(■|■))■)■         fail solve
  175    |  4     (((42)(■){■})■)■          unsatisfiable SAT formula       
  176    |  4     (((42)■)(■■))■          fail dot
  177    |  4     (((42)■)(■|■))■         fail solve
  178    |  4     (((42)■)(■){■})■          unsatisfiable SAT formula       
  179    |  4     (((42)■)■)(■■)          fail dot
  180    |  4     (((42)■)■)(■|■)         fail solve
  181    |  4     (((42)■)■)(■){■}          unsatisfiable SAT formula       
  182    |  4     (((42)(■))[6-9])■         unsatisfiable SAT formula       
  183    |  4     (((42)((■■)■))[6-9])■   fail dot
  184    |  4     (((42)((■|■)■))[6-9])■  fail dot
  185    |  4     (((42)((■){■}■))[6-9])■   unsatisfiable SAT formula       
  186    |  4     (((42)(■■))[6-9])(■■)   fail dot
  187    |  4     (((42)(■■))[6-9])(■|■)  fail dot
  188    |  4     (((42)(■■))[6-9])(■){■} fail dot
  189    |  4     (((42)(■■|■))[6-9])■      unsatisfiable SAT formula       
  190    |  4     (((42)((■|■)|■))[6-9])■ fail solve
  191    |  4     (((42)((■){■}|■))[6-9])■  unsatisfiable SAT formula       
  192    |  4     (((42)(■|■))[6-9])(■■)  fail dot
  193    |  4     (((42)(■|■))[6-9])(■|■) fail solve
  194    |  4     (((42)(■|■))[6-9])(■){■}  unsatisfiable SAT formula       
  195    |  4     (((42)(■■){■})[6-9])■   fail dot
  196    |  4     (((42)((■|■)){■})[6-9])■fail solve
  197    |  4     (((42)((■){■}){■})[6-9])■  unsatisfiable SAT formula       
  198    |  4     (((42)(■){■})[6-9])(■■) fail dot
  199    |  4     (((42)(■){■})[6-9])(■|■)fail solve
  200    |  4     (((42)(■){■})[6-9])(■){■}get a solution: (((42)([\.6]){1,2})[6-9])(0){0,1}
add positive: 42.81
add negative: 42.9
  unsatisfiable SAT formula       
  201    |  4     (((42)■)[6-9])(■)         unsatisfiable SAT formula       
  202    |  4     (((42)■)[6-9])((■■)■)   fail dot
  203    |  4     (((42)■)[6-9])((■|■)■)  fail dot
  204    |  4     (((42)■)[6-9])((■){■}■)   unsatisfiable SAT formula       
  205    |  4     (((42)■)[6-9])(■■|■)      unsatisfiable SAT formula       
  206    |  4     (((42)■)[6-9])((■|■)|■) fail solve
  207    |  4     (((42)■)[6-9])((■){■}|■)  unsatisfiable SAT formula       
  208    |  4     (((42)■)[6-9])(■■){■}   fail dot
  209    |  4     (((42)■)[6-9])((■|■)){■}fail solve
  210    |  4     (((42)■)[6-9])((■){■}){■}  unsatisfiable SAT formula       
  211    |  4     (((42)\.)(■))■            unsatisfiable SAT formula       
  212    |  4     (((42)\.)((■■)■))■      fail dot
  213    |  4     (((42)\.)((■|■)■))■     fail dot
  214    |  4     (((42)\.)((■){■}■))■      unsatisfiable SAT formula       
  215    |  4     (((42)\.)(■■))(■■)      fail dot
  216    |  4     (((42)\.)(■■))(■|■)     fail dot
  217    |  4     (((42)\.)(■■))(■){■}      unsatisfiable SAT formula       
  218    |  4     (((42)\.)(■■|■))■         unsatisfiable SAT formula       
  219    |  4     (((42)\.)((■|■)|■))■    fail solve
  220    |  4     (((42)\.)((■){■}|■))■     unsatisfiable SAT formula       
  221    |  4     (((42)\.)(■|■))(■■)     fail dot
  222    |  4     (((42)\.)(■|■))(■|■)    fail solve
  223    |  4     (((42)\.)(■|■))(■){■}     unsatisfiable SAT formula       
  224    |  4     (((42)\.)(■■){■})■      fail dot
  225    |  4     (((42)\.)((■|■)){■})■   fail solve
  226    |  4     (((42)\.)((■){■}){■})■    unsatisfiable SAT formula       
  227    |  4     (((42)\.)(■){■})(■■)      unsatisfiable SAT formula       
  228    |  4     (((42)\.)(■){■})(■|■)   fail solve
  229    |  4     (((42)\.)(■){■})(■){■}  get a solution: (((42)\.)([167]){0,2})([1680]){0,2}
add positive: 42.82
add negative: 42.
  unsatisfiable SAT formula       
  230    |  4     (((42)\.)■)(■)            unsatisfiable SAT formula       
  231    |  4     (((42)\.)■)((■■)■)      fail dot
  232    |  4     (((42)\.)■)((■|■)■)     fail dot
  233    |  4     (((42)\.)■)((■){■}■)      unsatisfiable SAT formula       
  234    |  4     (((42)\.)■)(■■|■)         unsatisfiable SAT formula       
  235    |  4     (((42)\.)■)((■|■)|■)    fail solve
  236    |  4     (((42)\.)■)((■){■}|■)     unsatisfiable SAT formula       
  237    |  4     (((42)\.)■)(■■){■}      fail dot
  238    |  4     (((42)\.)■)((■|■)){■}   fail solve
  239    |  4     (((42)\.)■)((■){■}){■}    unsatisfiable SAT formula       
  240    |  4     (((42)\.)[6-9])((■■))   fail dot
  241    |  4     (((42)\.)[6-9])((■|■))  fail solve
  242    |  4     (((42)\.)[6-9])((■){■})   unsatisfiable SAT formula       
  243    |  4     (((42)\.)[6-9])((■)■)   fail dot
  244    |  4     (((42)\.)[6-9])(((■■)■)■)fail dot
  245    |  4     (((42)\.)[6-9])(((■|■)■)■)fail dot
  246    |  4     (((42)\.)[6-9])(((■){■}■)■)fail dot
  247    |  4     (((42)\.)[6-9])((■■)(■■))fail dot
  248    |  4     (((42)\.)[6-9])((■■)(■|■))fail dot
  249    |  4     (((42)\.)[6-9])((■■)(■){■})fail dot
  250    |  4     (((42)\.)[6-9])((■■|■)■)fail dot
  251    |  4     (((42)\.)[6-9])(((■|■)|■)■)fail dot
  252    |  4     (((42)\.)[6-9])(((■){■}|■)■)  unsatisfiable SAT formula       
  253    |  4     (((42)\.)[6-9])((■|■)(■■))fail dot
  254    |  4     (((42)\.)[6-9])((■|■)(■|■))fail dot
  255    |  4     (((42)\.)[6-9])((■|■)(■){■})  unsatisfiable SAT formula       
  256    |  4     (((42)\.)[6-9])((■■){■}■)  unsatisfiable SAT formula       
  257    |  4     (((42)\.)[6-9])(((■|■)){■}■)fail solve
  258    |  4     (((42)\.)[6-9])(((■){■}){■}■)  unsatisfiable SAT formula       
  259    |  4     (((42)\.)[6-9])((■){■}(■■))fail dot
  260    |  4     (((42)\.)[6-9])((■){■}(■|■))fail solve
  261    |  4     (((42)\.)[6-9])((■){■}(■){■})  unsatisfiable SAT formula       
  262    |  4     (((42)\.)[6-9])((■■)■|■)  unsatisfiable SAT formula       
  263    |  4     (((42)\.)[6-9])((■|■)■|■)fail solve
  264    |  4     (((42)\.)[6-9])((■){■}■|■)  unsatisfiable SAT formula       
  265    |  4     (((42)\.)[6-9])(■■|■■)  fail dot
  266    |  4     (((42)\.)[6-9])(■■|(■|■))fail solve
  267    |  4     (((42)\.)[6-9])(■■|(■){■})  unsatisfiable SAT formula       
  268    |  4     (((42)\.)[6-9])((■■|■)|■)  unsatisfiable SAT formula       
  269    |  4     (((42)\.)[6-9])(((■|■)|■)|■)fail solve
  270    |  4     (((42)\.)[6-9])(((■){■}|■)|■)  unsatisfiable SAT formula       
  271    |  4     (((42)\.)[6-9])((■|■)|■■)  unsatisfiable SAT formula       
  272    |  4     (((42)\.)[6-9])((■|■)|(■|■))fail solve
  273    |  4     (((42)\.)[6-9])((■|■)|(■){■})  unsatisfiable SAT formula       
  274    |  4     (((42)\.)[6-9])((■■){■}|■)  unsatisfiable SAT formula       
  275    |  4     (((42)\.)[6-9])(((■|■)){■}|■)fail solve
  276    |  4     (((42)\.)[6-9])(((■){■}){■}|■)  unsatisfiable SAT formula       
  277    |  4     (((42)\.)[6-9])((■){■}|■■)  unsatisfiable SAT formula       
  278    |  4     (((42)\.)[6-9])((■){■}|(■|■))fail solve
  279    |  4     (((42)\.)[6-9])((■){■}|(■){■})  unsatisfiable SAT formula       
  280    |  4     (((42)\.)[6-9])((■■)■){■}fail dot
  281    |  4     (((42)\.)[6-9])((■|■)■){■}fail dot
  282    |  4     (((42)\.)[6-9])((■){■}■){■}  unsatisfiable SAT formula       
  283    |  4     (((42)\.)[6-9])((■■|■)){■}  unsatisfiable SAT formula       
  284    |  4     (((42)\.)[6-9])(((■|■)|■)){■}fail solve
  285    |  4     (((42)\.)[6-9])(((■){■}|■)){■}  unsatisfiable SAT formula       
  286    |  4     (((42)\.)[6-9])((■■){■}){■}fail dot
  287    |  4     (((42)\.)[6-9])(((■|■)){■}){■}fail solve
  288    |  4     (((42)\.)[6-9])(((■){■}){■}){■}
5.1665191650390625
timeout