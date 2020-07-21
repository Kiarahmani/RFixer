
Given the regular expression:

  (1)+(2\-3)*(4/5)

That that should match the strings:

  ✓ (0:3)    0-9
  ✓ (3:5)    +-
  ✓ (5:7)    +)
  ✓ (7:9)    */

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+((2\-)3)*)((4/)5)  fail dotstar or empty
  2      |  1     ((1){■}((2\-)3)*)((4/)5)fail dotstar or empty
  3      |  1     ((1)+((■\-)3)*)((4/)5)  fail dotstar or empty
  4      |  1     ((1)+((2■)3)*)((4/)5)   fail dotstar or empty
  5      |  1     ((1)+((2\-)■)*)((4/)5)  fail dotstar or empty
  6      |  1     ((1)+((2\-)3){■})((4/)5)fail dotstar or empty
  7      |  1     ((1)+((2\-)3)*)((■/)5)  fail dotstar or empty
  8      |  1     ((1)+((2\-)3)*)((4■)5)  fail dotstar or empty
  9      |  1     ((1)+((2\-)3)*)((4/)■)  fail dotstar or empty
  10     |  2     ((■){■}((2\-)3)*)((4/)5)fail dotstar or empty
  11     |  2     ((■)+((■\-)3)*)((4/)5)  fail dotstar or empty
  12     |  2     ((■)+((2■)3)*)((4/)5)   fail dotstar or empty
  13     |  2     ((■)+((2\-)■)*)((4/)5)  fail dotstar or empty
  14     |  2     ((■)+((2\-)3){■})((4/)5)fail dotstar or empty
  15     |  2     ((■)+((2\-)3)*)((■/)5)  fail dotstar or empty
  16     |  2     ((■)+((2\-)3)*)((4■)5)  fail dotstar or empty
  17     |  2     ((■)+((2\-)3)*)((4/)■)  fail dotstar or empty
  18     |  2     ((1){■}((■\-)3)*)((4/)5)fail dotstar or empty
  19     |  2     ((1){■}((2■)3)*)((4/)5) fail dotstar or empty
  20     |  2     ((1){■}((2\-)■)*)((4/)5)fail dotstar or empty
  21     |  2     ((1){■}((2\-)3){■})((4/)5)fail dotstar or empty
  22     |  2     ((1){■}((2\-)3)*)((■/)5)fail dotstar or empty
  23     |  2     ((1){■}((2\-)3)*)((4■)5)fail dotstar or empty
  24     |  2     ((1){■}((2\-)3)*)((4/)■)fail dotstar or empty
  25     |  2     (■((2\-)3)*)((4/)5)     fail dotstar or empty
  26     |  2     ((1)+((■■)3)*)((4/)5)   fail dotstar or empty
  27     |  2     ((1)+((■\-)■)*)((4/)5)  fail dotstar or empty
  28     |  2     ((1)+((■\-)3){■})((4/)5)fail dotstar or empty
  29     |  2     ((1)+((■\-)3)*)((■/)5)  fail dotstar or empty
  30     |  2     ((1)+((■\-)3)*)((4■)5)  fail dotstar or empty
  31     |  2     ((1)+((■\-)3)*)((4/)■)  fail dotstar or empty
  32     |  2     ((1)+((2■)■)*)((4/)5)   fail dotstar or empty
  33     |  2     ((1)+((2■)3){■})((4/)5) fail dotstar or empty
  34     |  2     ((1)+((2■)3)*)((■/)5)   fail dotstar or empty
  35     |  2     ((1)+((2■)3)*)((4■)5)   fail dotstar or empty
  36     |  2     ((1)+((2■)3)*)((4/)■)   fail dotstar or empty
  37     |  2     ((1)+((2\-)■){■})((4/)5)fail dotstar or empty
  38     |  2     ((1)+((2\-)■)*)((■/)5)  fail dotstar or empty
  39     |  2     ((1)+((2\-)■)*)((4■)5)  fail dotstar or empty
  40     |  2     ((1)+((2\-)■)*)((4/)■)  fail dotstar or empty
  41     |  2     ((1)+((2\-)3){■})((■/)5)fail dotstar or empty
  42     |  2     ((1)+((2\-)3){■})((4■)5)fail dotstar or empty
  43     |  2     ((1)+((2\-)3){■})((4/)■)fail dotstar or empty
  44     |  2     ((1)+■)((4/)5)          fail dotstar or empty
  45     |  2     ((1)+((2\-)3)*)((■■)5)  fail dotstar or empty
  46     |  2     ((1)+((2\-)3)*)((■/)■)  fail dotstar or empty
  47     |  2     ((1)+((2\-)3)*)((4■)■)  fail dotstar or empty
  48     |  3     ((■){■}((■\-)3)*)((4/)5)fail dotstar or empty
  49     |  3     ((■){■}((2■)3)*)((4/)5) fail dotstar or empty
  50     |  3     ((■){■}((2\-)■)*)((4/)5)fail dotstar or empty
  51     |  3     ((■){■}((2\-)3){■})((4/)5)fail dotstar or empty
  52     |  3     ((■){■}((2\-)3)*)((■/)5)fail dotstar or empty
  53     |  3     ((■){■}((2\-)3)*)((4■)5)fail dotstar or empty
  54     |  3     ((■){■}((2\-)3)*)((4/)■)fail dotstar or empty
  55     |  3     ((■)+((■■)3)*)((4/)5)   fail dotstar or empty
  56     |  3     ((■)+((■\-)■)*)((4/)5)  fail dotstar or empty
  57     |  3     ((■)+((■\-)3){■})((4/)5)fail dotstar or empty
  58     |  3     ((■)+((■\-)3)*)((■/)5)  fail dotstar or empty
  59     |  3     ((■)+((■\-)3)*)((4■)5)  fail dotstar or empty
  60     |  3     ((■)+((■\-)3)*)((4/)■)  fail dotstar or empty
  61     |  3     ((■)+((2■)■)*)((4/)5)   fail dotstar or empty
  62     |  3     ((■)+((2■)3){■})((4/)5) fail dotstar or empty
  63     |  3     ((■)+((2■)3)*)((■/)5)   fail dotstar or empty
  64     |  3     ((■)+((2■)3)*)((4■)5)   fail dotstar or empty
  65     |  3     ((■)+((2■)3)*)((4/)■)   fail dotstar or empty
  66     |  3     ((■)+((2\-)■){■})((4/)5)fail dotstar or empty
  67     |  3     ((■)+((2\-)■)*)((■/)5)  fail dotstar or empty
  68     |  3     ((■)+((2\-)■)*)((4■)5)  fail dotstar or empty
  69     |  3     ((■)+((2\-)■)*)((4/)■)  fail dotstar or empty
  70     |  3     ((■)+((2\-)3){■})((■/)5)fail dotstar or empty
  71     |  3     ((■)+((2\-)3){■})((4■)5)fail dotstar or empty
  72     |  3     ((■)+((2\-)3){■})((4/)■)fail dotstar or empty
  73     |  3     ((■)+■)((4/)5)          fail dotstar or empty
  74     |  3     ((■)+((2\-)3)*)((■■)5)  fail dotstar or empty
  75     |  3     ((■)+((2\-)3)*)((■/)■)  fail dotstar or empty
  76     |  3     ((■)+((2\-)3)*)((4■)■)  fail dotstar or empty
  77     |  3     ((1){■}((■■)3)*)((4/)5) fail dotstar or empty
  78     |  3     ((1){■}((■\-)■)*)((4/)5)fail dotstar or empty
  79     |  3     ((1){■}((■\-)3){■})((4/)5)fail dotstar or empty
  80     |  3     ((1){■}((■\-)3)*)((■/)5)fail dotstar or empty
  81     |  3     ((1){■}((■\-)3)*)((4■)5)fail dotstar or empty
  82     |  3     ((1){■}((■\-)3)*)((4/)■)fail dotstar or empty
  83     |  3     (■((■\-)3)*)((4/)5)     fail dotstar or empty
  84     |  3     ((1){■}((2■)■)*)((4/)5) fail dotstar or empty
  85     |  3     ((1){■}((2■)3){■})((4/)5)fail dotstar or empty
  86     |  3     ((1){■}((2■)3)*)((■/)5) fail dotstar or empty
  87     |  3     ((1){■}((2■)3)*)((4■)5) fail dotstar or empty
  88     |  3     ((1){■}((2■)3)*)((4/)■) fail dotstar or empty
  89     |  3     (■((2■)3)*)((4/)5)      fail dotstar or empty
  90     |  3     ((1){■}((2\-)■){■})((4/)5)fail dotstar or empty
  91     |  3     ((1){■}((2\-)■)*)((■/)5)fail dotstar or empty
  92     |  3     ((1){■}((2\-)■)*)((4■)5)fail dotstar or empty
  93     |  3     ((1){■}((2\-)■)*)((4/)■)fail dotstar or empty
  94     |  3     (■((2\-)■)*)((4/)5)     fail dotstar or empty
  95     |  3     ((1){■}((2\-)3){■})((■/)5)fail dotstar or empty
  96     |  3     ((1){■}((2\-)3){■})((4■)5)fail dotstar or empty
  97     |  3     ((1){■}((2\-)3){■})((4/)■)fail dotstar or empty
  98     |  3     (■((2\-)3){■})((4/)5)   fail dotstar or empty
  99     |  3     ((1){■}■)((4/)5)        fail dotstar or empty
  100    |  3     ((1){■}((2\-)3)*)((■■)5)fail dotstar or empty
  101    |  3     ((1){■}((2\-)3)*)((■/)■)fail dotstar or empty
  102    |  3     (■((2\-)3)*)((■/)5)     fail dotstar or empty
  103    |  3     ((1){■}((2\-)3)*)((4■)■)fail dotstar or empty
  104    |  3     (■((2\-)3)*)((4■)5)     fail dotstar or empty
  105    |  3     (■((2\-)3)*)((4/)■)     fail dotstar or empty
  106    |  3     ((1)+((■■)■)*)((4/)5)   fail dotstar or empty
  107    |  3     ((1)+((■■)3){■})((4/)5) fail dotstar or empty
  108    |  3     ((1)+((■■)3)*)((■/)5)   fail dotstar or empty
  109    |  3     ((1)+((■■)3)*)((4■)5)   fail dotstar or empty
  110    |  3     ((1)+((■■)3)*)((4/)■)   fail dotstar or empty
  111    |  3     ((1)+((■)3)*)((4/)5)    fail dotstar or empty
  112    |  3     ((1)+((■\-)■){■})((4/)5)fail dotstar or empty
  113    |  3     ((1)+((■\-)■)*)((■/)5)  fail dotstar or empty
  114    |  3     ((1)+((■\-)■)*)((4■)5)  fail dotstar or empty
  115    |  3     ((1)+((■\-)■)*)((4/)■)  fail dotstar or empty
  116    |  3     ((1)+((■\-)3){■})((■/)5)fail dotstar or empty
  117    |  3     ((1)+((■\-)3){■})((4■)5)fail dotstar or empty
  118    |  3     ((1)+((■\-)3){■})((4/)■)fail dotstar or empty
  119    |  3     ((1)+((■\-)3)*)((■■)5)  fail dotstar or empty
  120    |  3     ((1)+((■\-)3)*)((■/)■)  fail dotstar or empty
  121    |  3     ((1)+((■\-)3)*)((4■)■)  fail dotstar or empty
  122    |  3     ((1)+((2■)■){■})((4/)5) fail dotstar or empty
  123    |  3     ((1)+((2■)■)*)((■/)5)   fail dotstar or empty
  124    |  3     ((1)+((2■)■)*)((4■)5)   fail dotstar or empty
  125    |  3     ((1)+((2■)■)*)((4/)■)   fail dotstar or empty
  126    |  3     ((1)+((2■)3){■})((■/)5) fail dotstar or empty
  127    |  3     ((1)+((2■)3){■})((4■)5) fail dotstar or empty
  128    |  3     ((1)+((2■)3){■})((4/)■) fail dotstar or empty
  129    |  3     ((1)+((2■)3)*)((■■)5)   fail dotstar or empty
  130    |  3     ((1)+((2■)3)*)((■/)■)   fail dotstar or empty
  131    |  3     ((1)+((2■)3)*)((4■)■)   fail dotstar or empty
  132    |  3     ((1)+((2\-)■){■})((■/)5)fail dotstar or empty
  133    |  3     ((1)+((2\-)■){■})((4■)5)fail dotstar or empty
  134    |  3     ((1)+((2\-)■){■})((4/)■)fail dotstar or empty
  135    |  3     ((1)+((2\-)■)*)((■■)5)  fail dotstar or empty
  136    |  3     ((1)+((2\-)■)*)((■/)■)  fail dotstar or empty
  137    |  3     ((1)+((2\-)■)*)((4■)■)  fail dotstar or empty
  138    |  3     ((1)+((2\-)3){■})((■■)5)fail dotstar or empty
  139    |  3     ((1)+((2\-)3){■})((■/)■)fail dotstar or empty
  140    |  3     ((1)+■)((■/)5)          fail dotstar or empty
  141    |  3     ((1)+((2\-)3){■})((4■)■)fail dotstar or empty
  142    |  3     ((1)+■)((4■)5)          fail dotstar or empty
  143    |  3     ((1)+■)((4/)■)          fail dotstar or empty
  144    |  3     ((1)+((2\-)3)*)((■■)■)  fail dotstar or empty
  145    |  3     ((1)+((2\-)3)*)((■)5)   fail dotstar or empty
  146    |  4     ((■){■}((■■)3)*)((4/)5) fail dotstar or empty
  147    |  4     ((■){■}((■\-)■)*)((4/)5)fail dotstar or empty
  148    |  4     ((■){■}((■\-)3){■})((4/)5)fail dotstar or empty
  149    |  4     ((■){■}((■\-)3)*)((■/)5)fail dotstar or empty
  150    |  4     ((■){■}((■\-)3)*)((4■)5)fail dotstar or empty
  151    |  4     ((■){■}((■\-)3)*)((4/)■)fail dotstar or empty
  152    |  4     ((■){■}((2■)■)*)((4/)5) fail dotstar or empty
  153    |  4     ((■){■}((2■)3){■})((4/)5)fail dotstar or empty
  154    |  4     ((■){■}((2■)3)*)((■/)5) fail dotstar or empty
  155    |  4     ((■){■}((2■)3)*)((4■)5) fail dotstar or empty
  156    |  4     ((■){■}((2■)3)*)((4/)■) fail dotstar or empty
  157    |  4     ((■){■}((2\-)■){■})((4/)5)fail dotstar or empty
  158    |  4     ((■){■}((2\-)■)*)((■/)5)fail dotstar or empty
  159    |  4     ((■){■}((2\-)■)*)((4■)5)fail dotstar or empty
  160    |  4     ((■){■}((2\-)■)*)((4/)■)fail dotstar or empty
  161    |  4     ((■){■}((2\-)3){■})((■/)5)fail dotstar or empty
  162    |  4     ((■){■}((2\-)3){■})((4■)5)fail dotstar or empty
  163    |  4     ((■){■}((2\-)3){■})((4/)■)fail dotstar or empty
  164    |  4     ((■){■}■)((4/)5)        fail dotstar or empty
  165    |  4     ((■){■}((2\-)3)*)((■■)5)fail dotstar or empty
  166    |  4     ((■){■}((2\-)3)*)((■/)■)fail dotstar or empty
  167    |  4     ((■){■}((2\-)3)*)((4■)■)fail dotstar or empty
  168    |  4     ((■)+((■■)■)*)((4/)5)   fail dotstar or empty
  169    |  4     ((■)+((■■)3){■})((4/)5) fail dotstar or empty
  170    |  4     ((■)+((■■)3)*)((■/)5)   fail dotstar or empty
  171    |  4     ((■)+((■■)3)*)((4■)5)   fail dotstar or empty
  172    |  4     ((■)+((■■)3)*)((4/)■)   fail dotstar or empty
  173    |  4     ((■)+((■)3)*)((4/)5)    fail dotstar or empty
  174    |  4     ((■)+((■\-)■){■})((4/)5)fail dotstar or empty
  175    |  4     ((■)+((■\-)■)*)((■/)5)  fail dotstar or empty
  176    |  4     ((■)+((■\-)■)*)((4■)5)  fail dotstar or empty
  177    |  4     ((■)+((■\-)■)*)((4/)■)  fail dotstar or empty
  178    |  4     ((■)+((■\-)3){■})((■/)5)fail dotstar or empty
  179    |  4     ((■)+((■\-)3){■})((4■)5)fail dotstar or empty
  180    |  4     ((■)+((■\-)3){■})((4/)■)fail dotstar or empty
  181    |  4     ((■)+((■\-)3)*)((■■)5)  fail dotstar or empty
  182    |  4     ((■)+((■\-)3)*)((■/)■)  fail dotstar or empty
  183    |  4     ((■)+((■\-)3)*)((4■)■)  fail dotstar or empty
  184    |  4     ((■)+((2■)■){■})((4/)5) fail dotstar or empty
  185    |  4     ((■)+((2■)■)*)((■/)5)   fail dotstar or empty
  186    |  4     ((■)+((2■)■)*)((4■)5)   fail dotstar or empty
  187    |  4     ((■)+((2■)■)*)((4/)■)   fail dotstar or empty
  188    |  4     ((■)+((2■)3){■})((■/)5) fail dotstar or empty
  189    |  4     ((■)+((2■)3){■})((4■)5) fail dotstar or empty
  190    |  4     ((■)+((2■)3){■})((4/)■) fail dotstar or empty
  191    |  4     ((■)+((2■)3)*)((■■)5)   fail dotstar or empty
  192    |  4     ((■)+((2■)3)*)((■/)■)   fail dotstar or empty
  193    |  4     ((■)+((2■)3)*)((4■)■)   fail dotstar or empty
  194    |  4     ((■)+((2\-)■){■})((■/)5)fail dotstar or empty
  195    |  4     ((■)+((2\-)■){■})((4■)5)fail dotstar or empty
  196    |  4     ((■)+((2\-)■){■})((4/)■)fail dotstar or empty
  197    |  4     ((■)+((2\-)■)*)((■■)5)  fail dotstar or empty
  198    |  4     ((■)+((2\-)■)*)((■/)■)  fail dotstar or empty
  199    |  4     ((■)+((2\-)■)*)((4■)■)  fail dotstar or empty
  200    |  4     ((■)+((2\-)3){■})((■■)5)fail dotstar or empty
  201    |  4     ((■)+((2\-)3){■})((■/)■)fail dotstar or empty
  202    |  4     ((■)+■)((■/)5)          fail dotstar or empty
  203    |  4     ((■)+((2\-)3){■})((4■)■)fail dotstar or empty
  204    |  4     ((■)+■)((4■)5)          fail dotstar or empty
  205    |  4     ((■)+■)((4/)■)          fail dotstar or empty
  206    |  4     ((■)+((2\-)3)*)((■■)■)  fail dot
  207    |  4     ((■)+((2\-)3)*)((■)5)   fail dotstar or empty
  208    |  4     ((1){■}((■■)■)*)((4/)5) fail dotstar or empty
  209    |  4     ((1){■}((■■)3){■})((4/)5)fail dotstar or empty
  210    |  4     ((1){■}((■■)3)*)((■/)5) fail dotstar or empty
  211    |  4     ((1){■}((■■)3)*)((4■)5) fail dotstar or empty
  212    |  4     ((1){■}((■■)3)*)((4/)■) fail dotstar or empty
  213    |  4     (■((■■)3)*)((4/)5)      fail dotstar or empty
  214    |  4     ((1){■}((■)3)*)((4/)5)  fail dotstar or empty
  215    |  4     ((1){■}((■\-)■){■})((4/)5)fail dotstar or empty
  216    |  4     ((1){■}((■\-)■)*)((■/)5)fail dotstar or empty
  217    |  4     ((1){■}((■\-)■)*)((4■)5)fail dotstar or empty
  218    |  4     ((1){■}((■\-)■)*)((4/)■)fail dotstar or empty
  219    |  4     (■((■\-)■)*)((4/)5)     fail dotstar or empty
  220    |  4     ((1){■}((■\-)3){■})((■/)5)fail dotstar or empty
  221    |  4     ((1){■}((■\-)3){■})((4■)5)fail dotstar or empty
  222    |  4     ((1){■}((■\-)3){■})((4/)■)fail dotstar or empty
  223    |  4     (■((■\-)3){■})((4/)5)   fail dotstar or empty
  224    |  4     ((1){■}((■\-)3)*)((■■)5)fail dotstar or empty
  225    |  4     ((1){■}((■\-)3)*)((■/)■)fail dotstar or empty
  226    |  4     (■((■\-)3)*)((■/)5)     fail dotstar or empty
  227    |  4     ((1){■}((■\-)3)*)((4■)■)fail dotstar or empty
  228    |  4     (■((■\-)3)*)((4■)5)     fail dotstar or empty
  229    |  4     (■((■\-)3)*)((4/)■)     fail dotstar or empty
  230    |  4     ((1){■}((2■)■){■})((4/)5)fail dotstar or empty
  231    |  4     ((1){■}((2■)■)*)((■/)5) fail dotstar or empty
  232    |  4     ((1){■}((2■)■)*)((4■)5) fail dotstar or empty
  233    |  4     ((1){■}((2■)■)*)((4/)■) fail dotstar or empty
  234    |  4     (■((2■)■)*)((4/)5)      fail dotstar or empty
  235    |  4     ((1){■}((2■)3){■})((■/)5)fail dotstar or empty
  236    |  4     ((1){■}((2■)3){■})((4■)5)fail dotstar or empty
  237    |  4     ((1){■}((2■)3){■})((4/)■)fail dotstar or empty
  238    |  4     (■((2■)3){■})((4/)5)    fail dotstar or empty
  239    |  4     ((1){■}((2■)3)*)((■■)5) fail dotstar or empty
  240    |  4     ((1){■}((2■)3)*)((■/)■) fail dotstar or empty
  241    |  4     (■((2■)3)*)((■/)5)      fail dotstar or empty
  242    |  4     ((1){■}((2■)3)*)((4■)■) fail dotstar or empty
  243    |  4     (■((2■)3)*)((4■)5)      fail dotstar or empty
  244    |  4     (■((2■)3)*)((4/)■)      fail dotstar or empty
  245    |  4     ((1){■}((2\-)■){■})((■/)5)fail dotstar or empty
  246    |  4     ((1){■}((2\-)■){■})((4■)5)fail dotstar or empty
  247    |  4     ((1){■}((2\-)■){■})((4/)■)fail dotstar or empty
  248    |  4     (■((2\-)■){■})((4/)5)   fail dotstar or empty
  249    |  4     ((1){■}((2\-)■)*)((■■)5)fail dotstar or empty
  250    |  4     ((1){■}((2\-)■)*)((■/)■)fail dotstar or empty
  251    |  4     (■((2\-)■)*)((■/)5)     fail dotstar or empty
  252    |  4     ((1){■}((2\-)■)*)((4■)■)fail dotstar or empty
  253    |  4     (■((2\-)■)*)((4■)5)     fail dotstar or empty
  254    |  4     (■((2\-)■)*)((4/)■)     fail dotstar or empty
  255    |  4     ((1){■}((2\-)3){■})((■■)5)fail dotstar or empty
  256    |  4     ((1){■}((2\-)3){■})((■/)■)fail dotstar or empty
  257    |  4     (■((2\-)3){■})((■/)5)   fail dotstar or empty
  258    |  4     ((1){■}■)((■/)5)        fail dotstar or empty
  259    |  4     ((1){■}((2\-)3){■})((4■)■)fail dotstar or empty
  260    |  4     (■((2\-)3){■})((4■)5)   fail dotstar or empty
  261    |  4     ((1){■}■)((4■)5)        fail dotstar or empty
  262    |  4     (■((2\-)3){■})((4/)■)   fail dotstar or empty
  263    |  4     ((1){■}■)((4/)■)        fail dotstar or empty
  264    |  4     (■■)((4/)5)             fail dotstar or empty
  265    |  4     ((1){■}((2\-)3)*)((■■)■)fail dot
  266    |  4     (■((2\-)3)*)((■■)5)     fail dotstar or empty
  267    |  4     ((1){■}((2\-)3)*)((■)5) fail dotstar or empty
  268    |  4     (■((2\-)3)*)((■/)■)     fail dotstar or empty
  269    |  4     (■((2\-)3)*)((4■)■)     fail dotstar or empty
  270    |  4     ((1)+((■■)■){■})((4/)5) fail dotstar or empty
  271    |  4     ((1)+((■■)■)*)((■/)5)   fail dotstar or empty
  272    |  4     ((1)+((■■)■)*)((4■)5)   fail dotstar or empty
  273    |  4     ((1)+((■■)■)*)((4/)■)   fail dotstar or empty
  274    |  4     ((1)+((■)■)*)((4/)5)    fail dotstar or empty
  275    |  4     ((1)+((■■)3){■})((■/)5) fail dotstar or empty
  276    |  4     ((1)+((■■)3){■})((4■)5) fail dotstar or empty
  277    |  4     ((1)+((■■)3){■})((4/)■) fail dotstar or empty
  278    |  4     ((1)+((■)3){■})((4/)5)  fail dotstar or empty
  279    |  4     ((1)+((■■)3)*)((■■)5)   fail dotstar or empty
  280    |  4     ((1)+((■■)3)*)((■/)■)   fail dotstar or empty
  281    |  4     ((1)+((■)3)*)((■/)5)    fail dotstar or empty
  282    |  4     ((1)+((■■)3)*)((4■)■)   fail dotstar or empty
  283    |  4     ((1)+((■)3)*)((4■)5)    fail dotstar or empty
  284    |  4     ((1)+((■)3)*)((4/)■)    fail dotstar or empty
  285    |  4     ((1)+(■3)*)((4/)5)      fail dotstar or empty
  286    |  4     ((1)+((■\-)■){■})((■/)5)fail dotstar or empty
  287    |  4     ((1)+((■\-)■){■})((4■)5)fail dotstar or empty
  288    |  4     ((1)+((■\-)■){■})((4/)■)fail dotstar or empty
  289    |  4     ((1)+((■\-)■)*)((■■)5)  fail dotstar or empty
  290    |  4     ((1)+((■\-)■)*)((■/)■)  fail dotstar or empty
  291    |  4     ((1)+((■\-)■)*)((4■)■)  fail dotstar or empty
  292    |  4     ((1)+((■\-)3){■})((■■)5)fail dotstar or empty
  293    |  4     ((1)+((■\-)3){■})((■/)■)fail dotstar or empty
  294    |  4     ((1)+((■\-)3){■})((4■)■)fail dotstar or empty
  295    |  4     ((1)+((■\-)3)*)((■■)■)  fail dotstar or empty
  296    |  4     ((1)+((■\-)3)*)((■)5)   fail dotstar or empty
  297    |  4     ((1)+((2■)■){■})((■/)5) fail dotstar or empty
  298    |  4     ((1)+((2■)■){■})((4■)5) fail dotstar or empty
  299    |  4     ((1)+((2■)■){■})((4/)■) fail dotstar or empty
  300    |  4     ((1)+((2■)■)*)((■■)5)   fail dotstar or empty
  301    |  4     ((1)+((2■)■)*)((■/)■)   fail dotstar or empty
  302    |  4     ((1)+((2■)■)*)((4■)■)   fail dotstar or empty
  303    |  4     ((1)+((2■)3){■})((■■)5) fail dotstar or empty
  304    |  4     ((1)+((2■)3){■})((■/)■) fail dotstar or empty
  305    |  4     ((1)+((2■)3){■})((4■)■) fail dotstar or empty
  306    |  4     ((1)+((2■)3)*)((■■)■)   fail dotstar or empty
  307    |  4     ((1)+((2■)3)*)((■)5)    fail dotstar or empty
  308    |  4     ((1)+((2\-)■){■})((■■)5)fail dotstar or empty
  309    |  4     ((1)+((2\-)■){■})((■/)■)fail dotstar or empty
  310    |  4     ((1)+((2\-)■){■})((4■)■)fail dotstar or empty
  311    |  4     ((1)+((2\-)■)*)((■■)■)  fail dotstar or empty
  312    |  4     ((1)+((2\-)■)*)((■)5)   fail dotstar or empty
  313    |  4     ((1)+((2\-)3){■})((■■)■)fail dotstar or empty
  314    |  4     ((1)+■)((■■)5)          fail dotstar or empty
  315    |  4     ((1)+((2\-)3){■})((■)5) fail dotstar or empty
  316    |  4     ((1)+■)((■/)■)          fail dotstar or empty
  317    |  4     ((1)+■)((4■)■)          fail dotstar or empty
  318    |  4     ((1)+((2\-)3)*)((■)■)   fail dotstar or empty
  319    |  4     ((1)+((2\-)3)*)(■5)     fail dotstar or empty
  320    |  5     ((■){■}((■■)■)*)((4/)5) fail dotstar or empty
  321    |  5     ((■){■}((■■)3){■})((4/)5)fail dotstar or empty
  322    |  5     ((■){■}((■■)3)*)((■/)5) fail dotstar or empty
  323    |  5     ((■){■}((■■)3)*)((4■)5) fail dotstar or empty
  324    |  5     ((■){■}((■■)3)*)((4/)■) fail dotstar or empty
  325    |  5     ((■){■}((■)3)*)((4/)5)  fail dotstar or empty
  326    |  5     ((■){■}((■\-)■){■})((4/)5)fail dotstar or empty
  327    |  5     ((■){■}((■\-)■)*)((■/)5)fail dotstar or empty
  328    |  5     ((■){■}((■\-)■)*)((4■)5)fail dotstar or empty
  329    |  5     ((■){■}((■\-)■)*)((4/)■)fail dotstar or empty
  330    |  5     ((■){■}((■\-)3){■})((■/)5)fail dotstar or empty
  331    |  5     ((■){■}((■\-)3){■})((4■)5)fail dotstar or empty
  332    |  5     ((■){■}((■\-)3){■})((4/)■)fail dotstar or empty
  333    |  5     ((■){■}((■\-)3)*)((■■)5)fail dotstar or empty
  334    |  5     ((■){■}((■\-)3)*)((■/)■)fail dotstar or empty
  335    |  5     ((■){■}((■\-)3)*)((4■)■)fail dotstar or empty
  336    |  5     ((■){■}((2■)■){■})((4/)5)fail dotstar or empty
  337    |  5     ((■){■}((2■)■)*)((■/)5) fail dotstar or empty
  338    |  5     ((■){■}((2■)■)*)((4■)5) fail dotstar or empty
  339    |  5     ((■){■}((2■)■)*)((4/)■) fail dotstar or empty
  340    |  5     ((■){■}((2■)3){■})((■/)5)fail dotstar or empty
  341    |  5     ((■){■}((2■)3){■})((4■)5)fail dotstar or empty
  342    |  5     ((■){■}((2■)3){■})((4/)■)fail dotstar or empty
  343    |  5     ((■){■}((2■)3)*)((■■)5) fail dotstar or empty
  344    |  5     ((■){■}((2■)3)*)((■/)■) fail dotstar or empty
  345    |  5     ((■){■}((2■)3)*)((4■)■) fail dotstar or empty
  346    |  5     ((■){■}((2\-)■){■})((■/)5)fail dotstar or empty
  347    |  5     ((■){■}((2\-)■){■})((4■)5)fail dotstar or empty
  348    |  5     ((■){■}((2\-)■){■})((4/)■)fail dotstar or empty
  349    |  5     ((■){■}((2\-)■)*)((■■)5)fail dotstar or empty
  350    |  5     ((■){■}((2\-)■)*)((■/)■)fail dotstar or empty
  351    |  5     ((■){■}((2\-)■)*)((4■)■)fail dotstar or empty
  352    |  5     ((■){■}((2\-)3){■})((■■)5)fail dotstar or empty
  353    |  5     ((■){■}((2\-)3){■})((■/)■)fail dotstar or empty
  354    |  5     ((■){■}■)((■/)5)        fail dotstar or empty
  355    |  5     ((■){■}((2\-)3){■})((4■)■)fail dotstar or empty
  356    |  5     ((■){■}■)((4■)5)        fail dotstar or empty
  357    |  5     ((■){■}■)((4/)■)        fail dotstar or empty
  358    |  5     ((■){■}((2\-)3)*)((■■)■)fail dot
  359    |  5     ((■){■}((2\-)3)*)((■)5) fail dotstar or empty
  360    |  5     ((■)+((■■)■){■})((4/)5) fail dotstar or empty
  361    |  5     ((■)+((■■)■)*)((■/)5)   fail dotstar or empty
  362    |  5     ((■)+((■■)■)*)((4■)5)   fail dotstar or empty
  363    |  5     ((■)+((■■)■)*)((4/)■)   fail dotstar or empty
  364    |  5     ((■)+((■)■)*)((4/)5)    fail dotstar or empty
  365    |  5     ((■)+((■■)3){■})((■/)5) fail dotstar or empty
  366    |  5     ((■)+((■■)3){■})((4■)5) fail dotstar or empty
  367    |  5     ((■)+((■■)3){■})((4/)■) fail dotstar or empty
  368    |  5     ((■)+((■)3){■})((4/)5)  fail dotstar or empty
  369    |  5     ((■)+((■■)3)*)((■■)5)   fail dotstar or empty
  370    |  5     ((■)+((■■)3)*)((■/)■)   fail dotstar or empty
  371    |  5     ((■)+((■)3)*)((■/)5)    fail dotstar or empty
  372    |  5     ((■)+((■■)3)*)((4■)■)   fail dotstar or empty
  373    |  5     ((■)+((■)3)*)((4■)5)    fail dotstar or empty
  374    |  5     ((■)+((■)3)*)((4/)■)    fail dotstar or empty
  375    |  5     ((■)+(■3)*)((4/)5)      fail dotstar or empty
  376    |  5     ((■)+((■\-)■){■})((■/)5)fail dotstar or empty
  377    |  5     ((■)+((■\-)■){■})((4■)5)fail dotstar or empty
  378    |  5     ((■)+((■\-)■){■})((4/)■)fail dotstar or empty
  379    |  5     ((■)+((■\-)■)*)((■■)5)  fail dotstar or empty
  380    |  5     ((■)+((■\-)■)*)((■/)■)  fail dotstar or empty
  381    |  5     ((■)+((■\-)■)*)((4■)■)  fail dotstar or empty
  382    |  5     ((■)+((■\-)3){■})((■■)5)fail dotstar or empty
  383    |  5     ((■)+((■\-)3){■})((■/)■)fail dotstar or empty
  384    |  5     ((■)+((■\-)3){■})((4■)■)fail dotstar or empty
  385    |  5     ((■)+((■\-)3)*)((■■)■)  fail dot
  386    |  5     ((■)+((■\-)3)*)((■)5)   fail dotstar or empty
  387    |  5     ((■)+((2■)■){■})((■/)5) fail dotstar or empty
  388    |  5     ((■)+((2■)■){■})((4■)5) fail dotstar or empty
  389    |  5     ((■)+((2■)■){■})((4/)■) fail dotstar or empty
  390    |  5     ((■)+((2■)■)*)((■■)5)   fail dotstar or empty
  391    |  5     ((■)+((2■)■)*)((■/)■)   fail dotstar or empty
  392    |  5     ((■)+((2■)■)*)((4■)■)   fail dotstar or empty
  393    |  5     ((■)+((2■)3){■})((■■)5) fail dotstar or empty
  394    |  5     ((■)+((2■)3){■})((■/)■) fail dotstar or empty
  395    |  5     ((■)+((2■)3){■})((4■)■) fail dotstar or empty
  396    |  5     ((■)+((2■)3)*)((■■)■)   fail dot
  397    |  5     ((■)+((2■)3)*)((■)5)    fail dotstar or empty
  398    |  5     ((■)+((2\-)■){■})((■■)5)fail dotstar or empty
  399    |  5     ((■)+((2\-)■){■})((■/)■)fail dotstar or empty
  400    |  5     ((■)+((2\-)■){■})((4■)■)fail dotstar or empty
  401    |  5     ((■)+((2\-)■)*)((■■)■)  fail dot
  402    |  5     ((■)+((2\-)■)*)((■)5)   fail dotstar or empty
  403    |  5     ((■)+((2\-)3){■})((■■)■)fail dot
  404    |  5     ((■)+■)((■■)5)          fail dotstar or empty
  405    |  5     ((■)+((2\-)3){■})((■)5) fail dotstar or empty
  406    |  5     ((■)+■)((■/)■)          fail dotstar or empty
  407    |  5     ((■)+■)((4■)■)          fail dotstar or empty
  408    |  5     ((■)+((2\-)3)*)((■)■)   fail dot
  409    |  5     ((■■)+((2\-)3)*)((■■)■) fail dot
  410    |  5     (((■|■))+((2\-)3)*)((■■)■)fail dot
  411    |  5     (((■){■})+((2\-)3)*)((■■)■)fail dot
  412    |  5     ((■)+((2\-)3)*)(((■■)■)■)fail dot
  413    |  5     ((■)+((2\-)3)*)(((■|■)■)■)fail dot
  414    |  5     ((■)+((2\-)3)*)(((■){■}■)■)fail dot
  415    |  5     ((■)+((2\-)3)*)((■■)(■■))fail dot
  416    |  5     ((■)+((2\-)3)*)((■■)(■|■))fail dot
  417    |  5     ((■)+((2\-)3)*)((■■)(■){■})fail dot
  418    |  5     ((■)+((2\-)3)*)(■5)     fail dotstar or empty
  419    |  5     ((1){■}((■■)■){■})((4/)5)fail dotstar or empty
  420    |  5     ((1){■}((■■)■)*)((■/)5) fail dotstar or empty
  421    |  5     ((1){■}((■■)■)*)((4■)5) fail dotstar or empty
  422    |  5     ((1){■}((■■)■)*)((4/)■) fail dotstar or empty
  423    |  5     (■((■■)■)*)((4/)5)      fail dotstar or empty
  424    |  5     ((1){■}((■)■)*)((4/)5)  fail dotstar or empty
  425    |  5     ((1){■}((■■)3){■})((■/)5)fail dotstar or empty
  426    |  5     ((1){■}((■■)3){■})((4■)5)fail dotstar or empty
  427    |  5     ((1){■}((■■)3){■})((4/)■)fail dotstar or empty
  428    |  5     (■((■■)3){■})((4/)5)    fail dotstar or empty
  429    |  5     ((1){■}((■)3){■})((4/)5)fail dotstar or empty
  430    |  5     ((1){■}((■■)3)*)((■■)5) fail dotstar or empty
  431    |  5     ((1){■}((■■)3)*)((■/)■) fail dotstar or empty
  432    |  5     (■((■■)3)*)((■/)5)      fail dotstar or empty
  433    |  5     ((1){■}((■)3)*)((■/)5)  fail dotstar or empty
  434    |  5     ((1){■}((■■)3)*)((4■)■) fail dotstar or empty
  435    |  5     (■((■■)3)*)((4■)5)      fail dotstar or empty
  436    |  5     ((1){■}((■)3)*)((4■)5)  fail dotstar or empty
  437    |  5     (■((■■)3)*)((4/)■)      fail dotstar or empty
  438    |  5     ((1){■}((■)3)*)((4/)■)  fail dotstar or empty
  439    |  5     (■((■)3)*)((4/)5)       fail dotstar or empty
  440    |  5     ((1){■}(■3)*)((4/)5)    fail dotstar or empty
  441    |  5     ((1){■}((■\-)■){■})((■/)5)fail dotstar or empty
  442    |  5     ((1){■}((■\-)■){■})((4■)5)fail dotstar or empty
  443    |  5     ((1){■}((■\-)■){■})((4/)■)fail dotstar or empty
  444    |  5     (■((■\-)■){■})((4/)5)   fail dotstar or empty
  445    |  5     ((1){■}((■\-)■)*)((■■)5)fail dotstar or empty
  446    |  5     ((1){■}((■\-)■)*)((■/)■)fail dotstar or empty
  447    |  5     (■((■\-)■)*)((■/)5)     fail dotstar or empty
  448    |  5     ((1){■}((■\-)■)*)((4■)■)fail dotstar or empty
  449    |  5     (■((■\-)■)*)((4■)5)     fail dotstar or empty
  450    |  5     (■((■\-)■)*)((4/)■)     fail dotstar or empty
  451    |  5     ((1){■}((■\-)3){■})((■■)5)fail dotstar or empty
  452    |  5     ((1){■}((■\-)3){■})((■/)■)fail dotstar or empty
  453    |  5     (■((■\-)3){■})((■/)5)   fail dotstar or empty
  454    |  5     ((1){■}((■\-)3){■})((4■)■)fail dotstar or empty
  455    |  5     (■((■\-)3){■})((4■)5)   fail dotstar or empty
  456    |  5     (■((■\-)3){■})((4/)■)   fail dotstar or empty
  457    |  5     ((1){■}((■\-)3)*)((■■)■)fail dot
  458    |  5     (■((■\-)3)*)((■■)5)     fail dotstar or empty
  459    |  5     ((1){■}((■\-)3)*)((■)5) fail dotstar or empty
  460    |  5     (■((■\-)3)*)((■/)■)     fail dotstar or empty
  461    |  5     (■((■\-)3)*)((4■)■)     fail dotstar or empty
  462    |  5     ((1){■}((2■)■){■})((■/)5)fail dotstar or empty
  463    |  5     ((1){■}((2■)■){■})((4■)5)fail dotstar or empty
  464    |  5     ((1){■}((2■)■){■})((4/)■)fail dotstar or empty
  465    |  5     (■((2■)■){■})((4/)5)    fail dotstar or empty
  466    |  5     ((1){■}((2■)■)*)((■■)5) fail dotstar or empty
  467    |  5     ((1){■}((2■)■)*)((■/)■) fail dotstar or empty
  468    |  5     (■((2■)■)*)((■/)5)      fail dotstar or empty
  469    |  5     ((1){■}((2■)■)*)((4■)■) fail dotstar or empty
  470    |  5     (■((2■)■)*)((4■)5)      fail dotstar or empty
  471    |  5     (■((2■)■)*)((4/)■)      fail dotstar or empty
  472    |  5     ((1){■}((2■)3){■})((■■)5)fail dotstar or empty
  473    |  5     ((1){■}((2■)3){■})((■/)■)fail dotstar or empty
  474    |  5     (■((2■)3){■})((■/)5)    fail dotstar or empty
  475    |  5     ((1){■}((2■)3){■})((4■)■)fail dotstar or empty
  476    |  5     (■((2■)3){■})((4■)5)    fail dotstar or empty
  477    |  5     (■((2■)3){■})((4/)■)    fail dotstar or empty
  478    |  5     ((1){■}((2■)3)*)((■■)■) fail dot
  479    |  5     (■((2■)3)*)((■■)5)      fail dotstar or empty
  480    |  5     ((1){■}((2■)3)*)((■)5)  fail dotstar or empty
  481    |  5     (■((2■)3)*)((■/)■)      fail dotstar or empty
  482    |  5     (■((2■)3)*)((4■)■)      fail dotstar or empty
  483    |  5     ((1){■}((2\-)■){■})((■■)5)fail dotstar or empty
  484    |  5     ((1){■}((2\-)■){■})((■/)■)fail dotstar or empty
  485    |  5     (■((2\-)■){■})((■/)5)   fail dotstar or empty
  486    |  5     ((1){■}((2\-)■){■})((4■)■)fail dotstar or empty
  487    |  5     (■((2\-)■){■})((4■)5)   fail dotstar or empty
  488    |  5     (■((2\-)■){■})((4/)■)   fail dotstar or empty
  489    |  5     ((1){■}((2\-)■)*)((■■)■)fail dot
  490    |  5     (■((2\-)■)*)((■■)5)     fail dotstar or empty
  491    |  5     ((1){■}((2\-)■)*)((■)5) fail dotstar or empty
  492    |  5     (■((2\-)■)*)((■/)■)     fail dotstar or empty
  493    |  5     (■((2\-)■)*)((4■)■)     fail dotstar or empty
  494    |  5     ((1){■}((2\-)3){■})((■■)■)fail dot
  495    |  5     (■((2\-)3){■})((■■)5)   fail dotstar or empty
  496    |  5     ((1){■}■)((■■)5)        fail dotstar or empty
  497    |  5     ((1){■}((2\-)3){■})((■)5)fail dotstar or empty
  498    |  5     (■((2\-)3){■})((■/)■)   fail dotstar or empty
  499    |  5     ((1){■}■)((■/)■)        fail dotstar or empty
  500    |  5     (■■)((■/)5)             fail dotstar or empty
  501    |  5     (■((2\-)3){■})((4■)■)   fail dotstar or empty
  502    |  5     ((1){■}■)((4■)■)        fail dotstar or empty
  503    |  5     (■■)((4■)5)             fail dotstar or empty
  504    |  5     (■■)((4/)■)             fail dotstar or empty
  505    |  5     (■)((4/)5)              fail dotstar or empty
  506    |  5     (■((2\-)3)*)((■■)■)     fail dot
  507    |  5     ((1){■}((2\-)3)*)((■)■) fail dot
  508    |  5     ((1){■}((2\-)3)*)(((■■)■)■)fail dot
  509    |  5     ((1){■}((2\-)3)*)(((■|■)■)■)fail dot
  510    |  5     ((1){■}((2\-)3)*)(((■){■}■)■)get a solution: ((1){0}((2\-)3)*)(((0){0,1}[\-*+])[\-)9/])
