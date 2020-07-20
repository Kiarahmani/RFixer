
Given the regular expression:

  <abc[!e]

That that should match the strings:

  ✓ (0:4)    abcf
  ✓ (4:8)    abcd
  ✓ (8:12)   abc[
  ✓ (12:15)  abc

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■a)b)c)[!e]          fail dotstar or empty
  2      |  1     (((<■)b)c)[!e]          fail dotstar or empty
  3      |  1     (((<a)■)c)[!e]          fail dotstar or empty
  4      |  1     (((<a)b)■)[!e]          fail dotstar or empty
  5      |  1     (((<a)b)c)■             fail dotstar or empty
  6      |  2     (((■■)b)c)[!e]          fail dotstar or empty
  7      |  2     (((■a)■)c)[!e]          fail dotstar or empty
  8      |  2     (((■a)b)■)[!e]          fail dotstar or empty
  9      |  2     (((■a)b)c)■             fail dot
  10     |  2     (((<■)■)c)[!e]          fail dotstar or empty
  11     |  2     (((<■)b)■)[!e]          fail dotstar or empty
  12     |  2     (((<■)b)c)■             fail dotstar or empty
  13     |  2     (((<a)■)■)[!e]          fail dotstar or empty
  14     |  2     (((<a)■)c)■             fail dotstar or empty
  15     |  2     (((<a)b)■)■             fail dotstar or empty
  16     |  3     (((■■)■)c)[!e]          fail dotstar or empty
  17     |  3     (((■■)b)■)[!e]          fail dotstar or empty
  18     |  3     (((■■)b)c)■             fail dot
  19     |  3     (((■)b)c)[!e]           fail dotstar or empty
  20     |  3     (((■a)■)■)[!e]          fail dotstar or empty
  21     |  3     (((■a)■)c)■             fail dot
  22     |  3     (((■a)b)■)■             fail dot
  23     |  3     ((((■■)a)b)c)■          fail dot
  24     |  3     ((((■|■)a)b)c)■         fail dot
  25     |  3     ((((■){■}a)b)c)■        fail dot
  26     |  3     (((■a)b)c)(■■)          fail dot
  27     |  3     (((■a)b)c)(■|■)         fail dot
  28     |  3     (((■a)b)c)(■){■}        fail dot
  29     |  3     (((<■)■)■)[!e]          fail dotstar or empty
  30     |  3     (((<■)■)c)■             fail dotstar or empty
  31     |  3     (((<■)b)■)■             fail dotstar or empty
  32     |  3     (((<a)■)■)■             fail dotstar or empty
  33     |  4     (((■■)■)■)[!e]          fail dotstar or empty
  34     |  4     (((■■)■)c)■             fail dot
  35     |  4     (((■)■)c)[!e]           fail dotstar or empty
  36     |  4     (((■■)b)■)■             fail dot
  37     |  4     (((■)b)■)[!e]           fail dotstar or empty
  38     |  4     (((■)b)c)■              fail dot
  39     |  4     ((((■■)■)b)c)■          fail dot
  40     |  4     ((((■|■)■)b)c)■         fail dot
  41     |  4     ((((■){■}■)b)c)■        fail dot
  42     |  4     (((■■)b)c)(■■)          fail dot
  43     |  4     (((■■)b)c)(■|■)         fail dot
  44     |  4     (((■■)b)c)(■){■}        fail dot
  45     |  4     ((■b)c)[!e]             fail dotstar or empty
  46     |  4     (((■a)■)■)■             fail dot
  47     |  4     ((((■■)a)■)c)■          fail dot
  48     |  4     ((((■|■)a)■)c)■         fail dot
  49     |  4     ((((■){■}a)■)c)■        fail dot
  50     |  4     (((■a)(■■))c)■          fail dot
  51     |  4     (((■a)(■|■))c)■         fail dot
  52     |  4     (((■a)(■){■})c)■        fail dot
  53     |  4     (((■a)■)c)(■■)          fail dot
  54     |  4     (((■a)■)c)(■|■)         fail dot
  55     |  4     (((■a)■)c)(■){■}        fail dot
  56     |  4     ((((■■)a)b)■)■          fail dot
  57     |  4     ((((■|■)a)b)■)■         fail dot
  58     |  4     ((((■){■}a)b)■)■        fail dot
  59     |  4     (((■a)b)(■■))■          fail dot
  60     |  4     (((■a)b)(■|■))■         fail dot
  61     |  4     (((■a)b)(■){■})■        fail dot
  62     |  4     (((■a)b)■)(■■)          fail dot
  63     |  4     (((■a)b)■)(■|■)         fail dot
  64     |  4     (((■a)b)■)(■){■}        fail dot
  65     |  4     ((((■)a)b)c)■           fail dot
  66     |  4     (((((■■)■)a)b)c)■       fail dot
  67     |  4     (((((■|■)■)a)b)c)■      fail dot
  68     |  4     (((((■){■}■)a)b)c)■     fail dot
  69     |  4     ((((■■)a)b)c)(■■)       fail dot
  70     |  4     ((((■■)a)b)c)(■|■)      fail dot
  71     |  4     ((((■■)a)b)c)(■){■}     fail dot
  72     |  4     ((((■■|■)a)b)c)■        fail dot
  73     |  4     (((((■|■)|■)a)b)c)■     fail dot
  74     |  4     (((((■){■}|■)a)b)c)■    fail dot
  75     |  4     ((((■|■)a)b)c)(■■)      fail dot
  76     |  4     ((((■|■)a)b)c)(■|■)     fail dot
  77     |  4     ((((■|■)a)b)c)(■){■}    fail dot
  78     |  4     ((((■■){■}a)b)c)■       fail dot
  79     |  4     (((((■|■)){■}a)b)c)■    fail dot
  80     |  4     (((((■){■}){■}a)b)c)■   fail dot
  81     |  4     ((((■){■}a)b)c)(■■)     fail dot
  82     |  4     ((((■){■}a)b)c)(■|■)    fail dot
  83     |  4     ((((■){■}a)b)c)(■){■}   get a solution: (((([∅]){0}a)b)c)([df[]){0,1}
add positive: abc 
add negative: abc
  unsatisfiable SAT formula       
  84     |  4     (((■a)b)c)(■)           fail dot
  85     |  4     (((■a)b)c)((■■)■)       fail dot
  86     |  4     (((■a)b)c)((■|■)■)      fail dot
  87     |  4     (((■a)b)c)((■){■}■)     fail dot
  88     |  4     (((■a)b)c)(■■|■)        fail dot
  89     |  4     (((■a)b)c)((■|■)|■)     fail dot
  90     |  4     (((■a)b)c)((■){■}|■)    fail dot
  91     |  4     (((■a)b)c)(■■){■}       fail dot
  92     |  4     (((■a)b)c)((■|■)){■}    fail dot
  93     |  4     (((■a)b)c)((■){■}){■}   fail dot
  94     |  4     (((<■)■)■)■             fail dotstar or empty
  95     |  5     (((■■)■)■)■             fail dot
  96     |  5     (((■)■)■)[!e]           fail dotstar or empty
  97     |  5     (((■)■)c)■              fail dot
  98     |  5     ((((■■)■)■)c)■          fail dot
  99     |  5     ((((■|■)■)■)c)■         fail dot
  100    |  5     ((((■){■}■)■)c)■        fail dot
  101    |  5     (((■■)(■■))c)■          fail dot
  102    |  5     (((■■)(■|■))c)■         fail dot
  103    |  5     (((■■)(■){■})c)■        fail dot
  104    |  5     (((■■)■)c)(■■)          fail dot
  105    |  5     (((■■)■)c)(■|■)         fail dot
  106    |  5     (((■■)■)c)(■){■}        fail dot
  107    |  5     ((■■)c)[!e]             fail dotstar or empty
  108    |  5     (((■)b)■)■              fail dot
  109    |  5     ((((■■)■)b)■)■          fail dot
  110    |  5     ((((■|■)■)b)■)■         fail dot
  111    |  5     ((((■){■}■)b)■)■        fail dot
  112    |  5     (((■■)b)(■■))■          fail dot
  113    |  5     (((■■)b)(■|■))■         fail dot
  114    |  5     (((■■)b)(■){■})■        fail dot
  115    |  5     (((■■)b)■)(■■)          fail dot
  116    |  5     (((■■)b)■)(■|■)         fail dot
  117    |  5     (((■■)b)■)(■){■}        fail dot
  118    |  5     ((■b)■)[!e]             fail dotstar or empty
  119    |  5     ((■b)c)■                fail dot
  120    |  5     ((((■■))b)c)■           fail dot
  121    |  5     ((((■|■))b)c)■          fail dot
  122    |  5     ((((■){■})b)c)■         fail dot
  123    |  5     (((■)b)c)(■■)           fail dot
  124    |  5     (((■)b)c)(■|■)          fail dot
  125    |  5     (((■)b)c)(■){■}           unsatisfiable SAT formula       
  126    |  5     ((((■)■)b)c)■           fail dot
  127    |  5     (((((■■)■)■)b)c)■       fail dot
  128    |  5     (((((■|■)■)■)b)c)■      fail dot
  129    |  5     (((((■){■}■)■)b)c)■     fail dot
  130    |  5     ((((■■)(■■))b)c)■       fail dot
  131    |  5     ((((■■)(■|■))b)c)■      fail dot
  132    |  5     ((((■■)(■){■})b)c)■     fail dot
  133    |  5     ((((■■)■)b)c)(■■)       fail dot
  134    |  5     ((((■■)■)b)c)(■|■)      fail dot
  135    |  5     ((((■■)■)b)c)(■){■}     fail dot
  136    |  5     ((((■■|■)■)b)c)■        fail dot
  137    |  5     (((((■|■)|■)■)b)c)■     fail dot
  138    |  5     (((((■){■}|■)■)b)c)■    fail dot
  139    |  5     ((((■|■)(■■))b)c)■      fail dot
  140    |  5     ((((■|■)(■|■))b)c)■     fail dot
  141    |  5     ((((■|■)(■){■})b)c)■    fail dot
  142    |  5     ((((■|■)■)b)c)(■■)      fail dot
  143    |  5     ((((■|■)■)b)c)(■|■)     fail dot
  144    |  5     ((((■|■)■)b)c)(■){■}    fail dot
  145    |  5     ((((■■){■}■)b)c)■       fail dot
  146    |  5     (((((■|■)){■}■)b)c)■    fail dot
  147    |  5     (((((■){■}){■}■)b)c)■   fail dot
  148    |  5     ((((■){■}(■■))b)c)■     fail dot
  149    |  5     ((((■){■}(■|■))b)c)■    fail dot
  150    |  5     ((((■){■}(■){■})b)c)■   fail dot
  151    |  5     ((((■){■}■)b)c)(■■)     fail dot
  152    |  5     ((((■){■}■)b)c)(■|■)    fail dot
  153    |  5     ((((■){■}■)b)c)(■){■}     unsatisfiable SAT formula       
  154    |  5     (((■■)b)c)(■)           fail dot
  155    |  5     (((■■)b)c)((■■)■)       fail dot
  156    |  5     (((■■)b)c)((■|■)■)      fail dot
  157    |  5     (((■■)b)c)((■){■}■)     fail dot
  158    |  5     (((■■)b)c)(■■|■)        fail dot
  159    |  5     (((■■)b)c)((■|■)|■)     fail dot
  160    |  5     (((■■)b)c)((■){■}|■)    fail dot
  161    |  5     (((■■)b)c)(■■){■}       fail dot
  162    |  5     (((■■)b)c)((■|■)){■}    fail dot
  163    |  5     (((■■)b)c)((■){■}){■}   fail dot
  164    |  5     ((((■■)a)■)■)■          fail dot
  165    |  5     ((((■|■)a)■)■)■         fail dot
  166    |  5     ((((■){■}a)■)■)■        fail dot
  167    |  5     (((■a)(■■))■)■          fail dot
  168    |  5     (((■a)(■|■))■)■         fail dot
  169    |  5     (((■a)(■){■})■)■        fail dot
  170    |  5     (((■a)■)(■■))■          fail dot
  171    |  5     (((■a)■)(■|■))■         fail dot
  172    |  5     (((■a)■)(■){■})■        fail dot
  173    |  5     (((■a)■)■)(■■)          fail dot
  174    |  5     (((■a)■)■)(■|■)         fail dot
  175    |  5     (((■a)■)■)(■){■}        fail dot
  176    |  5     ((((■)a)■)c)■           fail dot
  177    |  5     (((((■■)■)a)■)c)■       fail dot
  178    |  5     (((((■|■)■)a)■)c)■      fail dot
  179    |  5     (((((■){■}■)a)■)c)■     fail dot
  180    |  5     ((((■■)a)(■■))c)■       fail dot
  181    |  5     ((((■■)a)(■|■))c)■      fail dot
  182    |  5     ((((■■)a)(■){■})c)■     fail dot
  183    |  5     ((((■■)a)■)c)(■■)       fail dot
  184    |  5     ((((■■)a)■)c)(■|■)      fail dot
  185    |  5     ((((■■)a)■)c)(■){■}     fail dot
  186    |  5     ((((■■|■)a)■)c)■        fail dot
  187    |  5     (((((■|■)|■)a)■)c)■     fail dot
  188    |  5     (((((■){■}|■)a)■)c)■    fail dot
  189    |  5     ((((■|■)a)(■■))c)■      fail dot
  190    |  5     ((((■|■)a)(■|■))c)■     fail dot
  191    |  5     ((((■|■)a)(■){■})c)■    fail dot
  192    |  5     ((((■|■)a)■)c)(■■)      fail dot
  193    |  5     ((((■|■)a)■)c)(■|■)     fail dot
  194    |  5     ((((■|■)a)■)c)(■){■}    fail dot
  195    |  5     ((((■■){■}a)■)c)■       fail dot
  196    |  5     (((((■|■)){■}a)■)c)■    fail dot
  197    |  5     (((((■){■}){■}a)■)c)■   fail dot
  198    |  5     ((((■){■}a)(■■))c)■     fail dot
  199    |  5     ((((■){■}a)(■|■))c)■    fail dot
  200    |  5     ((((■){■}a)(■){■})c)■   fail dot
  201    |  5     ((((■){■}a)■)c)(■■)     fail dot
  202    |  5     ((((■){■}a)■)c)(■|■)    fail dot
  203    |  5     ((((■){■}a)■)c)(■){■}     unsatisfiable SAT formula       
  204    |  5     (((■a)(■))c)■           fail dot
  205    |  5     (((■a)((■■)■))c)■       fail dot
  206    |  5     (((■a)((■|■)■))c)■      fail dot
  207    |  5     (((■a)((■){■}■))c)■     fail dot
  208    |  5     (((■a)(■■))c)(■■)       fail dot
  209    |  5     (((■a)(■■))c)(■|■)      fail dot
  210    |  5     (((■a)(■■))c)(■){■}     fail dot
  211    |  5     (((■a)(■■|■))c)■        fail dot
  212    |  5     (((■a)((■|■)|■))c)■     fail dot
  213    |  5     (((■a)((■){■}|■))c)■    fail dot
  214    |  5     (((■a)(■|■))c)(■■)      fail dot
  215    |  5     (((■a)(■|■))c)(■|■)     fail dot
  216    |  5     (((■a)(■|■))c)(■){■}    fail dot
  217    |  5     (((■a)(■■){■})c)■       fail dot
  218    |  5     (((■a)((■|■)){■})c)■    fail dot
  219    |  5     (((■a)((■){■}){■})c)■   fail dot
  220    |  5     (((■a)(■){■})c)(■■)     fail dot
  221    |  5     (((■a)(■){■})c)(■|■)    fail dot
  222    |  5     (((■a)(■){■})c)(■){■}   fail dot
  223    |  5     (((■a)■)c)(■)           fail dot
  224    |  5     (((■a)■)c)((■■)■)       fail dot
  225    |  5     (((■a)■)c)((■|■)■)      fail dot
  226    |  5     (((■a)■)c)((■){■}■)     fail dot
  227    |  5     (((■a)■)c)(■■|■)        fail dot
  228    |  5     (((■a)■)c)((■|■)|■)     fail dot
  229    |  5     (((■a)■)c)((■){■}|■)    fail dot
  230    |  5     (((■a)■)c)(■■){■}       fail dot
  231    |  5     (((■a)■)c)((■|■)){■}    fail dot
  232    |  5     (((■a)■)c)((■){■}){■}   fail dot
  233    |  5     ((((■)a)b)■)■           fail dot
  234    |  5     (((((■■)■)a)b)■)■       fail dot
  235    |  5     (((((■|■)■)a)b)■)■      fail dot
  236    |  5     (((((■){■}■)a)b)■)■     fail dot
  237    |  5     ((((■■)a)b)(■■))■       fail dot
  238    |  5     ((((■■)a)b)(■|■))■      fail dot
  239    |  5     ((((■■)a)b)(■){■})■     fail dot
  240    |  5     ((((■■)a)b)■)(■■)       fail dot
  241    |  5     ((((■■)a)b)■)(■|■)      fail dot
  242    |  5     ((((■■)a)b)■)(■){■}     fail dot
  243    |  5     ((((■■|■)a)b)■)■        fail dot
  244    |  5     (((((■|■)|■)a)b)■)■     fail dot
  245    |  5     (((((■){■}|■)a)b)■)■    fail dot
  246    |  5     ((((■|■)a)b)(■■))■      fail dot
  247    |  5     ((((■|■)a)b)(■|■))■     fail dot
  248    |  5     ((((■|■)a)b)(■){■})■    fail dot
  249    |  5     ((((■|■)a)b)■)(■■)      fail dot
  250    |  5     ((((■|■)a)b)■)(■|■)     fail dot
  251    |  5     ((((■|■)a)b)■)(■){■}    fail dot
  252    |  5     ((((■■){■}a)b)■)■       fail dot
  253    |  5     (((((■|■)){■}a)b)■)■    fail dot
  254    |  5     (((((■){■}){■}a)b)■)■   fail dot
  255    |  5     ((((■){■}a)b)(■■))■     fail dot
  256    |  5     ((((■){■}a)b)(■|■))■    fail dot
  257    |  5     ((((■){■}a)b)(■){■})■     unsatisfiable SAT formula       
  258    |  5     ((((■){■}a)b)■)(■■)     fail dot
  259    |  5     ((((■){■}a)b)■)(■|■)    fail dot
  260    |  5     ((((■){■}a)b)■)(■){■}     unsatisfiable SAT formula       
  261    |  5     (((■a)b)(■))■           fail dot
  262    |  5     (((■a)b)((■■)■))■       fail dot
  263    |  5     (((■a)b)((■|■)■))■      fail dot
  264    |  5     (((■a)b)((■){■}■))■     fail dot
  265    |  5     (((■a)b)(■■))(■■)       fail dot
  266    |  5     (((■a)b)(■■))(■|■)      fail dot
  267    |  5     (((■a)b)(■■))(■){■}     fail dot
  268    |  5     (((■a)b)(■■|■))■        fail dot
  269    |  5     (((■a)b)((■|■)|■))■     fail dot
  270    |  5     (((■a)b)((■){■}|■))■    fail dot
  271    |  5     (((■a)b)(■|■))(■■)      fail dot
  272    |  5     (((■a)b)(■|■))(■|■)     fail dot
  273    |  5     (((■a)b)(■|■))(■){■}    fail dot
  274    |  5     (((■a)b)(■■){■})■       fail dot
  275    |  5     (((■a)b)((■|■)){■})■    fail dot
  276    |  5     (((■a)b)((■){■}){■})■   fail dot
  277    |  5     (((■a)b)(■){■})(■■)     fail dot
  278    |  5     (((■a)b)(■){■})(■|■)    fail dot
  279    |  5     (((■a)b)(■){■})(■){■}   fail dot
  280    |  5     (((■a)b)■)(■)           fail dot
  281    |  5     (((■a)b)■)((■■)■)       fail dot
  282    |  5     (((■a)b)■)((■|■)■)      fail dot
  283    |  5     (((■a)b)■)((■){■}■)     fail dot
  284    |  5     (((■a)b)■)(■■|■)        fail dot
  285    |  5     (((■a)b)■)((■|■)|■)     fail dot
  286    |  5     (((■a)b)■)((■){■}|■)    fail dot
  287    |  5     (((■a)b)■)(■■){■}       fail dot
  288    |  5     (((■a)b)■)((■|■)){■}    fail dot
  289    |  5     (((■a)b)■)((■){■}){■}   fail dot
  290    |  5     (((((■■))a)b)c)■        fail dot
  291    |  5     (((((■|■))a)b)c)■       fail dot
  292    |  5     (((((■){■})a)b)c)■      fail dot
  293    |  5     ((((■)a)b)c)(■■)        fail dot
  294    |  5     ((((■)a)b)c)(■|■)       fail dot
  295    |  5     ((((■)a)b)c)(■){■}      fail dot
  296    |  5     (((((■)■)a)b)c)■        fail dot
  297    |  5     ((((((■■)■)■)a)b)c)■    fail dot
  298    |  5     ((((((■|■)■)■)a)b)c)■   fail dot
  299    |  5     ((((((■){■}■)■)a)b)c)■  fail dot
  300    |  5     (((((■■)(■■))a)b)c)■    fail dot
  301    |  5     (((((■■)(■|■))a)b)c)■   fail dot
  302    |  5     (((((■■)(■){■})a)b)c)■  fail dot
  303    |  5     (((((■■)■)a)b)c)(■■)    fail dot
  304    |  5     (((((■■)■)a)b)c)(■|■)   fail dot
  305    |  5     (((((■■)■)a)b)c)(■){■}  fail dot
  306    |  5     (((((■■|■)■)a)b)c)■     fail dot
  307    |  5     ((((((■|■)|■)■)a)b)c)■  fail dot
  308    |  5     ((((((■){■}|■)■)a)b)c)■ fail dot
  309    |  5     (((((■|■)(■■))a)b)c)■   fail dot
  310    |  5     (((((■|■)(■|■))a)b)c)■  fail dot
  311    |  5     (((((■|■)(■){■})a)b)c)■ fail dot
  312    |  5     (((((■|■)■)a)b)c)(■■)   fail dot
  313    |  5     (((((■|■)■)a)b)c)(■|■)  fail dot
  314    |  5     (((((■|■)■)a)b)c)(■){■} fail dot
  315    |  5     (((((■■){■}■)a)b)c)■    fail dot
  316    |  5     ((((((■|■)){■}■)a)b)c)■ fail dot
  317    |  5     ((((((■){■}){■}■)a)b)c)■fail dot
  318    |  5     (((((■){■}(■■))a)b)c)■  fail dot
  319    |  5     (((((■){■}(■|■))a)b)c)■ fail dot
  320    |  5     (((((■){■}(■){■})a)b)c)■fail dot
  321    |  5     (((((■){■}■)a)b)c)(■■)  fail dot
  322    |  5     (((((■){■}■)a)b)c)(■|■) fail dot
  323    |  5     (((((■){■}■)a)b)c)(■){■}fail dot
  324    |  5     ((((■■)a)b)c)(■)        fail dot
  325    |  5     ((((■■)a)b)c)((■■)■)    fail dot
  326    |  5     ((((■■)a)b)c)((■|■)■)   fail dot
  327    |  5     ((((■■)a)b)c)((■){■}■)  fail dot
  328    |  5     ((((■■)a)b)c)(■■|■)     fail dot
  329    |  5     ((((■■)a)b)c)((■|■)|■)  fail dot
  330    |  5     ((((■■)a)b)c)((■){■}|■) fail dot
  331    |  5     ((((■■)a)b)c)(■■){■}    fail dot
  332    |  5     ((((■■)a)b)c)((■|■)){■} fail dot
  333    |  5     ((((■■)a)b)c)((■){■}){■}fail dot
  334    |  5     (((((■■)■|■)a)b)c)■     fail dot
  335    |  5     (((((■|■)■|■)a)b)c)■    fail dot
  336    |  5     (((((■){■}■|■)a)b)c)■   fail dot
  337    |  5     ((((■■|■■)a)b)c)■       fail dot
  338    |  5     ((((■■|(■|■))a)b)c)■    fail dot
  339    |  5     ((((■■|(■){■})a)b)c)■   fail dot
  340    |  5     ((((■■|■)a)b)c)(■■)     fail dot
  341    |  5     ((((■■|■)a)b)c)(■|■)    fail dot
  342    |  5     ((((■■|■)a)b)c)(■){■}   fail dot
  343    |  5     (((((■■|■)|■)a)b)c)■    fail dot
  344    |  5     ((((((■|■)|■)|■)a)b)c)■ fail dot
  345    |  5     ((((((■){■}|■)|■)a)b)c)■fail dot
  346    |  5     (((((■|■)|■■)a)b)c)■    fail dot
  347    |  5     (((((■|■)|(■|■))a)b)c)■ fail dot
  348    |  5     (((((■|■)|(■){■})a)b)c)■fail dot
  349    |  5     (((((■|■)|■)a)b)c)(■■)  fail dot
  350    |  5     (((((■|■)|■)a)b)c)(■|■) fail dot
  351    |  5     (((((■|■)|■)a)b)c)(■){■}fail dot
  352    |  5     (((((■■){■}|■)a)b)c)■   fail dot
  353    |  5     ((((((■|■)){■}|■)a)b)c)■fail dot
  354    |  5     ((((((■){■}){■}|■)a)b)c)■fail dot
  355    |  5     (((((■){■}|■■)a)b)c)■   fail dot
  356    |  5     (((((■){■}|(■|■))a)b)c)■fail dot
  357    |  5     (((((■){■}|(■){■})a)b)c)■fail dot
  358    |  5     (((((■){■}|■)a)b)c)(■■) fail dot
  359    |  5     (((((■){■}|■)a)b)c)(■|■)fail dot
  360    |  5     (((((■){■}|■)a)b)c)(■){■}  unsatisfiable SAT formula       
  361    |  5     ((((■|■)a)b)c)(■)       fail dot
  362    |  5     ((((■|■)a)b)c)((■■)■)   fail dot
  363    |  5     ((((■|■)a)b)c)((■|■)■)  fail dot
  364    |  5     ((((■|■)a)b)c)((■){■}■) fail dot
  365    |  5     ((((■|■)a)b)c)(■■|■)    fail dot
  366    |  5     ((((■|■)a)b)c)((■|■)|■) fail dot
  367    |  5     ((((■|■)a)b)c)((■){■}|■)fail dot
  368    |  5     ((((■|■)a)b)c)(■■){■}   fail dot
  369    |  5     ((((■|■)a)b)c)((■|■)){■}fail dot
  370    |  5     ((((■|■)a)b)c)((■){■}){■}fail dot
  371    |  5     (((((■■)■){■}a)b)c)■    fail dot
  372    |  5     (((((■|■)■){■}a)b)c)■   fail dot
  373    |  5     (((((■){■}■){■}a)b)c)■  fail dot
  374    |  5     ((((■■){■}a)b)c)(■■)    fail dot
  375    |  5     ((((■■){■}a)b)c)(■|■)   fail dot
  376    |  5     ((((■■){■}a)b)c)(■){■}    unsatisfiable SAT formula       
  377    |  5     (((((■■|■)){■}a)b)c)■   fail dot
  378    |  5     ((((((■|■)|■)){■}a)b)c)■fail dot
  379    |  5     ((((((■){■}|■)){■}a)b)c)■fail dot
  380    |  5     (((((■|■)){■}a)b)c)(■■) fail dot
  381    |  5     (((((■|■)){■}a)b)c)(■|■)fail dot
  382    |  5     (((((■|■)){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  383    |  5     (((((■■){■}){■}a)b)c)■  fail dot
  384    |  5     ((((((■|■)){■}){■}a)b)c)■fail dot
  385    |  5     ((((((■){■}){■}){■}a)b)c)■fail dot
  386    |  5     (((((■){■}){■}a)b)c)(■■)fail dot
  387    |  5     (((((■){■}){■}a)b)c)(■|■)fail dot
  388    |  5     (((((■){■}){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  389    |  5     ((((■){■}a)b)c)(■)      fail dot
  390    |  5     ((((■){■}a)b)c)((■■)■)  fail dot
  391    |  5     ((((■){■}a)b)c)((■|■)■) fail dot
  392    |  5     ((((■){■}a)b)c)((■){■}■)fail dot
  393    |  5     ((((■){■}a)b)c)(■■|■)   fail dot
  394    |  5     ((((■){■}a)b)c)((■|■)|■)fail dot
  395    |  5     ((((■){■}a)b)c)((■){■}|■)  unsatisfiable SAT formula       
  396    |  5     ((((■){■}a)b)c)(■■){■}  fail dot
  397    |  5     ((((■){■}a)b)c)((■|■)){■}fail solve
  398    |  5     ((((■){■}a)b)c)((■){■}){■}  unsatisfiable SAT formula       
  399    |  5     (((■a)b)c)((■■))        fail dot
  400    |  5     (((■a)b)c)((■|■))       fail dot
  401    |  5     (((■a)b)c)((■){■})      fail dot
  402    |  5     (((■a)b)c)((■)■)        fail dot
  403    |  5     (((■a)b)c)(((■■)■)■)    fail dot
  404    |  5     (((■a)b)c)(((■|■)■)■)   fail dot
  405    |  5     (((■a)b)c)(((■){■}■)■)  fail dot
  406    |  5     (((■a)b)c)((■■)(■■))    fail dot
  407    |  5     (((■a)b)c)((■■)(■|■))   fail dot
  408    |  5     (((■a)b)c)((■■)(■){■})  fail dot
  409    |  5     (((■a)b)c)((■■|■)■)     fail dot
  410    |  5     (((■a)b)c)(((■|■)|■)■)  fail dot
  411    |  5     (((■a)b)c)(((■){■}|■)■) fail dot
  412    |  5     (((■a)b)c)((■|■)(■■))   fail dot
  413    |  5     (((■a)b)c)((■|■)(■|■))  fail dot
  414    |  5     (((■a)b)c)((■|■)(■){■}) fail dot
  415    |  5     (((■a)b)c)((■■){■}■)    fail dot
  416    |  5     (((■a)b)c)(((■|■)){■}■) fail dot
  417    |  5     (((■a)b)c)(((■){■}){■}■)fail dot
  418    |  5     (((■a)b)c)((■){■}(■■))  fail dot
  419    |  5     (((■a)b)c)((■){■}(■|■)) fail dot
  420    |  5     (((■a)b)c)((■){■}(■){■})fail dot
  421    |  5     (((■a)b)c)((■■)■|■)     fail dot
  422    |  5     (((■a)b)c)((■|■)■|■)    fail dot
  423    |  5     (((■a)b)c)((■){■}■|■)   fail dot
  424    |  5     (((■a)b)c)(■■|■■)       fail dot
  425    |  5     (((■a)b)c)(■■|(■|■))    fail dot
  426    |  5     (((■a)b)c)(■■|(■){■})   fail dot
  427    |  5     (((■a)b)c)((■■|■)|■)    fail dot
  428    |  5     (((■a)b)c)(((■|■)|■)|■) fail dot
  429    |  5     (((■a)b)c)(((■){■}|■)|■)fail dot
  430    |  5     (((■a)b)c)((■|■)|■■)    fail dot
  431    |  5     (((■a)b)c)((■|■)|(■|■)) fail dot
  432    |  5     (((■a)b)c)((■|■)|(■){■})fail dot
  433    |  5     (((■a)b)c)((■■){■}|■)   fail dot
  434    |  5     (((■a)b)c)(((■|■)){■}|■)fail dot
  435    |  5     (((■a)b)c)(((■){■}){■}|■)fail dot
  436    |  5     (((■a)b)c)((■){■}|■■)   fail dot
  437    |  5     (((■a)b)c)((■){■}|(■|■))fail dot
  438    |  5     (((■a)b)c)((■){■}|(■){■})fail dot
  439    |  5     (((■a)b)c)((■■)■){■}    fail dot
  440    |  5     (((■a)b)c)((■|■)■){■}   fail dot
  441    |  5     (((■a)b)c)((■){■}■){■}  fail dot
  442    |  5     (((■a)b)c)((■■|■)){■}   fail dot
  443    |  5     (((■a)b)c)(((■|■)|■)){■}fail dot
  444    |  5     (((■a)b)c)(((■){■}|■)){■}fail dot
  445    |  5     (((■a)b)c)((■■){■}){■}  fail dot
  446    |  5     (((■a)b)c)(((■|■)){■}){■}fail dot
  447    |  5     (((■a)b)c)(((■){■}){■}){■}fail dot
  448    |  6     (((■)■)■)■              fail dot
  449    |  6     ((((■■)■)■)■)■          fail dot
  450    |  6     ((((■|■)■)■)■)■         fail dot
  451    |  6     ((((■){■}■)■)■)■        fail dot
  452    |  6     (((■■)(■■))■)■          fail dot
  453    |  6     (((■■)(■|■))■)■         fail dot
  454    |  6     (((■■)(■){■})■)■        fail dot
  455    |  6     (((■■)■)(■■))■          fail dot
  456    |  6     (((■■)■)(■|■))■         fail dot
  457    |  6     (((■■)■)(■){■})■        fail dot
  458    |  6     (((■■)■)■)(■■)          fail dot
  459    |  6     (((■■)■)■)(■|■)         fail dot
  460    |  6     (((■■)■)■)(■){■}        fail dot
  461    |  6     ((■■)■)[!e]             fail dotstar or empty
  462    |  6     ((■■)c)■                fail dot
  463    |  6     ((((■■))■)c)■           fail dot
  464    |  6     ((((■|■))■)c)■          fail dot
  465    |  6     ((((■){■})■)c)■         fail dot
  466    |  6     (((■)■)c)(■■)           fail dot
  467    |  6     (((■)■)c)(■|■)          fail dot
  468    |  6     (((■)■)c)(■){■}           unsatisfiable SAT formula       
  469    |  6     ((((■)■)■)c)■           fail dot
  470    |  6     (((((■■)■)■)■)c)■       fail dot
  471    |  6     (((((■|■)■)■)■)c)■      fail dot
  472    |  6     (((((■){■}■)■)■)c)■     fail dot
  473    |  6     ((((■■)(■■))■)c)■       fail dot
  474    |  6     ((((■■)(■|■))■)c)■      fail dot
  475    |  6     ((((■■)(■){■})■)c)■     fail dot
  476    |  6     ((((■■)■)(■■))c)■       fail dot
  477    |  6     ((((■■)■)(■|■))c)■      fail dot
  478    |  6     ((((■■)■)(■){■})c)■     fail dot
  479    |  6     ((((■■)■)■)c)(■■)       fail dot
  480    |  6     ((((■■)■)■)c)(■|■)      fail dot
  481    |  6     ((((■■)■)■)c)(■){■}     fail dot
  482    |  6     ((((■■|■)■)■)c)■        fail dot
  483    |  6     (((((■|■)|■)■)■)c)■     fail dot
  484    |  6     (((((■){■}|■)■)■)c)■    fail dot
  485    |  6     ((((■|■)(■■))■)c)■      fail dot
  486    |  6     ((((■|■)(■|■))■)c)■     fail dot
  487    |  6     ((((■|■)(■){■})■)c)■    fail dot
  488    |  6     ((((■|■)■)(■■))c)■      fail dot
  489    |  6     ((((■|■)■)(■|■))c)■     fail dot
  490    |  6     ((((■|■)■)(■){■})c)■    fail dot
  491    |  6     ((((■|■)■)■)c)(■■)      fail dot
  492    |  6     ((((■|■)■)■)c)(■|■)     fail dot
  493    |  6     ((((■|■)■)■)c)(■){■}    fail dot
  494    |  6     ((((■■){■}■)■)c)■       fail dot
  495    |  6     (((((■|■)){■}■)■)c)■    fail dot
  496    |  6     (((((■){■}){■}■)■)c)■   fail dot
  497    |  6     ((((■){■}(■■))■)c)■     fail dot
  498    |  6     ((((■){■}(■|■))■)c)■    fail dot
  499    |  6     ((((■){■}(■){■})■)c)■   fail dot
  500    |  6     ((((■){■}■)(■■))c)■     fail dot
  501    |  6     ((((■){■}■)(■|■))c)■    fail dot
  502    |  6     ((((■){■}■)(■){■})c)■   fail dot
  503    |  6     ((((■){■}■)■)c)(■■)     fail dot
  504    |  6     ((((■){■}■)■)c)(■|■)    fail dot
  505    |  6     ((((■){■}■)■)c)(■){■}     unsatisfiable SAT formula       
  506    |  6     (((■■)(■))c)■           fail dot
  507    |  6     (((■■)(■■))c)(■■)       fail dot
  508    |  6     (((■■)(■■))c)(■|■)      fail dot
  509    |  6     (((■■)(■■))c)(■){■}     fail dot
  510    |  6     (((■■)(■|■))c)(■■)      fail dot
  511    |  6     (((■■)(■|■))c)(■|■)     fail dot
  512    |  6     (((■■)(■|■))c)(■){■}    fail dot
  513    |  6     (((■■)(■){■})c)(■■)     fail dot
  514    |  6     (((■■)(■){■})c)(■|■)    fail dot
  515    |  6     (((■■)(■){■})c)(■){■}     unsatisfiable SAT formula       
  516    |  6     (((■■)■)c)(■)           fail dot
  517    |  6     (((■■)■)c)((■■)■)       fail dot
  518    |  6     (((■■)■)c)((■|■)■)      fail dot
  519    |  6     (((■■)■)c)((■){■}■)     fail dot
  520    |  6     (((■■)■)c)(■■|■)        fail dot
  521    |  6     (((■■)■)c)((■|■)|■)     fail dot
  522    |  6     (((■■)■)c)((■){■}|■)    fail dot
  523    |  6     (((■■)■)c)(■■){■}       fail dot
  524    |  6     (((■■)■)c)((■|■)){■}    fail dot
  525    |  6     (((■■)■)c)((■){■}){■}   fail dot
  526    |  6     ((■)c)[!e]              fail dotstar or empty
  527    |  6     ((■b)■)■                fail dot
  528    |  6     ((((■■))b)■)■           fail dot
  529    |  6     ((((■|■))b)■)■          fail dot
  530    |  6     ((((■){■})b)■)■         fail dot
  531    |  6     (((■)b)(■■))■           fail dot
  532    |  6     (((■)b)(■|■))■          fail dot
  533    |  6     (((■)b)(■){■})■           unsatisfiable SAT formula       
  534    |  6     (((■)b)■)(■■)           fail dot
  535    |  6     (((■)b)■)(■|■)          fail dot
  536    |  6     (((■)b)■)(■){■}           unsatisfiable SAT formula       
  537    |  6     ((((■)■)b)■)■           fail dot
  538    |  6     (((((■■)■)■)b)■)■       fail dot
  539    |  6     (((((■|■)■)■)b)■)■      fail dot
  540    |  6     (((((■){■}■)■)b)■)■     fail dot
  541    |  6     ((((■■)(■■))b)■)■       fail dot
  542    |  6     ((((■■)(■|■))b)■)■      fail dot
  543    |  6     ((((■■)(■){■})b)■)■     fail dot
  544    |  6     ((((■■)■)b)(■■))■       fail dot
  545    |  6     ((((■■)■)b)(■|■))■      fail dot
  546    |  6     ((((■■)■)b)(■){■})■     fail dot
  547    |  6     ((((■■)■)b)■)(■■)       fail dot
  548    |  6     ((((■■)■)b)■)(■|■)      fail dot
  549    |  6     ((((■■)■)b)■)(■){■}     fail dot
  550    |  6     ((((■■|■)■)b)■)■        fail dot
  551    |  6     (((((■|■)|■)■)b)■)■     fail dot
  552    |  6     (((((■){■}|■)■)b)■)■    fail dot
  553    |  6     ((((■|■)(■■))b)■)■      fail dot
  554    |  6     ((((■|■)(■|■))b)■)■     fail dot
  555    |  6     ((((■|■)(■){■})b)■)■    fail dot
  556    |  6     ((((■|■)■)b)(■■))■      fail dot
  557    |  6     ((((■|■)■)b)(■|■))■     fail dot
  558    |  6     ((((■|■)■)b)(■){■})■    fail dot
  559    |  6     ((((■|■)■)b)■)(■■)      fail dot
  560    |  6     ((((■|■)■)b)■)(■|■)     fail dot
  561    |  6     ((((■|■)■)b)■)(■){■}    fail dot
  562    |  6     ((((■■){■}■)b)■)■       fail dot
  563    |  6     (((((■|■)){■}■)b)■)■    fail dot
  564    |  6     (((((■){■}){■}■)b)■)■   fail dot
  565    |  6     ((((■){■}(■■))b)■)■     fail dot
  566    |  6     ((((■){■}(■|■))b)■)■    fail dot
  567    |  6     ((((■){■}(■){■})b)■)■   fail dot
  568    |  6     ((((■){■}■)b)(■■))■     fail dot
  569    |  6     ((((■){■}■)b)(■|■))■    fail dot
  570    |  6     ((((■){■}■)b)(■){■})■     unsatisfiable SAT formula       
  571    |  6     ((((■){■}■)b)■)(■■)     fail dot
  572    |  6     ((((■){■}■)b)■)(■|■)    fail dot
  573    |  6     ((((■){■}■)b)■)(■){■}     unsatisfiable SAT formula       
  574    |  6     (((■■)b)(■))■           fail dot
  575    |  6     (((■■)b)((■■)■))■       fail dot
  576    |  6     (((■■)b)((■|■)■))■      fail dot
  577    |  6     (((■■)b)((■){■}■))■     fail dot
  578    |  6     (((■■)b)(■■))(■■)       fail dot
  579    |  6     (((■■)b)(■■))(■|■)      fail dot
  580    |  6     (((■■)b)(■■))(■){■}     fail dot
  581    |  6     (((■■)b)(■■|■))■        fail dot
  582    |  6     (((■■)b)((■|■)|■))■     fail dot
  583    |  6     (((■■)b)((■){■}|■))■    fail dot
  584    |  6     (((■■)b)(■|■))(■■)      fail dot
  585    |  6     (((■■)b)(■|■))(■|■)     fail dot
  586    |  6     (((■■)b)(■|■))(■){■}    fail dot
  587    |  6     (((■■)b)(■■){■})■       fail dot
  588    |  6     (((■■)b)((■|■)){■})■    fail dot
  589    |  6     (((■■)b)((■){■}){■})■   fail dot
  590    |  6     (((■■)b)(■){■})(■■)     fail dot
  591    |  6     (((■■)b)(■){■})(■|■)    fail dot
  592    |  6     (((■■)b)(■){■})(■){■}   fail dot
  593    |  6     (((■■)b)■)(■)           fail dot
  594    |  6     (((■■)b)■)((■■)■)       fail dot
  595    |  6     (((■■)b)■)((■|■)■)      fail dot
  596    |  6     (((■■)b)■)((■){■}■)     fail dot
  597    |  6     (((■■)b)■)(■■|■)        fail dot
  598    |  6     (((■■)b)■)((■|■)|■)     fail dot
  599    |  6     (((■■)b)■)((■){■}|■)    fail dot
  600    |  6     (((■■)b)■)(■■){■}       fail dot
  601    |  6     (((■■)b)■)((■|■)){■}    fail dot
  602    |  6     (((■■)b)■)((■){■}){■}   fail dot
  603    |  6     (((■|■)b)c)■            fail dot
  604    |  6     (((■){■}b)c)■           fail dot
  605    |  6     ((■b)c)(■■)             fail dot
  606    |  6     ((■b)c)(■|■)            fail dot
  607    |  6     ((■b)c)(■){■}             unsatisfiable SAT formula       
  608    |  6     (((((■■)■))b)c)■        fail dot
  609    |  6     (((((■|■)■))b)c)■       fail dot
  610    |  6     (((((■){■}■))b)c)■      fail dot
  611    |  6     ((((■■))b)c)(■■)        fail dot
  612    |  6     ((((■■))b)c)(■|■)       fail dot
  613    |  6     ((((■■))b)c)(■){■}      fail dot
  614    |  6     ((((■■|■))b)c)■         fail dot
  615    |  6     (((((■|■)|■))b)c)■      fail dot
  616    |  6     (((((■){■}|■))b)c)■     fail dot
  617    |  6     ((((■|■))b)c)(■■)       fail dot
  618    |  6     ((((■|■))b)c)(■|■)      fail dot
  619    |  6     ((((■|■))b)c)(■){■}       unsatisfiable SAT formula       
  620    |  6     ((((■■){■})b)c)■        fail dot
  621    |  6     (((((■|■)){■})b)c)■     fail dot
  622    |  6     (((((■){■}){■})b)c)■    fail dot
  623    |  6     ((((■){■})b)c)(■■)      fail dot
  624    |  6     ((((■){■})b)c)(■|■)     fail dot
  625    |  6     ((((■){■})b)c)(■){■}      unsatisfiable SAT formula       
  626    |  6     (((■)b)c)(■)            fail dot
  627    |  6     (((■)b)c)((■■)■)        fail dot
  628    |  6     (((■)b)c)((■|■)■)       fail dot
  629    |  6     (((■)b)c)((■){■}■)      fail dot
  630    |  6     (((■)b)c)(■■|■)         fail dot
  631    |  6     (((■)b)c)((■|■)|■)      fail dot
  632    |  6     (((■)b)c)((■){■}|■)       unsatisfiable SAT formula       
  633    |  6     (((■)b)c)(■■){■}        fail dot
  634    |  6     (((■)b)c)((■|■)){■}     fail solve
  635    |  6     (((■)b)c)((■){■}){■}      unsatisfiable SAT formula       
  636    |  6     (((((■■))■)b)c)■        fail dot
  637    |  6     (((((■|■))■)b)c)■       fail dot
  638    |  6     (((((■){■})■)b)c)■      fail dot
  639    |  6     ((((■)■)b)c)(■■)        fail dot
  640    |  6     ((((■)■)b)c)(■|■)       fail dot
  641    |  6     ((((■)■)b)c)(■){■}      fail dot
  642    |  6     (((((■)■)■)b)c)■        fail dot
  643    |  6     ((((((■■)■)■)■)b)c)■    fail dot
  644    |  6     ((((((■|■)■)■)■)b)c)■   fail dot
  645    |  6     ((((((■){■}■)■)■)b)c)■  fail dot
  646    |  6     (((((■■)(■■))■)b)c)■    fail dot
  647    |  6     (((((■■)(■|■))■)b)c)■   fail dot
  648    |  6     (((((■■)(■){■})■)b)c)■  fail dot
  649    |  6     (((((■■)■)(■■))b)c)■    fail dot
  650    |  6     (((((■■)■)(■|■))b)c)■   fail dot
  651    |  6     (((((■■)■)(■){■})b)c)■  fail dot
  652    |  6     (((((■■)■)■)b)c)(■■)    fail dot
  653    |  6     (((((■■)■)■)b)c)(■|■)   fail dot
  654    |  6     (((((■■)■)■)b)c)(■){■}  fail dot
  655    |  6     (((((■■|■)■)■)b)c)■     fail dot
  656    |  6     ((((((■|■)|■)■)■)b)c)■  fail dot
  657    |  6     ((((((■){■}|■)■)■)b)c)■ fail dot
  658    |  6     (((((■|■)(■■))■)b)c)■   fail dot
  659    |  6     (((((■|■)(■|■))■)b)c)■  fail dot
  660    |  6     (((((■|■)(■){■})■)b)c)■ fail dot
  661    |  6     (((((■|■)■)(■■))b)c)■   fail dot
  662    |  6     (((((■|■)■)(■|■))b)c)■  fail dot
  663    |  6     (((((■|■)■)(■){■})b)c)■ fail dot
  664    |  6     (((((■|■)■)■)b)c)(■■)   fail dot
  665    |  6     (((((■|■)■)■)b)c)(■|■)  fail dot
  666    |  6     (((((■|■)■)■)b)c)(■){■} fail dot
  667    |  6     (((((■■){■}■)■)b)c)■    fail dot
  668    |  6     ((((((■|■)){■}■)■)b)c)■ fail dot
  669    |  6     ((((((■){■}){■}■)■)b)c)■fail dot
  670    |  6     (((((■){■}(■■))■)b)c)■  fail dot
  671    |  6     (((((■){■}(■|■))■)b)c)■ fail dot
  672    |  6     (((((■){■}(■){■})■)b)c)■fail dot
  673    |  6     (((((■){■}■)(■■))b)c)■  fail dot
  674    |  6     (((((■){■}■)(■|■))b)c)■ fail dot
  675    |  6     (((((■){■}■)(■){■})b)c)■fail dot
  676    |  6     (((((■){■}■)■)b)c)(■■)  fail dot
  677    |  6     (((((■){■}■)■)b)c)(■|■) fail dot
  678    |  6     (((((■){■}■)■)b)c)(■){■}fail dot
  679    |  6     ((((■■)(■))b)c)■        fail dot
  680    |  6     ((((■■)(■■))b)c)(■■)    fail dot
  681    |  6     ((((■■)(■■))b)c)(■|■)   fail dot
  682    |  6     ((((■■)(■■))b)c)(■){■}  fail dot
  683    |  6     ((((■■)(■|■))b)c)(■■)   fail dot
  684    |  6     ((((■■)(■|■))b)c)(■|■)  fail dot
  685    |  6     ((((■■)(■|■))b)c)(■){■} fail dot
  686    |  6     ((((■■)(■){■})b)c)(■■)  fail dot
  687    |  6     ((((■■)(■){■})b)c)(■|■) fail dot
  688    |  6     ((((■■)(■){■})b)c)(■){■}fail dot
  689    |  6     ((((■■)■)b)c)(■)        fail dot
  690    |  6     ((((■■)■)b)c)((■■)■)    fail dot
  691    |  6     ((((■■)■)b)c)((■|■)■)   fail dot
  692    |  6     ((((■■)■)b)c)((■){■}■)  fail dot
  693    |  6     ((((■■)■)b)c)(■■|■)     fail dot
  694    |  6     ((((■■)■)b)c)((■|■)|■)  fail dot
  695    |  6     ((((■■)■)b)c)((■){■}|■) fail dot
  696    |  6     ((((■■)■)b)c)(■■){■}    fail dot
  697    |  6     ((((■■)■)b)c)((■|■)){■} fail dot
  698    |  6     ((((■■)■)b)c)((■){■}){■}fail dot
  699    |  6     (((((■■)■|■)■)b)c)■     fail dot
  700    |  6     (((((■|■)■|■)■)b)c)■    fail dot
  701    |  6     (((((■){■}■|■)■)b)c)■   fail dot
  702    |  6     ((((■■|■■)■)b)c)■       fail dot
  703    |  6     ((((■■|(■|■))■)b)c)■    fail dot
  704    |  6     ((((■■|(■){■})■)b)c)■   fail dot
  705    |  6     ((((■■|■)(■■))b)c)■     fail dot
  706    |  6     ((((■■|■)(■|■))b)c)■    fail dot
  707    |  6     ((((■■|■)(■){■})b)c)■   fail dot
  708    |  6     ((((■■|■)■)b)c)(■■)     fail dot
  709    |  6     ((((■■|■)■)b)c)(■|■)    fail dot
  710    |  6     ((((■■|■)■)b)c)(■){■}   fail dot
  711    |  6     (((((■■|■)|■)■)b)c)■    fail dot
  712    |  6     ((((((■|■)|■)|■)■)b)c)■ fail dot
  713    |  6     ((((((■){■}|■)|■)■)b)c)■fail dot
  714    |  6     (((((■|■)|■■)■)b)c)■    fail dot
  715    |  6     (((((■|■)|(■|■))■)b)c)■ fail dot
  716    |  6     (((((■|■)|(■){■})■)b)c)■fail dot
  717    |  6     (((((■|■)|■)(■■))b)c)■  fail dot
  718    |  6     (((((■|■)|■)(■|■))b)c)■ fail dot
  719    |  6     (((((■|■)|■)(■){■})b)c)■fail dot
  720    |  6     (((((■|■)|■)■)b)c)(■■)  fail dot
  721    |  6     (((((■|■)|■)■)b)c)(■|■) fail dot
  722    |  6     (((((■|■)|■)■)b)c)(■){■}fail dot
  723    |  6     (((((■■){■}|■)■)b)c)■   fail dot
  724    |  6     ((((((■|■)){■}|■)■)b)c)■fail dot
  725    |  6     ((((((■){■}){■}|■)■)b)c)■fail dot
  726    |  6     (((((■){■}|■■)■)b)c)■   fail dot
  727    |  6     (((((■){■}|(■|■))■)b)c)■fail dot
  728    |  6     (((((■){■}|(■){■})■)b)c)■fail dot
  729    |  6     (((((■){■}|■)(■■))b)c)■ fail dot
  730    |  6     (((((■){■}|■)(■|■))b)c)■fail dot
  731    |  6     (((((■){■}|■)(■){■})b)c)■fail dot
  732    |  6     (((((■){■}|■)■)b)c)(■■) fail dot
  733    |  6     (((((■){■}|■)■)b)c)(■|■)fail dot
  734    |  6     (((((■){■}|■)■)b)c)(■){■}  unsatisfiable SAT formula       
  735    |  6     ((((■|■)(■))b)c)■       fail dot
  736    |  6     ((((■|■)(■■))b)c)(■■)   fail dot
  737    |  6     ((((■|■)(■■))b)c)(■|■)  fail dot
  738    |  6     ((((■|■)(■■))b)c)(■){■} fail dot
  739    |  6     ((((■|■)(■|■))b)c)(■■)  fail dot
  740    |  6     ((((■|■)(■|■))b)c)(■|■) fail dot
  741    |  6     ((((■|■)(■|■))b)c)(■){■}fail dot
  742    |  6     ((((■|■)(■){■})b)c)(■■) fail dot
  743    |  6     ((((■|■)(■){■})b)c)(■|■)fail dot
  744    |  6     ((((■|■)(■){■})b)c)(■){■}  unsatisfiable SAT formula       
  745    |  6     ((((■|■)■)b)c)(■)       fail dot
  746    |  6     ((((■|■)■)b)c)((■■)■)   fail dot
  747    |  6     ((((■|■)■)b)c)((■|■)■)  fail dot
  748    |  6     ((((■|■)■)b)c)((■){■}■) fail dot
  749    |  6     ((((■|■)■)b)c)(■■|■)    fail dot
  750    |  6     ((((■|■)■)b)c)((■|■)|■) fail dot
  751    |  6     ((((■|■)■)b)c)((■){■}|■)fail dot
  752    |  6     ((((■|■)■)b)c)(■■){■}   fail dot
  753    |  6     ((((■|■)■)b)c)((■|■)){■}fail dot
  754    |  6     ((((■|■)■)b)c)((■){■}){■}fail dot
  755    |  6     (((((■■)■){■}■)b)c)■    fail dot
  756    |  6     (((((■|■)■){■}■)b)c)■   fail dot
  757    |  6     (((((■){■}■){■}■)b)c)■  fail dot
  758    |  6     ((((■■){■}(■■))b)c)■    fail dot
  759    |  6     ((((■■){■}(■|■))b)c)■   fail dot
  760    |  6     ((((■■){■}(■){■})b)c)■  fail dot
  761    |  6     ((((■■){■}■)b)c)(■■)    fail dot
  762    |  6     ((((■■){■}■)b)c)(■|■)   fail dot
  763    |  6     ((((■■){■}■)b)c)(■){■}    unsatisfiable SAT formula       
  764    |  6     (((((■■|■)){■}■)b)c)■   fail dot
  765    |  6     ((((((■|■)|■)){■}■)b)c)■fail dot
  766    |  6     ((((((■){■}|■)){■}■)b)c)■fail dot
  767    |  6     (((((■|■)){■}(■■))b)c)■ fail dot
  768    |  6     (((((■|■)){■}(■|■))b)c)■fail dot
  769    |  6     (((((■|■)){■}(■){■})b)c)■fail dot
  770    |  6     (((((■|■)){■}■)b)c)(■■) fail dot
  771    |  6     (((((■|■)){■}■)b)c)(■|■)fail dot
  772    |  6     (((((■|■)){■}■)b)c)(■){■}  unsatisfiable SAT formula       
  773    |  6     (((((■■){■}){■}■)b)c)■  fail dot
  774    |  6     ((((((■|■)){■}){■}■)b)c)■fail dot
  775    |  6     ((((((■){■}){■}){■}■)b)c)■fail dot
  776    |  6     (((((■){■}){■}(■■))b)c)■fail dot
  777    |  6     (((((■){■}){■}(■|■))b)c)■fail dot
  778    |  6     (((((■){■}){■}(■){■})b)c)■fail dot
  779    |  6     (((((■){■}){■}■)b)c)(■■)fail dot
  780    |  6     (((((■){■}){■}■)b)c)(■|■)fail dot
  781    |  6     (((((■){■}){■}■)b)c)(■){■}  unsatisfiable SAT formula       
  782    |  6     ((((■){■}(■))b)c)■      fail dot
  783    |  6     ((((■){■}(■■))b)c)(■■)  fail dot
  784    |  6     ((((■){■}(■■))b)c)(■|■) fail dot
  785    |  6     ((((■){■}(■■))b)c)(■){■}fail dot
  786    |  6     ((((■){■}(■|■))b)c)(■■) fail dot
  787    |  6     ((((■){■}(■|■))b)c)(■|■)fail dot
  788    |  6     ((((■){■}(■|■))b)c)(■){■}  unsatisfiable SAT formula       
  789    |  6     ((((■){■}(■){■})b)c)(■■)fail dot
  790    |  6     ((((■){■}(■){■})b)c)(■|■)fail dot
  791    |  6     ((((■){■}(■){■})b)c)(■){■}  unsatisfiable SAT formula       
  792    |  6     ((((■){■}■)b)c)(■)      fail dot
  793    |  6     ((((■){■}■)b)c)((■■)■)  fail dot
  794    |  6     ((((■){■}■)b)c)((■|■)■) fail dot
  795    |  6     ((((■){■}■)b)c)((■){■}■)fail dot
  796    |  6     ((((■){■}■)b)c)(■■|■)   fail dot
  797    |  6     ((((■){■}■)b)c)((■|■)|■)fail dot
  798    |  6     ((((■){■}■)b)c)((■){■}|■)  unsatisfiable SAT formula       
  799    |  6     ((((■){■}■)b)c)(■■){■}  fail dot
  800    |  6     ((((■){■}■)b)c)((■|■)){■}fail solve
  801    |  6     ((((■){■}■)b)c)((■){■}){■}  unsatisfiable SAT formula       
  802    |  6     (((■■)b)c)((■■))        fail dot
  803    |  6     (((■■)b)c)((■|■))       fail dot
  804    |  6     (((■■)b)c)((■){■})      fail dot
  805    |  6     (((■■)b)c)((■)■)        fail dot
  806    |  6     (((■■)b)c)(((■■)■)■)    fail dot
  807    |  6     (((■■)b)c)(((■|■)■)■)   fail dot
  808    |  6     (((■■)b)c)(((■){■}■)■)  fail dot
  809    |  6     (((■■)b)c)((■■)(■■))    fail dot
  810    |  6     (((■■)b)c)((■■)(■|■))   fail dot
  811    |  6     (((■■)b)c)((■■)(■){■})  fail dot
  812    |  6     (((■■)b)c)((■■|■)■)     fail dot
  813    |  6     (((■■)b)c)(((■|■)|■)■)  fail dot
  814    |  6     (((■■)b)c)(((■){■}|■)■) fail dot
  815    |  6     (((■■)b)c)((■|■)(■■))   fail dot
  816    |  6     (((■■)b)c)((■|■)(■|■))  fail dot
  817    |  6     (((■■)b)c)((■|■)(■){■}) fail dot
  818    |  6     (((■■)b)c)((■■){■}■)    fail dot
  819    |  6     (((■■)b)c)(((■|■)){■}■) fail dot
  820    |  6     (((■■)b)c)(((■){■}){■}■)fail dot
  821    |  6     (((■■)b)c)((■){■}(■■))  fail dot
  822    |  6     (((■■)b)c)((■){■}(■|■)) fail dot
  823    |  6     (((■■)b)c)((■){■}(■){■})fail dot
  824    |  6     (((■■)b)c)((■■)■|■)     fail dot
  825    |  6     (((■■)b)c)((■|■)■|■)    fail dot
  826    |  6     (((■■)b)c)((■){■}■|■)   fail dot
  827    |  6     (((■■)b)c)(■■|■■)       fail dot
  828    |  6     (((■■)b)c)(■■|(■|■))    fail dot
  829    |  6     (((■■)b)c)(■■|(■){■})   fail dot
  830    |  6     (((■■)b)c)((■■|■)|■)    fail dot
  831    |  6     (((■■)b)c)(((■|■)|■)|■) fail dot
  832    |  6     (((■■)b)c)(((■){■}|■)|■)fail dot
  833    |  6     (((■■)b)c)((■|■)|■■)    fail dot
  834    |  6     (((■■)b)c)((■|■)|(■|■)) fail dot
  835    |  6     (((■■)b)c)((■|■)|(■){■})fail dot
  836    |  6     (((■■)b)c)((■■){■}|■)   fail dot
  837    |  6     (((■■)b)c)(((■|■)){■}|■)fail dot
  838    |  6     (((■■)b)c)(((■){■}){■}|■)fail dot
  839    |  6     (((■■)b)c)((■){■}|■■)   fail dot
  840    |  6     (((■■)b)c)((■){■}|(■|■))fail dot
  841    |  6     (((■■)b)c)((■){■}|(■){■})fail dot
  842    |  6     (((■■)b)c)((■■)■){■}    fail dot
  843    |  6     (((■■)b)c)((■|■)■){■}   fail dot
  844    |  6     (((■■)b)c)((■){■}■){■}  fail dot
  845    |  6     (((■■)b)c)((■■|■)){■}   fail dot
  846    |  6     (((■■)b)c)(((■|■)|■)){■}fail dot
  847    |  6     (((■■)b)c)(((■){■}|■)){■}fail dot
  848    |  6     (((■■)b)c)((■■){■}){■}  fail dot
  849    |  6     (((■■)b)c)(((■|■)){■}){■}fail dot
  850    |  6     (((■■)b)c)(((■){■}){■}){■}fail dot
  851    |  6     ((((■)a)■)■)■           fail dot
  852    |  6     (((((■■)■)a)■)■)■       fail dot
  853    |  6     (((((■|■)■)a)■)■)■      fail dot
  854    |  6     (((((■){■}■)a)■)■)■     fail dot
  855    |  6     ((((■■)a)(■■))■)■       fail dot
  856    |  6     ((((■■)a)(■|■))■)■      fail dot
  857    |  6     ((((■■)a)(■){■})■)■     fail dot
  858    |  6     ((((■■)a)■)(■■))■       fail dot
  859    |  6     ((((■■)a)■)(■|■))■      fail dot
  860    |  6     ((((■■)a)■)(■){■})■     fail dot
  861    |  6     ((((■■)a)■)■)(■■)       fail dot
  862    |  6     ((((■■)a)■)■)(■|■)      fail dot
  863    |  6     ((((■■)a)■)■)(■){■}     fail dot
  864    |  6     ((((■■|■)a)■)■)■        fail dot
  865    |  6     (((((■|■)|■)a)■)■)■     fail dot
  866    |  6     (((((■){■}|■)a)■)■)■    fail dot
  867    |  6     ((((■|■)a)(■■))■)■      fail dot
  868    |  6     ((((■|■)a)(■|■))■)■     fail dot
  869    |  6     ((((■|■)a)(■){■})■)■    fail dot
  870    |  6     ((((■|■)a)■)(■■))■      fail dot
  871    |  6     ((((■|■)a)■)(■|■))■     fail dot
  872    |  6     ((((■|■)a)■)(■){■})■    fail dot
  873    |  6     ((((■|■)a)■)■)(■■)      fail dot
  874    |  6     ((((■|■)a)■)■)(■|■)     fail dot
  875    |  6     ((((■|■)a)■)■)(■){■}    fail dot
  876    |  6     ((((■■){■}a)■)■)■       fail dot
  877    |  6     (((((■|■)){■}a)■)■)■    fail dot
  878    |  6     (((((■){■}){■}a)■)■)■   fail dot
  879    |  6     ((((■){■}a)(■■))■)■     fail dot
  880    |  6     ((((■){■}a)(■|■))■)■    fail dot
  881    |  6     ((((■){■}a)(■){■})■)■     unsatisfiable SAT formula       
  882    |  6     ((((■){■}a)■)(■■))■     fail dot
  883    |  6     ((((■){■}a)■)(■|■))■    fail dot
  884    |  6     ((((■){■}a)■)(■){■})■     unsatisfiable SAT formula       
  885    |  6     ((((■){■}a)■)■)(■■)     fail dot
  886    |  6     ((((■){■}a)■)■)(■|■)    fail dot
  887    |  6     ((((■){■}a)■)■)(■){■}     unsatisfiable SAT formula       
  888    |  6     (((■a)(■))■)■           fail dot
  889    |  6     (((■a)((■■)■))■)■       fail dot
  890    |  6     (((■a)((■|■)■))■)■      fail dot
  891    |  6     (((■a)((■){■}■))■)■     fail dot
  892    |  6     (((■a)(■■))(■■))■       fail dot
  893    |  6     (((■a)(■■))(■|■))■      fail dot
  894    |  6     (((■a)(■■))(■){■})■     fail dot
  895    |  6     (((■a)(■■))■)(■■)       fail dot
  896    |  6     (((■a)(■■))■)(■|■)      fail dot
  897    |  6     (((■a)(■■))■)(■){■}     fail dot
  898    |  6     (((■a)(■■|■))■)■        fail dot
  899    |  6     (((■a)((■|■)|■))■)■     fail dot
  900    |  6     (((■a)((■){■}|■))■)■    fail dot
  901    |  6     (((■a)(■|■))(■■))■      fail dot
  902    |  6     (((■a)(■|■))(■|■))■     fail dot
  903    |  6     (((■a)(■|■))(■){■})■    fail dot
  904    |  6     (((■a)(■|■))■)(■■)      fail dot
  905    |  6     (((■a)(■|■))■)(■|■)     fail dot
  906    |  6     (((■a)(■|■))■)(■){■}    fail dot
  907    |  6     (((■a)(■■){■})■)■       fail dot
  908    |  6     (((■a)((■|■)){■})■)■    fail dot
  909    |  6     (((■a)((■){■}){■})■)■   fail dot
  910    |  6     (((■a)(■){■})(■■))■     fail dot
  911    |  6     (((■a)(■){■})(■|■))■    fail dot
  912    |  6     (((■a)(■){■})(■){■})■   fail dot
  913    |  6     (((■a)(■){■})■)(■■)     fail dot
  914    |  6     (((■a)(■){■})■)(■|■)    fail dot
  915    |  6     (((■a)(■){■})■)(■){■}   fail dot
  916    |  6     (((■a)■)(■))■           fail dot
  917    |  6     (((■a)■)((■■)■))■       fail dot
  918    |  6     (((■a)■)((■|■)■))■      fail dot
  919    |  6     (((■a)■)((■){■}■))■     fail dot
  920    |  6     (((■a)■)(■■))(■■)       fail dot
  921    |  6     (((■a)■)(■■))(■|■)      fail dot
  922    |  6     (((■a)■)(■■))(■){■}     fail dot
  923    |  6     (((■a)■)(■■|■))■        fail dot
  924    |  6     (((■a)■)((■|■)|■))■     fail dot
  925    |  6     (((■a)■)((■){■}|■))■    fail dot
  926    |  6     (((■a)■)(■|■))(■■)      fail dot
  927    |  6     (((■a)■)(■|■))(■|■)     fail dot
  928    |  6     (((■a)■)(■|■))(■){■}    fail dot
  929    |  6     (((■a)■)(■■){■})■       fail dot
  930    |  6     (((■a)■)((■|■)){■})■    fail dot
  931    |  6     (((■a)■)((■){■}){■})■   fail dot
  932    |  6     (((■a)■)(■){■})(■■)     fail dot
  933    |  6     (((■a)■)(■){■})(■|■)    fail dot
  934    |  6     (((■a)■)(■){■})(■){■}   fail dot
  935    |  6     (((■a)■)■)(■)           fail dot
  936    |  6     (((■a)■)■)((■■)■)       fail dot
  937    |  6     (((■a)■)■)((■|■)■)      fail dot
  938    |  6     (((■a)■)■)((■){■}■)     fail dot
  939    |  6     (((■a)■)■)(■■|■)        fail dot
  940    |  6     (((■a)■)■)((■|■)|■)     fail dot
  941    |  6     (((■a)■)■)((■){■}|■)    fail dot
  942    |  6     (((■a)■)■)(■■){■}       fail dot
  943    |  6     (((■a)■)■)((■|■)){■}    fail dot
  944    |  6     (((■a)■)■)((■){■}){■}   fail dot
  945    |  6     (((((■■))a)■)c)■        fail dot
  946    |  6     (((((■|■))a)■)c)■       fail dot
  947    |  6     (((((■){■})a)■)c)■      fail dot
  948    |  6     ((((■)a)(■■))c)■        fail dot
  949    |  6     ((((■)a)(■|■))c)■       fail dot
  950    |  6     ((((■)a)(■){■})c)■      fail dot
  951    |  6     ((((■)a)■)c)(■■)        fail dot
  952    |  6     ((((■)a)■)c)(■|■)       fail dot
  953    |  6     ((((■)a)■)c)(■){■}      fail dot
  954    |  6     (((((■)■)a)■)c)■        fail dot
  955    |  6     ((((((■■)■)■)a)■)c)■    fail dot
  956    |  6     ((((((■|■)■)■)a)■)c)■   fail dot
  957    |  6     ((((((■){■}■)■)a)■)c)■  fail dot
  958    |  6     (((((■■)(■■))a)■)c)■    fail dot
  959    |  6     (((((■■)(■|■))a)■)c)■   fail dot
  960    |  6     (((((■■)(■){■})a)■)c)■  fail dot
  961    |  6     (((((■■)■)a)(■■))c)■    fail dot
  962    |  6     (((((■■)■)a)(■|■))c)■   fail dot
  963    |  6     (((((■■)■)a)(■){■})c)■  fail dot
  964    |  6     (((((■■)■)a)■)c)(■■)    fail dot
  965    |  6     (((((■■)■)a)■)c)(■|■)   fail dot
  966    |  6     (((((■■)■)a)■)c)(■){■}  fail dot
  967    |  6     (((((■■|■)■)a)■)c)■     fail dot
  968    |  6     ((((((■|■)|■)■)a)■)c)■  fail dot
  969    |  6     ((((((■){■}|■)■)a)■)c)■ fail dot
  970    |  6     (((((■|■)(■■))a)■)c)■   fail dot
  971    |  6     (((((■|■)(■|■))a)■)c)■  fail dot
  972    |  6     (((((■|■)(■){■})a)■)c)■ fail dot
  973    |  6     (((((■|■)■)a)(■■))c)■   fail dot
  974    |  6     (((((■|■)■)a)(■|■))c)■  fail dot
  975    |  6     (((((■|■)■)a)(■){■})c)■ fail dot
  976    |  6     (((((■|■)■)a)■)c)(■■)   fail dot
  977    |  6     (((((■|■)■)a)■)c)(■|■)  fail dot
  978    |  6     (((((■|■)■)a)■)c)(■){■} fail dot
  979    |  6     (((((■■){■}■)a)■)c)■    fail dot
  980    |  6     ((((((■|■)){■}■)a)■)c)■ fail dot
  981    |  6     ((((((■){■}){■}■)a)■)c)■fail dot
  982    |  6     (((((■){■}(■■))a)■)c)■  fail dot
  983    |  6     (((((■){■}(■|■))a)■)c)■ fail dot
  984    |  6     (((((■){■}(■){■})a)■)c)■fail dot
  985    |  6     (((((■){■}■)a)(■■))c)■  fail dot
  986    |  6     (((((■){■}■)a)(■|■))c)■ fail dot
  987    |  6     (((((■){■}■)a)(■){■})c)■fail dot
  988    |  6     (((((■){■}■)a)■)c)(■■)  fail dot
  989    |  6     (((((■){■}■)a)■)c)(■|■) fail dot
  990    |  6     (((((■){■}■)a)■)c)(■){■}fail dot
  991    |  6     ((((■■)a)(■))c)■        fail dot
  992    |  6     ((((■■)a)((■■)■))c)■    fail dot
  993    |  6     ((((■■)a)((■|■)■))c)■   fail dot
  994    |  6     ((((■■)a)((■){■}■))c)■  fail dot
  995    |  6     ((((■■)a)(■■))c)(■■)    fail dot
  996    |  6     ((((■■)a)(■■))c)(■|■)   fail dot
  997    |  6     ((((■■)a)(■■))c)(■){■}  fail dot
  998    |  6     ((((■■)a)(■■|■))c)■     fail dot
  999    |  6     ((((■■)a)((■|■)|■))c)■  fail dot
  1000   |  6     ((((■■)a)((■){■}|■))c)■ fail dot
  1001   |  6     ((((■■)a)(■|■))c)(■■)   fail dot
  1002   |  6     ((((■■)a)(■|■))c)(■|■)  fail dot
  1003   |  6     ((((■■)a)(■|■))c)(■){■} fail dot
  1004   |  6     ((((■■)a)(■■){■})c)■    fail dot
  1005   |  6     ((((■■)a)((■|■)){■})c)■ fail dot
  1006   |  6     ((((■■)a)((■){■}){■})c)■fail dot
  1007   |  6     ((((■■)a)(■){■})c)(■■)  fail dot
  1008   |  6     ((((■■)a)(■){■})c)(■|■) fail dot
  1009   |  6     ((((■■)a)(■){■})c)(■){■}fail dot
  1010   |  6     ((((■■)a)■)c)(■)        fail dot
  1011   |  6     ((((■■)a)■)c)((■■)■)    fail dot
  1012   |  6     ((((■■)a)■)c)((■|■)■)   fail dot
  1013   |  6     ((((■■)a)■)c)((■){■}■)  fail dot
  1014   |  6     ((((■■)a)■)c)(■■|■)     fail dot
  1015   |  6     ((((■■)a)■)c)((■|■)|■)  fail dot
  1016   |  6     ((((■■)a)■)c)((■){■}|■) fail dot
  1017   |  6     ((((■■)a)■)c)(■■){■}    fail dot
  1018   |  6     ((((■■)a)■)c)((■|■)){■} fail dot
  1019   |  6     ((((■■)a)■)c)((■){■}){■}fail dot
  1020   |  6     (((((■■)■|■)a)■)c)■     fail dot
  1021   |  6     (((((■|■)■|■)a)■)c)■    fail dot
  1022   |  6     (((((■){■}■|■)a)■)c)■   fail dot
  1023   |  6     ((((■■|■■)a)■)c)■       fail dot
  1024   |  6     ((((■■|(■|■))a)■)c)■    fail dot
  1025   |  6     ((((■■|(■){■})a)■)c)■   fail dot
  1026   |  6     ((((■■|■)a)(■■))c)■     fail dot
  1027   |  6     ((((■■|■)a)(■|■))c)■    fail dot
  1028   |  6     ((((■■|■)a)(■){■})c)■   fail dot
  1029   |  6     ((((■■|■)a)■)c)(■■)     fail dot
  1030   |  6     ((((■■|■)a)■)c)(■|■)    fail dot
  1031   |  6     ((((■■|■)a)■)c)(■){■}   fail dot
  1032   |  6     (((((■■|■)|■)a)■)c)■    fail dot
  1033   |  6     ((((((■|■)|■)|■)a)■)c)■ fail dot
  1034   |  6     ((((((■){■}|■)|■)a)■)c)■fail dot
  1035   |  6     (((((■|■)|■■)a)■)c)■    fail dot
  1036   |  6     (((((■|■)|(■|■))a)■)c)■ fail dot
  1037   |  6     (((((■|■)|(■){■})a)■)c)■fail dot
  1038   |  6     (((((■|■)|■)a)(■■))c)■  fail dot
  1039   |  6     (((((■|■)|■)a)(■|■))c)■ fail dot
  1040   |  6     (((((■|■)|■)a)(■){■})c)■fail dot
  1041   |  6     (((((■|■)|■)a)■)c)(■■)  fail dot
  1042   |  6     (((((■|■)|■)a)■)c)(■|■) fail dot
  1043   |  6     (((((■|■)|■)a)■)c)(■){■}fail dot
  1044   |  6     (((((■■){■}|■)a)■)c)■   fail dot
  1045   |  6     ((((((■|■)){■}|■)a)■)c)■fail dot
  1046   |  6     ((((((■){■}){■}|■)a)■)c)■fail dot
  1047   |  6     (((((■){■}|■■)a)■)c)■   fail dot
  1048   |  6     (((((■){■}|(■|■))a)■)c)■fail dot
  1049   |  6     (((((■){■}|(■){■})a)■)c)■fail dot
  1050   |  6     (((((■){■}|■)a)(■■))c)■ fail dot
  1051   |  6     (((((■){■}|■)a)(■|■))c)■fail dot
  1052   |  6     (((((■){■}|■)a)(■){■})c)■fail dot
  1053   |  6     (((((■){■}|■)a)■)c)(■■) fail dot
  1054   |  6     (((((■){■}|■)a)■)c)(■|■)fail dot
  1055   |  6     (((((■){■}|■)a)■)c)(■){■}  unsatisfiable SAT formula       
  1056   |  6     ((((■|■)a)(■))c)■       fail dot
  1057   |  6     ((((■|■)a)((■■)■))c)■   fail dot
  1058   |  6     ((((■|■)a)((■|■)■))c)■  fail dot
  1059   |  6     ((((■|■)a)((■){■}■))c)■ fail dot
  1060   |  6     ((((■|■)a)(■■))c)(■■)   fail dot
  1061   |  6     ((((■|■)a)(■■))c)(■|■)  fail dot
  1062   |  6     ((((■|■)a)(■■))c)(■){■} fail dot
  1063   |  6     ((((■|■)a)(■■|■))c)■    fail dot
  1064   |  6     ((((■|■)a)((■|■)|■))c)■ fail dot
  1065   |  6     ((((■|■)a)((■){■}|■))c)■fail dot
  1066   |  6     ((((■|■)a)(■|■))c)(■■)  fail dot
  1067   |  6     ((((■|■)a)(■|■))c)(■|■) fail dot
  1068   |  6     ((((■|■)a)(■|■))c)(■){■}fail dot
  1069   |  6     ((((■|■)a)(■■){■})c)■   fail dot
  1070   |  6     ((((■|■)a)((■|■)){■})c)■fail dot
  1071   |  6     ((((■|■)a)((■){■}){■})c)■fail dot
  1072   |  6     ((((■|■)a)(■){■})c)(■■) fail dot
  1073   |  6     ((((■|■)a)(■){■})c)(■|■)fail dot
  1074   |  6     ((((■|■)a)(■){■})c)(■){■}fail dot
  1075   |  6     ((((■|■)a)■)c)(■)       fail dot
  1076   |  6     ((((■|■)a)■)c)((■■)■)   fail dot
  1077   |  6     ((((■|■)a)■)c)((■|■)■)  fail dot
  1078   |  6     ((((■|■)a)■)c)((■){■}■) fail dot
  1079   |  6     ((((■|■)a)■)c)(■■|■)    fail dot
  1080   |  6     ((((■|■)a)■)c)((■|■)|■) fail dot
  1081   |  6     ((((■|■)a)■)c)((■){■}|■)fail dot
  1082   |  6     ((((■|■)a)■)c)(■■){■}   fail dot
  1083   |  6     ((((■|■)a)■)c)((■|■)){■}fail dot
  1084   |  6     ((((■|■)a)■)c)((■){■}){■}fail dot
  1085   |  6     (((((■■)■){■}a)■)c)■    fail dot
  1086   |  6     (((((■|■)■){■}a)■)c)■   fail dot
  1087   |  6     (((((■){■}■){■}a)■)c)■  fail dot
  1088   |  6     ((((■■){■}a)(■■))c)■    fail dot
  1089   |  6     ((((■■){■}a)(■|■))c)■   fail dot
  1090   |  6     ((((■■){■}a)(■){■})c)■  fail dot
  1091   |  6     ((((■■){■}a)■)c)(■■)    fail dot
  1092   |  6     ((((■■){■}a)■)c)(■|■)   fail dot
  1093   |  6     ((((■■){■}a)■)c)(■){■}    unsatisfiable SAT formula       
  1094   |  6     (((((■■|■)){■}a)■)c)■   fail dot
  1095   |  6     ((((((■|■)|■)){■}a)■)c)■fail dot
  1096   |  6     ((((((■){■}|■)){■}a)■)c)■fail dot
  1097   |  6     (((((■|■)){■}a)(■■))c)■ fail dot
  1098   |  6     (((((■|■)){■}a)(■|■))c)■fail dot
  1099   |  6     (((((■|■)){■}a)(■){■})c)■fail dot
  1100   |  6     (((((■|■)){■}a)■)c)(■■) fail dot
  1101   |  6     (((((■|■)){■}a)■)c)(■|■)fail dot
  1102   |  6     (((((■|■)){■}a)■)c)(■){■}  unsatisfiable SAT formula       
  1103   |  6     (((((■■){■}){■}a)■)c)■  fail dot
  1104   |  6     ((((((■|■)){■}){■}a)■)c)■fail dot
  1105   |  6     ((((((■){■}){■}){■}a)■)c)■fail dot
  1106   |  6     (((((■){■}){■}a)(■■))c)■fail dot
  1107   |  6     (((((■){■}){■}a)(■|■))c)■fail dot
  1108   |  6     (((((■){■}){■}a)(■){■})c)■fail dot
  1109   |  6     (((((■){■}){■}a)■)c)(■■)fail dot
  1110   |  6     (((((■){■}){■}a)■)c)(■|■)fail dot
  1111   |  6     (((((■){■}){■}a)■)c)(■){■}  unsatisfiable SAT formula       
  1112   |  6     ((((■){■}a)(■))c)■      fail dot
  1113   |  6     ((((■){■}a)((■■)■))c)■  fail dot
  1114   |  6     ((((■){■}a)((■|■)■))c)■ fail dot
  1115   |  6     ((((■){■}a)((■){■}■))c)■fail dot
  1116   |  6     ((((■){■}a)(■■))c)(■■)  fail dot
  1117   |  6     ((((■){■}a)(■■))c)(■|■) fail dot
  1118   |  6     ((((■){■}a)(■■))c)(■){■}fail dot
  1119   |  6     ((((■){■}a)(■■|■))c)■   fail dot
  1120   |  6     ((((■){■}a)((■|■)|■))c)■fail dot
  1121   |  6     ((((■){■}a)((■){■}|■))c)■fail dot
  1122   |  6     ((((■){■}a)(■|■))c)(■■) fail dot
  1123   |  6     ((((■){■}a)(■|■))c)(■|■)fail dot
  1124   |  6     ((((■){■}a)(■|■))c)(■){■}  unsatisfiable SAT formula       
  1125   |  6     ((((■){■}a)(■■){■})c)■  fail dot
  1126   |  6     ((((■){■}a)((■|■)){■})c)■fail dot
  1127   |  6     ((((■){■}a)((■){■}){■})c)■fail dot
  1128   |  6     ((((■){■}a)(■){■})c)(■■)fail dot
  1129   |  6     ((((■){■}a)(■){■})c)(■|■)fail dot
  1130   |  6     ((((■){■}a)(■){■})c)(■){■}  unsatisfiable SAT formula       
  1131   |  6     ((((■){■}a)■)c)(■)      fail dot
  1132   |  6     ((((■){■}a)■)c)((■■)■)  fail dot
  1133   |  6     ((((■){■}a)■)c)((■|■)■) fail dot
  1134   |  6     ((((■){■}a)■)c)((■){■}■)fail dot
  1135   |  6     ((((■){■}a)■)c)(■■|■)   fail dot
  1136   |  6     ((((■){■}a)■)c)((■|■)|■)fail dot
  1137   |  6     ((((■){■}a)■)c)((■){■}|■)  unsatisfiable SAT formula       
  1138   |  6     ((((■){■}a)■)c)(■■){■}  fail dot
  1139   |  6     ((((■){■}a)■)c)((■|■)){■}fail solve
  1140   |  6     ((((■){■}a)■)c)((■){■}){■}  unsatisfiable SAT formula       
  1141   |  6     (((■a)((■■)))c)■        fail dot
  1142   |  6     (((■a)((■|■)))c)■       fail dot
  1143   |  6     (((■a)((■){■}))c)■      fail dot
  1144   |  6     (((■a)(■))c)(■■)        fail dot
  1145   |  6     (((■a)(■))c)(■|■)       fail dot
  1146   |  6     (((■a)(■))c)(■){■}      fail dot
  1147   |  6     (((■a)((■)■))c)■        fail dot
  1148   |  6     (((■a)(((■■)■)■))c)■    fail dot
  1149   |  6     (((■a)(((■|■)■)■))c)■   fail dot
  1150   |  6     (((■a)(((■){■}■)■))c)■  fail dot
  1151   |  6     (((■a)((■■)(■■)))c)■    fail dot
  1152   |  6     (((■a)((■■)(■|■)))c)■   fail dot
  1153   |  6     (((■a)((■■)(■){■}))c)■  fail dot
  1154   |  6     (((■a)((■■)■))c)(■■)    fail dot
  1155   |  6     (((■a)((■■)■))c)(■|■)   fail dot
  1156   |  6     (((■a)((■■)■))c)(■){■}  fail dot
  1157   |  6     (((■a)((■■|■)■))c)■     fail dot
  1158   |  6     (((■a)(((■|■)|■)■))c)■  fail dot
  1159   |  6     (((■a)(((■){■}|■)■))c)■ fail dot
  1160   |  6     (((■a)((■|■)(■■)))c)■   fail dot
  1161   |  6     (((■a)((■|■)(■|■)))c)■  fail dot
  1162   |  6     (((■a)((■|■)(■){■}))c)■ fail dot
  1163   |  6     (((■a)((■|■)■))c)(■■)   fail dot
  1164   |  6     (((■a)((■|■)■))c)(■|■)  fail dot
  1165   |  6     (((■a)((■|■)■))c)(■){■} fail dot
  1166   |  6     (((■a)((■■){■}■))c)■    fail dot
  1167   |  6     (((■a)(((■|■)){■}■))c)■ fail dot
  1168   |  6     (((■a)(((■){■}){■}■))c)■fail dot
  1169   |  6     (((■a)((■){■}(■■)))c)■  fail dot
  1170   |  6     (((■a)((■){■}(■|■)))c)■ fail dot
  1171   |  6     (((■a)((■){■}(■){■}))c)■fail dot
  1172   |  6     (((■a)((■){■}■))c)(■■)  fail dot
  1173   |  6     (((■a)((■){■}■))c)(■|■) fail dot
  1174   |  6     (((■a)((■){■}■))c)(■){■}fail dot
  1175   |  6     (((■a)(■■))c)(■)        fail dot
  1176   |  6     (((■a)(■■))c)((■■)■)    fail dot
  1177   |  6     (((■a)(■■))c)((■|■)■)   fail dot
  1178   |  6     (((■a)(■■))c)((■){■}■)  fail dot
  1179   |  6     (((■a)(■■))c)(■■|■)     fail dot
  1180   |  6     (((■a)(■■))c)((■|■)|■)  fail dot
  1181   |  6     (((■a)(■■))c)((■){■}|■) fail dot
  1182   |  6     (((■a)(■■))c)(■■){■}    fail dot
  1183   |  6     (((■a)(■■))c)((■|■)){■} fail dot
  1184   |  6     (((■a)(■■))c)((■){■}){■}fail dot
  1185   |  6     (((■a)((■■)■|■))c)■     fail dot
  1186   |  6     (((■a)((■|■)■|■))c)■    fail dot
  1187   |  6     (((■a)((■){■}■|■))c)■   fail dot
  1188   |  6     (((■a)(■■|■■))c)■       fail dot
  1189   |  6     (((■a)(■■|(■|■)))c)■    fail dot
  1190   |  6     (((■a)(■■|(■){■}))c)■   fail dot
  1191   |  6     (((■a)(■■|■))c)(■■)     fail dot
  1192   |  6     (((■a)(■■|■))c)(■|■)    fail dot
  1193   |  6     (((■a)(■■|■))c)(■){■}   fail dot
  1194   |  6     (((■a)((■■|■)|■))c)■    fail dot
  1195   |  6     (((■a)(((■|■)|■)|■))c)■ fail dot
  1196   |  6     (((■a)(((■){■}|■)|■))c)■fail dot
  1197   |  6     (((■a)((■|■)|■■))c)■    fail dot
  1198   |  6     (((■a)((■|■)|(■|■)))c)■ fail dot
  1199   |  6     (((■a)((■|■)|(■){■}))c)■fail dot
  1200   |  6     (((■a)((■|■)|■))c)(■■)  fail dot
  1201   |  6     (((■a)((■|■)|■))c)(■|■) fail dot
  1202   |  6     (((■a)((■|■)|■))c)(■){■}fail dot
  1203   |  6     (((■a)((■■){■}|■))c)■   fail dot
  1204   |  6     (((■a)(((■|■)){■}|■))c)■fail dot
  1205   |  6     (((■a)(((■){■}){■}|■))c)■fail dot
  1206   |  6     (((■a)((■){■}|■■))c)■   fail dot
  1207   |  6     (((■a)((■){■}|(■|■)))c)■fail dot
  1208   |  6     (((■a)((■){■}|(■){■}))c)■fail dot
  1209   |  6     (((■a)((■){■}|■))c)(■■) fail dot
  1210   |  6     (((■a)((■){■}|■))c)(■|■)fail dot
  1211   |  6     (((■a)((■){■}|■))c)(■){■}fail dot
  1212   |  6     (((■a)(■|■))c)(■)       fail dot
  1213   |  6     (((■a)(■|■))c)((■■)■)   fail dot
  1214   |  6     (((■a)(■|■))c)((■|■)■)  fail dot
  1215   |  6     (((■a)(■|■))c)((■){■}■) fail dot
  1216   |  6     (((■a)(■|■))c)(■■|■)    fail dot
  1217   |  6     (((■a)(■|■))c)((■|■)|■) fail dot
  1218   |  6     (((■a)(■|■))c)((■){■}|■)fail dot
  1219   |  6     (((■a)(■|■))c)(■■){■}   fail dot
  1220   |  6     (((■a)(■|■))c)((■|■)){■}fail dot
  1221   |  6     (((■a)(■|■))c)((■){■}){■}fail dot
  1222   |  6     (((■a)((■■)■){■})c)■    fail dot
  1223   |  6     (((■a)((■|■)■){■})c)■   fail dot
  1224   |  6     (((■a)((■){■}■){■})c)■  fail dot
  1225   |  6     (((■a)(■■){■})c)(■■)    fail dot
  1226   |  6     (((■a)(■■){■})c)(■|■)   fail dot
  1227   |  6     (((■a)(■■){■})c)(■){■}  fail dot
  1228   |  6     (((■a)((■■|■)){■})c)■   fail dot
  1229   |  6     (((■a)(((■|■)|■)){■})c)■fail dot
  1230   |  6     (((■a)(((■){■}|■)){■})c)■fail dot
  1231   |  6     (((■a)((■|■)){■})c)(■■) fail dot
  1232   |  6     (((■a)((■|■)){■})c)(■|■)fail dot
  1233   |  6     (((■a)((■|■)){■})c)(■){■}fail dot
  1234   |  6     (((■a)((■■){■}){■})c)■  fail dot
  1235   |  6     (((■a)(((■|■)){■}){■})c)■fail dot
  1236   |  6     (((■a)(((■){■}){■}){■})c)■fail dot
  1237   |  6     (((■a)((■){■}){■})c)(■■)fail dot
  1238   |  6     (((■a)((■){■}){■})c)(■|■)fail dot
  1239   |  6     (((■a)((■){■}){■})c)(■){■}fail dot
  1240   |  6     (((■a)(■){■})c)(■)      fail dot
  1241   |  6     (((■a)(■){■})c)((■■)■)  fail dot
  1242   |  6     (((■a)(■){■})c)((■|■)■) fail dot
  1243   |  6     (((■a)(■){■})c)((■){■}■)fail dot
  1244   |  6     (((■a)(■){■})c)(■■|■)   fail dot
  1245   |  6     (((■a)(■){■})c)((■|■)|■)fail dot
  1246   |  6     (((■a)(■){■})c)((■){■}|■)fail dot
  1247   |  6     (((■a)(■){■})c)(■■){■}  fail dot
  1248   |  6     (((■a)(■){■})c)((■|■)){■}fail dot
  1249   |  6     (((■a)(■){■})c)((■){■}){■}fail dot
  1250   |  6     (((■a)■)c)((■■))        fail dot
  1251   |  6     (((■a)■)c)((■|■))       fail dot
  1252   |  6     (((■a)■)c)((■){■})      fail dot
  1253   |  6     (((■a)■)c)((■)■)        fail dot
  1254   |  6     (((■a)■)c)(((■■)■)■)    fail dot
  1255   |  6     (((■a)■)c)(((■|■)■)■)   fail dot
  1256   |  6     (((■a)■)c)(((■){■}■)■)  fail dot
  1257   |  6     (((■a)■)c)((■■)(■■))    fail dot
  1258   |  6     (((■a)■)c)((■■)(■|■))   fail dot
  1259   |  6     (((■a)■)c)((■■)(■){■})  fail dot
  1260   |  6     (((■a)■)c)((■■|■)■)     fail dot
  1261   |  6     (((■a)■)c)(((■|■)|■)■)  fail dot
  1262   |  6     (((■a)■)c)(((■){■}|■)■) fail dot
  1263   |  6     (((■a)■)c)((■|■)(■■))   fail dot
  1264   |  6     (((■a)■)c)((■|■)(■|■))  fail dot
  1265   |  6     (((■a)■)c)((■|■)(■){■}) fail dot
  1266   |  6     (((■a)■)c)((■■){■}■)    fail dot
  1267   |  6     (((■a)■)c)(((■|■)){■}■) fail dot
  1268   |  6     (((■a)■)c)(((■){■}){■}■)fail dot
  1269   |  6     (((■a)■)c)((■){■}(■■))  fail dot
  1270   |  6     (((■a)■)c)((■){■}(■|■)) fail dot
  1271   |  6     (((■a)■)c)((■){■}(■){■})fail dot
  1272   |  6     (((■a)■)c)((■■)■|■)     fail dot
  1273   |  6     (((■a)■)c)((■|■)■|■)    fail dot
  1274   |  6     (((■a)■)c)((■){■}■|■)   fail dot
  1275   |  6     (((■a)■)c)(■■|■■)       fail dot
  1276   |  6     (((■a)■)c)(■■|(■|■))    fail dot
  1277   |  6     (((■a)■)c)(■■|(■){■})   fail dot
  1278   |  6     (((■a)■)c)((■■|■)|■)    fail dot
  1279   |  6     (((■a)■)c)(((■|■)|■)|■) fail dot
  1280   |  6     (((■a)■)c)(((■){■}|■)|■)fail dot
  1281   |  6     (((■a)■)c)((■|■)|■■)    fail dot
  1282   |  6     (((■a)■)c)((■|■)|(■|■)) fail dot
  1283   |  6     (((■a)■)c)((■|■)|(■){■})fail dot
  1284   |  6     (((■a)■)c)((■■){■}|■)   fail dot
  1285   |  6     (((■a)■)c)(((■|■)){■}|■)fail dot
  1286   |  6     (((■a)■)c)(((■){■}){■}|■)fail dot
  1287   |  6     (((■a)■)c)((■){■}|■■)   fail dot
  1288   |  6     (((■a)■)c)((■){■}|(■|■))fail dot
  1289   |  6     (((■a)■)c)((■){■}|(■){■})fail dot
  1290   |  6     (((■a)■)c)((■■)■){■}    fail dot
  1291   |  6     (((■a)■)c)((■|■)■){■}   fail dot
  1292   |  6     (((■a)■)c)((■){■}■){■}  fail dot
  1293   |  6     (((■a)■)c)((■■|■)){■}   fail dot
  1294   |  6     (((■a)■)c)(((■|■)|■)){■}fail dot
  1295   |  6     (((■a)■)c)(((■){■}|■)){■}fail dot
  1296   |  6     (((■a)■)c)((■■){■}){■}  fail dot
  1297   |  6     (((■a)■)c)(((■|■)){■}){■}fail dot
  1298   |  6     (((■a)■)c)(((■){■}){■}){■}fail dot
  1299   |  6     (((((■■))a)b)■)■        fail dot
  1300   |  6     (((((■|■))a)b)■)■       fail dot
  1301   |  6     (((((■){■})a)b)■)■      fail dot
  1302   |  6     ((((■)a)b)(■■))■        fail dot
  1303   |  6     ((((■)a)b)(■|■))■       fail dot
  1304   |  6     ((((■)a)b)(■){■})■      fail dot
  1305   |  6     ((((■)a)b)■)(■■)        fail dot
  1306   |  6     ((((■)a)b)■)(■|■)       fail dot
  1307   |  6     ((((■)a)b)■)(■){■}      fail dot
  1308   |  6     (((((■)■)a)b)■)■        fail dot
  1309   |  6     ((((((■■)■)■)a)b)■)■    fail dot
  1310   |  6     ((((((■|■)■)■)a)b)■)■   fail dot
  1311   |  6     ((((((■){■}■)■)a)b)■)■  fail dot
  1312   |  6     (((((■■)(■■))a)b)■)■    fail dot
  1313   |  6     (((((■■)(■|■))a)b)■)■   fail dot
  1314   |  6     (((((■■)(■){■})a)b)■)■  fail dot
  1315   |  6     (((((■■)■)a)b)(■■))■    fail dot
  1316   |  6     (((((■■)■)a)b)(■|■))■   fail dot
  1317   |  6     (((((■■)■)a)b)(■){■})■  fail dot
  1318   |  6     (((((■■)■)a)b)■)(■■)    fail dot
  1319   |  6     (((((■■)■)a)b)■)(■|■)   fail dot
  1320   |  6     (((((■■)■)a)b)■)(■){■}  fail dot
  1321   |  6     (((((■■|■)■)a)b)■)■     fail dot
  1322   |  6     ((((((■|■)|■)■)a)b)■)■  fail dot
  1323   |  6     ((((((■){■}|■)■)a)b)■)■ fail dot
  1324   |  6     (((((■|■)(■■))a)b)■)■   fail dot
  1325   |  6     (((((■|■)(■|■))a)b)■)■  fail dot
  1326   |  6     (((((■|■)(■){■})a)b)■)■ fail dot
  1327   |  6     (((((■|■)■)a)b)(■■))■   fail dot
  1328   |  6     (((((■|■)■)a)b)(■|■))■  fail dot
  1329   |  6     (((((■|■)■)a)b)(■){■})■ fail dot
  1330   |  6     (((((■|■)■)a)b)■)(■■)   fail dot
  1331   |  6     (((((■|■)■)a)b)■)(■|■)  fail dot
  1332   |  6     (((((■|■)■)a)b)■)(■){■} fail dot
  1333   |  6     (((((■■){■}■)a)b)■)■    fail dot
  1334   |  6     ((((((■|■)){■}■)a)b)■)■ fail dot
  1335   |  6     ((((((■){■}){■}■)a)b)■)■fail dot
  1336   |  6     (((((■){■}(■■))a)b)■)■  fail dot
  1337   |  6     (((((■){■}(■|■))a)b)■)■ fail dot
  1338   |  6     (((((■){■}(■){■})a)b)■)■fail dot
  1339   |  6     (((((■){■}■)a)b)(■■))■  fail dot
  1340   |  6     (((((■){■}■)a)b)(■|■))■ fail dot
  1341   |  6     (((((■){■}■)a)b)(■){■})■fail dot
  1342   |  6     (((((■){■}■)a)b)■)(■■)  fail dot
  1343   |  6     (((((■){■}■)a)b)■)(■|■) fail dot
  1344   |  6     (((((■){■}■)a)b)■)(■){■}fail dot
  1345   |  6     ((((■■)a)b)(■))■        fail dot
  1346   |  6     ((((■■)a)b)((■■)■))■    fail dot
  1347   |  6     ((((■■)a)b)((■|■)■))■   fail dot
  1348   |  6     ((((■■)a)b)((■){■}■))■  fail dot
  1349   |  6     ((((■■)a)b)(■■))(■■)    fail dot
  1350   |  6     ((((■■)a)b)(■■))(■|■)   fail dot
  1351   |  6     ((((■■)a)b)(■■))(■){■}  fail dot
  1352   |  6     ((((■■)a)b)(■■|■))■     fail dot
  1353   |  6     ((((■■)a)b)((■|■)|■))■  fail dot
  1354   |  6     ((((■■)a)b)((■){■}|■))■ fail dot
  1355   |  6     ((((■■)a)b)(■|■))(■■)   fail dot
  1356   |  6     ((((■■)a)b)(■|■))(■|■)  fail dot
  1357   |  6     ((((■■)a)b)(■|■))(■){■} fail dot
  1358   |  6     ((((■■)a)b)(■■){■})■    fail dot
  1359   |  6     ((((■■)a)b)((■|■)){■})■ fail dot
  1360   |  6     ((((■■)a)b)((■){■}){■})■fail dot
  1361   |  6     ((((■■)a)b)(■){■})(■■)  fail dot
  1362   |  6     ((((■■)a)b)(■){■})(■|■) fail dot
  1363   |  6     ((((■■)a)b)(■){■})(■){■}fail dot
  1364   |  6     ((((■■)a)b)■)(■)        fail dot
  1365   |  6     ((((■■)a)b)■)((■■)■)    fail dot
  1366   |  6     ((((■■)a)b)■)((■|■)■)   fail dot
  1367   |  6     ((((■■)a)b)■)((■){■}■)  fail dot
  1368   |  6     ((((■■)a)b)■)(■■|■)     fail dot
  1369   |  6     ((((■■)a)b)■)((■|■)|■)  fail dot
  1370   |  6     ((((■■)a)b)■)((■){■}|■) fail dot
  1371   |  6     ((((■■)a)b)■)(■■){■}    fail dot
  1372   |  6     ((((■■)a)b)■)((■|■)){■} fail dot
  1373   |  6     ((((■■)a)b)■)((■){■}){■}fail dot
  1374   |  6     (((((■■)■|■)a)b)■)■     fail dot
  1375   |  6     (((((■|■)■|■)a)b)■)■    fail dot
  1376   |  6     (((((■){■}■|■)a)b)■)■   fail dot
  1377   |  6     ((((■■|■■)a)b)■)■       fail dot
  1378   |  6     ((((■■|(■|■))a)b)■)■    fail dot
  1379   |  6     ((((■■|(■){■})a)b)■)■   fail dot
  1380   |  6     ((((■■|■)a)b)(■■))■     fail dot
  1381   |  6     ((((■■|■)a)b)(■|■))■    fail dot
  1382   |  6     ((((■■|■)a)b)(■){■})■   fail dot
  1383   |  6     ((((■■|■)a)b)■)(■■)     fail dot
  1384   |  6     ((((■■|■)a)b)■)(■|■)    fail dot
  1385   |  6     ((((■■|■)a)b)■)(■){■}   fail dot
  1386   |  6     (((((■■|■)|■)a)b)■)■    fail dot
  1387   |  6     ((((((■|■)|■)|■)a)b)■)■ fail dot
  1388   |  6     ((((((■){■}|■)|■)a)b)■)■fail dot
  1389   |  6     (((((■|■)|■■)a)b)■)■    fail dot
  1390   |  6     (((((■|■)|(■|■))a)b)■)■ fail dot
  1391   |  6     (((((■|■)|(■){■})a)b)■)■fail dot
  1392   |  6     (((((■|■)|■)a)b)(■■))■  fail dot
  1393   |  6     (((((■|■)|■)a)b)(■|■))■ fail dot
  1394   |  6     (((((■|■)|■)a)b)(■){■})■fail dot
  1395   |  6     (((((■|■)|■)a)b)■)(■■)  fail dot
  1396   |  6     (((((■|■)|■)a)b)■)(■|■) fail dot
  1397   |  6     (((((■|■)|■)a)b)■)(■){■}fail dot
  1398   |  6     (((((■■){■}|■)a)b)■)■   fail dot
  1399   |  6     ((((((■|■)){■}|■)a)b)■)■fail dot
  1400   |  6     ((((((■){■}){■}|■)a)b)■)■fail dot
  1401   |  6     (((((■){■}|■■)a)b)■)■   fail dot
  1402   |  6     (((((■){■}|(■|■))a)b)■)■fail dot
  1403   |  6     (((((■){■}|(■){■})a)b)■)■fail dot
  1404   |  6     (((((■){■}|■)a)b)(■■))■ fail dot
  1405   |  6     (((((■){■}|■)a)b)(■|■))■fail dot
  1406   |  6     (((((■){■}|■)a)b)(■){■})■  unsatisfiable SAT formula       
  1407   |  6     (((((■){■}|■)a)b)■)(■■) fail dot
  1408   |  6     (((((■){■}|■)a)b)■)(■|■)fail dot
  1409   |  6     (((((■){■}|■)a)b)■)(■){■}  unsatisfiable SAT formula       
  1410   |  6     ((((■|■)a)b)(■))■       fail dot
  1411   |  6     ((((■|■)a)b)((■■)■))■   fail dot
  1412   |  6     ((((■|■)a)b)((■|■)■))■  fail dot
  1413   |  6     ((((■|■)a)b)((■){■}■))■ fail dot
  1414   |  6     ((((■|■)a)b)(■■))(■■)   fail dot
  1415   |  6     ((((■|■)a)b)(■■))(■|■)  fail dot
  1416   |  6     ((((■|■)a)b)(■■))(■){■} fail dot
  1417   |  6     ((((■|■)a)b)(■■|■))■    fail dot
  1418   |  6     ((((■|■)a)b)((■|■)|■))■ fail dot
  1419   |  6     ((((■|■)a)b)((■){■}|■))■fail dot
  1420   |  6     ((((■|■)a)b)(■|■))(■■)  fail dot
  1421   |  6     ((((■|■)a)b)(■|■))(■|■) fail dot
  1422   |  6     ((((■|■)a)b)(■|■))(■){■}fail dot
  1423   |  6     ((((■|■)a)b)(■■){■})■   fail dot
  1424   |  6     ((((■|■)a)b)((■|■)){■})■fail dot
  1425   |  6     ((((■|■)a)b)((■){■}){■})■fail dot
  1426   |  6     ((((■|■)a)b)(■){■})(■■) fail dot
  1427   |  6     ((((■|■)a)b)(■){■})(■|■)fail dot
  1428   |  6     ((((■|■)a)b)(■){■})(■){■}fail dot
  1429   |  6     ((((■|■)a)b)■)(■)       fail dot
  1430   |  6     ((((■|■)a)b)■)((■■)■)   fail dot
  1431   |  6     ((((■|■)a)b)■)((■|■)■)  fail dot
  1432   |  6     ((((■|■)a)b)■)((■){■}■) fail dot
  1433   |  6     ((((■|■)a)b)■)(■■|■)    fail dot
  1434   |  6     ((((■|■)a)b)■)((■|■)|■) fail dot
  1435   |  6     ((((■|■)a)b)■)((■){■}|■)fail dot
  1436   |  6     ((((■|■)a)b)■)(■■){■}   fail dot
  1437   |  6     ((((■|■)a)b)■)((■|■)){■}fail dot
  1438   |  6     ((((■|■)a)b)■)((■){■}){■}fail dot
  1439   |  6     (((((■■)■){■}a)b)■)■    fail dot
  1440   |  6     (((((■|■)■){■}a)b)■)■   fail dot
  1441   |  6     (((((■){■}■){■}a)b)■)■  fail dot
  1442   |  6     ((((■■){■}a)b)(■■))■    fail dot
  1443   |  6     ((((■■){■}a)b)(■|■))■   fail dot
  1444   |  6     ((((■■){■}a)b)(■){■})■    unsatisfiable SAT formula       
  1445   |  6     ((((■■){■}a)b)■)(■■)    fail dot
  1446   |  6     ((((■■){■}a)b)■)(■|■)   fail dot
  1447   |  6     ((((■■){■}a)b)■)(■){■}    unsatisfiable SAT formula       
  1448   |  6     (((((■■|■)){■}a)b)■)■   fail dot
  1449   |  6     ((((((■|■)|■)){■}a)b)■)■fail dot
  1450   |  6     ((((((■){■}|■)){■}a)b)■)■fail dot
  1451   |  6     (((((■|■)){■}a)b)(■■))■ fail dot
  1452   |  6     (((((■|■)){■}a)b)(■|■))■fail dot
  1453   |  6     (((((■|■)){■}a)b)(■){■})■  unsatisfiable SAT formula       
  1454   |  6     (((((■|■)){■}a)b)■)(■■) fail dot
  1455   |  6     (((((■|■)){■}a)b)■)(■|■)fail dot
  1456   |  6     (((((■|■)){■}a)b)■)(■){■}  unsatisfiable SAT formula       
  1457   |  6     (((((■■){■}){■}a)b)■)■  fail dot
  1458   |  6     ((((((■|■)){■}){■}a)b)■)■fail dot
  1459   |  6     ((((((■){■}){■}){■}a)b)■)■fail dot
  1460   |  6     (((((■){■}){■}a)b)(■■))■fail dot
  1461   |  6     (((((■){■}){■}a)b)(■|■))■fail dot
  1462   |  6     (((((■){■}){■}a)b)(■){■})■  unsatisfiable SAT formula       
  1463   |  6     (((((■){■}){■}a)b)■)(■■)fail dot
  1464   |  6     (((((■){■}){■}a)b)■)(■|■)fail dot
  1465   |  6     (((((■){■}){■}a)b)■)(■){■}  unsatisfiable SAT formula       
  1466   |  6     ((((■){■}a)b)(■))■      fail dot
  1467   |  6     ((((■){■}a)b)((■■)■))■  fail dot
  1468   |  6     ((((■){■}a)b)((■|■)■))■ fail dot
  1469   |  6     ((((■){■}a)b)((■){■}■))■fail dot
  1470   |  6     ((((■){■}a)b)(■■))(■■)  fail dot
  1471   |  6     ((((■){■}a)b)(■■))(■|■) fail dot
  1472   |  6     ((((■){■}a)b)(■■))(■){■}fail dot
  1473   |  6     ((((■){■}a)b)(■■|■))■   fail dot
  1474   |  6     ((((■){■}a)b)((■|■)|■))■fail dot
  1475   |  6     ((((■){■}a)b)((■){■}|■))■  unsatisfiable SAT formula       
  1476   |  6     ((((■){■}a)b)(■|■))(■■) fail dot
  1477   |  6     ((((■){■}a)b)(■|■))(■|■)fail dot
  1478   |  6     ((((■){■}a)b)(■|■))(■){■}  unsatisfiable SAT formula       
  1479   |  6     ((((■){■}a)b)(■■){■})■  fail dot
  1480   |  6     ((((■){■}a)b)((■|■)){■})■fail solve
  1481   |  6     ((((■){■}a)b)((■){■}){■})■  unsatisfiable SAT formula       
  1482   |  6     ((((■){■}a)b)(■){■})(■■)fail dot
  1483   |  6     ((((■){■}a)b)(■){■})(■|■)fail solve
  1484   |  6     ((((■){■}a)b)(■){■})(■){■}  unsatisfiable SAT formula       
  1485   |  6     ((((■){■}a)b)■)(■)      fail dot
  1486   |  6     ((((■){■}a)b)■)((■■)■)  fail dot
  1487   |  6     ((((■){■}a)b)■)((■|■)■) fail dot
  1488   |  6     ((((■){■}a)b)■)((■){■}■)fail dot
  1489   |  6     ((((■){■}a)b)■)(■■|■)   fail dot
  1490   |  6     ((((■){■}a)b)■)((■|■)|■)fail dot
  1491   |  6     ((((■){■}a)b)■)((■){■}|■)  unsatisfiable SAT formula       
  1492   |  6     ((((■){■}a)b)■)(■■){■}  fail dot
  1493   |  6     ((((■){■}a)b)■)((■|■)){■}fail solve
  1494   |  6     ((((■){■}a)b)■)((■){■}){■}  unsatisfiable SAT formula       
  1495   |  6     (((■a)b)((■■)))■        fail dot
  1496   |  6     (((■a)b)((■|■)))■       fail dot
  1497   |  6     (((■a)b)((■){■}))■      fail dot
  1498   |  6     (((■a)b)(■))(■■)        fail dot
  1499   |  6     (((■a)b)(■))(■|■)       fail dot
  1500   |  6     (((■a)b)(■))(■){■}      fail dot
  1501   |  6     (((■a)b)((■)■))■        fail dot
  1502   |  6     (((■a)b)(((■■)■)■))■    fail dot
  1503   |  6     (((■a)b)(((■|■)■)■))■   fail dot
  1504   |  6     (((■a)b)(((■){■}■)■))■  fail dot
  1505   |  6     (((■a)b)((■■)(■■)))■    fail dot
  1506   |  6     (((■a)b)((■■)(■|■)))■   fail dot
  1507   |  6     (((■a)b)((■■)(■){■}))■  fail dot
  1508   |  6     (((■a)b)((■■)■))(■■)    fail dot
  1509   |  6     (((■a)b)((■■)■))(■|■)   fail dot
  1510   |  6     (((■a)b)((■■)■))(■){■}  fail dot
  1511   |  6     (((■a)b)((■■|■)■))■     fail dot
  1512   |  6     (((■a)b)(((■|■)|■)■))■  fail dot
  1513   |  6     (((■a)b)(((■){■}|■)■))■ fail dot
  1514   |  6     (((■a)b)((■|■)(■■)))■   fail dot
  1515   |  6     (((■a)b)((■|■)(■|■)))■  fail dot
  1516   |  6     (((■a)b)((■|■)(■){■}))■ fail dot
  1517   |  6     (((■a)b)((■|■)■))(■■)   fail dot
  1518   |  6     (((■a)b)((■|■)■))(■|■)  fail dot
  1519   |  6     (((■a)b)((■|■)■))(■){■} fail dot
  1520   |  6     (((■a)b)((■■){■}■))■    fail dot
  1521   |  6     (((■a)b)(((■|■)){■}■))■ fail dot
  1522   |  6     (((■a)b)(((■){■}){■}■))■fail dot
  1523   |  6     (((■a)b)((■){■}(■■)))■  fail dot
  1524   |  6     (((■a)b)((■){■}(■|■)))■ fail dot
  1525   |  6     (((■a)b)((■){■}(■){■}))■fail dot
  1526   |  6     (((■a)b)((■){■}■))(■■)  fail dot
  1527   |  6     (((■a)b)((■){■}■))(■|■) fail dot
  1528   |  6     (((■a)b)((■){■}■))(■){■}fail dot
  1529   |  6     (((■a)b)(■■))(■)        fail dot
  1530   |  6     (((■a)b)(■■))((■■)■)    fail dot
  1531   |  6     (((■a)b)(■■))((■|■)■)   fail dot
  1532   |  6     (((■a)b)(■■))((■){■}■)  fail dot
  1533   |  6     (((■a)b)(■■))(■■|■)     fail dot
  1534   |  6     (((■a)b)(■■))((■|■)|■)  fail dot
  1535   |  6     (((■a)b)(■■))((■){■}|■) fail dot
  1536   |  6     (((■a)b)(■■))(■■){■}    fail dot
  1537   |  6     (((■a)b)(■■))((■|■)){■} fail dot
  1538   |  6     (((■a)b)(■■))((■){■}){■}fail dot
  1539   |  6     (((■a)b)((■■)■|■))■     fail dot
  1540   |  6     (((■a)b)((■|■)■|■))■    fail dot
  1541   |  6     (((■a)b)((■){■}■|■))■   fail dot
  1542   |  6     (((■a)b)(■■|■■))■       fail dot
  1543   |  6     (((■a)b)(■■|(■|■)))■    fail dot
  1544   |  6     (((■a)b)(■■|(■){■}))■   fail dot
  1545   |  6     (((■a)b)(■■|■))(■■)     fail dot
  1546   |  6     (((■a)b)(■■|■))(■|■)    fail dot
  1547   |  6     (((■a)b)(■■|■))(■){■}   fail dot
  1548   |  6     (((■a)b)((■■|■)|■))■    fail dot
  1549   |  6     (((■a)b)(((■|■)|■)|■))■ fail dot
  1550   |  6     (((■a)b)(((■){■}|■)|■))■fail dot
  1551   |  6     (((■a)b)((■|■)|■■))■    fail dot
  1552   |  6     (((■a)b)((■|■)|(■|■)))■ fail dot
  1553   |  6     (((■a)b)((■|■)|(■){■}))■fail dot
  1554   |  6     (((■a)b)((■|■)|■))(■■)  fail dot
  1555   |  6     (((■a)b)((■|■)|■))(■|■) fail dot
  1556   |  6     (((■a)b)((■|■)|■))(■){■}fail dot
  1557   |  6     (((■a)b)((■■){■}|■))■   fail dot
  1558   |  6     (((■a)b)(((■|■)){■}|■))■fail dot
  1559   |  6     (((■a)b)(((■){■}){■}|■))■fail dot
  1560   |  6     (((■a)b)((■){■}|■■))■   fail dot
  1561   |  6     (((■a)b)((■){■}|(■|■)))■fail dot
  1562   |  6     (((■a)b)((■){■}|(■){■}))■fail dot
  1563   |  6     (((■a)b)((■){■}|■))(■■) fail dot
  1564   |  6     (((■a)b)((■){■}|■))(■|■)fail dot
  1565   |  6     (((■a)b)((■){■}|■))(■){■}fail dot
  1566   |  6     (((■a)b)(■|■))(■)       fail dot
  1567   |  6     (((■a)b)(■|■))((■■)■)   fail dot
  1568   |  6     (((■a)b)(■|■))((■|■)■)  fail dot
  1569   |  6     (((■a)b)(■|■))((■){■}■) fail dot
  1570   |  6     (((■a)b)(■|■))(■■|■)    fail dot
  1571   |  6     (((■a)b)(■|■))((■|■)|■) fail dot
  1572   |  6     (((■a)b)(■|■))((■){■}|■)fail dot
  1573   |  6     (((■a)b)(■|■))(■■){■}   fail dot
  1574   |  6     (((■a)b)(■|■))((■|■)){■}fail dot
  1575   |  6     (((■a)b)(■|■))((■){■}){■}fail dot
  1576   |  6     (((■a)b)((■■)■){■})■    fail dot
  1577   |  6     (((■a)b)((■|■)■){■})■   fail dot
  1578   |  6     (((■a)b)((■){■}■){■})■  fail dot
  1579   |  6     (((■a)b)(■■){■})(■■)    fail dot
  1580   |  6     (((■a)b)(■■){■})(■|■)   fail dot
  1581   |  6     (((■a)b)(■■){■})(■){■}  fail dot
  1582   |  6     (((■a)b)((■■|■)){■})■   fail dot
  1583   |  6     (((■a)b)(((■|■)|■)){■})■fail dot
  1584   |  6     (((■a)b)(((■){■}|■)){■})■fail dot
  1585   |  6     (((■a)b)((■|■)){■})(■■) fail dot
  1586   |  6     (((■a)b)((■|■)){■})(■|■)fail dot
  1587   |  6     (((■a)b)((■|■)){■})(■){■}fail dot
  1588   |  6     (((■a)b)((■■){■}){■})■  fail dot
  1589   |  6     (((■a)b)(((■|■)){■}){■})■fail dot
  1590   |  6     (((■a)b)(((■){■}){■}){■})■fail dot
  1591   |  6     (((■a)b)((■){■}){■})(■■)fail dot
  1592   |  6     (((■a)b)((■){■}){■})(■|■)fail dot
  1593   |  6     (((■a)b)((■){■}){■})(■){■}fail dot
  1594   |  6     (((■a)b)(■){■})(■)      fail dot
  1595   |  6     (((■a)b)(■){■})((■■)■)  fail dot
  1596   |  6     (((■a)b)(■){■})((■|■)■) fail dot
  1597   |  6     (((■a)b)(■){■})((■){■}■)fail dot
  1598   |  6     (((■a)b)(■){■})(■■|■)   fail dot
  1599   |  6     (((■a)b)(■){■})((■|■)|■)fail dot
  1600   |  6     (((■a)b)(■){■})((■){■}|■)fail dot
  1601   |  6     (((■a)b)(■){■})(■■){■}  fail dot
  1602   |  6     (((■a)b)(■){■})((■|■)){■}fail dot
  1603   |  6     (((■a)b)(■){■})((■){■}){■}fail dot
  1604   |  6     (((■a)b)■)((■■))        fail dot
  1605   |  6     (((■a)b)■)((■|■))       fail dot
  1606   |  6     (((■a)b)■)((■){■})      fail dot
  1607   |  6     (((■a)b)■)((■)■)        fail dot
  1608   |  6     (((■a)b)■)(((■■)■)■)    fail dot
  1609   |  6     (((■a)b)■)(((■|■)■)■)   fail dot
  1610   |  6     (((■a)b)■)(((■){■}■)■)  fail dot
  1611   |  6     (((■a)b)■)((■■)(■■))    fail dot
  1612   |  6     (((■a)b)■)((■■)(■|■))   fail dot
  1613   |  6     (((■a)b)■)((■■)(■){■})  fail dot
  1614   |  6     (((■a)b)■)((■■|■)■)     fail dot
  1615   |  6     (((■a)b)■)(((■|■)|■)■)  fail dot
  1616   |  6     (((■a)b)■)(((■){■}|■)■) fail dot
  1617   |  6     (((■a)b)■)((■|■)(■■))   fail dot
  1618   |  6     (((■a)b)■)((■|■)(■|■))  fail dot
  1619   |  6     (((■a)b)■)((■|■)(■){■}) fail dot
  1620   |  6     (((■a)b)■)((■■){■}■)    fail dot
  1621   |  6     (((■a)b)■)(((■|■)){■}■) fail dot
  1622   |  6     (((■a)b)■)(((■){■}){■}■)fail dot
  1623   |  6     (((■a)b)■)((■){■}(■■))  fail dot
  1624   |  6     (((■a)b)■)((■){■}(■|■)) fail dot
  1625   |  6     (((■a)b)■)((■){■}(■){■})fail dot
  1626   |  6     (((■a)b)■)((■■)■|■)     fail dot
  1627   |  6     (((■a)b)■)((■|■)■|■)    fail dot
  1628   |  6     (((■a)b)■)((■){■}■|■)   fail dot
  1629   |  6     (((■a)b)■)(■■|■■)       fail dot
  1630   |  6     (((■a)b)■)(■■|(■|■))    fail dot
  1631   |  6     (((■a)b)■)(■■|(■){■})   fail dot
  1632   |  6     (((■a)b)■)((■■|■)|■)    fail dot
  1633   |  6     (((■a)b)■)(((■|■)|■)|■) fail dot
  1634   |  6     (((■a)b)■)(((■){■}|■)|■)fail dot
  1635   |  6     (((■a)b)■)((■|■)|■■)    fail dot
  1636   |  6     (((■a)b)■)((■|■)|(■|■)) fail dot
  1637   |  6     (((■a)b)■)((■|■)|(■){■})fail dot
  1638   |  6     (((■a)b)■)((■■){■}|■)   fail dot
  1639   |  6     (((■a)b)■)(((■|■)){■}|■)fail dot
  1640   |  6     (((■a)b)■)(((■){■}){■}|■)fail dot
  1641   |  6     (((■a)b)■)((■){■}|■■)   fail dot
  1642   |  6     (((■a)b)■)((■){■}|(■|■))fail dot
  1643   |  6     (((■a)b)■)((■){■}|(■){■})fail dot
  1644   |  6     (((■a)b)■)((■■)■){■}    fail dot
  1645   |  6     (((■a)b)■)((■|■)■){■}   fail dot
  1646   |  6     (((■a)b)■)((■){■}■){■}  fail dot
  1647   |  6     (((■a)b)■)((■■|■)){■}   fail dot
  1648   |  6     (((■a)b)■)(((■|■)|■)){■}fail dot
  1649   |  6     (((■a)b)■)(((■){■}|■)){■}fail dot
  1650   |  6     (((■a)b)■)((■■){■}){■}  fail dot
  1651   |  6     (((■a)b)■)(((■|■)){■}){■}fail dot
  1652   |  6     (((■a)b)■)(((■){■}){■}){■}fail dot
  1653   |  6     ((((((■■)■))a)b)c)■     fail dot
  1654   |  6     ((((((■|■)■))a)b)c)■    fail dot
  1655   |  6     ((((((■){■}■))a)b)c)■   fail dot
  1656   |  6     (((((■■))a)b)c)(■■)     fail dot
  1657   |  6     (((((■■))a)b)c)(■|■)    fail dot
  1658   |  6     (((((■■))a)b)c)(■){■}   fail dot
  1659   |  6     (((((■■|■))a)b)c)■      fail dot
  1660   |  6     ((((((■|■)|■))a)b)c)■   fail dot
  1661   |  6     ((((((■){■}|■))a)b)c)■  fail dot
  1662   |  6     (((((■|■))a)b)c)(■■)    fail dot
  1663   |  6     (((((■|■))a)b)c)(■|■)   fail dot
  1664   |  6     (((((■|■))a)b)c)(■){■}  fail dot
  1665   |  6     (((((■■){■})a)b)c)■     fail dot
  1666   |  6     ((((((■|■)){■})a)b)c)■  fail dot
  1667   |  6     ((((((■){■}){■})a)b)c)■ fail dot
  1668   |  6     (((((■){■})a)b)c)(■■)   fail dot
  1669   |  6     (((((■){■})a)b)c)(■|■)  fail dot
  1670   |  6     (((((■){■})a)b)c)(■){■}   unsatisfiable SAT formula       
  1671   |  6     ((((■)a)b)c)(■)         fail dot
  1672   |  6     ((((■)a)b)c)((■■)■)     fail dot
  1673   |  6     ((((■)a)b)c)((■|■)■)    fail dot
  1674   |  6     ((((■)a)b)c)((■){■}■)   fail dot
  1675   |  6     ((((■)a)b)c)(■■|■)      fail dot
  1676   |  6     ((((■)a)b)c)((■|■)|■)   fail dot
  1677   |  6     ((((■)a)b)c)((■){■}|■)  fail dot
  1678   |  6     ((((■)a)b)c)(■■){■}     fail dot
  1679   |  6     ((((■)a)b)c)((■|■)){■}  fail dot
  1680   |  6     ((((■)a)b)c)((■){■}){■} fail dot
  1681   |  6     ((((((■■))■)a)b)c)■     fail dot
  1682   |  6     ((((((■|■))■)a)b)c)■    fail dot
  1683   |  6     ((((((■){■})■)a)b)c)■   fail dot
  1684   |  6     (((((■)■)a)b)c)(■■)     fail dot
  1685   |  6     (((((■)■)a)b)c)(■|■)    fail dot
  1686   |  6     (((((■)■)a)b)c)(■){■}   fail dot
  1687   |  6     ((((((■)■)■)a)b)c)■     fail dot
  1688   |  6     (((((((■■)■)■)■)a)b)c)■ fail dot
  1689   |  6     (((((((■|■)■)■)■)a)b)c)■fail dot
  1690   |  6     (((((((■){■}■)■)■)a)b)c)■fail dot
  1691   |  6     ((((((■■)(■■))■)a)b)c)■ fail dot
  1692   |  6     ((((((■■)(■|■))■)a)b)c)■fail dot
  1693   |  6     ((((((■■)(■){■})■)a)b)c)■fail dot
  1694   |  6     ((((((■■)■)(■■))a)b)c)■ fail dot
  1695   |  6     ((((((■■)■)(■|■))a)b)c)■fail dot
  1696   |  6     ((((((■■)■)(■){■})a)b)c)■fail dot
  1697   |  6     ((((((■■)■)■)a)b)c)(■■) fail dot
  1698   |  6     ((((((■■)■)■)a)b)c)(■|■)fail dot
  1699   |  6     ((((((■■)■)■)a)b)c)(■){■}fail dot
  1700   |  6     ((((((■■|■)■)■)a)b)c)■  fail dot
  1701   |  6     (((((((■|■)|■)■)■)a)b)c)■fail dot
  1702   |  6     (((((((■){■}|■)■)■)a)b)c)■fail dot
  1703   |  6     ((((((■|■)(■■))■)a)b)c)■fail dot
  1704   |  6     ((((((■|■)(■|■))■)a)b)c)■fail dot
  1705   |  6     ((((((■|■)(■){■})■)a)b)c)■fail dot
  1706   |  6     ((((((■|■)■)(■■))a)b)c)■fail dot
  1707   |  6     ((((((■|■)■)(■|■))a)b)c)■fail dot
  1708   |  6     ((((((■|■)■)(■){■})a)b)c)■fail dot
  1709   |  6     ((((((■|■)■)■)a)b)c)(■■)fail dot
  1710   |  6     ((((((■|■)■)■)a)b)c)(■|■)fail dot
  1711   |  6     ((((((■|■)■)■)a)b)c)(■){■}fail dot
  1712   |  6     ((((((■■){■}■)■)a)b)c)■ fail dot
  1713   |  6     (((((((■|■)){■}■)■)a)b)c)■fail dot
  1714   |  6     (((((((■){■}){■}■)■)a)b)c)■fail dot
  1715   |  6     ((((((■){■}(■■))■)a)b)c)■fail dot
  1716   |  6     ((((((■){■}(■|■))■)a)b)c)■fail dot
  1717   |  6     ((((((■){■}(■){■})■)a)b)c)■fail dot
  1718   |  6     ((((((■){■}■)(■■))a)b)c)■fail dot
  1719   |  6     ((((((■){■}■)(■|■))a)b)c)■fail dot
  1720   |  6     ((((((■){■}■)(■){■})a)b)c)■fail dot
  1721   |  6     ((((((■){■}■)■)a)b)c)(■■)fail dot
  1722   |  6     ((((((■){■}■)■)a)b)c)(■|■)fail dot
  1723   |  6     ((((((■){■}■)■)a)b)c)(■){■}fail dot
  1724   |  6     (((((■■)(■))a)b)c)■     fail dot
  1725   |  6     (((((■■)(■■))a)b)c)(■■) fail dot
  1726   |  6     (((((■■)(■■))a)b)c)(■|■)fail dot
  1727   |  6     (((((■■)(■■))a)b)c)(■){■}fail dot
  1728   |  6     (((((■■)(■|■))a)b)c)(■■)fail dot
  1729   |  6     (((((■■)(■|■))a)b)c)(■|■)fail dot
  1730   |  6     (((((■■)(■|■))a)b)c)(■){■}fail dot
  1731   |  6     (((((■■)(■){■})a)b)c)(■■)fail dot
  1732   |  6     (((((■■)(■){■})a)b)c)(■|■)fail dot
  1733   |  6     (((((■■)(■){■})a)b)c)(■){■}fail dot
  1734   |  6     (((((■■)■)a)b)c)(■)     fail dot
  1735   |  6     (((((■■)■)a)b)c)((■■)■) fail dot
  1736   |  6     (((((■■)■)a)b)c)((■|■)■)fail dot
  1737   |  6     (((((■■)■)a)b)c)((■){■}■)fail dot
  1738   |  6     (((((■■)■)a)b)c)(■■|■)  fail dot
  1739   |  6     (((((■■)■)a)b)c)((■|■)|■)fail dot
  1740   |  6     (((((■■)■)a)b)c)((■){■}|■)fail dot
  1741   |  6     (((((■■)■)a)b)c)(■■){■} fail dot
  1742   |  6     (((((■■)■)a)b)c)((■|■)){■}fail dot
  1743   |  6     (((((■■)■)a)b)c)((■){■}){■}fail dot
  1744   |  6     ((((((■■)■|■)■)a)b)c)■  fail dot
  1745   |  6     ((((((■|■)■|■)■)a)b)c)■ fail dot
  1746   |  6     ((((((■){■}■|■)■)a)b)c)■fail dot
  1747   |  6     (((((■■|■■)■)a)b)c)■    fail dot
  1748   |  6     (((((■■|(■|■))■)a)b)c)■ fail dot
  1749   |  6     (((((■■|(■){■})■)a)b)c)■fail dot
  1750   |  6     (((((■■|■)(■■))a)b)c)■  fail dot
  1751   |  6     (((((■■|■)(■|■))a)b)c)■ fail dot
  1752   |  6     (((((■■|■)(■){■})a)b)c)■fail dot
  1753   |  6     (((((■■|■)■)a)b)c)(■■)  fail dot
  1754   |  6     (((((■■|■)■)a)b)c)(■|■) fail dot
  1755   |  6     (((((■■|■)■)a)b)c)(■){■}fail dot
  1756   |  6     ((((((■■|■)|■)■)a)b)c)■ fail dot
  1757   |  6     (((((((■|■)|■)|■)■)a)b)c)■fail dot
  1758   |  6     (((((((■){■}|■)|■)■)a)b)c)■fail dot
  1759   |  6     ((((((■|■)|■■)■)a)b)c)■ fail dot
  1760   |  6     ((((((■|■)|(■|■))■)a)b)c)■fail dot
  1761   |  6     ((((((■|■)|(■){■})■)a)b)c)■fail dot
  1762   |  6     ((((((■|■)|■)(■■))a)b)c)■fail dot
  1763   |  6     ((((((■|■)|■)(■|■))a)b)c)■fail dot
  1764   |  6     ((((((■|■)|■)(■){■})a)b)c)■fail dot
  1765   |  6     ((((((■|■)|■)■)a)b)c)(■■)fail dot
  1766   |  6     ((((((■|■)|■)■)a)b)c)(■|■)fail dot
  1767   |  6     ((((((■|■)|■)■)a)b)c)(■){■}fail dot
  1768   |  6     ((((((■■){■}|■)■)a)b)c)■fail dot
  1769   |  6     (((((((■|■)){■}|■)■)a)b)c)■fail dot
  1770   |  6     (((((((■){■}){■}|■)■)a)b)c)■fail dot
  1771   |  6     ((((((■){■}|■■)■)a)b)c)■fail dot
  1772   |  6     ((((((■){■}|(■|■))■)a)b)c)■fail dot
  1773   |  6     ((((((■){■}|(■){■})■)a)b)c)■fail dot
  1774   |  6     ((((((■){■}|■)(■■))a)b)c)■fail dot
  1775   |  6     ((((((■){■}|■)(■|■))a)b)c)■fail dot
  1776   |  6     ((((((■){■}|■)(■){■})a)b)c)■fail dot
  1777   |  6     ((((((■){■}|■)■)a)b)c)(■■)fail dot
  1778   |  6     ((((((■){■}|■)■)a)b)c)(■|■)fail dot
  1779   |  6     ((((((■){■}|■)■)a)b)c)(■){■}fail dot
  1780   |  6     (((((■|■)(■))a)b)c)■    fail dot
  1781   |  6     (((((■|■)(■■))a)b)c)(■■)fail dot
  1782   |  6     (((((■|■)(■■))a)b)c)(■|■)fail dot
  1783   |  6     (((((■|■)(■■))a)b)c)(■){■}fail dot
  1784   |  6     (((((■|■)(■|■))a)b)c)(■■)fail dot
  1785   |  6     (((((■|■)(■|■))a)b)c)(■|■)fail dot
  1786   |  6     (((((■|■)(■|■))a)b)c)(■){■}fail dot
  1787   |  6     (((((■|■)(■){■})a)b)c)(■■)fail dot
  1788   |  6     (((((■|■)(■){■})a)b)c)(■|■)fail dot
  1789   |  6     (((((■|■)(■){■})a)b)c)(■){■}fail dot
  1790   |  6     (((((■|■)■)a)b)c)(■)    fail dot
  1791   |  6     (((((■|■)■)a)b)c)((■■)■)fail dot
  1792   |  6     (((((■|■)■)a)b)c)((■|■)■)fail dot
  1793   |  6     (((((■|■)■)a)b)c)((■){■}■)fail dot
  1794   |  6     (((((■|■)■)a)b)c)(■■|■) fail dot
  1795   |  6     (((((■|■)■)a)b)c)((■|■)|■)fail dot
  1796   |  6     (((((■|■)■)a)b)c)((■){■}|■)fail dot
  1797   |  6     (((((■|■)■)a)b)c)(■■){■}fail dot
  1798   |  6     (((((■|■)■)a)b)c)((■|■)){■}fail dot
  1799   |  6     (((((■|■)■)a)b)c)((■){■}){■}fail dot
  1800   |  6     ((((((■■)■){■}■)a)b)c)■ fail dot
  1801   |  6     ((((((■|■)■){■}■)a)b)c)■fail dot
  1802   |  6     ((((((■){■}■){■}■)a)b)c)■fail dot
  1803   |  6     (((((■■){■}(■■))a)b)c)■ fail dot
  1804   |  6     (((((■■){■}(■|■))a)b)c)■fail dot
  1805   |  6     (((((■■){■}(■){■})a)b)c)■fail dot
  1806   |  6     (((((■■){■}■)a)b)c)(■■) fail dot
  1807   |  6     (((((■■){■}■)a)b)c)(■|■)fail dot
  1808   |  6     (((((■■){■}■)a)b)c)(■){■}fail dot
  1809   |  6     ((((((■■|■)){■}■)a)b)c)■fail dot
  1810   |  6     (((((((■|■)|■)){■}■)a)b)c)■fail dot
  1811   |  6     (((((((■){■}|■)){■}■)a)b)c)■fail dot
  1812   |  6     ((((((■|■)){■}(■■))a)b)c)■fail dot
  1813   |  6     ((((((■|■)){■}(■|■))a)b)c)■fail dot
  1814   |  6     ((((((■|■)){■}(■){■})a)b)c)■fail dot
  1815   |  6     ((((((■|■)){■}■)a)b)c)(■■)fail dot
  1816   |  6     ((((((■|■)){■}■)a)b)c)(■|■)fail dot
  1817   |  6     ((((((■|■)){■}■)a)b)c)(■){■}fail dot
  1818   |  6     ((((((■■){■}){■}■)a)b)c)■fail dot
  1819   |  6     (((((((■|■)){■}){■}■)a)b)c)■fail dot
  1820   |  6     (((((((■){■}){■}){■}■)a)b)c)■fail dot
  1821   |  6     ((((((■){■}){■}(■■))a)b)c)■fail dot
  1822   |  6     ((((((■){■}){■}(■|■))a)b)c)■fail dot
  1823   |  6     ((((((■){■}){■}(■){■})a)b)c)■fail dot
  1824   |  6     ((((((■){■}){■}■)a)b)c)(■■)fail dot
  1825   |  6     ((((((■){■}){■}■)a)b)c)(■|■)fail dot
  1826   |  6     ((((((■){■}){■}■)a)b)c)(■){■}fail dot
  1827   |  6     (((((■){■}(■))a)b)c)■   fail dot
  1828   |  6     (((((■){■}(■■))a)b)c)(■■)fail dot
  1829   |  6     (((((■){■}(■■))a)b)c)(■|■)fail dot
  1830   |  6     (((((■){■}(■■))a)b)c)(■){■}fail dot
  1831   |  6     (((((■){■}(■|■))a)b)c)(■■)fail dot
  1832   |  6     (((((■){■}(■|■))a)b)c)(■|■)fail dot
  1833   |  6     (((((■){■}(■|■))a)b)c)(■){■}fail dot
  1834   |  6     (((((■){■}(■){■})a)b)c)(■■)fail dot
  1835   |  6     (((((■){■}(■){■})a)b)c)(■|■)fail dot
  1836   |  6     (((((■){■}(■){■})a)b)c)(■){■}  unsatisfiable SAT formula       
  1837   |  6     (((((■){■}■)a)b)c)(■)   fail dot
  1838   |  6     (((((■){■}■)a)b)c)((■■)■)fail dot
  1839   |  6     (((((■){■}■)a)b)c)((■|■)■)fail dot
  1840   |  6     (((((■){■}■)a)b)c)((■){■}■)fail dot
  1841   |  6     (((((■){■}■)a)b)c)(■■|■)fail dot
  1842   |  6     (((((■){■}■)a)b)c)((■|■)|■)fail dot
  1843   |  6     (((((■){■}■)a)b)c)((■){■}|■)fail dot
  1844   |  6     (((((■){■}■)a)b)c)(■■){■}fail dot
  1845   |  6     (((((■){■}■)a)b)c)((■|■)){■}fail dot
  1846   |  6     (((((■){■}■)a)b)c)((■){■}){■}fail dot
  1847   |  6     ((((■■)a)b)c)((■■))     fail dot
  1848   |  6     ((((■■)a)b)c)((■|■))    fail dot
  1849   |  6     ((((■■)a)b)c)((■){■})   fail dot
  1850   |  6     ((((■■)a)b)c)((■)■)     fail dot
  1851   |  6     ((((■■)a)b)c)(((■■)■)■) fail dot
  1852   |  6     ((((■■)a)b)c)(((■|■)■)■)fail dot
  1853   |  6     ((((■■)a)b)c)(((■){■}■)■)fail dot
  1854   |  6     ((((■■)a)b)c)((■■)(■■)) fail dot
  1855   |  6     ((((■■)a)b)c)((■■)(■|■))fail dot
  1856   |  6     ((((■■)a)b)c)((■■)(■){■})fail dot
  1857   |  6     ((((■■)a)b)c)((■■|■)■)  fail dot
  1858   |  6     ((((■■)a)b)c)(((■|■)|■)■)fail dot
  1859   |  6     ((((■■)a)b)c)(((■){■}|■)■)fail dot
  1860   |  6     ((((■■)a)b)c)((■|■)(■■))fail dot
  1861   |  6     ((((■■)a)b)c)((■|■)(■|■))fail dot
  1862   |  6     ((((■■)a)b)c)((■|■)(■){■})fail dot
  1863   |  6     ((((■■)a)b)c)((■■){■}■) fail dot
  1864   |  6     ((((■■)a)b)c)(((■|■)){■}■)fail dot
  1865   |  6     ((((■■)a)b)c)(((■){■}){■}■)fail dot
  1866   |  6     ((((■■)a)b)c)((■){■}(■■))fail dot
  1867   |  6     ((((■■)a)b)c)((■){■}(■|■))fail dot
  1868   |  6     ((((■■)a)b)c)((■){■}(■){■})fail dot
  1869   |  6     ((((■■)a)b)c)((■■)■|■)  fail dot
  1870   |  6     ((((■■)a)b)c)((■|■)■|■) fail dot
  1871   |  6     ((((■■)a)b)c)((■){■}■|■)fail dot
  1872   |  6     ((((■■)a)b)c)(■■|■■)    fail dot
  1873   |  6     ((((■■)a)b)c)(■■|(■|■)) fail dot
  1874   |  6     ((((■■)a)b)c)(■■|(■){■})fail dot
  1875   |  6     ((((■■)a)b)c)((■■|■)|■) fail dot
  1876   |  6     ((((■■)a)b)c)(((■|■)|■)|■)fail dot
  1877   |  6     ((((■■)a)b)c)(((■){■}|■)|■)fail dot
  1878   |  6     ((((■■)a)b)c)((■|■)|■■) fail dot
  1879   |  6     ((((■■)a)b)c)((■|■)|(■|■))fail dot
  1880   |  6     ((((■■)a)b)c)((■|■)|(■){■})fail dot
  1881   |  6     ((((■■)a)b)c)((■■){■}|■)fail dot
  1882   |  6     ((((■■)a)b)c)(((■|■)){■}|■)fail dot
  1883   |  6     ((((■■)a)b)c)(((■){■}){■}|■)fail dot
  1884   |  6     ((((■■)a)b)c)((■){■}|■■)fail dot
  1885   |  6     ((((■■)a)b)c)((■){■}|(■|■))fail dot
  1886   |  6     ((((■■)a)b)c)((■){■}|(■){■})fail dot
  1887   |  6     ((((■■)a)b)c)((■■)■){■} fail dot
  1888   |  6     ((((■■)a)b)c)((■|■)■){■}fail dot
  1889   |  6     ((((■■)a)b)c)((■){■}■){■}fail dot
  1890   |  6     ((((■■)a)b)c)((■■|■)){■}fail dot
  1891   |  6     ((((■■)a)b)c)(((■|■)|■)){■}fail dot
  1892   |  6     ((((■■)a)b)c)(((■){■}|■)){■}fail dot
  1893   |  6     ((((■■)a)b)c)((■■){■}){■}fail dot
  1894   |  6     ((((■■)a)b)c)(((■|■)){■}){■}fail dot
  1895   |  6     ((((■■)a)b)c)(((■){■}){■}){■}fail dot
  1896   |  6     (((((■)■|■)a)b)c)■      fail dot
  1897   |  6     ((((((■■)■)■|■)a)b)c)■  fail dot
  1898   |  6     ((((((■|■)■)■|■)a)b)c)■ fail dot
  1899   |  6     ((((((■){■}■)■|■)a)b)c)■fail dot
  1900   |  6     (((((■■)(■■)|■)a)b)c)■  fail dot
  1901   |  6     (((((■■)(■|■)|■)a)b)c)■ fail dot
  1902   |  6     (((((■■)(■){■}|■)a)b)c)■fail dot
  1903   |  6     (((((■■)■|■■)a)b)c)■    fail dot
  1904   |  6     (((((■■)■|(■|■))a)b)c)■ fail dot
  1905   |  6     (((((■■)■|(■){■})a)b)c)■fail dot
  1906   |  6     (((((■■)■|■)a)b)c)(■■)  fail dot
  1907   |  6     (((((■■)■|■)a)b)c)(■|■) fail dot
  1908   |  6     (((((■■)■|■)a)b)c)(■){■}fail dot
  1909   |  6     (((((■■|■)■|■)a)b)c)■   fail dot
  1910   |  6     ((((((■|■)|■)■|■)a)b)c)■fail dot
  1911   |  6     ((((((■){■}|■)■|■)a)b)c)■fail dot
  1912   |  6     (((((■|■)(■■)|■)a)b)c)■ fail dot
  1913   |  6     (((((■|■)(■|■)|■)a)b)c)■fail dot
  1914   |  6     (((((■|■)(■){■}|■)a)b)c)■fail dot
  1915   |  6     (((((■|■)■|■■)a)b)c)■   fail dot
  1916   |  6     (((((■|■)■|(■|■))a)b)c)■fail dot
  1917   |  6     (((((■|■)■|(■){■})a)b)c)■fail dot
  1918   |  6     (((((■|■)■|■)a)b)c)(■■) fail dot
  1919   |  6     (((((■|■)■|■)a)b)c)(■|■)fail dot
  1920   |  6     (((((■|■)■|■)a)b)c)(■){■}fail dot
  1921   |  6     (((((■■){■}■|■)a)b)c)■  fail dot
  1922   |  6     ((((((■|■)){■}■|■)a)b)c)■fail dot
  1923   |  6     ((((((■){■}){■}■|■)a)b)c)■fail dot
  1924   |  6     (((((■){■}(■■)|■)a)b)c)■fail dot
  1925   |  6     (((((■){■}(■|■)|■)a)b)c)■fail dot
  1926   |  6     (((((■){■}(■){■}|■)a)b)c)■fail dot
  1927   |  6     (((((■){■}■|■■)a)b)c)■  fail dot
  1928   |  6     (((((■){■}■|(■|■))a)b)c)■fail dot
  1929   |  6     (((((■){■}■|(■){■})a)b)c)■fail dot
  1930   |  6     (((((■){■}■|■)a)b)c)(■■)fail dot
  1931   |  6     (((((■){■}■|■)a)b)c)(■|■)fail dot
  1932   |  6     (((((■){■}■|■)a)b)c)(■){■}fail dot
  1933   |  6     ((((■■|■■)a)b)c)(■■)    fail dot
  1934   |  6     ((((■■|■■)a)b)c)(■|■)   fail dot
  1935   |  6     ((((■■|■■)a)b)c)(■){■}  fail dot
  1936   |  6     ((((■■|(■|■))a)b)c)(■■) fail dot
  1937   |  6     ((((■■|(■|■))a)b)c)(■|■)fail dot
  1938   |  6     ((((■■|(■|■))a)b)c)(■){■}fail dot
  1939   |  6     ((((■■|(■){■})a)b)c)(■■)fail dot
  1940   |  6     ((((■■|(■){■})a)b)c)(■|■)fail dot
  1941   |  6     ((((■■|(■){■})a)b)c)(■){■}  unsatisfiable SAT formula       
  1942   |  6     ((((■■|■)a)b)c)(■)      fail dot
  1943   |  6     ((((■■|■)a)b)c)((■■)■)  fail dot
  1944   |  6     ((((■■|■)a)b)c)((■|■)■) fail dot
  1945   |  6     ((((■■|■)a)b)c)((■){■}■)fail dot
  1946   |  6     ((((■■|■)a)b)c)(■■|■)   fail dot
  1947   |  6     ((((■■|■)a)b)c)((■|■)|■)fail dot
  1948   |  6     ((((■■|■)a)b)c)((■){■}|■)fail dot
  1949   |  6     ((((■■|■)a)b)c)(■■){■}  fail dot
  1950   |  6     ((((■■|■)a)b)c)((■|■)){■}fail dot
  1951   |  6     ((((■■|■)a)b)c)((■){■}){■}fail dot
  1952   |  6     ((((((■■)■|■)|■)a)b)c)■ fail dot
  1953   |  6     ((((((■|■)■|■)|■)a)b)c)■fail dot
  1954   |  6     ((((((■){■}■|■)|■)a)b)c)■fail dot
  1955   |  6     (((((■■|■■)|■)a)b)c)■   fail dot
  1956   |  6     (((((■■|(■|■))|■)a)b)c)■fail dot
  1957   |  6     (((((■■|(■){■})|■)a)b)c)■fail dot
  1958   |  6     (((((■■|■)|■■)a)b)c)■   fail dot
  1959   |  6     (((((■■|■)|(■|■))a)b)c)■fail dot
  1960   |  6     (((((■■|■)|(■){■})a)b)c)■fail dot
  1961   |  6     (((((■■|■)|■)a)b)c)(■■) fail dot
  1962   |  6     (((((■■|■)|■)a)b)c)(■|■)fail dot
  1963   |  6     (((((■■|■)|■)a)b)c)(■){■}fail dot
  1964   |  6     ((((((■■|■)|■)|■)a)b)c)■fail dot
  1965   |  6     (((((((■|■)|■)|■)|■)a)b)c)■fail dot
  1966   |  6     (((((((■){■}|■)|■)|■)a)b)c)■fail dot
  1967   |  6     ((((((■|■)|■■)|■)a)b)c)■fail dot
  1968   |  6     ((((((■|■)|(■|■))|■)a)b)c)■fail dot
  1969   |  6     ((((((■|■)|(■){■})|■)a)b)c)■fail dot
  1970   |  6     ((((((■|■)|■)|■■)a)b)c)■fail dot
  1971   |  6     ((((((■|■)|■)|(■|■))a)b)c)■fail dot
  1972   |  6     ((((((■|■)|■)|(■){■})a)b)c)■fail dot
  1973   |  6     ((((((■|■)|■)|■)a)b)c)(■■)fail dot
  1974   |  6     ((((((■|■)|■)|■)a)b)c)(■|■)fail dot
  1975   |  6     ((((((■|■)|■)|■)a)b)c)(■){■}fail dot
  1976   |  6     ((((((■■){■}|■)|■)a)b)c)■fail dot
  1977   |  6     (((((((■|■)){■}|■)|■)a)b)c)■fail dot
  1978   |  6     (((((((■){■}){■}|■)|■)a)b)c)■fail dot
  1979   |  6     ((((((■){■}|■■)|■)a)b)c)■fail dot
  1980   |  6     ((((((■){■}|(■|■))|■)a)b)c)■fail dot
  1981   |  6     ((((((■){■}|(■){■})|■)a)b)c)■fail dot
  1982   |  6     ((((((■){■}|■)|■■)a)b)c)■fail dot
  1983   |  6     ((((((■){■}|■)|(■|■))a)b)c)■fail dot
  1984   |  6     ((((((■){■}|■)|(■){■})a)b)c)■fail dot
  1985   |  6     ((((((■){■}|■)|■)a)b)c)(■■)fail dot
  1986   |  6     ((((((■){■}|■)|■)a)b)c)(■|■)fail dot
  1987   |  6     ((((((■){■}|■)|■)a)b)c)(■){■}  unsatisfiable SAT formula       
  1988   |  6     (((((■|■)|■■)a)b)c)(■■) fail dot
  1989   |  6     (((((■|■)|■■)a)b)c)(■|■)fail dot
  1990   |  6     (((((■|■)|■■)a)b)c)(■){■}fail dot
  1991   |  6     (((((■|■)|(■|■))a)b)c)(■■)fail dot
  1992   |  6     (((((■|■)|(■|■))a)b)c)(■|■)fail dot
  1993   |  6     (((((■|■)|(■|■))a)b)c)(■){■}fail dot
  1994   |  6     (((((■|■)|(■){■})a)b)c)(■■)fail dot
  1995   |  6     (((((■|■)|(■){■})a)b)c)(■|■)fail dot
  1996   |  6     (((((■|■)|(■){■})a)b)c)(■){■}  unsatisfiable SAT formula       
  1997   |  6     (((((■|■)|■)a)b)c)(■)   fail dot
  1998   |  6     (((((■|■)|■)a)b)c)((■■)■)fail dot
  1999   |  6     (((((■|■)|■)a)b)c)((■|■)■)fail dot
  2000   |  6     (((((■|■)|■)a)b)c)((■){■}■)fail dot
  2001   |  6     (((((■|■)|■)a)b)c)(■■|■)fail dot
  2002   |  6     (((((■|■)|■)a)b)c)((■|■)|■)fail dot
  2003   |  6     (((((■|■)|■)a)b)c)((■){■}|■)fail dot
  2004   |  6     (((((■|■)|■)a)b)c)(■■){■}fail dot
  2005   |  6     (((((■|■)|■)a)b)c)((■|■)){■}fail dot
  2006   |  6     (((((■|■)|■)a)b)c)((■){■}){■}fail dot
  2007   |  6     ((((((■■)■){■}|■)a)b)c)■fail dot
  2008   |  6     ((((((■|■)■){■}|■)a)b)c)■fail dot
  2009   |  6     ((((((■){■}■){■}|■)a)b)c)■fail dot
  2010   |  6     (((((■■){■}|■■)a)b)c)■  fail dot
  2011   |  6     (((((■■){■}|(■|■))a)b)c)■fail dot
  2012   |  6     (((((■■){■}|(■){■})a)b)c)■fail dot
  2013   |  6     (((((■■){■}|■)a)b)c)(■■)fail dot
  2014   |  6     (((((■■){■}|■)a)b)c)(■|■)fail dot
  2015   |  6     (((((■■){■}|■)a)b)c)(■){■}  unsatisfiable SAT formula       
  2016   |  6     ((((((■■|■)){■}|■)a)b)c)■fail dot
  2017   |  6     (((((((■|■)|■)){■}|■)a)b)c)■fail dot
  2018   |  6     (((((((■){■}|■)){■}|■)a)b)c)■fail dot
  2019   |  6     ((((((■|■)){■}|■■)a)b)c)■fail dot
  2020   |  6     ((((((■|■)){■}|(■|■))a)b)c)■fail dot
  2021   |  6     ((((((■|■)){■}|(■){■})a)b)c)■fail dot
  2022   |  6     ((((((■|■)){■}|■)a)b)c)(■■)fail dot
  2023   |  6     ((((((■|■)){■}|■)a)b)c)(■|■)fail dot
  2024   |  6     ((((((■|■)){■}|■)a)b)c)(■){■}  unsatisfiable SAT formula       
  2025   |  6     ((((((■■){■}){■}|■)a)b)c)■fail dot
  2026   |  6     (((((((■|■)){■}){■}|■)a)b)c)■fail dot
  2027   |  6     (((((((■){■}){■}){■}|■)a)b)c)■fail dot
  2028   |  6     ((((((■){■}){■}|■■)a)b)c)■fail dot
  2029   |  6     ((((((■){■}){■}|(■|■))a)b)c)■fail dot
  2030   |  6     ((((((■){■}){■}|(■){■})a)b)c)■fail dot
  2031   |  6     ((((((■){■}){■}|■)a)b)c)(■■)fail dot
  2032   |  6     ((((((■){■}){■}|■)a)b)c)(■|■)fail dot
  2033   |  6     ((((((■){■}){■}|■)a)b)c)(■){■}  unsatisfiable SAT formula       
  2034   |  6     (((((■){■}|■■)a)b)c)(■■)fail dot
  2035   |  6     (((((■){■}|■■)a)b)c)(■|■)fail dot
  2036   |  6     (((((■){■}|■■)a)b)c)(■){■}  unsatisfiable SAT formula       
  2037   |  6     (((((■){■}|(■|■))a)b)c)(■■)fail dot
  2038   |  6     (((((■){■}|(■|■))a)b)c)(■|■)fail dot
  2039   |  6     (((((■){■}|(■|■))a)b)c)(■){■}  unsatisfiable SAT formula       
  2040   |  6     (((((■){■}|(■){■})a)b)c)(■■)fail dot
  2041   |  6     (((((■){■}|(■){■})a)b)c)(■|■)fail dot
  2042   |  6     (((((■){■}|(■){■})a)b)c)(■){■}  unsatisfiable SAT formula       
  2043   |  6     (((((■){■}|■)a)b)c)(■)  fail dot
  2044   |  6     (((((■){■}|■)a)b)c)((■■)■)fail dot
  2045   |  6     (((((■){■}|■)a)b)c)((■|■)■)fail dot
  2046   |  6     (((((■){■}|■)a)b)c)((■){■}■)fail dot
  2047   |  6     (((((■){■}|■)a)b)c)(■■|■)fail dot
  2048   |  6     (((((■){■}|■)a)b)c)((■|■)|■)fail dot
  2049   |  6     (((((■){■}|■)a)b)c)((■){■}|■)  unsatisfiable SAT formula       
  2050   |  6     (((((■){■}|■)a)b)c)(■■){■}fail dot
  2051   |  6     (((((■){■}|■)a)b)c)((■|■)){■}fail solve
  2052   |  6     (((((■){■}|■)a)b)c)((■){■}){■}  unsatisfiable SAT formula       
  2053   |  6     ((((■|■)a)b)c)((■■))    fail dot
  2054   |  6     ((((■|■)a)b)c)((■|■))   fail dot
  2055   |  6     ((((■|■)a)b)c)((■){■})  fail dot
  2056   |  6     ((((■|■)a)b)c)((■)■)    fail dot
  2057   |  6     ((((■|■)a)b)c)(((■■)■)■)fail dot
  2058   |  6     ((((■|■)a)b)c)(((■|■)■)■)fail dot
  2059   |  6     ((((■|■)a)b)c)(((■){■}■)■)fail dot
  2060   |  6     ((((■|■)a)b)c)((■■)(■■))fail dot
  2061   |  6     ((((■|■)a)b)c)((■■)(■|■))fail dot
  2062   |  6     ((((■|■)a)b)c)((■■)(■){■})fail dot
  2063   |  6     ((((■|■)a)b)c)((■■|■)■) fail dot
  2064   |  6     ((((■|■)a)b)c)(((■|■)|■)■)fail dot
  2065   |  6     ((((■|■)a)b)c)(((■){■}|■)■)fail dot
  2066   |  6     ((((■|■)a)b)c)((■|■)(■■))fail dot
  2067   |  6     ((((■|■)a)b)c)((■|■)(■|■))fail dot
  2068   |  6     ((((■|■)a)b)c)((■|■)(■){■})fail dot
  2069   |  6     ((((■|■)a)b)c)((■■){■}■)fail dot
  2070   |  6     ((((■|■)a)b)c)(((■|■)){■}■)fail dot
  2071   |  6     ((((■|■)a)b)c)(((■){■}){■}■)fail dot
  2072   |  6     ((((■|■)a)b)c)((■){■}(■■))fail dot
  2073   |  6     ((((■|■)a)b)c)((■){■}(■|■))fail dot
  2074   |  6     ((((■|■)a)b)c)((■){■}(■){■})fail dot
  2075   |  6     ((((■|■)a)b)c)((■■)■|■) fail dot
  2076   |  6     ((((■|■)a)b)c)((■|■)■|■)fail dot
  2077   |  6     ((((■|■)a)b)c)((■){■}■|■)fail dot
  2078   |  6     ((((■|■)a)b)c)(■■|■■)   fail dot
  2079   |  6     ((((■|■)a)b)c)(■■|(■|■))fail dot
  2080   |  6     ((((■|■)a)b)c)(■■|(■){■})fail dot
  2081   |  6     ((((■|■)a)b)c)((■■|■)|■)fail dot
  2082   |  6     ((((■|■)a)b)c)(((■|■)|■)|■)fail dot
  2083   |  6     ((((■|■)a)b)c)(((■){■}|■)|■)fail dot
  2084   |  6     ((((■|■)a)b)c)((■|■)|■■)fail dot
  2085   |  6     ((((■|■)a)b)c)((■|■)|(■|■))fail dot
  2086   |  6     ((((■|■)a)b)c)((■|■)|(■){■})fail dot
  2087   |  6     ((((■|■)a)b)c)((■■){■}|■)fail dot
  2088   |  6     ((((■|■)a)b)c)(((■|■)){■}|■)fail dot
  2089   |  6     ((((■|■)a)b)c)(((■){■}){■}|■)fail dot
  2090   |  6     ((((■|■)a)b)c)((■){■}|■■)fail dot
  2091   |  6     ((((■|■)a)b)c)((■){■}|(■|■))fail dot
  2092   |  6     ((((■|■)a)b)c)((■){■}|(■){■})fail dot
  2093   |  6     ((((■|■)a)b)c)((■■)■){■}fail dot
  2094   |  6     ((((■|■)a)b)c)((■|■)■){■}fail dot
  2095   |  6     ((((■|■)a)b)c)((■){■}■){■}fail dot
  2096   |  6     ((((■|■)a)b)c)((■■|■)){■}fail dot
  2097   |  6     ((((■|■)a)b)c)(((■|■)|■)){■}fail dot
  2098   |  6     ((((■|■)a)b)c)(((■){■}|■)){■}fail dot
  2099   |  6     ((((■|■)a)b)c)((■■){■}){■}fail dot
  2100   |  6     ((((■|■)a)b)c)(((■|■)){■}){■}fail dot
  2101   |  6     ((((■|■)a)b)c)(((■){■}){■}){■}fail dot
  2102   |  6     (((((■)■){■}a)b)c)■     fail dot
  2103   |  6     ((((((■■)■)■){■}a)b)c)■ fail dot
  2104   |  6     ((((((■|■)■)■){■}a)b)c)■fail dot
  2105   |  6     ((((((■){■}■)■){■}a)b)c)■fail dot
  2106   |  6     (((((■■)(■■)){■}a)b)c)■ fail dot
  2107   |  6     (((((■■)(■|■)){■}a)b)c)■fail dot
  2108   |  6     (((((■■)(■){■}){■}a)b)c)■fail dot
  2109   |  6     (((((■■)■){■}a)b)c)(■■) fail dot
  2110   |  6     (((((■■)■){■}a)b)c)(■|■)fail dot
  2111   |  6     (((((■■)■){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2112   |  6     (((((■■|■)■){■}a)b)c)■  fail dot
  2113   |  6     ((((((■|■)|■)■){■}a)b)c)■fail dot
  2114   |  6     ((((((■){■}|■)■){■}a)b)c)■fail dot
  2115   |  6     (((((■|■)(■■)){■}a)b)c)■fail dot
  2116   |  6     (((((■|■)(■|■)){■}a)b)c)■fail dot
  2117   |  6     (((((■|■)(■){■}){■}a)b)c)■fail dot
  2118   |  6     (((((■|■)■){■}a)b)c)(■■)fail dot
  2119   |  6     (((((■|■)■){■}a)b)c)(■|■)fail dot
  2120   |  6     (((((■|■)■){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2121   |  6     (((((■■){■}■){■}a)b)c)■ fail dot
  2122   |  6     ((((((■|■)){■}■){■}a)b)c)■fail dot
  2123   |  6     ((((((■){■}){■}■){■}a)b)c)■fail dot
  2124   |  6     (((((■){■}(■■)){■}a)b)c)■fail dot
  2125   |  6     (((((■){■}(■|■)){■}a)b)c)■fail dot
  2126   |  6     (((((■){■}(■){■}){■}a)b)c)■fail dot
  2127   |  6     (((((■){■}■){■}a)b)c)(■■)fail dot
  2128   |  6     (((((■){■}■){■}a)b)c)(■|■)fail dot
  2129   |  6     (((((■){■}■){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2130   |  6     ((((■■){■}a)b)c)(■)     fail dot
  2131   |  6     ((((■■){■}a)b)c)((■■)■) fail dot
  2132   |  6     ((((■■){■}a)b)c)((■|■)■)fail dot
  2133   |  6     ((((■■){■}a)b)c)((■){■}■)fail dot
  2134   |  6     ((((■■){■}a)b)c)(■■|■)  fail dot
  2135   |  6     ((((■■){■}a)b)c)((■|■)|■)fail dot
  2136   |  6     ((((■■){■}a)b)c)((■){■}|■)  unsatisfiable SAT formula       
  2137   |  6     ((((■■){■}a)b)c)(■■){■} fail dot
  2138   |  6     ((((■■){■}a)b)c)((■|■)){■}fail solve
  2139   |  6     ((((■■){■}a)b)c)((■){■}){■}  unsatisfiable SAT formula       
  2140   |  6     ((((((■■)■|■)){■}a)b)c)■fail dot
  2141   |  6     ((((((■|■)■|■)){■}a)b)c)■fail dot
  2142   |  6     ((((((■){■}■|■)){■}a)b)c)■fail dot
  2143   |  6     (((((■■|■■)){■}a)b)c)■  fail dot
  2144   |  6     (((((■■|(■|■))){■}a)b)c)■fail dot
  2145   |  6     (((((■■|(■){■})){■}a)b)c)■fail dot
  2146   |  6     (((((■■|■)){■}a)b)c)(■■)fail dot
  2147   |  6     (((((■■|■)){■}a)b)c)(■|■)fail dot
  2148   |  6     (((((■■|■)){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2149   |  6     ((((((■■|■)|■)){■}a)b)c)■fail dot
  2150   |  6     (((((((■|■)|■)|■)){■}a)b)c)■fail dot
  2151   |  6     (((((((■){■}|■)|■)){■}a)b)c)■fail dot
  2152   |  6     ((((((■|■)|■■)){■}a)b)c)■fail dot
  2153   |  6     ((((((■|■)|(■|■))){■}a)b)c)■fail dot
  2154   |  6     ((((((■|■)|(■){■})){■}a)b)c)■fail dot
  2155   |  6     ((((((■|■)|■)){■}a)b)c)(■■)fail dot
  2156   |  6     ((((((■|■)|■)){■}a)b)c)(■|■)fail dot
  2157   |  6     ((((((■|■)|■)){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2158   |  6     ((((((■■){■}|■)){■}a)b)c)■fail dot
  2159   |  6     (((((((■|■)){■}|■)){■}a)b)c)■fail dot
  2160   |  6     (((((((■){■}){■}|■)){■}a)b)c)■fail dot
  2161   |  6     ((((((■){■}|■■)){■}a)b)c)■fail dot
  2162   |  6     ((((((■){■}|(■|■))){■}a)b)c)■fail dot
  2163   |  6     ((((((■){■}|(■){■})){■}a)b)c)■fail dot
  2164   |  6     ((((((■){■}|■)){■}a)b)c)(■■)fail dot
  2165   |  6     ((((((■){■}|■)){■}a)b)c)(■|■)fail dot
  2166   |  6     ((((((■){■}|■)){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2167   |  6     (((((■|■)){■}a)b)c)(■)  fail dot
  2168   |  6     (((((■|■)){■}a)b)c)((■■)■)fail dot
  2169   |  6     (((((■|■)){■}a)b)c)((■|■)■)fail dot
  2170   |  6     (((((■|■)){■}a)b)c)((■){■}■)fail dot
  2171   |  6     (((((■|■)){■}a)b)c)(■■|■)fail dot
  2172   |  6     (((((■|■)){■}a)b)c)((■|■)|■)fail dot
  2173   |  6     (((((■|■)){■}a)b)c)((■){■}|■)  unsatisfiable SAT formula       
  2174   |  6     (((((■|■)){■}a)b)c)(■■){■}fail dot
  2175   |  6     (((((■|■)){■}a)b)c)((■|■)){■}fail solve
  2176   |  6     (((((■|■)){■}a)b)c)((■){■}){■}  unsatisfiable SAT formula       
  2177   |  6     ((((((■■)■){■}){■}a)b)c)■fail dot
  2178   |  6     ((((((■|■)■){■}){■}a)b)c)■fail dot
  2179   |  6     ((((((■){■}■){■}){■}a)b)c)■fail dot
  2180   |  6     (((((■■){■}){■}a)b)c)(■■)fail dot
  2181   |  6     (((((■■){■}){■}a)b)c)(■|■)fail dot
  2182   |  6     (((((■■){■}){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2183   |  6     ((((((■■|■)){■}){■}a)b)c)■fail dot
  2184   |  6     (((((((■|■)|■)){■}){■}a)b)c)■fail dot
  2185   |  6     (((((((■){■}|■)){■}){■}a)b)c)■fail dot
  2186   |  6     ((((((■|■)){■}){■}a)b)c)(■■)fail dot
  2187   |  6     ((((((■|■)){■}){■}a)b)c)(■|■)fail dot
  2188   |  6     ((((((■|■)){■}){■}a)b)c)(■){■}  unsatisfiable SAT formula       
  2189   |  6     ((((((■■){■}){■}){■}a)b)c)■fail dot
  2190   |  6     (((((((■|■)){■}){■}){■}a)b)c)■fail dot
  2191   |  6     (((((((■){■}){■}){■}){■}a)b)c)■fail dot
  2192   |  6     ((((((■){■}){■}){■}a)b)c)(■■)fail dot
  2193   |  6     ((((((■){■}){■}){■}a)b)c)(■|■)fail dot
  2194   |  6     ((((((■){■}){■}){■}a)b)c)(■){■}
10.238394975662231
timeout