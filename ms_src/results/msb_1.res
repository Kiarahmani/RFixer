
Given the regular expression:

  \{[0-9]:[0-9]\}

That that should match the strings:

  ✓ (0:9)    {999:999}
  ✓ (9:18)   {222:115}

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■[0-9]):)[0-9])\}    fail dotstar or empty
  2      |  1     (((\{■):)[0-9])\}       fail dotstar or empty
  3      |  1     (((\{[0-9])■)[0-9])\}   fail dot
  4      |  1     (((\{[0-9]):)■)\}       fail dotstar or empty
  5      |  1     (((\{[0-9]):)[0-9])■    fail dotstar or empty
  6      |  2     (((■■):)[0-9])\}        fail dotstar or empty
  7      |  2     (((■[0-9])■)[0-9])\}    fail dot
  8      |  2     (((■[0-9]):)■)\}        fail dot
  9      |  2     (((■[0-9]):)[0-9])■     fail dot
  10     |  2     (((\{■)■)[0-9])\}       fail dot
  11     |  2     (((\{■):)■)\}           fail dot
  12     |  2     (((\{■):)[0-9])■        fail dot
  13     |  2     (((\{[0-9])■)■)\}       fail dot
  14     |  2     (((\{[0-9])■)[0-9])■    fail dot
  15     |  2     (((\{[0-9])(■■))[0-9])\}fail dot
  16     |  2     (((\{[0-9])(■|■))[0-9])\}fail dot
  17     |  2     (((\{[0-9])(■){■})[0-9])\}get a solution: (((\{[0-9])([129:]){1,5})[0-9])\}
add positive: {00:0}
add negative: {010}
get a solution: (((\{[0-9])([129:0]){2,5})[0-9])\}
add positive: {0:0}
add negative: {0::0}
  unsatisfiable SAT formula       
  18     |  2     (((\{[0-9]):)■)■        fail dotstar or empty
  19     |  3     (((■■)■)[0-9])\}        fail dot
  20     |  3     (((■■):)■)\}            fail dot
  21     |  3     (((■■):)[0-9])■         fail dot
  22     |  3     (((■):)[0-9])\}         fail dotstar or empty
  23     |  3     (((■[0-9])■)■)\}        fail dot
  24     |  3     (((■[0-9])■)[0-9])■     fail dot
  25     |  3     ((((■■)[0-9])■)[0-9])\} fail dot
  26     |  3     ((((■|■)[0-9])■)[0-9])\}fail dot
  27     |  3     ((((■){■}[0-9])■)[0-9])\}  unsatisfiable SAT formula       
  28     |  3     (((■[0-9])(■■))[0-9])\} fail dot
  29     |  3     (((■[0-9])(■|■))[0-9])\}fail dot
  30     |  3     (((■[0-9])(■){■})[0-9])\}  unsatisfiable SAT formula       
  31     |  3     (((■[0-9]):)■)■         fail dot
  32     |  3     ((((■■)[0-9]):)■)\}     fail dot
  33     |  3     ((((■|■)[0-9]):)■)\}    fail dot
  34     |  3     ((((■){■}[0-9]):)■)\}   fail dot
  35     |  3     (((■[0-9]):)(■■))\}     fail dot
  36     |  3     (((■[0-9]):)(■|■))\}    fail dot
  37     |  3     (((■[0-9]):)(■){■})\}   fail dot
  38     |  3     ((((■■)[0-9]):)[0-9])■  fail dot
  39     |  3     ((((■|■)[0-9]):)[0-9])■ fail dot
  40     |  3     ((((■){■}[0-9]):)[0-9])■fail dot
  41     |  3     (((■[0-9]):)[0-9])(■■)  fail dot
  42     |  3     (((■[0-9]):)[0-9])(■|■) fail dot
  43     |  3     (((■[0-9]):)[0-9])(■){■}fail dot
  44     |  3     (((\{■)■)■)\}           fail dot
  45     |  3     (((\{■)■)[0-9])■        fail dot
  46     |  3     (((\{(■■))■)[0-9])\}    fail dot
  47     |  3     (((\{(■|■))■)[0-9])\}   fail dot
  48     |  3     (((\{(■){■})■)[0-9])\}    unsatisfiable SAT formula       
  49     |  3     (((\{■)(■■))[0-9])\}    fail dot
  50     |  3     (((\{■)(■|■))[0-9])\}   fail dot
  51     |  3     (((\{■)(■){■})[0-9])\}    unsatisfiable SAT formula       
  52     |  3     (((\{■):)■)■            fail dot
  53     |  3     (((\{(■■)):)■)\}        fail dot
  54     |  3     (((\{(■|■)):)■)\}       fail dot
  55     |  3     (((\{(■){■}):)■)\}      fail dot
  56     |  3     (((\{■):)(■■))\}        fail dot
  57     |  3     (((\{■):)(■|■))\}       fail dot
  58     |  3     (((\{■):)(■){■})\}      fail dot
  59     |  3     (((\{(■■)):)[0-9])■     fail dot
  60     |  3     (((\{(■|■)):)[0-9])■    fail dot
  61     |  3     (((\{(■){■}):)[0-9])■   fail dot
  62     |  3     (((\{■):)[0-9])(■■)     fail dot
  63     |  3     (((\{■):)[0-9])(■|■)    fail dot
  64     |  3     (((\{■):)[0-9])(■){■}   fail dot
  65     |  3     (((\{[0-9])■)■)■        fail dot
  66     |  3     (((\{[0-9])(■■))■)\}    fail dot
  67     |  3     (((\{[0-9])(■|■))■)\}   fail dot
  68     |  3     (((\{[0-9])(■){■})■)\}    unsatisfiable SAT formula       
  69     |  3     (((\{[0-9])■)(■■))\}    fail dot
  70     |  3     (((\{[0-9])■)(■|■))\}   fail dot
  71     |  3     (((\{[0-9])■)(■){■})\}    unsatisfiable SAT formula       
  72     |  3     (((\{[0-9])(■■))[0-9])■ fail dot
  73     |  3     (((\{[0-9])(■|■))[0-9])■fail dot
  74     |  3     (((\{[0-9])(■){■})[0-9])■  unsatisfiable SAT formula       
  75     |  3     (((\{[0-9])■)[0-9])(■■) fail dot
  76     |  3     (((\{[0-9])■)[0-9])(■|■)fail dot
  77     |  3     (((\{[0-9])■)[0-9])(■){■}fail dot
  78     |  3     (((\{[0-9])(■))[0-9])\} fail dot
  79     |  3     (((\{[0-9])((■■)■))[0-9])\}fail dot
  80     |  3     (((\{[0-9])((■|■)■))[0-9])\}fail dot
  81     |  3     (((\{[0-9])((■){■}■))[0-9])\}  unsatisfiable SAT formula       
  82     |  3     (((\{[0-9])(■■|■))[0-9])\}fail dot
  83     |  3     (((\{[0-9])((■|■)|■))[0-9])\}fail dot
  84     |  3     (((\{[0-9])((■){■}|■))[0-9])\}  unsatisfiable SAT formula       
  85     |  3     (((\{[0-9])(■■){■})[0-9])\}fail dot
  86     |  3     (((\{[0-9])((■|■)){■})[0-9])\}fail solve
  87     |  3     (((\{[0-9])((■){■}){■})[0-9])\}  unsatisfiable SAT formula       
  88     |  4     (((■■)■)■)\}            fail dot
  89     |  4     (((■■)■)[0-9])■         fail dot
  90     |  4     (((■)■)[0-9])\}         fail dot
  91     |  4     ((((■■)■)■)[0-9])\}     fail dot
  92     |  4     ((((■|■)■)■)[0-9])\}    fail dot
  93     |  4     ((((■){■}■)■)[0-9])\}     unsatisfiable SAT formula       
  94     |  4     (((■■)(■■))[0-9])\}     fail dot
  95     |  4     (((■■)(■|■))[0-9])\}    fail dot
  96     |  4     (((■■)(■){■})[0-9])\}     unsatisfiable SAT formula       
  97     |  4     (((■■):)■)■             fail dot
  98     |  4     (((■):)■)\}             fail dot
  99     |  4     ((((■■)■):)■)\}         fail dot
  100    |  4     ((((■|■)■):)■)\}        fail dot
  101    |  4     ((((■){■}■):)■)\}       fail dot
  102    |  4     (((■■):)(■■))\}         fail dot
  103    |  4     (((■■):)(■|■))\}        fail dot
  104    |  4     (((■■):)(■){■})\}       fail dot
  105    |  4     (((■):)[0-9])■          fail dot
  106    |  4     ((((■■)■):)[0-9])■      fail dot
  107    |  4     ((((■|■)■):)[0-9])■     fail dot
  108    |  4     ((((■){■}■):)[0-9])■    fail dot
  109    |  4     (((■■):)[0-9])(■■)      fail dot
  110    |  4     (((■■):)[0-9])(■|■)     fail dot
  111    |  4     (((■■):)[0-9])(■){■}    fail dot
  112    |  4     ((■:)[0-9])\}           fail dotstar or empty
  113    |  4     (((■[0-9])■)■)■         fail dot
  114    |  4     ((((■■)[0-9])■)■)\}     fail dot
  115    |  4     ((((■|■)[0-9])■)■)\}    fail dot
  116    |  4     ((((■){■}[0-9])■)■)\}     unsatisfiable SAT formula       
  117    |  4     (((■[0-9])(■■))■)\}     fail dot
  118    |  4     (((■[0-9])(■|■))■)\}    fail dot
  119    |  4     (((■[0-9])(■){■})■)\}     unsatisfiable SAT formula       
  120    |  4     (((■[0-9])■)(■■))\}     fail dot
  121    |  4     (((■[0-9])■)(■|■))\}    fail dot
  122    |  4     (((■[0-9])■)(■){■})\}     unsatisfiable SAT formula       
  123    |  4     ((((■■)[0-9])■)[0-9])■  fail dot
  124    |  4     ((((■|■)[0-9])■)[0-9])■ fail dot
  125    |  4     ((((■){■}[0-9])■)[0-9])■  unsatisfiable SAT formula       
  126    |  4     (((■[0-9])(■■))[0-9])■  fail dot
  127    |  4     (((■[0-9])(■|■))[0-9])■ fail dot
  128    |  4     (((■[0-9])(■){■})[0-9])■  unsatisfiable SAT formula       
  129    |  4     (((■[0-9])■)[0-9])(■■)  fail dot
  130    |  4     (((■[0-9])■)[0-9])(■|■) fail dot
  131    |  4     (((■[0-9])■)[0-9])(■){■}fail dot
  132    |  4     ((((■)[0-9])■)[0-9])\}  fail dot
  133    |  4     (((((■■)■)[0-9])■)[0-9])\}fail dot
  134    |  4     (((((■|■)■)[0-9])■)[0-9])\}fail dot
  135    |  4     (((((■){■}■)[0-9])■)[0-9])\}  unsatisfiable SAT formula       
  136    |  4     ((((■■)[0-9])(■■))[0-9])\}fail dot
  137    |  4     ((((■■)[0-9])(■|■))[0-9])\}fail dot
  138    |  4     ((((■■)[0-9])(■){■})[0-9])\}fail dot
  139    |  4     ((((■■|■)[0-9])■)[0-9])\}fail dot
  140    |  4     (((((■|■)|■)[0-9])■)[0-9])\}fail dot
  141    |  4     (((((■){■}|■)[0-9])■)[0-9])\}  unsatisfiable SAT formula       
  142    |  4     ((((■|■)[0-9])(■■))[0-9])\}fail dot
  143    |  4     ((((■|■)[0-9])(■|■))[0-9])\}fail dot
  144    |  4     ((((■|■)[0-9])(■){■})[0-9])\}  unsatisfiable SAT formula       
  145    |  4     ((((■■){■}[0-9])■)[0-9])\}fail dot
  146    |  4     (((((■|■)){■}[0-9])■)[0-9])\}fail solve
  147    |  4     (((((■){■}){■}[0-9])■)[0-9])\}  unsatisfiable SAT formula       
  148    |  4     ((((■){■}[0-9])(■■))[0-9])\}fail dot
  149    |  4     ((((■){■}[0-9])(■|■))[0-9])\}fail solve
  150    |  4     ((((■){■}[0-9])(■){■})[0-9])\}  unsatisfiable SAT formula       
  151    |  4     (((■[0-9])(■))[0-9])\}  fail dot
  152    |  4     (((■[0-9])((■■)■))[0-9])\}fail dot
  153    |  4     (((■[0-9])((■|■)■))[0-9])\}fail dot
  154    |  4     (((■[0-9])((■){■}■))[0-9])\}  unsatisfiable SAT formula       
  155    |  4     (((■[0-9])(■■|■))[0-9])\}fail dot
  156    |  4     (((■[0-9])((■|■)|■))[0-9])\}fail dot
  157    |  4     (((■[0-9])((■){■}|■))[0-9])\}  unsatisfiable SAT formula       
  158    |  4     (((■[0-9])(■■){■})[0-9])\}fail dot
  159    |  4     (((■[0-9])((■|■)){■})[0-9])\}fail solve
  160    |  4     (((■[0-9])((■){■}){■})[0-9])\}  unsatisfiable SAT formula       
  161    |  4     ((((■■)[0-9]):)■)■      fail dot
  162    |  4     ((((■|■)[0-9]):)■)■     fail dot
  163    |  4     ((((■){■}[0-9]):)■)■    fail dot
  164    |  4     (((■[0-9]):)(■■))■      fail dot
  165    |  4     (((■[0-9]):)(■|■))■     fail dot
  166    |  4     (((■[0-9]):)(■){■})■    fail dot
  167    |  4     (((■[0-9]):)■)(■■)      fail dot
  168    |  4     (((■[0-9]):)■)(■|■)     fail dot
  169    |  4     (((■[0-9]):)■)(■){■}    fail dot
  170    |  4     ((((■)[0-9]):)■)\}      fail dot
  171    |  4     (((((■■)■)[0-9]):)■)\}  fail dot
  172    |  4     (((((■|■)■)[0-9]):)■)\} fail dot
  173    |  4     (((((■){■}■)[0-9]):)■)\}fail dot
  174    |  4     ((((■■)[0-9]):)(■■))\}  fail dot
  175    |  4     ((((■■)[0-9]):)(■|■))\} fail dot
  176    |  4     ((((■■)[0-9]):)(■){■})\}fail dot
  177    |  4     ((((■■|■)[0-9]):)■)\}   fail dot
  178    |  4     (((((■|■)|■)[0-9]):)■)\}fail dot
  179    |  4     (((((■){■}|■)[0-9]):)■)\}fail dot
  180    |  4     ((((■|■)[0-9]):)(■■))\} fail dot
  181    |  4     ((((■|■)[0-9]):)(■|■))\}fail dot
  182    |  4     ((((■|■)[0-9]):)(■){■})\}fail dot
  183    |  4     ((((■■){■}[0-9]):)■)\}  fail dot
  184    |  4     (((((■|■)){■}[0-9]):)■)\}fail dot
  185    |  4     (((((■){■}){■}[0-9]):)■)\}fail dot
  186    |  4     ((((■){■}[0-9]):)(■■))\}fail dot
  187    |  4     ((((■){■}[0-9]):)(■|■))\}fail dot
  188    |  4     ((((■){■}[0-9]):)(■){■})\}get a solution: (((([29{0]){1,3}[0-9]):)([1590]){1,3})\}
