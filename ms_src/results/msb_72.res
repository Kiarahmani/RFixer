
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
  868    |  5     (((((((■|■)■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  869    |  5     (((((((■|■)■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  870    |  5     (((((((■|■)■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  871    |  5     (((((((■|■)■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  872    |  5     (((((((■|■)■)a)■)((■|.))*)b)b)bfail dotstar or empty
  873    |  5     (((((((■|■)■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  874    |  5     (((((((■|■)■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  875    |  5     (((((((■|■)■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  876    |  5     (((((((■|■)■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  877    |  5     (((((((■|■)■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  878    |  5     (((((((■|■)■)a)a)((■|■))*)b)b)bfail dotstar or empty
  879    |  5     (((((((■|■)■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  880    |  5     (((((((■|■)■)a)a)((■|.))*)■)b)bfail dotstar or empty
  881    |  5     (((((((■|■)■)a)a)((■|.))*)b)■)bfail dotstar or empty
  882    |  5     (((((((■|■)■)a)a)((■|.))*)b)b)■fail dotstar or empty
  883    |  5     (((((((■|■)■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  884    |  5     (((((((■|■)■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  885    |  5     (((((((■|■)■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  886    |  5     (((((((■|■)■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  887    |  5     (((((((■|■)■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  888    |  5     (((((((■|■)■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  889    |  5     (((((((■|■)■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  890    |  5     (((((((■|■)■)a)a)■)b)b)bfail dotstar or empty
  891    |  5     (((((((■|■)■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  892    |  5     (((((((■|■)■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  893    |  5     (((((((■|■)■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  894    |  5     (((((((■■|■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  895    |  5     (((((((■■|■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  896    |  5     (((((((■■|■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  897    |  5     (((((((■■|■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  898    |  5     (((((((■■|■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  899    |  5     (((((((■■|■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  900    |  5     (((((((■■|■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  901    |  5     (((((((■■|■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  902    |  5     ((((((((■■)■|■)■)a)a)((\n|.))*)b)b)bfail dot
  903    |  5     ((((((((■|■)■|■)■)a)a)((\n|.))*)b)b)bfail dot
  904    |  5     ((((((((■){■}■|■)■)a)a)((\n|.))*)b)b)bfail dot
  905    |  5     (((((((■■|■■)■)a)a)((\n|.))*)b)b)bfail dot
  906    |  5     (((((((■■|(■|■))■)a)a)((\n|.))*)b)b)bfail dot
  907    |  5     (((((((■■|(■){■})■)a)a)((\n|.))*)b)b)bfail dot
  908    |  5     (((((((■■|■)(■■))a)a)((\n|.))*)b)b)bfail dot
  909    |  5     (((((((■■|■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  910    |  5     (((((((■■|■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  911    |  5     ((((((((■|■)|■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  912    |  5     ((((((((■|■)|■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  913    |  5     ((((((((■|■)|■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  914    |  5     ((((((((■|■)|■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  915    |  5     ((((((((■|■)|■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  916    |  5     ((((((((■|■)|■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  917    |  5     ((((((((■|■)|■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  918    |  5     ((((((((■|■)|■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  919    |  5     ((((((((■■|■)|■)■)a)a)((\n|.))*)b)b)bfail dot
  920    |  5     (((((((((■|■)|■)|■)■)a)a)((\n|.))*)b)b)bfail dot
  921    |  5     (((((((((■){■}|■)|■)■)a)a)((\n|.))*)b)b)bfail dot
  922    |  5     ((((((((■|■)|■■)■)a)a)((\n|.))*)b)b)bfail dot
  923    |  5     ((((((((■|■)|(■|■))■)a)a)((\n|.))*)b)b)bfail dot
  924    |  5     ((((((((■|■)|(■){■})■)a)a)((\n|.))*)b)b)bfail dot
  925    |  5     ((((((((■|■)|■)(■■))a)a)((\n|.))*)b)b)bfail dot
  926    |  5     ((((((((■|■)|■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  927    |  5     ((((((((■|■)|■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  928    |  5     ((((((((■){■}|■)■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  929    |  5     ((((((((■){■}|■)■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  930    |  5     ((((((((■){■}|■)■)a)a)((■|.))*)b)b)bfail dotstar or empty
  931    |  5     ((((((((■){■}|■)■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  932    |  5     ((((((((■){■}|■)■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  933    |  5     ((((((((■){■}|■)■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  934    |  5     ((((((((■){■}|■)■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  935    |  5     ((((((((■){■}|■)■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  936    |  5     ((((((((■■){■}|■)■)a)a)((\n|.))*)b)b)bfail dot
  937    |  5     (((((((((■|■)){■}|■)■)a)a)((\n|.))*)b)b)bfail dot
  938    |  5     (((((((((■){■}){■}|■)■)a)a)((\n|.))*)b)b)bfail dot
  939    |  5     ((((((((■){■}|■■)■)a)a)((\n|.))*)b)b)bfail dot
  940    |  5     ((((((((■){■}|(■|■))■)a)a)((\n|.))*)b)b)bfail dot
  941    |  5     ((((((((■){■}|(■){■})■)a)a)((\n|.))*)b)b)bfail dot
  942    |  5     ((((((((■){■}|■)(■■))a)a)((\n|.))*)b)b)bfail dot
  943    |  5     ((((((((■){■}|■)(■|■))a)a)((\n|.))*)b)b)bfail dot
  944    |  5     ((((((((■){■}|■)(■){■})a)a)((\n|.))*)b)b)bfail dot
  945    |  5     (((((((■|■)(■■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  946    |  5     (((((((■|■)(■■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  947    |  5     (((((((■|■)(■■))a)a)((■|.))*)b)b)bfail dotstar or empty
  948    |  5     (((((((■|■)(■■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  949    |  5     (((((((■|■)(■■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  950    |  5     (((((((■|■)(■■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  951    |  5     (((((((■|■)(■■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  952    |  5     (((((((■|■)(■■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  953    |  5     (((((((■|■)(■))a)a)((\n|.))*)b)b)bfail dotstar or empty
  954    |  5     (((((((■|■)(■|■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  955    |  5     (((((((■|■)(■|■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  956    |  5     (((((((■|■)(■|■))a)a)((■|.))*)b)b)bfail dotstar or empty
  957    |  5     (((((((■|■)(■|■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  958    |  5     (((((((■|■)(■|■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  959    |  5     (((((((■|■)(■|■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  960    |  5     (((((((■|■)(■|■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  961    |  5     (((((((■|■)(■|■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  962    |  5     (((((((■|■)(■){■})■)a)((\n|.))*)b)b)bfail dotstar or empty
  963    |  5     (((((((■|■)(■){■})a)■)((\n|.))*)b)b)bfail dotstar or empty
  964    |  5     (((((((■|■)(■){■})a)a)((■|.))*)b)b)bfail dotstar or empty
  965    |  5     (((((((■|■)(■){■})a)a)((\n|■))*)b)b)bfail dotstar or empty
  966    |  5     (((((((■|■)(■){■})a)a)((\n|.)){■})b)b)bfail dotstar or empty
  967    |  5     (((((((■|■)(■){■})a)a)((\n|.))*)■)b)bfail dotstar or empty
  968    |  5     (((((((■|■)(■){■})a)a)((\n|.))*)b)■)bfail dotstar or empty
  969    |  5     (((((((■|■)(■){■})a)a)((\n|.))*)b)b)■fail dotstar or empty
  970    |  5     (((((((■){■}■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  971    |  5     (((((((■){■}■)■)a)((■|.))*)b)b)bfail dotstar or empty
  972    |  5     (((((((■){■}■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  973    |  5     (((((((■){■}■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  974    |  5     (((((((■){■}■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  975    |  5     (((((((■){■}■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  976    |  5     (((((((■){■}■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  977    |  5     (((((((■){■}■)a)■)((■|.))*)b)b)bfail dotstar or empty
  978    |  5     (((((((■){■}■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  979    |  5     (((((((■){■}■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  980    |  5     (((((((■){■}■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  981    |  5     (((((((■){■}■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  982    |  5     (((((((■){■}■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  983    |  5     (((((((■){■}■)a)a)((■|■))*)b)b)bfail dotstar or empty
  984    |  5     (((((((■){■}■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  985    |  5     (((((((■){■}■)a)a)((■|.))*)■)b)bfail dotstar or empty
  986    |  5     (((((((■){■}■)a)a)((■|.))*)b)■)bfail dotstar or empty
  987    |  5     (((((((■){■}■)a)a)((■|.))*)b)b)■fail dotstar or empty
  988    |  5     (((((((■){■}■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  989    |  5     (((((((■){■}■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  990    |  5     (((((((■){■}■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  991    |  5     (((((((■){■}■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  992    |  5     (((((((■){■}■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  993    |  5     (((((((■){■}■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  994    |  5     (((((((■){■}■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  995    |  5     (((((((■){■}■)a)a)■)b)b)bfail dotstar or empty
  996    |  5     (((((((■){■}■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  997    |  5     (((((((■){■}■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  998    |  5     (((((((■){■}■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  999    |  5     (((((((■■){■}■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1000   |  5     (((((((■■){■}■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1001   |  5     (((((((■■){■}■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1002   |  5     (((((((■■){■}■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1003   |  5     (((((((■■){■}■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1004   |  5     (((((((■■){■}■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1005   |  5     (((((((■■){■}■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1006   |  5     (((((((■■){■}■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1007   |  5     ((((((((■■)■){■}■)a)a)((\n|.))*)b)b)bfail dot
  1008   |  5     ((((((((■|■)■){■}■)a)a)((\n|.))*)b)b)bfail dot
  1009   |  5     ((((((((■){■}■){■}■)a)a)((\n|.))*)b)b)bfail dot
  1010   |  5     (((((((■■){■}(■■))a)a)((\n|.))*)b)b)bfail dot
  1011   |  5     (((((((■■){■}(■|■))a)a)((\n|.))*)b)b)bfail dot
  1012   |  5     (((((((■■){■}(■){■})a)a)((\n|.))*)b)b)bfail dot
  1013   |  5     ((((((((■|■)){■}■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1014   |  5     ((((((((■|■)){■}■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1015   |  5     ((((((((■|■)){■}■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1016   |  5     ((((((((■|■)){■}■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1017   |  5     ((((((((■|■)){■}■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1018   |  5     ((((((((■|■)){■}■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1019   |  5     ((((((((■|■)){■}■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1020   |  5     ((((((((■|■)){■}■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1021   |  5     ((((((((■■|■)){■}■)a)a)((\n|.))*)b)b)bfail dot
  1022   |  5     (((((((((■|■)|■)){■}■)a)a)((\n|.))*)b)b)bfail dot
  1023   |  5     (((((((((■){■}|■)){■}■)a)a)((\n|.))*)b)b)bfail dot
  1024   |  5     ((((((((■|■)){■}(■■))a)a)((\n|.))*)b)b)bfail dot
  1025   |  5     ((((((((■|■)){■}(■|■))a)a)((\n|.))*)b)b)bfail dot
  1026   |  5     ((((((((■|■)){■}(■){■})a)a)((\n|.))*)b)b)bfail dot
  1027   |  5     ((((((((■){■}){■}■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1028   |  5     ((((((((■){■}){■}■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1029   |  5     ((((((((■){■}){■}■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1030   |  5     ((((((((■){■}){■}■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1031   |  5     ((((((((■){■}){■}■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1032   |  5     ((((((((■){■}){■}■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1033   |  5     ((((((((■){■}){■}■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1034   |  5     ((((((((■){■}){■}■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1035   |  5     ((((((((■■){■}){■}■)a)a)((\n|.))*)b)b)bfail dot
  1036   |  5     (((((((((■|■)){■}){■}■)a)a)((\n|.))*)b)b)bfail dot
  1037   |  5     (((((((((■){■}){■}){■}■)a)a)((\n|.))*)b)b)bfail dot
  1038   |  5     ((((((((■){■}){■}(■■))a)a)((\n|.))*)b)b)bfail dot
  1039   |  5     ((((((((■){■}){■}(■|■))a)a)((\n|.))*)b)b)bfail dot
  1040   |  5     ((((((((■){■}){■}(■){■})a)a)((\n|.))*)b)b)bfail dot
  1041   |  5     (((((((■){■}(■■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  1042   |  5     (((((((■){■}(■■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  1043   |  5     (((((((■){■}(■■))a)a)((■|.))*)b)b)bfail dotstar or empty
  1044   |  5     (((((((■){■}(■■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  1045   |  5     (((((((■){■}(■■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1046   |  5     (((((((■){■}(■■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  1047   |  5     (((((((■){■}(■■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  1048   |  5     (((((((■){■}(■■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  1049   |  5     (((((((■){■}(■))a)a)((\n|.))*)b)b)bfail dotstar or empty
  1050   |  5     (((((((■){■}(■|■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  1051   |  5     (((((((■){■}(■|■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  1052   |  5     (((((((■){■}(■|■))a)a)((■|.))*)b)b)bfail dotstar or empty
  1053   |  5     (((((((■){■}(■|■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  1054   |  5     (((((((■){■}(■|■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1055   |  5     (((((((■){■}(■|■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  1056   |  5     (((((((■){■}(■|■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  1057   |  5     (((((((■){■}(■|■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  1058   |  5     (((((((■){■}(■){■})■)a)((\n|.))*)b)b)bfail dotstar or empty
  1059   |  5     (((((((■){■}(■){■})a)■)((\n|.))*)b)b)bfail dotstar or empty
  1060   |  5     (((((((■){■}(■){■})a)a)((■|.))*)b)b)bfail dotstar or empty
  1061   |  5     (((((((■){■}(■){■})a)a)((\n|■))*)b)b)bfail dotstar or empty
  1062   |  5     (((((((■){■}(■){■})a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1063   |  5     (((((((■){■}(■){■})a)a)((\n|.))*)■)b)bfail dotstar or empty
  1064   |  5     (((((((■){■}(■){■})a)a)((\n|.))*)b)■)bfail dotstar or empty
  1065   |  5     (((((((■){■}(■){■})a)a)((\n|.))*)b)b)■fail dotstar or empty
  1066   |  5     ((((((■|■)■)■)((■|.))*)b)b)bfail dotstar or empty
  1067   |  5     ((((((■|■)■)■)((\n|■))*)b)b)bfail dotstar or empty
  1068   |  5     ((((((■|■)■)■)((\n|.)){■})b)b)bfail dotstar or empty
  1069   |  5     ((((((■|■)■)■)((\n|.))*)■)b)bfail dotstar or empty
  1070   |  5     ((((((■|■)■)■)((\n|.))*)b)■)bfail dotstar or empty
  1071   |  5     ((((((■|■)■)■)((\n|.))*)b)b)■fail dotstar or empty
  1072   |  5     ((((((■|■)■)a)((■|■))*)b)b)bfail dotstar or empty
  1073   |  5     ((((((■|■)■)a)((■|.)){■})b)b)bfail dotstar or empty
  1074   |  5     ((((((■|■)■)a)((■|.))*)■)b)bfail dotstar or empty
  1075   |  5     ((((((■|■)■)a)((■|.))*)b)■)bfail dotstar or empty
  1076   |  5     ((((((■|■)■)a)((■|.))*)b)b)■fail dotstar or empty
  1077   |  5     ((((((■|■)■)a)((\n|■)){■})b)b)bfail dotstar or empty
  1078   |  5     ((((((■|■)■)a)((\n|■))*)■)b)bfail dotstar or empty
  1079   |  5     ((((((■|■)■)a)((\n|■))*)b)■)bfail dotstar or empty
  1080   |  5     ((((((■|■)■)a)((\n|■))*)b)b)■fail dotstar or empty
  1081   |  5     ((((((■|■)■)a)((\n|.)){■})■)b)bfail dotstar or empty
  1082   |  5     ((((((■|■)■)a)((\n|.)){■})b)■)bfail dotstar or empty
  1083   |  5     ((((((■|■)■)a)((\n|.)){■})b)b)■fail dotstar or empty
  1084   |  5     ((((((■|■)■)a)■)b)b)b   fail dotstar or empty
  1085   |  5     ((((((■|■)■)a)((\n|.))*)■)■)bfail dotstar or empty
  1086   |  5     ((((((■|■)■)a)((\n|.))*)■)b)■fail dotstar or empty
  1087   |  5     ((((((■|■)■)a)((\n|.))*)b)■)■fail dotstar or empty
  1088   |  5     ((((((■|■)a)■)((■|■))*)b)b)bfail dotstar or empty
  1089   |  5     ((((((■|■)a)■)((■|.)){■})b)b)bfail dotstar or empty
  1090   |  5     ((((((■|■)a)■)((■|.))*)■)b)bfail dotstar or empty
  1091   |  5     ((((((■|■)a)■)((■|.))*)b)■)bfail dotstar or empty
  1092   |  5     ((((((■|■)a)■)((■|.))*)b)b)■fail dotstar or empty
  1093   |  5     ((((((■|■)a)■)((\n|■)){■})b)b)bfail dotstar or empty
  1094   |  5     ((((((■|■)a)■)((\n|■))*)■)b)bfail dotstar or empty
  1095   |  5     ((((((■|■)a)■)((\n|■))*)b)■)bfail dotstar or empty
  1096   |  5     ((((((■|■)a)■)((\n|■))*)b)b)■fail dotstar or empty
  1097   |  5     ((((((■|■)a)■)((\n|.)){■})■)b)bfail dotstar or empty
  1098   |  5     ((((((■|■)a)■)((\n|.)){■})b)■)bfail dotstar or empty
  1099   |  5     ((((((■|■)a)■)((\n|.)){■})b)b)■fail dotstar or empty
  1100   |  5     ((((((■|■)a)■)■)b)b)b   fail dotstar or empty
  1101   |  5     ((((((■|■)a)■)((\n|.))*)■)■)bfail dotstar or empty
  1102   |  5     ((((((■|■)a)■)((\n|.))*)■)b)■fail dotstar or empty
  1103   |  5     ((((((■|■)a)■)((\n|.))*)b)■)■fail dotstar or empty
  1104   |  5     ((((((■|■)a)a)((■|■)){■})b)b)bfail dotstar or empty
  1105   |  5     ((((((■|■)a)a)((■|■))*)■)b)bfail dotstar or empty
  1106   |  5     ((((((■|■)a)a)((■|■))*)b)■)bfail dotstar or empty
  1107   |  5     ((((((■|■)a)a)((■|■))*)b)b)■fail dotstar or empty
  1108   |  5     ((((((■|■)a)a)(■)*)b)b)bfail dotstar or empty
  1109   |  5     ((((((■|■)a)a)((■|.)){■})■)b)bfail dotstar or empty
  1110   |  5     ((((((■|■)a)a)((■|.)){■})b)■)bfail dotstar or empty
  1111   |  5     ((((((■|■)a)a)((■|.)){■})b)b)■fail dotstar or empty
  1112   |  5     ((((((■|■)a)a)((■|.))*)■)■)bfail dotstar or empty
  1113   |  5     ((((((■|■)a)a)((■|.))*)■)b)■fail dotstar or empty
  1114   |  5     ((((((■|■)a)a)((■|.))*)b)■)■fail dotstar or empty
  1115   |  5     ((((((■|■)a)a)((\n|■)){■})■)b)bfail dotstar or empty
  1116   |  5     ((((((■|■)a)a)((\n|■)){■})b)■)bfail dotstar or empty
  1117   |  5     ((((((■|■)a)a)((\n|■)){■})b)b)■fail dotstar or empty
  1118   |  5     ((((((■|■)a)a)((\n|■))*)■)■)bfail dotstar or empty
  1119   |  5     ((((((■|■)a)a)((\n|■))*)■)b)■fail dotstar or empty
  1120   |  5     ((((((■|■)a)a)((\n|■))*)b)■)■fail dotstar or empty
  1121   |  5     ((((((■|■)a)a)((\n|.)){■})■)■)bfail dotstar or empty
  1122   |  5     ((((((■|■)a)a)((\n|.)){■})■)b)■fail dotstar or empty
  1123   |  5     ((((((■|■)a)a)■)■)b)b   fail dotstar or empty
  1124   |  5     ((((((■|■)a)a)((\n|.)){■})b)■)■fail dotstar or empty
  1125   |  5     ((((((■|■)a)a)■)b)■)b   fail dotstar or empty
  1126   |  5     ((((((■|■)a)a)■)b)b)■   fail dotstar or empty
  1127   |  5     ((((((■|■)a)a)((\n|.))*)■)■)■fail dotstar or empty
  1128   |  5     ((((((■■|■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  1129   |  5     ((((((■■|■)■)a)((■|.))*)b)b)bfail dotstar or empty
  1130   |  5     ((((((■■|■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  1131   |  5     ((((((■■|■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  1132   |  5     ((((((■■|■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  1133   |  5     ((((((■■|■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  1134   |  5     ((((((■■|■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  1135   |  5     ((((((■■|■)a)■)((■|.))*)b)b)bfail dotstar or empty
  1136   |  5     ((((((■■|■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  1137   |  5     ((((((■■|■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  1138   |  5     ((((((■■|■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  1139   |  5     ((((((■■|■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  1140   |  5     ((((((■■|■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  1141   |  5     ((((((■■|■)a)a)((■|■))*)b)b)bfail dotstar or empty
  1142   |  5     ((((((■■|■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  1143   |  5     ((((((■■|■)a)a)((■|.))*)■)b)bfail dotstar or empty
  1144   |  5     ((((((■■|■)a)a)((■|.))*)b)■)bfail dotstar or empty
  1145   |  5     ((((((■■|■)a)a)((■|.))*)b)b)■fail dotstar or empty
  1146   |  5     ((((((■■|■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  1147   |  5     ((((((■■|■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  1148   |  5     ((((((■■|■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  1149   |  5     ((((((■■|■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  1150   |  5     ((((((■■|■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  1151   |  5     ((((((■■|■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  1152   |  5     ((((((■■|■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  1153   |  5     ((((((■■|■)a)a)■)b)b)b  fail dotstar or empty
  1154   |  5     ((((((■■|■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  1155   |  5     ((((((■■|■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  1156   |  5     ((((((■■|■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  1157   |  5     (((((((■■)■|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1158   |  5     (((((((■■)■|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1159   |  5     (((((((■■)■|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1160   |  5     (((((((■■)■|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1161   |  5     (((((((■■)■|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1162   |  5     (((((((■■)■|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1163   |  5     (((((((■■)■|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1164   |  5     (((((((■■)■|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1165   |  5     (((((((■)■|■)a)a)((\n|.))*)b)b)bfail dotstar or empty
  1166   |  5     ((((((((■■)■)■|■)a)a)((\n|.))*)b)b)bfail dot
  1167   |  5     ((((((((■|■)■)■|■)a)a)((\n|.))*)b)b)bfail dot
  1168   |  5     ((((((((■){■}■)■|■)a)a)((\n|.))*)b)b)bfail dot
  1169   |  5     (((((((■■)(■■)|■)a)a)((\n|.))*)b)b)bfail dot
  1170   |  5     (((((((■■)(■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1171   |  5     (((((((■■)(■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1172   |  5     (((((((■■)■|■■)a)a)((\n|.))*)b)b)bfail dot
  1173   |  5     (((((((■■)■|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1174   |  5     (((((((■■)■|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1175   |  5     (((((((■|■)■|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1176   |  5     (((((((■|■)■|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1177   |  5     (((((((■|■)■|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1178   |  5     (((((((■|■)■|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1179   |  5     (((((((■|■)■|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1180   |  5     (((((((■|■)■|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1181   |  5     (((((((■|■)■|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1182   |  5     (((((((■|■)■|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1183   |  5     (((((((■■|■)■|■)a)a)((\n|.))*)b)b)bfail dot
  1184   |  5     ((((((((■|■)|■)■|■)a)a)((\n|.))*)b)b)bfail dot
  1185   |  5     ((((((((■){■}|■)■|■)a)a)((\n|.))*)b)b)bfail dot
  1186   |  5     (((((((■|■)(■■)|■)a)a)((\n|.))*)b)b)bfail dot
  1187   |  5     (((((((■|■)(■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1188   |  5     (((((((■|■)(■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1189   |  5     (((((((■|■)■|■■)a)a)((\n|.))*)b)b)bfail dot
  1190   |  5     (((((((■|■)■|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1191   |  5     (((((((■|■)■|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1192   |  5     (((((((■){■}■|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1193   |  5     (((((((■){■}■|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1194   |  5     (((((((■){■}■|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1195   |  5     (((((((■){■}■|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1196   |  5     (((((((■){■}■|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1197   |  5     (((((((■){■}■|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1198   |  5     (((((((■){■}■|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1199   |  5     (((((((■){■}■|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1200   |  5     (((((((■■){■}■|■)a)a)((\n|.))*)b)b)bfail dot
  1201   |  5     ((((((((■|■)){■}■|■)a)a)((\n|.))*)b)b)bfail dot
  1202   |  5     ((((((((■){■}){■}■|■)a)a)((\n|.))*)b)b)bfail dot
  1203   |  5     (((((((■){■}(■■)|■)a)a)((\n|.))*)b)b)bfail dot
  1204   |  5     (((((((■){■}(■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1205   |  5     (((((((■){■}(■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1206   |  5     (((((((■){■}■|■■)a)a)((\n|.))*)b)b)bfail dot
  1207   |  5     (((((((■){■}■|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1208   |  5     (((((((■){■}■|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1209   |  5     ((((((■■|■■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1210   |  5     ((((((■■|■■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1211   |  5     ((((((■■|■■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1212   |  5     ((((((■■|■■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1213   |  5     ((((((■■|■■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1214   |  5     ((((((■■|■■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1215   |  5     ((((((■■|■■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1216   |  5     ((((((■■|■■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1217   |  5     ((((((■■|(■|■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  1218   |  5     ((((((■■|(■|■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  1219   |  5     ((((((■■|(■|■))a)a)((■|.))*)b)b)bfail dotstar or empty
  1220   |  5     ((((((■■|(■|■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  1221   |  5     ((((((■■|(■|■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1222   |  5     ((((((■■|(■|■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  1223   |  5     ((((((■■|(■|■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  1224   |  5     ((((((■■|(■|■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  1225   |  5     ((((((■■|(■){■})■)a)((\n|.))*)b)b)bfail dotstar or empty
  1226   |  5     ((((((■■|(■){■})a)■)((\n|.))*)b)b)bfail dotstar or empty
  1227   |  5     ((((((■■|(■){■})a)a)((■|.))*)b)b)bfail dotstar or empty
  1228   |  5     ((((((■■|(■){■})a)a)((\n|■))*)b)b)bfail dotstar or empty
  1229   |  5     ((((((■■|(■){■})a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1230   |  5     ((((((■■|(■){■})a)a)((\n|.))*)■)b)bfail dotstar or empty
  1231   |  5     ((((((■■|(■){■})a)a)((\n|.))*)b)■)bfail dotstar or empty
  1232   |  5     ((((((■■|(■){■})a)a)((\n|.))*)b)b)■fail dotstar or empty
  1233   |  5     (((((((■|■)|■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  1234   |  5     (((((((■|■)|■)■)a)((■|.))*)b)b)bfail dotstar or empty
  1235   |  5     (((((((■|■)|■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  1236   |  5     (((((((■|■)|■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  1237   |  5     (((((((■|■)|■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  1238   |  5     (((((((■|■)|■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  1239   |  5     (((((((■|■)|■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  1240   |  5     (((((((■|■)|■)a)■)((■|.))*)b)b)bfail dotstar or empty
  1241   |  5     (((((((■|■)|■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  1242   |  5     (((((((■|■)|■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  1243   |  5     (((((((■|■)|■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  1244   |  5     (((((((■|■)|■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  1245   |  5     (((((((■|■)|■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  1246   |  5     (((((((■|■)|■)a)a)((■|■))*)b)b)bfail dotstar or empty
  1247   |  5     (((((((■|■)|■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  1248   |  5     (((((((■|■)|■)a)a)((■|.))*)■)b)bfail dotstar or empty
  1249   |  5     (((((((■|■)|■)a)a)((■|.))*)b)■)bfail dotstar or empty
  1250   |  5     (((((((■|■)|■)a)a)((■|.))*)b)b)■fail dotstar or empty
  1251   |  5     (((((((■|■)|■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  1252   |  5     (((((((■|■)|■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  1253   |  5     (((((((■|■)|■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  1254   |  5     (((((((■|■)|■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  1255   |  5     (((((((■|■)|■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  1256   |  5     (((((((■|■)|■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  1257   |  5     (((((((■|■)|■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  1258   |  5     (((((((■|■)|■)a)a)■)b)b)bfail dotstar or empty
  1259   |  5     (((((((■|■)|■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  1260   |  5     (((((((■|■)|■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  1261   |  5     (((((((■|■)|■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  1262   |  5     (((((((■■|■)|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1263   |  5     (((((((■■|■)|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1264   |  5     (((((((■■|■)|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1265   |  5     (((((((■■|■)|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1266   |  5     (((((((■■|■)|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1267   |  5     (((((((■■|■)|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1268   |  5     (((((((■■|■)|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1269   |  5     (((((((■■|■)|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1270   |  5     ((((((((■■)■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1271   |  5     ((((((((■|■)■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1272   |  5     ((((((((■){■}■|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1273   |  5     (((((((■■|■■)|■)a)a)((\n|.))*)b)b)bfail dot
  1274   |  5     (((((((■■|(■|■))|■)a)a)((\n|.))*)b)b)bfail dot
  1275   |  5     (((((((■■|(■){■})|■)a)a)((\n|.))*)b)b)bfail dot
  1276   |  5     (((((((■■|■)|■■)a)a)((\n|.))*)b)b)bfail dot
  1277   |  5     (((((((■■|■)|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1278   |  5     (((((((■■|■)|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1279   |  5     ((((((((■|■)|■)|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1280   |  5     ((((((((■|■)|■)|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1281   |  5     ((((((((■|■)|■)|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1282   |  5     ((((((((■|■)|■)|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1283   |  5     ((((((((■|■)|■)|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1284   |  5     ((((((((■|■)|■)|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1285   |  5     ((((((((■|■)|■)|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1286   |  5     ((((((((■|■)|■)|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1287   |  5     ((((((((■■|■)|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1288   |  5     (((((((((■|■)|■)|■)|■)a)a)((\n|.))*)b)b)bfail solve
  1289   |  5     (((((((((■){■}|■)|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1290   |  5     ((((((((■|■)|■■)|■)a)a)((\n|.))*)b)b)bfail dot
  1291   |  5     ((((((((■|■)|(■|■))|■)a)a)((\n|.))*)b)b)bfail solve
  1292   |  5     ((((((((■|■)|(■){■})|■)a)a)((\n|.))*)b)b)bfail dot
  1293   |  5     ((((((((■|■)|■)|■■)a)a)((\n|.))*)b)b)bfail dot
  1294   |  5     ((((((((■|■)|■)|(■|■))a)a)((\n|.))*)b)b)bfail solve
  1295   |  5     ((((((((■|■)|■)|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1296   |  5     ((((((((■){■}|■)|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1297   |  5     ((((((((■){■}|■)|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1298   |  5     ((((((((■){■}|■)|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1299   |  5     ((((((((■){■}|■)|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1300   |  5     ((((((((■){■}|■)|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1301   |  5     ((((((((■){■}|■)|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1302   |  5     ((((((((■){■}|■)|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1303   |  5     ((((((((■){■}|■)|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1304   |  5     ((((((((■■){■}|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1305   |  5     (((((((((■|■)){■}|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1306   |  5     (((((((((■){■}){■}|■)|■)a)a)((\n|.))*)b)b)bfail dot
  1307   |  5     ((((((((■){■}|■■)|■)a)a)((\n|.))*)b)b)bfail dot
  1308   |  5     ((((((((■){■}|(■|■))|■)a)a)((\n|.))*)b)b)bfail dot
  1309   |  5     ((((((((■){■}|(■){■})|■)a)a)((\n|.))*)b)b)bfail dot
  1310   |  5     ((((((((■){■}|■)|■■)a)a)((\n|.))*)b)b)bfail dot
  1311   |  5     ((((((((■){■}|■)|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1312   |  5     ((((((((■){■}|■)|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1313   |  5     (((((((■|■)|■■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1314   |  5     (((((((■|■)|■■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1315   |  5     (((((((■|■)|■■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1316   |  5     (((((((■|■)|■■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1317   |  5     (((((((■|■)|■■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1318   |  5     (((((((■|■)|■■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1319   |  5     (((((((■|■)|■■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1320   |  5     (((((((■|■)|■■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1321   |  5     (((((((■|■)|(■|■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  1322   |  5     (((((((■|■)|(■|■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  1323   |  5     (((((((■|■)|(■|■))a)a)((■|.))*)b)b)bfail dotstar or empty
  1324   |  5     (((((((■|■)|(■|■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  1325   |  5     (((((((■|■)|(■|■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1326   |  5     (((((((■|■)|(■|■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  1327   |  5     (((((((■|■)|(■|■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  1328   |  5     (((((((■|■)|(■|■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  1329   |  5     (((((((■|■)|(■){■})■)a)((\n|.))*)b)b)bfail dotstar or empty
  1330   |  5     (((((((■|■)|(■){■})a)■)((\n|.))*)b)b)bfail dotstar or empty
  1331   |  5     (((((((■|■)|(■){■})a)a)((■|.))*)b)b)bfail dotstar or empty
  1332   |  5     (((((((■|■)|(■){■})a)a)((\n|■))*)b)b)bfail dotstar or empty
  1333   |  5     (((((((■|■)|(■){■})a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1334   |  5     (((((((■|■)|(■){■})a)a)((\n|.))*)■)b)bfail dotstar or empty
  1335   |  5     (((((((■|■)|(■){■})a)a)((\n|.))*)b)■)bfail dotstar or empty
  1336   |  5     (((((((■|■)|(■){■})a)a)((\n|.))*)b)b)■fail dotstar or empty
  1337   |  5     (((((((■){■}|■)■)■)((\n|.))*)b)b)bfail dotstar or empty
  1338   |  5     (((((((■){■}|■)■)a)((■|.))*)b)b)bfail dotstar or empty
  1339   |  5     (((((((■){■}|■)■)a)((\n|■))*)b)b)bfail dotstar or empty
  1340   |  5     (((((((■){■}|■)■)a)((\n|.)){■})b)b)bfail dotstar or empty
  1341   |  5     (((((((■){■}|■)■)a)((\n|.))*)■)b)bfail dotstar or empty
  1342   |  5     (((((((■){■}|■)■)a)((\n|.))*)b)■)bfail dotstar or empty
  1343   |  5     (((((((■){■}|■)■)a)((\n|.))*)b)b)■fail dotstar or empty
  1344   |  5     (((((((■){■}|■)a)■)((■|.))*)b)b)bfail dotstar or empty
  1345   |  5     (((((((■){■}|■)a)■)((\n|■))*)b)b)bfail dotstar or empty
  1346   |  5     (((((((■){■}|■)a)■)((\n|.)){■})b)b)bfail dotstar or empty
  1347   |  5     (((((((■){■}|■)a)■)((\n|.))*)■)b)bfail dotstar or empty
  1348   |  5     (((((((■){■}|■)a)■)((\n|.))*)b)■)bfail dotstar or empty
  1349   |  5     (((((((■){■}|■)a)■)((\n|.))*)b)b)■fail dotstar or empty
  1350   |  5     (((((((■){■}|■)a)a)((■|■))*)b)b)bfail dotstar or empty
  1351   |  5     (((((((■){■}|■)a)a)((■|.)){■})b)b)bfail dotstar or empty
  1352   |  5     (((((((■){■}|■)a)a)((■|.))*)■)b)bfail dotstar or empty
  1353   |  5     (((((((■){■}|■)a)a)((■|.))*)b)■)bfail dotstar or empty
  1354   |  5     (((((((■){■}|■)a)a)((■|.))*)b)b)■fail dotstar or empty
  1355   |  5     (((((((■){■}|■)a)a)((\n|■)){■})b)b)bfail dotstar or empty
  1356   |  5     (((((((■){■}|■)a)a)((\n|■))*)■)b)bfail dotstar or empty
  1357   |  5     (((((((■){■}|■)a)a)((\n|■))*)b)■)bfail dotstar or empty
  1358   |  5     (((((((■){■}|■)a)a)((\n|■))*)b)b)■fail dotstar or empty
  1359   |  5     (((((((■){■}|■)a)a)((\n|.)){■})■)b)bfail dotstar or empty
  1360   |  5     (((((((■){■}|■)a)a)((\n|.)){■})b)■)bfail dotstar or empty
  1361   |  5     (((((((■){■}|■)a)a)((\n|.)){■})b)b)■fail dotstar or empty
  1362   |  5     (((((((■){■}|■)a)a)■)b)b)bfail dotstar or empty
  1363   |  5     (((((((■){■}|■)a)a)((\n|.))*)■)■)bfail dotstar or empty
  1364   |  5     (((((((■){■}|■)a)a)((\n|.))*)■)b)■fail dotstar or empty
  1365   |  5     (((((((■){■}|■)a)a)((\n|.))*)b)■)■fail dotstar or empty
  1366   |  5     (((((((■■){■}|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1367   |  5     (((((((■■){■}|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1368   |  5     (((((((■■){■}|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1369   |  5     (((((((■■){■}|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1370   |  5     (((((((■■){■}|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1371   |  5     (((((((■■){■}|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1372   |  5     (((((((■■){■}|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1373   |  5     (((((((■■){■}|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1374   |  5     ((((((((■■)■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1375   |  5     ((((((((■|■)■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1376   |  5     ((((((((■){■}■){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1377   |  5     (((((((■■){■}|■■)a)a)((\n|.))*)b)b)bfail dot
  1378   |  5     (((((((■■){■}|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1379   |  5     (((((((■■){■}|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1380   |  5     ((((((((■|■)){■}|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1381   |  5     ((((((((■|■)){■}|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1382   |  5     ((((((((■|■)){■}|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1383   |  5     ((((((((■|■)){■}|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1384   |  5     ((((((((■|■)){■}|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1385   |  5     ((((((((■|■)){■}|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1386   |  5     ((((((((■|■)){■}|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1387   |  5     ((((((((■|■)){■}|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1388   |  5     ((((((((■■|■)){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1389   |  5     (((((((((■|■)|■)){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1390   |  5     (((((((((■){■}|■)){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1391   |  5     ((((((((■|■)){■}|■■)a)a)((\n|.))*)b)b)bfail dot
  1392   |  5     ((((((((■|■)){■}|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1393   |  5     ((((((((■|■)){■}|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1394   |  5     ((((((((■){■}){■}|■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1395   |  5     ((((((((■){■}){■}|■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1396   |  5     ((((((((■){■}){■}|■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1397   |  5     ((((((((■){■}){■}|■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1398   |  5     ((((((((■){■}){■}|■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1399   |  5     ((((((((■){■}){■}|■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1400   |  5     ((((((((■){■}){■}|■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1401   |  5     ((((((((■){■}){■}|■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1402   |  5     ((((((((■■){■}){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1403   |  5     (((((((((■|■)){■}){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1404   |  5     (((((((((■){■}){■}){■}|■)a)a)((\n|.))*)b)b)bfail dot
  1405   |  5     ((((((((■){■}){■}|■■)a)a)((\n|.))*)b)b)bfail dot
  1406   |  5     ((((((((■){■}){■}|(■|■))a)a)((\n|.))*)b)b)bfail dot
  1407   |  5     ((((((((■){■}){■}|(■){■})a)a)((\n|.))*)b)b)bfail dot
  1408   |  5     (((((((■){■}|■■)■)a)((\n|.))*)b)b)bfail dotstar or empty
  1409   |  5     (((((((■){■}|■■)a)■)((\n|.))*)b)b)bfail dotstar or empty
  1410   |  5     (((((((■){■}|■■)a)a)((■|.))*)b)b)bfail dotstar or empty
  1411   |  5     (((((((■){■}|■■)a)a)((\n|■))*)b)b)bfail dotstar or empty
  1412   |  5     (((((((■){■}|■■)a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1413   |  5     (((((((■){■}|■■)a)a)((\n|.))*)■)b)bfail dotstar or empty
  1414   |  5     (((((((■){■}|■■)a)a)((\n|.))*)b)■)bfail dotstar or empty
  1415   |  5     (((((((■){■}|■■)a)a)((\n|.))*)b)b)■fail dotstar or empty
  1416   |  5     (((((((■){■}|(■|■))■)a)((\n|.))*)b)b)bfail dotstar or empty
  1417   |  5     (((((((■){■}|(■|■))a)■)((\n|.))*)b)b)bfail dotstar or empty
  1418   |  5     (((((((■){■}|(■|■))a)a)((■|.))*)b)b)bfail dotstar or empty
  1419   |  5     (((((((■){■}|(■|■))a)a)((\n|■))*)b)b)bfail dotstar or empty
  1420   |  5     (((((((■){■}|(■|■))a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1421   |  5     (((((((■){■}|(■|■))a)a)((\n|.))*)■)b)bfail dotstar or empty
  1422   |  5     (((((((■){■}|(■|■))a)a)((\n|.))*)b)■)bfail dotstar or empty
  1423   |  5     (((((((■){■}|(■|■))a)a)((\n|.))*)b)b)■fail dotstar or empty
  1424   |  5     (((((((■){■}|(■){■})■)a)((\n|.))*)b)b)bfail dotstar or empty
  1425   |  5     (((((((■){■}|(■){■})a)■)((\n|.))*)b)b)bfail dotstar or empty
  1426   |  5     (((((((■){■}|(■){■})a)a)((■|.))*)b)b)bfail dotstar or empty
  1427   |  5     (((((((■){■}|(■){■})a)a)((\n|■))*)b)b)bfail dotstar or empty
  1428   |  5     (((((((■){■}|(■){■})a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1429   |  5     (((((((■){■}|(■){■})a)a)((\n|.))*)■)b)bfail dotstar or empty
  1430   |  5     (((((((■){■}|(■){■})a)a)((\n|.))*)b)■)bfail dotstar or empty
  1431   |  5     (((((((■){■}|(■){■})a)a)((\n|.))*)b)b)■fail dotstar or empty
  1432   |  5     ((((((■){■}■)■)((■|.))*)b)b)bfail dotstar or empty
  1433   |  5     ((((((■){■}■)■)((\n|■))*)b)b)bfail dotstar or empty
  1434   |  5     ((((((■){■}■)■)((\n|.)){■})b)b)bfail dotstar or empty
  1435   |  5     ((((((■){■}■)■)((\n|.))*)■)b)bfail dotstar or empty
  1436   |  5     ((((((■){■}■)■)((\n|.))*)b)■)bfail dotstar or empty
  1437   |  5     ((((((■){■}■)■)((\n|.))*)b)b)■fail dotstar or empty
  1438   |  5     ((((((■){■}■)a)((■|■))*)b)b)bfail dotstar or empty
  1439   |  5     ((((((■){■}■)a)((■|.)){■})b)b)bfail dotstar or empty
  1440   |  5     ((((((■){■}■)a)((■|.))*)■)b)bfail dotstar or empty
  1441   |  5     ((((((■){■}■)a)((■|.))*)b)■)bfail dotstar or empty
  1442   |  5     ((((((■){■}■)a)((■|.))*)b)b)■fail dotstar or empty
  1443   |  5     ((((((■){■}■)a)((\n|■)){■})b)b)bfail dotstar or empty
  1444   |  5     ((((((■){■}■)a)((\n|■))*)■)b)bfail dotstar or empty
  1445   |  5     ((((((■){■}■)a)((\n|■))*)b)■)bfail dotstar or empty
  1446   |  5     ((((((■){■}■)a)((\n|■))*)b)b)■fail dotstar or empty
  1447   |  5     ((((((■){■}■)a)((\n|.)){■})■)b)bfail dotstar or empty
  1448   |  5     ((((((■){■}■)a)((\n|.)){■})b)■)bfail dotstar or empty
  1449   |  5     ((((((■){■}■)a)((\n|.)){■})b)b)■fail dotstar or empty
  1450   |  5     ((((((■){■}■)a)■)b)b)b  fail dotstar or empty
  1451   |  5     ((((((■){■}■)a)((\n|.))*)■)■)bfail dotstar or empty
  1452   |  5     ((((((■){■}■)a)((\n|.))*)■)b)■fail dotstar or empty
  1453   |  5     ((((((■){■}■)a)((\n|.))*)b)■)■fail dotstar or empty
  1454   |  5     ((((((■){■}a)■)((■|■))*)b)b)bfail dotstar or empty
  1455   |  5     ((((((■){■}a)■)((■|.)){■})b)b)bfail dotstar or empty
  1456   |  5     ((((((■){■}a)■)((■|.))*)■)b)bfail dotstar or empty
  1457   |  5     ((((((■){■}a)■)((■|.))*)b)■)bfail dotstar or empty
  1458   |  5     ((((((■){■}a)■)((■|.))*)b)b)■fail dotstar or empty
  1459   |  5     ((((((■){■}a)■)((\n|■)){■})b)b)bfail dotstar or empty
  1460   |  5     ((((((■){■}a)■)((\n|■))*)■)b)bfail dotstar or empty
  1461   |  5     ((((((■){■}a)■)((\n|■))*)b)■)bfail dotstar or empty
  1462   |  5     ((((((■){■}a)■)((\n|■))*)b)b)■fail dotstar or empty
  1463   |  5     ((((((■){■}a)■)((\n|.)){■})■)b)bfail dotstar or empty
  1464   |  5     ((((((■){■}a)■)((\n|.)){■})b)■)bfail dotstar or empty
  1465   |  5     ((((((■){■}a)■)((\n|.)){■})b)b)■fail dotstar or empty
  1466   |  5     ((((((■){■}a)■)■)b)b)b  fail dotstar or empty
  1467   |  5     ((((((■){■}a)■)((\n|.))*)■)■)bfail dotstar or empty
  1468   |  5     ((((((■){■}a)■)((\n|.))*)■)b)■fail dotstar or empty
  1469   |  5     ((((((■){■}a)■)((\n|.))*)b)■)■fail dotstar or empty
  1470   |  5     ((((((■){■}a)a)((■|■)){■})b)b)bfail dotstar or empty
  1471   |  5     ((((((■){■}a)a)((■|■))*)■)b)bfail dotstar or empty
  1472   |  5     ((((((■){■}a)a)((■|■))*)b)■)bfail dotstar or empty
  1473   |  5     ((((((■){■}a)a)((■|■))*)b)b)■fail dotstar or empty
  1474   |  5     ((((((■){■}a)a)(■)*)b)b)bfail dotstar or empty
  1475   |  5     ((((((■){■}a)a)((■|.)){■})■)b)bfail dotstar or empty
  1476   |  5     ((((((■){■}a)a)((■|.)){■})b)■)bfail dotstar or empty
  1477   |  5     ((((((■){■}a)a)((■|.)){■})b)b)■fail dotstar or empty
  1478   |  5     ((((((■){■}a)a)((■|.))*)■)■)bfail dotstar or empty
  1479   |  5     ((((((■){■}a)a)((■|.))*)■)b)■fail dotstar or empty
  1480   |  5     ((((((■){■}a)a)((■|.))*)b)■)■fail dotstar or empty
  1481   |  5     ((((((■){■}a)a)((\n|■)){■})■)b)bfail dotstar or empty
  1482   |  5     ((((((■){■}a)a)((\n|■)){■})b)■)bfail dotstar or empty
  1483   |  5     ((((((■){■}a)a)((\n|■)){■})b)b)■fail dotstar or empty
  1484   |  5     ((((((■){■}a)a)((\n|■))*)■)■)bfail dotstar or empty
  1485   |  5     ((((((■){■}a)a)((\n|■))*)■)b)■fail dotstar or empty
  1486   |  5     ((((((■){■}a)a)((\n|■))*)b)■)■fail dotstar or empty
  1487   |  5     ((((((■){■}a)a)((\n|.)){■})■)■)bfail dotstar or empty
  1488   |  5     ((((((■){■}a)a)((\n|.)){■})■)b)■fail dotstar or empty
  1489   |  5     ((((((■){■}a)a)■)■)b)b  fail dotstar or empty
  1490   |  5     ((((((■){■}a)a)((\n|.)){■})b)■)■fail dotstar or empty
  1491   |  5     ((((((■){■}a)a)■)b)■)b  fail dotstar or empty
  1492   |  5     ((((((■){■}a)a)■)b)b)■  fail dotstar or empty
  1493   |  5     ((((((■){■}a)a)((\n|.))*)■)■)■fail dotstar or empty
  1494   |  5     ((((((■■){■}■)■)((\n|.))*)b)b)bfail dotstar or empty
  1495   |  5     ((((((■■){■}■)a)((■|.))*)b)b)bfail dotstar or empty
  1496   |  5     ((((((■■){■}■)a)((\n|■))*)b)b)bfail dotstar or empty
  1497   |  5     ((((((■■){■}■)a)((\n|.)){■})b)b)bfail dotstar or empty
  1498   |  5     ((((((■■){■}■)a)((\n|.))*)■)b)bfail dotstar or empty
  1499   |  5     ((((((■■){■}■)a)((\n|.))*)b)■)bfail dotstar or empty
  1500   |  5     ((((((■■){■}■)a)((\n|.))*)b)b)■fail dotstar or empty
  1501   |  5     ((((((■■){■}a)■)((■|.))*)b)b)bfail dotstar or empty
  1502   |  5     ((((((■■){■}a)■)((\n|■))*)b)b)bfail dotstar or empty
  1503   |  5     ((((((■■){■}a)■)((\n|.)){■})b)b)bfail dotstar or empty
  1504   |  5     ((((((■■){■}a)■)((\n|.))*)■)b)bfail dotstar or empty
  1505   |  5     ((((((■■){■}a)■)((\n|.))*)b)■)bfail dotstar or empty
  1506   |  5     ((((((■■){■}a)■)((\n|.))*)b)b)■fail dotstar or empty
  1507   |  5     ((((((■■){■}a)a)((■|■))*)b)b)bfail dotstar or empty
  1508   |  5     ((((((■■){■}a)a)((■|.)){■})b)b)bfail dotstar or empty
  1509   |  5     ((((((■■){■}a)a)((■|.))*)■)b)bfail dotstar or empty
  1510   |  5     ((((((■■){■}a)a)((■|.))*)b)■)bfail dotstar or empty
  1511   |  5     ((((((■■){■}a)a)((■|.))*)b)b)■fail dotstar or empty
  1512   |  5     ((((((■■){■}a)a)((\n|■)){■})b)b)bfail dotstar or empty
  1513   |  5     ((((((■■){■}a)a)((\n|■))*)■)b)bfail dotstar or empty
  1514   |  5     ((((((■■){■}a)a)((\n|■))*)b)■)bfail dotstar or empty
  1515   |  5     ((((((■■){■}a)a)((\n|■))*)b)b)■fail dotstar or empty
  1516   |  5     ((((((■■){■}a)a)((\n|.)){■})■)b)bfail dotstar or empty
  1517   |  5     ((((((■■){■}a)a)((\n|.)){■})b)■)bfail dotstar or empty
  1518   |  5     ((((((■■){■}a)a)((\n|.)){■})b)b)■fail dotstar or empty
  1519   |  5     ((((((■■){■}a)a)■)b)b)b fail dotstar or empty
  1520   |  5     ((((((■■){■}a)a)((\n|.))*)■)■)bfail dotstar or empty
  1521   |  5     ((((((■■){■}a)a)((\n|.))*)■)b)■fail dotstar or empty
  1522   |  5     ((((((■■){■}a)a)((\n|.))*)b)■)■fail dotstar or empty
  1523   |  5     (((((((■■)■){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  1524   |  5     (((((((■■)■){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  1525   |  5     (((((((■■)■){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  1526   |  5     (((((((■■)■){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  1527   |  5     (((((((■■)■){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1528   |  5     (((((((■■)■){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  1529   |  5     (((((((■■)■){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  1530   |  5     (((((((■■)■){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  1531   |  5     (((((((■)■){■}a)a)((\n|.))*)b)b)bfail dotstar or empty
  1532   |  5     ((((((((■■)■)■){■}a)a)((\n|.))*)b)b)bfail dot
  1533   |  5     ((((((((■|■)■)■){■}a)a)((\n|.))*)b)b)bfail dot
  1534   |  5     ((((((((■){■}■)■){■}a)a)((\n|.))*)b)b)bfail dot
  1535   |  5     (((((((■■)(■■)){■}a)a)((\n|.))*)b)b)bfail dot
  1536   |  5     (((((((■■)(■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1537   |  5     (((((((■■)(■){■}){■}a)a)((\n|.))*)b)b)bfail dot
  1538   |  5     (((((((■|■)■){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  1539   |  5     (((((((■|■)■){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  1540   |  5     (((((((■|■)■){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  1541   |  5     (((((((■|■)■){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  1542   |  5     (((((((■|■)■){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1543   |  5     (((((((■|■)■){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  1544   |  5     (((((((■|■)■){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  1545   |  5     (((((((■|■)■){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  1546   |  5     (((((((■■|■)■){■}a)a)((\n|.))*)b)b)bfail dot
  1547   |  5     ((((((((■|■)|■)■){■}a)a)((\n|.))*)b)b)bfail dot
  1548   |  5     ((((((((■){■}|■)■){■}a)a)((\n|.))*)b)b)bfail dot
  1549   |  5     (((((((■|■)(■■)){■}a)a)((\n|.))*)b)b)bfail dot
  1550   |  5     (((((((■|■)(■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1551   |  5     (((((((■|■)(■){■}){■}a)a)((\n|.))*)b)b)bfail dot
  1552   |  5     (((((((■){■}■){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  1553   |  5     (((((((■){■}■){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  1554   |  5     (((((((■){■}■){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  1555   |  5     (((((((■){■}■){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  1556   |  5     (((((((■){■}■){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1557   |  5     (((((((■){■}■){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  1558   |  5     (((((((■){■}■){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  1559   |  5     (((((((■){■}■){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  1560   |  5     (((((((■■){■}■){■}a)a)((\n|.))*)b)b)bfail dot
  1561   |  5     ((((((((■|■)){■}■){■}a)a)((\n|.))*)b)b)bfail dot
  1562   |  5     ((((((((■){■}){■}■){■}a)a)((\n|.))*)b)b)bfail dot
  1563   |  5     (((((((■){■}(■■)){■}a)a)((\n|.))*)b)b)bfail dot
  1564   |  5     (((((((■){■}(■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1565   |  5     (((((((■){■}(■){■}){■}a)a)((\n|.))*)b)b)bfail dot
  1566   |  5     (((((((■|■)){■}■)■)((\n|.))*)b)b)bfail dotstar or empty
  1567   |  5     (((((((■|■)){■}■)a)((■|.))*)b)b)bfail dotstar or empty
  1568   |  5     (((((((■|■)){■}■)a)((\n|■))*)b)b)bfail dotstar or empty
  1569   |  5     (((((((■|■)){■}■)a)((\n|.)){■})b)b)bfail dotstar or empty
  1570   |  5     (((((((■|■)){■}■)a)((\n|.))*)■)b)bfail dotstar or empty
  1571   |  5     (((((((■|■)){■}■)a)((\n|.))*)b)■)bfail dotstar or empty
  1572   |  5     (((((((■|■)){■}■)a)((\n|.))*)b)b)■fail dotstar or empty
  1573   |  5     (((((((■|■)){■}a)■)((■|.))*)b)b)bfail dotstar or empty
  1574   |  5     (((((((■|■)){■}a)■)((\n|■))*)b)b)bfail dotstar or empty
  1575   |  5     (((((((■|■)){■}a)■)((\n|.)){■})b)b)bfail dotstar or empty
  1576   |  5     (((((((■|■)){■}a)■)((\n|.))*)■)b)bfail dotstar or empty
  1577   |  5     (((((((■|■)){■}a)■)((\n|.))*)b)■)bfail dotstar or empty
  1578   |  5     (((((((■|■)){■}a)■)((\n|.))*)b)b)■fail dotstar or empty
  1579   |  5     (((((((■|■)){■}a)a)((■|■))*)b)b)bfail dotstar or empty
  1580   |  5     (((((((■|■)){■}a)a)((■|.)){■})b)b)bfail dotstar or empty
  1581   |  5     (((((((■|■)){■}a)a)((■|.))*)■)b)bfail dotstar or empty
  1582   |  5     (((((((■|■)){■}a)a)((■|.))*)b)■)bfail dotstar or empty
  1583   |  5     (((((((■|■)){■}a)a)((■|.))*)b)b)■fail dotstar or empty
  1584   |  5     (((((((■|■)){■}a)a)((\n|■)){■})b)b)bfail dotstar or empty
  1585   |  5     (((((((■|■)){■}a)a)((\n|■))*)■)b)bfail dotstar or empty
  1586   |  5     (((((((■|■)){■}a)a)((\n|■))*)b)■)bfail dotstar or empty
  1587   |  5     (((((((■|■)){■}a)a)((\n|■))*)b)b)■fail dotstar or empty
  1588   |  5     (((((((■|■)){■}a)a)((\n|.)){■})■)b)bfail dotstar or empty
  1589   |  5     (((((((■|■)){■}a)a)((\n|.)){■})b)■)bfail dotstar or empty
  1590   |  5     (((((((■|■)){■}a)a)((\n|.)){■})b)b)■fail dotstar or empty
  1591   |  5     (((((((■|■)){■}a)a)■)b)b)bfail dotstar or empty
  1592   |  5     (((((((■|■)){■}a)a)((\n|.))*)■)■)bfail dotstar or empty
  1593   |  5     (((((((■|■)){■}a)a)((\n|.))*)■)b)■fail dotstar or empty
  1594   |  5     (((((((■|■)){■}a)a)((\n|.))*)b)■)■fail dotstar or empty
  1595   |  5     (((((((■■|■)){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  1596   |  5     (((((((■■|■)){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  1597   |  5     (((((((■■|■)){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  1598   |  5     (((((((■■|■)){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  1599   |  5     (((((((■■|■)){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1600   |  5     (((((((■■|■)){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  1601   |  5     (((((((■■|■)){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  1602   |  5     (((((((■■|■)){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  1603   |  5     ((((((((■■)■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1604   |  5     ((((((((■|■)■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1605   |  5     ((((((((■){■}■|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1606   |  5     (((((((■■|■■)){■}a)a)((\n|.))*)b)b)bfail dot
  1607   |  5     (((((((■■|(■|■))){■}a)a)((\n|.))*)b)b)bfail dot
  1608   |  5     (((((((■■|(■){■})){■}a)a)((\n|.))*)b)b)bfail dot
  1609   |  5     ((((((((■|■)|■)){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  1610   |  5     ((((((((■|■)|■)){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  1611   |  5     ((((((((■|■)|■)){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  1612   |  5     ((((((((■|■)|■)){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  1613   |  5     ((((((((■|■)|■)){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1614   |  5     ((((((((■|■)|■)){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  1615   |  5     ((((((((■|■)|■)){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  1616   |  5     ((((((((■|■)|■)){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  1617   |  5     ((((((((■■|■)|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1618   |  5     (((((((((■|■)|■)|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1619   |  5     (((((((((■){■}|■)|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1620   |  5     ((((((((■|■)|■■)){■}a)a)((\n|.))*)b)b)bfail dot
  1621   |  5     ((((((((■|■)|(■|■))){■}a)a)((\n|.))*)b)b)bfail dot
  1622   |  5     ((((((((■|■)|(■){■})){■}a)a)((\n|.))*)b)b)bfail dot
  1623   |  5     ((((((((■){■}|■)){■}■)a)((\n|.))*)b)b)bfail dotstar or empty
  1624   |  5     ((((((((■){■}|■)){■}a)■)((\n|.))*)b)b)bfail dotstar or empty
  1625   |  5     ((((((((■){■}|■)){■}a)a)((■|.))*)b)b)bfail dotstar or empty
  1626   |  5     ((((((((■){■}|■)){■}a)a)((\n|■))*)b)b)bfail dotstar or empty
  1627   |  5     ((((((((■){■}|■)){■}a)a)((\n|.)){■})b)b)bfail dotstar or empty
  1628   |  5     ((((((((■){■}|■)){■}a)a)((\n|.))*)■)b)bfail dotstar or empty
  1629   |  5     ((((((((■){■}|■)){■}a)a)((\n|.))*)b)■)bfail dotstar or empty
  1630   |  5     ((((((((■){■}|■)){■}a)a)((\n|.))*)b)b)■fail dotstar or empty
  1631   |  5     ((((((((■■){■}|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1632   |  5     (((((((((■|■)){■}|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1633   |  5     (((((((((■){■}){■}|■)){■}a)a)((\n|.))*)b)b)bfail dot
  1634   |  5     ((((((((■){■}|■■)){■}a)a)((\n|.))*)b)b)bfail dot
  1635   |  5     ((((((((■){■}|(■|■))){■}a)a)((\n|.))*)b)b)bfail dot
  1636   |  5     ((((((((■){■}|(■){■})){■}a)a)((\n|.))*)b)b)bfail dot
  1637   |  5     (((((((■){■}){■}■)■)((\n|.))*)b)b)bfail dotstar or empty
  1638   |  5     (((((((■){■}){■}■)a)((■|.))*)b)b)bfail dotstar or empty
  1639   |  5     (((((((■){■}){■}■)a)((\n|■))*)b)b)bfail dotstar or empty
  1640   |  5     (((((((■){■}){■}■)a)((\n|.)){■})b)b)bfail dotstar or empty
  1641   |  5     (((((((■){■}){■}■)a)((\n|.))*)■)b)bfail dotstar or empty
  1642   |  5     (((((((■){■}){■}■)a)((\n|.))*)b)■)bfail dotstar or empty
  1643   |  5     (((((((■){■}){■}■)a)((\n|.))*)b)b)■fail dotstar or empty
  1644   |  5     (((((((■){■}){■}a)■)((■|.))*)b)b)bfail dotstar or empty
  1645   |  5     (((((((■){■}){■}a)■)((\n|■))*)b)b)bfail dotstar or empty
  1646   |  5     (((((((■){■}){■}a)■)((\n|.)){■})b)b)bfail dotstar or empty
  1647   |  5     (((((((■){■}){■}a)■)((\n|.))*)■)b)bfail dotstar or empty
  1648   |  5     (((((((■){■}){■}a)■)((\n|.))*)b)■)bfail dotstar or empty
  1649   |  5     (((((((■){■}){■}a)■)((\n|.))*)b)b)■fail dotstar or empty
  1650   |  5     (((((((■){■}){■}a)a)((■|■))*)b)b)bfail dotstar or empty
  1651   |  5     (((((((■){■}){■}a)a)((■|.)){■})b)b)bfail dotstar or empty
  1652   |  5     (((((((■){■}){■}a)a)((■|.))*)■)b)bfail dotstar or empty
  1653   |  5     (((((((■){■}){■}a)a)((■|.))*)b)■)bfail dotstar or empty
  1654   |  5     (((((((■){■}){■}a)a)((■|.))*)b)b)■fail dotstar or empty
  1655   |  5     (((((((■){■}){■}a)a)((\n|■)){■})b)b)bfail dotstar or empty
  1656   |  5     (((((((■){■}){■}a)a)((\n|■))*)■)b)bfail dotstar or empty
  1657   |  5     (((((((■){■}){■}a)a)((\n|■))*)b)■)bfail dotstar or empty
  1658   |  5     (((((((■){■}){■}a)a)((\n|■))*)b)b)■fail dotstar or empty
  1659   |  5     (((((((■){■}){■}a)a)((\n|.)){■})■)b)bfail dotstar or empty
  1660   |  5     (((((((■){■}){■}a)a)((\n|.)){■})b)■)bfail dotstar or empty
  1661   |  5     (((((((■){■}){■}a)a)((\n|.)){■})b)b)■fail dotstar or empty
  1662   |  5     (((((((■){■}){■}a)a)■)b)b)bfail dotstar or empty
  1663   |  5     (((((((■){■}){■}a)a)((\n|.))*)■)■)bfail dotstar or empty
  1664   |  5     (((((((■){■}){■}a)a)((\n|.))*)■)b)■fail dotstar or empty
  1665   |  5     (((((((■){■}){■}a)a)((\n|.))*)b)■)■fail dotstar or empty
  1666   |  5     (((((((■■){■}){■}■)a)((\n|.))*)b)b)b
20.02677822113037
timeout