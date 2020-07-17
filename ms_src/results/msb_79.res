
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
  510    |  5     ((1){■}((2\-)3)*)(((■){■}■)■)  ((1){0}((2\-)3)*)(((0){0,1}[\-*+])[\-)9/])
template: ((1){■}((2\-)3)*)(((■){■}■)■) size: 7 holes: 7 time: 3.497899ms
longest: #mn#((1){■}((2\-)3)*)(((■){■}■)■)#mn# size: #ms#7#ms# holes: #mh#7#mh# time: #mt#3.497899#mt#ms

Computed in:

  #c#434#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#5#d#

Finds the following solutions (and the corresponding fitness):

  8    ((1){0}((2\-)3)*)(((0){0,1}[\-*+])[\-)9/])

All done

last template: #t#((1){■}((2\-)3)*)(((■){■}■)■)#t#
#num#510#num#
#dep#5#dep#
#t1#0#t1#
#t2#25#t2#
#t3#484#t3#
solution is #sol#((1){0}((2\-)3)*)(((0){0,1}[\-*+])[\-)9/])#sol#
before exit
