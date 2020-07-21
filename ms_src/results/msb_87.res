
Given the regular expression:

  (\\(w)*)\\(2){3,}(\\(w)*)

That that should match the strings:

  ✓ (0:3)    sss

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■(w)*)\\)(2){3,})(\\(w)*)fail dotstar or empty
  2      |  1     (((\\(■)*)\\)(2){3,})(\\(w)*)fail dotstar or empty
  3      |  1     (((\\(w){■})\\)(2){3,})(\\(w)*)fail dotstar or empty
  4      |  1     (((\\(w)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  5      |  1     (((\\(w)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  6      |  1     (((\\(w)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  7      |  1     (((\\(w)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  8      |  1     (((\\(w)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  9      |  1     (((\\(w)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  10     |  2     (((■(■)*)\\)(2){3,})(\\(w)*)fail dotstar or empty
  11     |  2     (((■(w){■})\\)(2){3,})(\\(w)*)fail dotstar or empty
  12     |  2     (((■(w)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  13     |  2     (((■(w)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  14     |  2     (((■(w)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  15     |  2     (((■(w)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  16     |  2     (((■(w)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  17     |  2     (((■(w)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  18     |  2     (((\\(■){■})\\)(2){3,})(\\(w)*)fail dotstar or empty
  19     |  2     (((\\(■)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  20     |  2     (((\\(■)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  21     |  2     (((\\(■)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  22     |  2     (((\\(■)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  23     |  2     (((\\(■)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  24     |  2     (((\\(■)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  25     |  2     (((\\(w){■})■)(2){3,})(\\(w)*)fail dotstar or empty
  26     |  2     (((\\(w){■})\\)(■){3,})(\\(w)*)fail dotstar or empty
  27     |  2     (((\\(w){■})\\)(2){■})(\\(w)*)fail dotstar or empty
  28     |  2     (((\\(w){■})\\)(2){3,})(■(w)*)fail dotstar or empty
  29     |  2     (((\\(w){■})\\)(2){3,})(\\(■)*)fail dotstar or empty
  30     |  2     (((\\(w){■})\\)(2){3,})(\\(w){■})fail dotstar or empty
  31     |  2     (((\\■)\\)(2){3,})(\\(w)*)fail dotstar or empty
  32     |  2     (((\\(w)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  33     |  2     (((\\(w)*)■)(2){■})(\\(w)*)fail dotstar or empty
  34     |  2     (((\\(w)*)■)(2){3,})(■(w)*)fail dotstar or empty
  35     |  2     (((\\(w)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  36     |  2     (((\\(w)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  37     |  2     (((\\(w)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  38     |  2     (((\\(w)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  39     |  2     (((\\(w)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  40     |  2     (((\\(w)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  41     |  2     (((\\(w)*)\\)■)(\\(w)*) fail dotstar or empty
  42     |  2     (((\\(w)*)\\)(2){■})(■(w)*)fail dotstar or empty
  43     |  2     (((\\(w)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  44     |  2     (((\\(w)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  45     |  2     (((\\(w)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  46     |  2     (((\\(w)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  47     |  2     (((\\(w)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  48     |  2     (((\\(w)*)\\)(2){3,})(\\■)fail dotstar or empty
  49     |  3     (((■(■)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  50     |  3     (((■(■)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  51     |  3     (((■(■)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  52     |  3     (((■(■)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  53     |  3     (((■(■)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  54     |  3     (((■(■)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  55     |  3     (((■(w){■})■)(2){3,})(\\(w)*)fail dotstar or empty
  56     |  3     (((■(w){■})\\)(■){3,})(\\(w)*)fail dotstar or empty
  57     |  3     (((■(w){■})\\)(2){■})(\\(w)*)fail dotstar or empty
  58     |  3     (((■(w){■})\\)(2){3,})(■(w)*)fail dotstar or empty
  59     |  3     (((■(w){■})\\)(2){3,})(\\(■)*)fail dotstar or empty
  60     |  3     (((■(w){■})\\)(2){3,})(\\(w){■})fail dotstar or empty
  61     |  3     (((■■)\\)(2){3,})(\\(w)*)fail dotstar or empty
  62     |  3     (((■(w)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  63     |  3     (((■(w)*)■)(2){■})(\\(w)*)fail dotstar or empty
  64     |  3     (((■(w)*)■)(2){3,})(■(w)*)fail dotstar or empty
  65     |  3     (((■(w)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  66     |  3     (((■(w)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  67     |  3     (((■(w)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  68     |  3     (((■(w)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  69     |  3     (((■(w)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  70     |  3     (((■(w)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  71     |  3     (((■(w)*)\\)■)(\\(w)*)  fail dotstar or empty
  72     |  3     (((■(w)*)\\)(2){■})(■(w)*)fail dotstar or empty
  73     |  3     (((■(w)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  74     |  3     (((■(w)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  75     |  3     (((■(w)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  76     |  3     (((■(w)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  77     |  3     (((■(w)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  78     |  3     (((■(w)*)\\)(2){3,})(\\■)fail dotstar or empty
  79     |  3     (((\\(■){■})■)(2){3,})(\\(w)*)fail dotstar or empty
  80     |  3     (((\\(■){■})\\)(■){3,})(\\(w)*)fail dotstar or empty
  81     |  3     (((\\(■){■})\\)(2){■})(\\(w)*)fail dotstar or empty
  82     |  3     (((\\(■){■})\\)(2){3,})(■(w)*)fail dotstar or empty
  83     |  3     (((\\(■){■})\\)(2){3,})(\\(■)*)fail dotstar or empty
  84     |  3     (((\\(■){■})\\)(2){3,})(\\(w){■})fail dotstar or empty
  85     |  3     (((\\(■)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  86     |  3     (((\\(■)*)■)(2){■})(\\(w)*)fail dotstar or empty
  87     |  3     (((\\(■)*)■)(2){3,})(■(w)*)fail dotstar or empty
  88     |  3     (((\\(■)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  89     |  3     (((\\(■)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  90     |  3     (((\\(■)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  91     |  3     (((\\(■)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  92     |  3     (((\\(■)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  93     |  3     (((\\(■)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  94     |  3     (((\\(■)*)\\)■)(\\(w)*) fail dotstar or empty
  95     |  3     (((\\(■)*)\\)(2){■})(■(w)*)fail dotstar or empty
  96     |  3     (((\\(■)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  97     |  3     (((\\(■)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  98     |  3     (((\\(■)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  99     |  3     (((\\(■)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  100    |  3     (((\\(■)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  101    |  3     (((\\(■)*)\\)(2){3,})(\\■)fail dotstar or empty
  102    |  3     (((\\(w){■})■)(■){3,})(\\(w)*)fail dotstar or empty
  103    |  3     (((\\(w){■})■)(2){■})(\\(w)*)fail dotstar or empty
  104    |  3     (((\\(w){■})■)(2){3,})(■(w)*)fail dotstar or empty
  105    |  3     (((\\(w){■})■)(2){3,})(\\(■)*)fail dotstar or empty
  106    |  3     (((\\(w){■})■)(2){3,})(\\(w){■})fail dotstar or empty
  107    |  3     (((\\■)■)(2){3,})(\\(w)*)fail dotstar or empty
  108    |  3     (((\\(w){■})\\)(■){■})(\\(w)*)fail dotstar or empty
  109    |  3     (((\\(w){■})\\)(■){3,})(■(w)*)fail dotstar or empty
  110    |  3     (((\\(w){■})\\)(■){3,})(\\(■)*)fail dotstar or empty
  111    |  3     (((\\(w){■})\\)(■){3,})(\\(w){■})fail dotstar or empty
  112    |  3     (((\\■)\\)(■){3,})(\\(w)*)fail dotstar or empty
  113    |  3     (((\\(w){■})\\)■)(\\(w)*)fail dotstar or empty
  114    |  3     (((\\(w){■})\\)(2){■})(■(w)*)fail dotstar or empty
  115    |  3     (((\\(w){■})\\)(2){■})(\\(■)*)fail dotstar or empty
  116    |  3     (((\\(w){■})\\)(2){■})(\\(w){■})fail dotstar or empty
  117    |  3     (((\\■)\\)(2){■})(\\(w)*)fail dotstar or empty
  118    |  3     (((\\(w){■})\\)(2){3,})(■(■)*)fail dotstar or empty
  119    |  3     (((\\(w){■})\\)(2){3,})(■(w){■})fail dotstar or empty
  120    |  3     (((\\■)\\)(2){3,})(■(w)*)fail dotstar or empty
  121    |  3     (((\\(w){■})\\)(2){3,})(\\(■){■})fail dotstar or empty
  122    |  3     (((\\■)\\)(2){3,})(\\(■)*)fail dotstar or empty
  123    |  3     (((\\■)\\)(2){3,})(\\(w){■})fail dotstar or empty
  124    |  3     (((\\(w){■})\\)(2){3,})(\\■)fail dotstar or empty
  125    |  3     (((\\(w)*)■)(■){■})(\\(w)*)fail dotstar or empty
  126    |  3     (((\\(w)*)■)(■){3,})(■(w)*)fail dotstar or empty
  127    |  3     (((\\(w)*)■)(■){3,})(\\(■)*)fail dotstar or empty
  128    |  3     (((\\(w)*)■)(■){3,})(\\(w){■})fail dotstar or empty
  129    |  3     (((\\(w)*)■)■)(\\(w)*)  fail dotstar or empty
  130    |  3     (((\\(w)*)■)(2){■})(■(w)*)fail dotstar or empty
  131    |  3     (((\\(w)*)■)(2){■})(\\(■)*)fail dotstar or empty
  132    |  3     (((\\(w)*)■)(2){■})(\\(w){■})fail dotstar or empty
  133    |  3     (((\\(w)*)■)(2){3,})(■(■)*)fail dotstar or empty
  134    |  3     (((\\(w)*)■)(2){3,})(■(w){■})fail dotstar or empty
  135    |  3     (((\\(w)*)■)(2){3,})(\\(■){■})fail dotstar or empty
  136    |  3     (((\\(w)*)■)(2){3,})(\\■)fail dotstar or empty
  137    |  3     (((\\(w)*)\\)(■){■})(■(w)*)fail dotstar or empty
  138    |  3     (((\\(w)*)\\)(■){■})(\\(■)*)fail dotstar or empty
  139    |  3     (((\\(w)*)\\)(■){■})(\\(w){■})fail dotstar or empty
  140    |  3     (((\\(w)*)\\)(■){3,})(■(■)*)fail dotstar or empty
  141    |  3     (((\\(w)*)\\)(■){3,})(■(w){■})fail dotstar or empty
  142    |  3     (((\\(w)*)\\)■)(■(w)*)  fail dotstar or empty
  143    |  3     (((\\(w)*)\\)(■){3,})(\\(■){■})fail dotstar or empty
  144    |  3     (((\\(w)*)\\)■)(\\(■)*) fail dotstar or empty
  145    |  3     (((\\(w)*)\\)■)(\\(w){■})fail dotstar or empty
  146    |  3     (((\\(w)*)\\)(■){3,})(\\■)fail dotstar or empty
  147    |  3     (((\\(w)*)\\)(2){■})(■(■)*)fail dotstar or empty
  148    |  3     (((\\(w)*)\\)(2){■})(■(w){■})fail dotstar or empty
  149    |  3     (((\\(w)*)\\)(2){■})(\\(■){■})fail dotstar or empty
  150    |  3     (((\\(w)*)\\)(2){■})(\\■)fail dotstar or empty
  151    |  3     (((\\(w)*)\\)(2){3,})(■■)fail dotstar or empty
  152    |  4     (((■(■)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  153    |  4     (((■(■)*)■)(2){■})(\\(w)*)fail dotstar or empty
  154    |  4     (((■(■)*)■)(2){3,})(■(w)*)fail dotstar or empty
  155    |  4     (((■(■)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  156    |  4     (((■(■)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  157    |  4     (((■(■)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  158    |  4     (((■(■)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  159    |  4     (((■(■)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  160    |  4     (((■(■)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  161    |  4     (((■(■)*)\\)■)(\\(w)*)  fail dotstar or empty
  162    |  4     (((■(■)*)\\)(2){■})(■(w)*)fail dotstar or empty
  163    |  4     (((■(■)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  164    |  4     (((■(■)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  165    |  4     (((■(■)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  166    |  4     (((■(■)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  167    |  4     (((■(■)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  168    |  4     (((■(■)*)\\)(2){3,})(\\■)fail dotstar or empty
  169    |  4     (((■(w){■})■)(■){3,})(\\(w)*)fail dotstar or empty
  170    |  4     (((■(w){■})■)(2){■})(\\(w)*)fail dotstar or empty
  171    |  4     (((■(w){■})■)(2){3,})(■(w)*)fail dotstar or empty
  172    |  4     (((■(w){■})■)(2){3,})(\\(■)*)fail dotstar or empty
  173    |  4     (((■(w){■})■)(2){3,})(\\(w){■})fail dotstar or empty
  174    |  4     (((■■)■)(2){3,})(\\(w)*)fail dotstar or empty
  175    |  4     (((■(w){■})\\)(■){■})(\\(w)*)fail dotstar or empty
  176    |  4     (((■(w){■})\\)(■){3,})(■(w)*)fail dotstar or empty
  177    |  4     (((■(w){■})\\)(■){3,})(\\(■)*)fail dotstar or empty
  178    |  4     (((■(w){■})\\)(■){3,})(\\(w){■})fail dotstar or empty
  179    |  4     (((■■)\\)(■){3,})(\\(w)*)fail dotstar or empty
  180    |  4     (((■(w){■})\\)■)(\\(w)*)fail dotstar or empty
  181    |  4     (((■(w){■})\\)(2){■})(■(w)*)fail dotstar or empty
  182    |  4     (((■(w){■})\\)(2){■})(\\(■)*)fail dotstar or empty
  183    |  4     (((■(w){■})\\)(2){■})(\\(w){■})fail dotstar or empty
  184    |  4     (((■■)\\)(2){■})(\\(w)*)fail dotstar or empty
  185    |  4     (((■(w){■})\\)(2){3,})(■(■)*)fail dotstar or empty
  186    |  4     (((■(w){■})\\)(2){3,})(■(w){■})fail dotstar or empty
  187    |  4     (((■■)\\)(2){3,})(■(w)*)fail dotstar or empty
  188    |  4     (((■(w){■})\\)(2){3,})(\\(■){■})fail dotstar or empty
  189    |  4     (((■■)\\)(2){3,})(\\(■)*)fail dotstar or empty
  190    |  4     (((■■)\\)(2){3,})(\\(w){■})fail dotstar or empty
  191    |  4     (((■(w){■})\\)(2){3,})(\\■)fail dotstar or empty
  192    |  4     (((■)\\)(2){3,})(\\(w)*)fail dotstar or empty
  193    |  4     (((■(w)*)■)(■){■})(\\(w)*)fail dotstar or empty
  194    |  4     (((■(w)*)■)(■){3,})(■(w)*)fail dot
  195    |  4     (((■(w)*)■)(■){3,})(\\(■)*)fail dotstar or empty
  196    |  4     (((■(w)*)■)(■){3,})(\\(w){■})fail dotstar or empty
  197    |  4     (((■(w)*)■)■)(\\(w)*)   fail dotstar or empty
  198    |  4     (((■(w)*)■)(2){■})(■(w)*)get a solution: (((s(w)*)s)(2){0})(s(w)*)
add positive: s11
add negative: sss
  unsatisfiable SAT formula       
  199    |  4     (((■(w)*)■)(2){■})(\\(■)*)fail dotstar or empty
  200    |  4     (((■(w)*)■)(2){■})(\\(w){■})fail dotstar or empty
  201    |  4     (((■(w)*)■)(2){3,})(■(■)*)fail dotstar or empty
  202    |  4     (((■(w)*)■)(2){3,})(■(w){■})fail dotstar or empty
  203    |  4     (((■(w)*)■)(2){3,})(\\(■){■})fail dotstar or empty
  204    |  4     (((■(w)*)■)(2){3,})(\\■)fail dotstar or empty
  205    |  4     (((■(w)*)\\)(■){■})(■(w)*)fail dotstar or empty
  206    |  4     (((■(w)*)\\)(■){■})(\\(■)*)fail dotstar or empty
  207    |  4     (((■(w)*)\\)(■){■})(\\(w){■})fail dotstar or empty
  208    |  4     (((■(w)*)\\)(■){3,})(■(■)*)fail dotstar or empty
  209    |  4     (((■(w)*)\\)(■){3,})(■(w){■})fail dotstar or empty
  210    |  4     (((■(w)*)\\)■)(■(w)*)   fail dotstar or empty
  211    |  4     (((■(w)*)\\)(■){3,})(\\(■){■})fail dotstar or empty
  212    |  4     (((■(w)*)\\)■)(\\(■)*)  fail dotstar or empty
  213    |  4     (((■(w)*)\\)■)(\\(w){■})fail dotstar or empty
  214    |  4     (((■(w)*)\\)(■){3,})(\\■)fail dotstar or empty
  215    |  4     (((■(w)*)\\)(2){■})(■(■)*)fail dotstar or empty
  216    |  4     (((■(w)*)\\)(2){■})(■(w){■})fail dotstar or empty
  217    |  4     (((■(w)*)\\)(2){■})(\\(■){■})fail dotstar or empty
  218    |  4     (((■(w)*)\\)(2){■})(\\■)fail dotstar or empty
  219    |  4     (((■(w)*)\\)(2){3,})(■■)fail dotstar or empty
  220    |  4     (((\\(■){■})■)(■){3,})(\\(w)*)fail dotstar or empty
  221    |  4     (((\\(■){■})■)(2){■})(\\(w)*)fail dotstar or empty
  222    |  4     (((\\(■){■})■)(2){3,})(■(w)*)fail dotstar or empty
  223    |  4     (((\\(■){■})■)(2){3,})(\\(■)*)fail dotstar or empty
  224    |  4     (((\\(■){■})■)(2){3,})(\\(w){■})fail dotstar or empty
  225    |  4     (((\\(■){■})\\)(■){■})(\\(w)*)fail dotstar or empty
  226    |  4     (((\\(■){■})\\)(■){3,})(■(w)*)fail dotstar or empty
  227    |  4     (((\\(■){■})\\)(■){3,})(\\(■)*)fail dotstar or empty
  228    |  4     (((\\(■){■})\\)(■){3,})(\\(w){■})fail dotstar or empty
  229    |  4     (((\\(■){■})\\)■)(\\(w)*)fail dotstar or empty
  230    |  4     (((\\(■){■})\\)(2){■})(■(w)*)fail dotstar or empty
  231    |  4     (((\\(■){■})\\)(2){■})(\\(■)*)fail dotstar or empty
  232    |  4     (((\\(■){■})\\)(2){■})(\\(w){■})fail dotstar or empty
  233    |  4     (((\\(■){■})\\)(2){3,})(■(■)*)fail dotstar or empty
  234    |  4     (((\\(■){■})\\)(2){3,})(■(w){■})fail dotstar or empty
  235    |  4     (((\\(■){■})\\)(2){3,})(\\(■){■})fail dotstar or empty
  236    |  4     (((\\(■){■})\\)(2){3,})(\\■)fail dotstar or empty
  237    |  4     (((\\(■)*)■)(■){■})(\\(w)*)fail dotstar or empty
  238    |  4     (((\\(■)*)■)(■){3,})(■(w)*)fail dotstar or empty
  239    |  4     (((\\(■)*)■)(■){3,})(\\(■)*)fail dotstar or empty
  240    |  4     (((\\(■)*)■)(■){3,})(\\(w){■})fail dotstar or empty
  241    |  4     (((\\(■)*)■)■)(\\(w)*)  fail dotstar or empty
  242    |  4     (((\\(■)*)■)(2){■})(■(w)*)fail dotstar or empty
  243    |  4     (((\\(■)*)■)(2){■})(\\(■)*)fail dotstar or empty
  244    |  4     (((\\(■)*)■)(2){■})(\\(w){■})fail dotstar or empty
  245    |  4     (((\\(■)*)■)(2){3,})(■(■)*)fail dotstar or empty
  246    |  4     (((\\(■)*)■)(2){3,})(■(w){■})fail dotstar or empty
  247    |  4     (((\\(■)*)■)(2){3,})(\\(■){■})fail dotstar or empty
  248    |  4     (((\\(■)*)■)(2){3,})(\\■)fail dotstar or empty
  249    |  4     (((\\(■)*)\\)(■){■})(■(w)*)fail dotstar or empty
  250    |  4     (((\\(■)*)\\)(■){■})(\\(■)*)fail dotstar or empty
  251    |  4     (((\\(■)*)\\)(■){■})(\\(w){■})fail dotstar or empty
  252    |  4     (((\\(■)*)\\)(■){3,})(■(■)*)fail dotstar or empty
  253    |  4     (((\\(■)*)\\)(■){3,})(■(w){■})fail dotstar or empty
  254    |  4     (((\\(■)*)\\)■)(■(w)*)  fail dotstar or empty
  255    |  4     (((\\(■)*)\\)(■){3,})(\\(■){■})fail dotstar or empty
  256    |  4     (((\\(■)*)\\)■)(\\(■)*) fail dotstar or empty
  257    |  4     (((\\(■)*)\\)■)(\\(w){■})fail dotstar or empty
  258    |  4     (((\\(■)*)\\)(■){3,})(\\■)fail dotstar or empty
  259    |  4     (((\\(■)*)\\)(2){■})(■(■)*)fail dotstar or empty
  260    |  4     (((\\(■)*)\\)(2){■})(■(w){■})fail dotstar or empty
  261    |  4     (((\\(■)*)\\)(2){■})(\\(■){■})fail dotstar or empty
  262    |  4     (((\\(■)*)\\)(2){■})(\\■)fail dotstar or empty
  263    |  4     (((\\(■)*)\\)(2){3,})(■■)fail dotstar or empty
  264    |  4     (((\\(w){■})■)(■){■})(\\(w)*)fail dotstar or empty
  265    |  4     (((\\(w){■})■)(■){3,})(■(w)*)fail dotstar or empty
  266    |  4     (((\\(w){■})■)(■){3,})(\\(■)*)fail dotstar or empty
  267    |  4     (((\\(w){■})■)(■){3,})(\\(w){■})fail dotstar or empty
  268    |  4     (((\\■)■)(■){3,})(\\(w)*)fail dotstar or empty
  269    |  4     (((\\(w){■})■)■)(\\(w)*)fail dotstar or empty
  270    |  4     (((\\(w){■})■)(2){■})(■(w)*)fail dotstar or empty
  271    |  4     (((\\(w){■})■)(2){■})(\\(■)*)fail dotstar or empty
  272    |  4     (((\\(w){■})■)(2){■})(\\(w){■})fail dotstar or empty
  273    |  4     (((\\■)■)(2){■})(\\(w)*)fail dotstar or empty
  274    |  4     (((\\(w){■})■)(2){3,})(■(■)*)fail dotstar or empty
  275    |  4     (((\\(w){■})■)(2){3,})(■(w){■})fail dotstar or empty
  276    |  4     (((\\■)■)(2){3,})(■(w)*)fail dotstar or empty
  277    |  4     (((\\(w){■})■)(2){3,})(\\(■){■})fail dotstar or empty
  278    |  4     (((\\■)■)(2){3,})(\\(■)*)fail dotstar or empty
  279    |  4     (((\\■)■)(2){3,})(\\(w){■})fail dotstar or empty
  280    |  4     (((\\(w){■})■)(2){3,})(\\■)fail dotstar or empty
  281    |  4     (((\\(w){■})\\)(■){■})(■(w)*)fail dotstar or empty
  282    |  4     (((\\(w){■})\\)(■){■})(\\(■)*)fail dotstar or empty
  283    |  4     (((\\(w){■})\\)(■){■})(\\(w){■})fail dotstar or empty
  284    |  4     (((\\■)\\)(■){■})(\\(w)*)fail dotstar or empty
  285    |  4     (((\\(w){■})\\)(■){3,})(■(■)*)fail dotstar or empty
  286    |  4     (((\\(w){■})\\)(■){3,})(■(w){■})fail dotstar or empty
  287    |  4     (((\\■)\\)(■){3,})(■(w)*)fail dotstar or empty
  288    |  4     (((\\(w){■})\\)■)(■(w)*)fail dotstar or empty
  289    |  4     (((\\(w){■})\\)(■){3,})(\\(■){■})fail dotstar or empty
  290    |  4     (((\\■)\\)(■){3,})(\\(■)*)fail dotstar or empty
  291    |  4     (((\\(w){■})\\)■)(\\(■)*)fail dotstar or empty
  292    |  4     (((\\■)\\)(■){3,})(\\(w){■})fail dotstar or empty
  293    |  4     (((\\(w){■})\\)■)(\\(w){■})fail dotstar or empty
  294    |  4     (((\\(w){■})\\)(■){3,})(\\■)fail dotstar or empty
  295    |  4     (((\\■)\\)■)(\\(w)*)    fail dotstar or empty
  296    |  4     (((\\(w){■})\\)(2){■})(■(■)*)fail dotstar or empty
  297    |  4     (((\\(w){■})\\)(2){■})(■(w){■})fail dotstar or empty
  298    |  4     (((\\■)\\)(2){■})(■(w)*)fail dotstar or empty
  299    |  4     (((\\(w){■})\\)(2){■})(\\(■){■})fail dotstar or empty
  300    |  4     (((\\■)\\)(2){■})(\\(■)*)fail dotstar or empty
  301    |  4     (((\\■)\\)(2){■})(\\(w){■})fail dotstar or empty
  302    |  4     (((\\(w){■})\\)(2){■})(\\■)fail dotstar or empty
  303    |  4     (((\\■)\\)(2){3,})(■(■)*)fail dotstar or empty
  304    |  4     (((\\■)\\)(2){3,})(■(w){■})fail dotstar or empty
  305    |  4     (((\\(w){■})\\)(2){3,})(■■)fail dotstar or empty
  306    |  4     (((\\■)\\)(2){3,})(\\(■){■})fail dotstar or empty
  307    |  4     (((\\■)\\)(2){3,})(\\■) fail dotstar or empty
  308    |  4     (((\\(w)*)■)(■){■})(■(w)*)fail dotstar or empty
  309    |  4     (((\\(w)*)■)(■){■})(\\(■)*)fail dotstar or empty
  310    |  4     (((\\(w)*)■)(■){■})(\\(w){■})fail dotstar or empty
  311    |  4     (((\\(w)*)■)(■){3,})(■(■)*)fail dotstar or empty
  312    |  4     (((\\(w)*)■)(■){3,})(■(w){■})fail dotstar or empty
  313    |  4     (((\\(w)*)■)■)(■(w)*)   fail dotstar or empty
  314    |  4     (((\\(w)*)■)(■){3,})(\\(■){■})fail dotstar or empty
  315    |  4     (((\\(w)*)■)■)(\\(■)*)  fail dotstar or empty
  316    |  4     (((\\(w)*)■)■)(\\(w){■})fail dotstar or empty
  317    |  4     (((\\(w)*)■)(■){3,})(\\■)fail dotstar or empty
  318    |  4     (((\\(w)*)■)(2){■})(■(■)*)fail dotstar or empty
  319    |  4     (((\\(w)*)■)(2){■})(■(w){■})fail dotstar or empty
  320    |  4     (((\\(w)*)■)(2){■})(\\(■){■})fail dotstar or empty
  321    |  4     (((\\(w)*)■)(2){■})(\\■)fail dotstar or empty
  322    |  4     (((\\(w)*)■)(2){3,})(■■)fail dotstar or empty
  323    |  4     (((\\(w)*)\\)(■){■})(■(■)*)fail dotstar or empty
  324    |  4     (((\\(w)*)\\)(■){■})(■(w){■})fail dotstar or empty
  325    |  4     (((\\(w)*)\\)(■){■})(\\(■){■})fail dotstar or empty
  326    |  4     (((\\(w)*)\\)(■){■})(\\■)fail dotstar or empty
  327    |  4     (((\\(w)*)\\)■)(■(■)*)  fail dotstar or empty
  328    |  4     (((\\(w)*)\\)■)(■(w){■})fail dotstar or empty
  329    |  4     (((\\(w)*)\\)(■){3,})(■■)fail dotstar or empty
  330    |  4     (((\\(w)*)\\)■)(\\(■){■})fail dotstar or empty
  331    |  4     (((\\(w)*)\\)■)(\\■)    fail dotstar or empty
  332    |  4     (((\\(w)*)\\)(2){■})(■■)fail dotstar or empty
  333    |  4     (((\\(w)*)\\)(2){3,})(■)fail dotstar or empty
  334    |  5     (((■(■)*)■)(■){■})(\\(w)*)fail dotstar or empty
  335    |  5     (((■(■)*)■)(■){3,})(■(w)*)fail dot
  336    |  5     (((■(■)*)■)(■){3,})(\\(■)*)fail dotstar or empty
  337    |  5     (((■(■)*)■)(■){3,})(\\(w){■})fail dotstar or empty
  338    |  5     (((■(■)*)■)■)(\\(w)*)   fail dotstar or empty
  339    |  5     (((■(■)*)■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  340    |  5     (((■(■)*)■)(2){■})(\\(■)*)fail dotstar or empty
  341    |  5     (((■(■)*)■)(2){■})(\\(w){■})fail dotstar or empty
  342    |  5     (((■(■)*)■)(2){3,})(■(■)*)fail dotstar or empty
  343    |  5     (((■(■)*)■)(2){3,})(■(w){■})fail dotstar or empty
  344    |  5     (((■(■)*)■)(2){3,})(\\(■){■})fail dotstar or empty
  345    |  5     (((■(■)*)■)(2){3,})(\\■)fail dotstar or empty
  346    |  5     (((■(■)*)\\)(■){■})(■(w)*)fail dotstar or empty
  347    |  5     (((■(■)*)\\)(■){■})(\\(■)*)fail dotstar or empty
  348    |  5     (((■(■)*)\\)(■){■})(\\(w){■})fail dotstar or empty
  349    |  5     (((■(■)*)\\)(■){3,})(■(■)*)fail dotstar or empty
  350    |  5     (((■(■)*)\\)(■){3,})(■(w){■})fail dotstar or empty
  351    |  5     (((■(■)*)\\)■)(■(w)*)   fail dotstar or empty
  352    |  5     (((■(■)*)\\)(■){3,})(\\(■){■})fail dotstar or empty
  353    |  5     (((■(■)*)\\)■)(\\(■)*)  fail dotstar or empty
  354    |  5     (((■(■)*)\\)■)(\\(w){■})fail dotstar or empty
  355    |  5     (((■(■)*)\\)(■){3,})(\\■)fail dotstar or empty
  356    |  5     (((■(■)*)\\)(2){■})(■(■)*)fail dotstar or empty
  357    |  5     (((■(■)*)\\)(2){■})(■(w){■})fail dotstar or empty
  358    |  5     (((■(■)*)\\)(2){■})(\\(■){■})fail dotstar or empty
  359    |  5     (((■(■)*)\\)(2){■})(\\■)fail dotstar or empty
  360    |  5     (((■(■)*)\\)(2){3,})(■■)fail dotstar or empty
  361    |  5     (((■(w){■})■)(■){■})(\\(w)*)fail dotstar or empty
  362    |  5     (((■(w){■})■)(■){3,})(■(w)*)fail dot
  363    |  5     (((■(w){■})■)(■){3,})(\\(■)*)fail dotstar or empty
  364    |  5     (((■(w){■})■)(■){3,})(\\(w){■})fail dotstar or empty
  365    |  5     (((■■)■)(■){3,})(\\(w)*)fail dotstar or empty
  366    |  5     (((■(w){■})■)■)(\\(w)*) fail dotstar or empty
  367    |  5     (((■(w){■})■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  368    |  5     (((■(w){■})■)(2){■})(\\(■)*)fail dotstar or empty
  369    |  5     (((■(w){■})■)(2){■})(\\(w){■})fail dotstar or empty
  370    |  5     (((■■)■)(2){■})(\\(w)*) fail dotstar or empty
  371    |  5     (((■(w){■})■)(2){3,})(■(■)*)fail dotstar or empty
  372    |  5     (((■(w){■})■)(2){3,})(■(w){■})fail dotstar or empty
  373    |  5     (((■■)■)(2){3,})(■(w)*) fail dotstar or empty
  374    |  5     (((■(w){■})■)(2){3,})(\\(■){■})fail dotstar or empty
  375    |  5     (((■■)■)(2){3,})(\\(■)*)fail dotstar or empty
  376    |  5     (((■■)■)(2){3,})(\\(w){■})fail dotstar or empty
  377    |  5     (((■(w){■})■)(2){3,})(\\■)fail dotstar or empty
  378    |  5     (((■)■)(2){3,})(\\(w)*) fail dotstar or empty
  379    |  5     (((■(w){■})\\)(■){■})(■(w)*)fail dotstar or empty
  380    |  5     (((■(w){■})\\)(■){■})(\\(■)*)fail dotstar or empty
  381    |  5     (((■(w){■})\\)(■){■})(\\(w){■})fail dotstar or empty
  382    |  5     (((■■)\\)(■){■})(\\(w)*)fail dotstar or empty
  383    |  5     (((■(w){■})\\)(■){3,})(■(■)*)fail dotstar or empty
  384    |  5     (((■(w){■})\\)(■){3,})(■(w){■})fail dotstar or empty
  385    |  5     (((■■)\\)(■){3,})(■(w)*)fail dotstar or empty
  386    |  5     (((■(w){■})\\)■)(■(w)*) fail dotstar or empty
  387    |  5     (((■(w){■})\\)(■){3,})(\\(■){■})fail dotstar or empty
  388    |  5     (((■■)\\)(■){3,})(\\(■)*)fail dotstar or empty
  389    |  5     (((■(w){■})\\)■)(\\(■)*)fail dotstar or empty
  390    |  5     (((■■)\\)(■){3,})(\\(w){■})fail dotstar or empty
  391    |  5     (((■(w){■})\\)■)(\\(w){■})fail dotstar or empty
  392    |  5     (((■(w){■})\\)(■){3,})(\\■)fail dotstar or empty
  393    |  5     (((■)\\)(■){3,})(\\(w)*)fail dotstar or empty
  394    |  5     (((■■)\\)■)(\\(w)*)     fail dotstar or empty
  395    |  5     (((■(w){■})\\)(2){■})(■(■)*)fail dotstar or empty
  396    |  5     (((■(w){■})\\)(2){■})(■(w){■})fail dotstar or empty
  397    |  5     (((■■)\\)(2){■})(■(w)*) fail dotstar or empty
  398    |  5     (((■(w){■})\\)(2){■})(\\(■){■})fail dotstar or empty
  399    |  5     (((■■)\\)(2){■})(\\(■)*)fail dotstar or empty
  400    |  5     (((■■)\\)(2){■})(\\(w){■})fail dotstar or empty
  401    |  5     (((■(w){■})\\)(2){■})(\\■)fail dotstar or empty
  402    |  5     (((■)\\)(2){■})(\\(w)*) fail dotstar or empty
  403    |  5     (((■■)\\)(2){3,})(■(■)*)fail dotstar or empty
  404    |  5     (((■■)\\)(2){3,})(■(w){■})fail dotstar or empty
  405    |  5     (((■(w){■})\\)(2){3,})(■■)fail dotstar or empty
  406    |  5     (((■)\\)(2){3,})(■(w)*) fail dotstar or empty
  407    |  5     (((■■)\\)(2){3,})(\\(■){■})fail dotstar or empty
  408    |  5     (((■)\\)(2){3,})(\\(■)*)fail dotstar or empty
  409    |  5     (((■)\\)(2){3,})(\\(w){■})fail dotstar or empty
  410    |  5     (((■■)\\)(2){3,})(\\■)  fail dotstar or empty
  411    |  5     ((■\\)(2){3,})(\\(w)*)  fail dotstar or empty
  412    |  5     (((■(w)*)■)(■){■})(■(w)*)  unsatisfiable SAT formula       
  413    |  5     (((■(w)*)■)(■){■})(\\(■)*)fail dotstar or empty
  414    |  5     (((■(w)*)■)(■){■})(\\(w){■})fail dotstar or empty
  415    |  5     (((■(w)*)■)(■){3,})(■(■)*)fail dot
  416    |  5     (((■(w)*)■)(■){3,})(■(w){■})fail dot
  417    |  5     (((■(w)*)■)■)(■(w)*)    fail dot
  418    |  5     ((((■■)(w)*)■)(■){3,})(■(w)*)fail dot
  419    |  5     ((((■|■)(w)*)■)(■){3,})(■(w)*)fail dot
  420    |  5     ((((■){■}(w)*)■)(■){3,})(■(w)*)fail dot
  421    |  5     (((■(w)*)(■■))(■){3,})(■(w)*)fail dot
  422    |  5     (((■(w)*)(■|■))(■){3,})(■(w)*)fail dot
  423    |  5     (((■(w)*)(■){■})(■){3,})(■(w)*)fail dot
  424    |  5     (((■(w)*)■)(■■){3,})(■(w)*)fail dot
  425    |  5     (((■(w)*)■)((■|■)){3,})(■(w)*)fail dot
  426    |  5     (((■(w)*)■)((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  427    |  5     (((■(w)*)■)(■){3,})((■■)(w)*)fail dot
  428    |  5     (((■(w)*)■)(■){3,})((■|■)(w)*)fail dot
  429    |  5     (((■(w)*)■)(■){3,})((■){■}(w)*)fail dot
  430    |  5     (((■(w)*)■)(■){3,})(\\(■){■})fail dotstar or empty
  431    |  5     (((■(w)*)■)■)(\\(■)*)   fail dotstar or empty
  432    |  5     (((■(w)*)■)■)(\\(w){■}) fail dotstar or empty
  433    |  5     (((■(w)*)■)(■){3,})(\\■)fail dotstar or empty
  434    |  5     (((■(w)*)■)(2){■})(■(■)*)  unsatisfiable SAT formula       
  435    |  5     (((■(w)*)■)(2){■})(■(w){■})  unsatisfiable SAT formula       
  436    |  5     ((((■■)(w)*)■)(2){■})(■(w)*)fail dot
  437    |  5     ((((■|■)(w)*)■)(2){■})(■(w)*)fail solve
  438    |  5     ((((■){■}(w)*)■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  439    |  5     (((■(w)*)(■■))(2){■})(■(w)*)fail dot
  440    |  5     (((■(w)*)(■|■))(2){■})(■(w)*)fail solve
  441    |  5     (((■(w)*)(■){■})(2){■})(■(w)*)  unsatisfiable SAT formula       
  442    |  5     (((■(w)*)■)(2){■})((■■)(w)*)fail dot
  443    |  5     (((■(w)*)■)(2){■})((■|■)(w)*)fail solve
  444    |  5     (((■(w)*)■)(2){■})((■){■}(w)*)  unsatisfiable SAT formula       
  445    |  5     (((■(w)*)■)(2){■})(\\(■){■})fail dotstar or empty
  446    |  5     (((■(w)*)■)(2){■})(\\■) fail dotstar or empty
  447    |  5     (((■(w)*)■)(2){3,})(■■) fail dotstar or empty
  448    |  5     (((■(w)*)\\)(■){■})(■(■)*)fail dotstar or empty
  449    |  5     (((■(w)*)\\)(■){■})(■(w){■})fail dotstar or empty
  450    |  5     (((■(w)*)\\)(■){■})(\\(■){■})fail dotstar or empty
  451    |  5     (((■(w)*)\\)(■){■})(\\■)fail dotstar or empty
  452    |  5     (((■(w)*)\\)■)(■(■)*)   fail dotstar or empty
  453    |  5     (((■(w)*)\\)■)(■(w){■}) fail dotstar or empty
  454    |  5     (((■(w)*)\\)(■){3,})(■■)fail dotstar or empty
  455    |  5     (((■(w)*)\\)■)(\\(■){■})fail dotstar or empty
  456    |  5     (((■(w)*)\\)■)(\\■)     fail dotstar or empty
  457    |  5     (((■(w)*)\\)(2){■})(■■) fail dotstar or empty
  458    |  5     (((■(w)*)\\)(2){3,})(■) fail dotstar or empty
  459    |  5     (((\\(■){■})■)(■){■})(\\(w)*)fail dotstar or empty
  460    |  5     (((\\(■){■})■)(■){3,})(■(w)*)fail dotstar or empty
  461    |  5     (((\\(■){■})■)(■){3,})(\\(■)*)fail dotstar or empty
  462    |  5     (((\\(■){■})■)(■){3,})(\\(w){■})fail dotstar or empty
  463    |  5     (((\\(■){■})■)■)(\\(w)*)fail dotstar or empty
  464    |  5     (((\\(■){■})■)(2){■})(■(w)*)fail dotstar or empty
  465    |  5     (((\\(■){■})■)(2){■})(\\(■)*)fail dotstar or empty
  466    |  5     (((\\(■){■})■)(2){■})(\\(w){■})fail dotstar or empty
  467    |  5     (((\\(■){■})■)(2){3,})(■(■)*)fail dotstar or empty
  468    |  5     (((\\(■){■})■)(2){3,})(■(w){■})fail dotstar or empty
  469    |  5     (((\\(■){■})■)(2){3,})(\\(■){■})fail dotstar or empty
  470    |  5     (((\\(■){■})■)(2){3,})(\\■)fail dotstar or empty
  471    |  5     (((\\(■){■})\\)(■){■})(■(w)*)fail dotstar or empty
  472    |  5     (((\\(■){■})\\)(■){■})(\\(■)*)fail dotstar or empty
  473    |  5     (((\\(■){■})\\)(■){■})(\\(w){■})fail dotstar or empty
  474    |  5     (((\\(■){■})\\)(■){3,})(■(■)*)fail dotstar or empty
  475    |  5     (((\\(■){■})\\)(■){3,})(■(w){■})fail dotstar or empty
  476    |  5     (((\\(■){■})\\)■)(■(w)*)fail dotstar or empty
  477    |  5     (((\\(■){■})\\)(■){3,})(\\(■){■})fail dotstar or empty
  478    |  5     (((\\(■){■})\\)■)(\\(■)*)fail dotstar or empty
  479    |  5     (((\\(■){■})\\)■)(\\(w){■})fail dotstar or empty
  480    |  5     (((\\(■){■})\\)(■){3,})(\\■)fail dotstar or empty
  481    |  5     (((\\(■){■})\\)(2){■})(■(■)*)fail dotstar or empty
  482    |  5     (((\\(■){■})\\)(2){■})(■(w){■})fail dotstar or empty
  483    |  5     (((\\(■){■})\\)(2){■})(\\(■){■})fail dotstar or empty
  484    |  5     (((\\(■){■})\\)(2){■})(\\■)fail dotstar or empty
  485    |  5     (((\\(■){■})\\)(2){3,})(■■)fail dotstar or empty
  486    |  5     (((\\(■)*)■)(■){■})(■(w)*)fail dotstar or empty
  487    |  5     (((\\(■)*)■)(■){■})(\\(■)*)fail dotstar or empty
  488    |  5     (((\\(■)*)■)(■){■})(\\(w){■})fail dotstar or empty
  489    |  5     (((\\(■)*)■)(■){3,})(■(■)*)fail dotstar or empty
  490    |  5     (((\\(■)*)■)(■){3,})(■(w){■})fail dotstar or empty
  491    |  5     (((\\(■)*)■)■)(■(w)*)   fail dotstar or empty
  492    |  5     (((\\(■)*)■)(■){3,})(\\(■){■})fail dotstar or empty
  493    |  5     (((\\(■)*)■)■)(\\(■)*)  fail dotstar or empty
  494    |  5     (((\\(■)*)■)■)(\\(w){■})fail dotstar or empty
  495    |  5     (((\\(■)*)■)(■){3,})(\\■)fail dotstar or empty
  496    |  5     (((\\(■)*)■)(2){■})(■(■)*)fail dotstar or empty
  497    |  5     (((\\(■)*)■)(2){■})(■(w){■})fail dotstar or empty
  498    |  5     (((\\(■)*)■)(2){■})(\\(■){■})fail dotstar or empty
  499    |  5     (((\\(■)*)■)(2){■})(\\■)fail dotstar or empty
  500    |  5     (((\\(■)*)■)(2){3,})(■■)fail dotstar or empty
  501    |  5     (((\\(■)*)\\)(■){■})(■(■)*)fail dotstar or empty
  502    |  5     (((\\(■)*)\\)(■){■})(■(w){■})fail dotstar or empty
  503    |  5     (((\\(■)*)\\)(■){■})(\\(■){■})fail dotstar or empty
  504    |  5     (((\\(■)*)\\)(■){■})(\\■)fail dotstar or empty
  505    |  5     (((\\(■)*)\\)■)(■(■)*)  fail dotstar or empty
  506    |  5     (((\\(■)*)\\)■)(■(w){■})fail dotstar or empty
  507    |  5     (((\\(■)*)\\)(■){3,})(■■)fail dotstar or empty
  508    |  5     (((\\(■)*)\\)■)(\\(■){■})fail dotstar or empty
  509    |  5     (((\\(■)*)\\)■)(\\■)    fail dotstar or empty
  510    |  5     (((\\(■)*)\\)(2){■})(■■)fail dotstar or empty
  511    |  5     (((\\(■)*)\\)(2){3,})(■)fail dotstar or empty
  512    |  5     (((\\(w){■})■)(■){■})(■(w)*)fail dotstar or empty
  513    |  5     (((\\(w){■})■)(■){■})(\\(■)*)fail dotstar or empty
  514    |  5     (((\\(w){■})■)(■){■})(\\(w){■})fail dotstar or empty
  515    |  5     (((\\■)■)(■){■})(\\(w)*)fail dotstar or empty
  516    |  5     (((\\(w){■})■)(■){3,})(■(■)*)fail dotstar or empty
  517    |  5     (((\\(w){■})■)(■){3,})(■(w){■})fail dotstar or empty
  518    |  5     (((\\■)■)(■){3,})(■(w)*)fail dotstar or empty
  519    |  5     (((\\(w){■})■)■)(■(w)*) fail dotstar or empty
  520    |  5     (((\\(w){■})■)(■){3,})(\\(■){■})fail dotstar or empty
  521    |  5     (((\\■)■)(■){3,})(\\(■)*)fail dotstar or empty
  522    |  5     (((\\(w){■})■)■)(\\(■)*)fail dotstar or empty
  523    |  5     (((\\■)■)(■){3,})(\\(w){■})fail dotstar or empty
  524    |  5     (((\\(w){■})■)■)(\\(w){■})fail dotstar or empty
  525    |  5     (((\\(w){■})■)(■){3,})(\\■)fail dotstar or empty
  526    |  5     (((\\■)■)■)(\\(w)*)     fail dotstar or empty
  527    |  5     (((\\(w){■})■)(2){■})(■(■)*)fail dotstar or empty
  528    |  5     (((\\(w){■})■)(2){■})(■(w){■})fail dotstar or empty
  529    |  5     (((\\■)■)(2){■})(■(w)*) fail dotstar or empty
  530    |  5     (((\\(w){■})■)(2){■})(\\(■){■})fail dotstar or empty
  531    |  5     (((\\■)■)(2){■})(\\(■)*)fail dotstar or empty
  532    |  5     (((\\■)■)(2){■})(\\(w){■})fail dotstar or empty
  533    |  5     (((\\(w){■})■)(2){■})(\\■)fail dotstar or empty
  534    |  5     (((\\■)■)(2){3,})(■(■)*)fail dotstar or empty
  535    |  5     (((\\■)■)(2){3,})(■(w){■})fail dotstar or empty
  536    |  5     (((\\(w){■})■)(2){3,})(■■)fail dotstar or empty
  537    |  5     (((\\■)■)(2){3,})(\\(■){■})fail dotstar or empty
  538    |  5     (((\\■)■)(2){3,})(\\■)  fail dotstar or empty
  539    |  5     (((\\(w){■})\\)(■){■})(■(■)*)fail dotstar or empty
  540    |  5     (((\\(w){■})\\)(■){■})(■(w){■})fail dotstar or empty
  541    |  5     (((\\■)\\)(■){■})(■(w)*)fail dotstar or empty
  542    |  5     (((\\(w){■})\\)(■){■})(\\(■){■})fail dotstar or empty
  543    |  5     (((\\■)\\)(■){■})(\\(■)*)fail dotstar or empty
  544    |  5     (((\\■)\\)(■){■})(\\(w){■})fail dotstar or empty
  545    |  5     (((\\(w){■})\\)(■){■})(\\■)fail dotstar or empty
  546    |  5     (((\\■)\\)(■){3,})(■(■)*)fail dotstar or empty
  547    |  5     (((\\(w){■})\\)■)(■(■)*)fail dotstar or empty
  548    |  5     (((\\■)\\)(■){3,})(■(w){■})fail dotstar or empty
  549    |  5     (((\\(w){■})\\)■)(■(w){■})fail dotstar or empty
  550    |  5     (((\\(w){■})\\)(■){3,})(■■)fail dotstar or empty
  551    |  5     (((\\■)\\)■)(■(w)*)     fail dotstar or empty
  552    |  5     (((\\■)\\)(■){3,})(\\(■){■})fail dotstar or empty
  553    |  5     (((\\(w){■})\\)■)(\\(■){■})fail dotstar or empty
  554    |  5     (((\\■)\\)■)(\\(■)*)    fail dotstar or empty
  555    |  5     (((\\■)\\)■)(\\(w){■})  fail dotstar or empty
  556    |  5     (((\\■)\\)(■){3,})(\\■) fail dotstar or empty
  557    |  5     (((\\(w){■})\\)■)(\\■)  fail dotstar or empty
  558    |  5     (((\\■)\\)(2){■})(■(■)*)fail dotstar or empty
  559    |  5     (((\\■)\\)(2){■})(■(w){■})fail dotstar or empty
  560    |  5     (((\\(w){■})\\)(2){■})(■■)fail dotstar or empty
  561    |  5     (((\\■)\\)(2){■})(\\(■){■})fail dotstar or empty
  562    |  5     (((\\■)\\)(2){■})(\\■)  fail dotstar or empty
  563    |  5     (((\\■)\\)(2){3,})(■■)  fail dotstar or empty
  564    |  5     (((\\(w){■})\\)(2){3,})(■)fail dotstar or empty
  565    |  5     (((\\(w)*)■)(■){■})(■(■)*)fail dotstar or empty
  566    |  5     (((\\(w)*)■)(■){■})(■(w){■})fail dotstar or empty
  567    |  5     (((\\(w)*)■)(■){■})(\\(■){■})fail dotstar or empty
  568    |  5     (((\\(w)*)■)(■){■})(\\■)fail dotstar or empty
  569    |  5     (((\\(w)*)■)■)(■(■)*)   fail dotstar or empty
  570    |  5     (((\\(w)*)■)■)(■(w){■}) fail dotstar or empty
  571    |  5     (((\\(w)*)■)(■){3,})(■■)fail dotstar or empty
  572    |  5     (((\\(w)*)■)■)(\\(■){■})fail dotstar or empty
  573    |  5     (((\\(w)*)■)■)(\\■)     fail dotstar or empty
  574    |  5     (((\\(w)*)■)(2){■})(■■) fail dotstar or empty
  575    |  5     (((\\(w)*)■)(2){3,})(■) fail dotstar or empty
  576    |  5     (((\\(w)*)\\)(■){■})(■■)fail dotstar or empty
  577    |  5     (((\\(w)*)\\)■)(■■)     fail dotstar or empty
  578    |  5     (((\\(w)*)\\)(■){3,})(■)fail dotstar or empty
  579    |  5     (((\\(w)*)\\)(2){■})(■) fail dotstar or empty
  580    |  5     (((\\(w)*)\\)(2){3,})■  fail dotstar or empty
  581    |  6     (((■(■)*)■)(■){■})(■(w)*)  unsatisfiable SAT formula       
  582    |  6     (((■(■)*)■)(■){■})(\\(■)*)fail dotstar or empty
  583    |  6     (((■(■)*)■)(■){■})(\\(w){■})fail dotstar or empty
  584    |  6     (((■(■)*)■)(■){3,})(■(■)*)fail dot
  585    |  6     (((■(■)*)■)(■){3,})(■(w){■})fail dot
  586    |  6     (((■(■)*)■)■)(■(w)*)    fail dot
  587    |  6     ((((■■)(■)*)■)(■){3,})(■(w)*)fail dot
  588    |  6     ((((■|■)(■)*)■)(■){3,})(■(w)*)fail dot
  589    |  6     ((((■){■}(■)*)■)(■){3,})(■(w)*)fail dot
  590    |  6     (((■(■■)*)■)(■){3,})(■(w)*)fail dot
  591    |  6     (((■((■|■))*)■)(■){3,})(■(w)*)fail dot
  592    |  6     (((■((■){■})*)■)(■){3,})(■(w)*)fail dot
  593    |  6     (((■(■)*)(■■))(■){3,})(■(w)*)fail dot
  594    |  6     (((■(■)*)(■|■))(■){3,})(■(w)*)fail dot
  595    |  6     (((■(■)*)(■){■})(■){3,})(■(w)*)fail dot
  596    |  6     (((■(■)*)■)(■■){3,})(■(w)*)fail dot
  597    |  6     (((■(■)*)■)((■|■)){3,})(■(w)*)fail dot
  598    |  6     (((■(■)*)■)((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  599    |  6     (((■(■)*)■)(■){3,})((■■)(w)*)fail dot
  600    |  6     (((■(■)*)■)(■){3,})((■|■)(w)*)fail dot
  601    |  6     (((■(■)*)■)(■){3,})((■){■}(w)*)fail dot
  602    |  6     (((■(■)*)■)(■){3,})(\\(■){■})fail dotstar or empty
  603    |  6     (((■(■)*)■)■)(\\(■)*)   fail dotstar or empty
  604    |  6     (((■(■)*)■)■)(\\(w){■}) fail dotstar or empty
  605    |  6     (((■(■)*)■)(■){3,})(\\■)fail dotstar or empty
  606    |  6     (((■(■)*)■)(2){■})(■(■)*)  unsatisfiable SAT formula       
  607    |  6     (((■(■)*)■)(2){■})(■(w){■})  unsatisfiable SAT formula       
  608    |  6     ((((■■)(■)*)■)(2){■})(■(w)*)fail dot
  609    |  6     ((((■|■)(■)*)■)(2){■})(■(w)*)fail solve
  610    |  6     ((((■){■}(■)*)■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  611    |  6     (((■(■■)*)■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  612    |  6     (((■((■|■))*)■)(2){■})(■(w)*)fail solve
  613    |  6     (((■((■){■})*)■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  614    |  6     (((■(■)*)(■■))(2){■})(■(w)*)fail dot
  615    |  6     (((■(■)*)(■|■))(2){■})(■(w)*)fail solve
  616    |  6     (((■(■)*)(■){■})(2){■})(■(w)*)  unsatisfiable SAT formula       
  617    |  6     (((■(■)*)■)(2){■})((■■)(w)*)fail dot
  618    |  6     (((■(■)*)■)(2){■})((■|■)(w)*)fail solve
  619    |  6     (((■(■)*)■)(2){■})((■){■}(w)*)  unsatisfiable SAT formula       
  620    |  6     (((■(■)*)■)(2){■})(\\(■){■})fail dotstar or empty
  621    |  6     (((■(■)*)■)(2){■})(\\■) fail dotstar or empty
  622    |  6     (((■(■)*)■)(2){3,})(■■) fail dotstar or empty
  623    |  6     (((■(■)*)\\)(■){■})(■(■)*)fail dotstar or empty
  624    |  6     (((■(■)*)\\)(■){■})(■(w){■})fail dotstar or empty
  625    |  6     (((■(■)*)\\)(■){■})(\\(■){■})fail dotstar or empty
  626    |  6     (((■(■)*)\\)(■){■})(\\■)fail dotstar or empty
  627    |  6     (((■(■)*)\\)■)(■(■)*)   fail dotstar or empty
  628    |  6     (((■(■)*)\\)■)(■(w){■}) fail dotstar or empty
  629    |  6     (((■(■)*)\\)(■){3,})(■■)fail dotstar or empty
  630    |  6     (((■(■)*)\\)■)(\\(■){■})fail dotstar or empty
  631    |  6     (((■(■)*)\\)■)(\\■)     fail dotstar or empty
  632    |  6     (((■(■)*)\\)(2){■})(■■) fail dotstar or empty
  633    |  6     (((■(■)*)\\)(2){3,})(■) fail dotstar or empty
  634    |  6     (((■(w){■})■)(■){■})(■(w)*)  unsatisfiable SAT formula       
  635    |  6     (((■(w){■})■)(■){■})(\\(■)*)fail dotstar or empty
  636    |  6     (((■(w){■})■)(■){■})(\\(w){■})fail dotstar or empty
  637    |  6     (((■■)■)(■){■})(\\(w)*) fail dotstar or empty
  638    |  6     (((■(w){■})■)(■){3,})(■(■)*)fail dot
  639    |  6     (((■(w){■})■)(■){3,})(■(w){■})fail dot
  640    |  6     (((■■)■)(■){3,})(■(w)*) fail dot
  641    |  6     (((■(w){■})■)■)(■(w)*)  fail dot
  642    |  6     ((((■■)(w){■})■)(■){3,})(■(w)*)fail dot
  643    |  6     ((((■|■)(w){■})■)(■){3,})(■(w)*)fail dot
  644    |  6     ((((■){■}(w){■})■)(■){3,})(■(w)*)fail dot
  645    |  6     (((■(w){■})(■■))(■){3,})(■(w)*)fail dot
  646    |  6     (((■(w){■})(■|■))(■){3,})(■(w)*)fail dot
  647    |  6     (((■(w){■})(■){■})(■){3,})(■(w)*)fail dot
  648    |  6     (((■(w){■})■)(■■){3,})(■(w)*)fail dot
  649    |  6     (((■(w){■})■)((■|■)){3,})(■(w)*)fail dot
  650    |  6     (((■(w){■})■)((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  651    |  6     (((■(w){■})■)(■){3,})((■■)(w)*)fail dot
  652    |  6     (((■(w){■})■)(■){3,})((■|■)(w)*)fail dot
  653    |  6     (((■(w){■})■)(■){3,})((■){■}(w)*)fail dot
  654    |  6     (((■(w){■})■)(■){3,})(\\(■){■})fail dotstar or empty
  655    |  6     (((■■)■)(■){3,})(\\(■)*)fail dotstar or empty
  656    |  6     (((■(w){■})■)■)(\\(■)*) fail dotstar or empty
  657    |  6     (((■■)■)(■){3,})(\\(w){■})fail dotstar or empty
  658    |  6     (((■(w){■})■)■)(\\(w){■})fail dotstar or empty
  659    |  6     (((■(w){■})■)(■){3,})(\\■)fail dotstar or empty
  660    |  6     (((■)■)(■){3,})(\\(w)*) fail dotstar or empty
  661    |  6     (((■■)■)■)(\\(w)*)      fail dotstar or empty
  662    |  6     (((■(w){■})■)(2){■})(■(■)*)  unsatisfiable SAT formula       
  663    |  6     (((■(w){■})■)(2){■})(■(w){■})  unsatisfiable SAT formula       
  664    |  6     (((■■)■)(2){■})(■(w)*)  fail dot
  665    |  6     ((((■■)(w){■})■)(2){■})(■(w)*)fail dot
  666    |  6     ((((■|■)(w){■})■)(2){■})(■(w)*)fail solve
  667    |  6     ((((■){■}(w){■})■)(2){■})(■(w)*)  unsatisfiable SAT formula       
  668    |  6     (((■(w){■})(■■))(2){■})(■(w)*)fail dot
  669    |  6     (((■(w){■})(■|■))(2){■})(■(w)*)fail solve
  670    |  6     (((■(w){■})(■){■})(2){■})(■(w)*)  unsatisfiable SAT formula       
  671    |  6     (((■(w){■})■)(2){■})((■■)(w)*)fail dot
  672    |  6     (((■(w){■})■)(2){■})((■|■)(w)*)fail solve
  673    |  6     (((■(w){■})■)(2){■})((■){■}(w)*)  unsatisfiable SAT formula       
  674    |  6     (((■(w){■})■)(2){■})(\\(■){■})fail dotstar or empty
  675    |  6     (((■■)■)(2){■})(\\(■)*) fail dotstar or empty
  676    |  6     (((■■)■)(2){■})(\\(w){■})fail dotstar or empty
  677    |  6     (((■(w){■})■)(2){■})(\\■)fail dotstar or empty
  678    |  6     (((■)■)(2){■})(\\(w)*)  fail dotstar or empty
  679    |  6     (((■■)■)(2){3,})(■(■)*) fail dotstar or empty
  680    |  6     (((■■)■)(2){3,})(■(w){■})fail dotstar or empty
  681    |  6     (((■(w){■})■)(2){3,})(■■)fail dotstar or empty
  682    |  6     (((■)■)(2){3,})(■(w)*)  fail dotstar or empty
  683    |  6     (((■■)■)(2){3,})(\\(■){■})fail dotstar or empty
  684    |  6     (((■)■)(2){3,})(\\(■)*) fail dotstar or empty
  685    |  6     (((■)■)(2){3,})(\\(w){■})fail dotstar or empty
  686    |  6     (((■■)■)(2){3,})(\\■)   fail dotstar or empty
  687    |  6     ((■■)(2){3,})(\\(w)*)   fail dotstar or empty
  688    |  6     (((■(w){■})\\)(■){■})(■(■)*)fail dotstar or empty
  689    |  6     (((■(w){■})\\)(■){■})(■(w){■})fail dotstar or empty
  690    |  6     (((■■)\\)(■){■})(■(w)*) fail dotstar or empty
  691    |  6     (((■(w){■})\\)(■){■})(\\(■){■})fail dotstar or empty
  692    |  6     (((■■)\\)(■){■})(\\(■)*)fail dotstar or empty
  693    |  6     (((■■)\\)(■){■})(\\(w){■})fail dotstar or empty
  694    |  6     (((■(w){■})\\)(■){■})(\\■)fail dotstar or empty
  695    |  6     (((■)\\)(■){■})(\\(w)*) fail dotstar or empty
  696    |  6     (((■■)\\)(■){3,})(■(■)*)fail dotstar or empty
  697    |  6     (((■(w){■})\\)■)(■(■)*) fail dotstar or empty
  698    |  6     (((■■)\\)(■){3,})(■(w){■})fail dotstar or empty
  699    |  6     (((■(w){■})\\)■)(■(w){■})fail dotstar or empty
  700    |  6     (((■(w){■})\\)(■){3,})(■■)fail dotstar or empty
  701    |  6     (((■)\\)(■){3,})(■(w)*) fail dotstar or empty
  702    |  6     (((■■)\\)■)(■(w)*)      fail dotstar or empty
  703    |  6     (((■■)\\)(■){3,})(\\(■){■})fail dotstar or empty
  704    |  6     (((■(w){■})\\)■)(\\(■){■})fail dotstar or empty
  705    |  6     (((■)\\)(■){3,})(\\(■)*)fail dotstar or empty
  706    |  6     (((■■)\\)■)(\\(■)*)     fail dotstar or empty
  707    |  6     (((■)\\)(■){3,})(\\(w){■})fail dotstar or empty
  708    |  6     (((■■)\\)■)(\\(w){■})   fail dotstar or empty
  709    |  6     (((■■)\\)(■){3,})(\\■)  fail dotstar or empty
  710    |  6     (((■(w){■})\\)■)(\\■)   fail dotstar or empty
  711    |  6     ((■\\)(■){3,})(\\(w)*)  fail dotstar or empty
  712    |  6     (((■)\\)■)(\\(w)*)      fail dotstar or empty
  713    |  6     (((■■)\\)(2){■})(■(■)*) fail dotstar or empty
  714    |  6     (((■■)\\)(2){■})(■(w){■})fail dotstar or empty
  715    |  6     (((■(w){■})\\)(2){■})(■■)fail dotstar or empty
  716    |  6     (((■)\\)(2){■})(■(w)*)  fail dotstar or empty
  717    |  6     (((■■)\\)(2){■})(\\(■){■})fail dotstar or empty
  718    |  6     (((■)\\)(2){■})(\\(■)*) fail dotstar or empty
  719    |  6     (((■)\\)(2){■})(\\(w){■})fail dotstar or empty
  720    |  6     (((■■)\\)(2){■})(\\■)   fail dotstar or empty
  721    |  6     ((■\\)(2){■})(\\(w)*)   fail dotstar or empty
  722    |  6     (((■)\\)(2){3,})(■(■)*) fail dotstar or empty
  723    |  6     (((■)\\)(2){3,})(■(w){■})fail dotstar or empty
  724    |  6     (((■■)\\)(2){3,})(■■)   fail dotstar or empty
  725    |  6     (((■(w){■})\\)(2){3,})(■)fail dotstar or empty
  726    |  6     ((■\\)(2){3,})(■(w)*)   fail dotstar or empty
  727    |  6     (((■)\\)(2){3,})(\\(■){■})fail dotstar or empty
  728    |  6     ((■\\)(2){3,})(\\(■)*)  fail dotstar or empty
  729    |  6     ((■\\)(2){3,})(\\(w){■})fail dotstar or empty
  730    |  6     (((■)\\)(2){3,})(\\■)   fail dotstar or empty
  731    |  6     (((■(w)*)■)(■){■})(■(■)*)  unsatisfiable SAT formula       
  732    |  6     (((■(w)*)■)(■){■})(■(w){■})  unsatisfiable SAT formula       
  733    |  6     ((((■■)(w)*)■)(■){■})(■(w)*)fail dot
  734    |  6     ((((■|■)(w)*)■)(■){■})(■(w)*)fail solve
  735    |  6     ((((■){■}(w)*)■)(■){■})(■(w)*)  unsatisfiable SAT formula       
  736    |  6     (((■(w)*)(■■))(■){■})(■(w)*)fail dot
  737    |  6     (((■(w)*)(■|■))(■){■})(■(w)*)fail solve
  738    |  6     (((■(w)*)(■){■})(■){■})(■(w)*)  unsatisfiable SAT formula       
  739    |  6     (((■(w)*)■)(■■){■})(■(w)*)  unsatisfiable SAT formula       
  740    |  6     (((■(w)*)■)((■|■)){■})(■(w)*)fail solve
  741    |  6     (((■(w)*)■)((■){■}){■})(■(w)*)  unsatisfiable SAT formula       
  742    |  6     (((■(w)*)■)(■){■})((■■)(w)*)fail dot
  743    |  6     (((■(w)*)■)(■){■})((■|■)(w)*)fail solve
  744    |  6     (((■(w)*)■)(■){■})((■){■}(w)*)  unsatisfiable SAT formula       
  745    |  6     (((■(w)*)■)(■){■})(\\(■){■})fail dotstar or empty
  746    |  6     (((■(w)*)■)(■){■})(\\■) fail dotstar or empty
  747    |  6     (((■(w)*)■)■)(■(■)*)    fail dot
  748    |  6     ((((■■)(w)*)■)(■){3,})(■(■)*)fail dot
  749    |  6     ((((■|■)(w)*)■)(■){3,})(■(■)*)fail dot
  750    |  6     ((((■){■}(w)*)■)(■){3,})(■(■)*)fail dot
  751    |  6     (((■(w)*)(■■))(■){3,})(■(■)*)fail dot
  752    |  6     (((■(w)*)(■|■))(■){3,})(■(■)*)fail dot
  753    |  6     (((■(w)*)(■){■})(■){3,})(■(■)*)fail dot
  754    |  6     (((■(w)*)■)(■■){3,})(■(■)*)fail dot
  755    |  6     (((■(w)*)■)((■|■)){3,})(■(■)*)fail dot
  756    |  6     (((■(w)*)■)((■){■}){3,})(■(■)*)  unsatisfiable SAT formula       
  757    |  6     (((■(w)*)■)(■){3,})((■■)(■)*)fail dot
  758    |  6     (((■(w)*)■)(■){3,})((■|■)(■)*)fail dot
  759    |  6     (((■(w)*)■)(■){3,})((■){■}(■)*)fail dot
  760    |  6     (((■(w)*)■)(■){3,})(■(■■)*)fail dot
  761    |  6     (((■(w)*)■)(■){3,})(■((■|■))*)fail dot
  762    |  6     (((■(w)*)■)(■){3,})(■((■){■})*)fail dot
  763    |  6     (((■(w)*)■)■)(■(w){■})  fail dot
  764    |  6     (((■(w)*)■)(■){3,})(■■) fail dot
  765    |  6     ((((■■)(w)*)■)(■){3,})(■(w){■})fail dot
  766    |  6     ((((■|■)(w)*)■)(■){3,})(■(w){■})fail dot
  767    |  6     ((((■){■}(w)*)■)(■){3,})(■(w){■})fail dot
  768    |  6     (((■(w)*)(■■))(■){3,})(■(w){■})fail dot
  769    |  6     (((■(w)*)(■|■))(■){3,})(■(w){■})fail dot
  770    |  6     (((■(w)*)(■){■})(■){3,})(■(w){■})fail dot
  771    |  6     (((■(w)*)■)(■■){3,})(■(w){■})fail dot
  772    |  6     (((■(w)*)■)((■|■)){3,})(■(w){■})fail dot
  773    |  6     (((■(w)*)■)((■){■}){3,})(■(w){■})  unsatisfiable SAT formula       
  774    |  6     (((■(w)*)■)(■){3,})((■■)(w){■})fail dot
  775    |  6     (((■(w)*)■)(■){3,})((■|■)(w){■})fail dot
  776    |  6     (((■(w)*)■)(■){3,})((■){■}(w){■})fail dot
  777    |  6     ((((■■)(w)*)■)■)(■(w)*) fail dot
  778    |  6     ((((■|■)(w)*)■)■)(■(w)*)fail dot
  779    |  6     ((((■){■}(w)*)■)■)(■(w)*)  unsatisfiable SAT formula       
  780    |  6     (((■(w)*)(■■))■)(■(w)*) fail dot
  781    |  6     (((■(w)*)(■|■))■)(■(w)*)fail dot
  782    |  6     (((■(w)*)(■){■})■)(■(w)*)  unsatisfiable SAT formula       
  783    |  6     (((■(w)*)■)(■■))(■(w)*) fail dot
  784    |  6     (((■(w)*)■)(■|■))(■(w)*)fail dot
  785    |  6     (((■(w)*)■)■)((■■)(w)*) fail dot
  786    |  6     (((■(w)*)■)■)((■|■)(w)*)fail dot
  787    |  6     (((■(w)*)■)■)((■){■}(w)*)  unsatisfiable SAT formula       
  788    |  6     ((((■)(w)*)■)(■){3,})(■(w)*)fail dot
  789    |  6     (((((■■)■)(w)*)■)(■){3,})(■(w)*)fail dot
  790    |  6     (((((■|■)■)(w)*)■)(■){3,})(■(w)*)fail dot
  791    |  6     (((((■){■}■)(w)*)■)(■){3,})(■(w)*)fail dot
  792    |  6     ((((■■)(w)*)(■■))(■){3,})(■(w)*)fail dot
  793    |  6     ((((■■)(w)*)(■|■))(■){3,})(■(w)*)fail dot
  794    |  6     ((((■■)(w)*)(■){■})(■){3,})(■(w)*)fail dot
  795    |  6     ((((■■)(w)*)■)(■■){3,})(■(w)*)fail dot
  796    |  6     ((((■■)(w)*)■)((■|■)){3,})(■(w)*)fail dot
  797    |  6     ((((■■)(w)*)■)((■){■}){3,})(■(w)*)fail dot
  798    |  6     ((((■■)(w)*)■)(■){3,})((■■)(w)*)fail dot
  799    |  6     ((((■■)(w)*)■)(■){3,})((■|■)(w)*)fail dot
  800    |  6     ((((■■)(w)*)■)(■){3,})((■){■}(w)*)fail dot
  801    |  6     ((((■■|■)(w)*)■)(■){3,})(■(w)*)fail dot
  802    |  6     (((((■|■)|■)(w)*)■)(■){3,})(■(w)*)fail dot
  803    |  6     (((((■){■}|■)(w)*)■)(■){3,})(■(w)*)fail dot
  804    |  6     ((((■|■)(w)*)(■■))(■){3,})(■(w)*)fail dot
  805    |  6     ((((■|■)(w)*)(■|■))(■){3,})(■(w)*)fail dot
  806    |  6     ((((■|■)(w)*)(■){■})(■){3,})(■(w)*)fail dot
  807    |  6     ((((■|■)(w)*)■)(■■){3,})(■(w)*)fail dot
  808    |  6     ((((■|■)(w)*)■)((■|■)){3,})(■(w)*)fail dot
  809    |  6     ((((■|■)(w)*)■)((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  810    |  6     ((((■|■)(w)*)■)(■){3,})((■■)(w)*)fail dot
  811    |  6     ((((■|■)(w)*)■)(■){3,})((■|■)(w)*)fail dot
  812    |  6     ((((■|■)(w)*)■)(■){3,})((■){■}(w)*)fail dot
  813    |  6     ((((■■){■}(w)*)■)(■){3,})(■(w)*)fail dot
  814    |  6     (((((■|■)){■}(w)*)■)(■){3,})(■(w)*)fail dot
  815    |  6     (((((■){■}){■}(w)*)■)(■){3,})(■(w)*)fail dot
  816    |  6     ((((■){■}(w)*)(■■))(■){3,})(■(w)*)fail dot
  817    |  6     ((((■){■}(w)*)(■|■))(■){3,})(■(w)*)fail dot
  818    |  6     ((((■){■}(w)*)(■){■})(■){3,})(■(w)*)fail dot
  819    |  6     ((((■){■}(w)*)■)(■■){3,})(■(w)*)fail dot
  820    |  6     ((((■){■}(w)*)■)((■|■)){3,})(■(w)*)fail dot
  821    |  6     ((((■){■}(w)*)■)((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  822    |  6     ((((■){■}(w)*)■)(■){3,})((■■)(w)*)fail dot
  823    |  6     ((((■){■}(w)*)■)(■){3,})((■|■)(w)*)fail dot
  824    |  6     ((((■){■}(w)*)■)(■){3,})((■){■}(w)*)fail dot
  825    |  6     (((■(w)*)(■))(■){3,})(■(w)*)fail dot
  826    |  6     (((■(w)*)((■■)■))(■){3,})(■(w)*)fail dot
  827    |  6     (((■(w)*)((■|■)■))(■){3,})(■(w)*)fail dot
  828    |  6     (((■(w)*)((■){■}■))(■){3,})(■(w)*)fail dot
  829    |  6     (((■(w)*)(■■))(■■){3,})(■(w)*)fail dot
  830    |  6     (((■(w)*)(■■))((■|■)){3,})(■(w)*)fail dot
  831    |  6     (((■(w)*)(■■))((■){■}){3,})(■(w)*)fail dot
  832    |  6     (((■(w)*)(■■))(■){3,})((■■)(w)*)fail dot
  833    |  6     (((■(w)*)(■■))(■){3,})((■|■)(w)*)fail dot
  834    |  6     (((■(w)*)(■■))(■){3,})((■){■}(w)*)fail dot
  835    |  6     (((■(w)*)(■■|■))(■){3,})(■(w)*)fail dot
  836    |  6     (((■(w)*)((■|■)|■))(■){3,})(■(w)*)fail dot
  837    |  6     (((■(w)*)((■){■}|■))(■){3,})(■(w)*)fail dot
  838    |  6     (((■(w)*)(■|■))(■■){3,})(■(w)*)fail dot
  839    |  6     (((■(w)*)(■|■))((■|■)){3,})(■(w)*)fail dot
  840    |  6     (((■(w)*)(■|■))((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  841    |  6     (((■(w)*)(■|■))(■){3,})((■■)(w)*)fail dot
  842    |  6     (((■(w)*)(■|■))(■){3,})((■|■)(w)*)fail dot
  843    |  6     (((■(w)*)(■|■))(■){3,})((■){■}(w)*)fail dot
  844    |  6     (((■(w)*)(■■){■})(■){3,})(■(w)*)fail dot
  845    |  6     (((■(w)*)((■|■)){■})(■){3,})(■(w)*)fail dot
  846    |  6     (((■(w)*)((■){■}){■})(■){3,})(■(w)*)fail dot
  847    |  6     (((■(w)*)(■){■})(■■){3,})(■(w)*)fail dot
  848    |  6     (((■(w)*)(■){■})((■|■)){3,})(■(w)*)fail dot
  849    |  6     (((■(w)*)(■){■})((■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  850    |  6     (((■(w)*)(■){■})(■){3,})((■■)(w)*)fail dot
  851    |  6     (((■(w)*)(■){■})(■){3,})((■|■)(w)*)fail dot
  852    |  6     (((■(w)*)(■){■})(■){3,})((■){■}(w)*)fail dot
  853    |  6     (((■(w)*)■)((■■)■){3,})(■(w)*)fail dot
  854    |  6     (((■(w)*)■)((■|■)■){3,})(■(w)*)fail dot
  855    |  6     (((■(w)*)■)((■){■}■){3,})(■(w)*)fail dot
  856    |  6     (((■(w)*)■)(■■){3,})((■■)(w)*)fail dot
  857    |  6     (((■(w)*)■)(■■){3,})((■|■)(w)*)fail dot
  858    |  6     (((■(w)*)■)(■■){3,})((■){■}(w)*)fail dot
  859    |  6     (((■(w)*)■)((■■|■)){3,})(■(w)*)fail dot
  860    |  6     (((■(w)*)■)(((■|■)|■)){3,})(■(w)*)fail dot
  861    |  6     (((■(w)*)■)(((■){■}|■)){3,})(■(w)*)  unsatisfiable SAT formula       
  862    |  6     (((■(w)*)■)((■|■)){3,})((■■)(w)*)fail dot
  863    |  6     (((■(w)*)■)((■|■)){3,})((■|■)(w)*)fail dot
  864    |  6     (((■(w)*)■)((■|■)){3,})((■){■}(w)*)fail dot
  865    |  6     (((■(w)*)■)((■■){■}){3,})(■(w)*)  unsatisfiable SAT formula       
  866    |  6     (((■(w)*)■)(((■|■)){■}){3,})(■(w)*)fail solve
  867    |  6     (((■(w)*)■)(((■){■}){■}){3,})(■(w)*)
5.129937171936035
timeout