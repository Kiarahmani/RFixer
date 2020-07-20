
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
  1241   |  7     ((■)+((■\-)■)*)((■■)(■■))
1.0242607593536377
timeout