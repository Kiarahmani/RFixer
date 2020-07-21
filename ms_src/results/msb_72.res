
Given the regular expression:

  aaa((\n|.))*bbb

That that should match the strings:


And reject the strings:

  ✗ (0:18)   aaa and ending bbb

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■a)a)((\n|.))*)b)b)bget a solution: ((((([∅]a)a)((\n|.))*)b)b)b
add positive: CtrlEnter
  2      |  1     (((((a■)a)((\n|.))*)b)b)bfail dotstar or empty
  3      |  1     (((((aa)■)((\n|.))*)b)b)bfail dotstar or empty
  4      |  1     (((((aa)a)((■|.))*)b)b)bfail dotstar or empty
  5      |  1     (((((aa)a)((\n|■))*)b)b)bfail dotstar or empty
  6      |  1     (((((aa)a)((\n|.)){■})b)b)bfail dotstar or empty
  7      |  1     (((((aa)a)((\n|.))*)■)b)bfail dotstar or empty
  8      |  1     (((((aa)a)((\n|.))*)b)■)bfail dotstar or empty
  9      |  1     (((((aa)a)((\n|.))*)b)b)■fail dotstar or empty
  10     |  2     (((((■■)a)((\n|.))*)b)b)bfail dotstar or empty
  11     |  2     (((((■a)■)((\n|.))*)b)b)bfail dotstar or empty
  12     |  2     (((((■a)a)((■|.))*)b)b)bfail dotstar or empty
  13     |  2     (((((■a)a)((\n|■))*)b)b)bfail dotstar or empty
  14     |  2     (((((■a)a)((\n|.)){■})b)b)bfail dotstar or empty
  15     |  2     (((((■a)a)((\n|.))*)■)b)bfail dotstar or empty
  16     |  2     (((((■a)a)((\n|.))*)b)■)bfail dotstar or empty
  17     |  2     (((((■a)a)((\n|.))*)b)b)■fail dotstar or empty
  18     |  2     ((((((■■)a)a)((\n|.))*)b)b)bfail dot
  19     |  2     ((((((■|■)a)a)((\n|.))*)b)b)bfail solve
  20     |  2     ((((((■){■}a)a)((\n|.))*)b)b)bfail dot
  21     |  2     (((((a■)■)((\n|.))*)b)b)bfail dotstar or empty
  22     |  2     (((((a■)a)((■|.))*)b)b)bfail dotstar or empty
  23     |  2     (((((a■)a)((\n|■))*)b)b)bfail dotstar or empty
  24     |  2     (((((a■)a)((\n|.)){■})b)b)bfail dotstar or empty
  25     |  2     (((((a■)a)((\n|.))*)■)b)bfail dotstar or empty
  26     |  2     (((((a■)a)((\n|.))*)b)■)bfail dotstar or empty
  27     |  2     (((((a■)a)((\n|.))*)b)b)■fail dotstar or empty
  28     |  2     (((((aa)■)((■|.))*)b)b)bfail dotstar or empty
  29     |  2     (((((aa)■)((\n|■))*)b)b)bfail dotstar or empty
  30     |  2     (((((aa)■)((\n|.)){■})b)b)bfail dotstar or empty
  31     |  2     (((((aa)■)((\n|.))*)■)b)bfail dotstar or empty
  32     |  2     (((((aa)■)((\n|.))*)b)■)bfail dotstar or empty
  33     |  2     (((((aa)■)((\n|.))*)b)b)■fail dotstar or empty
  34     |  2     (((((aa)a)((■|■))*)b)b)bfail dotstar or empty
  35     |  2     (((((aa)a)((■|.)){■})b)b)bfail dotstar or empty
  36     |  2     (((((aa)a)((■|.))*)■)b)bfail dotstar or empty
  37     |  2     (((((aa)a)((■|.))*)b)■)bfail dotstar or empty
  38     |  2     (((((aa)a)((■|.))*)b)b)■fail dotstar or empty
  39     |  2     (((((aa)a)((\n|■)){■})b)b)bfail dotstar or empty
  40     |  2     (((((aa)a)((\n|■))*)■)b)bfail dotstar or empty
  41     |  2     (((((aa)a)((\n|■))*)b)■)bfail dotstar or empty
  42     |  2     (((((aa)a)((\n|■))*)b)b)■fail dotstar or empty
  43     |  2     (((((aa)a)((\n|.)){■})■)b)bfail dotstar or empty
  44     |  2     (((((aa)a)((\n|.)){■})b)■)bfail dotstar or empty
  45     |  2     (((((aa)a)((\n|.)){■})b)b)■fail dotstar or empty
  46     |  2     (((((aa)a)■)b)b)b       fail dotstar or empty
  47     |  2     (((((aa)a)((\n|.))*)■)■)bfail dotstar or empty
  48     |  2     (((((aa)a)((\n|.))*)■)b)■fail dotstar or empty
  49     |  2     (((((aa)a)((\n|.))*)b)■)■fail dotstar or empty
  50     |  3     (((((■■)■)((\n|.))*)b)b)bfail dotstar or empty
  51     |  3     (((((■■)a)((■|.))*)b)b)bfail dotstar or empty
  52     |  3     (((((■■)a)((\n|■))*)b)b)bfail dotstar or empty
  53     |  3     (((((■■)a)((\n|.)){■})b)b)bfail dotstar or empty
  54     |  3     (((((■■)a)((\n|.))*)■)b)bfail dotstar or empty
  55     |  3     (((((■■)a)((\n|.))*)b)■)bfail dotstar or empty
  56     |  3     (((((■■)a)((\n|.))*)b)b)■fail dotstar or empty
  57     |  3     (((((■)a)((\n|.))*)b)b)bfail dotstar or empty
  58     |  3     (((((■a)■)((■|.))*)b)b)bfail dotstar or empty
  59     |  3     (((((■a)■)((\n|■))*)b)b)bfail dotstar or empty
  60     |  3     (((((■a)■)((\n|.)){■})b)b)bfail dotstar or empty
  61     |  3     (((((■a)■)((\n|.))*)■)b)bfail dotstar or empty
  62     |  3     (((((■a)■)((\n|.))*)b)■)bfail dotstar or empty
  63     |  3     (((((■a)■)((\n|.))*)b)b)■fail dotstar or empty
  64     |  3     (((((■a)a)((■|■))*)b)b)bfail dotstar or empty
  65     |  3     (((((■a)a)((■|.)){■})b)b)bfail dotstar or empty
  66     |  3     (((((■a)a)((■|.))*)■)b)bfail dotstar or empty
  67     |  3     (((((■a)a)((■|.))*)b)■)bfail dotstar or empty
  68     |  3     (((((■a)a)((■|.))*)b)b)■fail dotstar or empty
  69     |  3     (((((■a)a)((\n|■)){■})b)b)bfail dotstar or empty
  70     |  3     (((((■a)a)((\n|■))*)■)b)bfail dotstar or empty
  71     |  3     (((((■a)a)((\n|■))*)b)■)bfail dotstar or empty
  72     |  3     (((((■a)a)((\n|■))*)b)b)■fail dotstar or empty
  73     |  3     (((((■a)a)((\n|.)){■})■)b)bfail dotstar or empty
  74     |  3     (((((■a)a)((\n|.)){■})b)■)bfail dotstar or empty
  75     |  3     (((((■a)a)((\n|.)){■})b)b)■fail dotstar or empty
  76     |  3     (((((■a)a)■)b)b)b       fail dotstar or empty
  77     |  3     (((((■a)a)((\n|.))*)■)■)bfail dotstar or empty
  78     |  3     (((((■a)a)((\n|.))*)■)b)■fail dotstar or empty
  79     |  3     (((((■a)a)((\n|.))*)b)■)■fail dotstar or empty
  80     |  3     ((((((■■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  81     |  3     ((((((■■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  82     |  3     ((((((■■)a)a)((■|.))*)b)b)bfail dotstar or empty
  83     |  3     ((((((■■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  84     |  3     ((((((■■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  85     |  3     ((((((■■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  86     |  3     ((((((■■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  87     |  3     ((((((■■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  88     |  3     ((((((■)a)a)((\n|.))*)b)b)bfail dotstar or empty
  89     |  3     (((((((■■)■)a)a)((\n|.))*)b)b)bfail dot
  90     |  3     (((((((■|■)■)a)a)((\n|.))*)b)b)bfail dot
  91     |  3     (((((((■){■}■)a)a)((\n|.))*)b)b)bfail dot
  92     |  3     ((((((■|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  93     |  3     ((((((■|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  94     |  3     ((((((■|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  95     |  3     ((((((■|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  96     |  3     ((((((■|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  97     |  3     ((((((■|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  98     |  3     ((((((■|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  99     |  3     ((((((■|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  100    |  3     ((((((■■|■)a)a)((\n|.))*)b)b)bfail dot
  101    |  3     (((((((■|■)|■)a)a)((\n|.))*)b)b)bfail solve
  102    |  3     (((((((■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  103    |  3     ((((((■){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  104    |  3     ((((((■){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  105    |  3     ((((((■){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  106    |  3     ((((((■){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  107    |  3     ((((((■){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  108    |  3     ((((((■){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  109    |  3     ((((((■){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  110    |  3     ((((((■){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  111    |  3     ((((((■■){■}a)a)((\n|.))*)b)b)bfail dot
  112    |  3     (((((((■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  113    |  3     (((((((■){■}){■}a)a)((\n|.))*)b)b)bfail dot
  114    |  3     (((((a■)■)((■|.))*)b)b)bfail dotstar or empty
  115    |  3     (((((a■)■)((\n|■))*)b)b)bfail dotstar or empty
  116    |  3     (((((a■)■)((\n|.)){■})b)b)bfail dotstar or empty
  117    |  3     (((((a■)■)((\n|.))*)■)b)bfail dotstar or empty
  118    |  3     (((((a■)■)((\n|.))*)b)■)bfail dotstar or empty
  119    |  3     (((((a■)■)((\n|.))*)b)b)■fail dotstar or empty
  120    |  3     (((((a■)a)((■|■))*)b)b)bfail dotstar or empty
  121    |  3     (((((a■)a)((■|.)){■})b)b)bfail dotstar or empty
  122    |  3     (((((a■)a)((■|.))*)■)b)bfail dotstar or empty
  123    |  3     (((((a■)a)((■|.))*)b)■)bfail dotstar or empty
  124    |  3     (((((a■)a)((■|.))*)b)b)■fail dotstar or empty
  125    |  3     (((((a■)a)((\n|■)){■})b)b)bfail dotstar or empty
  126    |  3     (((((a■)a)((\n|■))*)■)b)bfail dotstar or empty
  127    |  3     (((((a■)a)((\n|■))*)b)■)bfail dotstar or empty
  128    |  3     (((((a■)a)((\n|■))*)b)b)■fail dotstar or empty
  129    |  3     (((((a■)a)((\n|.)){■})■)b)bfail dotstar or empty
  130    |  3     (((((a■)a)((\n|.)){■})b)■)bfail dotstar or empty
  131    |  3     (((((a■)a)((\n|.)){■})b)b)■fail dotstar or empty
  132    |  3     (((((a■)a)■)b)b)b       fail dotstar or empty
  133    |  3     (((((a■)a)((\n|.))*)■)■)bfail dotstar or empty
  134    |  3     (((((a■)a)((\n|.))*)■)b)■fail dotstar or empty
  135    |  3     (((((a■)a)((\n|.))*)b)■)■fail dotstar or empty
  136    |  3     (((((aa)■)((■|■))*)b)b)bfail dotstar or empty
  137    |  3     (((((aa)■)((■|.)){■})b)b)bfail dotstar or empty
  138    |  3     (((((aa)■)((■|.))*)■)b)bfail dotstar or empty
  139    |  3     (((((aa)■)((■|.))*)b)■)bfail dotstar or empty
  140    |  3     (((((aa)■)((■|.))*)b)b)■fail dotstar or empty
  141    |  3     (((((aa)■)((\n|■)){■})b)b)bfail dotstar or empty
  142    |  3     (((((aa)■)((\n|■))*)■)b)bfail dotstar or empty
  143    |  3     (((((aa)■)((\n|■))*)b)■)bfail dotstar or empty
  144    |  3     (((((aa)■)((\n|■))*)b)b)■fail dotstar or empty
  145    |  3     (((((aa)■)((\n|.)){■})■)b)bfail dotstar or empty
  146    |  3     (((((aa)■)((\n|.)){■})b)■)bfail dotstar or empty
  147    |  3     (((((aa)■)((\n|.)){■})b)b)■fail dotstar or empty
  148    |  3     (((((aa)■)■)b)b)b       fail dotstar or empty
  149    |  3     (((((aa)■)((\n|.))*)■)■)bfail dotstar or empty
  150    |  3     (((((aa)■)((\n|.))*)■)b)■fail dotstar or empty
  151    |  3     (((((aa)■)((\n|.))*)b)■)■fail dotstar or empty
  152    |  3     (((((aa)a)((■|■)){■})b)b)bfail dotstar or empty
  153    |  3     (((((aa)a)((■|■))*)■)b)bfail dotstar or empty
  154    |  3     (((((aa)a)((■|■))*)b)■)bfail dotstar or empty
  155    |  3     (((((aa)a)((■|■))*)b)b)■fail dotstar or empty
  156    |  3     (((((aa)a)(■)*)b)b)b    fail dotstar or empty
  157    |  3     (((((aa)a)((■|.)){■})■)b)bfail dotstar or empty
  158    |  3     (((((aa)a)((■|.)){■})b)■)bfail dotstar or empty
  159    |  3     (((((aa)a)((■|.)){■})b)b)■fail dotstar or empty
  160    |  3     (((((aa)a)((■|.))*)■)■)bfail dotstar or empty
  161    |  3     (((((aa)a)((■|.))*)■)b)■fail dotstar or empty
  162    |  3     (((((aa)a)((■|.))*)b)■)■fail dotstar or empty
  163    |  3     (((((aa)a)((\n|■)){■})■)b)bfail dotstar or empty
  164    |  3     (((((aa)a)((\n|■)){■})b)■)bfail dotstar or empty
  165    |  3     (((((aa)a)((\n|■)){■})b)b)■fail dotstar or empty
  166    |  3     (((((aa)a)((\n|■))*)■)■)bfail dotstar or empty
  167    |  3     (((((aa)a)((\n|■))*)■)b)■fail dotstar or empty
  168    |  3     (((((aa)a)((\n|■))*)b)■)■fail dotstar or empty
  169    |  3     (((((aa)a)((\n|.)){■})■)■)bfail dotstar or empty
  170    |  3     (((((aa)a)((\n|.)){■})■)b)■fail dotstar or empty
  171    |  3     (((((aa)a)■)■)b)b       fail dotstar or empty
  172    |  3     (((((aa)a)((\n|.)){■})b)■)■fail dotstar or empty
  173    |  3     (((((aa)a)■)b)■)b       fail dotstar or empty
  174    |  3     (((((aa)a)■)b)b)■       fail dotstar or empty
  175    |  3     (((((aa)a)((\n|.))*)■)■)■fail dotstar or empty
  176    |  4     (((((■■)■)((■|.))*)b)b)bfail dotstar or empty
  177    |  4     (((((■■)■)((\n|■))*)b)b)bfail dotstar or empty
  178    |  4     (((((■■)■)((\n|.)){■})b)b)bfail dotstar or empty
  179    |  4     (((((■■)■)((\n|.))*)■)b)bfail dotstar or empty
  180    |  4     (((((■■)■)((\n|.))*)b)■)bfail dotstar or empty
  181    |  4     (((((■■)■)((\n|.))*)b)b)■fail dotstar or empty
  182    |  4     (((((■)■)((\n|.))*)b)b)bfail dotstar or empty
  183    |  4     (((((■■)a)((■|■))*)b)b)bfail dotstar or empty
  184    |  4     (((((■■)a)((■|.)){■})b)b)bfail dotstar or empty
  185    |  4     (((((■■)a)((■|.))*)■)b)bfail dotstar or empty
  186    |  4     (((((■■)a)((■|.))*)b)■)bfail dotstar or empty
  187    |  4     (((((■■)a)((■|.))*)b)b)■fail dotstar or empty
  188    |  4     (((((■)a)((■|.))*)b)b)b fail dotstar or empty
  189    |  4     (((((■■)a)((\n|■)){■})b)b)bfail dotstar or empty
  190    |  4     (((((■■)a)((\n|■))*)■)b)bfail dotstar or empty
  191    |  4     (((((■■)a)((\n|■))*)b)■)bfail dotstar or empty
  192    |  4     (((((■■)a)((\n|■))*)b)b)■fail dotstar or empty
  193    |  4     (((((■)a)((\n|■))*)b)b)bfail dotstar or empty
  194    |  4     (((((■■)a)((\n|.)){■})■)b)bfail dotstar or empty
  195    |  4     (((((■■)a)((\n|.)){■})b)■)bfail dotstar or empty
  196    |  4     (((((■■)a)((\n|.)){■})b)b)■fail dotstar or empty
  197    |  4     (((((■)a)((\n|.)){■})b)b)bfail dotstar or empty
  198    |  4     (((((■■)a)■)b)b)b       fail dotstar or empty
  199    |  4     (((((■■)a)((\n|.))*)■)■)bfail dotstar or empty
  200    |  4     (((((■■)a)((\n|.))*)■)b)■fail dotstar or empty
  201    |  4     (((((■)a)((\n|.))*)■)b)bfail dotstar or empty
  202    |  4     (((((■■)a)((\n|.))*)b)■)■fail dotstar or empty
  203    |  4     (((((■)a)((\n|.))*)b)■)bfail dotstar or empty
  204    |  4     (((((■)a)((\n|.))*)b)b)■fail dotstar or empty
  205    |  4     ((((■a)((\n|.))*)b)b)b  fail dotstar or empty
  206    |  4     (((((■a)■)((■|■))*)b)b)bfail dotstar or empty
  207    |  4     (((((■a)■)((■|.)){■})b)b)bfail dotstar or empty
  208    |  4     (((((■a)■)((■|.))*)■)b)bfail dotstar or empty
  209    |  4     (((((■a)■)((■|.))*)b)■)bfail dotstar or empty
  210    |  4     (((((■a)■)((■|.))*)b)b)■fail dotstar or empty
  211    |  4     (((((■a)■)((\n|■)){■})b)b)bfail dotstar or empty
  212    |  4     (((((■a)■)((\n|■))*)■)b)bfail dotstar or empty
  213    |  4     (((((■a)■)((\n|■))*)b)■)bfail dotstar or empty
  214    |  4     (((((■a)■)((\n|■))*)b)b)■fail dotstar or empty
  215    |  4     (((((■a)■)((\n|.)){■})■)b)bfail dotstar or empty
  216    |  4     (((((■a)■)((\n|.)){■})b)■)bfail dotstar or empty
  217    |  4     (((((■a)■)((\n|.)){■})b)b)■fail dotstar or empty
  218    |  4     (((((■a)■)■)b)b)b       fail dotstar or empty
  219    |  4     (((((■a)■)((\n|.))*)■)■)bfail dotstar or empty
  220    |  4     (((((■a)■)((\n|.))*)■)b)■fail dotstar or empty
  221    |  4     (((((■a)■)((\n|.))*)b)■)■fail dotstar or empty
  222    |  4     (((((■a)a)((■|■)){■})b)b)bfail dotstar or empty
  223    |  4     (((((■a)a)((■|■))*)■)b)bfail dotstar or empty
  224    |  4     (((((■a)a)((■|■))*)b)■)bfail dotstar or empty
  225    |  4     (((((■a)a)((■|■))*)b)b)■fail dotstar or empty
  226    |  4     (((((■a)a)(■)*)b)b)b    fail dotstar or empty
  227    |  4     (((((■a)a)((■|.)){■})■)b)bfail dotstar or empty
  228    |  4     (((((■a)a)((■|.)){■})b)■)bfail dotstar or empty
  229    |  4     (((((■a)a)((■|.)){■})b)b)■fail dotstar or empty
  230    |  4     (((((■a)a)((■|.))*)■)■)bfail dotstar or empty
  231    |  4     (((((■a)a)((■|.))*)■)b)■fail dotstar or empty
  232    |  4     (((((■a)a)((■|.))*)b)■)■fail dotstar or empty
  233    |  4     (((((■a)a)((\n|■)){■})■)b)bfail dotstar or empty
  234    |  4     (((((■a)a)((\n|■)){■})b)■)bfail dotstar or empty
  235    |  4     (((((■a)a)((\n|■)){■})b)b)■fail dotstar or empty
  236    |  4     (((((■a)a)((\n|■))*)■)■)bfail dotstar or empty
  237    |  4     (((((■a)a)((\n|■))*)■)b)■fail dotstar or empty
  238    |  4     (((((■a)a)((\n|■))*)b)■)■fail dotstar or empty
  239    |  4     (((((■a)a)((\n|.)){■})■)■)bfail dotstar or empty
  240    |  4     (((((■a)a)((\n|.)){■})■)b)■fail dotstar or empty
  241    |  4     (((((■a)a)■)■)b)b       fail dotstar or empty
  242    |  4     (((((■a)a)((\n|.)){■})b)■)■fail dotstar or empty
  243    |  4     (((((■a)a)■)b)■)b       fail dotstar or empty
  244    |  4     (((((■a)a)■)b)b)■       fail dotstar or empty
  245    |  4     (((((■a)a)((\n|.))*)■)■)■fail dotstar or empty
  246    |  4     ((((((■■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  247    |  4     ((((((■■)■)a)((■|.))*)b)b)bfail dotstar or empty
  248    |  4     ((((((■■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  249    |  4     ((((((■■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  250    |  4     ((((((■■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  251    |  4     ((((((■■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  252    |  4     ((((((■■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  253    |  4     ((((((■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  254    |  4     ((((((■■)a)■)((■|.))*)b)b)bfail dotstar or empty
  255    |  4     ((((((■■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  256    |  4     ((((((■■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  257    |  4     ((((((■■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  258    |  4     ((((((■■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  259    |  4     ((((((■■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  260    |  4     ((((((■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  261    |  4     ((((((■■)a)a)((■|■))*)b)b)bfail dotstar or empty
  262    |  4     ((((((■■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  263    |  4     ((((((■■)a)a)((■|.))*)■)b)bfail dotstar or empty
  264    |  4     ((((((■■)a)a)((■|.))*)b)■)bfail dotstar or empty
  265    |  4     ((((((■■)a)a)((■|.))*)b)b)■fail dotstar or empty
  266    |  4     ((((((■)a)a)((■|.))*)b)b)bfail dotstar or empty
  267    |  4     ((((((■■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  268    |  4     ((((((■■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  269    |  4     ((((((■■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  270    |  4     ((((((■■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  271    |  4     ((((((■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  272    |  4     ((((((■■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  273    |  4     ((((((■■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  274    |  4     ((((((■■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  275    |  4     ((((((■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  276    |  4     ((((((■■)a)a)■)b)b)b    fail dotstar or empty
  277    |  4     ((((((■■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  278    |  4     ((((((■■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  279    |  4     ((((((■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  280    |  4     ((((((■■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  281    |  4     ((((((■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  282    |  4     ((((((■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  283    |  4     (((((((■■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  284    |  4     (((((((■■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  285    |  4     (((((((■■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  286    |  4     (((((((■■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  287    |  4     (((((((■■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  288    |  4     (((((((■■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  289    |  4     (((((((■■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  290    |  4     (((((((■■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  291    |  4     (((((((■)■)a)a)((\n|.))*)b)b)bfail dotstar or empty
  292    |  4     ((((((((■■)■)■)a)a)((\n|.))*)b)b)bfail dot
  293    |  4     ((((((((■|■)■)■)a)a)((\n|.))*)b)b)bfail dot
  294    |  4     ((((((((■){■}■)■)a)a)((\n|.))*)b)b)bfail dot
  295    |  4     (((((((■■)(■■))a)a)((\n|.))*)b)b)bfail dot
  296    |  4     (((((((■■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  297    |  4     (((((((■■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  298    |  4     (((((((■|■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  299    |  4     (((((((■|■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  300    |  4     (((((((■|■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  301    |  4     (((((((■|■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  302    |  4     (((((((■|■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  303    |  4     (((((((■|■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  304    |  4     (((((((■|■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  305    |  4     (((((((■|■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  306    |  4     (((((((■■|■)■)a)a)((\n|.))*)b)b)bfail dot
  307    |  4     ((((((((■|■)|■)■)a)a)((\n|.))*)b)b)bfail dot
  308    |  4     ((((((((■){■}|■)■)a)a)((\n|.))*)b)b)bfail dot
  309    |  4     (((((((■|■)(■■))a)a)((\n|.))*)b)b)bfail dot
  310    |  4     (((((((■|■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  311    |  4     (((((((■|■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  312    |  4     (((((((■){■}■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  313    |  4     (((((((■){■}■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  314    |  4     (((((((■){■}■)a)a)((■|.))*)b)b)bfail dotstar or empty
  315    |  4     (((((((■){■}■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  316    |  4     (((((((■){■}■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  317    |  4     (((((((■){■}■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  318    |  4     (((((((■){■}■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  319    |  4     (((((((■){■}■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  320    |  4     (((((((■■){■}■)a)a)((\n|.))*)b)b)bfail dot
  321    |  4     ((((((((■|■)){■}■)a)a)((\n|.))*)b)b)bfail dot
  322    |  4     ((((((((■){■}){■}■)a)a)((\n|.))*)b)b)bfail dot
  323    |  4     (((((((■){■}(■■))a)a)((\n|.))*)b)b)bfail dot
  324    |  4     (((((((■){■}(■|■))a)a)((\n|.))*)b)b)bfail dot
  325    |  4     (((((((■){■}(■){■})a)a)((\n|.))*)b)b)bfail dot
  326    |  4     ((((((■|■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  327    |  4     ((((((■|■)■)a)((■|.))*)b)b)bfail dotstar or empty
  328    |  4     ((((((■|■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  329    |  4     ((((((■|■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  330    |  4     ((((((■|■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  331    |  4     ((((((■|■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  332    |  4     ((((((■|■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  333    |  4     ((((((■|■)a)■)((■|.))*)b)b)bfail dotstar or empty
  334    |  4     ((((((■|■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  335    |  4     ((((((■|■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  336    |  4     ((((((■|■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  337    |  4     ((((((■|■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  338    |  4     ((((((■|■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  339    |  4     ((((((■|■)a)a)((■|■))*)b)b)bfail dotstar or empty
  340    |  4     ((((((■|■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  341    |  4     ((((((■|■)a)a)((■|.))*)■)b)bfail dotstar or empty
  342    |  4     ((((((■|■)a)a)((■|.))*)b)■)bfail dotstar or empty
  343    |  4     ((((((■|■)a)a)((■|.))*)b)b)■fail dotstar or empty
  344    |  4     ((((((■|■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  345    |  4     ((((((■|■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  346    |  4     ((((((■|■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  347    |  4     ((((((■|■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  348    |  4     ((((((■|■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  349    |  4     ((((((■|■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  350    |  4     ((((((■|■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  351    |  4     ((((((■|■)a)a)■)b)b)b   fail dotstar or empty
  352    |  4     ((((((■|■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  353    |  4     ((((((■|■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  354    |  4     ((((((■|■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  355    |  4     ((((((■■|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  356    |  4     ((((((■■|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  357    |  4     ((((((■■|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  358    |  4     ((((((■■|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  359    |  4     ((((((■■|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  360    |  4     ((((((■■|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  361    |  4     ((((((■■|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  362    |  4     ((((((■■|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  363    |  4     (((((((■■)■|■)a)a)((\n|.))*)b)b)bfail dot
  364    |  4     (((((((■|■)■|■)a)a)((\n|.))*)b)b)bfail dot
  365    |  4     (((((((■){■}■|■)a)a)((\n|.))*)b)b)bfail dot
  366    |  4     ((((((■■|■■)a)a)((\n|.))*)b)b)bfail dot
  367    |  4     ((((((■■|(■|■))a)a)((\n|.))*)b)b)bfail dot
  368    |  4     ((((((■■|(■){■})a)a)((\n|.))*)b)b)bfail dot
  369    |  4     (((((((■|■)|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  370    |  4     (((((((■|■)|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  371    |  4     (((((((■|■)|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  372    |  4     (((((((■|■)|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  373    |  4     (((((((■|■)|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  374    |  4     (((((((■|■)|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  375    |  4     (((((((■|■)|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  376    |  4     (((((((■|■)|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  377    |  4     (((((((■■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  378    |  4     ((((((((■|■)|■)|■)a)a)((\n|.))*)b)b)bfail solve
  379    |  4     ((((((((■){■}|■)|■)a)a)((\n|.))*)b)b)bfail dot
  380    |  4     (((((((■|■)|■■)a)a)((\n|.))*)b)b)bfail dot
  381    |  4     (((((((■|■)|(■|■))a)a)((\n|.))*)b)b)bfail solve
  382    |  4     (((((((■|■)|(■){■})a)a)((\n|.))*)b)b)bfail dot
  383    |  4     (((((((■){■}|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  384    |  4     (((((((■){■}|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  385    |  4     (((((((■){■}|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  386    |  4     (((((((■){■}|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  387    |  4     (((((((■){■}|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  388    |  4     (((((((■){■}|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  389    |  4     (((((((■){■}|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  390    |  4     (((((((■){■}|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  391    |  4     (((((((■■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  392    |  4     ((((((((■|■)){■}|■)a)a)((\n|.))*)b)b)bfail dot
  393    |  4     ((((((((■){■}){■}|■)a)a)((\n|.))*)b)b)bfail dot
  394    |  4     (((((((■){■}|■■)a)a)((\n|.))*)b)b)bfail dot
  395    |  4     (((((((■){■}|(■|■))a)a)((\n|.))*)b)b)bfail dot
  396    |  4     (((((((■){■}|(■){■})a)a)((\n|.))*)b)b)bfail dot
  397    |  4     ((((((■){■}■)■)((\n|.))*)b)b)bfail dotstar or empty
  398    |  4     ((((((■){■}■)a)((■|.))*)b)b)bfail dotstar or empty
  399    |  4     ((((((■){■}■)a)((\n|■))*)b)b)bfail dotstar or empty
  400    |  4     ((((((■){■}■)a)((\n|.)){■})b)b)bfail dotstar or empty
  401    |  4     ((((((■){■}■)a)((\n|.))*)■)b)bfail dotstar or empty
  402    |  4     ((((((■){■}■)a)((\n|.))*)b)■)bfail dotstar or empty
  403    |  4     ((((((■){■}■)a)((\n|.))*)b)b)■fail dotstar or empty
  404    |  4     ((((((■){■}a)■)((■|.))*)b)b)bfail dotstar or empty
  405    |  4     ((((((■){■}a)■)((\n|■))*)b)b)bfail dotstar or empty
  406    |  4     ((((((■){■}a)■)((\n|.)){■})b)b)bfail dotstar or empty
  407    |  4     ((((((■){■}a)■)((\n|.))*)■)b)bfail dotstar or empty
  408    |  4     ((((((■){■}a)■)((\n|.))*)b)■)bfail dotstar or empty
  409    |  4     ((((((■){■}a)■)((\n|.))*)b)b)■fail dotstar or empty
  410    |  4     ((((((■){■}a)a)((■|■))*)b)b)bfail dotstar or empty
  411    |  4     ((((((■){■}a)a)((■|.)){■})b)b)bfail dotstar or empty
  412    |  4     ((((((■){■}a)a)((■|.))*)■)b)bfail dotstar or empty
  413    |  4     ((((((■){■}a)a)((■|.))*)b)■)bfail dotstar or empty
  414    |  4     ((((((■){■}a)a)((■|.))*)b)b)■fail dotstar or empty
  415    |  4     ((((((■){■}a)a)((\n|■)){■})b)b)bfail dotstar or empty
  416    |  4     ((((((■){■}a)a)((\n|■))*)■)b)bfail dotstar or empty
  417    |  4     ((((((■){■}a)a)((\n|■))*)b)■)bfail dotstar or empty
  418    |  4     ((((((■){■}a)a)((\n|■))*)b)b)■fail dotstar or empty
  419    |  4     ((((((■){■}a)a)((\n|.)){■})■)b)bfail dotstar or empty
  420    |  4     ((((((■){■}a)a)((\n|.)){■})b)■)bfail dotstar or empty
  421    |  4     ((((((■){■}a)a)((\n|.)){■})b)b)■fail dotstar or empty
  422    |  4     ((((((■){■}a)a)■)b)b)b  fail dotstar or empty
  423    |  4     ((((((■){■}a)a)((\n|.))*)■)■)bfail dotstar or empty
  424    |  4     ((((((■){■}a)a)((\n|.))*)■)b)■fail dotstar or empty
  425    |  4     ((((((■){■}a)a)((\n|.))*)b)■)■fail dotstar or empty
  426    |  4     ((((((■■){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  427    |  4     ((((((■■){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  428    |  4     ((((((■■){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  429    |  4     ((((((■■){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  430    |  4     ((((((■■){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  431    |  4     ((((((■■){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  432    |  4     ((((((■■){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  433    |  4     ((((((■■){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  434    |  4     (((((((■■)■){■}a)a)((\n|.))*)b)b)bfail dot
  435    |  4     (((((((■|■)■){■}a)a)((\n|.))*)b)b)bfail dot
  436    |  4     (((((((■){■}■){■}a)a)((\n|.))*)b)b)bfail dot
  437    |  4     (((((((■|■)){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  438    |  4     (((((((■|■)){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  439    |  4     (((((((■|■)){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  440    |  4     (((((((■|■)){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  441    |  4     (((((((■|■)){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  442    |  4     (((((((■|■)){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  443    |  4     (((((((■|■)){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  444    |  4     (((((((■|■)){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  445    |  4     (((((((■■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  446    |  4     ((((((((■|■)|■)){■}a)a)((\n|.))*)b)b)bfail dot
  447    |  4     ((((((((■){■}|■)){■}a)a)((\n|.))*)b)b)bfail dot
  448    |  4     (((((((■){■}){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  449    |  4     (((((((■){■}){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  450    |  4     (((((((■){■}){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  451    |  4     (((((((■){■}){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  452    |  4     (((((((■){■}){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  453    |  4     (((((((■){■}){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  454    |  4     (((((((■){■}){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  455    |  4     (((((((■){■}){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  456    |  4     (((((((■■){■}){■}a)a)((\n|.))*)b)b)bfail dot
  457    |  4     ((((((((■|■)){■}){■}a)a)((\n|.))*)b)b)bfail dot
  458    |  4     ((((((((■){■}){■}){■}a)a)((\n|.))*)b)b)bfail dot
  459    |  4     (((((a■)■)((■|■))*)b)b)bfail dotstar or empty
  460    |  4     (((((a■)■)((■|.)){■})b)b)bfail dotstar or empty
  461    |  4     (((((a■)■)((■|.))*)■)b)bfail dotstar or empty
  462    |  4     (((((a■)■)((■|.))*)b)■)bfail dotstar or empty
  463    |  4     (((((a■)■)((■|.))*)b)b)■fail dotstar or empty
  464    |  4     (((((a■)■)((\n|■)){■})b)b)bfail dotstar or empty
  465    |  4     (((((a■)■)((\n|■))*)■)b)bfail dotstar or empty
  466    |  4     (((((a■)■)((\n|■))*)b)■)bfail dotstar or empty
  467    |  4     (((((a■)■)((\n|■))*)b)b)■fail dotstar or empty
  468    |  4     (((((a■)■)((\n|.)){■})■)b)bfail dotstar or empty
  469    |  4     (((((a■)■)((\n|.)){■})b)■)bfail dotstar or empty
  470    |  4     (((((a■)■)((\n|.)){■})b)b)■fail dotstar or empty
  471    |  4     (((((a■)■)■)b)b)b       fail dotstar or empty
  472    |  4     (((((a■)■)((\n|.))*)■)■)bfail dotstar or empty
  473    |  4     (((((a■)■)((\n|.))*)■)b)■fail dotstar or empty
  474    |  4     (((((a■)■)((\n|.))*)b)■)■fail dotstar or empty
  475    |  4     (((((a■)a)((■|■)){■})b)b)bfail dotstar or empty
  476    |  4     (((((a■)a)((■|■))*)■)b)bfail dotstar or empty
  477    |  4     (((((a■)a)((■|■))*)b)■)bfail dotstar or empty
  478    |  4     (((((a■)a)((■|■))*)b)b)■fail dotstar or empty
  479    |  4     (((((a■)a)(■)*)b)b)b    fail dotstar or empty
  480    |  4     (((((a■)a)((■|.)){■})■)b)bfail dotstar or empty
  481    |  4     (((((a■)a)((■|.)){■})b)■)bfail dotstar or empty
  482    |  4     (((((a■)a)((■|.)){■})b)b)■fail dotstar or empty
  483    |  4     (((((a■)a)((■|.))*)■)■)bfail dotstar or empty
  484    |  4     (((((a■)a)((■|.))*)■)b)■fail dotstar or empty
  485    |  4     (((((a■)a)((■|.))*)b)■)■fail dotstar or empty
  486    |  4     (((((a■)a)((\n|■)){■})■)b)bfail dotstar or empty
  487    |  4     (((((a■)a)((\n|■)){■})b)■)bfail dotstar or empty
  488    |  4     (((((a■)a)((\n|■)){■})b)b)■fail dotstar or empty
  489    |  4     (((((a■)a)((\n|■))*)■)■)bfail dotstar or empty
  490    |  4     (((((a■)a)((\n|■))*)■)b)■fail dotstar or empty
  491    |  4     (((((a■)a)((\n|■))*)b)■)■fail dotstar or empty
  492    |  4     (((((a■)a)((\n|.)){■})■)■)bfail dotstar or empty
  493    |  4     (((((a■)a)((\n|.)){■})■)b)■fail dotstar or empty
  494    |  4     (((((a■)a)■)■)b)b       fail dotstar or empty
  495    |  4     (((((a■)a)((\n|.)){■})b)■)■fail dotstar or empty
  496    |  4     (((((a■)a)■)b)■)b       fail dotstar or empty
  497    |  4     (((((a■)a)■)b)b)■       fail dotstar or empty
  498    |  4     (((((a■)a)((\n|.))*)■)■)■fail dotstar or empty
  499    |  4     (((((aa)■)((■|■)){■})b)b)bfail dotstar or empty
  500    |  4     (((((aa)■)((■|■))*)■)b)bfail dotstar or empty
  501    |  4     (((((aa)■)((■|■))*)b)■)bfail dotstar or empty
  502    |  4     (((((aa)■)((■|■))*)b)b)■fail dotstar or empty
  503    |  4     (((((aa)■)(■)*)b)b)b    fail dotstar or empty
  504    |  4     (((((aa)■)((■|.)){■})■)b)bfail dotstar or empty
  505    |  4     (((((aa)■)((■|.)){■})b)■)bfail dotstar or empty
  506    |  4     (((((aa)■)((■|.)){■})b)b)■fail dotstar or empty
  507    |  4     (((((aa)■)((■|.))*)■)■)bfail dotstar or empty
  508    |  4     (((((aa)■)((■|.))*)■)b)■fail dotstar or empty
  509    |  4     (((((aa)■)((■|.))*)b)■)■fail dotstar or empty
  510    |  4     (((((aa)■)((\n|■)){■})■)b)bfail dotstar or empty
  511    |  4     (((((aa)■)((\n|■)){■})b)■)bfail dotstar or empty
  512    |  4     (((((aa)■)((\n|■)){■})b)b)■fail dotstar or empty
  513    |  4     (((((aa)■)((\n|■))*)■)■)bfail dotstar or empty
  514    |  4     (((((aa)■)((\n|■))*)■)b)■fail dotstar or empty
  515    |  4     (((((aa)■)((\n|■))*)b)■)■fail dotstar or empty
  516    |  4     (((((aa)■)((\n|.)){■})■)■)bfail dotstar or empty
  517    |  4     (((((aa)■)((\n|.)){■})■)b)■fail dotstar or empty
  518    |  4     (((((aa)■)■)■)b)b       fail dotstar or empty
  519    |  4     (((((aa)■)((\n|.)){■})b)■)■fail dotstar or empty
  520    |  4     (((((aa)■)■)b)■)b       fail dotstar or empty
  521    |  4     (((((aa)■)■)b)b)■       fail dotstar or empty
  522    |  4     (((((aa)■)((\n|.))*)■)■)■fail dotstar or empty
  523    |  4     (((((aa)a)((■|■)){■})■)b)bfail dotstar or empty
  524    |  4     (((((aa)a)((■|■)){■})b)■)bfail dotstar or empty
  525    |  4     (((((aa)a)((■|■)){■})b)b)■fail dotstar or empty
  526    |  4     (((((aa)a)(■){■})b)b)b  fail dotstar or empty
  527    |  4     (((((aa)a)((■|■))*)■)■)bfail dotstar or empty
  528    |  4     (((((aa)a)((■|■))*)■)b)■fail dotstar or empty
  529    |  4     (((((aa)a)(■)*)■)b)b    fail dotstar or empty
  530    |  4     (((((aa)a)((■|■))*)b)■)■fail dotstar or empty
  531    |  4     (((((aa)a)(■)*)b)■)b    fail dotstar or empty
  532    |  4     (((((aa)a)(■)*)b)b)■    fail dotstar or empty
  533    |  4     (((((aa)a)((■|.)){■})■)■)bfail dotstar or empty
  534    |  4     (((((aa)a)((■|.)){■})■)b)■fail dotstar or empty
  535    |  4     (((((aa)a)((■|.)){■})b)■)■fail dotstar or empty
  536    |  4     (((((aa)a)((■|.))*)■)■)■fail dotstar or empty
  537    |  4     (((((aa)a)((\n|■)){■})■)■)bfail dotstar or empty
  538    |  4     (((((aa)a)((\n|■)){■})■)b)■fail dotstar or empty
  539    |  4     (((((aa)a)((\n|■)){■})b)■)■fail dotstar or empty
  540    |  4     (((((aa)a)((\n|■))*)■)■)■fail dotstar or empty
  541    |  4     (((((aa)a)((\n|.)){■})■)■)■fail dotstar or empty
  542    |  4     (((((aa)a)■)■)■)b       fail dotstar or empty
  543    |  4     (((((aa)a)■)■)b)■       fail dotstar or empty
  544    |  4     (((((aa)a)■)b)■)■       fail dotstar or empty
  545    |  5     (((((■■)■)((■|■))*)b)b)bfail dotstar or empty
  546    |  5     (((((■■)■)((■|.)){■})b)b)bfail dotstar or empty
  547    |  5     (((((■■)■)((■|.))*)■)b)bfail dotstar or empty
  548    |  5     (((((■■)■)((■|.))*)b)■)bfail dotstar or empty
  549    |  5     (((((■■)■)((■|.))*)b)b)■fail dotstar or empty
  550    |  5     (((((■)■)((■|.))*)b)b)b fail dotstar or empty
  551    |  5     (((((■■)■)((\n|■)){■})b)b)bfail dotstar or empty
  552    |  5     (((((■■)■)((\n|■))*)■)b)bfail dotstar or empty
  553    |  5     (((((■■)■)((\n|■))*)b)■)bfail dotstar or empty
  554    |  5     (((((■■)■)((\n|■))*)b)b)■fail dotstar or empty
  555    |  5     (((((■)■)((\n|■))*)b)b)bfail dotstar or empty
  556    |  5     (((((■■)■)((\n|.)){■})■)b)bfail dotstar or empty
  557    |  5     (((((■■)■)((\n|.)){■})b)■)bfail dotstar or empty
  558    |  5     (((((■■)■)((\n|.)){■})b)b)■fail dotstar or empty
  559    |  5     (((((■)■)((\n|.)){■})b)b)bfail dotstar or empty
  560    |  5     (((((■■)■)■)b)b)b       fail dotstar or empty
  561    |  5     (((((■■)■)((\n|.))*)■)■)bfail dotstar or empty
  562    |  5     (((((■■)■)((\n|.))*)■)b)■fail dotstar or empty
  563    |  5     (((((■)■)((\n|.))*)■)b)bfail dotstar or empty
  564    |  5     (((((■■)■)((\n|.))*)b)■)■fail dotstar or empty
  565    |  5     (((((■)■)((\n|.))*)b)■)bfail dotstar or empty
  566    |  5     (((((■)■)((\n|.))*)b)b)■fail dotstar or empty
  567    |  5     ((((■■)((\n|.))*)b)b)b  fail dotstar or empty
  568    |  5     (((((■■)a)((■|■)){■})b)b)bfail dotstar or empty
  569    |  5     (((((■■)a)((■|■))*)■)b)bfail dotstar or empty
  570    |  5     (((((■■)a)((■|■))*)b)■)bfail dotstar or empty
  571    |  5     (((((■■)a)((■|■))*)b)b)■fail dotstar or empty
  572    |  5     (((((■)a)((■|■))*)b)b)b fail dotstar or empty
  573    |  5     (((((■■)a)(■)*)b)b)b    fail dotstar or empty
  574    |  5     (((((■■)a)((■|.)){■})■)b)bfail dotstar or empty
  575    |  5     (((((■■)a)((■|.)){■})b)■)bfail dotstar or empty
  576    |  5     (((((■■)a)((■|.)){■})b)b)■fail dotstar or empty
  577    |  5     (((((■)a)((■|.)){■})b)b)bfail dotstar or empty
  578    |  5     (((((■■)a)((■|.))*)■)■)bfail dotstar or empty
  579    |  5     (((((■■)a)((■|.))*)■)b)■fail dotstar or empty
  580    |  5     (((((■)a)((■|.))*)■)b)b fail dotstar or empty
  581    |  5     (((((■■)a)((■|.))*)b)■)■fail dotstar or empty
  582    |  5     (((((■)a)((■|.))*)b)■)b fail dotstar or empty
  583    |  5     (((((■)a)((■|.))*)b)b)■ fail dotstar or empty
  584    |  5     ((((■a)((■|.))*)b)b)b   fail dotstar or empty
  585    |  5     (((((■■)a)((\n|■)){■})■)b)bfail dotstar or empty
  586    |  5     (((((■■)a)((\n|■)){■})b)■)bfail dotstar or empty
  587    |  5     (((((■■)a)((\n|■)){■})b)b)■fail dotstar or empty
  588    |  5     (((((■)a)((\n|■)){■})b)b)bfail dotstar or empty
  589    |  5     (((((■■)a)((\n|■))*)■)■)bfail dotstar or empty
  590    |  5     (((((■■)a)((\n|■))*)■)b)■fail dotstar or empty
  591    |  5     (((((■)a)((\n|■))*)■)b)bfail dotstar or empty
  592    |  5     (((((■■)a)((\n|■))*)b)■)■fail dotstar or empty
  593    |  5     (((((■)a)((\n|■))*)b)■)bfail dotstar or empty
  594    |  5     (((((■)a)((\n|■))*)b)b)■fail dotstar or empty
  595    |  5     ((((■a)((\n|■))*)b)b)b  fail dotstar or empty
  596    |  5     (((((■■)a)((\n|.)){■})■)■)bfail dotstar or empty
  597    |  5     (((((■■)a)((\n|.)){■})■)b)■fail dotstar or empty
  598    |  5     (((((■)a)((\n|.)){■})■)b)bfail dotstar or empty
  599    |  5     (((((■■)a)■)■)b)b       fail dotstar or empty
  600    |  5     (((((■■)a)((\n|.)){■})b)■)■fail dotstar or empty
  601    |  5     (((((■)a)((\n|.)){■})b)■)bfail dotstar or empty
  602    |  5     (((((■■)a)■)b)■)b       fail dotstar or empty
  603    |  5     (((((■)a)((\n|.)){■})b)b)■fail dotstar or empty
  604    |  5     (((((■■)a)■)b)b)■       fail dotstar or empty
  605    |  5     ((((■a)((\n|.)){■})b)b)bfail dotstar or empty
  606    |  5     (((((■)a)■)b)b)b        fail dotstar or empty
  607    |  5     (((((■■)a)((\n|.))*)■)■)■fail dotstar or empty
  608    |  5     (((((■)a)((\n|.))*)■)■)bfail dotstar or empty
  609    |  5     (((((■)a)((\n|.))*)■)b)■fail dotstar or empty
  610    |  5     ((((■a)((\n|.))*)■)b)b  fail dotstar or empty
  611    |  5     (((((■)a)((\n|.))*)b)■)■fail dotstar or empty
  612    |  5     ((((■a)((\n|.))*)b)■)b  fail dotstar or empty
  613    |  5     ((((■a)((\n|.))*)b)b)■  fail dotstar or empty
  614    |  5     (((((■a)■)((■|■)){■})b)b)bfail dotstar or empty
  615    |  5     (((((■a)■)((■|■))*)■)b)bfail dotstar or empty
  616    |  5     (((((■a)■)((■|■))*)b)■)bfail dotstar or empty
  617    |  5     (((((■a)■)((■|■))*)b)b)■fail dotstar or empty
  618    |  5     (((((■a)■)(■)*)b)b)b    fail dotstar or empty
  619    |  5     (((((■a)■)((■|.)){■})■)b)bfail dotstar or empty
  620    |  5     (((((■a)■)((■|.)){■})b)■)bfail dotstar or empty
  621    |  5     (((((■a)■)((■|.)){■})b)b)■fail dotstar or empty
  622    |  5     (((((■a)■)((■|.))*)■)■)bfail dotstar or empty
  623    |  5     (((((■a)■)((■|.))*)■)b)■fail dotstar or empty
  624    |  5     (((((■a)■)((■|.))*)b)■)■fail dotstar or empty
  625    |  5     (((((■a)■)((\n|■)){■})■)b)bfail dotstar or empty
  626    |  5     (((((■a)■)((\n|■)){■})b)■)bfail dotstar or empty
  627    |  5     (((((■a)■)((\n|■)){■})b)b)■fail dotstar or empty
  628    |  5     (((((■a)■)((\n|■))*)■)■)bfail dotstar or empty
  629    |  5     (((((■a)■)((\n|■))*)■)b)■fail dotstar or empty
  630    |  5     (((((■a)■)((\n|■))*)b)■)■fail dotstar or empty
  631    |  5     (((((■a)■)((\n|.)){■})■)■)bfail dotstar or empty
  632    |  5     (((((■a)■)((\n|.)){■})■)b)■fail dotstar or empty
  633    |  5     (((((■a)■)■)■)b)b       fail dotstar or empty
  634    |  5     (((((■a)■)((\n|.)){■})b)■)■fail dotstar or empty
  635    |  5     (((((■a)■)■)b)■)b       fail dotstar or empty
  636    |  5     (((((■a)■)■)b)b)■       fail dotstar or empty
  637    |  5     (((((■a)■)((\n|.))*)■)■)■fail dotstar or empty
  638    |  5     (((((■a)a)((■|■)){■})■)b)bfail dotstar or empty
  639    |  5     (((((■a)a)((■|■)){■})b)■)bfail dotstar or empty
  640    |  5     (((((■a)a)((■|■)){■})b)b)■fail dotstar or empty
  641    |  5     (((((■a)a)(■){■})b)b)b  fail dotstar or empty
  642    |  5     (((((■a)a)((■|■))*)■)■)bfail dotstar or empty
  643    |  5     (((((■a)a)((■|■))*)■)b)■fail dotstar or empty
  644    |  5     (((((■a)a)(■)*)■)b)b    fail dotstar or empty
  645    |  5     (((((■a)a)((■|■))*)b)■)■fail dotstar or empty
  646    |  5     (((((■a)a)(■)*)b)■)b    fail dotstar or empty
  647    |  5     (((((■a)a)(■)*)b)b)■    fail dotstar or empty
  648    |  5     (((((■a)a)((■|.)){■})■)■)bfail dotstar or empty
  649    |  5     (((((■a)a)((■|.)){■})■)b)■fail dotstar or empty
  650    |  5     (((((■a)a)((■|.)){■})b)■)■fail dotstar or empty
  651    |  5     (((((■a)a)((■|.))*)■)■)■fail dotstar or empty
  652    |  5     (((((■a)a)((\n|■)){■})■)■)bfail dotstar or empty
  653    |  5     (((((■a)a)((\n|■)){■})■)b)■fail dotstar or empty
  654    |  5     (((((■a)a)((\n|■)){■})b)■)■fail dotstar or empty
  655    |  5     (((((■a)a)((\n|■))*)■)■)■fail dotstar or empty
  656    |  5     (((((■a)a)((\n|.)){■})■)■)■fail dotstar or empty
  657    |  5     (((((■a)a)■)■)■)b       fail dotstar or empty
  658    |  5     (((((■a)a)■)■)b)■       fail dotstar or empty
  659    |  5     (((((■a)a)■)b)■)■       fail dotstar or empty
  660    |  5     ((((((■■)■)■)((■|.))*)b)b)bfail dotstar or empty
  661    |  5     ((((((■■)■)■)((\n|■))*)b)b)bfail dotstar or empty
  662    |  5     ((((((■■)■)■)((\n|.)){■})b)b)bfail dotstar or empty
  663    |  5     ((((((■■)■)■)((\n|.))*)■)b)bfail dotstar or empty
  664    |  5     ((((((■■)■)■)((\n|.))*)b)■)bfail dotstar or empty
  665    |  5     ((((((■■)■)■)((\n|.))*)b)b)■fail dotstar or empty
  666    |  5     ((((((■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  667    |  5     ((((((■■)■)a)((■|■))*)b)b)bfail dotstar or empty
  668    |  5     ((((((■■)■)a)((■|.)){■})b)b)bfail dotstar or empty
  669    |  5     ((((((■■)■)a)((■|.))*)■)b)bfail dotstar or empty
  670    |  5     ((((((■■)■)a)((■|.))*)b)■)bfail dotstar or empty
  671    |  5     ((((((■■)■)a)((■|.))*)b)b)■fail dotstar or empty
  672    |  5     ((((((■)■)a)((■|.))*)b)b)bfail dotstar or empty
  673    |  5     ((((((■■)■)a)((\n|■)){■})b)b)bfail dotstar or empty
  674    |  5     ((((((■■)■)a)((\n|■))*)■)b)bfail dotstar or empty
  675    |  5     ((((((■■)■)a)((\n|■))*)b)■)bfail dotstar or empty
  676    |  5     ((((((■■)■)a)((\n|■))*)b)b)■fail dotstar or empty
  677    |  5     ((((((■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  678    |  5     ((((((■■)■)a)((\n|.)){■})■)b)bfail dotstar or empty
  679    |  5     ((((((■■)■)a)((\n|.)){■})b)■)bfail dotstar or empty
  680    |  5     ((((((■■)■)a)((\n|.)){■})b)b)■fail dotstar or empty
  681    |  5     ((((((■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  682    |  5     ((((((■■)■)a)■)b)b)b    fail dotstar or empty
  683    |  5     ((((((■■)■)a)((\n|.))*)■)■)bfail dotstar or empty
  684    |  5     ((((((■■)■)a)((\n|.))*)■)b)■fail dotstar or empty
  685    |  5     ((((((■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  686    |  5     ((((((■■)■)a)((\n|.))*)b)■)■fail dotstar or empty
  687    |  5     ((((((■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  688    |  5     ((((((■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  689    |  5     ((((((■■)a)■)((■|■))*)b)b)bfail dotstar or empty
  690    |  5     ((((((■■)a)■)((■|.)){■})b)b)bfail dotstar or empty
  691    |  5     ((((((■■)a)■)((■|.))*)■)b)bfail dotstar or empty
  692    |  5     ((((((■■)a)■)((■|.))*)b)■)bfail dotstar or empty
  693    |  5     ((((((■■)a)■)((■|.))*)b)b)■fail dotstar or empty
  694    |  5     ((((((■)a)■)((■|.))*)b)b)bfail dotstar or empty
  695    |  5     ((((((■■)a)■)((\n|■)){■})b)b)bfail dotstar or empty
  696    |  5     ((((((■■)a)■)((\n|■))*)■)b)bfail dotstar or empty
  697    |  5     ((((((■■)a)■)((\n|■))*)b)■)bfail dotstar or empty
  698    |  5     ((((((■■)a)■)((\n|■))*)b)b)■fail dotstar or empty
  699    |  5     ((((((■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  700    |  5     ((((((■■)a)■)((\n|.)){■})■)b)bfail dotstar or empty
  701    |  5     ((((((■■)a)■)((\n|.)){■})b)■)bfail dotstar or empty
  702    |  5     ((((((■■)a)■)((\n|.)){■})b)b)■fail dotstar or empty
  703    |  5     ((((((■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  704    |  5     ((((((■■)a)■)■)b)b)b    fail dotstar or empty
  705    |  5     ((((((■■)a)■)((\n|.))*)■)■)bfail dotstar or empty
  706    |  5     ((((((■■)a)■)((\n|.))*)■)b)■fail dotstar or empty
  707    |  5     ((((((■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  708    |  5     ((((((■■)a)■)((\n|.))*)b)■)■fail dotstar or empty
  709    |  5     ((((((■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  710    |  5     ((((((■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  711    |  5     ((((((■■)a)a)((■|■)){■})b)b)bfail dotstar or empty
  712    |  5     ((((((■■)a)a)((■|■))*)■)b)bfail dotstar or empty
  713    |  5     ((((((■■)a)a)((■|■))*)b)■)bfail dotstar or empty
  714    |  5     ((((((■■)a)a)((■|■))*)b)b)■fail dotstar or empty
  715    |  5     ((((((■)a)a)((■|■))*)b)b)bfail dotstar or empty
  716    |  5     ((((((■■)a)a)(■)*)b)b)b fail dotstar or empty
  717    |  5     ((((((■■)a)a)((■|.)){■})■)b)bfail dotstar or empty
  718    |  5     ((((((■■)a)a)((■|.)){■})b)■)bfail dotstar or empty
  719    |  5     ((((((■■)a)a)((■|.)){■})b)b)■fail dotstar or empty
  720    |  5     ((((((■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  721    |  5     ((((((■■)a)a)((■|.))*)■)■)bfail dotstar or empty
  722    |  5     ((((((■■)a)a)((■|.))*)■)b)■fail dotstar or empty
  723    |  5     ((((((■)a)a)((■|.))*)■)b)bfail dotstar or empty
  724    |  5     ((((((■■)a)a)((■|.))*)b)■)■fail dotstar or empty
  725    |  5     ((((((■)a)a)((■|.))*)b)■)bfail dotstar or empty
  726    |  5     ((((((■)a)a)((■|.))*)b)b)■fail dotstar or empty
  727    |  5     ((((((■■)a)a)((\n|■)){■})■)b)bfail dotstar or empty
  728    |  5     ((((((■■)a)a)((\n|■)){■})b)■)bfail dotstar or empty
  729    |  5     ((((((■■)a)a)((\n|■)){■})b)b)■fail dotstar or empty
  730    |  5     ((((((■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  731    |  5     ((((((■■)a)a)((\n|■))*)■)■)bfail dotstar or empty
  732    |  5     ((((((■■)a)a)((\n|■))*)■)b)■fail dotstar or empty
  733    |  5     ((((((■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  734    |  5     ((((((■■)a)a)((\n|■))*)b)■)■fail dotstar or empty
  735    |  5     ((((((■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  736    |  5     ((((((■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  737    |  5     ((((((■■)a)a)((\n|.)){■})■)■)bfail dotstar or empty
  738    |  5     ((((((■■)a)a)((\n|.)){■})■)b)■fail dotstar or empty
  739    |  5     ((((((■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  740    |  5     ((((((■■)a)a)■)■)b)b    fail dotstar or empty
  741    |  5     ((((((■■)a)a)((\n|.)){■})b)■)■fail dotstar or empty
  742    |  5     ((((((■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  743    |  5     ((((((■■)a)a)■)b)■)b    fail dotstar or empty
  744    |  5     ((((((■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  745    |  5     ((((((■■)a)a)■)b)b)■    fail dotstar or empty
  746    |  5     ((((((■)a)a)■)b)b)b     fail dotstar or empty
  747    |  5     ((((((■■)a)a)((\n|.))*)■)■)■fail dotstar or empty
  748    |  5     ((((((■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  749    |  5     ((((((■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  750    |  5     ((((((■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  751    |  5     (((((((■■)■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  752    |  5     (((((((■■)■)■)a)((■|.))*)b)b)bfail dotstar or empty
  753    |  5     (((((((■■)■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  754    |  5     (((((((■■)■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  755    |  5     (((((((■■)■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  756    |  5     (((((((■■)■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  757    |  5     (((((((■■)■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  758    |  5     (((((((■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  759    |  5     (((((((■■)■)a)■)((■|.))*)b)b)bfail dotstar or empty
  760    |  5     (((((((■■)■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  761    |  5     (((((((■■)■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  762    |  5     (((((((■■)■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  763    |  5     (((((((■■)■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  764    |  5     (((((((■■)■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  765    |  5     (((((((■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  766    |  5     (((((((■■)■)a)a)((■|■))*)b)b)bfail dotstar or empty
  767    |  5     (((((((■■)■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  768    |  5     (((((((■■)■)a)a)((■|.))*)■)b)bfail dotstar or empty
  769    |  5     (((((((■■)■)a)a)((■|.))*)b)■)bfail dotstar or empty
  770    |  5     (((((((■■)■)a)a)((■|.))*)b)b)■fail dotstar or empty
  771    |  5     (((((((■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  772    |  5     (((((((■■)■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  773    |  5     (((((((■■)■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  774    |  5     (((((((■■)■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  775    |  5     (((((((■■)■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  776    |  5     (((((((■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  777    |  5     (((((((■■)■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  778    |  5     (((((((■■)■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  779    |  5     (((((((■■)■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  780    |  5     (((((((■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  781    |  5     (((((((■■)■)a)a)■)b)b)b fail dotstar or empty
  782    |  5     (((((((■■)■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  783    |  5     (((((((■■)■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  784    |  5     (((((((■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  785    |  5     (((((((■■)■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  786    |  5     (((((((■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  787    |  5     (((((((■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  788    |  5     ((((((((■■)■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  789    |  5     ((((((((■■)■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  790    |  5     ((((((((■■)■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  791    |  5     ((((((((■■)■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  792    |  5     ((((((((■■)■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  793    |  5     ((((((((■■)■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  794    |  5     ((((((((■■)■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  795    |  5     ((((((((■■)■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  796    |  5     ((((((((■)■)■)a)a)((\n|.))*)b)b)bfail dotstar or empty
  797    |  5     (((((((((■■)■)■)■)a)a)((\n|.))*)b)b)bfail dot
  798    |  5     (((((((((■|■)■)■)■)a)a)((\n|.))*)b)b)bfail dot
  799    |  5     (((((((((■){■}■)■)■)a)a)((\n|.))*)b)b)bfail dot
  800    |  5     ((((((((■■)(■■))■)a)a)((\n|.))*)b)b)bfail dot
  801    |  5     ((((((((■■)(■|■))■)a)a)((\n|.))*)b)b)bfail dot
  802    |  5     ((((((((■■)(■){■})■)a)a)((\n|.))*)b)b)bfail dot
  803    |  5     ((((((((■■)■)(■■))a)a)((\n|.))*)b)b)bfail dot
  804    |  5     ((((((((■■)■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  805    |  5     ((((((((■■)■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  806    |  5     ((((((((■|■)■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  807    |  5     ((((((((■|■)■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  808    |  5     ((((((((■|■)■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  809    |  5     ((((((((■|■)■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  810    |  5     ((((((((■|■)■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  811    |  5     ((((((((■|■)■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  812    |  5     ((((((((■|■)■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  813    |  5     ((((((((■|■)■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  814    |  5     ((((((((■■|■)■)■)a)a)((\n|.))*)b)b)bfail dot
  815    |  5     (((((((((■|■)|■)■)■)a)a)((\n|.))*)b)b)bfail dot
  816    |  5     (((((((((■){■}|■)■)■)a)a)((\n|.))*)b)b)bfail dot
  817    |  5     ((((((((■|■)(■■))■)a)a)((\n|.))*)b)b)bfail dot
  818    |  5     ((((((((■|■)(■|■))■)a)a)((\n|.))*)b)b)bfail dot
  819    |  5     ((((((((■|■)(■){■})■)a)a)((\n|.))*)b)b)bfail dot
  820    |  5     ((((((((■|■)■)(■■))a)a)((\n|.))*)b)b)bfail dot
  821    |  5     ((((((((■|■)■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  822    |  5     ((((((((■|■)■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  823    |  5     ((((((((■){■}■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  824    |  5     ((((((((■){■}■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  825    |  5     ((((((((■){■}■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  826    |  5     ((((((((■){■}■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  827    |  5     ((((((((■){■}■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  828    |  5     ((((((((■){■}■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  829    |  5     ((((((((■){■}■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  830    |  5     ((((((((■){■}■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  831    |  5     ((((((((■■){■}■)■)a)a)((\n|.))*)b)b)bfail dot
  832    |  5     (((((((((■|■)){■}■)■)a)a)((\n|.))*)b)b)bfail dot
  833    |  5     (((((((((■){■}){■}■)■)a)a)((\n|.))*)b)b)bfail dot
  834    |  5     ((((((((■){■}(■■))■)a)a)((\n|.))*)b)b)bfail dot
  835    |  5     ((((((((■){■}(■|■))■)a)a)((\n|.))*)b)b)bfail dot
  836    |  5     ((((((((■){■}(■){■})■)a)a)((\n|.))*)b)b)bfail dot
  837    |  5     ((((((((■){■}■)(■■))a)a)((\n|.))*)b)b)bfail dot
  838    |  5     ((((((((■){■}■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  839    |  5     ((((((((■){■}■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  840    |  5     (((((((■■)(■■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  841    |  5     (((((((■■)(■■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  842    |  5     (((((((■■)(■■))a)a)((■|.))*)b)b)bfail dotstar or empty
  843    |  5     (((((((■■)(■■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  844    |  5     (((((((■■)(■■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  845    |  5     (((((((■■)(■■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  846    |  5     (((((((■■)(■■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  847    |  5     (((((((■■)(■■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  848    |  5     (((((((■■)(■))a)a)((\n|.))*)b)b)bfail dotstar or empty
  849    |  5     (((((((■■)(■|■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  850    |  5     (((((((■■)(■|■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  851    |  5     (((((((■■)(■|■))a)a)((■|.))*)b)b)bfail dotstar or empty
  852    |  5     (((((((■■)(■|■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  853    |  5     (((((((■■)(■|■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  854    |  5     (((((((■■)(■|■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  855    |  5     (((((((■■)(■|■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  856    |  5     (((((((■■)(■|■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  857    |  5     (((((((■■)(■){■})■)a)((\n|.))*)b)b)bfail dotstar or empty
  858    |  5     (((((((■■)(■){■})a)■)((\n|.))*)b)b)bfail dotstar or empty
  859    |  5     (((((((■■)(■){■})a)a)((■|.))*)b)b)bfail dotstar or empty
  860    |  5     (((((((■■)(■){■})a)a)((\n|■))*)b)b)bfail dotstar or empty
  861    |  5     (((((((■■)(■){■})a)a)((\n|.)){■})b)b)bfail dotstar or empty
  862    |  5     (((((((■■)(■){■})a)a)((\n|.))*)■)b)bfail dotstar or empty
  863    |  5     (((((((■■)(■){■})a)a)((\n|.))*)b)■)bfail dotstar or empty
  864    |  5     (((((((■■)(■){■})a)a)((\n|.))*)b)b)■fail dotstar or empty
  865    |  5     (((((((■|■)■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  866    |  5     (((((((■|■)■)■)a)((■|.))*)b)b)bfail dotstar or empty
  867    |  5     (((((((■|■)■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  868    |  5     (((((((■|■)■)■)a)((\n|.)){■})b)b)b
2.0190858840942383
timeout