add positive: {1:2}
add negative: 00:0}
  unsatisfiable SAT formula       
  189    |  4     (((■[0-9]):)(■))\}      fail dot
  190    |  4     (((■[0-9]):)((■■)■))\}  fail dot
  191    |  4     (((■[0-9]):)((■|■)■))\} fail dot
  192    |  4     (((■[0-9]):)((■){■}■))\}fail dot
  193    |  4     (((■[0-9]):)(■■|■))\}   fail dot
  194    |  4     (((■[0-9]):)((■|■)|■))\}fail dot
  195    |  4     (((■[0-9]):)((■){■}|■))\}fail dot
  196    |  4     (((■[0-9]):)(■■){■})\}  fail dot
  197    |  4     (((■[0-9]):)((■|■)){■})\}fail dot
  198    |  4     (((■[0-9]):)((■){■}){■})\}fail dot
  199    |  4     ((((■)[0-9]):)[0-9])■   fail dot
  200    |  4     (((((■■)■)[0-9]):)[0-9])■fail dot
  201    |  4     (((((■|■)■)[0-9]):)[0-9])■fail dot
  202    |  4     (((((■){■}■)[0-9]):)[0-9])■fail dot
  203    |  4     ((((■■)[0-9]):)[0-9])(■■)fail dot
  204    |  4     ((((■■)[0-9]):)[0-9])(■|■)fail dot
  205    |  4     ((((■■)[0-9]):)[0-9])(■){■}fail dot
  206    |  4     ((((■■|■)[0-9]):)[0-9])■fail dot
  207    |  4     (((((■|■)|■)[0-9]):)[0-9])■fail dot
  208    |  4     (((((■){■}|■)[0-9]):)[0-9])■fail dot
  209    |  4     ((((■|■)[0-9]):)[0-9])(■■)fail dot
  210    |  4     ((((■|■)[0-9]):)[0-9])(■|■)fail dot
  211    |  4     ((((■|■)[0-9]):)[0-9])(■){■}fail dot
  212    |  4     ((((■■){■}[0-9]):)[0-9])■fail dot
  213    |  4     (((((■|■)){■}[0-9]):)[0-9])■fail dot
  214    |  4     (((((■){■}){■}[0-9]):)[0-9])■fail dot
  215    |  4     ((((■){■}[0-9]):)[0-9])(■■)fail dot
  216    |  4     ((((■){■}[0-9]):)[0-9])(■|■)fail dot
  217    |  4     ((((■){■}[0-9]):)[0-9])(■){■}  unsatisfiable SAT formula       
  218    |  4     (((■[0-9]):)[0-9])(■)   fail dot
  219    |  4     (((■[0-9]):)[0-9])((■■)■)fail dot
  220    |  4     (((■[0-9]):)[0-9])((■|■)■)fail dot
  221    |  4     (((■[0-9]):)[0-9])((■){■}■)fail dot
  222    |  4     (((■[0-9]):)[0-9])(■■|■)fail dot
  223    |  4     (((■[0-9]):)[0-9])((■|■)|■)fail dot
  224    |  4     (((■[0-9]):)[0-9])((■){■}|■)fail dot
  225    |  4     (((■[0-9]):)[0-9])(■■){■}fail dot
  226    |  4     (((■[0-9]):)[0-9])((■|■)){■}fail dot
  227    |  4     (((■[0-9]):)[0-9])((■){■}){■}fail dot
  228    |  4     (((\{■)■)■)■            fail dot
  229    |  4     (((\{(■■))■)■)\}        fail dot
  230    |  4     (((\{(■|■))■)■)\}       fail dot
  231    |  4     (((\{(■){■})■)■)\}        unsatisfiable SAT formula       
  232    |  4     (((\{■)(■■))■)\}        fail dot
  233    |  4     (((\{■)(■|■))■)\}       fail dot
  234    |  4     (((\{■)(■){■})■)\}        unsatisfiable SAT formula       
  235    |  4     (((\{■)■)(■■))\}        fail dot
  236    |  4     (((\{■)■)(■|■))\}       fail dot
  237    |  4     (((\{■)■)(■){■})\}        unsatisfiable SAT formula       
  238    |  4     (((\{(■■))■)[0-9])■     fail dot
  239    |  4     (((\{(■|■))■)[0-9])■    fail dot
  240    |  4     (((\{(■){■})■)[0-9])■     unsatisfiable SAT formula       
  241    |  4     (((\{■)(■■))[0-9])■     fail dot
  242    |  4     (((\{■)(■|■))[0-9])■    fail dot
  243    |  4     (((\{■)(■){■})[0-9])■     unsatisfiable SAT formula       
  244    |  4     (((\{■)■)[0-9])(■■)     fail dot
  245    |  4     (((\{■)■)[0-9])(■|■)    fail dot
  246    |  4     (((\{■)■)[0-9])(■){■}   fail dot
  247    |  4     (((\{(■))■)[0-9])\}     fail dot
  248    |  4     (((\{((■■)■))■)[0-9])\} fail dot
  249    |  4     (((\{((■|■)■))■)[0-9])\}fail dot
  250    |  4     (((\{((■){■}■))■)[0-9])\}  unsatisfiable SAT formula       
  251    |  4     (((\{(■■))(■■))[0-9])\} fail dot
  252    |  4     (((\{(■■))(■|■))[0-9])\}fail dot
  253    |  4     (((\{(■■))(■){■})[0-9])\}  unsatisfiable SAT formula       
  254    |  4     (((\{(■■|■))■)[0-9])\}  fail dot
  255    |  4     (((\{((■|■)|■))■)[0-9])\}fail dot
  256    |  4     (((\{((■){■}|■))■)[0-9])\}  unsatisfiable SAT formula       
  257    |  4     (((\{(■|■))(■■))[0-9])\}fail dot
  258    |  4     (((\{(■|■))(■|■))[0-9])\}fail dot
  259    |  4     (((\{(■|■))(■){■})[0-9])\}  unsatisfiable SAT formula       
  260    |  4     (((\{(■■){■})■)[0-9])\} fail dot
  261    |  4     (((\{((■|■)){■})■)[0-9])\}fail solve
  262    |  4     (((\{((■){■}){■})■)[0-9])\}  unsatisfiable SAT formula       
  263    |  4     (((\{(■){■})(■■))[0-9])\}  unsatisfiable SAT formula       
  264    |  4     (((\{(■){■})(■|■))[0-9])\}fail solve
  265    |  4     (((\{(■){■})(■){■})[0-9])\}  unsatisfiable SAT formula       
  266    |  4     (((\{■)(■))[0-9])\}     fail dot
  267    |  4     (((\{■)((■■)■))[0-9])\} fail dot
  268    |  4     (((\{■)((■|■)■))[0-9])\}fail dot
  269    |  4     (((\{■)((■){■}■))[0-9])\}  unsatisfiable SAT formula       
  270    |  4     (((\{■)(■■|■))[0-9])\}  fail dot
  271    |  4     (((\{■)((■|■)|■))[0-9])\}fail dot
  272    |  4     (((\{■)((■){■}|■))[0-9])\}  unsatisfiable SAT formula       
  273    |  4     (((\{■)(■■){■})[0-9])\} fail dot
  274    |  4     (((\{■)((■|■)){■})[0-9])\}fail solve
  275    |  4     (((\{■)((■){■}){■})[0-9])\}  unsatisfiable SAT formula       
  276    |  4     (((\{(■■)):)■)■         fail dot
  277    |  4     (((\{(■|■)):)■)■        fail dot
  278    |  4     (((\{(■){■}):)■)■       fail dot
  279    |  4     (((\{■):)(■■))■         fail dot
  280    |  4     (((\{■):)(■|■))■        fail dot
  281    |  4     (((\{■):)(■){■})■       fail dot
  282    |  4     (((\{■):)■)(■■)         fail dot
  283    |  4     (((\{■):)■)(■|■)        fail dot
  284    |  4     (((\{■):)■)(■){■}       fail dot
  285    |  4     (((\{(■)):)■)\}         fail dot
  286    |  4     (((\{((■■)■)):)■)\}     fail dot
  287    |  4     (((\{((■|■)■)):)■)\}    fail dot
  288    |  4     (((\{((■){■}■)):)■)\}   fail dot
  289    |  4     (((\{(■■)):)(■■))\}     fail dot
  290    |  4     (((\{(■■)):)(■|■))\}    fail dot
  291    |  4     (((\{(■■)):)(■){■})\}   fail dot
  292    |  4     (((\{(■■|■)):)■)\}      fail dot
  293    |  4     (((\{((■|■)|■)):)■)\}   fail dot
  294    |  4     (((\{((■){■}|■)):)■)\}  fail dot
  295    |  4     (((\{(■|■)):)(■■))\}    fail dot
  296    |  4     (((\{(■|■)):)(■|■))\}   fail dot
  297    |  4     (((\{(■|■)):)(■){■})\}  fail dot
  298    |  4     (((\{(■■){■}):)■)\}     fail dot
  299    |  4     (((\{((■|■)){■}):)■)\}  fail dot
  300    |  4     (((\{((■){■}){■}):)■)\} fail dot
  301    |  4     (((\{(■){■}):)(■■))\}   fail dot
  302    |  4     (((\{(■){■}):)(■|■))\}  fail dot
  303    |  4     (((\{(■){■}):)(■){■})\} get a solution: (((\{([1290]){1,3}):)([12590]){1,3})\}
add positive: {0:3}
get a solution: (((\{([1290]){1,3}):)([123590]){1,3})\}
add positive: {0:4}
get a solution: (((\{([1290]){1,3}):)([1234590]){1,3})\}
add positive: {3:0}
get a solution: (((\{([12390]){1,3}):)([1234590]){1,3})\}
add positive: {0:6}
get a solution: (((\{([12390]){1,3}):)([12345690]){1,3})\}
add positive: {0:7}
get a solution: (((\{([12390]){1,3}):)([123456790]){1,3})\}
add positive: {4:0}
get a solution: (((\{([123490]){1,3}):)([123456790]){1,3})\}
add positive: {0:8}
get a solution: (((\{([123490]){1,3}):)([1234567890]){1,3})\}
add positive: {5:0}
get a solution: (((\{([1234590]){1,3}):)([1234567890]){1,3})\}
add positive: {6:0}
get a solution: (((\{([12345690]){1,3}):)([1234567890]){1,3})\}
add positive: {7:0}
get a solution: (((\{([123456790]){1,3}):)([1234567890]){1,3})\}
add positive: {8:0}
get a solution: (((\{([1234567890]){1,3}):)([1234567890]){1,3})\}
add positive: {0000:0}
get a solution: (((\{([1234567890]){1,4}):)([1234567890]){1,3})\}
add positive: {0:0000}
get a solution: (((\{([1234567890]){1,4}):)([1234567890]){1,4})\}
add positive: {00000:0}
get a solution: (((\{([1234567890]){1,5}):)([1234567890]){1,4})\}
add positive: {0:00000}
get a solution: (((\{([1234567890]){1,5}):)([1234567890]){1,5})\}
add positive: {000000:0}
get a solution: (((\{([1234567890]){1,6}):)([1234567890]){1,5})\}
add positive: {0:000000}
get a solution: (((\{([1234567890]){1,6}):)([1234567890]){0,6})\}
add positive: {0000000:0}
add negative: {0:}
get a solution: (((\{([1234567890]){1,7}):)([1234567890]){1,6})\}
add positive: {0:0000000}
get a solution: (((\{([1234567890]){0,7}):)([1234567890]){1,7})\}
add positive: {00000000:0}
add negative: {:0}
get a solution: (((\{([1234567890]){1,8}):)([1234567890]){1,7})\}
add positive: {0:00000000}
get a solution: (((\{([1234567890]){1,8}):)([1234567890]){1,8})\}
add positive: {000000000:0}
get a solution: (((\{([1234567890]){1,9}):)([1234567890]){1,8})\}
add positive: {0:000000000}
get a solution: (((\{([1234567890]){1,9}):)([1234567890]){1,9})\}
add positive: {0000000000:0}
get a solution: (((\{([1234567890]){1,10}):)([1234567890]){1,9})\}
add positive: {0:0000000000}
get a solution: (((\{([1234567890]){1,10}):)([1234567890]){1,10})\}
add positive: {00000000000:0}
get a solution: (((\{([1234567890]){1,11}):)([1234567890]){1,10})\}
add positive: {0:00000000000}
get a solution: (((\{([1234567890]){1,11}):)([1234567890]){1,11})\}
add positive: {000000000000:0}
get a solution: (((\{([1234567890]){1,12}):)([1234567890]){1,11})\}
add positive: {0:000000000000}
get a solution: (((\{([1234567890]){1,12}):)([1234567890]){1,12})\}
add positive: {0000000000000:0}
get a solution: (((\{([1234567890]){1,13}):)([1234567890]){1,12})\}
add positive: {0:0000000000000}
get a solution: (((\{([1234567890]){1,13}):)([1234567890]){1,13})\}
add positive: {00000000000000:0}
get a solution: (((\{([1234567890]){1,14}):)([1234567890]){1,13})\}
add positive: {0:00000000000000}
get a solution: (((\{([1234567890]){1,14}):)([1234567890]){1,14})\}
add positive: {000000000000000:0}
get a solution: (((\{([1234567890]){1,15}):)([1234567890]){1,14})\}
add positive: {0:000000000000000}
get a solution: (((\{([1234567890]){1,15}):)([1234567890]){1,15})\}
add positive: {0000000000000000:0}
get a solution: (((\{([1234567890]){1,16}):)([1234567890]){1,15})\}
add positive: {0:0000000000000000}
get a solution: (((\{([1234567890]){1,16}):)([1234567890]){1,16})\}
add positive: {00000000000000000:0}
get a solution: (((\{([1234567890]){1,17}):)([1234567890]){1,16})\}
add positive: {0:00000000000000000}
get a solution: (((\{([1234567890]){1,17}):)([1234567890]){1,17})\}
add positive: {000000000000000000:0}
get a solution: (((\{([1234567890]){1,18}):)([1234567890]){1,17})\}
add positive: {0:000000000000000000}
get a solution: (((\{([1234567890]){1,18}):)([1234567890]){1,18})\}
add positive: {0000000000000000000:0}
get a solution: (((\{([1234567890]){1,19}):)([1234567890]){1,18})\}
add positive: {0:0000000000000000000}
get a solution: (((\{([1234567890]){1,19}):)([1234567890]){1,19})\}
add positive: {00000000000000000000:0}
get a solution: (((\{([1234567890]){1,20}):)([1234567890]){1,19})\}
add positive: {0:00000000000000000000}
get a solution: (((\{([1234567890]){1,20}):)([1234567890]){1,20})\}
add positive: {000000000000000000000:0}
get a solution: (((\{([1234567890]){1,21}):)([1234567890]){1,20})\}
add positive: {0:000000000000000000000}
get a solution: (((\{([1234567890]){1,21}):)([1234567890]){1,21})\}
add positive: {0000000000000000000000:0}
get a solution: (((\{([1234567890]){1,22}):)([1234567890]){1,21})\}
add positive: {0:0000000000000000000000}
get a solution: (((\{([1234567890]){1,22}):)([1234567890]){1,22})\}
add positive: {00000000000000000000000:0}
get a solution: (((\{([1234567890]){1,23}):)([1234567890]){1,22})\}
add positive: {0:00000000000000000000000}
get a solution: (((\{([1234567890]){1,23}):)([1234567890]){1,23})\}
add positive: {000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,24}):)([1234567890]){1,23})\}
add positive: {0:000000000000000000000000}
get a solution: (((\{([1234567890]){1,24}):)([1234567890]){1,24})\}
add positive: {0000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,25}):)([1234567890]){1,24})\}
add positive: {0:0000000000000000000000000}
get a solution: (((\{([1234567890]){1,25}):)([1234567890]){1,25})\}
add positive: {00000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,26}):)([1234567890]){1,25})\}
add positive: {0:00000000000000000000000000}
get a solution: (((\{([1234567890]){1,26}):)([1234567890]){1,26})\}
add positive: {000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,27}):)([1234567890]){1,26})\}
add positive: {0:000000000000000000000000000}
get a solution: (((\{([1234567890]){1,27}):)([1234567890]){1,27})\}
add positive: {0000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,28}):)([1234567890]){1,27})\}
add positive: {0:0000000000000000000000000000}
get a solution: (((\{([1234567890]){1,28}):)([1234567890]){1,28})\}
add positive: {00000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,29}):)([1234567890]){1,28})\}
add positive: {0:00000000000000000000000000000}
get a solution: (((\{([1234567890]){1,29}):)([1234567890]){1,29})\}
add positive: {000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,30}):)([1234567890]){1,29})\}
add positive: {0:000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,30}):)([1234567890]){1,30})\}
add positive: {0000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,31}):)([1234567890]){1,30})\}
add positive: {0:0000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,31}):)([1234567890]){1,31})\}
add positive: {00000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,32}):)([1234567890]){1,31})\}
add positive: {0:00000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,32}):)([1234567890]){1,32})\}
add positive: {000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,33}):)([1234567890]){1,32})\}
add positive: {0:000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,33}):)([1234567890]){1,33})\}
add positive: {0000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,34}):)([1234567890]){1,33})\}
add positive: {0:0000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,34}):)([1234567890]){1,34})\}
add positive: {00000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,35}):)([1234567890]){1,34})\}
add positive: {0:00000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,35}):)([1234567890]){1,35})\}
add positive: {000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,36}):)([1234567890]){1,35})\}
add positive: {0:000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,36}):)([1234567890]){1,36})\}
add positive: {0000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,37}):)([1234567890]){1,36})\}
add positive: {0:0000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,37}):)([1234567890]){1,37})\}
add positive: {00000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,38}):)([1234567890]){1,37})\}
add positive: {0:00000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,38}):)([1234567890]){1,38})\}
add positive: {000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,39}):)([1234567890]){1,38})\}
add positive: {0:000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,39}):)([1234567890]){1,39})\}
add positive: {0000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,40}):)([1234567890]){1,39})\}
add positive: {0:0000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,40}):)([1234567890]){1,40})\}
add positive: {00000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,41}):)([1234567890]){1,40})\}
add positive: {0:00000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,41}):)([1234567890]){1,41})\}
add positive: {000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,42}):)([1234567890]){1,41})\}
add positive: {0:000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,42}):)([1234567890]){1,42})\}
add positive: {0000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,43}):)([1234567890]){1,42})\}
add positive: {0:0000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,43}):)([1234567890]){1,43})\}
add positive: {00000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,44}):)([1234567890]){1,43})\}
add positive: {0:00000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,44}):)([1234567890]){1,44})\}
add positive: {000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,45}):)([1234567890]){1,44})\}
add positive: {0:000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,45}):)([1234567890]){1,45})\}
add positive: {0000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,46}):)([1234567890]){1,45})\}
add positive: {0:0000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,46}):)([1234567890]){1,46})\}
add positive: {00000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,47}):)([1234567890]){1,46})\}
add positive: {0:00000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,47}):)([1234567890]){1,47})\}
add positive: {000000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,48}):)([1234567890]){1,47})\}
add positive: {0:000000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,48}):)([1234567890]){1,48})\}
add positive: {0000000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,49}):)([1234567890]){1,48})\}
add positive: {0:0000000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,49}):)([1234567890]){1,49})\}
add positive: {00000000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,50}):)([1234567890]){1,49})\}
add positive: {0:00000000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,50}):)([1234567890]){1,50})\}
add positive: {000000000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,51}):)([1234567890]){1,50})\}
add positive: {0:000000000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,51}):)([1234567890]){1,51})\}
add positive: {0000000000000000000000000000000000000000000000000000:0}
get a solution: (((\{([1234567890]){1,52}):)([1234567890]){1,51})\}
add positive: {0:0000000000000000000000000000000000000000000000000000}
get a solution: (((\{([1234567890]){1,52}):)([1234567890]){1,52})\}

10.082321166992188
timeout