add positive: 
  511    |  5     ((1){■}((2\-)3)*)((■■)(■■))fail dot
  512    |  5     ((1){■}((2\-)3)*)((■■)(■|■))fail dot
  513    |  5     ((1){■}((2\-)3)*)((■■)(■){■})fail dot
  514    |  5     (■((2\-)3)*)((■)5)      fail dotstar or empty
  515    |  5     ((1){■}((2\-)3)*)(■5)   fail dotstar or empty
  516    |  5     ((1)+((■■)■){■})((■/)5) fail dotstar or empty
  517    |  5     ((1)+((■■)■){■})((4■)5) fail dotstar or empty
  518    |  5     ((1)+((■■)■){■})((4/)■) fail dotstar or empty
  519    |  5     ((1)+((■)■){■})((4/)5)  fail dotstar or empty
  520    |  5     ((1)+((■■)■)*)((■■)5)   fail dotstar or empty
  521    |  5     ((1)+((■■)■)*)((■/)■)   fail dotstar or empty
  522    |  5     ((1)+((■)■)*)((■/)5)    fail dotstar or empty
  523    |  5     ((1)+((■■)■)*)((4■)■)   fail dotstar or empty
  524    |  5     ((1)+((■)■)*)((4■)5)    fail dotstar or empty
  525    |  5     ((1)+((■)■)*)((4/)■)    fail dotstar or empty
  526    |  5     ((1)+(■■)*)((4/)5)      fail dotstar or empty
  527    |  5     ((1)+((■■)3){■})((■■)5) fail dotstar or empty
  528    |  5     ((1)+((■■)3){■})((■/)■) fail dotstar or empty
  529    |  5     ((1)+((■)3){■})((■/)5)  fail dotstar or empty
  530    |  5     ((1)+((■■)3){■})((4■)■) fail dotstar or empty
  531    |  5     ((1)+((■)3){■})((4■)5)  fail dotstar or empty
  532    |  5     ((1)+((■)3){■})((4/)■)  fail dotstar or empty
  533    |  5     ((1)+(■3){■})((4/)5)    fail dotstar or empty
  534    |  5     ((1)+((■■)3)*)((■■)■)   fail dotstar or empty
  535    |  5     ((1)+((■)3)*)((■■)5)    fail dotstar or empty
  536    |  5     ((1)+((■■)3)*)((■)5)    fail dotstar or empty
  537    |  5     ((1)+((■)3)*)((■/)■)    fail dotstar or empty
  538    |  5     ((1)+(■3)*)((■/)5)      fail dotstar or empty
  539    |  5     ((1)+((■)3)*)((4■)■)    fail dotstar or empty
  540    |  5     ((1)+(■3)*)((4■)5)      fail dotstar or empty
  541    |  5     ((1)+(■3)*)((4/)■)      fail dotstar or empty
  542    |  5     ((1)+((■\-)■){■})((■■)5)fail dotstar or empty
  543    |  5     ((1)+((■\-)■){■})((■/)■)fail dotstar or empty
  544    |  5     ((1)+((■\-)■){■})((4■)■)fail dotstar or empty
  545    |  5     ((1)+((■\-)■)*)((■■)■)  fail dotstar or empty
  546    |  5     ((1)+((■\-)■)*)((■)5)   fail dotstar or empty
  547    |  5     ((1)+((■\-)3){■})((■■)■)fail dotstar or empty
  548    |  5     ((1)+((■\-)3){■})((■)5) fail dotstar or empty
  549    |  5     ((1)+((■\-)3)*)((■)■)   fail dotstar or empty
  550    |  5     ((1)+((■\-)3)*)(■5)     fail dotstar or empty
  551    |  5     ((1)+((2■)■){■})((■■)5) fail dotstar or empty
  552    |  5     ((1)+((2■)■){■})((■/)■) fail dotstar or empty
  553    |  5     ((1)+((2■)■){■})((4■)■) fail dotstar or empty
  554    |  5     ((1)+((2■)■)*)((■■)■)   fail dotstar or empty
  555    |  5     ((1)+((2■)■)*)((■)5)    fail dotstar or empty
  556    |  5     ((1)+((2■)3){■})((■■)■) fail dotstar or empty
  557    |  5     ((1)+((2■)3){■})((■)5)  fail dotstar or empty
  558    |  5     ((1)+((2■)3)*)((■)■)    fail dotstar or empty
  559    |  5     ((1)+((2■)3)*)(■5)      fail dotstar or empty
  560    |  5     ((1)+((2\-)■){■})((■■)■)fail dotstar or empty
  561    |  5     ((1)+((2\-)■){■})((■)5) fail dotstar or empty
  562    |  5     ((1)+((2\-)■)*)((■)■)   fail dotstar or empty
  563    |  5     ((1)+((2\-)■)*)(■5)     fail dotstar or empty
  564    |  5     ((1)+■)((■■)■)          fail dotstar or empty
  565    |  5     ((1)+((2\-)3){■})((■)■) fail dotstar or empty
  566    |  5     ((1)+■)((■)5)           fail dotstar or empty
  567    |  5     ((1)+((2\-)3){■})(■5)   fail dotstar or empty
  568    |  5     ((1)+((2\-)3)*)(■■)     fail dotstar or empty
  569    |  6     ((■){■}((■■)■)*)((■/)5) fail dotstar or empty
  570    |  6     ((■){■}((■■)■)*)((4■)5) fail dotstar or empty
  571    |  6     ((■){■}((■■)■)*)((4/)■) fail dotstar or empty
  572    |  6     ((■){■}((■)■)*)((4/)5)  fail dotstar or empty
  573    |  6     ((■){■}((■■)3){■})((■/)5)fail dotstar or empty
  574    |  6     ((■){■}((■■)3){■})((4■)5)fail dotstar or empty
  575    |  6     ((■){■}((■■)3){■})((4/)■)fail dotstar or empty
  576    |  6     ((■){■}((■)3){■})((4/)5)fail dotstar or empty
  577    |  6     ((■){■}((■■)3)*)((■■)5) fail dotstar or empty
  578    |  6     ((■){■}((■■)3)*)((■/)■) fail dotstar or empty
  579    |  6     ((■){■}((■)3)*)((■/)5)  fail dotstar or empty
  580    |  6     ((■){■}((■■)3)*)((4■)■) fail dotstar or empty
  581    |  6     ((■){■}((■)3)*)((4■)5)  fail dotstar or empty
  582    |  6     ((■){■}((■)3)*)((4/)■)  fail dotstar or empty
  583    |  6     ((■){■}(■3)*)((4/)5)    fail dotstar or empty
  584    |  6     ((■){■}((■\-)■){■})((■/)5)fail dotstar or empty
  585    |  6     ((■){■}((■\-)■){■})((4■)5)fail dotstar or empty
  586    |  6     ((■){■}((■\-)■){■})((4/)■)fail dotstar or empty
  587    |  6     ((■){■}((■\-)■)*)((■■)5)fail dotstar or empty
  588    |  6     ((■){■}((■\-)■)*)((■/)■)fail dotstar or empty
  589    |  6     ((■){■}((■\-)■)*)((4■)■)fail dotstar or empty
  590    |  6     ((■){■}((■\-)3){■})((■■)5)fail dotstar or empty
  591    |  6     ((■){■}((■\-)3){■})((■/)■)fail dotstar or empty
  592    |  6     ((■){■}((■\-)3){■})((4■)■)fail dotstar or empty
  593    |  6     ((■){■}((■\-)3)*)((■■)■)fail dot
  594    |  6     ((■){■}((■\-)3)*)((■)5) fail dotstar or empty
  595    |  6     ((■){■}((2■)■){■})((■/)5)fail dotstar or empty
  596    |  6     ((■){■}((2■)■){■})((4■)5)fail dotstar or empty
  597    |  6     ((■){■}((2■)■){■})((4/)■)fail dotstar or empty
  598    |  6     ((■){■}((2■)■)*)((■■)5) fail dotstar or empty
  599    |  6     ((■){■}((2■)■)*)((■/)■) fail dotstar or empty
  600    |  6     ((■){■}((2■)■)*)((4■)■) fail dotstar or empty
  601    |  6     ((■){■}((2■)3){■})((■■)5)fail dotstar or empty
  602    |  6     ((■){■}((2■)3){■})((■/)■)fail dotstar or empty
  603    |  6     ((■){■}((2■)3){■})((4■)■)fail dotstar or empty
  604    |  6     ((■){■}((2■)3)*)((■■)■) fail dot
  605    |  6     ((■){■}((2■)3)*)((■)5)  fail dotstar or empty
  606    |  6     ((■){■}((2\-)■){■})((■■)5)fail dotstar or empty
  607    |  6     ((■){■}((2\-)■){■})((■/)■)fail dotstar or empty
  608    |  6     ((■){■}((2\-)■){■})((4■)■)fail dotstar or empty
  609    |  6     ((■){■}((2\-)■)*)((■■)■)fail dot
  610    |  6     ((■){■}((2\-)■)*)((■)5) fail dotstar or empty
  611    |  6     ((■){■}((2\-)3){■})((■■)■)fail dot
  612    |  6     ((■){■}■)((■■)5)        fail dotstar or empty
  613    |  6     ((■){■}((2\-)3){■})((■)5)fail dotstar or empty
  614    |  6     ((■){■}■)((■/)■)        fail dotstar or empty
  615    |  6     ((■){■}■)((4■)■)        fail dotstar or empty
  616    |  6     ((■){■}((2\-)3)*)((■)■) fail dot
  617    |  6     ((■■){■}((2\-)3)*)((■■)■)fail dot
  618    |  6     (((■|■)){■}((2\-)3)*)((■■)■)fail dot
  619    |  6     (((■){■}){■}((2\-)3)*)((■■)■)fail dot
  620    |  6     ((■){■}((2\-)3)*)(((■■)■)■)fail dot
  621    |  6     ((■){■}((2\-)3)*)(((■|■)■)■)fail dot
  622    |  6     ((■){■}((2\-)3)*)(((■){■}■)■)fail dot
  623    |  6     ((■){■}((2\-)3)*)((■■)(■■))fail dot
  624    |  6     ((■){■}((2\-)3)*)((■■)(■|■))fail dot
  625    |  6     ((■){■}((2\-)3)*)((■■)(■){■})fail dot
  626    |  6     ((■){■}((2\-)3)*)(■5)   fail dotstar or empty
  627    |  6     ((■)+((■■)■){■})((■/)5) fail dotstar or empty
  628    |  6     ((■)+((■■)■){■})((4■)5) fail dotstar or empty
  629    |  6     ((■)+((■■)■){■})((4/)■) fail dotstar or empty
  630    |  6     ((■)+((■)■){■})((4/)5)  fail dotstar or empty
  631    |  6     ((■)+((■■)■)*)((■■)5)   fail dotstar or empty
  632    |  6     ((■)+((■■)■)*)((■/)■)   fail dotstar or empty
  633    |  6     ((■)+((■)■)*)((■/)5)    fail dotstar or empty
  634    |  6     ((■)+((■■)■)*)((4■)■)   fail dotstar or empty
  635    |  6     ((■)+((■)■)*)((4■)5)    fail dotstar or empty
  636    |  6     ((■)+((■)■)*)((4/)■)    fail dotstar or empty
  637    |  6     ((■)+(■■)*)((4/)5)      fail dotstar or empty
  638    |  6     ((■)+((■■)3){■})((■■)5) fail dotstar or empty
  639    |  6     ((■)+((■■)3){■})((■/)■) fail dotstar or empty
  640    |  6     ((■)+((■)3){■})((■/)5)  fail dotstar or empty
  641    |  6     ((■)+((■■)3){■})((4■)■) fail dotstar or empty
  642    |  6     ((■)+((■)3){■})((4■)5)  fail dotstar or empty
  643    |  6     ((■)+((■)3){■})((4/)■)  fail dotstar or empty
  644    |  6     ((■)+(■3){■})((4/)5)    fail dotstar or empty
  645    |  6     ((■)+((■■)3)*)((■■)■)   fail dot
  646    |  6     ((■)+((■)3)*)((■■)5)    fail dotstar or empty
  647    |  6     ((■)+((■■)3)*)((■)5)    fail dotstar or empty
  648    |  6     ((■)+((■)3)*)((■/)■)    fail dotstar or empty
  649    |  6     ((■)+(■3)*)((■/)5)      fail dotstar or empty
  650    |  6     ((■)+((■)3)*)((4■)■)    fail dotstar or empty
  651    |  6     ((■)+(■3)*)((4■)5)      fail dotstar or empty
  652    |  6     ((■)+(■3)*)((4/)■)      fail dotstar or empty
  653    |  6     ((■)+((■\-)■){■})((■■)5)fail dotstar or empty
  654    |  6     ((■)+((■\-)■){■})((■/)■)fail dotstar or empty
  655    |  6     ((■)+((■\-)■){■})((4■)■)fail dotstar or empty
  656    |  6     ((■)+((■\-)■)*)((■■)■)  fail dot
  657    |  6     ((■)+((■\-)■)*)((■)5)   fail dotstar or empty
  658    |  6     ((■)+((■\-)3){■})((■■)■)fail dot
  659    |  6     ((■)+((■\-)3){■})((■)5) fail dotstar or empty
  660    |  6     ((■)+((■\-)3)*)((■)■)   fail dot
  661    |  6     ((■■)+((■\-)3)*)((■■)■) fail dot
  662    |  6     (((■|■))+((■\-)3)*)((■■)■)fail dot
  663    |  6     (((■){■})+((■\-)3)*)((■■)■)fail dot
  664    |  6     ((■)+(((■■)\-)3)*)((■■)■)fail dot
  665    |  6     ((■)+(((■|■)\-)3)*)((■■)■)fail dot
  666    |  6     ((■)+(((■){■}\-)3)*)((■■)■)fail dot
  667    |  6     ((■)+((■\-)3)*)(((■■)■)■)fail dot
  668    |  6     ((■)+((■\-)3)*)(((■|■)■)■)fail dot
  669    |  6     ((■)+((■\-)3)*)(((■){■}■)■)fail dot
  670    |  6     ((■)+((■\-)3)*)((■■)(■■))fail dot
  671    |  6     ((■)+((■\-)3)*)((■■)(■|■))fail dot
  672    |  6     ((■)+((■\-)3)*)((■■)(■){■})fail dot
  673    |  6     ((■)+((■\-)3)*)(■5)     fail dotstar or empty
  674    |  6     ((■)+((2■)■){■})((■■)5) fail dotstar or empty
  675    |  6     ((■)+((2■)■){■})((■/)■) fail dotstar or empty
  676    |  6     ((■)+((2■)■){■})((4■)■) fail dotstar or empty
  677    |  6     ((■)+((2■)■)*)((■■)■)   fail dot
  678    |  6     ((■)+((2■)■)*)((■)5)    fail dotstar or empty
  679    |  6     ((■)+((2■)3){■})((■■)■) fail dot
  680    |  6     ((■)+((2■)3){■})((■)5)  fail dotstar or empty
  681    |  6     ((■)+((2■)3)*)((■)■)    fail dot
  682    |  6     ((■■)+((2■)3)*)((■■)■)  fail dot
  683    |  6     (((■|■))+((2■)3)*)((■■)■)fail dot
  684    |  6     (((■){■})+((2■)3)*)((■■)■)fail dot
  685    |  6     ((■)+((2(■■))3)*)((■■)■)fail dot
  686    |  6     ((■)+((2(■|■))3)*)((■■)■)fail dot
  687    |  6     ((■)+((2(■){■})3)*)((■■)■)fail dot
  688    |  6     ((■)+((2■)3)*)(((■■)■)■)fail dot
  689    |  6     ((■)+((2■)3)*)(((■|■)■)■)fail dot
  690    |  6     ((■)+((2■)3)*)(((■){■}■)■)fail dot
  691    |  6     ((■)+((2■)3)*)((■■)(■■))fail dot
  692    |  6     ((■)+((2■)3)*)((■■)(■|■))fail dot
  693    |  6     ((■)+((2■)3)*)((■■)(■){■})fail dot
  694    |  6     ((■)+((2■)3)*)(■5)      fail dotstar or empty
  695    |  6     ((■)+((2\-)■){■})((■■)■)fail dot
  696    |  6     ((■)+((2\-)■){■})((■)5) fail dotstar or empty
  697    |  6     ((■)+((2\-)■)*)((■)■)   fail dot
  698    |  6     ((■■)+((2\-)■)*)((■■)■) fail dot
  699    |  6     (((■|■))+((2\-)■)*)((■■)■)fail dot
  700    |  6     (((■){■})+((2\-)■)*)((■■)■)fail dot
  701    |  6     ((■)+((2\-)(■■))*)((■■)■)fail dot
  702    |  6     ((■)+((2\-)(■|■))*)((■■)■)fail dot
  703    |  6     ((■)+((2\-)(■){■})*)((■■)■)fail dot
  704    |  6     ((■)+((2\-)■)*)(((■■)■)■)fail dot
  705    |  6     ((■)+((2\-)■)*)(((■|■)■)■)fail dot
  706    |  6     ((■)+((2\-)■)*)(((■){■}■)■)fail dot
  707    |  6     ((■)+((2\-)■)*)((■■)(■■))fail dot
  708    |  6     ((■)+((2\-)■)*)((■■)(■|■))fail dot
  709    |  6     ((■)+((2\-)■)*)((■■)(■){■})fail dot
  710    |  6     ((■)+((2\-)■)*)(■5)     fail dotstar or empty
  711    |  6     ((■)+■)((■■)■)          fail dot
  712    |  6     ((■)+((2\-)3){■})((■)■) fail dot
  713    |  6     ((■■)+((2\-)3){■})((■■)■)fail dot
  714    |  6     (((■|■))+((2\-)3){■})((■■)■)fail dot
  715    |  6     (((■){■})+((2\-)3){■})((■■)■)fail dot
  716    |  6     ((■)+((2\-)3){■})(((■■)■)■)fail dot
  717    |  6     ((■)+((2\-)3){■})(((■|■)■)■)fail dot
  718    |  6     ((■)+((2\-)3){■})(((■){■}■)■)fail dot
  719    |  6     ((■)+((2\-)3){■})((■■)(■■))fail dot
  720    |  6     ((■)+((2\-)3){■})((■■)(■|■))fail dot
  721    |  6     ((■)+((2\-)3){■})((■■)(■){■})fail dot
  722    |  6     ((■)+■)((■)5)           fail dotstar or empty
  723    |  6     ((■)+((2\-)3){■})(■5)   fail dotstar or empty
  724    |  6     ((■)+((2\-)3)*)(■■)     fail dot
  725    |  6     ((■■)+((2\-)3)*)((■)■)  fail dot
  726    |  6     (((■|■))+((2\-)3)*)((■)■)fail dot
  727    |  6     (((■){■})+((2\-)3)*)((■)■)fail dot
  728    |  6     ((■)+((2\-)3)*)(((■■))■)fail dot
  729    |  6     ((■)+((2\-)3)*)(((■|■))■)fail dot
  730    |  6     ((■)+((2\-)3)*)(((■){■})■)fail dot
  731    |  6     (((■■)■)+((2\-)3)*)((■■)■)fail dot
  732    |  6     (((■|■)■)+((2\-)3)*)((■■)■)fail dot
  733    |  6     (((■){■}■)+((2\-)3)*)((■■)■)fail dot
  734    |  6     ((■(■■))+((2\-)3)*)((■■)■)fail dot
  735    |  6     ((■(■|■))+((2\-)3)*)((■■)■)fail dot
  736    |  6     ((■(■){■})+((2\-)3)*)((■■)■)fail dot
  737    |  6     ((■■)+((2\-)3)*)(((■■)■)■)fail dot
  738    |  6     ((■■)+((2\-)3)*)(((■|■)■)■)fail dot
  739    |  6     ((■■)+((2\-)3)*)(((■){■}■)■)fail dot
  740    |  6     ((■■)+((2\-)3)*)((■■)(■■))fail dot
  741    |  6     ((■■)+((2\-)3)*)((■■)(■|■))fail dot
  742    |  6     ((■■)+((2\-)3)*)((■■)(■){■})fail dot
  743    |  6     (((■■|■))+((2\-)3)*)((■■)■)fail dot
  744    |  6     ((((■|■)|■))+((2\-)3)*)((■■)■)fail dot
  745    |  6     ((((■){■}|■))+((2\-)3)*)((■■)■)fail dot
  746    |  6     (((■|■■))+((2\-)3)*)((■■)■)fail dot
  747    |  6     (((■|(■|■)))+((2\-)3)*)((■■)■)fail dot
  748    |  6     (((■|(■){■}))+((2\-)3)*)((■■)■)fail dot
  749    |  6     (((■|■))+((2\-)3)*)(((■■)■)■)fail dot
  750    |  6     (((■|■))+((2\-)3)*)(((■|■)■)■)fail dot
  751    |  6     (((■|■))+((2\-)3)*)(((■){■}■)■)fail dot
  752    |  6     (((■|■))+((2\-)3)*)((■■)(■■))fail dot
  753    |  6     (((■|■))+((2\-)3)*)((■■)(■|■))fail dot
  754    |  6     (((■|■))+((2\-)3)*)((■■)(■){■})fail dot
  755    |  6     (((■■){■})+((2\-)3)*)((■■)■)fail dot
  756    |  6     ((((■|■)){■})+((2\-)3)*)((■■)■)fail dot
  757    |  6     ((((■){■}){■})+((2\-)3)*)((■■)■)fail dot
  758    |  6     (((■){■})+((2\-)3)*)(((■■)■)■)fail dot
  759    |  6     (((■){■})+((2\-)3)*)(((■|■)■)■)fail dot
  760    |  6     (((■){■})+((2\-)3)*)(((■){■}■)■)fail dot
  761    |  6     (((■){■})+((2\-)3)*)((■■)(■■))fail dot
  762    |  6     (((■){■})+((2\-)3)*)((■■)(■|■))fail dot
  763    |  6     (((■){■})+((2\-)3)*)((■■)(■){■})fail dot
  764    |  6     ((■)+((2\-)3)*)(((■)■)■)fail dot
  765    |  6     ((■)+((2\-)3)*)((((■■)■)■)■)fail dot
  766    |  6     ((■)+((2\-)3)*)((((■|■)■)■)■)fail dot
  767    |  6     ((■)+((2\-)3)*)((((■){■}■)■)■)fail dot
  768    |  6     ((■)+((2\-)3)*)(((■■)(■■))■)fail dot
  769    |  6     ((■)+((2\-)3)*)(((■■)(■|■))■)fail dot
  770    |  6     ((■)+((2\-)3)*)(((■■)(■){■})■)fail dot
  771    |  6     ((■)+((2\-)3)*)(((■■)■)(■■))fail dot
  772    |  6     ((■)+((2\-)3)*)(((■■)■)(■|■))fail dot
  773    |  6     ((■)+((2\-)3)*)(((■■)■)(■){■})fail dot
  774    |  6     ((■)+((2\-)3)*)(((■■|■)■)■)fail dot
  775    |  6     ((■)+((2\-)3)*)((((■|■)|■)■)■)fail dot
  776    |  6     ((■)+((2\-)3)*)((((■){■}|■)■)■)fail dot
  777    |  6     ((■)+((2\-)3)*)(((■|■)(■■))■)fail dot
  778    |  6     ((■)+((2\-)3)*)(((■|■)(■|■))■)fail dot
  779    |  6     ((■)+((2\-)3)*)(((■|■)(■){■})■)fail dot
  780    |  6     ((■)+((2\-)3)*)(((■|■)■)(■■))fail dot
  781    |  6     ((■)+((2\-)3)*)(((■|■)■)(■|■))fail dot
  782    |  6     ((■)+((2\-)3)*)(((■|■)■)(■){■})fail dot
  783    |  6     ((■)+((2\-)3)*)(((■■){■}■)■)fail dot
  784    |  6     ((■)+((2\-)3)*)((((■|■)){■}■)■)fail dot
  785    |  6     ((■)+((2\-)3)*)((((■){■}){■}■)■)fail dot
  786    |  6     ((■)+((2\-)3)*)(((■){■}(■■))■)fail dot
  787    |  6     ((■)+((2\-)3)*)(((■){■}(■|■))■)fail dot
  788    |  6     ((■)+((2\-)3)*)(((■){■}(■){■})■)fail dot
  789    |  6     ((■)+((2\-)3)*)(((■){■}■)(■■))fail dot
  790    |  6     ((■)+((2\-)3)*)(((■){■}■)(■|■))fail dot
  791    |  6     ((■)+((2\-)3)*)(((■){■}■)(■){■})fail dot
  792    |  6     ((■)+((2\-)3)*)((■■)(■))fail dot
  793    |  6     ((1){■}((■■)■){■})((■/)5)fail dotstar or empty
  794    |  6     ((1){■}((■■)■){■})((4■)5)fail dotstar or empty
  795    |  6     ((1){■}((■■)■){■})((4/)■)fail dotstar or empty
  796    |  6     ((1){■}((■)■){■})((4/)5)fail dotstar or empty
  797    |  6     ((1){■}((■■)■)*)((■■)5) fail dotstar or empty
  798    |  6     ((1){■}((■■)■)*)((■/)■) fail dotstar or empty
  799    |  6     (■((■■)■)*)((■/)5)      fail dotstar or empty
  800    |  6     ((1){■}((■)■)*)((■/)5)  fail dotstar or empty
  801    |  6     ((1){■}((■■)■)*)((4■)■) fail dotstar or empty
  802    |  6     (■((■■)■)*)((4■)5)      fail dotstar or empty
  803    |  6     ((1){■}((■)■)*)((4■)5)  fail dotstar or empty
  804    |  6     (■((■■)■)*)((4/)■)      fail dotstar or empty
  805    |  6     ((1){■}((■)■)*)((4/)■)  fail dotstar or empty
  806    |  6     (■((■)■)*)((4/)5)       fail dotstar or empty
  807    |  6     ((1){■}(■■)*)((4/)5)    fail dotstar or empty
  808    |  6     ((1){■}((■■)3){■})((■■)5)fail dotstar or empty
  809    |  6     ((1){■}((■■)3){■})((■/)■)fail dotstar or empty
  810    |  6     (■((■■)3){■})((■/)5)    fail dotstar or empty
  811    |  6     ((1){■}((■)3){■})((■/)5)fail dotstar or empty
  812    |  6     ((1){■}((■■)3){■})((4■)■)fail dotstar or empty
  813    |  6     (■((■■)3){■})((4■)5)    fail dotstar or empty
  814    |  6     ((1){■}((■)3){■})((4■)5)fail dotstar or empty
  815    |  6     (■((■■)3){■})((4/)■)    fail dotstar or empty
  816    |  6     ((1){■}((■)3){■})((4/)■)fail dotstar or empty
  817    |  6     (■((■)3){■})((4/)5)     fail dotstar or empty
  818    |  6     ((1){■}(■3){■})((4/)5)  fail dotstar or empty
  819    |  6     ((1){■}((■■)3)*)((■■)■) fail dot
  820    |  6     (■((■■)3)*)((■■)5)      fail dotstar or empty
  821    |  6     ((1){■}((■)3)*)((■■)5)  fail dotstar or empty
  822    |  6     ((1){■}((■■)3)*)((■)5)  fail dotstar or empty
  823    |  6     (■((■■)3)*)((■/)■)      fail dotstar or empty
  824    |  6     ((1){■}((■)3)*)((■/)■)  fail dotstar or empty
  825    |  6     (■((■)3)*)((■/)5)       fail dotstar or empty
  826    |  6     ((1){■}(■3)*)((■/)5)    fail dotstar or empty
  827    |  6     (■((■■)3)*)((4■)■)      fail dotstar or empty
  828    |  6     ((1){■}((■)3)*)((4■)■)  fail dotstar or empty
  829    |  6     (■((■)3)*)((4■)5)       fail dotstar or empty
  830    |  6     ((1){■}(■3)*)((4■)5)    fail dotstar or empty
  831    |  6     (■((■)3)*)((4/)■)       fail dotstar or empty
  832    |  6     ((1){■}(■3)*)((4/)■)    fail dotstar or empty
  833    |  6     (■(■3)*)((4/)5)         fail dotstar or empty
  834    |  6     ((1){■}((■\-)■){■})((■■)5)fail dotstar or empty
  835    |  6     ((1){■}((■\-)■){■})((■/)■)fail dotstar or empty
  836    |  6     (■((■\-)■){■})((■/)5)   fail dotstar or empty
  837    |  6     ((1){■}((■\-)■){■})((4■)■)fail dotstar or empty
  838    |  6     (■((■\-)■){■})((4■)5)   fail dotstar or empty
  839    |  6     (■((■\-)■){■})((4/)■)   fail dotstar or empty
  840    |  6     ((1){■}((■\-)■)*)((■■)■)fail dot
  841    |  6     (■((■\-)■)*)((■■)5)     fail dotstar or empty
  842    |  6     ((1){■}((■\-)■)*)((■)5) fail dotstar or empty
  843    |  6     (■((■\-)■)*)((■/)■)     fail dotstar or empty
  844    |  6     (■((■\-)■)*)((4■)■)     fail dotstar or empty
  845    |  6     ((1){■}((■\-)3){■})((■■)■)fail dot
  846    |  6     (■((■\-)3){■})((■■)5)   fail dotstar or empty
  847    |  6     ((1){■}((■\-)3){■})((■)5)fail dotstar or empty
  848    |  6     (■((■\-)3){■})((■/)■)   fail dotstar or empty
  849    |  6     (■((■\-)3){■})((4■)■)   fail dotstar or empty
  850    |  6     (■((■\-)3)*)((■■)■)     fail dot
  851    |  6     ((1){■}((■\-)3)*)((■)■) fail dot
  852    |  6     ((1){■}(((■■)\-)3)*)((■■)■)fail dot
  853    |  6     ((1){■}(((■|■)\-)3)*)((■■)■)fail dot
  854    |  6     ((1){■}(((■){■}\-)3)*)((■■)■)fail dot
  855    |  6     ((1){■}((■\-)3)*)(((■■)■)■)fail dot
  856    |  6     ((1){■}((■\-)3)*)(((■|■)■)■)fail dot
  857    |  6     ((1){■}((■\-)3)*)(((■){■}■)■)fail dot
  858    |  6     ((1){■}((■\-)3)*)((■■)(■■))fail dot
  859    |  6     ((1){■}((■\-)3)*)((■■)(■|■))fail dot
  860    |  6     ((1){■}((■\-)3)*)((■■)(■){■})fail dot
  861    |  6     (■((■\-)3)*)((■)5)      fail dotstar or empty
  862    |  6     ((1){■}((■\-)3)*)(■5)   fail dotstar or empty
  863    |  6     ((1){■}((2■)■){■})((■■)5)fail dotstar or empty
  864    |  6     ((1){■}((2■)■){■})((■/)■)fail dotstar or empty
  865    |  6     (■((2■)■){■})((■/)5)    fail dotstar or empty
  866    |  6     ((1){■}((2■)■){■})((4■)■)fail dotstar or empty
  867    |  6     (■((2■)■){■})((4■)5)    fail dotstar or empty
  868    |  6     (■((2■)■){■})((4/)■)    fail dotstar or empty
  869    |  6     ((1){■}((2■)■)*)((■■)■) fail dot
  870    |  6     (■((2■)■)*)((■■)5)      fail dotstar or empty
  871    |  6     ((1){■}((2■)■)*)((■)5)  fail dotstar or empty
  872    |  6     (■((2■)■)*)((■/)■)      fail dotstar or empty
  873    |  6     (■((2■)■)*)((4■)■)      fail dotstar or empty
  874    |  6     ((1){■}((2■)3){■})((■■)■)fail dot
  875    |  6     (■((2■)3){■})((■■)5)    fail dotstar or empty
  876    |  6     ((1){■}((2■)3){■})((■)5)fail dotstar or empty
  877    |  6     (■((2■)3){■})((■/)■)    fail dotstar or empty
  878    |  6     (■((2■)3){■})((4■)■)    fail dotstar or empty
  879    |  6     (■((2■)3)*)((■■)■)      fail dot
  880    |  6     ((1){■}((2■)3)*)((■)■)  fail dot
  881    |  6     ((1){■}((2(■■))3)*)((■■)■)fail dot
  882    |  6     ((1){■}((2(■|■))3)*)((■■)■)fail dot
  883    |  6     ((1){■}((2(■){■})3)*)((■■)■)fail dot
  884    |  6     ((1){■}((2■)3)*)(((■■)■)■)fail dot
  885    |  6     ((1){■}((2■)3)*)(((■|■)■)■)fail dot
  886    |  6     ((1){■}((2■)3)*)(((■){■}■)■)fail dot
  887    |  6     ((1){■}((2■)3)*)((■■)(■■))fail dot
  888    |  6     ((1){■}((2■)3)*)((■■)(■|■))fail dot
  889    |  6     ((1){■}((2■)3)*)((■■)(■){■})fail dot
  890    |  6     (■((2■)3)*)((■)5)       fail dotstar or empty
  891    |  6     ((1){■}((2■)3)*)(■5)    fail dotstar or empty
  892    |  6     ((1){■}((2\-)■){■})((■■)■)fail dot
  893    |  6     (■((2\-)■){■})((■■)5)   fail dotstar or empty
  894    |  6     ((1){■}((2\-)■){■})((■)5)fail dotstar or empty
  895    |  6     (■((2\-)■){■})((■/)■)   fail dotstar or empty
  896    |  6     (■((2\-)■){■})((4■)■)   fail dotstar or empty
  897    |  6     (■((2\-)■)*)((■■)■)     fail dot
  898    |  6     ((1){■}((2\-)■)*)((■)■) fail dot
  899    |  6     ((1){■}((2\-)(■■))*)((■■)■)fail dot
  900    |  6     ((1){■}((2\-)(■|■))*)((■■)■)fail dot
  901    |  6     ((1){■}((2\-)(■){■})*)((■■)■)fail dot
  902    |  6     ((1){■}((2\-)■)*)(((■■)■)■)fail dot
  903    |  6     ((1){■}((2\-)■)*)(((■|■)■)■)fail dot
  904    |  6     ((1){■}((2\-)■)*)(((■){■}■)■)fail dot
  905    |  6     ((1){■}((2\-)■)*)((■■)(■■))fail dot
  906    |  6     ((1){■}((2\-)■)*)((■■)(■|■))fail dot
  907    |  6     ((1){■}((2\-)■)*)((■■)(■){■})fail dot
  908    |  6     (■((2\-)■)*)((■)5)      fail dotstar or empty
  909    |  6     ((1){■}((2\-)■)*)(■5)   fail dotstar or empty
  910    |  6     (■((2\-)3){■})((■■)■)   fail dot
  911    |  6     ((1){■}■)((■■)■)        fail dot
  912    |  6     ((1){■}((2\-)3){■})((■)■)fail dot
  913    |  6     ((1){■}((2\-)3){■})(((■■)■)■)fail dot
  914    |  6     ((1){■}((2\-)3){■})(((■|■)■)■)fail dot
  915    |  6     ((1){■}((2\-)3){■})(((■){■}■)■)fail dot
  916    |  6     ((1){■}((2\-)3){■})((■■)(■■))fail dot
  917    |  6     ((1){■}((2\-)3){■})((■■)(■|■))fail dot
  918    |  6     ((1){■}((2\-)3){■})((■■)(■){■})fail dot
  919    |  6     (■■)((■■)5)             fail dotstar or empty
  920    |  6     (■((2\-)3){■})((■)5)    fail dotstar or empty
  921    |  6     ((1){■}■)((■)5)         fail dotstar or empty
  922    |  6     ((1){■}((2\-)3){■})(■5) fail dotstar or empty
  923    |  6     (■■)((■/)■)             fail dotstar or empty
  924    |  6     (■)((■/)5)              fail dotstar or empty
  925    |  6     (■■)((4■)■)             fail dotstar or empty
  926    |  6     (■)((4■)5)              fail dotstar or empty
  927    |  6     (■)((4/)■)              fail dotstar or empty
  928    |  6     ■((4/)5)                fail dotstar or empty
  929    |  6     (■((2\-)3)*)((■)■)      fail dot
  930    |  6     ((■■)((2\-)3)*)((■■)■)  fail dot
  931    |  6     ((■|■)((2\-)3)*)((■■)■) fail dot
  932    |  6     (■((2\-)3)*)(((■■)■)■)  fail dot
  933    |  6     (■((2\-)3)*)(((■|■)■)■) fail dot
  934    |  6     (■((2\-)3)*)(((■){■}■)■)fail dot
  935    |  6     (■((2\-)3)*)((■■)(■■))  fail dot
  936    |  6     (■((2\-)3)*)((■■)(■|■)) fail dot
  937    |  6     (■((2\-)3)*)((■■)(■){■})fail dot
  938    |  6     ((1){■}((2\-)3)*)(■■)   fail dot
  939    |  6     ((1){■}((2\-)3)*)(((■■))■)fail dot
  940    |  6     ((1){■}((2\-)3)*)(((■|■))■)fail dot
  941    |  6     ((1){■}((2\-)3)*)(((■){■})■)fail dot
  942    |  6     ((1){■}((2\-)3)*)(((■)■)■)fail dot
  943    |  6     ((1){■}((2\-)3)*)((((■■)■)■)■)fail dot
  944    |  6     ((1){■}((2\-)3)*)((((■|■)■)■)■)fail dot
  945    |  6     ((1){■}((2\-)3)*)((((■){■}■)■)■)fail dot
  946    |  6     ((1){■}((2\-)3)*)(((■■)(■■))■)fail dot
  947    |  6     ((1){■}((2\-)3)*)(((■■)(■|■))■)fail dot
  948    |  6     ((1){■}((2\-)3)*)(((■■)(■){■})■)fail dot
  949    |  6     ((1){■}((2\-)3)*)(((■■)■)(■■))fail dot
  950    |  6     ((1){■}((2\-)3)*)(((■■)■)(■|■))fail dot
  951    |  6     ((1){■}((2\-)3)*)(((■■)■)(■){■})fail dot
  952    |  6     ((1){■}((2\-)3)*)(((■■|■)■)■)fail dot
  953    |  6     ((1){■}((2\-)3)*)((((■|■)|■)■)■)fail dot
  954    |  6     ((1){■}((2\-)3)*)((((■){■}|■)■)■)fail dot
  955    |  6     ((1){■}((2\-)3)*)(((■|■)(■■))■)fail dot
  956    |  6     ((1){■}((2\-)3)*)(((■|■)(■|■))■)fail dot
  957    |  6     ((1){■}((2\-)3)*)(((■|■)(■){■})■)fail dot
  958    |  6     ((1){■}((2\-)3)*)(((■|■)■)(■■))fail dot
  959    |  6     ((1){■}((2\-)3)*)(((■|■)■)(■|■))fail dot
  960    |  6     ((1){■}((2\-)3)*)(((■|■)■)(■){■})fail dot
  961    |  6     ((1){■}((2\-)3)*)(((■■){■}■)■)fail dot
  962    |  6     ((1){■}((2\-)3)*)((((■|■)){■}■)■)fail solve
  963    |  6     ((1){■}((2\-)3)*)((((■){■}){■}■)■)fail dot
  964    |  6     ((1){■}((2\-)3)*)(((■){■}(■■))■)fail dot
  965    |  6     ((1){■}((2\-)3)*)(((■){■}(■|■))■)fail solve
  966    |  6     ((1){■}((2\-)3)*)(((■){■}(■){■})■)fail dot
  967    |  6     ((1){■}((2\-)3)*)(((■){■}■)(■■))fail dot
  968    |  6     ((1){■}((2\-)3)*)(((■){■}■)(■|■))fail solve
  969    |  6     ((1){■}((2\-)3)*)(((■){■}■)(■){■})fail dot
  970    |  6     ((1){■}((2\-)3)*)((■■)(■))fail dot
  971    |  6     (■((2\-)3)*)(■5)        fail dotstar or empty
  972    |  6     ((1)+((■■)■){■})((■■)5) fail dotstar or empty
  973    |  6     ((1)+((■■)■){■})((■/)■) fail dotstar or empty
  974    |  6     ((1)+((■)■){■})((■/)5)  fail dotstar or empty
  975    |  6     ((1)+((■■)■){■})((4■)■) fail dotstar or empty
  976    |  6     ((1)+((■)■){■})((4■)5)  fail dotstar or empty
  977    |  6     ((1)+((■)■){■})((4/)■)  fail dotstar or empty
  978    |  6     ((1)+(■■){■})((4/)5)    fail dotstar or empty
  979    |  6     ((1)+((■■)■)*)((■■)■)   fail dotstar or empty
  980    |  6     ((1)+((■)■)*)((■■)5)    fail dotstar or empty
  981    |  6     ((1)+((■■)■)*)((■)5)    fail dotstar or empty
  982    |  6     ((1)+((■)■)*)((■/)■)    fail dotstar or empty
  983    |  6     ((1)+(■■)*)((■/)5)      fail dotstar or empty
  984    |  6     ((1)+((■)■)*)((4■)■)    fail dotstar or empty
  985    |  6     ((1)+(■■)*)((4■)5)      fail dotstar or empty
  986    |  6     ((1)+(■■)*)((4/)■)      fail dotstar or empty
  987    |  6     ((1)+(■)*)((4/)5)       fail dotstar or empty
  988    |  6     ((1)+((■■)3){■})((■■)■) fail dotstar or empty
  989    |  6     ((1)+((■)3){■})((■■)5)  fail dotstar or empty
  990    |  6     ((1)+((■■)3){■})((■)5)  fail dotstar or empty
  991    |  6     ((1)+((■)3){■})((■/)■)  fail dotstar or empty
  992    |  6     ((1)+(■3){■})((■/)5)    fail dotstar or empty
  993    |  6     ((1)+((■)3){■})((4■)■)  fail dotstar or empty
  994    |  6     ((1)+(■3){■})((4■)5)    fail dotstar or empty
  995    |  6     ((1)+(■3){■})((4/)■)    fail dotstar or empty
  996    |  6     ((1)+((■)3)*)((■■)■)    fail dotstar or empty
  997    |  6     ((1)+((■■)3)*)((■)■)    fail dotstar or empty
  998    |  6     ((1)+(■3)*)((■■)5)      fail dotstar or empty
  999    |  6     ((1)+((■)3)*)((■)5)     fail dotstar or empty
  1000   |  6     ((1)+((■■)3)*)(■5)      fail dotstar or empty
  1001   |  6     ((1)+(■3)*)((■/)■)      fail dotstar or empty
  1002   |  6     ((1)+(■3)*)((4■)■)      fail dotstar or empty
  1003   |  6     ((1)+((■\-)■){■})((■■)■)fail dotstar or empty
  1004   |  6     ((1)+((■\-)■){■})((■)5) fail dotstar or empty
  1005   |  6     ((1)+((■\-)■)*)((■)■)   fail dotstar or empty
  1006   |  6     ((1)+((■\-)■)*)(■5)     fail dotstar or empty
  1007   |  6     ((1)+((■\-)3){■})((■)■) fail dotstar or empty
  1008   |  6     ((1)+((■\-)3){■})(■5)   fail dotstar or empty
  1009   |  6     ((1)+((■\-)3)*)(■■)     fail dotstar or empty
  1010   |  6     ((1)+((2■)■){■})((■■)■) fail dotstar or empty
  1011   |  6     ((1)+((2■)■){■})((■)5)  fail dotstar or empty
  1012   |  6     ((1)+((2■)■)*)((■)■)    fail dotstar or empty
  1013   |  6     ((1)+((2■)■)*)(■5)      fail dotstar or empty
  1014   |  6     ((1)+((2■)3){■})((■)■)  fail dotstar or empty
  1015   |  6     ((1)+((2■)3){■})(■5)    fail dotstar or empty
  1016   |  6     ((1)+((2■)3)*)(■■)      fail dotstar or empty
  1017   |  6     ((1)+((2\-)■){■})((■)■) fail dotstar or empty
  1018   |  6     ((1)+((2\-)■){■})(■5)   fail dotstar or empty
  1019   |  6     ((1)+((2\-)■)*)(■■)     fail dotstar or empty
  1020   |  6     ((1)+■)((■)■)           fail dotstar or empty
  1021   |  6     ((1)+((2\-)3){■})(■■)   fail dotstar or empty
  1022   |  6     ((1)+■)(■5)             fail dotstar or empty
  1023   |  6     ((1)+((2\-)3)*)(■)      fail dotstar or empty
  1024   |  7     ((■){■}((■■)■)*)((■■)5) fail dotstar or empty
  1025   |  7     ((■){■}((■■)■)*)((■/)■) fail dotstar or empty
  1026   |  7     ((■){■}((■)■)*)((■/)5)  fail dotstar or empty
  1027   |  7     ((■){■}((■■)■)*)((4■)■) fail dotstar or empty
  1028   |  7     ((■){■}((■)■)*)((4■)5)  fail dotstar or empty
  1029   |  7     ((■){■}((■)■)*)((4/)■)  fail dotstar or empty
  1030   |  7     ((■){■}(■■)*)((4/)5)    fail dotstar or empty
  1031   |  7     ((■){■}((■■)3){■})((■■)5)fail dotstar or empty
  1032   |  7     ((■){■}((■■)3){■})((■/)■)fail dotstar or empty
  1033   |  7     ((■){■}((■)3){■})((■/)5)fail dotstar or empty
  1034   |  7     ((■){■}((■■)3){■})((4■)■)fail dotstar or empty
  1035   |  7     ((■){■}((■)3){■})((4■)5)fail dotstar or empty
  1036   |  7     ((■){■}((■)3){■})((4/)■)fail dotstar or empty
  1037   |  7     ((■){■}(■3){■})((4/)5)  fail dotstar or empty
  1038   |  7     ((■){■}((■■)3)*)((■■)■) fail dot
  1039   |  7     ((■){■}((■)3)*)((■■)5)  fail dotstar or empty
  1040   |  7     ((■){■}((■■)3)*)((■)5)  fail dotstar or empty
  1041   |  7     ((■){■}((■)3)*)((■/)■)  fail dotstar or empty
  1042   |  7     ((■){■}(■3)*)((■/)5)    fail dotstar or empty
  1043   |  7     ((■){■}((■)3)*)((4■)■)  fail dotstar or empty
  1044   |  7     ((■){■}(■3)*)((4■)5)    fail dotstar or empty
  1045   |  7     ((■){■}(■3)*)((4/)■)    fail dotstar or empty
  1046   |  7     ((■){■}((■\-)■){■})((■■)5)fail dotstar or empty
  1047   |  7     ((■){■}((■\-)■){■})((■/)■)fail dotstar or empty
  1048   |  7     ((■){■}((■\-)■){■})((4■)■)fail dotstar or empty
  1049   |  7     ((■){■}((■\-)■)*)((■■)■)fail dot
  1050   |  7     ((■){■}((■\-)■)*)((■)5) fail dotstar or empty
  1051   |  7     ((■){■}((■\-)3){■})((■■)■)fail dot
  1052   |  7     ((■){■}((■\-)3){■})((■)5)fail dotstar or empty
  1053   |  7     ((■){■}((■\-)3)*)((■)■) fail dot
  1054   |  7     ((■■){■}((■\-)3)*)((■■)■)fail dot
  1055   |  7     (((■|■)){■}((■\-)3)*)((■■)■)fail dot
  1056   |  7     (((■){■}){■}((■\-)3)*)((■■)■)fail dot
  1057   |  7     ((■){■}(((■■)\-)3)*)((■■)■)fail dot
  1058   |  7     ((■){■}(((■|■)\-)3)*)((■■)■)fail dot
  1059   |  7     ((■){■}(((■){■}\-)3)*)((■■)■)fail dot
  1060   |  7     ((■){■}((■\-)3)*)(((■■)■)■)fail dot
  1061   |  7     ((■){■}((■\-)3)*)(((■|■)■)■)fail dot
  1062   |  7     ((■){■}((■\-)3)*)(((■){■}■)■)fail dot
  1063   |  7     ((■){■}((■\-)3)*)((■■)(■■))fail dot
  1064   |  7     ((■){■}((■\-)3)*)((■■)(■|■))fail dot
  1065   |  7     ((■){■}((■\-)3)*)((■■)(■){■})fail dot
  1066   |  7     ((■){■}((■\-)3)*)(■5)   fail dotstar or empty
  1067   |  7     ((■){■}((2■)■){■})((■■)5)fail dotstar or empty
  1068   |  7     ((■){■}((2■)■){■})((■/)■)fail dotstar or empty
  1069   |  7     ((■){■}((2■)■){■})((4■)■)fail dotstar or empty
  1070   |  7     ((■){■}((2■)■)*)((■■)■) fail dot
  1071   |  7     ((■){■}((2■)■)*)((■)5)  fail dotstar or empty
  1072   |  7     ((■){■}((2■)3){■})((■■)■)fail dot
  1073   |  7     ((■){■}((2■)3){■})((■)5)fail dotstar or empty
  1074   |  7     ((■){■}((2■)3)*)((■)■)  fail dot
  1075   |  7     ((■■){■}((2■)3)*)((■■)■)fail dot
  1076   |  7     (((■|■)){■}((2■)3)*)((■■)■)fail dot
  1077   |  7     (((■){■}){■}((2■)3)*)((■■)■)fail dot
  1078   |  7     ((■){■}((2(■■))3)*)((■■)■)fail dot
  1079   |  7     ((■){■}((2(■|■))3)*)((■■)■)fail dot
  1080   |  7     ((■){■}((2(■){■})3)*)((■■)■)fail dot
  1081   |  7     ((■){■}((2■)3)*)(((■■)■)■)fail dot
  1082   |  7     ((■){■}((2■)3)*)(((■|■)■)■)fail dot
  1083   |  7     ((■){■}((2■)3)*)(((■){■}■)■)fail dot
  1084   |  7     ((■){■}((2■)3)*)((■■)(■■))fail dot
  1085   |  7     ((■){■}((2■)3)*)((■■)(■|■))fail dot
  1086   |  7     ((■){■}((2■)3)*)((■■)(■){■})fail dot
  1087   |  7     ((■){■}((2■)3)*)(■5)    fail dotstar or empty
  1088   |  7     ((■){■}((2\-)■){■})((■■)■)fail dot
  1089   |  7     ((■){■}((2\-)■){■})((■)5)fail dotstar or empty
  1090   |  7     ((■){■}((2\-)■)*)((■)■) fail dot
  1091   |  7     ((■■){■}((2\-)■)*)((■■)■)fail dot
  1092   |  7     (((■|■)){■}((2\-)■)*)((■■)■)fail dot
  1093   |  7     (((■){■}){■}((2\-)■)*)((■■)■)fail dot
  1094   |  7     ((■){■}((2\-)(■■))*)((■■)■)fail dot
  1095   |  7     ((■){■}((2\-)(■|■))*)((■■)■)fail dot
  1096   |  7     ((■){■}((2\-)(■){■})*)((■■)■)fail dot
  1097   |  7     ((■){■}((2\-)■)*)(((■■)■)■)fail dot
  1098   |  7     ((■){■}((2\-)■)*)(((■|■)■)■)fail dot
  1099   |  7     ((■){■}((2\-)■)*)(((■){■}■)■)fail dot
  1100   |  7     ((■){■}((2\-)■)*)((■■)(■■))fail dot
  1101   |  7     ((■){■}((2\-)■)*)((■■)(■|■))fail dot
  1102   |  7     ((■){■}((2\-)■)*)((■■)(■){■})fail dot
  1103   |  7     ((■){■}((2\-)■)*)(■5)   fail dotstar or empty
  1104   |  7     ((■){■}■)((■■)■)        fail dot
  1105   |  7     ((■){■}((2\-)3){■})((■)■)fail dot
  1106   |  7     ((■■){■}((2\-)3){■})((■■)■)fail dot
  1107   |  7     (((■|■)){■}((2\-)3){■})((■■)■)fail dot
  1108   |  7     (((■){■}){■}((2\-)3){■})((■■)■)fail dot
  1109   |  7     ((■){■}((2\-)3){■})(((■■)■)■)fail dot
  1110   |  7     ((■){■}((2\-)3){■})(((■|■)■)■)fail dot
  1111   |  7     ((■){■}((2\-)3){■})(((■){■}■)■)fail dot
  1112   |  7     ((■){■}((2\-)3){■})((■■)(■■))fail dot
  1113   |  7     ((■){■}((2\-)3){■})((■■)(■|■))fail dot
  1114   |  7     ((■){■}((2\-)3){■})((■■)(■){■})fail dot
  1115   |  7     ((■){■}■)((■)5)         fail dotstar or empty
  1116   |  7     ((■){■}((2\-)3){■})(■5) fail dotstar or empty
  1117   |  7     ((■){■}((2\-)3)*)(■■)   fail dot
  1118   |  7     ((■■){■}((2\-)3)*)((■)■)fail dot
  1119   |  7     (((■|■)){■}((2\-)3)*)((■)■)fail dot
  1120   |  7     (((■){■}){■}((2\-)3)*)((■)■)fail dot
  1121   |  7     ((■){■}((2\-)3)*)(((■■))■)fail dot
  1122   |  7     ((■){■}((2\-)3)*)(((■|■))■)fail dot
  1123   |  7     ((■){■}((2\-)3)*)(((■){■})■)fail dot
  1124   |  7     (((■■)■){■}((2\-)3)*)((■■)■)fail dot
  1125   |  7     (((■|■)■){■}((2\-)3)*)((■■)■)fail dot
  1126   |  7     (((■){■}■){■}((2\-)3)*)((■■)■)fail dot
  1127   |  7     ((■■){■}((2\-)3)*)(((■■)■)■)fail dot
  1128   |  7     ((■■){■}((2\-)3)*)(((■|■)■)■)fail dot
  1129   |  7     ((■■){■}((2\-)3)*)(((■){■}■)■)fail dot
  1130   |  7     ((■■){■}((2\-)3)*)((■■)(■■))fail dot
  1131   |  7     ((■■){■}((2\-)3)*)((■■)(■|■))fail dot
  1132   |  7     ((■■){■}((2\-)3)*)((■■)(■){■})fail dot
  1133   |  7     (((■■|■)){■}((2\-)3)*)((■■)■)fail dot
  1134   |  7     ((((■|■)|■)){■}((2\-)3)*)((■■)■)fail dot
  1135   |  7     ((((■){■}|■)){■}((2\-)3)*)((■■)■)fail dot
  1136   |  7     (((■|■)){■}((2\-)3)*)(((■■)■)■)fail dot
  1137   |  7     (((■|■)){■}((2\-)3)*)(((■|■)■)■)fail dot
  1138   |  7     (((■|■)){■}((2\-)3)*)(((■){■}■)■)fail dot
  1139   |  7     (((■|■)){■}((2\-)3)*)((■■)(■■))fail dot
  1140   |  7     (((■|■)){■}((2\-)3)*)((■■)(■|■))fail dot
  1141   |  7     (((■|■)){■}((2\-)3)*)((■■)(■){■})fail dot
  1142   |  7     (((■■){■}){■}((2\-)3)*)((■■)■)fail dot
  1143   |  7     ((((■|■)){■}){■}((2\-)3)*)((■■)■)fail dot
  1144   |  7     ((((■){■}){■}){■}((2\-)3)*)((■■)■)fail dot
  1145   |  7     (((■){■}){■}((2\-)3)*)(((■■)■)■)fail dot
  1146   |  7     (((■){■}){■}((2\-)3)*)(((■|■)■)■)fail dot
  1147   |  7     (((■){■}){■}((2\-)3)*)(((■){■}■)■)fail dot
  1148   |  7     (((■){■}){■}((2\-)3)*)((■■)(■■))fail dot
  1149   |  7     (((■){■}){■}((2\-)3)*)((■■)(■|■))fail dot
  1150   |  7     (((■){■}){■}((2\-)3)*)((■■)(■){■})fail dot
  1151   |  7     ((■){■}((2\-)3)*)(((■)■)■)fail dot
  1152   |  7     ((■){■}((2\-)3)*)((((■■)■)■)■)fail dot
  1153   |  7     ((■){■}((2\-)3)*)((((■|■)■)■)■)fail dot
  1154   |  7     ((■){■}((2\-)3)*)((((■){■}■)■)■)fail dot
  1155   |  7     ((■){■}((2\-)3)*)(((■■)(■■))■)fail dot
  1156   |  7     ((■){■}((2\-)3)*)(((■■)(■|■))■)fail dot
  1157   |  7     ((■){■}((2\-)3)*)(((■■)(■){■})■)fail dot
  1158   |  7     ((■){■}((2\-)3)*)(((■■)■)(■■))fail dot
  1159   |  7     ((■){■}((2\-)3)*)(((■■)■)(■|■))fail dot
  1160   |  7     ((■){■}((2\-)3)*)(((■■)■)(■){■})fail dot
  1161   |  7     ((■){■}((2\-)3)*)(((■■|■)■)■)fail dot
  1162   |  7     ((■){■}((2\-)3)*)((((■|■)|■)■)■)fail dot
  1163   |  7     ((■){■}((2\-)3)*)((((■){■}|■)■)■)fail dot
  1164   |  7     ((■){■}((2\-)3)*)(((■|■)(■■))■)fail dot
  1165   |  7     ((■){■}((2\-)3)*)(((■|■)(■|■))■)fail dot
  1166   |  7     ((■){■}((2\-)3)*)(((■|■)(■){■})■)fail dot
  1167   |  7     ((■){■}((2\-)3)*)(((■|■)■)(■■))fail dot
  1168   |  7     ((■){■}((2\-)3)*)(((■|■)■)(■|■))fail dot
  1169   |  7     ((■){■}((2\-)3)*)(((■|■)■)(■){■})fail dot
  1170   |  7     ((■){■}((2\-)3)*)(((■■){■}■)■)fail dot
  1171   |  7     ((■){■}((2\-)3)*)((((■|■)){■}■)■)fail dot
  1172   |  7     ((■){■}((2\-)3)*)((((■){■}){■}■)■)fail dot
  1173   |  7     ((■){■}((2\-)3)*)(((■){■}(■■))■)fail dot
  1174   |  7     ((■){■}((2\-)3)*)(((■){■}(■|■))■)fail dot
  1175   |  7     ((■){■}((2\-)3)*)(((■){■}(■){■})■)fail dot
  1176   |  7     ((■){■}((2\-)3)*)(((■){■}■)(■■))fail dot
  1177   |  7     ((■){■}((2\-)3)*)(((■){■}■)(■|■))fail dot
  1178   |  7     ((■){■}((2\-)3)*)(((■){■}■)(■){■})fail dot
  1179   |  7     ((■){■}((2\-)3)*)((■■)(■))fail dot
  1180   |  7     ((■)+((■■)■){■})((■■)5) fail dotstar or empty
  1181   |  7     ((■)+((■■)■){■})((■/)■) fail dotstar or empty
  1182   |  7     ((■)+((■)■){■})((■/)5)  fail dotstar or empty
  1183   |  7     ((■)+((■■)■){■})((4■)■) fail dotstar or empty
  1184   |  7     ((■)+((■)■){■})((4■)5)  fail dotstar or empty
  1185   |  7     ((■)+((■)■){■})((4/)■)  fail dotstar or empty
  1186   |  7     ((■)+(■■){■})((4/)5)    fail dotstar or empty
  1187   |  7     ((■)+((■■)■)*)((■■)■)   fail dot
  1188   |  7     ((■)+((■)■)*)((■■)5)    fail dotstar or empty
  1189   |  7     ((■)+((■■)■)*)((■)5)    fail dotstar or empty
  1190   |  7     ((■)+((■)■)*)((■/)■)    fail dotstar or empty
  1191   |  7     ((■)+(■■)*)((■/)5)      fail dotstar or empty
  1192   |  7     ((■)+((■)■)*)((4■)■)    fail dotstar or empty
  1193   |  7     ((■)+(■■)*)((4■)5)      fail dotstar or empty
  1194   |  7     ((■)+(■■)*)((4/)■)      fail dotstar or empty
  1195   |  7     ((■)+(■)*)((4/)5)       fail dotstar or empty
  1196   |  7     ((■)+((■■)3){■})((■■)■) fail dot
  1197   |  7     ((■)+((■)3){■})((■■)5)  fail dotstar or empty
  1198   |  7     ((■)+((■■)3){■})((■)5)  fail dotstar or empty
  1199   |  7     ((■)+((■)3){■})((■/)■)  fail dotstar or empty
  1200   |  7     ((■)+(■3){■})((■/)5)    fail dotstar or empty
  1201   |  7     ((■)+((■)3){■})((4■)■)  fail dotstar or empty
  1202   |  7     ((■)+(■3){■})((4■)5)    fail dotstar or empty
  1203   |  7     ((■)+(■3){■})((4/)■)    fail dotstar or empty
  1204   |  7     ((■)+((■)3)*)((■■)■)    fail dot
  1205   |  7     ((■)+((■■)3)*)((■)■)    fail dot
  1206   |  7     ((■■)+((■■)3)*)((■■)■)  fail dot
  1207   |  7     (((■|■))+((■■)3)*)((■■)■)fail dot
  1208   |  7     (((■){■})+((■■)3)*)((■■)■)fail dot
  1209   |  7     ((■)+(((■■)■)3)*)((■■)■)fail dot
  1210   |  7     ((■)+(((■|■)■)3)*)((■■)■)fail dot
  1211   |  7     ((■)+(((■){■}■)3)*)((■■)■)fail dot
  1212   |  7     ((■)+((■(■■))3)*)((■■)■)fail dot
  1213   |  7     ((■)+((■(■|■))3)*)((■■)■)fail dot
  1214   |  7     ((■)+((■(■){■})3)*)((■■)■)fail dot
  1215   |  7     ((■)+((■■)3)*)(((■■)■)■)fail dot
  1216   |  7     ((■)+((■■)3)*)(((■|■)■)■)fail dot
  1217   |  7     ((■)+((■■)3)*)(((■){■}■)■)fail dot
  1218   |  7     ((■)+((■■)3)*)((■■)(■■))fail dot
  1219   |  7     ((■)+((■■)3)*)((■■)(■|■))fail dot
  1220   |  7     ((■)+((■■)3)*)((■■)(■){■})fail dot
  1221   |  7     ((■)+(■3)*)((■■)5)      fail dotstar or empty
  1222   |  7     ((■)+((■)3)*)((■)5)     fail dotstar or empty
  1223   |  7     ((■)+((■■)3)*)(■5)      fail dotstar or empty
  1224   |  7     ((■)+(■3)*)((■/)■)      fail dotstar or empty
  1225   |  7     ((■)+(■3)*)((4■)■)      fail dotstar or empty
  1226   |  7     ((■)+((■\-)■){■})((■■)■)fail dot
  1227   |  7     ((■)+((■\-)■){■})((■)5) fail dotstar or empty
  1228   |  7     ((■)+((■\-)■)*)((■)■)   fail dot
  1229   |  7     ((■■)+((■\-)■)*)((■■)■) fail dot
  1230   |  7     (((■|■))+((■\-)■)*)((■■)■)fail dot
  1231   |  7     (((■){■})+((■\-)■)*)((■■)■)fail dot
  1232   |  7     ((■)+(((■■)\-)■)*)((■■)■)fail dot
  1233   |  7     ((■)+(((■|■)\-)■)*)((■■)■)fail dot
  1234   |  7     ((■)+(((■){■}\-)■)*)((■■)■)fail dot
  1235   |  7     ((■)+((■\-)(■■))*)((■■)■)fail dot
  1236   |  7     ((■)+((■\-)(■|■))*)((■■)■)fail dot
  1237   |  7     ((■)+((■\-)(■){■})*)((■■)■)fail dot
  1238   |  7     ((■)+((■\-)■)*)(((■■)■)■)fail dot
  1239   |  7     ((■)+((■\-)■)*)(((■|■)■)■)fail dot
  1240   |  7     ((■)+((■\-)■)*)(((■){■}■)■)fail dot
  1241   |  7     ((■)+((■\-)■)*)((■■)(■■))fail dot
  1242   |  7     ((■)+((■\-)■)*)((■■)(■|■))fail dot
  1243   |  7     ((■)+((■\-)■)*)((■■)(■){■})fail dot
  1244   |  7     ((■)+((■\-)■)*)(■5)     fail dotstar or empty
  1245   |  7     ((■)+((■\-)3){■})((■)■) fail dot
  1246   |  7     ((■■)+((■\-)3){■})((■■)■)fail dot
  1247   |  7     (((■|■))+((■\-)3){■})((■■)■)fail dot
  1248   |  7     (((■){■})+((■\-)3){■})((■■)■)fail dot
  1249   |  7     ((■)+(((■■)\-)3){■})((■■)■)fail dot
  1250   |  7     ((■)+(((■|■)\-)3){■})((■■)■)fail dot
  1251   |  7     ((■)+(((■){■}\-)3){■})((■■)■)fail dot
  1252   |  7     ((■)+((■\-)3){■})(((■■)■)■)fail dot
  1253   |  7     ((■)+((■\-)3){■})(((■|■)■)■)fail dot
  1254   |  7     ((■)+((■\-)3){■})(((■){■}■)■)fail dot
  1255   |  7     ((■)+((■\-)3){■})((■■)(■■))fail dot
  1256   |  7     ((■)+((■\-)3){■})((■■)(■|■))fail dot
  1257   |  7     ((■)+((■\-)3){■})((■■)(■){■})fail dot
  1258   |  7     ((■)+((■\-)3){■})(■5)   fail dotstar or empty
  1259   |  7     ((■)+((■\-)3)*)(■■)     fail dot
  1260   |  7     ((■■)+((■\-)3)*)((■)■)  fail dot
  1261   |  7     (((■|■))+((■\-)3)*)((■)■)fail dot
  1262   |  7     (((■){■})+((■\-)3)*)((■)■)fail dot
  1263   |  7     ((■)+(((■■)\-)3)*)((■)■)fail dot
  1264   |  7     ((■)+(((■|■)\-)3)*)((■)■)fail dot
  1265   |  7     ((■)+(((■){■}\-)3)*)((■)■)fail dot
  1266   |  7     ((■)+((■\-)3)*)(((■■))■)fail dot
  1267   |  7     ((■)+((■\-)3)*)(((■|■))■)fail dot
  1268   |  7     ((■)+((■\-)3)*)(((■){■})■)fail dot
  1269   |  7     (((■■)■)+((■\-)3)*)((■■)■)fail dot
  1270   |  7     (((■|■)■)+((■\-)3)*)((■■)■)fail dot
  1271   |  7     (((■){■}■)+((■\-)3)*)((■■)■)fail dot
  1272   |  7     ((■(■■))+((■\-)3)*)((■■)■)fail dot
  1273   |  7     ((■(■|■))+((■\-)3)*)((■■)■)fail dot
  1274   |  7     ((■(■){■})+((■\-)3)*)((■■)■)fail dot
  1275   |  7     ((■■)+(((■■)\-)3)*)((■■)■)fail dot
  1276   |  7     ((■■)+(((■|■)\-)3)*)((■■)■)fail dot
  1277   |  7     ((■■)+(((■){■}\-)3)*)((■■)■)fail dot
  1278   |  7     ((■■)+((■\-)3)*)(((■■)■)■)fail dot
  1279   |  7     ((■■)+((■\-)3)*)(((■|■)■)■)fail dot
  1280   |  7     ((■■)+((■\-)3)*)(((■){■}■)■)fail dot
  1281   |  7     ((■■)+((■\-)3)*)((■■)(■■))fail dot
  1282   |  7     ((■■)+((■\-)3)*)((■■)(■|■))fail dot
  1283   |  7     ((■■)+((■\-)3)*)((■■)(■){■})fail dot
  1284   |  7     (((■■|■))+((■\-)3)*)((■■)■)fail dot
  1285   |  7     ((((■|■)|■))+((■\-)3)*)((■■)■)fail dot
  1286   |  7     ((((■){■}|■))+((■\-)3)*)((■■)■)fail dot
  1287   |  7     (((■|■■))+((■\-)3)*)((■■)■)fail dot
  1288   |  7     (((■|(■|■)))+((■\-)3)*)((■■)■)fail dot
  1289   |  7     (((■|(■){■}))+((■\-)3)*)((■■)■)fail dot
  1290   |  7     (((■|■))+(((■■)\-)3)*)((■■)■)fail dot
  1291   |  7     (((■|■))+(((■|■)\-)3)*)((■■)■)fail dot
  1292   |  7     (((■|■))+(((■){■}\-)3)*)((■■)■)fail dot
  1293   |  7     (((■|■))+((■\-)3)*)(((■■)■)■)fail dot
  1294   |  7     (((■|■))+((■\-)3)*)(((■|■)■)■)fail dot
  1295   |  7     (((■|■))+((■\-)3)*)(((■){■}■)■)fail dot
  1296   |  7     (((■|■))+((■\-)3)*)((■■)(■■))fail dot
  1297   |  7     (((■|■))+((■\-)3)*)((■■)(■|■))fail dot
  1298   |  7     (((■|■))+((■\-)3)*)((■■)(■){■})fail dot
  1299   |  7     (((■■){■})+((■\-)3)*)((■■)■)fail dot
  1300   |  7     ((((■|■)){■})+((■\-)3)*)((■■)■)fail dot
  1301   |  7     ((((■){■}){■})+((■\-)3)*)((■■)■)fail dot
  1302   |  7     (((■){■})+(((■■)\-)3)*)((■■)■)fail dot
  1303   |  7     (((■){■})+(((■|■)\-)3)*)((■■)■)fail dot
  1304   |  7     (((■){■})+(((■){■}\-)3)*)((■■)■)fail dot
  1305   |  7     (((■){■})+((■\-)3)*)(((■■)■)■)fail dot
  1306   |  7     (((■){■})+((■\-)3)*)(((■|■)■)■)fail dot
  1307   |  7     (((■){■})+((■\-)3)*)(((■){■}■)■)fail dot
  1308   |  7     (((■){■})+((■\-)3)*)((■■)(■■))fail dot
  1309   |  7     (((■){■})+((■\-)3)*)((■■)(■|■))fail dot
  1310   |  7     (((■){■})+((■\-)3)*)((■■)(■){■})fail dot
  1311   |  7     ((■)+(((■)\-)3)*)((■■)■)fail dot
  1312   |  7     ((■)+((((■■)■)\-)3)*)((■■)■)fail dot
  1313   |  7     ((■)+((((■|■)■)\-)3)*)((■■)■)fail dot
  1314   |  7     ((■)+((((■){■}■)\-)3)*)((■■)■)fail dot
  1315   |  7     ((■)+(((■(■■))\-)3)*)((■■)■)fail dot
  1316   |  7     ((■)+(((■(■|■))\-)3)*)((■■)■)fail dot
  1317   |  7     ((■)+(((■(■){■})\-)3)*)((■■)■)fail dot
  1318   |  7     ((■)+(((■■)\-)3)*)(((■■)■)■)fail dot
  1319   |  7     ((■)+(((■■)\-)3)*)(((■|■)■)■)fail dot
  1320   |  7     ((■)+(((■■)\-)3)*)(((■){■}■)■)fail dot
  1321   |  7     ((■)+(((■■)\-)3)*)((■■)(■■))fail dot
  1322   |  7     ((■)+(((■■)\-)3)*)((■■)(■|■))fail dot
  1323   |  7     ((■)+(((■■)\-)3)*)((■■)(■){■})fail dot
  1324   |  7     ((■)+(((■■|■)\-)3)*)((■■)■)fail dot
  1325   |  7     ((■)+((((■|■)|■)\-)3)*)((■■)■)fail dot
  1326   |  7     ((■)+((((■){■}|■)\-)3)*)((■■)■)fail dot
  1327   |  7     ((■)+(((■|■■)\-)3)*)((■■)■)fail dot
  1328   |  7     ((■)+(((■|(■|■))\-)3)*)((■■)■)fail dot
  1329   |  7     ((■)+(((■|(■){■})\-)3)*)((■■)■)fail dot
  1330   |  7     ((■)+(((■|■)\-)3)*)(((■■)■)■)fail dot
  1331   |  7     ((■)+(((■|■)\-)3)*)(((■|■)■)■)fail dot
  1332   |  7     ((■)+(((■|■)\-)3)*)(((■){■}■)■)fail dot
  1333   |  7     ((■)+(((■|■)\-)3)*)((■■)(■■))fail dot
  1334   |  7     ((■)+(((■|■)\-)3)*)((■■)(■|■))fail dot
  1335   |  7     ((■)+(((■|■)\-)3)*)((■■)(■){■})fail dot
  1336   |  7     ((■)+(((■■){■}\-)3)*)((■■)■)fail dot
  1337   |  7     ((■)+((((■|■)){■}\-)3)*)((■■)■)fail dot
  1338   |  7     ((■)+((((■){■}){■}\-)3)*)((■■)■)fail dot
  1339   |  7     ((■)+(((■){■}\-)3)*)(((■■)■)■)fail dot
  1340   |  7     ((■)+(((■){■}\-)3)*)(((■|■)■)■)fail dot
  1341   |  7     ((■)+(((■){■}\-)3)*)(((■){■}■)■)fail dot
  1342   |  7     ((■)+(((■){■}\-)3)*)((■■)(■■))fail dot
  1343   |  7     ((■)+(((■){■}\-)3)*)((■■)(■|■))fail dot
  1344   |  7     ((■)+(((■){■}\-)3)*)((■■)(■){■})fail dot
  1345   |  7     ((■)+((■\-)3)*)(((■)■)■)fail dot
  1346   |  7     ((■)+((■\-)3)*)((((■■)■)■)■)fail dot
  1347   |  7     ((■)+((■\-)3)*)((((■|■)■)■)■)fail dot
  1348   |  7     ((■)+((■\-)3)*)((((■){■}■)■)■)fail dot
  1349   |  7     ((■)+((■\-)3)*)(((■■)(■■))■)fail dot
  1350   |  7     ((■)+((■\-)3)*)(((■■)(■|■))■)fail dot
  1351   |  7     ((■)+((■\-)3)*)(((■■)(■){■})■)fail dot
  1352   |  7     ((■)+((■\-)3)*)(((■■)■)(■■))fail dot
  1353   |  7     ((■)+((■\-)3)*)(((■■)■)(■|■))fail dot
  1354   |  7     ((■)+((■\-)3)*)(((■■)■)(■){■})fail dot
  1355   |  7     ((■)+((■\-)3)*)(((■■|■)■)■)fail dot
  1356   |  7     ((■)+((■\-)3)*)((((■|■)|■)■)■)fail dot
  1357   |  7     ((■)+((■\-)3)*)((((■){■}|■)■)■)fail dot
  1358   |  7     ((■)+((■\-)3)*)(((■|■)(■■))■)fail dot
  1359   |  7     ((■)+((■\-)3)*)(((■|■)(■|■))■)fail dot
  1360   |  7     ((■)+((■\-)3)*)(((■|■)(■){■})■)fail dot
  1361   |  7     ((■)+((■\-)3)*)(((■|■)■)(■■))fail dot
  1362   |  7     ((■)+((■\-)3)*)(((■|■)■)(■|■))fail dot
  1363   |  7     ((■)+((■\-)3)*)(((■|■)■)(■){■})fail dot
  1364   |  7     ((■)+((■\-)3)*)(((■■){■}■)■)fail dot
  1365   |  7     ((■)+((■\-)3)*)((((■|■)){■}■)■)fail dot
  1366   |  7     ((■)+((■\-)3)*)((((■){■}){■}■)■)fail dot
  1367   |  7     ((■)+((■\-)3)*)(((■){■}(■■))■)fail dot
  1368   |  7     ((■)+((■\-)3)*)(((■){■}(■|■))■)fail dot
  1369   |  7     ((■)+((■\-)3)*)(((■){■}(■){■})■)fail dot
  1370   |  7     ((■)+((■\-)3)*)(((■){■}■)(■■))fail dot
  1371   |  7     ((■)+((■\-)3)*)(((■){■}■)(■|■))fail dot
  1372   |  7     ((■)+((■\-)3)*)(((■){■}■)(■){■})fail dot
  1373   |  7     ((■)+((■\-)3)*)((■■)(■))fail dot
  1374   |  7     ((■)+((2■)■){■})((■■)■) fail dot
  1375   |  7     ((■)+((2■)■){■})((■)5)  fail dotstar or empty
  1376   |  7     ((■)+((2■)■)*)((■)■)    fail dot
  1377   |  7     ((■■)+((2■)■)*)((■■)■)  fail dot
  1378   |  7     (((■|■))+((2■)■)*)((■■)■)fail dot
  1379   |  7     (((■){■})+((2■)■)*)((■■)■)fail dot
  1380   |  7     ((■)+((2(■■))■)*)((■■)■)fail dot
  1381   |  7     ((■)+((2(■|■))■)*)((■■)■)fail dot
  1382   |  7     ((■)+((2(■){■})■)*)((■■)■)fail dot
  1383   |  7     ((■)+((2■)(■■))*)((■■)■)fail dot
  1384   |  7     ((■)+((2■)(■|■))*)((■■)■)fail dot
  1385   |  7     ((■)+((2■)(■){■})*)((■■)■)fail dot
  1386   |  7     ((■)+((2■)■)*)(((■■)■)■)fail dot
  1387   |  7     ((■)+((2■)■)*)(((■|■)■)■)fail dot
  1388   |  7     ((■)+((2■)■)*)(((■){■}■)■)fail dot
  1389   |  7     ((■)+((2■)■)*)((■■)(■■))fail dot
  1390   |  7     ((■)+((2■)■)*)((■■)(■|■))fail dot
  1391   |  7     ((■)+((2■)■)*)((■■)(■){■})fail dot
  1392   |  7     ((■)+((2■)■)*)(■5)      fail dotstar or empty
  1393   |  7     ((■)+((2■)3){■})((■)■)  fail dot
  1394   |  7     ((■■)+((2■)3){■})((■■)■)fail dot
  1395   |  7     (((■|■))+((2■)3){■})((■■)■)fail dot
  1396   |  7     (((■){■})+((2■)3){■})((■■)■)fail dot
  1397   |  7     ((■)+((2(■■))3){■})((■■)■)fail dot
  1398   |  7     ((■)+((2(■|■))3){■})((■■)■)fail dot
  1399   |  7     ((■)+((2(■){■})3){■})((■■)■)fail dot
  1400   |  7     ((■)+((2■)3){■})(((■■)■)■)fail dot
  1401   |  7     ((■)+((2■)3){■})(((■|■)■)■)fail dot
  1402   |  7     ((■)+((2■)3){■})(((■){■}■)■)fail dot
  1403   |  7     ((■)+((2■)3){■})((■■)(■■))fail dot
  1404   |  7     ((■)+((2■)3){■})((■■)(■|■))fail dot
  1405   |  7     ((■)+((2■)3){■})((■■)(■){■})fail dot
  1406   |  7     ((■)+((2■)3){■})(■5)    fail dotstar or empty
  1407   |  7     ((■)+((2■)3)*)(■■)      fail dot
  1408   |  7     ((■■)+((2■)3)*)((■)■)   fail dot
  1409   |  7     (((■|■))+((2■)3)*)((■)■)fail dot
  1410   |  7     (((■){■})+((2■)3)*)((■)■)fail dot
  1411   |  7     ((■)+((2(■■))3)*)((■)■) fail dot
  1412   |  7     ((■)+((2(■|■))3)*)((■)■)fail dot
  1413   |  7     ((■)+((2(■){■})3)*)((■)■)fail dot
  1414   |  7     ((■)+((2■)3)*)(((■■))■) fail dot
  1415   |  7     ((■)+((2■)3)*)(((■|■))■)fail dot
  1416   |  7     ((■)+((2■)3)*)(((■){■})■)fail dot
  1417   |  7     (((■■)■)+((2■)3)*)((■■)■)fail dot
  1418   |  7     (((■|■)■)+((2■)3)*)((■■)■)fail dot
  1419   |  7     (((■){■}■)+((2■)3)*)((■■)■)fail dot
  1420   |  7     ((■(■■))+((2■)3)*)((■■)■)fail dot
  1421   |  7     ((■(■|■))+((2■)3)*)((■■)■)fail dot
  1422   |  7     ((■(■){■})+((2■)3)*)((■■)■)fail dot
  1423   |  7     ((■■)+((2(■■))3)*)((■■)■)fail dot
  1424   |  7     ((■■)+((2(■|■))3)*)((■■)■)fail dot
  1425   |  7     ((■■)+((2(■){■})3)*)((■■)■)fail dot
  1426   |  7     ((■■)+((2■)3)*)(((■■)■)■)fail dot
  1427   |  7     ((■■)+((2■)3)*)(((■|■)■)■)fail dot
  1428   |  7     ((■■)+((2■)3)*)(((■){■}■)■)fail dot
  1429   |  7     ((■■)+((2■)3)*)((■■)(■■))fail dot
  1430   |  7     ((■■)+((2■)3)*)((■■)(■|■))fail dot
  1431   |  7     ((■■)+((2■)3)*)((■■)(■){■})fail dot
  1432   |  7     (((■■|■))+((2■)3)*)((■■)■)fail dot
  1433   |  7     ((((■|■)|■))+((2■)3)*)((■■)■)fail dot
  1434   |  7     ((((■){■}|■))+((2■)3)*)((■■)■)fail dot
  1435   |  7     (((■|■■))+((2■)3)*)((■■)■)fail dot
  1436   |  7     (((■|(■|■)))+((2■)3)*)((■■)■)fail dot
  1437   |  7     (((■|(■){■}))+((2■)3)*)((■■)■)fail dot
  1438   |  7     (((■|■))+((2(■■))3)*)((■■)■)fail dot
  1439   |  7     (((■|■))+((2(■|■))3)*)((■■)■)fail dot
  1440   |  7     (((■|■))+((2(■){■})3)*)((■■)■)fail dot
  1441   |  7     (((■|■))+((2■)3)*)(((■■)■)■)fail dot
  1442   |  7     (((■|■))+((2■)3)*)(((■|■)■)■)fail dot
  1443   |  7     (((■|■))+((2■)3)*)(((■){■}■)■)fail dot
  1444   |  7     (((■|■))+((2■)3)*)((■■)(■■))fail dot
  1445   |  7     (((■|■))+((2■)3)*)((■■)(■|■))fail dot
  1446   |  7     (((■|■))+((2■)3)*)((■■)(■){■})fail dot
  1447   |  7     (((■■){■})+((2■)3)*)((■■)■)fail dot
  1448   |  7     ((((■|■)){■})+((2■)3)*)((■■)■)fail dot
  1449   |  7     ((((■){■}){■})+((2■)3)*)((■■)■)fail dot
  1450   |  7     (((■){■})+((2(■■))3)*)((■■)■)fail dot
  1451   |  7     (((■){■})+((2(■|■))3)*)((■■)■)fail dot
  1452   |  7     (((■){■})+((2(■){■})3)*)((■■)■)fail dot
  1453   |  7     (((■){■})+((2■)3)*)(((■■)■)■)fail dot
  1454   |  7     (((■){■})+((2■)3)*)(((■|■)■)■)fail dot
  1455   |  7     (((■){■})+((2■)3)*)(((■){■}■)■)fail dot
  1456   |  7     (((■){■})+((2■)3)*)((■■)(■■))fail dot
  1457   |  7     (((■){■})+((2■)3)*)((■■)(■|■))fail dot
  1458   |  7     (((■){■})+((2■)3)*)((■■)(■){■})fail dot
  1459   |  7     ((■)+((2(■))3)*)((■■)■) fail dot
  1460   |  7     ((■)+((2((■■)■))3)*)((■■)■)fail dot
  1461   |  7     ((■)+((2((■|■)■))3)*)((■■)■)fail dot
  1462   |  7     ((■)+((2((■){■}■))3)*)((■■)■)fail dot
  1463   |  7     ((■)+((2(■(■■)))3)*)((■■)■)fail dot
  1464   |  7     ((■)+((2(■(■|■)))3)*)((■■)■)fail dot
  1465   |  7     ((■)+((2(■(■){■}))3)*)((■■)■)fail dot
  1466   |  7     ((■)+((2(■■))3)*)(((■■)■)■)fail dot
  1467   |  7     ((■)+((2(■■))3)*)(((■|■)■)■)fail dot
  1468   |  7     ((■)+((2(■■))3)*)(((■){■}■)■)fail dot
  1469   |  7     ((■)+((2(■■))3)*)((■■)(■■))fail dot
  1470   |  7     ((■)+((2(■■))3)*)((■■)(■|■))fail dot
  1471   |  7     ((■)+((2(■■))3)*)((■■)(■){■})fail dot
  1472   |  7     ((■)+((2(■■|■))3)*)((■■)■)fail dot
  1473   |  7     ((■)+((2((■|■)|■))3)*)((■■)■)fail dot
  1474   |  7     ((■)+((2((■){■}|■))3)*)((■■)■)fail dot
  1475   |  7     ((■)+((2(■|■■))3)*)((■■)■)fail dot
  1476   |  7     ((■)+((2(■|(■|■)))3)*)((■■)■)fail dot
  1477   |  7     ((■)+((2(■|(■){■}))3)*)((■■)■)fail dot
  1478   |  7     ((■)+((2(■|■))3)*)(((■■)■)■)fail dot
  1479   |  7     ((■)+((2(■|■))3)*)(((■|■)■)■)fail dot
  1480   |  7     ((■)+((2(■|■))3)*)(((■){■}■)■)fail dot
  1481   |  7     ((■)+((2(■|■))3)*)((■■)(■■))fail dot
  1482   |  7     ((■)+((2(■|■))3)*)((■■)(■|■))fail dot
  1483   |  7     ((■)+((2(■|■))3)*)((■■)(■){■})fail dot
  1484   |  7     ((■)+((2(■■){■})3)*)((■■)■)fail dot
  1485   |  7     ((■)+((2((■|■)){■})3)*)((■■)■)fail dot
  1486   |  7     ((■)+((2((■){■}){■})3)*)((■■)■)fail dot
  1487   |  7     ((■)+((2(■){■})3)*)(((■■)■)■)fail dot
  1488   |  7     ((■)+((2(■){■})3)*)(((■|■)■)■)fail dot
  1489   |  7     ((■)+((2(■){■})3)*)(((■){■}■)■)fail dot
  1490   |  7     ((■)+((2(■){■})3)*)((■■)(■■))fail dot
  1491   |  7     ((■)+((2(■){■})3)*)((■■)(■|■))fail dot
  1492   |  7     ((■)+((2(■){■})3)*)((■■)(■){■})fail dot
  1493   |  7     ((■)+((2■)3)*)(((■)■)■) fail dot
  1494   |  7     ((■)+((2■)3)*)((((■■)■)■)■)fail dot
  1495   |  7     ((■)+((2■)3)*)((((■|■)■)■)■)fail dot
  1496   |  7     ((■)+((2■)3)*)((((■){■}■)■)■)fail dot
  1497   |  7     ((■)+((2■)3)*)(((■■)(■■))■)fail dot
  1498   |  7     ((■)+((2■)3)*)(((■■)(■|■))■)fail dot
  1499   |  7     ((■)+((2■)3)*)(((■■)(■){■})■)fail dot
  1500   |  7     ((■)+((2■)3)*)(((■■)■)(■■))fail dot
  1501   |  7     ((■)+((2■)3)*)(((■■)■)(■|■))fail dot
  1502   |  7     ((■)+((2■)3)*)(((■■)■)(■){■})fail dot
  1503   |  7     ((■)+((2■)3)*)(((■■|■)■)■)fail dot
  1504   |  7     ((■)+((2■)3)*)((((■|■)|■)■)■)fail dot
  1505   |  7     ((■)+((2■)3)*)((((■){■}|■)■)■)fail dot
  1506   |  7     ((■)+((2■)3)*)(((■|■)(■■))■)fail dot
  1507   |  7     ((■)+((2■)3)*)(((■|■)(■|■))■)fail dot
  1508   |  7     ((■)+((2■)3)*)(((■|■)(■){■})■)fail dot
  1509   |  7     ((■)+((2■)3)*)(((■|■)■)(■■))fail dot
  1510   |  7     ((■)+((2■)3)*)(((■|■)■)(■|■))fail dot
  1511   |  7     ((■)+((2■)3)*)(((■|■)■)(■){■})fail dot
  1512   |  7     ((■)+((2■)3)*)(((■■){■}■)■)fail dot
  1513   |  7     ((■)+((2■)3)*)((((■|■)){■}■)■)fail dot
  1514   |  7     ((■)+((2■)3)*)((((■){■}){■}■)■)fail dot
  1515   |  7     ((■)+((2■)3)*)(((■){■}(■■))■)fail dot
  1516   |  7     ((■)+((2■)3)*)(((■){■}(■|■))■)fail dot
  1517   |  7     ((■)+((2■)3)*)(((■){■}(■){■})■)fail dot
  1518   |  7     ((■)+((2■)3)*)(((■){■}■)(■■))fail dot
  1519   |  7     ((■)+((2■)3)*)(((■){■}■)(■|■))fail dot
  1520   |  7     ((■)+((2■)3)*)(((■){■}■)(■){■})fail dot
  1521   |  7     ((■)+((2■)3)*)((■■)(■)) fail dot
  1522   |  7     ((■)+((2\-)■){■})((■)■) fail dot
  1523   |  7     ((■■)+((2\-)■){■})((■■)■)fail dot
  1524   |  7     (((■|■))+((2\-)■){■})((■■)■)fail dot
  1525   |  7     (((■){■})+((2\-)■){■})((■■)■)fail dot
  1526   |  7     ((■)+((2\-)(■■)){■})((■■)■)fail dot
  1527   |  7     ((■)+((2\-)(■|■)){■})((■■)■)fail dot
  1528   |  7     ((■)+((2\-)(■){■}){■})((■■)■)fail dot
  1529   |  7     ((■)+((2\-)■){■})(((■■)■)■)fail dot
  1530   |  7     ((■)+((2\-)■){■})(((■|■)■)■)fail dot
  1531   |  7     ((■)+((2\-)■){■})(((■){■}■)■)fail dot
  1532   |  7     ((■)+((2\-)■){■})((■■)(■■))fail dot
  1533   |  7     ((■)+((2\-)■){■})((■■)(■|■))fail dot
  1534   |  7     ((■)+((2\-)■){■})((■■)(■){■})fail dot
  1535   |  7     ((■)+((2\-)■){■})(■5)   fail dotstar or empty
  1536   |  7     ((■)+((2\-)■)*)(■■)     fail dot
  1537   |  7     ((■■)+((2\-)■)*)((■)■)  fail dot
  1538   |  7     (((■|■))+((2\-)■)*)((■)■)fail dot
  1539   |  7     (((■){■})+((2\-)■)*)((■)■)fail dot
  1540   |  7     ((■)+((2\-)(■■))*)((■)■)fail dot
  1541   |  7     ((■)+((2\-)(■|■))*)((■)■)fail dot
  1542   |  7     ((■)+((2\-)(■){■})*)((■)■)fail dot
  1543   |  7     ((■)+((2\-)■)*)(((■■))■)fail dot
  1544   |  7     ((■)+((2\-)■)*)(((■|■))■)fail dot
  1545   |  7     ((■)+((2\-)■)*)(((■){■})■)fail dot
  1546   |  7     (((■■)■)+((2\-)■)*)((■■)■)fail dot
  1547   |  7     (((■|■)■)+((2\-)■)*)((■■)■)fail dot
  1548   |  7     (((■){■}■)+((2\-)■)*)((■■)■)fail dot
  1549   |  7     ((■(■■))+((2\-)■)*)((■■)■)fail dot
  1550   |  7     ((■(■|■))+((2\-)■)*)((■■)■)fail dot
  1551   |  7     ((■(■){■})+((2\-)■)*)((■■)■)fail dot
  1552   |  7     ((■■)+((2\-)(■■))*)((■■)■)fail dot
  1553   |  7     ((■■)+((2\-)(■|■))*)((■■)■)fail dot
  1554   |  7     ((■■)+((2\-)(■){■})*)((■■)■)fail dot
  1555   |  7     ((■■)+((2\-)■)*)(((■■)■)■)fail dot
  1556   |  7     ((■■)+((2\-)■)*)(((■|■)■)■)fail dot
  1557   |  7     ((■■)+((2\-)■)*)(((■){■}■)■)fail dot
  1558   |  7     ((■■)+((2\-)■)*)((■■)(■■))fail dot
  1559   |  7     ((■■)+((2\-)■)*)((■■)(■|■))fail dot
  1560   |  7     ((■■)+((2\-)■)*)((■■)(■){■})fail dot
  1561   |  7     (((■■|■))+((2\-)■)*)((■■)■)fail dot
  1562   |  7     ((((■|■)|■))+((2\-)■)*)((■■)■)fail dot
  1563   |  7     ((((■){■}|■))+((2\-)■)*)((■■)■)fail dot
  1564   |  7     (((■|■■))+((2\-)■)*)((■■)■)fail dot
  1565   |  7     (((■|(■|■)))+((2\-)■)*)((■■)■)fail dot
  1566   |  7     (((■|(■){■}))+((2\-)■)*)((■■)■)fail dot
  1567   |  7     (((■|■))+((2\-)(■■))*)((■■)■)fail dot
  1568   |  7     (((■|■))+((2\-)(■|■))*)((■■)■)fail dot
  1569   |  7     (((■|■))+((2\-)(■){■})*)((■■)■)fail dot
  1570   |  7     (((■|■))+((2\-)■)*)(((■■)■)■)fail dot
  1571   |  7     (((■|■))+((2\-)■)*)(((■|■)■)■)fail dot
  1572   |  7     (((■|■))+((2\-)■)*)(((■){■}■)■)fail dot
  1573   |  7     (((■|■))+((2\-)■)*)((■■)(■■))fail dot
  1574   |  7     (((■|■))+((2\-)■)*)((■■)(■|■))fail dot
  1575   |  7     (((■|■))+((2\-)■)*)((■■)(■){■})fail dot
  1576   |  7     (((■■){■})+((2\-)■)*)((■■)■)fail dot
  1577   |  7     ((((■|■)){■})+((2\-)■)*)((■■)■)fail dot
  1578   |  7     ((((■){■}){■})+((2\-)■)*)((■■)■)fail dot
  1579   |  7     (((■){■})+((2\-)(■■))*)((■■)■)fail dot
  1580   |  7     (((■){■})+((2\-)(■|■))*)((■■)■)fail dot
  1581   |  7     (((■){■})+((2\-)(■){■})*)((■■)■)fail dot
  1582   |  7     (((■){■})+((2\-)■)*)(((■■)■)■)fail dot
  1583   |  7     (((■){■})+((2\-)■)*)(((■|■)■)■)fail dot
  1584   |  7     (((■){■})+((2\-)■)*)(((■){■}■)■)fail dot
  1585   |  7     (((■){■})+((2\-)■)*)((■■)(■■))fail dot
  1586   |  7     (((■){■})+((2\-)■)*)((■■)(■|■))fail dot
  1587   |  7     (((■){■})+((2\-)■)*)((■■)(■){■})fail dot
  1588   |  7     ((■)+((2\-)(■))*)((■■)■)fail dot
  1589   |  7     ((■)+((2\-)((■■)■))*)((■■)■)fail dot
  1590   |  7     ((■)+((2\-)((■|■)■))*)((■■)■)fail dot
  1591   |  7     ((■)+((2\-)((■){■}■))*)((■■)■)fail dot
  1592   |  7     ((■)+((2\-)(■(■■)))*)((■■)■)fail dot
  1593   |  7     ((■)+((2\-)(■(■|■)))*)((■■)■)fail dot
  1594   |  7     ((■)+((2\-)(■(■){■}))*)((■■)■)fail dot
  1595   |  7     ((■)+((2\-)(■■))*)(((■■)■)■)fail dot
  1596   |  7     ((■)+((2\-)(■■))*)(((■|■)■)■)fail dot
  1597   |  7     ((■)+((2\-)(■■))*)(((■){■}■)■)fail dot
  1598   |  7     ((■)+((2\-)(■■))*)((■■)(■■))fail dot
  1599   |  7     ((■)+((2\-)(■■))*)((■■)(■|■))fail dot
  1600   |  7     ((■)+((2\-)(■■))*)((■■)(■){■})fail dot
  1601   |  7     ((■)+((2\-)(■■|■))*)((■■)■)fail dot
  1602   |  7     ((■)+((2\-)((■|■)|■))*)((■■)■)fail dot
  1603   |  7     ((■)+((2\-)((■){■}|■))*)((■■)■)fail dot
  1604   |  7     ((■)+((2\-)(■|■■))*)((■■)■)fail dot
  1605   |  7     ((■)+((2\-)(■|(■|■)))*)((■■)■)fail dot
  1606   |  7     ((■)+((2\-)(■|(■){■}))*)((■■)■)fail dot
  1607   |  7     ((■)+((2\-)(■|■))*)(((■■)■)■)fail dot
  1608   |  7     ((■)+((2\-)(■|■))*)(((■|■)■)■)fail dot
  1609   |  7     ((■)+((2\-)(■|■))*)(((■){■}■)■)fail dot
  1610   |  7     ((■)+((2\-)(■|■))*)((■■)(■■))fail dot
  1611   |  7     ((■)+((2\-)(■|■))*)((■■)(■|■))fail dot
  1612   |  7     ((■)+((2\-)(■|■))*)((■■)(■){■})fail dot
  1613   |  7     ((■)+((2\-)(■■){■})*)((■■)■)fail dot
  1614   |  7     ((■)+((2\-)((■|■)){■})*)((■■)■)fail dot
  1615   |  7     ((■)+((2\-)((■){■}){■})*)((■■)■)fail dot
  1616   |  7     ((■)+((2\-)(■){■})*)(((■■)■)■)fail dot
  1617   |  7     ((■)+((2\-)(■){■})*)(((■|■)■)■)fail dot
  1618   |  7     ((■)+((2\-)(■){■})*)(((■){■}■)■)fail dot
  1619   |  7     ((■)+((2\-)(■){■})*)((■■)(■■))fail dot
  1620   |  7     ((■)+((2\-)(■){■})*)((■■)(■|■))fail dot
  1621   |  7     ((■)+((2\-)(■){■})*)((■■)(■){■})fail dot
  1622   |  7     ((■)+((2\-)■)*)(((■)■)■)fail dot
  1623   |  7     ((■)+((2\-)■)*)((((■■)■)■)■)fail dot
  1624   |  7     ((■)+((2\-)■)*)((((■|■)■)■)■)fail dot
  1625   |  7     ((■)+((2\-)■)*)((((■){■}■)■)■)fail dot
  1626   |  7     ((■)+((2\-)■)*)(((■■)(■■))■)fail dot
  1627   |  7     ((■)+((2\-)■)*)(((■■)(■|■))■)fail dot
  1628   |  7     ((■)+((2\-)■)*)(((■■)(■){■})■)fail dot
  1629   |  7     ((■)+((2\-)■)*)(((■■)■)(■■))fail dot
  1630   |  7     ((■)+((2\-)■)*)(((■■)■)(■|■))fail dot
  1631   |  7     ((■)+((2\-)■)*)(((■■)■)(■){■})fail dot
  1632   |  7     ((■)+((2\-)■)*)(((■■|■)■)■)fail dot
  1633   |  7     ((■)+((2\-)■)*)((((■|■)|■)■)■)fail dot
  1634   |  7     ((■)+((2\-)■)*)((((■){■}|■)■)■)fail dot
  1635   |  7     ((■)+((2\-)■)*)(((■|■)(■■))■)fail dot
  1636   |  7     ((■)+((2\-)■)*)(((■|■)(■|■))■)fail dot
  1637   |  7     ((■)+((2\-)■)*)(((■|■)(■){■})■)fail dot
  1638   |  7     ((■)+((2\-)■)*)(((■|■)■)(■■))fail dot
  1639   |  7     ((■)+((2\-)■)*)(((■|■)■)(■|■))fail dot
  1640   |  7     ((■)+((2\-)■)*)(((■|■)■)(■){■})fail dot
  1641   |  7     ((■)+((2\-)■)*)(((■■){■}■)■)fail dot
  1642   |  7     ((■)+((2\-)■)*)((((■|■)){■}■)■)fail dot
  1643   |  7     ((■)+((2\-)■)*)((((■){■}){■}■)■)fail dot
  1644   |  7     ((■)+((2\-)■)*)(((■){■}(■■))■)fail dot
  1645   |  7     ((■)+((2\-)■)*)(((■){■}(■|■))■)fail dot
  1646   |  7     ((■)+((2\-)■)*)(((■){■}(■){■})■)fail dot
  1647   |  7     ((■)+((2\-)■)*)(((■){■}■)(■■))fail dot
  1648   |  7     ((■)+((2\-)■)*)(((■){■}■)(■|■))fail dot
  1649   |  7     ((■)+((2\-)■)*)(((■){■}■)(■){■})fail dot
  1650   |  7     ((■)+((2\-)■)*)((■■)(■))fail dot
  1651   |  7     ((■)+■)((■)■)           fail dot
  1652   |  7     ((■■)+■)((■■)■)         fail dot
  1653   |  7     (((■|■))+■)((■■)■)      fail dot
  1654   |  7     (((■){■})+■)((■■)■)     fail dot
  1655   |  7     ((■)+(■■))((■■)■)       fail dot
  1656   |  7     ((■)+(■|■))((■■)■)      fail dot
  1657   |  7     ((■)+(■){■})((■■)■)     fail dot
  1658   |  7     ((■)+■)(((■■)■)■)       fail dot
  1659   |  7     ((■)+■)(((■|■)■)■)      fail dot
  1660   |  7     ((■)+■)(((■){■}■)■)     fail dot
  1661   |  7     ((■)+■)((■■)(■■))       fail dot
  1662   |  7     ((■)+■)((■■)(■|■))      fail dot
  1663   |  7     ((■)+■)((■■)(■){■})     fail dot
  1664   |  7     ((■)+((2\-)3){■})(■■)   fail dot
  1665   |  7     ((■■)+((2\-)3){■})((■)■)fail dot
  1666   |  7     (((■|■))+((2\-)3){■})((■)■)fail dot
  1667   |  7     (((■){■})+((2\-)3){■})((■)■)fail dot
  1668   |  7     ((■)+((2\-)3){■})(((■■))■)fail dot
  1669   |  7     ((■)+((2\-)3){■})(((■|■))■)fail dot
  1670   |  7     ((■)+((2\-)3){■})(((■){■})■)fail dot
  1671   |  7     (((■■)■)+((2\-)3){■})((■■)■)fail dot
  1672   |  7     (((■|■)■)+((2\-)3){■})((■■)■)fail dot
  1673   |  7     (((■){■}■)+((2\-)3){■})((■■)■)fail dot
  1674   |  7     ((■(■■))+((2\-)3){■})((■■)■)fail dot
  1675   |  7     ((■(■|■))+((2\-)3){■})((■■)■)fail dot
  1676   |  7     ((■(■){■})+((2\-)3){■})((■■)■)fail dot
  1677   |  7     ((■■)+((2\-)3){■})(((■■)■)■)fail dot
  1678   |  7     ((■■)+((2\-)3){■})(((■|■)■)■)fail dot
  1679   |  7     ((■■)+((2\-)3){■})(((■){■}■)■)fail dot
  1680   |  7     ((■■)+((2\-)3){■})((■■)(■■))fail dot
  1681   |  7     ((■■)+((2\-)3){■})((■■)(■|■))fail dot
  1682   |  7     ((■■)+((2\-)3){■})((■■)(■){■})fail dot
  1683   |  7     (((■■|■))+((2\-)3){■})((■■)■)fail dot
  1684   |  7     ((((■|■)|■))+((2\-)3){■})((■■)■)fail dot
  1685   |  7     ((((■){■}|■))+((2\-)3){■})((■■)■)fail dot
  1686   |  7     (((■|■■))+((2\-)3){■})((■■)■)fail dot
  1687   |  7     (((■|(■|■)))+((2\-)3){■})((■■)■)fail dot
  1688   |  7     (((■|(■){■}))+((2\-)3){■})((■■)■)fail dot
  1689   |  7     (((■|■))+((2\-)3){■})(((■■)■)■)fail dot
  1690   |  7     (((■|■))+((2\-)3){■})(((■|■)■)■)fail dot
  1691   |  7     (((■|■))+((2\-)3){■})(((■){■}■)■)fail dot
  1692   |  7     (((■|■))+((2\-)3){■})((■■)(■■))fail dot
  1693   |  7     (((■|■))+((2\-)3){■})((■■)(■|■))fail dot
  1694   |  7     (((■|■))+((2\-)3){■})((■■)(■){■})fail dot
  1695   |  7     (((■■){■})+((2\-)3){■})((■■)■)fail dot
  1696   |  7     ((((■|■)){■})+((2\-)3){■})((■■)■)fail dot
  1697   |  7     ((((■){■}){■})+((2\-)3){■})((■■)■)fail dot
  1698   |  7     (((■){■})+((2\-)3){■})(((■■)■)■)fail dot
  1699   |  7     (((■){■})+((2\-)3){■})(((■|■)■)■)fail dot
  1700   |  7     (((■){■})+((2\-)3){■})(((■){■}■)■)fail dot
  1701   |  7     (((■){■})+((2\-)3){■})((■■)(■■))fail dot
  1702   |  7     (((■){■})+((2\-)3){■})((■■)(■|■))fail dot
  1703   |  7     (((■){■})+((2\-)3){■})((■■)(■){■})fail dot
  1704   |  7     ((■)+((2\-)3){■})(((■)■)■)fail dot
  1705   |  7     ((■)+((2\-)3){■})((((■■)■)■)■)fail dot
  1706   |  7     ((■)+((2\-)3){■})((((■|■)■)■)■)fail dot
  1707   |  7     ((■)+((2\-)3){■})((((■){■}■)■)■)fail dot
  1708   |  7     ((■)+((2\-)3){■})(((■■)(■■))■)fail dot
  1709   |  7     ((■)+((2\-)3){■})(((■■)(■|■))■)fail dot
  1710   |  7     ((■)+((2\-)3){■})(((■■)(■){■})■)fail dot
  1711   |  7     ((■)+((2\-)3){■})(((■■)■)(■■))fail dot
  1712   |  7     ((■)+((2\-)3){■})(((■■)■)(■|■))fail dot
  1713   |  7     ((■)+((2\-)3){■})(((■■)■)(■){■})fail dot
  1714   |  7     ((■)+((2\-)3){■})(((■■|■)■)■)fail dot
  1715   |  7     ((■)+((2\-)3){■})((((■|■)|■)■)■)fail dot
  1716   |  7     ((■)+((2\-)3){■})((((■){■}|■)■)■)fail dot
  1717   |  7     ((■)+((2\-)3){■})(((■|■)(■■))■)fail dot
  1718   |  7     ((■)+((2\-)3){■})(((■|■)(■|■))■)fail dot
  1719   |  7     ((■)+((2\-)3){■})(((■|■)(■){■})■)fail dot
  1720   |  7     ((■)+((2\-)3){■})(((■|■)■)(■■))fail dot
  1721   |  7     ((■)+((2\-)3){■})(((■|■)■)(■|■))fail dot
  1722   |  7     ((■)+((2\-)3){■})(((■|■)■)(■){■})fail dot
  1723   |  7     ((■)+((2\-)3){■})(((■■){■}■)■)fail dot
  1724   |  7     ((■)+((2\-)3){■})((((■|■)){■}■)■)fail dot
  1725   |  7     ((■)+((2\-)3){■})((((■){■}){■}■)■)fail dot
  1726   |  7     ((■)+((2\-)3){■})(((■){■}(■■))■)fail dot
  1727   |  7     ((■)+((2\-)3){■})(((■){■}(■|■))■)fail dot
  1728   |  7     ((■)+((2\-)3){■})(((■){■}(■){■})■)fail dot
  1729   |  7     ((■)+((2\-)3){■})(((■){■}■)(■■))fail dot
  1730   |  7     ((■)+((2\-)3){■})(((■){■}■)(■|■))fail dot
  1731   |  7     ((■)+((2\-)3){■})(((■){■}■)(■){■})fail dot
  1732   |  7     ((■)+((2\-)3){■})((■■)(■))fail dot
  1733   |  7     ((■)+■)(■5)             fail dotstar or empty
  1734   |  7     ((■)+((2\-)3)*)(■)      fail dot
  1735   |  7     ((■■)+((2\-)3)*)(■■)    fail dot
  1736   |  7     (((■|■))+((2\-)3)*)(■■) fail dot
  1737   |  7     (((■){■})+((2\-)3)*)(■■)fail dot
  1738   |  7     ((■)+((2\-)3)*)((■|■)■) fail dot
  1739   |  7     ((■)+((2\-)3)*)((■){■}■)fail dot
  1740   |  7     (((■■)■)+((2\-)3)*)((■)■)fail dot
  1741   |  7     (((■|■)■)+((2\-)3)*)((■)■)fail dot
  1742   |  7     (((■){■}■)+((2\-)3)*)((■)■)fail dot
  1743   |  7     ((■(■■))+((2\-)3)*)((■)■)fail dot
  1744   |  7     ((■(■|■))+((2\-)3)*)((■)■)fail dot
  1745   |  7     ((■(■){■})+((2\-)3)*)((■)■)fail dot
  1746   |  7     ((■■)+((2\-)3)*)(((■■))■)fail dot
  1747   |  7     ((■■)+((2\-)3)*)(((■|■))■)fail dot
  1748   |  7     ((■■)+((2\-)3)*)(((■){■})■)fail dot
  1749   |  7     (((■■|■))+((2\-)3)*)((■)■)fail dot
  1750   |  7     ((((■|■)|■))+((2\-)3)*)((■)■)fail dot
  1751   |  7     ((((■){■}|■))+((2\-)3)*)((■)■)fail dot
  1752   |  7     (((■|■■))+((2\-)3)*)((■)■)fail dot
  1753   |  7     (((■|(■|■)))+((2\-)3)*)((■)■)fail dot
  1754   |  7     (((■|(■){■}))+((2\-)3)*)((■)■)fail dot
  1755   |  7     (((■|■))+((2\-)3)*)(((■■))■)fail dot
  1756   |  7     (((■|■))+((2\-)3)*)(((■|■))■)fail dot
  1757   |  7     (((■|■))+((2\-)3)*)(((■){■})■)fail dot
  1758   |  7     (((■■){■})+((2\-)3)*)((■)■)fail dot
  1759   |  7     ((((■|■)){■})+((2\-)3)*)((■)■)fail dot
  1760   |  7     ((((■){■}){■})+((2\-)3)*)((■)■)fail dot
  1761   |  7     (((■){■})+((2\-)3)*)(((■■))■)fail dot
  1762   |  7     (((■){■})+((2\-)3)*)(((■|■))■)fail dot
  1763   |  7     (((■){■})+((2\-)3)*)(((■){■})■)fail dot
  1764   |  7     ((■)+((2\-)3)*)((((■■)■))■)fail dot
  1765   |  7     ((■)+((2\-)3)*)((((■|■)■))■)fail dot
  1766   |  7     ((■)+((2\-)3)*)((((■){■}■))■)fail dot
  1767   |  7     ((■)+((2\-)3)*)(((■■))(■■))fail dot
  1768   |  7     ((■)+((2\-)3)*)(((■■))(■|■))fail dot
  1769   |  7     ((■)+((2\-)3)*)(((■■))(■){■})fail dot
  1770   |  7     ((■)+((2\-)3)*)(((■■|■))■)fail dot
  1771   |  7     ((■)+((2\-)3)*)((((■|■)|■))■)fail dot
  1772   |  7     ((■)+((2\-)3)*)((((■){■}|■))■)fail dot
  1773   |  7     ((■)+((2\-)3)*)(((■|■))(■■))fail dot
  1774   |  7     ((■)+((2\-)3)*)(((■|■))(■|■))fail dot
  1775   |  7     ((■)+((2\-)3)*)(((■|■))(■){■})fail dot
  1776   |  7     ((■)+((2\-)3)*)(((■■){■})■)fail dot
  1777   |  7     ((■)+((2\-)3)*)((((■|■)){■})■)fail dot
  1778   |  7     ((■)+((2\-)3)*)((((■){■}){■})■)fail dot
  1779   |  7     ((■)+((2\-)3)*)(((■){■})(■■))fail dot
  1780   |  7     ((■)+((2\-)3)*)(((■){■})(■|■))fail dot
  1781   |  7     ((■)+((2\-)3)*)(((■){■})(■){■})fail dot
  1782   |  7     (((■)■)+((2\-)3)*)((■■)■)fail dot
  1783   |  7     ((((■■)■)■)+((2\-)3)*)((■■)■)fail dot
  1784   |  7     ((((■|■)■)■)+((2\-)3)*)((■■)■)fail dot
  1785   |  7     ((((■){■}■)■)+((2\-)3)*)((■■)■)fail dot
  1786   |  7     (((■(■■))■)+((2\-)3)*)((■■)■)fail dot
  1787   |  7     (((■(■|■))■)+((2\-)3)*)((■■)■)fail dot
  1788   |  7     (((■(■){■})■)+((2\-)3)*)((■■)■)fail dot
  1789   |  7     (((■■)(■■))+((2\-)3)*)((■■)■)fail dot
  1790   |  7     (((■■)(■|■))+((2\-)3)*)((■■)■)fail dot
  1791   |  7     (((■■)(■){■})+((2\-)3)*)((■■)■)fail dot
  1792   |  7     (((■■)■)+((2\-)3)*)(((■■)■)■)fail dot
  1793   |  7     (((■■)■)+((2\-)3)*)(((■|■)■)■)fail dot
  1794   |  7     (((■■)■)+((2\-)3)*)(((■){■}■)■)fail dot
  1795   |  7     (((■■)■)+((2\-)3)*)((■■)(■■))fail dot
  1796   |  7     (((■■)■)+((2\-)3)*)((■■)(■|■))fail dot
  1797   |  7     (((■■)■)+((2\-)3)*)((■■)(■){■})fail dot
  1798   |  7     (((■■|■)■)+((2\-)3)*)((■■)■)fail dot
  1799   |  7     ((((■|■)|■)■)+((2\-)3)*)((■■)■)fail dot
  1800   |  7     ((((■){■}|■)■)+((2\-)3)*)((■■)■)fail dot
  1801   |  7     (((■|■■)■)+((2\-)3)*)((■■)■)fail dot
  1802   |  7     (((■|(■|■))■)+((2\-)3)*)((■■)■)fail dot
  1803   |  7     (((■|(■){■})■)+((2\-)3)*)((■■)■)fail dot
  1804   |  7     (((■|■)(■■))+((2\-)3)*)((■■)■)fail dot
  1805   |  7     (((■|■)(■|■))+((2\-)3)*)((■■)■)fail dot
  1806   |  7     (((■|■)(■){■})+((2\-)3)*)((■■)■)fail dot
  1807   |  7     (((■|■)■)+((2\-)3)*)(((■■)■)■)fail dot
  1808   |  7     (((■|■)■)+((2\-)3)*)(((■|■)■)■)fail dot
  1809   |  7     (((■|■)■)+((2\-)3)*)(((■){■}■)■)fail dot
  1810   |  7     (((■|■)■)+((2\-)3)*)((■■)(■■))fail dot
  1811   |  7     (((■|■)■)+((2\-)3)*)((■■)(■|■))fail dot
  1812   |  7     (((■|■)■)+((2\-)3)*)((■■)(■){■})fail dot
  1813   |  7     (((■■){■}■)+((2\-)3)*)((■■)■)fail dot
  1814   |  7     ((((■|■)){■}■)+((2\-)3)*)((■■)■)fail dot
  1815   |  7     ((((■){■}){■}■)+((2\-)3)*)((■■)■)fail dot
  1816   |  7     (((■){■}(■■))+((2\-)3)*)((■■)■)fail dot
  1817   |  7     (((■){■}(■|■))+((2\-)3)*)((■■)■)fail dot
  1818   |  7     (((■){■}(■){■})+((2\-)3)*)((■■)■)fail dot
  1819   |  7     (((■){■}■)+((2\-)3)*)(((■■)■)■)fail dot
  1820   |  7     (((■){■}■)+((2\-)3)*)(((■|■)■)■)fail dot
  1821   |  7     (((■){■}■)+((2\-)3)*)(((■){■}■)■)fail dot
  1822   |  7     (((■){■}■)+((2\-)3)*)((■■)(■■))fail dot
  1823   |  7     (((■){■}■)+((2\-)3)*)((■■)(■|■))fail dot
  1824   |  7     (((■){■}■)+((2\-)3)*)((■■)(■){■})fail dot
  1825   |  7     ((■(■))+((2\-)3)*)((■■)■)fail dot
  1826   |  7     ((■((■■)■))+((2\-)3)*)((■■)■)fail dot
  1827   |  7     ((■((■|■)■))+((2\-)3)*)((■■)■)fail dot
  1828   |  7     ((■((■){■}■))+((2\-)3)*)((■■)■)fail dot
  1829   |  7     ((■(■(■■)))+((2\-)3)*)((■■)■)fail dot
  1830   |  7     ((■(■(■|■)))+((2\-)3)*)((■■)■)fail dot
  1831   |  7     ((■(■(■){■}))+((2\-)3)*)((■■)■)fail dot
  1832   |  7     ((■(■■))+((2\-)3)*)(((■■)■)■)fail dot
  1833   |  7     ((■(■■))+((2\-)3)*)(((■|■)■)■)fail dot
  1834   |  7     ((■(■■))+((2\-)3)*)(((■){■}■)■)fail dot
  1835   |  7     ((■(■■))+((2\-)3)*)((■■)(■■))fail dot
  1836   |  7     ((■(■■))+((2\-)3)*)((■■)(■|■))fail dot
  1837   |  7     ((■(■■))+((2\-)3)*)((■■)(■){■})fail dot
  1838   |  7     ((■(■■|■))+((2\-)3)*)((■■)■)fail dot
  1839   |  7     ((■((■|■)|■))+((2\-)3)*)((■■)■)fail dot
  1840   |  7     ((■((■){■}|■))+((2\-)3)*)((■■)■)fail dot
  1841   |  7     ((■(■|■■))+((2\-)3)*)((■■)■)fail dot
  1842   |  7     ((■(■|(■|■)))+((2\-)3)*)((■■)■)fail dot
  1843   |  7     ((■(■|(■){■}))+((2\-)3)*)((■■)■)fail dot
  1844   |  7     ((■(■|■))+((2\-)3)*)(((■■)■)■)fail dot
  1845   |  7     ((■(■|■))+((2\-)3)*)(((■|■)■)■)fail dot
  1846   |  7     ((■(■|■))+((2\-)3)*)(((■){■}■)■)fail dot
  1847   |  7     ((■(■|■))+((2\-)3)*)((■■)(■■))fail dot
  1848   |  7     ((■(■|■))+((2\-)3)*)((■■)(■|■))fail dot
  1849   |  7     ((■(■|■))+((2\-)3)*)((■■)(■){■})fail dot
  1850   |  7     ((■(■■){■})+((2\-)3)*)((■■)■)fail dot
  1851   |  7     ((■((■|■)){■})+((2\-)3)*)((■■)■)fail dot
  1852   |  7     ((■((■){■}){■})+((2\-)3)*)((■■)■)fail dot
  1853   |  7     ((■(■){■})+((2\-)3)*)(((■■)■)■)fail dot
  1854   |  7     ((■(■){■})+((2\-)3)*)(((■|■)■)■)fail dot
  1855   |  7     ((■(■){■})+((2\-)3)*)(((■){■}■)■)fail dot
  1856   |  7     ((■(■){■})+((2\-)3)*)((■■)(■■))fail dot
  1857   |  7     ((■(■){■})+((2\-)3)*)((■■)(■|■))fail dot
  1858   |  7     ((■(■){■})+((2\-)3)*)((■■)(■){■})fail dot
  1859   |  7     ((■■)+((2\-)3)*)(((■)■)■)fail dot
  1860   |  7     ((■■)+((2\-)3)*)((((■■)■)■)■)fail dot
  1861   |  7     ((■■)+((2\-)3)*)((((■|■)■)■)■)fail dot
  1862   |  7     ((■■)+((2\-)3)*)((((■){■}■)■)■)fail dot
  1863   |  7     ((■■)+((2\-)3)*)(((■■)(■■))■)fail dot
  1864   |  7     ((■■)+((2\-)3)*)(((■■)(■|■))■)fail dot
  1865   |  7     ((■■)+((2\-)3)*)(((■■)(■){■})■)fail dot
  1866   |  7     ((■■)+((2\-)3)*)(((■■)■)(■■))fail dot
  1867   |  7     ((■■)+((2\-)3)*)(((■■)■)(■|■))fail dot
  1868   |  7     ((■■)+((2\-)3)*)(((■■)■)(■){■})fail dot
  1869   |  7     ((■■)+((2\-)3)*)(((■■|■)■)■)fail dot
  1870   |  7     ((■■)+((2\-)3)*)((((■|■)|■)■)■)fail dot
  1871   |  7     ((■■)+((2\-)3)*)((((■){■}|■)■)■)fail dot
  1872   |  7     ((■■)+((2\-)3)*)(((■|■)(■■))■)fail dot
  1873   |  7     ((■■)+((2\-)3)*)(((■|■)(■|■))■)fail dot
  1874   |  7     ((■■)+((2\-)3)*)(((■|■)(■){■})■)fail dot
  1875   |  7     ((■■)+((2\-)3)*)(((■|■)■)(■■))fail dot
  1876   |  7     ((■■)+((2\-)3)*)(((■|■)■)(■|■))fail dot
  1877   |  7     ((■■)+((2\-)3)*)(((■|■)■)(■){■})fail dot
  1878   |  7     ((■■)+((2\-)3)*)(((■■){■}■)■)fail dot
  1879   |  7     ((■■)+((2\-)3)*)((((■|■)){■}■)■)fail dot
  1880   |  7     ((■■)+((2\-)3)*)((((■){■}){■}■)■)fail dot
  1881   |  7     ((■■)+((2\-)3)*)(((■){■}(■■))■)fail dot
  1882   |  7     ((■■)+((2\-)3)*)(((■){■}(■|■))■)fail dot
  1883   |  7     ((■■)+((2\-)3)*)(((■){■}(■){■})■)fail dot
  1884   |  7     ((■■)+((2\-)3)*)(((■){■}■)(■■))fail dot
  1885   |  7     ((■■)+((2\-)3)*)(((■){■}■)(■|■))fail dot
  1886   |  7     ((■■)+((2\-)3)*)(((■){■}■)(■){■})fail dot
  1887   |  7     ((■■)+((2\-)3)*)((■■)(■))fail dot
  1888   |  7     ((((■■)■|■))+((2\-)3)*)((■■)■)fail dot
  1889   |  7     ((((■|■)■|■))+((2\-)3)*)((■■)■)fail dot
  1890   |  7     ((((■){■}■|■))+((2\-)3)*)((■■)■)fail dot
  1891   |  7     (((■(■■)|■))+((2\-)3)*)((■■)■)fail dot
  1892   |  7     (((■(■|■)|■))+((2\-)3)*)((■■)■)fail dot
  1893   |  7     (((■(■){■}|■))+((2\-)3)*)((■■)■)fail dot
  1894   |  7     (((■■|■■))+((2\-)3)*)((■■)■)fail dot
  1895   |  7     (((■■|(■|■)))+((2\-)3)*)((■■)■)fail dot
  1896   |  7     (((■■|(■){■}))+((2\-)3)*)((■■)■)fail dot
  1897   |  7     (((■■|■))+((2\-)3)*)(((■■)■)■)fail dot
  1898   |  7     (((■■|■))+((2\-)3)*)(((■|■)■)■)fail dot
  1899   |  7     (((■■|■))+((2\-)3)*)(((■){■}■)■)fail dot
  1900   |  7     (((■■|■))+((2\-)3)*)((■■)(■■))fail dot
  1901   |  7     (((■■|■))+((2\-)3)*)((■■)(■|■))fail dot
  1902   |  7     (((■■|■))+((2\-)3)*)((■■)(■){■})fail dot
  1903   |  7     ((((■■|■)|■))+((2\-)3)*)((■■)■)fail dot
  1904   |  7     (((((■|■)|■)|■))+((2\-)3)*)((■■)■)fail dot
  1905   |  7     (((((■){■}|■)|■))+((2\-)3)*)((■■)■)fail dot
  1906   |  7     ((((■|■■)|■))+((2\-)3)*)((■■)■)fail dot
  1907   |  7     ((((■|(■|■))|■))+((2\-)3)*)((■■)■)fail dot
  1908   |  7     ((((■|(■){■})|■))+((2\-)3)*)((■■)■)fail dot
  1909   |  7     ((((■|■)|■■))+((2\-)3)*)((■■)■)fail dot
  1910   |  7     ((((■|■)|(■|■)))+((2\-)3)*)((■■)■)fail dot
  1911   |  7     ((((■|■)|(■){■}))+((2\-)3)*)((■■)■)fail dot
  1912   |  7     ((((■|■)|■))+((2\-)3)*)(((■■)■)■)fail dot
  1913   |  7     ((((■|■)|■))+((2\-)3)*)(((■|■)■)■)fail dot
  1914   |  7     ((((■|■)|■))+((2\-)3)*)(((■){■}■)■)fail dot
  1915   |  7     ((((■|■)|■))+((2\-)3)*)((■■)(■■))fail dot
  1916   |  7     ((((■|■)|■))+((2\-)3)*)((■■)(■|■))fail dot
  1917   |  7     ((((■|■)|■))+((2\-)3)*)((■■)(■){■})fail dot
  1918   |  7     ((((■■){■}|■))+((2\-)3)*)((■■)■)fail dot
  1919   |  7     (((((■|■)){■}|■))+((2\-)3)*)((■■)■)fail dot
  1920   |  7     (((((■){■}){■}|■))+((2\-)3)*)((■■)■)fail dot
  1921   |  7     ((((■){■}|■■))+((2\-)3)*)((■■)■)fail dot
  1922   |  7     ((((■){■}|(■|■)))+((2\-)3)*)((■■)■)fail dot
  1923   |  7     ((((■){■}|(■){■}))+((2\-)3)*)((■■)■)fail dot
  1924   |  7     ((((■){■}|■))+((2\-)3)*)(((■■)■)■)fail dot
  1925   |  7     ((((■){■}|■))+((2\-)3)*)(((■|■)■)■)fail dot
  1926   |  7     ((((■){■}|■))+((2\-)3)*)(((■){■}■)■)fail dot
  1927   |  7     ((((■){■}|■))+((2\-)3)*)((■■)(■■))fail dot
  1928   |  7     ((((■){■}|■))+((2\-)3)*)((■■)(■|■))fail dot
  1929   |  7     ((((■){■}|■))+((2\-)3)*)((■■)(■){■})fail dot
  1930   |  7     (((■|(■■)■))+((2\-)3)*)((■■)■)fail dot
  1931   |  7     (((■|(■|■)■))+((2\-)3)*)((■■)■)fail dot
  1932   |  7     (((■|(■){■}■))+((2\-)3)*)((■■)■)fail dot
  1933   |  7     (((■|■(■■)))+((2\-)3)*)((■■)■)fail dot
  1934   |  7     (((■|■(■|■)))+((2\-)3)*)((■■)■)fail dot
  1935   |  7     (((■|■(■){■}))+((2\-)3)*)((■■)■)fail dot
  1936   |  7     (((■|■■))+((2\-)3)*)(((■■)■)■)fail dot
  1937   |  7     (((■|■■))+((2\-)3)*)(((■|■)■)■)fail dot
  1938   |  7     (((■|■■))+((2\-)3)*)(((■){■}■)■)fail dot
  1939   |  7     (((■|■■))+((2\-)3)*)((■■)(■■))fail dot
  1940   |  7     (((■|■■))+((2\-)3)*)((■■)(■|■))fail dot
  1941   |  7     (((■|■■))+((2\-)3)*)((■■)(■){■})fail dot
  1942   |  7     (((■|(■■|■)))+((2\-)3)*)((■■)■)fail dot
  1943   |  7     (((■|((■|■)|■)))+((2\-)3)*)((■■)■)fail dot
  1944   |  7     (((■|((■){■}|■)))+((2\-)3)*)((■■)■)fail dot
  1945   |  7     (((■|(■|■■)))+((2\-)3)*)((■■)■)fail dot
  1946   |  7     (((■|(■|(■|■))))+((2\-)3)*)((■■)■)fail dot
  1947   |  7     (((■|(■|(■){■})))+((2\-)3)*)((■■)■)fail dot
  1948   |  7     (((■|(■|■)))+((2\-)3)*)(((■■)■)■)fail dot
  1949   |  7     (((■|(■|■)))+((2\-)3)*)(((■|■)■)■)fail dot
  1950   |  7     (((■|(■|■)))+((2\-)3)*)(((■){■}■)■)fail dot
  1951   |  7     (((■|(■|■)))+((2\-)3)*)((■■)(■■))fail dot
  1952   |  7     (((■|(■|■)))+((2\-)3)*)((■■)(■|■))fail dot
  1953   |  7     (((■|(■|■)))+((2\-)3)*)((■■)(■){■})fail dot
  1954   |  7     (((■|(■■){■}))+((2\-)3)*)((■■)■)fail dot
  1955   |  7     (((■|((■|■)){■}))+((2\-)3)*)((■■)■)fail dot
  1956   |  7     (((■|((■){■}){■}))+((2\-)3)*)((■■)■)fail dot
  1957   |  7     (((■|(■){■}))+((2\-)3)*)(((■■)■)■)fail dot
  1958   |  7     (((■|(■){■}))+((2\-)3)*)(((■|■)■)■)fail dot
  1959   |  7     (((■|(■){■}))+((2\-)3)*)(((■){■}■)■)fail dot
  1960   |  7     (((■|(■){■}))+((2\-)3)*)((■■)(■■))fail dot
  1961   |  7     (((■|(■){■}))+((2\-)3)*)((■■)(■|■))fail dot
  1962   |  7     (((■|(■){■}))+((2\-)3)*)((■■)(■){■})fail dot
  1963   |  7     (((■|■))+((2\-)3)*)(((■)■)■)fail dot
  1964   |  7     (((■|■))+((2\-)3)*)((((■■)■)■)■)fail dot
  1965   |  7     (((■|■))+((2\-)3)*)((((■|■)■)■)■)fail dot
  1966   |  7     (((■|■))+((2\-)3)*)((((■){■}■)■)■)fail dot
  1967   |  7     (((■|■))+((2\-)3)*)(((■■)(■■))■)fail dot
  1968   |  7     (((■|■))+((2\-)3)*)(((■■)(■|■))■)fail dot
  1969   |  7     (((■|■))+((2\-)3)*)(((■■)(■){■})■)fail dot
  1970   |  7     (((■|■))+((2\-)3)*)(((■■)■)(■■))fail dot
  1971   |  7     (((■|■))+((2\-)3)*)(((■■)■)(■|■))fail dot
  1972   |  7     (((■|■))+((2\-)3)*)(((■■)■)(■){■})fail dot
  1973   |  7     (((■|■))+((2\-)3)*)(((■■|■)■)■)fail dot
  1974   |  7     (((■|■))+((2\-)3)*)((((■|■)|■)■)■)fail dot
  1975   |  7     (((■|■))+((2\-)3)*)((((■){■}|■)■)■)fail dot
  1976   |  7     (((■|■))+((2\-)3)*)(((■|■)(■■))■)fail dot
  1977   |  7     (((■|■))+((2\-)3)*)(((■|■)(■|■))■)fail dot
  1978   |  7     (((■|■))+((2\-)3)*)(((■|■)(■){■})■)fail dot
  1979   |  7     (((■|■))+((2\-)3)*)(((■|■)■)(■■))fail dot
  1980   |  7     (((■|■))+((2\-)3)*)(((■|■)■)(■|■))fail dot
  1981   |  7     (((■|■))+((2\-)3)*)(((■|■)■)(■){■})fail dot
  1982   |  7     (((■|■))+((2\-)3)*)(((■■){■}■)■)fail dot
  1983   |  7     (((■|■))+((2\-)3)*)((((■|■)){■}■)■)fail dot
  1984   |  7     (((■|■))+((2\-)3)*)((((■){■}){■}■)■)fail dot
  1985   |  7     (((■|■))+((2\-)3)*)(((■){■}(■■))■)fail dot
  1986   |  7     (((■|■))+((2\-)3)*)(((■){■}(■|■))■)fail dot
  1987   |  7     (((■|■))+((2\-)3)*)(((■){■}(■){■})■)fail dot
  1988   |  7     (((■|■))+((2\-)3)*)(((■){■}■)(■■))fail dot
  1989   |  7     (((■|■))+((2\-)3)*)(((■){■}■)(■|■))fail dot
  1990   |  7     (((■|■))+((2\-)3)*)(((■){■}■)(■){■})fail dot
  1991   |  7     (((■|■))+((2\-)3)*)((■■)(■))fail dot
  1992   |  7     ((((■■)■){■})+((2\-)3)*)((■■)■)fail dot
  1993   |  7     ((((■|■)■){■})+((2\-)3)*)((■■)■)fail dot
  1994   |  7     ((((■){■}■){■})+((2\-)3)*)((■■)■)fail dot
  1995   |  7     (((■(■■)){■})+((2\-)3)*)((■■)■)fail dot
  1996   |  7     (((■(■|■)){■})+((2\-)3)*)((■■)■)fail dot
  1997   |  7     (((■(■){■}){■})+((2\-)3)*)((■■)■)fail dot
  1998   |  7     (((■■){■})+((2\-)3)*)(((■■)■)■)fail dot
  1999   |  7     (((■■){■})+((2\-)3)*)(((■|■)■)■)fail dot
  2000   |  7     (((■■){■})+((2\-)3)*)(((■){■}■)■)fail dot
  2001   |  7     (((■■){■})+((2\-)3)*)((■■)(■■))fail dot
  2002   |  7     (((■■){■})+((2\-)3)*)((■■)(■|■))fail dot
  2003   |  7     (((■■){■})+((2\-)3)*)((■■)(■){■})fail dot
  2004   |  7     ((((■■|■)){■})+((2\-)3)*)((■■)■)fail dot
  2005   |  7     (((((■|■)|■)){■})+((2\-)3)*)((■■)■)fail dot
  2006   |  7     (((((■){■}|■)){■})+((2\-)3)*)((■■)■)fail dot
  2007   |  7     ((((■|■■)){■})+((2\-)3)*)((■■)■)fail dot
  2008   |  7     ((((■|(■|■))){■})+((2\-)3)*)((■■)■)fail dot
  2009   |  7     ((((■|(■){■})){■})+((2\-)3)*)((■■)■)fail dot
  2010   |  7     ((((■|■)){■})+((2\-)3)*)(((■■)■)■)fail dot
  2011   |  7     ((((■|■)){■})+((2\-)3)*)(((■|■)■)■)fail dot
  2012   |  7     ((((■|■)){■})+((2\-)3)*)(((■){■}■)■)fail dot
  2013   |  7     ((((■|■)){■})+((2\-)3)*)((■■)(■■))fail dot
  2014   |  7     ((((■|■)){■})+((2\-)3)*)((■■)(■|■))fail dot
  2015   |  7     ((((■|■)){■})+((2\-)3)*)((■■)(■){■})fail dot
  2016   |  7     ((((■■){■}){■})+((2\-)3)*)((■■)■)fail dot
  2017   |  7     (((((■|■)){■}){■})+((2\-)3)*)((■■)■)fail dot
  2018   |  7     (((((■){■}){■}){■})+((2\-)3)*)((■■)■)fail dot
  2019   |  7     ((((■){■}){■})+((2\-)3)*)(((■■)■)■)fail dot
  2020   |  7     ((((■){■}){■})+((2\-)3)*)(((■|■)■)■)fail dot
  2021   |  7     ((((■){■}){■})+((2\-)3)*)(((■){■}■)■)fail dot
  2022   |  7     ((((■){■}){■})+((2\-)3)*)((■■)(■■))fail dot
  2023   |  7     ((((■){■}){■})+((2\-)3)*)((■■)(■|■))fail dot
  2024   |  7     ((((■){■}){■})+((2\-)3)*)((■■)(■){■})fail dot
  2025   |  7     (((■){■})+((2\-)3)*)(((■)■)■)fail dot
  2026   |  7     (((■){■})+((2\-)3)*)((((■■)■)■)■)fail dot
  2027   |  7     (((■){■})+((2\-)3)*)((((■|■)■)■)■)fail dot
  2028   |  7     (((■){■})+((2\-)3)*)((((■){■}■)■)■)fail dot
  2029   |  7     (((■){■})+((2\-)3)*)(((■■)(■■))■)fail dot
  2030   |  7     (((■){■})+((2\-)3)*)(((■■)(■|■))■)fail dot
  2031   |  7     (((■){■})+((2\-)3)*)(((■■)(■){■})■)fail dot
  2032   |  7     (((■){■})+((2\-)3)*)(((■■)■)(■■))fail dot
  2033   |  7     (((■){■})+((2\-)3)*)(((■■)■)(■|■))fail dot
  2034   |  7     (((■){■})+((2\-)3)*)(((■■)■)(■){■})fail dot
  2035   |  7     (((■){■})+((2\-)3)*)(((■■|■)■)■)fail dot
  2036   |  7     (((■){■})+((2\-)3)*)((((■|■)|■)■)■)fail dot
  2037   |  7     (((■){■})+((2\-)3)*)((((■){■}|■)■)■)fail dot
  2038   |  7     (((■){■})+((2\-)3)*)(((■|■)(■■))■)fail dot
  2039   |  7     (((■){■})+((2\-)3)*)(((■|■)(■|■))■)fail dot
  2040   |  7     (((■){■})+((2\-)3)*)(((■|■)(■){■})■)fail dot
  2041   |  7     (((■){■})+((2\-)3)*)(((■|■)■)(■■))fail dot
  2042   |  7     (((■){■})+((2\-)3)*)(((■|■)■)(■|■))fail dot
  2043   |  7     (((■){■})+((2\-)3)*)(((■|■)■)(■){■})fail dot
  2044   |  7     (((■){■})+((2\-)3)*)(((■■){■}■)■)fail dot
  2045   |  7     (((■){■})+((2\-)3)*)((((■|■)){■}■)■)fail dot
  2046   |  7     (((■){■})+((2\-)3)*)((((■){■}){■}■)■)fail dot
  2047   |  7     (((■){■})+((2\-)3)*)(((■){■}(■■))■)fail dot
  2048   |  7     (((■){■})+((2\-)3)*)(((■){■}(■|■))■)fail dot
  2049   |  7     (((■){■})+((2\-)3)*)(((■){■}(■){■})■)fail dot
  2050   |  7     (((■){■})+((2\-)3)*)(((■){■}■)(■■))fail dot
  2051   |  7     (((■){■})+((2\-)3)*)(((■){■}■)(■|■))fail dot
  2052   |  7     (((■){■})+((2\-)3)*)(((■){■}■)(■){■})fail dot
  2053   |  7     (((■){■})+((2\-)3)*)((■■)(■))fail dot
  2054   |  7     ((■)+((2\-)3)*)((((■■))■)■)fail dot
  2055   |  7     ((■)+((2\-)3)*)((((■|■))■)■)fail dot
  2056   |  7     ((■)+((2\-)3)*)((((■){■})■)■)fail dot
  2057   |  7     ((■)+((2\-)3)*)(((■)■)(■■))fail dot
  2058   |  7     ((■)+((2\-)3)*)(((■)■)(■|■))fail dot
  2059   |  7     ((■)+((2\-)3)*)(((■)■)(■){■})fail dot
  2060   |  7     ((■)+((2\-)3)*)((((■)■)■)■)fail dot
  2061   |  7     ((■)+((2\-)3)*)(((((■■)■)■)■)■)fail dot
  2062   |  7     ((■)+((2\-)3)*)(((((■|■)■)■)■)■)fail dot
  2063   |  7     ((■)+((2\-)3)*)(((((■){■}■)■)■)■)fail dot
  2064   |  7     ((■)+((2\-)3)*)((((■■)(■■))■)■)fail dot
  2065   |  7     ((■)+((2\-)3)*)((((■■)(■|■))■)■)fail dot
  2066   |  7     ((■)+((2\-)3)*)((((■■)(■){■})■)■)fail dot
  2067   |  7     ((■)+((2\-)3)*)((((■■)■)(■■))■)fail dot
  2068   |  7     ((■)+((2\-)3)*)((((■■)■)(■|■))■)fail dot
  2069   |  7     ((■)+((2\-)3)*)((((■■)■)(■){■})■)fail dot
  2070   |  7     ((■)+((2\-)3)*)((((■■)■)■)(■■))fail dot
  2071   |  7     ((■)+((2\-)3)*)((((■■)■)■)(■|■))fail dot
  2072   |  7     ((■)+((2\-)3)*)((((■■)■)■)(■){■})fail dot
  2073   |  7     ((■)+((2\-)3)*)((((■■|■)■)■)■)fail dot
  2074   |  7     ((■)+((2\-)3)*)(((((■|■)|■)■)■)■)fail dot
  2075   |  7     ((■)+((2\-)3)*)(((((■){■}|■)■)■)■)fail dot
  2076   |  7     ((■)+((2\-)3)*)((((■|■)(■■))■)■)fail dot
  2077   |  7     ((■)+((2\-)3)*)((((■|■)(■|■))■)■)fail dot
  2078   |  7     ((■)+((2\-)3)*)((((■|■)(■){■})■)■)fail dot
  2079   |  7     ((■)+((2\-)3)*)((((■|■)■)(■■))■)fail dot
  2080   |  7     ((■)+((2\-)3)*)((((■|■)■)(■|■))■)fail dot
  2081   |  7     ((■)+((2\-)3)*)((((■|■)■)(■){■})■)fail dot
  2082   |  7     ((■)+((2\-)3)*)((((■|■)■)■)(■■))fail dot
  2083   |  7     ((■)+((2\-)3)*)((((■|■)■)■)(■|■))fail dot
  2084   |  7     ((■)+((2\-)3)*)((((■|■)■)■)(■){■})fail dot
  2085   |  7     ((■)+((2\-)3)*)((((■■){■}■)■)■)fail dot
  2086   |  7     ((■)+((2\-)3)*)(((((■|■)){■}■)■)■)fail dot
  2087   |  7     ((■)+((2\-)3)*)(((((■){■}){■}■)■)■)fail dot
  2088   |  7     ((■)+((2\-)3)*)((((■){■}(■■))■)■)fail dot
  2089   |  7     ((■)+((2\-)3)*)((((■){■}(■|■))■)■)fail dot
  2090   |  7     ((■)+((2\-)3)*)((((■){■}(■){■})■)■)fail dot
  2091   |  7     ((■)+((2\-)3)*)((((■){■}■)(■■))■)fail dot
  2092   |  7     ((■)+((2\-)3)*)((((■){■}■)(■|■))■)fail dot
  2093   |  7     ((■)+((2\-)3)*)((((■){■}■)(■){■})■)fail dot
  2094   |  7     ((■)+((2\-)3)*)((((■){■}■)■)(■■))fail dot
  2095   |  7     ((■)+((2\-)3)*)((((■){■}■)■)(■|■))fail dot
  2096   |  7     ((■)+((2\-)3)*)((((■){■}■)■)(■){■})fail dot
  2097   |  7     ((■)+((2\-)3)*)(((■■)(■))■)fail dot
  2098   |  7     ((■)+((2\-)3)*)(((■■)(■■))(■■))fail dot
  2099   |  7     ((■)+((2\-)3)*)(((■■)(■■))(■|■))fail dot
  2100   |  7     ((■)+((2\-)3)*)(((■■)(■■))(■){■})fail dot
  2101   |  7     ((■)+((2\-)3)*)(((■■)(■|■))(■■))fail dot
  2102   |  7     ((■)+((2\-)3)*)(((■■)(■|■))(■|■))fail dot
  2103   |  7     ((■)+((2\-)3)*)(((■■)(■|■))(■){■})fail dot
  2104   |  7     ((■)+((2\-)3)*)(((■■)(■){■})(■■))fail dot
  2105   |  7     ((■)+((2\-)3)*)(((■■)(■){■})(■|■))fail dot
  2106   |  7     ((■)+((2\-)3)*)(((■■)(■){■})(■){■})fail dot
  2107   |  7     ((■)+((2\-)3)*)(((■■)■)(■))fail dot
  2108   |  7     ((■)+((2\-)3)*)(((■■)■)((■■)■))fail dot
  2109   |  7     ((■)+((2\-)3)*)(((■■)■)((■|■)■))fail dot
  2110   |  7     ((■)+((2\-)3)*)(((■■)■)((■){■}■))fail dot
  2111   |  7     ((■)+((2\-)3)*)(((■■)■)(■■|■))fail dot
  2112   |  7     ((■)+((2\-)3)*)(((■■)■)((■|■)|■))fail dot
  2113   |  7     ((■)+((2\-)3)*)(((■■)■)((■){■}|■))fail dot
  2114   |  7     ((■)+((2\-)3)*)(((■■)■)(■■){■})fail dot
  2115   |  7     ((■)+((2\-)3)*)(((■■)■)((■|■)){■})fail dot
  2116   |  7     ((■)+((2\-)3)*)(((■■)■)((■){■}){■})fail dot
  2117   |  7     ((■)+((2\-)3)*)((((■■)■|■)■)■)fail dot
  2118   |  7     ((■)+((2\-)3)*)((((■|■)■|■)■)■)fail dot
  2119   |  7     ((■)+((2\-)3)*)((((■){■}■|■)■)■)fail dot
  2120   |  7     ((■)+((2\-)3)*)(((■■|■■)■)■)fail dot
  2121   |  7     ((■)+((2\-)3)*)(((■■|(■|■))■)■)fail dot
  2122   |  7     ((■)+((2\-)3)*)(((■■|(■){■})■)■)fail dot
  2123   |  7     ((■)+((2\-)3)*)(((■■|■)(■■))■)fail dot
  2124   |  7     ((■)+((2\-)3)*)(((■■|■)(■|■))■)fail dot
  2125   |  7     ((■)+((2\-)3)*)(((■■|■)(■){■})■)fail dot
  2126   |  7     ((■)+((2\-)3)*)(((■■|■)■)(■■))fail dot
  2127   |  7     ((■)+((2\-)3)*)(((■■|■)■)(■|■))fail dot
  2128   |  7     ((■)+((2\-)3)*)(((■■|■)■)(■){■})fail dot
  2129   |  7     ((■)+((2\-)3)*)((((■■|■)|■)■)■)fail dot
  2130   |  7     ((■)+((2\-)3)*)(((((■|■)|■)|■)■)■)fail dot
  2131   |  7     ((■)+((2\-)3)*)(((((■){■}|■)|■)■)■)fail dot
  2132   |  7     ((■)+((2\-)3)*)((((■|■)|■■)■)■)fail dot
  2133   |  7     ((■)+((2\-)3)*)((((■|■)|(■|■))■)■)fail dot
  2134   |  7     ((■)+((2\-)3)*)((((■|■)|(■){■})■)■)fail dot
  2135   |  7     ((■)+((2\-)3)*)((((■|■)|■)(■■))■)fail dot
  2136   |  7     ((■)+((2\-)3)*)((((■|■)|■)(■|■))■)fail dot
  2137   |  7     ((■)+((2\-)3)*)((((■|■)|■)(■){■})■)fail dot
  2138   |  7     ((■)+((2\-)3)*)((((■|■)|■)■)(■■))fail dot
  2139   |  7     ((■)+((2\-)3)*)((((■|■)|■)■)(■|■))fail dot
  2140   |  7     ((■)+((2\-)3)*)((((■|■)|■)■)(■){■})fail dot
  2141   |  7     ((■)+((2\-)3)*)((((■■){■}|■)■)■)fail dot
  2142   |  7     ((■)+((2\-)3)*)(((((■|■)){■}|■)■)■)fail dot
  2143   |  7     ((■)+((2\-)3)*)(((((■){■}){■}|■)■)■)fail dot
  2144   |  7     ((■)+((2\-)3)*)((((■){■}|■■)■)■)fail dot
  2145   |  7     ((■)+((2\-)3)*)((((■){■}|(■|■))■)■)fail dot
  2146   |  7     ((■)+((2\-)3)*)((((■){■}|(■){■})■)■)fail dot
  2147   |  7     ((■)+((2\-)3)*)((((■){■}|■)(■■))■)fail dot
  2148   |  7     ((■)+((2\-)3)*)((((■){■}|■)(■|■))■)fail dot
  2149   |  7     ((■)+((2\-)3)*)((((■){■}|■)(■){■})■)fail dot
  2150   |  7     ((■)+((2\-)3)*)((((■){■}|■)■)(■■))fail dot
  2151   |  7     ((■)+((2\-)3)*)((((■){■}|■)■)(■|■))fail dot
  2152   |  7     ((■)+((2\-)3)*)((((■){■}|■)■)(■){■})fail dot
  2153   |  7     ((■)+((2\-)3)*)(((■|■)(■))■)fail dot
  2154   |  7     ((■)+((2\-)3)*)(((■|■)(■■))(■■))fail dot
  2155   |  7     ((■)+((2\-)3)*)(((■|■)(■■))(■|■))fail dot
  2156   |  7     ((■)+((2\-)3)*)(((■|■)(■■))(■){■})fail dot
  2157   |  7     ((■)+((2\-)3)*)(((■|■)(■|■))(■■))fail dot
  2158   |  7     ((■)+((2\-)3)*)(((■|■)(■|■))(■|■))fail dot
  2159   |  7     ((■)+((2\-)3)*)(((■|■)(■|■))(■){■})fail dot
  2160   |  7     ((■)+((2\-)3)*)(((■|■)(■){■})(■■))fail dot
  2161   |  7     ((■)+((2\-)3)*)(((■|■)(■){■})(■|■))fail dot
  2162   |  7     ((■)+((2\-)3)*)(((■|■)(■){■})(■){■})fail dot
  2163   |  7     ((■)+((2\-)3)*)(((■|■)■)(■))fail dot
  2164   |  7     ((■)+((2\-)3)*)(((■|■)■)((■■)■))fail dot
  2165   |  7     ((■)+((2\-)3)*)(((■|■)■)((■|■)■))fail dot
  2166   |  7     ((■)+((2\-)3)*)(((■|■)■)((■){■}■))fail dot
  2167   |  7     ((■)+((2\-)3)*)(((■|■)■)(■■|■))fail dot
  2168   |  7     ((■)+((2\-)3)*)(((■|■)■)((■|■)|■))fail dot
  2169   |  7     ((■)+((2\-)3)*)(((■|■)■)((■){■}|■))fail dot
  2170   |  7     ((■)+((2\-)3)*)(((■|■)■)(■■){■})fail dot
  2171   |  7     ((■)+((2\-)3)*)(((■|■)■)((■|■)){■})fail dot
  2172   |  7     ((■)+((2\-)3)*)(((■|■)■)((■){■}){■})fail dot
  2173   |  7     ((■)+((2\-)3)*)((((■■)■){■}■)■)fail dot
  2174   |  7     ((■)+((2\-)3)*)((((■|■)■){■}■)■)fail dot
  2175   |  7     ((■)+((2\-)3)*)((((■){■}■){■}■)■)fail dot
  2176   |  7     ((■)+((2\-)3)*)(((■■){■}(■■))■)fail dot
  2177   |  7     ((■)+((2\-)3)*)(((■■){■}(■|■))■)fail dot
  2178   |  7     ((■)+((2\-)3)*)(((■■){■}(■){■})■)fail dot
  2179   |  7     ((■)+((2\-)3)*)(((■■){■}■)(■■))fail dot
  2180   |  7     ((■)+((2\-)3)*)(((■■){■}■)(■|■))fail dot
  2181   |  7     ((■)+((2\-)3)*)(((■■){■}■)(■){■})fail dot
  2182   |  7     ((■)+((2\-)3)*)((((■■|■)){■}■)■)fail dot
  2183   |  7     ((■)+((2\-)3)*)(((((■|■)|■)){■}■)■)fail dot
  2184   |  7     ((■)+((2\-)3)*)(((((■){■}|■)){■}■)■)fail dot
  2185   |  7     ((■)+((2\-)3)*)((((■|■)){■}(■■))■)fail dot
  2186   |  7     ((■)+((2\-)3)*)((((■|■)){■}(■|■))■)fail dot
  2187   |  7     ((■)+((2\-)3)*)((((■|■)){■}(■){■})■)fail dot
  2188   |  7     ((■)+((2\-)3)*)((((■|■)){■}■)(■■))fail dot
  2189   |  7     ((■)+((2\-)3)*)((((■|■)){■}■)(■|■))fail dot
  2190   |  7     ((■)+((2\-)3)*)((((■|■)){■}■)(■){■})fail dot
  2191   |  7     ((■)+((2\-)3)*)((((■■){■}){■}■)■)fail dot
  2192   |  7     ((■)+((2\-)3)*)(((((■|■)){■}){■}■)■)fail dot
  2193   |  7     ((■)+((2\-)3)*)(((((■){■}){■}){■}■)■)fail dot
  2194   |  7     ((■)+((2\-)3)*)((((■){■}){■}(■■))■)fail dot
  2195   |  7     ((■)+((2\-)3)*)((((■){■}){■}(■|■))■)fail dot
  2196   |  7     ((■)+((2\-)3)*)((((■){■}){■}(■){■})■)fail dot
  2197   |  7     ((■)+((2\-)3)*)((((■){■}){■}■)(■■))fail dot
  2198   |  7     ((■)+((2\-)3)*)((((■){■}){■}■)(■|■))fail dot
  2199   |  7     ((■)+((2\-)3)*)((((■){■}){■}■)(■){■})fail dot
  2200   |  7     ((■)+((2\-)3)*)(((■){■}(■))■)fail dot
  2201   |  7     ((■)+((2\-)3)*)(((■){■}(■■))(■■))fail dot
  2202   |  7     ((■)+((2\-)3)*)(((■){■}(■■))(■|■))fail dot
  2203   |  7     ((■)+((2\-)3)*)(((■){■}(■■))(■){■})fail dot
  2204   |  7     ((■)+((2\-)3)*)(((■){■}(■|■))(■■))fail dot
  2205   |  7     ((■)+((2\-)3)*)(((■){■}(■|■))(■|■))fail dot
  2206   |  7     ((■)+((2\-)3)*)(((■){■}(■|■))(■){■})fail dot
  2207   |  7     ((■)+((2\-)3)*)(((■){■}(■){■})(■■))fail dot
  2208   |  7     ((■)+((2\-)3)*)(((■){■}(■){■})(■|■))fail dot
  2209   |  7     ((■)+((2\-)3)*)(((■){■}(■){■})(■){■})fail dot
  2210   |  7     ((■)+((2\-)3)*)(((■){■}■)(■))fail dot
  2211   |  7     ((■)+((2\-)3)*)(((■){■}■)((■■)■))fail dot
  2212   |  7     ((■)+((2\-)3)*)(((■){■}■)((■|■)■))fail dot
  2213   |  7     ((■)+((2\-)3)*)(((■){■}■)((■){■}■))fail dot
  2214   |  7     ((■)+((2\-)3)*)(((■){■}■)(■■|■))fail dot
  2215   |  7     ((■)+((2\-)3)*)(((■){■}■)((■|■)|■))fail dot
  2216   |  7     ((■)+((2\-)3)*)(((■){■}■)((■){■}|■))fail dot
  2217   |  7     ((■)+((2\-)3)*)(((■){■}■)(■■){■})fail dot
  2218   |  7     ((■)+((2\-)3)*)(((■){■}■)((■|■)){■})fail dot
  2219   |  7     ((■)+((2\-)3)*)(((■){■}■)((■){■}){■})fail dot
  2220   |  7     ((■)+((2\-)3)*)((■)(■)) fail dot
  2221   |  7     ((■)+((2\-)3)*)((■■)((■■)))fail dot
  2222   |  7     ((■)+((2\-)3)*)((■■)((■|■)))fail dot
  2223   |  7     ((■)+((2\-)3)*)((■■)((■){■}))fail dot
  2224   |  7     ((1){■}((■■)■){■})((■■)5)fail dotstar or empty
  2225   |  7     ((1){■}((■■)■){■})((■/)■)fail dotstar or empty
  2226   |  7     ((1){■}((■)■){■})((■/)5)fail dotstar or empty
  2227   |  7     ((1){■}((■■)■){■})((4■)■)fail dotstar or empty
  2228   |  7     ((1){■}((■)■){■})((4■)5)fail dotstar or empty
  2229   |  7     ((1){■}((■)■){■})((4/)■)fail dotstar or empty
  2230   |  7     ((1){■}(■■){■})((4/)5)  fail dotstar or empty
  2231   |  7     ((1){■}((■■)■)*)((■■)■) fail dot
  2232   |  7     (■((■■)■)*)((■■)5)      fail dotstar or empty
  2233   |  7     ((1){■}((■)■)*)((■■)5)  fail dotstar or empty
  2234   |  7     ((1){■}((■■)■)*)((■)5)  fail dotstar or empty
  2235   |  7     (■((■■)■)*)((■/)■)      fail dotstar or empty
  2236   |  7     ((1){■}((■)■)*)((■/)■)  fail dotstar or empty
  2237   |  7     (■((■)■)*)((■/)5)       fail dotstar or empty
  2238   |  7     ((1){■}(■■)*)((■/)5)    fail dotstar or empty
  2239   |  7     (■((■■)■)*)((4■)■)      fail dotstar or empty
  2240   |  7     ((1){■}((■)■)*)((4■)■)  fail dotstar or empty
  2241   |  7     (■((■)■)*)((4■)5)       fail dotstar or empty
  2242   |  7     ((1){■}(■■)*)((4■)5)    fail dotstar or empty
  2243   |  7     (■((■)■)*)((4/)■)       fail dotstar or empty
  2244   |  7     ((1){■}(■■)*)((4/)■)    fail dotstar or empty
  2245   |  7     (■(■■)*)((4/)5)         fail dotstar or empty
  2246   |  7     ((1){■}(■)*)((4/)5)     fail dotstar or empty
  2247   |  7     ((1){■}((■■)3){■})((■■)■)fail dot
  2248   |  7     (■((■■)3){■})((■■)5)    fail dotstar or empty
  2249   |  7     ((1){■}((■)3){■})((■■)5)fail dotstar or empty
  2250   |  7     ((1){■}((■■)3){■})((■)5)fail dotstar or empty
  2251   |  7     (■((■■)3){■})((■/)■)    fail dotstar or empty
  2252   |  7     ((1){■}((■)3){■})((■/)■)fail dotstar or empty
  2253   |  7     (■((■)3){■})((■/)5)     fail dotstar or empty
  2254   |  7     ((1){■}(■3){■})((■/)5)  fail dotstar or empty
  2255   |  7     (■((■■)3){■})((4■)■)    fail dotstar or empty
  2256   |  7     ((1){■}((■)3){■})((4■)■)fail dotstar or empty
  2257   |  7     (■((■)3){■})((4■)5)     fail dotstar or empty
  2258   |  7     ((1){■}(■3){■})((4■)5)  fail dotstar or empty
  2259   |  7     (■((■)3){■})((4/)■)     fail dotstar or empty
  2260   |  7     ((1){■}(■3){■})((4/)■)  fail dotstar or empty
  2261   |  7     (■(■3){■})((4/)5)       fail dotstar or empty
  2262   |  7     (■((■■)3)*)((■■)■)      fail dot
  2263   |  7     ((1){■}((■)3)*)((■■)■)  fail dot
  2264   |  7     ((1){■}((■■)3)*)((■)■)  fail dot
  2265   |  7     ((1){■}(((■■)■)3)*)((■■)■)fail dot
  2266   |  7     ((1){■}(((■|■)■)3)*)((■■)■)fail dot
  2267   |  7     ((1){■}(((■){■}■)3)*)((■■)■)fail dot
  2268   |  7     ((1){■}((■(■■))3)*)((■■)■)fail dot
  2269   |  7     ((1){■}((■(■|■))3)*)((■■)■)fail dot
  2270   |  7     ((1){■}((■(■){■})3)*)((■■)■)fail dot
  2271   |  7     ((1){■}((■■)3)*)(((■■)■)■)fail dot
  2272   |  7     ((1){■}((■■)3)*)(((■|■)■)■)fail dot
  2273   |  7     ((1){■}((■■)3)*)(((■){■}■)■)fail dot
  2274   |  7     ((1){■}((■■)3)*)((■■)(■■))fail dot
  2275   |  7     ((1){■}((■■)3)*)((■■)(■|■))fail dot
  2276   |  7     ((1){■}((■■)3)*)((■■)(■){■})fail dot
  2277   |  7     (■((■)3)*)((■■)5)       fail dotstar or empty
  2278   |  7     (■((■■)3)*)((■)5)       fail dotstar or empty
  2279   |  7     ((1){■}(■3)*)((■■)5)    fail dotstar or empty
  2280   |  7     ((1){■}((■)3)*)((■)5)   fail dotstar or empty
  2281   |  7     ((1){■}((■■)3)*)(■5)    fail dotstar or empty
  2282   |  7     (■((■)3)*)((■/)■)       fail dotstar or empty
  2283   |  7     ((1){■}(■3)*)((■/)■)    fail dotstar or empty
  2284   |  7     (■(■3)*)((■/)5)         fail dotstar or empty
  2285   |  7     (■((■)3)*)((4■)■)       fail dotstar or empty
  2286   |  7     ((1){■}(■3)*)((4■)■)    fail dotstar or empty
  2287   |  7     (■(■3)*)((4■)5)         fail dotstar or empty
  2288   |  7     (■(■3)*)((4/)■)         fail dotstar or empty
  2289   |  7     ((1){■}((■\-)■){■})((■■)■)fail dot
  2290   |  7     (■((■\-)■){■})((■■)5)   fail dotstar or empty
  2291   |  7     ((1){■}((■\-)■){■})((■)5)fail dotstar or empty
  2292   |  7     (■((■\-)■){■})((■/)■)   fail dotstar or empty
  2293   |  7     (■((■\-)■){■})((4■)■)   fail dotstar or empty
  2294   |  7     (■((■\-)■)*)((■■)■)     fail dot
  2295   |  7     ((1){■}((■\-)■)*)((■)■) fail dot
  2296   |  7     ((1){■}(((■■)\-)■)*)((■■)■)fail dot
  2297   |  7     ((1){■}(((■|■)\-)■)*)((■■)■)fail dot
  2298   |  7     ((1){■}(((■){■}\-)■)*)((■■)■)fail dot
  2299   |  7     ((1){■}((■\-)(■■))*)((■■)■)fail dot
  2300   |  7     ((1){■}((■\-)(■|■))*)((■■)■)fail dot
  2301   |  7     ((1){■}((■\-)(■){■})*)((■■)■)fail dot
  2302   |  7     ((1){■}((■\-)■)*)(((■■)■)■)fail dot
  2303   |  7     ((1){■}((■\-)■)*)(((■|■)■)■)fail dot
  2304   |  7     ((1){■}((■\-)■)*)(((■){■}■)■)fail dot
  2305   |  7     ((1){■}((■\-)■)*)((■■)(■■))fail dot
  2306   |  7     ((1){■}((■\-)■)*)((■■)(■|■))fail dot
  2307   |  7     ((1){■}((■\-)■)*)((■■)(■){■})fail dot
  2308   |  7     (■((■\-)■)*)((■)5)      fail dotstar or empty
  2309   |  7     ((1){■}((■\-)■)*)(■5)   fail dotstar or empty
  2310   |  7     (■((■\-)3){■})((■■)■)   fail dot
  2311   |  7     ((1){■}((■\-)3){■})((■)■)fail dot
  2312   |  7     ((1){■}(((■■)\-)3){■})((■■)■)fail dot
  2313   |  7     ((1){■}(((■|■)\-)3){■})((■■)■)fail dot
  2314   |  7     ((1){■}(((■){■}\-)3){■})((■■)■)fail dot
  2315   |  7     ((1){■}((■\-)3){■})(((■■)■)■)fail dot
  2316   |  7     ((1){■}((■\-)3){■})(((■|■)■)■)fail dot
  2317   |  7     ((1){■}((■\-)3){■})(((■){■}■)■)fail dot
  2318   |  7     ((1){■}((■\-)3){■})((■■)(■■))fail dot
  2319   |  7     ((1){■}((■\-)3){■})((■■)(■|■))fail dot
  2320   |  7     ((1){■}((■\-)3){■})((■■)(■){■})fail dot
  2321   |  7     (■((■\-)3){■})((■)5)    fail dotstar or empty
  2322   |  7     ((1){■}((■\-)3){■})(■5) fail dotstar or empty
  2323   |  7     (■((■\-)3)*)((■)■)      fail dot
  2324   |  7     ((■■)((■\-)3)*)((■■)■)  fail dot
  2325   |  7     ((■|■)((■\-)3)*)((■■)■) fail dot
  2326   |  7     (■(((■■)\-)3)*)((■■)■)  fail dot
  2327   |  7     (■(((■|■)\-)3)*)((■■)■) fail dot
  2328   |  7     (■(((■){■}\-)3)*)((■■)■)fail dot
  2329   |  7     (■((■\-)3)*)(((■■)■)■)  fail dot
  2330   |  7     (■((■\-)3)*)(((■|■)■)■) fail dot
  2331   |  7     (■((■\-)3)*)(((■){■}■)■)fail dot
  2332   |  7     (■((■\-)3)*)((■■)(■■))  fail dot
  2333   |  7     (■((■\-)3)*)((■■)(■|■)) fail dot
  2334   |  7     (■((■\-)3)*)((■■)(■){■})fail dot
  2335   |  7     ((1){■}((■\-)3)*)(■■)   fail dot
  2336   |  7     ((1){■}(((■■)\-)3)*)((■)■)fail dot
  2337   |  7     ((1){■}(((■|■)\-)3)*)((■)■)fail dot
  2338   |  7     ((1){■}(((■){■}\-)3)*)((■)■)fail dot
  2339   |  7     ((1){■}((■\-)3)*)(((■■))■)fail dot
  2340   |  7     ((1){■}((■\-)3)*)(((■|■))■)fail dot
  2341   |  7     ((1){■}((■\-)3)*)(((■){■})■)fail dot
  2342   |  7     ((1){■}(((■)\-)3)*)((■■)■)fail dot
  2343   |  7     ((1){■}((((■■)■)\-)3)*)((■■)■)fail dot
  2344   |  7     ((1){■}((((■|■)■)\-)3)*)((■■)■)fail dot
  2345   |  7     ((1){■}((((■){■}■)\-)3)*)((■■)■)fail dot
  2346   |  7     ((1){■}(((■(■■))\-)3)*)((■■)■)fail dot
  2347   |  7     ((1){■}(((■(■|■))\-)3)*)((■■)■)fail dot
  2348   |  7     ((1){■}(((■(■){■})\-)3)*)((■■)■)fail dot
  2349   |  7     ((1){■}(((■■)\-)3)*)(((■■)■)■)fail dot
  2350   |  7     ((1){■}(((■■)\-)3)*)(((■|■)■)■)fail dot
  2351   |  7     ((1){■}(((■■)\-)3)*)(((■){■}■)■)fail dot
  2352   |  7     ((1){■}(((■■)\-)3)*)((■■)(■■))fail dot
  2353   |  7     ((1){■}(((■■)\-)3)*)((■■)(■|■))fail dot
  2354   |  7     ((1){■}(((■■)\-)3)*)((■■)(■){■})fail dot
  2355   |  7     ((1){■}(((■■|■)\-)3)*)((■■)■)fail dot
  2356   |  7     ((1){■}((((■|■)|■)\-)3)*)((■■)■)fail dot
  2357   |  7     ((1){■}((((■){■}|■)\-)3)*)((■■)■)fail dot
  2358   |  7     ((1){■}(((■|■■)\-)3)*)((■■)■)fail dot
  2359   |  7     ((1){■}(((■|(■|■))\-)3)*)((■■)■)fail dot
  2360   |  7     ((1){■}(((■|(■){■})\-)3)*)((■■)■)fail dot
  2361   |  7     ((1){■}(((■|■)\-)3)*)(((■■)■)■)fail dot
  2362   |  7     ((1){■}(((■|■)\-)3)*)(((■|■)■)■)fail dot
  2363   |  7     ((1){■}(((■|■)\-)3)*)(((■){■}■)■)fail dot
  2364   |  7     ((1){■}(((■|■)\-)3)*)((■■)(■■))fail dot
  2365   |  7     ((1){■}(((■|■)\-)3)*)((■■)(■|■))fail dot
  2366   |  7     ((1){■}(((■|■)\-)3)*)((■■)(■){■})fail dot
  2367   |  7     ((1){■}(((■■){■}\-)3)*)((■■)■)fail dot
  2368   |  7     ((1){■}((((■|■)){■}\-)3)*)((■■)■)fail dot
  2369   |  7     ((1){■}((((■){■}){■}\-)3)*)((■■)■)fail dot
  2370   |  7     ((1){■}(((■){■}\-)3)*)(((■■)■)■)fail dot
  2371   |  7     ((1){■}(((■){■}\-)3)*)(((■|■)■)■)fail dot
  2372   |  7     ((1){■}(((■){■}\-)3)*)(((■){■}■)■)fail dot
  2373   |  7     ((1){■}(((■){■}\-)3)*)((■■)(■■))fail dot
  2374   |  7     ((1){■}(((■){■}\-)3)*)((■■)(■|■))fail dot
  2375   |  7     ((1){■}(((■){■}\-)3)*)((■■)(■){■})fail dot
  2376   |  7     ((1){■}((■\-)3)*)(((■)■)■)fail dot
  2377   |  7     ((1){■}((■\-)3)*)((((■■)■)■)■)fail dot
  2378   |  7     ((1){■}((■\-)3)*)((((■|■)■)■)■)fail dot
  2379   |  7     ((1){■}((■\-)3)*)((((■){■}■)■)■)fail dot
  2380   |  7     ((1){■}((■\-)3)*)(((■■)(■■))■)fail dot
  2381   |  7     ((1){■}((■\-)3)*)(((■■)(■|■))■)fail dot
  2382   |  7     ((1){■}((■\-)3)*)(((■■)(■){■})■)fail dot
  2383   |  7     ((1){■}((■\-)3)*)(((■■)■)(■■))fail dot
  2384   |  7     ((1){■}((■\-)3)*)(((■■)■)(■|■))fail dot
  2385   |  7     ((1){■}((■\-)3)*)(((■■)■)(■){■})fail dot
  2386   |  7     ((1){■}((■\-)3)*)(((■■|■)■)■)fail dot
  2387   |  7     ((1){■}((■\-)3)*)((((■|■)|■)■)■)fail dot
  2388   |  7     ((1){■}((■\-)3)*)((((■){■}|■)■)■)fail dot
  2389   |  7     ((1){■}((■\-)3)*)(((■|■)(■■))■)fail dot
  2390   |  7     ((1){■}((■\-)3)*)(((■|■)(■|■))■)fail dot
  2391   |  7     ((1){■}((■\-)3)*)(((■|■)(■){■})■)fail dot
  2392   |  7     ((1){■}((■\-)3)*)(((■|■)■)(■■))fail dot
  2393   |  7     ((1){■}((■\-)3)*)(((■|■)■)(■|■))fail dot
  2394   |  7     ((1){■}((■\-)3)*)(((■|■)■)(■){■})fail dot
  2395   |  7     ((1){■}((■\-)3)*)(((■■){■}■)■)fail dot
  2396   |  7     ((1){■}((■\-)3)*)((((■|■)){■}■)■)fail dot
  2397   |  7     ((1){■}((■\-)3)*)((((■){■}){■}■)■)fail dot
  2398   |  7     ((1){■}((■\-)3)*)(((■){■}(■■))■)fail dot
  2399   |  7     ((1){■}((■\-)3)*)(((■){■}(■|■))■)fail dot
  2400   |  7     ((1){■}((■\-)3)*)(((■){■}(■){■})■)fail dot
  2401   |  7     ((1){■}((■\-)3)*)(((■){■}■)(■■))fail dot
  2402   |  7     ((1){■}((■\-)3)*)(((■){■}■)(■|■))fail dot
  2403   |  7     ((1){■}((■\-)3)*)(((■){■}■)(■){■})fail dot
  2404   |  7     ((1){■}((■\-)3)*)((■■)(■))fail dot
  2405   |  7     (■((■\-)3)*)(■5)        fail dotstar or empty
  2406   |  7     ((1){■}((2■)■){■})((■■)■)fail dot
  2407   |  7     (■((2■)■){■})((■■)5)    fail dotstar or empty
  2408   |  7     ((1){■}((2■)■){■})((■)5)fail dotstar or empty
  2409   |  7     (■((2■)■){■})((■/)■)    fail dotstar or empty
  2410   |  7     (■((2■)■){■})((4■)■)    fail dotstar or empty
  2411   |  7     (■((2■)■)*)((■■)■)      fail dot
  2412   |  7     ((1){■}((2■)■)*)((■)■)  fail dot
  2413   |  7     ((1){■}((2(■■))■)*)((■■)■)fail dot
  2414   |  7     ((1){■}((2(■|■))■)*)((■■)■)fail dot
  2415   |  7     ((1){■}((2(■){■})■)*)((■■)■)fail dot
  2416   |  7     ((1){■}((2■)(■■))*)((■■)■)fail dot
  2417   |  7     ((1){■}((2■)(■|■))*)((■■)■)fail dot
  2418   |  7     ((1){■}((2■)(■){■})*)((■■)■)fail dot
  2419   |  7     ((1){■}((2■)■)*)(((■■)■)■)fail dot
  2420   |  7     ((1){■}((2■)■)*)(((■|■)■)■)fail dot
  2421   |  7     ((1){■}((2■)■)*)(((■){■}■)■)fail dot
  2422   |  7     ((1){■}((2■)■)*)((■■)(■■))fail dot
  2423   |  7     ((1){■}((2■)■)*)((■■)(■|■))fail dot
  2424   |  7     ((1){■}((2■)■)*)((■■)(■){■})fail dot
  2425   |  7     (■((2■)■)*)((■)5)       fail dotstar or empty
  2426   |  7     ((1){■}((2■)■)*)(■5)    fail dotstar or empty
  2427   |  7     (■((2■)3){■})((■■)■)    fail dot
  2428   |  7     ((1){■}((2■)3){■})((■)■)fail dot
  2429   |  7     ((1){■}((2(■■))3){■})((■■)■)fail dot
  2430   |  7     ((1){■}((2(■|■))3){■})((■■)■)fail dot
  2431   |  7     ((1){■}((2(■){■})3){■})((■■)■)fail dot
  2432   |  7     ((1){■}((2■)3){■})(((■■)■)■)fail dot
  2433   |  7     ((1){■}((2■)3){■})(((■|■)■)■)fail dot
  2434   |  7     ((1){■}((2■)3){■})(((■){■}■)■)fail dot
  2435   |  7     ((1){■}((2■)3){■})((■■)(■■))fail dot
  2436   |  7     ((1){■}((2■)3){■})((■■)(■|■))fail dot
  2437   |  7     ((1){■}((2■)3){■})((■■)(■){■})fail dot
  2438   |  7     (■((2■)3){■})((■)5)     fail dotstar or empty
  2439   |  7     ((1){■}((2■)3){■})(■5)  fail dotstar or empty
  2440   |  7     (■((2■)3)*)((■)■)       fail dot
  2441   |  7     ((■■)((2■)3)*)((■■)■)   fail dot
  2442   |  7     ((■|■)((2■)3)*)((■■)■)  fail dot
  2443   |  7     (■((2(■■))3)*)((■■)■)   fail dot
  2444   |  7     (■((2(■|■))3)*)((■■)■)  fail dot
  2445   |  7     (■((2(■){■})3)*)((■■)■) fail dot
  2446   |  7     (■((2■)3)*)(((■■)■)■)   fail dot
  2447   |  7     (■((2■)3)*)(((■|■)■)■)  fail dot
  2448   |  7     (■((2■)3)*)(((■){■}■)■) fail dot
  2449   |  7     (■((2■)3)*)((■■)(■■))   fail dot
  2450   |  7     (■((2■)3)*)((■■)(■|■))  fail dot
  2451   |  7     (■((2■)3)*)((■■)(■){■}) fail dot
  2452   |  7     ((1){■}((2■)3)*)(■■)    fail dot
  2453   |  7     ((1){■}((2(■■))3)*)((■)■)fail dot
  2454   |  7     ((1){■}((2(■|■))3)*)((■)■)fail dot
  2455   |  7     ((1){■}((2(■){■})3)*)((■)■)fail dot
  2456   |  7     ((1){■}((2■)3)*)(((■■))■)fail dot
  2457   |  7     ((1){■}((2■)3)*)(((■|■))■)fail dot
  2458   |  7     ((1){■}((2■)3)*)(((■){■})■)fail dot
  2459   |  7     ((1){■}((2(■))3)*)((■■)■)fail dot
  2460   |  7     ((1){■}((2((■■)■))3)*)((■■)■)fail dot
  2461   |  7     ((1){■}((2((■|■)■))3)*)((■■)■)fail dot
  2462   |  7     ((1){■}((2((■){■}■))3)*)((■■)■)fail dot
  2463   |  7     ((1){■}((2(■(■■)))3)*)((■■)■)fail dot
  2464   |  7     ((1){■}((2(■(■|■)))3)*)((■■)■)fail dot
  2465   |  7     ((1){■}((2(■(■){■}))3)*)((■■)■)fail dot
  2466   |  7     ((1){■}((2(■■))3)*)(((■■)■)■)fail dot
  2467   |  7     ((1){■}((2(■■))3)*)(((■|■)■)■)fail dot
  2468   |  7     ((1){■}((2(■■))3)*)(((■){■}■)■)fail dot
  2469   |  7     ((1){■}((2(■■))3)*)((■■)(■■))fail dot
  2470   |  7     ((1){■}((2(■■))3)*)((■■)(■|■))fail dot
  2471   |  7     ((1){■}((2(■■))3)*)((■■)(■){■})fail dot
  2472   |  7     ((1){■}((2(■■|■))3)*)((■■)■)fail dot
  2473   |  7     ((1){■}((2((■|■)|■))3)*)((■■)■)fail dot
  2474   |  7     ((1){■}((2((■){■}|■))3)*)((■■)■)fail dot
  2475   |  7     ((1){■}((2(■|■■))3)*)((■■)■)fail dot
  2476   |  7     ((1){■}((2(■|(■|■)))3)*)((■■)■)fail dot
  2477   |  7     ((1){■}((2(■|(■){■}))3)*)((■■)■)fail dot
  2478   |  7     ((1){■}((2(■|■))3)*)(((■■)■)■)fail dot
  2479   |  7     ((1){■}((2(■|■))3)*)(((■|■)■)■)fail dot
  2480   |  7     ((1){■}((2(■|■))3)*)(((■){■}■)■)fail dot
  2481   |  7     ((1){■}((2(■|■))3)*)((■■)(■■))fail dot
  2482   |  7     ((1){■}((2(■|■))3)*)((■■)(■|■))fail dot
  2483   |  7     ((1){■}((2(■|■))3)*)((■■)(■){■})fail dot
  2484   |  7     ((1){■}((2(■■){■})3)*)((■■)■)fail dot
  2485   |  7     ((1){■}((2((■|■)){■})3)*)((■■)■)fail dot
  2486   |  7     ((1){■}((2((■){■}){■})3)*)((■■)■)fail dot
  2487   |  7     ((1){■}((2(■){■})3)*)(((■■)■)■)fail dot
  2488   |  7     ((1){■}((2(■){■})3)*)(((■|■)■)■)fail dot
  2489   |  7     ((1){■}((2(■){■})3)*)(((■){■}■)■)fail dot
  2490   |  7     ((1){■}((2(■){■})3)*)((■■)(■■))fail dot
  2491   |  7     ((1){■}((2(■){■})3)*)((■■)(■|■))fail dot
  2492   |  7     ((1){■}((2(■){■})3)*)((■■)(■){■})fail dot
  2493   |  7     ((1){■}((2■)3)*)(((■)■)■)fail dot
  2494   |  7     ((1){■}((2■)3)*)((((■■)■)■)■)fail dot
  2495   |  7     ((1){■}((2■)3)*)((((■|■)■)■)■)fail dot
  2496   |  7     ((1){■}((2■)3)*)((((■){■}■)■)■)fail dot
  2497   |  7     ((1){■}((2■)3)*)(((■■)(■■))■)fail dot
  2498   |  7     ((1){■}((2■)3)*)(((■■)(■|■))■)fail dot
  2499   |  7     ((1){■}((2■)3)*)(((■■)(■){■})■)fail dot
  2500   |  7     ((1){■}((2■)3)*)(((■■)■)(■■))fail dot
  2501   |  7     ((1){■}((2■)3)*)(((■■)■)(■|■))fail dot
  2502   |  7     ((1){■}((2■)3)*)(((■■)■)(■){■})fail dot
  2503   |  7     ((1){■}((2■)3)*)(((■■|■)■)■)fail dot
  2504   |  7     ((1){■}((2■)3)*)((((■|■)|■)■)■)fail dot
  2505   |  7     ((1){■}((2■)3)*)((((■){■}|■)■)■)fail dot
  2506   |  7     ((1){■}((2■)3)*)(((■|■)(■■))■)fail dot
  2507   |  7     ((1){■}((2■)3)*)(((■|■)(■|■))■)fail dot
  2508   |  7     ((1){■}((2■)3)*)(((■|■)(■){■})■)fail dot
  2509   |  7     ((1){■}((2■)3)*)(((■|■)■)(■■))fail dot
  2510   |  7     ((1){■}((2■)3)*)(((■|■)■)(■|■))fail dot
  2511   |  7     ((1){■}((2■)3)*)(((■|■)■)(■){■})fail dot
  2512   |  7     ((1){■}((2■)3)*)(((■■){■}■)■)fail dot
  2513   |  7     ((1){■}((2■)3)*)((((■|■)){■}■)■)fail dot
  2514   |  7     ((1){■}((2■)3)*)((((■){■}){■}■)■)fail dot
  2515   |  7     ((1){■}((2■)3)*)(((■){■}(■■))■)fail dot
  2516   |  7     ((1){■}((2■)3)*)(((■){■}(■|■))■)fail dot
  2517   |  7     ((1){■}((2■)3)*)(((■){■}(■){■})■)fail dot
  2518   |  7     ((1){■}((2■)3)*)(((■){■}■)(■■))fail dot
  2519   |  7     ((1){■}((2■)3)*)(((■){■}■)(■|■))fail dot
  2520   |  7     ((1){■}((2■)3)*)(((■){■}■)(■){■})fail dot
  2521   |  7     ((1){■}((2■)3)*)((■■)(■))fail dot
  2522   |  7     (■((2■)3)*)(■5)         fail dotstar or empty
  2523   |  7     (■((2\-)■){■})((■■)■)   fail dot
  2524   |  7     ((1){■}((2\-)■){■})((■)■)fail dot
  2525   |  7     ((1){■}((2\-)(■■)){■})((■■)■)fail dot
  2526   |  7     ((1){■}((2\-)(■|■)){■})((■■)■)fail dot
  2527   |  7     ((1){■}((2\-)(■){■}){■})((■■)■)fail dot
  2528   |  7     ((1){■}((2\-)■){■})(((■■)■)■)fail dot
  2529   |  7     ((1){■}((2\-)■){■})(((■|■)■)■)fail dot
  2530   |  7     ((1){■}((2\-)■){■})(((■){■}■)■)fail dot
  2531   |  7     ((1){■}((2\-)■){■})((■■)(■■))fail dot
  2532   |  7     ((1){■}((2\-)■){■})((■■)(■|■))fail dot
  2533   |  7     ((1){■}((2\-)■){■})((■■)(■){■})fail dot
  2534   |  7     (■((2\-)■){■})((■)5)    fail dotstar or empty
  2535   |  7     ((1){■}((2\-)■){■})(■5) fail dotstar or empty
  2536   |  7     (■((2\-)■)*)((■)■)      fail dot
  2537   |  7     ((■■)((2\-)■)*)((■■)■)  fail dot
  2538   |  7     ((■|■)((2\-)■)*)((■■)■) fail dot
  2539   |  7     (■((2\-)(■■))*)((■■)■)  fail dot
  2540   |  7     (■((2\-)(■|■))*)((■■)■) fail dot
  2541   |  7     (■((2\-)(■){■})*)((■■)■)fail dot
  2542   |  7     (■((2\-)■)*)(((■■)■)■)  fail dot
  2543   |  7     (■((2\-)■)*)(((■|■)■)■) fail dot
  2544   |  7     (■((2\-)■)*)(((■){■}■)■)fail dot
  2545   |  7     (■((2\-)■)*)((■■)(■■))  fail dot
  2546   |  7     (■((2\-)■)*)((■■)(■|■)) fail dot
  2547   |  7     (■((2\-)■)*)((■■)(■){■})fail dot
  2548   |  7     ((1){■}((2\-)■)*)(■■)   fail dot
  2549   |  7     ((1){■}((2\-)(■■))*)((■)■)fail dot
  2550   |  7     ((1){■}((2\-)(■|■))*)((■)■)fail dot
  2551   |  7     ((1){■}((2\-)(■){■})*)((■)■)fail dot
  2552   |  7     ((1){■}((2\-)■)*)(((■■))■)fail dot
  2553   |  7     ((1){■}((2\-)■)*)(((■|■))■)fail dot
  2554   |  7     ((1){■}((2\-)■)*)(((■){■})■)fail dot
  2555   |  7     ((1){■}((2\-)(■))*)((■■)■)fail dot
  2556   |  7     ((1){■}((2\-)((■■)■))*)((■■)■)fail dot
  2557   |  7     ((1){■}((2\-)((■|■)■))*)((■■)■)fail dot
  2558   |  7     ((1){■}((2\-)((■){■}■))*)((■■)■)fail dot
  2559   |  7     ((1){■}((2\-)(■(■■)))*)((■■)■)fail dot
  2560   |  7     ((1){■}((2\-)(■(■|■)))*)((■■)■)fail dot
  2561   |  7     ((1){■}((2\-)(■(■){■}))*)((■■)■)fail dot
  2562   |  7     ((1){■}((2\-)(■■))*)(((■■)■)■)fail dot
  2563   |  7     ((1){■}((2\-)(■■))*)(((■|■)■)■)fail dot
  2564   |  7     ((1){■}((2\-)(■■))*)(((■){■}■)■)fail dot
  2565   |  7     ((1){■}((2\-)(■■))*)((■■)(■■))fail dot
  2566   |  7     ((1){■}((2\-)(■■))*)((■■)(■|■))fail dot
  2567   |  7     ((1){■}((2\-)(■■))*)((■■)(■){■})fail dot
  2568   |  7     ((1){■}((2\-)(■■|■))*)((■■)■)fail dot
  2569   |  7     ((1){■}((2\-)((■|■)|■))*)((■■)■)fail dot
  2570   |  7     ((1){■}((2\-)((■){■}|■))*)((■■)■)fail dot
  2571   |  7     ((1){■}((2\-)(■|■■))*)((■■)■)fail dot
  2572   |  7     ((1){■}((2\-)(■|(■|■)))*)((■■)■)fail dot
  2573   |  7     ((1){■}((2\-)(■|(■){■}))*)((■■)■)fail dot
  2574   |  7     ((1){■}((2\-)(■|■))*)(((■■)■)■)fail dot
  2575   |  7     ((1){■}((2\-)(■|■))*)(((■|■)■)■)fail dot
  2576   |  7     ((1){■}((2\-)(■|■))*)(((■){■}■)■)fail dot
  2577   |  7     ((1){■}((2\-)(■|■))*)((■■)(■■))fail dot
  2578   |  7     ((1){■}((2\-)(■|■))*)((■■)(■|■))fail dot
  2579   |  7     ((1){■}((2\-)(■|■))*)((■■)(■){■})fail dot
  2580   |  7     ((1){■}((2\-)(■■){■})*)((■■)■)fail dot
  2581   |  7     ((1){■}((2\-)((■|■)){■})*)((■■)■)fail dot
  2582   |  7     ((1){■}((2\-)((■){■}){■})*)((■■)■)fail dot
  2583   |  7     ((1){■}((2\-)(■){■})*)(((■■)■)■)fail dot
  2584   |  7     ((1){■}((2\-)(■){■})*)(((■|■)■)■)fail dot
  2585   |  7     ((1){■}((2\-)(■){■})*)(((■){■}■)■)fail dot
  2586   |  7     ((1){■}((2\-)(■){■})*)((■■)(■■))fail dot
  2587   |  7     ((1){■}((2\-)(■){■})*)((■■)(■|■))fail dot
  2588   |  7     ((1){■}((2\-)(■){■})*)((■■)(■){■})fail dot
  2589   |  7     ((1){■}((2\-)■)*)(((■)■)■)fail dot
  2590   |  7     ((1){■}((2\-)■)*)((((■■)■)■)■)fail dot
  2591   |  7     ((1){■}((2\-)■)*)((((■|■)■)■)■)fail dot
  2592   |  7     ((1){■}((2\-)■)*)((((■){■}■)■)■)fail dot
  2593   |  7     ((1){■}((2\-)■)*)(((■■)(■■))■)fail dot
  2594   |  7     ((1){■}((2\-)■)*)(((■■)(■|■))■)fail dot
  2595   |  7     ((1){■}((2\-)■)*)(((■■)(■){■})■)fail dot
  2596   |  7     ((1){■}((2\-)■)*)(((■■)■)(■■))fail dot
  2597   |  7     ((1){■}((2\-)■)*)(((■■)■)(■|■))fail dot
  2598   |  7     ((1){■}((2\-)■)*)(((■■)■)(■){■})fail dot
  2599   |  7     ((1){■}((2\-)■)*)(((■■|■)■)■)fail dot
  2600   |  7     ((1){■}((2\-)■)*)((((■|■)|■)■)■)fail dot
  2601   |  7     ((1){■}((2\-)■)*)((((■){■}|■)■)■)fail dot
  2602   |  7     ((1){■}((2\-)■)*)(((■|■)(■■))■)fail dot
  2603   |  7     ((1){■}((2\-)■)*)(((■|■)(■|■))■)fail dot
  2604   |  7     ((1){■}((2\-)■)*)(((■|■)(■){■})■)fail dot
  2605   |  7     ((1){■}((2\-)■)*)(((■|■)■)(■■))fail dot
  2606   |  7     ((1){■}((2\-)■)*)(((■|■)■)(■|■))fail dot
  2607   |  7     ((1){■}((2\-)■)*)(((■|■)■)(■){■})fail dot
  2608   |  7     ((1){■}((2\-)■)*)(((■■){■}■)■)fail dot
  2609   |  7     ((1){■}((2\-)■)*)((((■|■)){■}■)■)fail dot
  2610   |  7     ((1){■}((2\-)■)*)((((■){■}){■}■)■)fail dot
  2611   |  7     ((1){■}((2\-)■)*)(((■){■}(■■))■)fail dot
  2612   |  7     ((1){■}((2\-)■)*)(((■){■}(■|■))■)fail dot
  2613   |  7     ((1){■}((2\-)■)*)(((■){■}(■){■})■)fail dot
  2614   |  7     ((1){■}((2\-)■)*)(((■){■}■)(■■))fail dot
  2615   |  7     ((1){■}((2\-)■)*)(((■){■}■)(■|■))fail dot
  2616   |  7     ((1){■}((2\-)■)*)(((■){■}■)(■){■})fail dot
  2617   |  7     ((1){■}((2\-)■)*)((■■)(■))fail dot
  2618   |  7     (■((2\-)■)*)(■5)        fail dotstar or empty
  2619   |  7     (■((2\-)3){■})((■)■)    fail dot
  2620   |  7     ((■■)((2\-)3){■})((■■)■)fail dot
  2621   |  7     ((■|■)((2\-)3){■})((■■)■)fail dot
  2622   |  7     (■((2\-)3){■})(((■■)■)■)fail dot
  2623   |  7     (■((2\-)3){■})(((■|■)■)■)fail dot
  2624   |  7     (■((2\-)3){■})(((■){■}■)■)fail dot
  2625   |  7     (■((2\-)3){■})((■■)(■■))fail dot
  2626   |  7     (■((2\-)3){■})((■■)(■|■))fail dot
  2627   |  7     (■((2\-)3){■})((■■)(■){■})fail dot
  2628   |  7     ((1){■}■)((■)■)         fail dot
  2629   |  7     ((1){■}(■■))((■■)■)     fail dot
  2630   |  7     ((1){■}(■|■))((■■)■)    fail dot
  2631   |  7     ((1){■}(■){■})((■■)■)   fail dot
  2632   |  7     ((1){■}■)(((■■)■)■)     fail dot
  2633   |  7     ((1){■}■)(((■|■)■)■)    fail dot
  2634   |  7     ((1){■}■)(((■){■}■)■)   fail dot
  2635   |  7     ((1){■}■)((■■)(■■))     fail dot
  2636   |  7     ((1){■}■)((■■)(■|■))    fail dot
  2637   |  7     ((1){■}■)((■■)(■){■})   fail dot
  2638   |  7     ((1){■}((2\-)3){■})(■■) fail dot
  2639   |  7     ((1){■}((2\-)3){■})(((■■))■)fail dot
  2640   |  7     ((1){■}((2\-)3){■})(((■|■))■)fail dot
  2641   |  7     ((1){■}((2\-)3){■})(((■){■})■)fail dot
  2642   |  7     ((1){■}((2\-)3){■})(((■)■)■)fail dot
  2643   |  7     ((1){■}((2\-)3){■})((((■■)■)■)■)fail dot
  2644   |  7     ((1){■}((2\-)3){■})((((■|■)■)■)■)fail dot
  2645   |  7     ((1){■}((2\-)3){■})((((■){■}■)■)■)fail dot
  2646   |  7     ((1){■}((2\-)3){■})(((■■)(■■))■)fail dot
  2647   |  7     ((1){■}((2\-)3){■})(((■■)(■|■))■)fail dot
  2648   |  7     ((1){■}((2\-)3){■})(((■■)(■){■})■)fail dot
  2649   |  7     ((1){■}((2\-)3){■})(((■■)■)(■■))fail dot
  2650   |  7     ((1){■}((2\-)3){■})(((■■)■)(■|■))fail dot
  2651   |  7     ((1){■}((2\-)3){■})(((■■)■)(■){■})fail dot
  2652   |  7     ((1){■}((2\-)3){■})(((■■|■)■)■)fail dot
  2653   |  7     ((1){■}((2\-)3){■})((((■|■)|■)■)■)fail dot
  2654   |  7     ((1){■}((2\-)3){■})((((■){■}|■)■)■)fail dot
  2655   |  7     ((1){■}((2\-)3){■})(((■|■)(■■))■)fail dot
  2656   |  7     ((1){■}((2\-)3){■})(((■|■)(■|■))■)fail dot
  2657   |  7     ((1){■}((2\-)3){■})(((■|■)(■){■})■)fail dot
  2658   |  7     ((1){■}((2\-)3){■})(((■|■)■)(■■))fail dot
  2659   |  7     ((1){■}((2\-)3){■})(((■|■)■)(■|■))fail dot
  2660   |  7     ((1){■}((2\-)3){■})(((■|■)■)(■){■})fail dot
  2661   |  7     ((1){■}((2\-)3){■})(((■■){■}■)■)fail dot
  2662   |  7     ((1){■}((2\-)3){■})((((■|■)){■}■)■)fail dot
  2663   |  7     ((1){■}((2\-)3){■})((((■){■}){■}■)■)fail dot
  2664   |  7     ((1){■}((2\-)3){■})(((■){■}(■■))■)fail dot
  2665   |  7     ((1){■}((2\-)3){■})(((■){■}(■|■))■)fail dot
  2666   |  7     ((1){■}((2\-)3){■})(((■){■}(■){■})■)fail dot
  2667   |  7     ((1){■}((2\-)3){■})(((■){■}■)(■■))fail dot
  2668   |  7     ((1){■}((2\-)3){■})(((■){■}■)(■|■))fail dot
  2669   |  7     ((1){■}((2\-)3){■})(((■){■}■)(■){■})fail dot
  2670   |  7     ((1){■}((2\-)3){■})((■■)(■))fail dot
  2671   |  7     (■)((■■)5)              fail dotstar or empty
  2672   |  7     (■■)((■)5)              fail dotstar or empty
  2673   |  7     (■((2\-)3){■})(■5)      fail dotstar or empty
  2674   |  7     ((1){■}■)(■5)           fail dotstar or empty
  2675   |  7     (■)((■/)■)              fail dotstar or empty
  2676   |  7     ■((■/)5)                fail dotstar or empty
  2677   |  7     (■)((4■)■)              fail dotstar or empty
  2678   |  7     ■((4■)5)                fail dotstar or empty
  2679   |  7     ■((4/)■)                fail dotstar or empty
  2680   |  7     (■((2\-)3)*)(■■)        fail dot
  2681   |  7     ((■■)((2\-)3)*)((■)■)   fail dot
  2682   |  7     ((■|■)((2\-)3)*)((■)■)  fail dot
  2683   |  7     (■((2\-)3)*)(((■■))■)   fail dot
  2684   |  7     (■((2\-)3)*)(((■|■))■)  fail dot
  2685   |  7     (■((2\-)3)*)(((■){■})■) fail dot
  2686   |  7     ((■)((2\-)3)*)((■■)■)   fail dot
  2687   |  7     (((■■)■)((2\-)3)*)((■■)■)fail dot
  2688   |  7     (((■|■)■)((2\-)3)*)((■■)■)fail dot
  2689   |  7     (((■){■}■)((2\-)3)*)((■■)■)fail dot
  2690   |  7     ((■■)((2\-)3)*)(((■■)■)■)fail dot
  2691   |  7     ((■■)((2\-)3)*)(((■|■)■)■)fail dot
  2692   |  7     ((■■)((2\-)3)*)(((■){■}■)■)fail dot
  2693   |  7     ((■■)((2\-)3)*)((■■)(■■))fail dot
  2694   |  7     ((■■)((2\-)3)*)((■■)(■|■))fail dot
  2695   |  7     ((■■)((2\-)3)*)((■■)(■){■})fail dot
  2696   |  7     ((■■|■)((2\-)3)*)((■■)■)fail dot
  2697   |  7     (((■|■)|■)((2\-)3)*)((■■)■)fail dot
  2698   |  7     (((■){■}|■)((2\-)3)*)((■■)■)fail dot
  2699   |  7     ((■|■)((2\-)3)*)(((■■)■)■)fail dot
  2700   |  7     ((■|■)((2\-)3)*)(((■|■)■)■)fail dot
  2701   |  7     ((■|■)((2\-)3)*)(((■){■}■)■)fail dot
  2702   |  7     ((■|■)((2\-)3)*)((■■)(■■))fail dot
  2703   |  7     ((■|■)((2\-)3)*)((■■)(■|■))fail dot
  2704   |  7     ((■|■)((2\-)3)*)((■■)(■){■})fail dot
  2705   |  7     (■((2\-)3)*)(((■)■)■)   fail dot
  2706   |  7     (■((2\-)3)*)((((■■)■)■)■)fail dot
  2707   |  7     (■((2\-)3)*)((((■|■)■)■)■)fail dot
  2708   |  7     (■((2\-)3)*)((((■){■}■)■)■)fail dot
  2709   |  7     (■((2\-)3)*)(((■■)(■■))■)fail dot
  2710   |  7     (■((2\-)3)*)(((■■)(■|■))■)fail dot
  2711   |  7     (■((2\-)3)*)(((■■)(■){■})■)fail dot
  2712   |  7     (■((2\-)3)*)(((■■)■)(■■))fail dot
  2713   |  7     (■((2\-)3)*)(((■■)■)(■|■))fail dot
  2714   |  7     (■((2\-)3)*)(((■■)■)(■){■})fail dot
  2715   |  7     (■((2\-)3)*)(((■■|■)■)■)fail dot
  2716   |  7     (■((2\-)3)*)((((■|■)|■)■)■)fail dot
  2717   |  7     (■((2\-)3)*)((((■){■}|■)■)■)fail dot
  2718   |  7     (■((2\-)3)*)(((■|■)(■■))■)fail dot
  2719   |  7     (■((2\-)3)*)(((■|■)(■|■))■)fail dot
  2720   |  7     (■((2\-)3)*)(((■|■)(■){■})■)fail dot
  2721   |  7     (■((2\-)3)*)(((■|■)■)(■■))fail dot
  2722   |  7     (■((2\-)3)*)(((■|■)■)(■|■))fail dot
  2723   |  7     (■((2\-)3)*)(((■|■)■)(■){■})fail dot
  2724   |  7     (■((2\-)3)*)(((■■){■}■)■)fail dot
  2725   |  7     (■((2\-)3)*)((((■|■)){■}■)■)fail dot
  2726   |  7     (■((2\-)3)*)((((■){■}){■}■)■)fail dot
  2727   |  7     (■((2\-)3)*)(((■){■}(■■))■)fail dot
  2728   |  7     (■((2\-)3)*)(((■){■}(■|■))■)fail dot
  2729   |  7     (■((2\-)3)*)(((■){■}(■){■})■)fail dot
  2730   |  7     (■((2\-)3)*)(((■){■}■)(■■))fail dot
  2731   |  7     (■((2\-)3)*)(((■){■}■)(■|■))fail dot
  2732   |  7     (■((2\-)3)*)(((■){■}■)(■){■})fail dot
  2733   |  7     (■((2\-)3)*)((■■)(■))   fail dot
  2734   |  7     ((1){■}((2\-)3)*)(■)    fail dot
  2735   |  7     ((1){■}((2\-)3)*)((■|■)■)fail dot
  2736   |  7     ((1){■}((2\-)3)*)((■){■}■)fail dot
  2737   |  7     ((1){■}((2\-)3)*)((((■■)■))■)fail dot
  2738   |  7     ((1){■}((2\-)3)*)((((■|■)■))■)fail dot
  2739   |  7     ((1){■}((2\-)3)*)((((■){■}■))■)fail dot
  2740   |  7     ((1){■}((2\-)3)*)(((■■))(■■))fail dot
  2741   |  7     ((1){■}((2\-)3)*)(((■■))(■|■))fail dot
  2742   |  7     ((1){■}((2\-)3)*)(((■■))(■){■})fail dot
  2743   |  7     ((1){■}((2\-)3)*)(((■■|■))■)fail dot
  2744   |  7     ((1){■}((2\-)3)*)((((■|■)|■))■)fail dot
  2745   |  7     ((1){■}((2\-)3)*)((((■){■}|■))■)fail dot
  2746   |  7     ((1){■}((2\-)3)*)(((■|■))(■■))fail dot
  2747   |  7     ((1){■}((2\-)3)*)(((■|■))(■|■))fail dot
  2748   |  7     ((1){■}((2\-)3)*)(((■|■))(■){■})fail dot
  2749   |  7     ((1){■}((2\-)3)*)(((■■){■})■)fail dot
  2750   |  7     ((1){■}((2\-)3)*)((((■|■)){■})■)fail dot
  2751   |  7     ((1){■}((2\-)3)*)((((■){■}){■})■)fail dot
  2752   |  7     ((1){■}((2\-)3)*)(((■){■})(■■))fail dot
  2753   |  7     ((1){■}((2\-)3)*)(((■){■})(■|■))fail dot
  2754   |  7     ((1){■}((2\-)3)*)(((■){■})(■){■})get a solution: ((1){0}((2\-)3)*)((([\-)9*+/0]){0,3})([\-)9*+/0]){0,3})
add positive: (
get a solution: ((1){0}((2\-)3)*)((([\-()9*+/0]){0,3})([\-()9+/0]){0,3})
add positive: 2
get a solution: ((1){0}((2\-)3)*)((([\-2(9*+/0]){0,3})([\-2()9*+/0]){0,3})
add positive: 1
get a solution: ((1){0}((2\-)3)*)((([1\-2()9*+/0]){0,3})([1\-2(9*+/0]){0,3})
add positive: 3
get a solution: ((1){0}((2\-)3)*)((([1\-23()9*+/0]){0,3})([1\-23()9*+/0]){0,3})
add positive: 4
get a solution: ((1){0}((2\-)3)*)((([∅]){0})([()*+/01\-2349]){0,3})
add positive: 5
get a solution: ((1){0}((2\-)3)*)((([()*+/0\-123459]){0,3})([1\-2345()*+/]){0,2})
add positive: 6
get a solution: ((1){0}((2\-)3)*)((([()*+/0\-1234569]){0,3})([()+/0\-1234569]){0,3})
add positive: 7
get a solution: ((1){0}((2\-)3)*)((([()*+/0\-12345679]){0,3})([(*+/0\-12345679]){0,3})
add positive: 8
get a solution: ((1){0}((2\-)3)*)((([()*+/0\-123456789]){0,3})([()*+/0\-123456789]){0,3})
add positive: 2((((((
get a solution: ((1){0}((2\-)3)*)((([(*+012345678]){0,1})([()*+/0\-123456789]){0,7})
add positive: )(((((((
get a solution: ((1){0}((2\-)3)*)((([()*+/0\-123456789]){0,8})([()*+/0\-123456789]){0,8})

2.026226043701172
timeout