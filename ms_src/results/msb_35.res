
Given the regular expression:

  (\S)*\s\{((.)*)?\}\S([^\s{])*

That that should match the strings:

  ✓ (0:16)   word {word} word

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■)*\s)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  2      |  1     ((((((\S){■}\s)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  3      |  1     ((((((\S)*■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  4      |  1     ((((((\S)*\s)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  5      |  1     ((((((\S)*\s)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  6      |  1     ((((((\S)*\s)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  7      |  1     ((((((\S)*\s)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  8      |  1     ((((((\S)*\s)\{)((.)*)?)■)\S)([^\s{])*get a solution: ((((((\S)*\s)\{)((.)*)?)o)\S)([^\s{])*
add positive: 0	{0}	o
add negative: 	{o 
get a solution: ((((((\S)*\s)\{)((.)*)?)[w	])\S)([^\s{])*
add positive: 0	{w}
0
add negative: 	{	 
  unsatisfiable SAT formula       
  9      |  1     ((((((\S)*\s)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  10     |  1     ((((((\S)*\s)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  11     |  1     ((((((\S)*\s)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  12     |  2     ((((((■){■}\s)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  13     |  2     ((((((■)*■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  14     |  2     ((((((■)*\s)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  15     |  2     ((((((■)*\s)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  16     |  2     ((((((■)*\s)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  17     |  2     ((((((■)*\s)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  18     |  2     ((((((■)*\s)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  19     |  2     ((((((■)*\s)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  20     |  2     ((((((■)*\s)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  21     |  2     ((((((■)*\s)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  22     |  2     ((((((\S){■}■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  23     |  2     ((((((\S){■}\s)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  24     |  2     ((((((\S){■}\s)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  25     |  2     ((((((\S){■}\s)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  26     |  2     ((((((\S){■}\s)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  27     |  2     ((((((\S){■}\s)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  28     |  2     ((((((\S){■}\s)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  29     |  2     ((((((\S){■}\s)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  30     |  2     ((((((\S){■}\s)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  31     |  2     (((((■\s)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  32     |  2     ((((((\S)*■)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  33     |  2     ((((((\S)*■)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  34     |  2     ((((((\S)*■)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  35     |  2     ((((((\S)*■)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  36     |  2     ((((((\S)*■)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  37     |  2     ((((((\S)*■)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  38     |  2     ((((((\S)*■)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  39     |  2     ((((((\S)*■)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  40     |  2     ((((((\S)*\s)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  41     |  2     ((((((\S)*\s)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  42     |  2     ((((((\S)*\s)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  43     |  2     ((((((\S)*\s)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  44     |  2     ((((((\S)*\s)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  45     |  2     ((((((\S)*\s)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  46     |  2     ((((((\S)*\s)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  47     |  2     ((((((\S)*\s)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  48     |  2     ((((((\S)*\s)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  49     |  2     ((((((\S)*\s)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  50     |  2     ((((((\S)*\s)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  51     |  2     ((((((\S)*\s)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  52     |  2     ((((((\S)*\s)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  53     |  2     ((((((\S)*\s)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  54     |  2     ((((((\S)*\s)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  55     |  2     ((((((\S)*\s)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  56     |  2     ((((((\S)*\s)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  57     |  2     ((((((\S)*\s)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  58     |  2     ((((((\S)*\s)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  59     |  2     ((((((\S)*\s)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  60     |  2     ((((((\S)*\s)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  61     |  2     ((((((\S)*\s)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  62     |  2     ((((((\S)*\s)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  63     |  2     ((((((\S)*\s)\{)■)\})\S)([^\s{])*fail dotstar or empty
  64     |  2     ((((((\S)*\s)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  65     |  2     ((((((\S)*\s)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  66     |  2     ((((((\S)*\s)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  67     |  2     ((((((\S)*\s)\{)((.)*)?)(■■))\S)([^\s{])*fail dot
  68     |  2     ((((((\S)*\s)\{)((.)*)?)(■|■))\S)([^\s{])*fail solve
  69     |  2     ((((((\S)*\s)\{)((.)*)?)(■){■})\S)([^\s{])*fail dot
  70     |  2     ((((((\S)*\s)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  71     |  2     ((((((\S)*\s)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  72     |  2     ((((((\S)*\s)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  73     |  2     ((((((\S)*\s)\{)((.)*)?)\})\S)■fail dotstar or empty
  74     |  3     ((((((■){■}■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  75     |  3     ((((((■){■}\s)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  76     |  3     ((((((■){■}\s)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  77     |  3     ((((((■){■}\s)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  78     |  3     ((((((■){■}\s)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  79     |  3     ((((((■){■}\s)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  80     |  3     ((((((■){■}\s)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  81     |  3     ((((((■){■}\s)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  82     |  3     ((((((■){■}\s)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  83     |  3     ((((((■)*■)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  84     |  3     ((((((■)*■)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  85     |  3     ((((((■)*■)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  86     |  3     ((((((■)*■)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  87     |  3     ((((((■)*■)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  88     |  3     ((((((■)*■)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  89     |  3     ((((((■)*■)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  90     |  3     ((((((■)*■)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  91     |  3     ((((((■)*\s)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  92     |  3     ((((((■)*\s)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  93     |  3     ((((((■)*\s)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  94     |  3     ((((((■)*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  95     |  3     ((((((■)*\s)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  96     |  3     ((((((■)*\s)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  97     |  3     ((((((■)*\s)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  98     |  3     ((((((■)*\s)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  99     |  3     ((((((■)*\s)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  100    |  3     ((((((■)*\s)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  101    |  3     ((((((■)*\s)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  102    |  3     ((((((■)*\s)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  103    |  3     ((((((■)*\s)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  104    |  3     ((((((■)*\s)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  105    |  3     ((((((■)*\s)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  106    |  3     ((((((■)*\s)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  107    |  3     ((((((■)*\s)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  108    |  3     ((((((■)*\s)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  109    |  3     ((((((■)*\s)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  110    |  3     ((((((■)*\s)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  111    |  3     ((((((■)*\s)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  112    |  3     ((((((■)*\s)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  113    |  3     ((((((■)*\s)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  114    |  3     ((((((■)*\s)\{)■)\})\S)([^\s{])*fail dotstar or empty
  115    |  3     ((((((■)*\s)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  116    |  3     ((((((■)*\s)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  117    |  3     ((((((■)*\s)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  118    |  3     ((((((■)*\s)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  119    |  3     ((((((■)*\s)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  120    |  3     ((((((■)*\s)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  121    |  3     ((((((■)*\s)\{)((.)*)?)\})\S)■fail dotstar or empty
  122    |  3     ((((((\S){■}■)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  123    |  3     ((((((\S){■}■)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  124    |  3     ((((((\S){■}■)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  125    |  3     ((((((\S){■}■)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  126    |  3     ((((((\S){■}■)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  127    |  3     ((((((\S){■}■)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  128    |  3     ((((((\S){■}■)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  129    |  3     ((((((\S){■}■)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  130    |  3     (((((■■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  131    |  3     ((((((\S){■}\s)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  132    |  3     ((((((\S){■}\s)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  133    |  3     ((((((\S){■}\s)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  134    |  3     ((((((\S){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  135    |  3     ((((((\S){■}\s)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  136    |  3     ((((((\S){■}\s)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  137    |  3     ((((((\S){■}\s)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  138    |  3     (((((■\s)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  139    |  3     ((((((\S){■}\s)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  140    |  3     ((((((\S){■}\s)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  141    |  3     ((((((\S){■}\s)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  142    |  3     ((((((\S){■}\s)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  143    |  3     ((((((\S){■}\s)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  144    |  3     ((((((\S){■}\s)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  145    |  3     (((((■\s)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  146    |  3     ((((((\S){■}\s)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  147    |  3     ((((((\S){■}\s)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  148    |  3     ((((((\S){■}\s)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  149    |  3     ((((((\S){■}\s)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  150    |  3     ((((((\S){■}\s)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  151    |  3     (((((■\s)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  152    |  3     ((((((\S){■}\s)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  153    |  3     ((((((\S){■}\s)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  154    |  3     ((((((\S){■}\s)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  155    |  3     ((((((\S){■}\s)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  156    |  3     ((((((\S){■}\s)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  157    |  3     (((((■\s)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  158    |  3     ((((((\S){■}\s)\{)■)\})\S)([^\s{])*fail dotstar or empty
  159    |  3     ((((((\S){■}\s)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  160    |  3     ((((((\S){■}\s)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  161    |  3     ((((((\S){■}\s)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  162    |  3     (((((■\s)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  163    |  3     ((((((\S){■}\s)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  164    |  3     ((((((\S){■}\s)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  165    |  3     (((((■\s)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  166    |  3     ((((((\S){■}\s)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  167    |  3     (((((■\s)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  168    |  3     (((((■\s)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  169    |  3     ((((((\S){■}\s)\{)((.)*)?)\})\S)■fail dotstar or empty
  170    |  3     ((((((\S)*■)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  171    |  3     ((((((\S)*■)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  172    |  3     ((((((\S)*■)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  173    |  3     ((((((\S)*■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  174    |  3     ((((((\S)*■)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  175    |  3     ((((((\S)*■)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  176    |  3     ((((((\S)*■)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  177    |  3     ((((((\S)*■)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  178    |  3     ((((((\S)*■)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  179    |  3     ((((((\S)*■)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  180    |  3     ((((((\S)*■)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  181    |  3     ((((((\S)*■)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  182    |  3     ((((((\S)*■)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  183    |  3     ((((((\S)*■)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  184    |  3     ((((((\S)*■)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  185    |  3     ((((((\S)*■)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  186    |  3     ((((((\S)*■)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  187    |  3     ((((((\S)*■)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  188    |  3     ((((((\S)*■)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  189    |  3     ((((((\S)*■)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  190    |  3     ((((((\S)*■)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  191    |  3     ((((((\S)*■)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  192    |  3     ((((((\S)*■)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  193    |  3     ((((((\S)*■)\{)■)\})\S)([^\s{])*fail dotstar or empty
  194    |  3     ((((((\S)*■)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  195    |  3     ((((((\S)*■)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  196    |  3     ((((((\S)*■)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  197    |  3     ((((((\S)*■)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  198    |  3     ((((((\S)*■)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  199    |  3     ((((((\S)*■)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  200    |  3     ((((((\S)*■)\{)((.)*)?)\})\S)■fail dotstar or empty
  201    |  3     ((((((\S)*\s)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  202    |  3     ((((((\S)*\s)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  203    |  3     ((((((\S)*\s)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  204    |  3     ((((((\S)*\s)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  205    |  3     ((((((\S)*\s)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  206    |  3     ((((((\S)*\s)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  207    |  3     ((((((\S)*\s)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  208    |  3     ((((((\S)*\s)■)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  209    |  3     ((((((\S)*\s)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  210    |  3     ((((((\S)*\s)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  211    |  3     ((((((\S)*\s)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  212    |  3     ((((((\S)*\s)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  213    |  3     ((((((\S)*\s)■)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  214    |  3     ((((((\S)*\s)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  215    |  3     ((((((\S)*\s)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  216    |  3     ((((((\S)*\s)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  217    |  3     ((((((\S)*\s)■)■)\})\S)([^\s{])*fail dotstar or empty
  218    |  3     ((((((\S)*\s)■)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  219    |  3     ((((((\S)*\s)■)((.)*)?)■)\S)(■)*fail dotstar or empty
  220    |  3     ((((((\S)*\s)■)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  221    |  3     ((((((\S)*\s)■)((.)*)?)\})■)(■)*fail dotstar or empty
  222    |  3     ((((((\S)*\s)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  223    |  3     ((((((\S)*\s)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  224    |  3     ((((((\S)*\s)■)((.)*)?)\})\S)■fail dotstar or empty
  225    |  3     ((((((\S)*\s)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  226    |  3     ((((((\S)*\s)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  227    |  3     ((((((\S)*\s)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  228    |  3     ((((((\S)*\s)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  229    |  3     ((((((\S)*\s)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  230    |  3     ((((((\S)*\s)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  231    |  3     ((((((\S)*\s)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  232    |  3     ((((((\S)*\s)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  233    |  3     ((((((\S)*\s)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  234    |  3     ((((((\S)*\s)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  235    |  3     ((((((\S)*\s)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  236    |  3     ((((((\S)*\s)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  237    |  3     ((((((\S)*\s)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  238    |  3     ((((((\S)*\s)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  239    |  3     ((((((\S)*\s)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  240    |  3     ((((((\S)*\s)\{)((■)*)?)\})\S)■fail dotstar or empty
  241    |  3     ((((((\S)*\s)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  242    |  3     ((((((\S)*\s)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  243    |  3     ((((((\S)*\s)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  244    |  3     ((((((\S)*\s)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  245    |  3     ((((((\S)*\s)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  246    |  3     ((((((\S)*\s)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  247    |  3     ((((((\S)*\s)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  248    |  3     ((((((\S)*\s)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  249    |  3     ((((((\S)*\s)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  250    |  3     ((((((\S)*\s)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  251    |  3     ((((((\S)*\s)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  252    |  3     ((((((\S)*\s)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  253    |  3     ((((((\S)*\s)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  254    |  3     ((((((\S)*\s)\{)(■)?)\})\S)(■)*fail dotstar or empty
  255    |  3     ((((((\S)*\s)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  256    |  3     ((((((\S)*\s)\{)((.){■})?)\})\S)■fail dotstar or empty
  257    |  3     ((((((\S)*\s)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  258    |  3     ((((((\S)*\s)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  259    |  3     ((((((\S)*\s)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  260    |  3     ((((((\S)*\s)\{)■)■)\S)([^\s{])*fail dotstar or empty
  261    |  3     ((((((\S)*\s)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  262    |  3     ((((((\S)*\s)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  263    |  3     ((((((\S)*\s)\{)■)\})■)([^\s{])*fail dotstar or empty
  264    |  3     ((((((\S)*\s)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  265    |  3     ((((((\S)*\s)\{)■)\})\S)(■)*fail dotstar or empty
  266    |  3     ((((((\S)*\s)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  267    |  3     ((((((\S)*\s)\{)((.)*){■})\})\S)■fail dotstar or empty
  268    |  3     ((((((\S)*\s)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  269    |  3     ((((((\S)*\s)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  270    |  3     ((((((\S)*\s)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  271    |  3     ((((((\S)*\s)\{)((.)*)?)■)\S)■fail dotstar or empty
  272    |  3     ((((((■)*\s)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  273    |  3     ((((((\S){■}\s)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  274    |  3     ((((((\S)*■)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  275    |  3     ((((((\S)*\s)■)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  276    |  3     ((((((\S)*\s)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  277    |  3     ((((((\S)*\s)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  278    |  3     ((((((\S)*\s)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  279    |  3     ((((((\S)*\s)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  280    |  3     ((((((\S)*\s)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  281    |  3     ((((((\S)*\s)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  282    |  3     ((((((\S)*\s)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  283    |  3     ((((((\S)*\s)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dot
  284    |  3     ((((((\S)*\s)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dot
  285    |  3     ((((((\S)*\s)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dot
  286    |  3     ((((((■)*\s)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  287    |  3     ((((((\S){■}\s)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  288    |  3     ((((((\S)*■)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  289    |  3     ((((((\S)*\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  290    |  3     ((((((\S)*\s)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  291    |  3     ((((((\S)*\s)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  292    |  3     ((((((\S)*\s)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  293    |  3     ((((((\S)*\s)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  294    |  3     ((((((\S)*\s)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  295    |  3     ((((((\S)*\s)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  296    |  3     ((((((\S)*\s)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dot
  297    |  3     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail solve
  298    |  3     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dot
  299    |  3     ((((((■)*\s)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  300    |  3     ((((((\S){■}\s)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  301    |  3     ((((((\S)*■)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  302    |  3     ((((((\S)*\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  303    |  3     ((((((\S)*\s)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  304    |  3     ((((((\S)*\s)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  305    |  3     ((((((\S)*\s)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  306    |  3     ((((((\S)*\s)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  307    |  3     ((((((\S)*\s)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  308    |  3     ((((((\S)*\s)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  309    |  3     ((((((\S)*\s)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dot
  310    |  3     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dot
  311    |  3     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dot
  312    |  3     ((((((\S)*\s)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  313    |  3     ((((((\S)*\s)\{)((.)*)?)\})■)■fail dotstar or empty
  314    |  4     ((((((■){■}■)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  315    |  4     ((((((■){■}■)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  316    |  4     ((((((■){■}■)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  317    |  4     ((((((■){■}■)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  318    |  4     ((((((■){■}■)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  319    |  4     ((((((■){■}■)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  320    |  4     ((((((■){■}■)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  321    |  4     ((((((■){■}■)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  322    |  4     ((((((■){■}\s)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  323    |  4     ((((((■){■}\s)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  324    |  4     ((((((■){■}\s)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  325    |  4     ((((((■){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  326    |  4     ((((((■){■}\s)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  327    |  4     ((((((■){■}\s)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  328    |  4     ((((((■){■}\s)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  329    |  4     ((((((■){■}\s)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  330    |  4     ((((((■){■}\s)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  331    |  4     ((((((■){■}\s)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  332    |  4     ((((((■){■}\s)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  333    |  4     ((((((■){■}\s)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  334    |  4     ((((((■){■}\s)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  335    |  4     ((((((■){■}\s)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  336    |  4     ((((((■){■}\s)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  337    |  4     ((((((■){■}\s)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  338    |  4     ((((((■){■}\s)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  339    |  4     ((((((■){■}\s)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  340    |  4     ((((((■){■}\s)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  341    |  4     ((((((■){■}\s)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  342    |  4     ((((((■){■}\s)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  343    |  4     ((((((■){■}\s)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  344    |  4     ((((((■){■}\s)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  345    |  4     ((((((■){■}\s)\{)■)\})\S)([^\s{])*fail dotstar or empty
  346    |  4     ((((((■){■}\s)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  347    |  4     ((((((■){■}\s)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  348    |  4     ((((((■){■}\s)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  349    |  4     ((((((■){■}\s)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  350    |  4     ((((((■){■}\s)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  351    |  4     ((((((■){■}\s)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  352    |  4     ((((((■){■}\s)\{)((.)*)?)\})\S)■fail dotstar or empty
  353    |  4     ((((((■)*■)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  354    |  4     ((((((■)*■)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  355    |  4     ((((((■)*■)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  356    |  4     ((((((■)*■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  357    |  4     ((((((■)*■)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  358    |  4     ((((((■)*■)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  359    |  4     ((((((■)*■)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  360    |  4     ((((((■)*■)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  361    |  4     ((((((■)*■)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  362    |  4     ((((((■)*■)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  363    |  4     ((((((■)*■)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  364    |  4     ((((((■)*■)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  365    |  4     ((((((■)*■)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  366    |  4     ((((((■)*■)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  367    |  4     ((((((■)*■)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  368    |  4     ((((((■)*■)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  369    |  4     ((((((■)*■)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  370    |  4     ((((((■)*■)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  371    |  4     ((((((■)*■)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  372    |  4     ((((((■)*■)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  373    |  4     ((((((■)*■)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  374    |  4     ((((((■)*■)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  375    |  4     ((((((■)*■)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  376    |  4     ((((((■)*■)\{)■)\})\S)([^\s{])*fail dotstar or empty
  377    |  4     ((((((■)*■)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  378    |  4     ((((((■)*■)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  379    |  4     ((((((■)*■)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  380    |  4     ((((((■)*■)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  381    |  4     ((((((■)*■)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  382    |  4     ((((((■)*■)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  383    |  4     ((((((■)*■)\{)((.)*)?)\})\S)■fail dotstar or empty
  384    |  4     ((((((■)*\s)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  385    |  4     ((((((■)*\s)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  386    |  4     ((((((■)*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  387    |  4     ((((((■)*\s)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  388    |  4     ((((((■)*\s)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  389    |  4     ((((((■)*\s)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  390    |  4     ((((((■)*\s)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  391    |  4     ((((((■)*\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  392    |  4     ((((((■)*\s)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  393    |  4     ((((((■)*\s)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  394    |  4     ((((((■)*\s)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  395    |  4     ((((((■)*\s)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  396    |  4     ((((((■)*\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  397    |  4     ((((((■)*\s)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  398    |  4     ((((((■)*\s)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  399    |  4     ((((((■)*\s)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  400    |  4     ((((((■)*\s)■)■)\})\S)([^\s{])*fail dotstar or empty
  401    |  4     ((((((■)*\s)■)((.)*)?)■)■)([^\s{])*fail dot
  402    |  4     ((((((■)*\s)■)((.)*)?)■)\S)(■)*fail dot
  403    |  4     ((((((■)*\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  404    |  4     ((((((■■)*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  405    |  4     (((((((■|■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  406    |  4     (((((((■){■})*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  407    |  4     ((((((■)*\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  408    |  4     ((((((■)*\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  409    |  4     ((((((■)*\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  410    |  4     ((((((■)*\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  411    |  4     ((((((■)*\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  412    |  4     ((((((■)*\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  413    |  4     ((((((■)*\s)■)((.)*)?)\})■)(■)*fail dotstar or empty
  414    |  4     ((((((■)*\s)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  415    |  4     ((((((■)*\s)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  416    |  4     ((((((■)*\s)■)((.)*)?)\})\S)■fail dotstar or empty
  417    |  4     ((((((■)*\s)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  418    |  4     ((((((■)*\s)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  419    |  4     ((((((■)*\s)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  420    |  4     ((((((■)*\s)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  421    |  4     ((((((■)*\s)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  422    |  4     ((((((■)*\s)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  423    |  4     ((((((■)*\s)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  424    |  4     ((((((■)*\s)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  425    |  4     ((((((■)*\s)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  426    |  4     ((((((■)*\s)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  427    |  4     ((((((■)*\s)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  428    |  4     ((((((■)*\s)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  429    |  4     ((((((■)*\s)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  430    |  4     ((((((■)*\s)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  431    |  4     ((((((■)*\s)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  432    |  4     ((((((■)*\s)\{)((■)*)?)\})\S)■fail dotstar or empty
  433    |  4     ((((((■)*\s)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  434    |  4     ((((((■)*\s)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  435    |  4     ((((((■)*\s)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  436    |  4     ((((((■)*\s)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  437    |  4     ((((((■)*\s)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  438    |  4     ((((((■)*\s)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  439    |  4     ((((((■)*\s)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  440    |  4     ((((((■)*\s)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  441    |  4     ((((((■)*\s)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  442    |  4     ((((((■)*\s)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  443    |  4     ((((((■)*\s)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  444    |  4     ((((((■)*\s)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  445    |  4     ((((((■)*\s)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  446    |  4     ((((((■)*\s)\{)(■)?)\})\S)(■)*fail dotstar or empty
  447    |  4     ((((((■)*\s)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  448    |  4     ((((((■)*\s)\{)((.){■})?)\})\S)■fail dotstar or empty
  449    |  4     ((((((■)*\s)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  450    |  4     ((((((■)*\s)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  451    |  4     ((((((■)*\s)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  452    |  4     ((((((■)*\s)\{)■)■)\S)([^\s{])*fail dotstar or empty
  453    |  4     ((((((■)*\s)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  454    |  4     ((((((■)*\s)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  455    |  4     ((((((■)*\s)\{)■)\})■)([^\s{])*fail dotstar or empty
  456    |  4     ((((((■)*\s)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  457    |  4     ((((((■)*\s)\{)■)\})\S)(■)*fail dotstar or empty
  458    |  4     ((((((■)*\s)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  459    |  4     ((((((■)*\s)\{)((.)*){■})\})\S)■fail dotstar or empty
  460    |  4     ((((((■)*\s)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  461    |  4     ((((((■)*\s)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  462    |  4     ((((((■)*\s)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  463    |  4     ((((((■)*\s)\{)((.)*)?)■)\S)■fail dotstar or empty
  464    |  4     ((((((■)*\s)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  465    |  4     ((((((■)*\s)\{)((.)*)?)\})■)■fail dotstar or empty
  466    |  4     ((((((\S){■}■)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  467    |  4     ((((((\S){■}■)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  468    |  4     ((((((\S){■}■)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  469    |  4     ((((((\S){■}■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  470    |  4     ((((((\S){■}■)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  471    |  4     ((((((\S){■}■)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  472    |  4     ((((((\S){■}■)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  473    |  4     (((((■■)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  474    |  4     ((((((\S){■}■)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  475    |  4     ((((((\S){■}■)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  476    |  4     ((((((\S){■}■)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  477    |  4     ((((((\S){■}■)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  478    |  4     ((((((\S){■}■)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  479    |  4     ((((((\S){■}■)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  480    |  4     (((((■■)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  481    |  4     ((((((\S){■}■)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  482    |  4     ((((((\S){■}■)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  483    |  4     ((((((\S){■}■)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  484    |  4     ((((((\S){■}■)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  485    |  4     ((((((\S){■}■)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  486    |  4     (((((■■)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  487    |  4     ((((((\S){■}■)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  488    |  4     ((((((\S){■}■)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  489    |  4     ((((((\S){■}■)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  490    |  4     ((((((\S){■}■)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  491    |  4     ((((((\S){■}■)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  492    |  4     (((((■■)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  493    |  4     ((((((\S){■}■)\{)■)\})\S)([^\s{])*fail dotstar or empty
  494    |  4     ((((((\S){■}■)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  495    |  4     ((((((\S){■}■)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  496    |  4     ((((((\S){■}■)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  497    |  4     (((((■■)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  498    |  4     ((((((\S){■}■)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  499    |  4     ((((((\S){■}■)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  500    |  4     (((((■■)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  501    |  4     ((((((\S){■}■)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  502    |  4     (((((■■)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  503    |  4     (((((■■)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  504    |  4     ((((((\S){■}■)\{)((.)*)?)\})\S)■fail dotstar or empty
  505    |  4     (((((■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  506    |  4     ((((((\S){■}\s)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  507    |  4     ((((((\S){■}\s)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  508    |  4     ((((((\S){■}\s)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  509    |  4     ((((((\S){■}\s)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  510    |  4     ((((((\S){■}\s)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  511    |  4     ((((((\S){■}\s)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  512    |  4     (((((■\s)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  513    |  4     ((((((\S){■}\s)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  514    |  4     ((((((\S){■}\s)■)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  515    |  4     ((((((\S){■}\s)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  516    |  4     ((((((\S){■}\s)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  517    |  4     ((((((\S){■}\s)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  518    |  4     (((((■\s)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  519    |  4     ((((((\S){■}\s)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  520    |  4     ((((((\S){■}\s)■)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  521    |  4     ((((((\S){■}\s)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  522    |  4     ((((((\S){■}\s)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  523    |  4     ((((((\S){■}\s)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  524    |  4     (((((■\s)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  525    |  4     ((((((\S){■}\s)■)■)\})\S)([^\s{])*fail dotstar or empty
  526    |  4     ((((((\S){■}\s)■)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  527    |  4     ((((((\S){■}\s)■)((.)*)?)■)\S)(■)*fail dotstar or empty
  528    |  4     ((((((\S){■}\s)■)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  529    |  4     (((((■\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  530    |  4     ((((((\S){■}\s)■)((.)*)?)\})■)(■)*fail dotstar or empty
  531    |  4     ((((((\S){■}\s)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  532    |  4     (((((■\s)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  533    |  4     ((((((\S){■}\s)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  534    |  4     (((((■\s)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  535    |  4     (((((■\s)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  536    |  4     ((((((\S){■}\s)■)((.)*)?)\})\S)■fail dotstar or empty
  537    |  4     ((((((\S){■}\s)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  538    |  4     ((((((\S){■}\s)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  539    |  4     ((((((\S){■}\s)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  540    |  4     ((((((\S){■}\s)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  541    |  4     ((((((\S){■}\s)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  542    |  4     (((((■\s)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  543    |  4     ((((((\S){■}\s)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  544    |  4     ((((((\S){■}\s)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  545    |  4     ((((((\S){■}\s)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  546    |  4     ((((((\S){■}\s)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  547    |  4     (((((■\s)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  548    |  4     ((((((\S){■}\s)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  549    |  4     ((((((\S){■}\s)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  550    |  4     ((((((\S){■}\s)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  551    |  4     (((((■\s)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  552    |  4     ((((((\S){■}\s)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  553    |  4     ((((((\S){■}\s)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  554    |  4     (((((■\s)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  555    |  4     ((((((\S){■}\s)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  556    |  4     (((((■\s)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  557    |  4     (((((■\s)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  558    |  4     ((((((\S){■}\s)\{)((■)*)?)\})\S)■fail dotstar or empty
  559    |  4     ((((((\S){■}\s)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  560    |  4     ((((((\S){■}\s)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  561    |  4     ((((((\S){■}\s)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  562    |  4     ((((((\S){■}\s)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  563    |  4     (((((■\s)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  564    |  4     ((((((\S){■}\s)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  565    |  4     ((((((\S){■}\s)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  566    |  4     ((((((\S){■}\s)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  567    |  4     ((((((\S){■}\s)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  568    |  4     (((((■\s)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  569    |  4     ((((((\S){■}\s)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  570    |  4     ((((((\S){■}\s)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  571    |  4     ((((((\S){■}\s)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  572    |  4     (((((■\s)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  573    |  4     ((((((\S){■}\s)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  574    |  4     ((((((\S){■}\s)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  575    |  4     (((((■\s)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  576    |  4     ((((((\S){■}\s)\{)(■)?)\})\S)(■)*fail dotstar or empty
  577    |  4     (((((■\s)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  578    |  4     ((((((\S){■}\s)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  579    |  4     ((((((\S){■}\s)\{)((.){■})?)\})\S)■fail dotstar or empty
  580    |  4     (((((■\s)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  581    |  4     ((((((\S){■}\s)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  582    |  4     ((((((\S){■}\s)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  583    |  4     ((((((\S){■}\s)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  584    |  4     (((((■\s)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  585    |  4     ((((((\S){■}\s)\{)■)■)\S)([^\s{])*fail dotstar or empty
  586    |  4     ((((((\S){■}\s)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  587    |  4     ((((((\S){■}\s)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  588    |  4     (((((■\s)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  589    |  4     ((((((\S){■}\s)\{)■)\})■)([^\s{])*fail dotstar or empty
  590    |  4     ((((((\S){■}\s)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  591    |  4     (((((■\s)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  592    |  4     ((((((\S){■}\s)\{)■)\})\S)(■)*fail dotstar or empty
  593    |  4     (((((■\s)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  594    |  4     ((((((\S){■}\s)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  595    |  4     ((((((\S){■}\s)\{)((.)*){■})\})\S)■fail dotstar or empty
  596    |  4     (((((■\s)\{)■)\})\S)([^\s{])*fail dotstar or empty
  597    |  4     ((((((\S){■}\s)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  598    |  4     ((((((\S){■}\s)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  599    |  4     (((((■\s)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  600    |  4     ((((((\S){■}\s)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  601    |  4     (((((■\s)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  602    |  4     (((((■\s)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  603    |  4     ((((((\S){■}\s)\{)((.)*)?)■)\S)■fail dotstar or empty
  604    |  4     ((((((\S){■}\s)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  605    |  4     (((((■\s)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  606    |  4     (((((■\s)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  607    |  4     ((((((\S){■}\s)\{)((.)*)?)\})■)■fail dotstar or empty
  608    |  4     (((((■\s)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  609    |  4     (((((■\s)\{)((.)*)?)\})\S)■fail dotstar or empty
  610    |  4     ((((((\S)*■)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  611    |  4     ((((((\S)*■)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  612    |  4     ((((((\S)*■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  613    |  4     ((((((\S)*■)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  614    |  4     ((((((\S)*■)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  615    |  4     ((((((\S)*■)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  616    |  4     ((((((\S)*■)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  617    |  4     ((((((\S)*■)■)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  618    |  4     ((((((\S)*■)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  619    |  4     ((((((\S)*■)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  620    |  4     ((((((\S)*■)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  621    |  4     ((((((\S)*■)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  622    |  4     ((((((\S)*■)■)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  623    |  4     ((((((\S)*■)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  624    |  4     ((((((\S)*■)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  625    |  4     ((((((\S)*■)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  626    |  4     ((((((\S)*■)■)■)\})\S)([^\s{])*fail dotstar or empty
  627    |  4     ((((((\S)*■)■)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  628    |  4     ((((((\S)*■)■)((.)*)?)■)\S)(■)*fail dotstar or empty
  629    |  4     ((((((\S)*■)■)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  630    |  4     ((((((\S)*■)■)((.)*)?)\})■)(■)*fail dotstar or empty
  631    |  4     ((((((\S)*■)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  632    |  4     ((((((\S)*■)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  633    |  4     ((((((\S)*■)■)((.)*)?)\})\S)■fail dotstar or empty
  634    |  4     ((((((\S)*■)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  635    |  4     ((((((\S)*■)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  636    |  4     ((((((\S)*■)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  637    |  4     ((((((\S)*■)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  638    |  4     ((((((\S)*■)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  639    |  4     ((((((\S)*■)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  640    |  4     ((((((\S)*■)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  641    |  4     ((((((\S)*■)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  642    |  4     ((((((\S)*■)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  643    |  4     ((((((\S)*■)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  644    |  4     ((((((\S)*■)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  645    |  4     ((((((\S)*■)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  646    |  4     ((((((\S)*■)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  647    |  4     ((((((\S)*■)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  648    |  4     ((((((\S)*■)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  649    |  4     ((((((\S)*■)\{)((■)*)?)\})\S)■fail dotstar or empty
  650    |  4     ((((((\S)*■)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  651    |  4     ((((((\S)*■)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  652    |  4     ((((((\S)*■)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  653    |  4     ((((((\S)*■)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  654    |  4     ((((((\S)*■)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  655    |  4     ((((((\S)*■)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  656    |  4     ((((((\S)*■)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  657    |  4     ((((((\S)*■)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  658    |  4     ((((((\S)*■)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  659    |  4     ((((((\S)*■)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  660    |  4     ((((((\S)*■)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  661    |  4     ((((((\S)*■)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  662    |  4     ((((((\S)*■)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  663    |  4     ((((((\S)*■)\{)(■)?)\})\S)(■)*fail dotstar or empty
  664    |  4     ((((((\S)*■)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  665    |  4     ((((((\S)*■)\{)((.){■})?)\})\S)■fail dotstar or empty
  666    |  4     ((((((\S)*■)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  667    |  4     ((((((\S)*■)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  668    |  4     ((((((\S)*■)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  669    |  4     ((((((\S)*■)\{)■)■)\S)([^\s{])*fail dotstar or empty
  670    |  4     ((((((\S)*■)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  671    |  4     ((((((\S)*■)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  672    |  4     ((((((\S)*■)\{)■)\})■)([^\s{])*fail dotstar or empty
  673    |  4     ((((((\S)*■)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  674    |  4     ((((((\S)*■)\{)■)\})\S)(■)*fail dotstar or empty
  675    |  4     ((((((\S)*■)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  676    |  4     ((((((\S)*■)\{)((.)*){■})\})\S)■fail dotstar or empty
  677    |  4     ((((((\S)*■)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  678    |  4     ((((((\S)*■)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  679    |  4     ((((((\S)*■)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  680    |  4     ((((((\S)*■)\{)((.)*)?)■)\S)■fail dotstar or empty
  681    |  4     ((((((\S)*■)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  682    |  4     ((((((\S)*■)\{)((.)*)?)\})■)■fail dotstar or empty
  683    |  4     ((((((\S)*\s)■)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  684    |  4     ((((((\S)*\s)■)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  685    |  4     ((((((\S)*\s)■)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  686    |  4     ((((((\S)*\s)■)((■){■})?)\})\S)(■)*fail dotstar or empty
  687    |  4     ((((((\S)*\s)■)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  688    |  4     ((((((\S)*\s)■)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  689    |  4     ((((((\S)*\s)■)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  690    |  4     ((((((\S)*\s)■)((■)*){■})\})\S)(■)*fail dotstar or empty
  691    |  4     ((((((\S)*\s)■)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  692    |  4     ((((((\S)*\s)■)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  693    |  4     ((((((\S)*\s)■)((■)*)?)■)\S)(■)*fail dotstar or empty
  694    |  4     ((((((\S)*\s)■)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  695    |  4     ((((((\S)*\s)■)((■)*)?)\})■)(■)*fail dotstar or empty
  696    |  4     ((((((\S)*\s)■)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  697    |  4     ((((((\S)*\s)■)((■)*)?)\})\S)(■){■}fail dotstar or empty
  698    |  4     ((((((\S)*\s)■)((■)*)?)\})\S)■fail dotstar or empty
  699    |  4     ((((((\S)*\s)■)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  700    |  4     ((((((\S)*\s)■)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  701    |  4     ((((((\S)*\s)■)((.){■}){■})\})\S)(■)*fail dotstar or empty
  702    |  4     ((((((\S)*\s)■)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  703    |  4     ((((((\S)*\s)■)(■){■})\})\S)([^\s{])*fail dotstar or empty
  704    |  4     ((((((\S)*\s)■)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  705    |  4     ((((((\S)*\s)■)((.){■})?)■)\S)(■)*fail dotstar or empty
  706    |  4     ((((((\S)*\s)■)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  707    |  4     ((((((\S)*\s)■)(■)?)■)\S)([^\s{])*fail dotstar or empty
  708    |  4     ((((((\S)*\s)■)((.){■})?)\})■)(■)*fail dotstar or empty
  709    |  4     ((((((\S)*\s)■)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  710    |  4     ((((((\S)*\s)■)(■)?)\})■)([^\s{])*fail dotstar or empty
  711    |  4     ((((((\S)*\s)■)((.){■})?)\})\S)(■){■}fail dotstar or empty
  712    |  4     ((((((\S)*\s)■)(■)?)\})\S)(■)*fail dotstar or empty
  713    |  4     ((((((\S)*\s)■)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  714    |  4     ((((((\S)*\s)■)((.){■})?)\})\S)■fail dotstar or empty
  715    |  4     ((((((\S)*\s)■)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  716    |  4     ((((((\S)*\s)■)((.)*){■})■)\S)(■)*fail dotstar or empty
  717    |  4     ((((((\S)*\s)■)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  718    |  4     ((((((\S)*\s)■)■)■)\S)([^\s{])*fail dotstar or empty
  719    |  4     ((((((\S)*\s)■)((.)*){■})\})■)(■)*fail dotstar or empty
  720    |  4     ((((((\S)*\s)■)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  721    |  4     ((((((\S)*\s)■)■)\})■)([^\s{])*fail dotstar or empty
  722    |  4     ((((((\S)*\s)■)((.)*){■})\})\S)(■){■}fail dotstar or empty
  723    |  4     ((((((\S)*\s)■)■)\})\S)(■)*fail dotstar or empty
  724    |  4     ((((((\S)*\s)■)■)\})\S)([^\s{]){■}fail dotstar or empty
  725    |  4     ((((((\S)*\s)■)((.)*){■})\})\S)■fail dotstar or empty
  726    |  4     ((((((\S)*\s)■)((.)*)?)■)■)(■)*fail dotstar or empty
  727    |  4     ((((((\S)*\s)■)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  728    |  4     ((((((\S)*\s)■)((.)*)?)■)\S)(■){■}fail dotstar or empty
  729    |  4     ((((((\S)*\s)■)((.)*)?)■)\S)■fail dotstar or empty
  730    |  4     ((((((\S)*\s)■)((.)*)?)\})■)(■){■}fail dotstar or empty
  731    |  4     ((((((\S)*\s)■)((.)*)?)\})■)■fail dotstar or empty
  732    |  4     ((((((\S)*\s)\{)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  733    |  4     ((((((\S)*\s)\{)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  734    |  4     ((((((\S)*\s)\{)((■){■}){■})\})\S)(■)*fail dotstar or empty
  735    |  4     ((((((\S)*\s)\{)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  736    |  4     ((((((\S)*\s)\{)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  737    |  4     ((((((\S)*\s)\{)((■){■})?)■)\S)(■)*fail dotstar or empty
  738    |  4     ((((((\S)*\s)\{)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  739    |  4     ((((((\S)*\s)\{)((■){■})?)\})■)(■)*fail dotstar or empty
  740    |  4     ((((((\S)*\s)\{)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  741    |  4     ((((((\S)*\s)\{)((■){■})?)\})\S)(■){■}fail dotstar or empty
  742    |  4     ((((((\S)*\s)\{)((■){■})?)\})\S)■fail dotstar or empty
  743    |  4     ((((((\S)*\s)\{)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  744    |  4     ((((((\S)*\s)\{)((■)*){■})■)\S)(■)*fail dotstar or empty
  745    |  4     ((((((\S)*\s)\{)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  746    |  4     ((((((\S)*\s)\{)((■)*){■})\})■)(■)*fail dotstar or empty
  747    |  4     ((((((\S)*\s)\{)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  748    |  4     ((((((\S)*\s)\{)((■)*){■})\})\S)(■){■}fail dotstar or empty
  749    |  4     ((((((\S)*\s)\{)((■)*){■})\})\S)■fail dotstar or empty
  750    |  4     ((((((\S)*\s)\{)((■)*)?)■)■)(■)*fail dotstar or empty
  751    |  4     ((((((\S)*\s)\{)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  752    |  4     ((((((\S)*\s)\{)((■)*)?)■)\S)(■){■}fail dotstar or empty
  753    |  4     ((((((\S)*\s)\{)((■)*)?)■)\S)■fail dotstar or empty
  754    |  4     ((((((\S)*\s)\{)((■)*)?)\})■)(■){■}fail dotstar or empty
  755    |  4     ((((((\S)*\s)\{)((■)*)?)\})■)■fail dotstar or empty
  756    |  4     ((((((\S)*\s)\{)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  757    |  4     ((((((\S)*\s)\{)((.){■}){■})■)\S)(■)*fail dotstar or empty
  758    |  4     ((((((\S)*\s)\{)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  759    |  4     ((((((\S)*\s)\{)(■){■})■)\S)([^\s{])*fail dotstar or empty
  760    |  4     ((((((\S)*\s)\{)((.){■}){■})\})■)(■)*fail dotstar or empty
  761    |  4     ((((((\S)*\s)\{)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  762    |  4     ((((((\S)*\s)\{)(■){■})\})■)([^\s{])*fail dotstar or empty
  763    |  4     ((((((\S)*\s)\{)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  764    |  4     ((((((\S)*\s)\{)(■){■})\})\S)(■)*fail dotstar or empty
  765    |  4     ((((((\S)*\s)\{)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  766    |  4     ((((((\S)*\s)\{)((.){■}){■})\})\S)■fail dotstar or empty
  767    |  4     ((((((\S)*\s)\{)((.){■})?)■)■)(■)*fail dotstar or empty
  768    |  4     ((((((\S)*\s)\{)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  769    |  4     ((((((\S)*\s)\{)(■)?)■)■)([^\s{])*fail dotstar or empty
  770    |  4     ((((((\S)*\s)\{)((.){■})?)■)\S)(■){■}fail dotstar or empty
  771    |  4     ((((((\S)*\s)\{)(■)?)■)\S)(■)*fail dotstar or empty
  772    |  4     ((((((\S)*\s)\{)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  773    |  4     ((((((\S)*\s)\{)((.){■})?)■)\S)■fail dotstar or empty
  774    |  4     ((((((\S)*\s)\{)((.){■})?)\})■)(■){■}fail dotstar or empty
  775    |  4     ((((((\S)*\s)\{)(■)?)\})■)(■)*fail dotstar or empty
  776    |  4     ((((((\S)*\s)\{)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  777    |  4     ((((((\S)*\s)\{)((.){■})?)\})■)■fail dotstar or empty
  778    |  4     ((((((\S)*\s)\{)(■)?)\})\S)(■){■}fail dotstar or empty
  779    |  4     ((((((\S)*\s)\{)(■)?)\})\S)■fail dotstar or empty
  780    |  4     ((((((\S)*\s)\{)((.)*){■})■)■)(■)*fail dotstar or empty
  781    |  4     ((((((\S)*\s)\{)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  782    |  4     ((((((\S)*\s)\{)■)■)■)([^\s{])*fail dotstar or empty
  783    |  4     ((((((\S)*\s)\{)((.)*){■})■)\S)(■){■}fail dotstar or empty
  784    |  4     ((((((\S)*\s)\{)■)■)\S)(■)*fail dotstar or empty
  785    |  4     ((((((\S)*\s)\{)■)■)\S)([^\s{]){■}fail dotstar or empty
  786    |  4     ((((((\S)*\s)\{)((.)*){■})■)\S)■fail dotstar or empty
  787    |  4     ((((((\S)*\s)\{)((.)*){■})\})■)(■){■}fail dotstar or empty
  788    |  4     ((((((\S)*\s)\{)■)\})■)(■)*fail dotstar or empty
  789    |  4     ((((((\S)*\s)\{)■)\})■)([^\s{]){■}fail dotstar or empty
  790    |  4     ((((((\S)*\s)\{)((.)*){■})\})■)■fail dotstar or empty
  791    |  4     ((((((\S)*\s)\{)■)\})\S)(■){■}fail dotstar or empty
  792    |  4     ((((((\S)*\s)\{)■)\})\S)■fail dotstar or empty
  793    |  4     ((((((\S)*\s)\{)((.)*)?)■)■)(■){■}fail dotstar or empty
  794    |  4     ((((((\S)*\s)\{)((.)*)?)■)■)■fail dotstar or empty
  795    |  4     ((((((■){■}\s)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  796    |  4     ((((((■)*■)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  797    |  4     ((((((■)*\s)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  798    |  4     ((((((■)*\s)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  799    |  4     ((((((■)*\s)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  800    |  4     ((((((■)*\s)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  801    |  4     ((((((■)*\s)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  802    |  4     ((((((■)*\s)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  803    |  4     ((((((■)*\s)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  804    |  4     ((((((\S){■}■)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  805    |  4     ((((((\S){■}\s)■)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  806    |  4     ((((((\S){■}\s)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  807    |  4     ((((((\S){■}\s)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  808    |  4     ((((((\S){■}\s)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  809    |  4     ((((((\S){■}\s)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  810    |  4     ((((((\S){■}\s)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  811    |  4     ((((((\S){■}\s)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  812    |  4     (((((■\s)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  813    |  4     ((((((\S){■}\s)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  814    |  4     ((((((\S)*■)■)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  815    |  4     ((((((\S)*■)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  816    |  4     ((((((\S)*■)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  817    |  4     ((((((\S)*■)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  818    |  4     ((((((\S)*■)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  819    |  4     ((((((\S)*■)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  820    |  4     ((((((\S)*■)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  821    |  4     ((((((\S)*■)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  822    |  4     ((((((\S)*\s)■)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  823    |  4     ((((((\S)*\s)■)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  824    |  4     ((((((\S)*\s)■)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  825    |  4     ((((((\S)*\s)■)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  826    |  4     ((((((\S)*\s)■)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  827    |  4     ((((((\S)*\s)■)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  828    |  4     ((((((\S)*\s)■)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  829    |  4     ((((((\S)*\s)\{)((■){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  830    |  4     ((((((\S)*\s)\{)((■)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  831    |  4     ((((((\S)*\s)\{)((■)*)?)(■■))■)([^\s{])*fail dotstar or empty
  832    |  4     ((((((\S)*\s)\{)((■)*)?)(■■))\S)(■)*fail dotstar or empty
  833    |  4     ((((((\S)*\s)\{)((■)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  834    |  4     ((((((\S)*\s)\{)((■)*)?)(■))\S)([^\s{])*fail dotstar or empty
  835    |  4     ((((((\S)*\s)\{)((.){■}){■})(■■))\S)([^\s{])*fail dotstar or empty
  836    |  4     ((((((\S)*\s)\{)((.){■})?)(■■))■)([^\s{])*fail dotstar or empty
  837    |  4     ((((((\S)*\s)\{)((.){■})?)(■■))\S)(■)*fail dotstar or empty
  838    |  4     ((((((\S)*\s)\{)((.){■})?)(■■))\S)([^\s{]){■}fail dotstar or empty
  839    |  4     ((((((\S)*\s)\{)(■)?)(■■))\S)([^\s{])*fail dotstar or empty
  840    |  4     ((((((\S)*\s)\{)((.){■})?)(■))\S)([^\s{])*fail dotstar or empty
  841    |  4     ((((((\S)*\s)\{)((.)*){■})(■■))■)([^\s{])*fail dotstar or empty
  842    |  4     ((((((\S)*\s)\{)((.)*){■})(■■))\S)(■)*fail dotstar or empty
  843    |  4     ((((((\S)*\s)\{)((.)*){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  844    |  4     ((((((\S)*\s)\{)■)(■■))\S)([^\s{])*fail dotstar or empty
  845    |  4     ((((((\S)*\s)\{)((.)*){■})(■))\S)([^\s{])*fail dotstar or empty
  846    |  4     ((((((\S)*\s)\{)((.)*)?)(■■))■)(■)*fail dotstar or empty
  847    |  4     ((((((\S)*\s)\{)((.)*)?)(■■))■)([^\s{]){■}fail dotstar or empty
  848    |  4     ((((((\S)*\s)\{)((.)*)?)(■))■)([^\s{])*fail dotstar or empty
  849    |  4     ((((((\S)*\s)\{)((.)*)?)(■■))\S)(■){■}fail dotstar or empty
  850    |  4     ((((((\S)*\s)\{)((.)*)?)(■))\S)(■)*fail dotstar or empty
  851    |  4     ((((((\S)*\s)\{)((.)*)?)(■))\S)([^\s{]){■}fail dotstar or empty
  852    |  4     ((((((\S)*\s)\{)((.)*)?)(■■))\S)■fail dotstar or empty
  853    |  4     ((((((■)*\s)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  854    |  4     ((((((\S){■}\s)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  855    |  4     ((((((\S)*■)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  856    |  4     ((((((\S)*\s)■)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  857    |  4     ((((((\S)*\s)\{)((■)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  858    |  4     ((((((\S)*\s)\{)((.){■})?)((■■)■))\S)([^\s{])*fail dotstar or empty
  859    |  4     ((((((\S)*\s)\{)((.)*){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  860    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)■))■)([^\s{])*fail dotstar or empty
  861    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)■))\S)(■)*fail dotstar or empty
  862    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  863    |  4     ((((((\S)*\s)\{)((.)*)?)((■)■))\S)([^\s{])*fail dotstar or empty
  864    |  4     ((((((\S)*\s)\{)((.)*)?)(((■■)■)■))\S)([^\s{])*fail dot
  865    |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)■))\S)([^\s{])*fail dot
  866    |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)■))\S)([^\s{])*fail dot
  867    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)(■■)))\S)([^\s{])*fail dot
  868    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)(■|■)))\S)([^\s{])*fail dot
  869    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)(■){■}))\S)([^\s{])*fail dot
  870    |  4     ((((((■)*\s)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  871    |  4     ((((((\S){■}\s)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  872    |  4     ((((((\S)*■)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  873    |  4     ((((((\S)*\s)■)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  874    |  4     ((((((\S)*\s)\{)((■)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  875    |  4     ((((((\S)*\s)\{)((.){■})?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  876    |  4     ((((((\S)*\s)\{)((.)*){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  877    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)■))■)([^\s{])*fail dotstar or empty
  878    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)■))\S)(■)*fail dotstar or empty
  879    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  880    |  4     ((((((\S)*\s)\{)((.)*)?)((■■|■)■))\S)([^\s{])*fail dot
  881    |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)■))\S)([^\s{])*fail dot
  882    |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)■))\S)([^\s{])*fail dot
  883    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)(■■)))\S)([^\s{])*fail dot
  884    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)(■|■)))\S)([^\s{])*fail dot
  885    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)(■){■}))\S)([^\s{])*fail dot
  886    |  4     ((((((■)*\s)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  887    |  4     ((((((\S){■}\s)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  888    |  4     ((((((\S)*■)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  889    |  4     ((((((\S)*\s)■)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  890    |  4     ((((((\S)*\s)\{)((■)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  891    |  4     ((((((\S)*\s)\{)((.){■})?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  892    |  4     ((((((\S)*\s)\{)((.)*){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  893    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}■))■)([^\s{])*fail dotstar or empty
  894    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}■))\S)(■)*fail dotstar or empty
  895    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  896    |  4     ((((((\S)*\s)\{)((.)*)?)((■■){■}■))\S)([^\s{])*fail dot
  897    |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}■))\S)([^\s{])*fail dot
  898    |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}■))\S)([^\s{])*fail dot
  899    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}(■■)))\S)([^\s{])*fail dot
  900    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}(■|■)))\S)([^\s{])*fail dot
  901    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}(■){■}))\S)([^\s{])*fail dot
  902    |  4     ((((((■){■}\s)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  903    |  4     ((((((■)*■)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  904    |  4     ((((((■)*\s)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  905    |  4     ((((((■)*\s)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  906    |  4     ((((((■)*\s)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  907    |  4     ((((((■)*\s)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  908    |  4     ((((((■)*\s)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  909    |  4     ((((((■)*\s)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  910    |  4     ((((((\S){■}■)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  911    |  4     ((((((\S){■}\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  912    |  4     ((((((\S){■}\s)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  913    |  4     ((((((\S){■}\s)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  914    |  4     ((((((\S){■}\s)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  915    |  4     ((((((\S){■}\s)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  916    |  4     ((((((\S){■}\s)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  917    |  4     ((((((\S){■}\s)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  918    |  4     (((((■\s)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  919    |  4     ((((((\S)*■)■)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  920    |  4     ((((((\S)*■)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  921    |  4     ((((((\S)*■)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  922    |  4     ((((((\S)*■)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  923    |  4     ((((((\S)*■)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  924    |  4     ((((((\S)*■)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  925    |  4     ((((((\S)*■)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  926    |  4     ((((((\S)*\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  927    |  4     ((((((\S)*\s)■)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  928    |  4     ((((((\S)*\s)■)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  929    |  4     ((((((\S)*\s)■)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  930    |  4     ((((((\S)*\s)■)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  931    |  4     ((((((\S)*\s)■)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  932    |  4     ((((((\S)*\s)\{)((■){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  933    |  4     ((((((\S)*\s)\{)((■)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  934    |  4     ((((((\S)*\s)\{)((■)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  935    |  4     ((((((\S)*\s)\{)((■)*)?)(■|■))\S)(■)*fail dotstar or empty
  936    |  4     ((((((\S)*\s)\{)((■)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  937    |  4     ((((((\S)*\s)\{)((.){■}){■})(■|■))\S)([^\s{])*fail dotstar or empty
  938    |  4     ((((((\S)*\s)\{)((.){■})?)(■|■))■)([^\s{])*fail dotstar or empty
  939    |  4     ((((((\S)*\s)\{)((.){■})?)(■|■))\S)(■)*fail dotstar or empty
  940    |  4     ((((((\S)*\s)\{)((.){■})?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  941    |  4     ((((((\S)*\s)\{)(■)?)(■|■))\S)([^\s{])*fail dotstar or empty
  942    |  4     ((((((\S)*\s)\{)((.)*){■})(■|■))■)([^\s{])*fail dotstar or empty
  943    |  4     ((((((\S)*\s)\{)((.)*){■})(■|■))\S)(■)*fail dotstar or empty
  944    |  4     ((((((\S)*\s)\{)((.)*){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  945    |  4     ((((((\S)*\s)\{)■)(■|■))\S)([^\s{])*fail dotstar or empty
  946    |  4     ((((((\S)*\s)\{)((.)*)?)(■|■))■)(■)*fail dotstar or empty
  947    |  4     ((((((\S)*\s)\{)((.)*)?)(■|■))■)([^\s{]){■}fail dotstar or empty
  948    |  4     ((((((\S)*\s)\{)((.)*)?)(■|■))\S)(■){■}fail dotstar or empty
  949    |  4     ((((((\S)*\s)\{)((.)*)?)(■|■))\S)■fail dotstar or empty
  950    |  4     ((((((■)*\s)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  951    |  4     ((((((\S){■}\s)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  952    |  4     ((((((\S)*■)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  953    |  4     ((((((\S)*\s)■)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  954    |  4     ((((((\S)*\s)\{)((■)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  955    |  4     ((((((\S)*\s)\{)((.){■})?)(■■|■))\S)([^\s{])*fail dotstar or empty
  956    |  4     ((((((\S)*\s)\{)((.)*){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  957    |  4     ((((((\S)*\s)\{)((.)*)?)(■■|■))■)([^\s{])*fail dotstar or empty
  958    |  4     ((((((\S)*\s)\{)((.)*)?)(■■|■))\S)(■)*fail dotstar or empty
  959    |  4     ((((((\S)*\s)\{)((.)*)?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  960    |  4     ((((((\S)*\s)\{)((.)*)?)((■■)■|■))\S)([^\s{])*fail dot
  961    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)■|■))\S)([^\s{])*fail dot
  962    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}■|■))\S)([^\s{])*fail dot
  963    |  4     ((((((\S)*\s)\{)((.)*)?)(■■|■■))\S)([^\s{])*fail dot
  964    |  4     ((((((\S)*\s)\{)((.)*)?)(■■|(■|■)))\S)([^\s{])*fail dot
  965    |  4     ((((((\S)*\s)\{)((.)*)?)(■■|(■){■}))\S)([^\s{])*fail dot
  966    |  4     ((((((■)*\s)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  967    |  4     ((((((\S){■}\s)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  968    |  4     ((((((\S)*■)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  969    |  4     ((((((\S)*\s)■)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  970    |  4     ((((((\S)*\s)\{)((■)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  971    |  4     ((((((\S)*\s)\{)((.){■})?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  972    |  4     ((((((\S)*\s)\{)((.)*){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  973    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  974    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))\S)(■)*fail dotstar or empty
  975    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  976    |  4     ((((((\S)*\s)\{)((.)*)?)((■■|■)|■))\S)([^\s{])*fail dot
  977    |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|■))\S)([^\s{])*fail solve
  978    |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|■))\S)([^\s{])*fail dot
  979    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)|■■))\S)([^\s{])*fail dot
  980    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■|■)))\S)([^\s{])*fail solve
  981    |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■){■}))\S)([^\s{])*fail dot
  982    |  4     ((((((■)*\s)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  983    |  4     ((((((\S){■}\s)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  984    |  4     ((((((\S)*■)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  985    |  4     ((((((\S)*\s)■)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  986    |  4     ((((((\S)*\s)\{)((■)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  987    |  4     ((((((\S)*\s)\{)((.){■})?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  988    |  4     ((((((\S)*\s)\{)((.)*){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  989    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  990    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))\S)(■)*fail dotstar or empty
  991    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  992    |  4     ((((((\S)*\s)\{)((.)*)?)((■■){■}|■))\S)([^\s{])*fail dot
  993    |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|■))\S)([^\s{])*fail dot
  994    |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|■))\S)([^\s{])*fail dot
  995    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}|■■))\S)([^\s{])*fail dot
  996    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■|■)))\S)([^\s{])*fail dot
  997    |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■){■}))\S)([^\s{])*fail dot
  998    |  4     ((((((■){■}\s)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  999    |  4     ((((((■)*■)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1000   |  4     ((((((■)*\s)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1001   |  4     ((((((■)*\s)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  1002   |  4     ((((((■)*\s)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  1003   |  4     ((((((■)*\s)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  1004   |  4     ((((((■)*\s)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  1005   |  4     ((((((■)*\s)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  1006   |  4     ((((((\S){■}■)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1007   |  4     ((((((\S){■}\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1008   |  4     ((((((\S){■}\s)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1009   |  4     ((((((\S){■}\s)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  1010   |  4     ((((((\S){■}\s)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  1011   |  4     ((((((\S){■}\s)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  1012   |  4     ((((((\S){■}\s)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  1013   |  4     ((((((\S){■}\s)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  1014   |  4     (((((■\s)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1015   |  4     ((((((\S)*■)■)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1016   |  4     ((((((\S)*■)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1017   |  4     ((((((\S)*■)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  1018   |  4     ((((((\S)*■)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  1019   |  4     ((((((\S)*■)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  1020   |  4     ((((((\S)*■)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  1021   |  4     ((((((\S)*■)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  1022   |  4     ((((((\S)*\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1023   |  4     ((((((\S)*\s)■)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  1024   |  4     ((((((\S)*\s)■)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  1025   |  4     ((((((\S)*\s)■)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  1026   |  4     ((((((\S)*\s)■)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  1027   |  4     ((((((\S)*\s)■)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  1028   |  4     ((((((\S)*\s)\{)((■){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  1029   |  4     ((((((\S)*\s)\{)((■)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  1030   |  4     ((((((\S)*\s)\{)((■)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  1031   |  4     ((((((\S)*\s)\{)((■)*)?)(■){■})\S)(■)*fail dotstar or empty
  1032   |  4     ((((((\S)*\s)\{)((■)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  1033   |  4     ((((((\S)*\s)\{)((.){■}){■})(■){■})\S)([^\s{])*fail dotstar or empty
  1034   |  4     ((((((\S)*\s)\{)((.){■})?)(■){■})■)([^\s{])*fail dotstar or empty
  1035   |  4     ((((((\S)*\s)\{)((.){■})?)(■){■})\S)(■)*fail dotstar or empty
  1036   |  4     ((((((\S)*\s)\{)((.){■})?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  1037   |  4     ((((((\S)*\s)\{)(■)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1038   |  4     ((((((\S)*\s)\{)((.)*){■})(■){■})■)([^\s{])*fail dotstar or empty
  1039   |  4     ((((((\S)*\s)\{)((.)*){■})(■){■})\S)(■)*fail dotstar or empty
  1040   |  4     ((((((\S)*\s)\{)((.)*){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  1041   |  4     ((((((\S)*\s)\{)■)(■){■})\S)([^\s{])*fail dotstar or empty
  1042   |  4     ((((((\S)*\s)\{)((.)*)?)(■){■})■)(■)*fail dotstar or empty
  1043   |  4     ((((((\S)*\s)\{)((.)*)?)(■){■})■)([^\s{]){■}fail dotstar or empty
  1044   |  4     ((((((\S)*\s)\{)((.)*)?)(■){■})\S)(■){■}fail dotstar or empty
  1045   |  4     ((((((\S)*\s)\{)((.)*)?)(■){■})\S)■fail dotstar or empty
  1046   |  4     ((((((■)*\s)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  1047   |  4     ((((((\S){■}\s)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  1048   |  4     ((((((\S)*■)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  1049   |  4     ((((((\S)*\s)■)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  1050   |  4     ((((((\S)*\s)\{)((■)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  1051   |  4     ((((((\S)*\s)\{)((.){■})?)(■■){■})\S)([^\s{])*fail dotstar or empty
  1052   |  4     ((((((\S)*\s)\{)((.)*){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  1053   |  4     ((((((\S)*\s)\{)((.)*)?)(■■){■})■)([^\s{])*fail dotstar or empty
  1054   |  4     ((((((\S)*\s)\{)((.)*)?)(■■){■})\S)(■)*fail dotstar or empty
  1055   |  4     ((((((\S)*\s)\{)((.)*)?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  1056   |  4     ((((((\S)*\s)\{)((.)*)?)((■■)■){■})\S)([^\s{])*fail dot
  1057   |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)■){■})\S)([^\s{])*fail dot
  1058   |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}■){■})\S)([^\s{])*fail dot
  1059   |  4     ((((((■)*\s)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1060   |  4     ((((((\S){■}\s)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1061   |  4     ((((((\S)*■)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1062   |  4     ((((((\S)*\s)■)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1063   |  4     ((((((\S)*\s)\{)((■)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1064   |  4     ((((((\S)*\s)\{)((.){■})?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1065   |  4     ((((((\S)*\s)\{)((.)*){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  1066   |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  1067   |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})\S)(■)*fail dotstar or empty
  1068   |  4     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  1069   |  4     ((((((\S)*\s)\{)((.)*)?)((■■|■)){■})\S)([^\s{])*fail dot
  1070   |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)){■})\S)([^\s{])*fail dot
  1071   |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)){■})\S)([^\s{])*fail dot
  1072   |  4     ((((((■)*\s)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1073   |  4     ((((((\S){■}\s)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1074   |  4     ((((((\S)*■)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1075   |  4     ((((((\S)*\s)■)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1076   |  4     ((((((\S)*\s)\{)((■)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1077   |  4     ((((((\S)*\s)\{)((.){■})?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1078   |  4     ((((((\S)*\s)\{)((.)*){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  1079   |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  1080   |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})\S)(■)*fail dotstar or empty
  1081   |  4     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  1082   |  4     ((((((\S)*\s)\{)((.)*)?)((■■){■}){■})\S)([^\s{])*fail dot
  1083   |  4     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}){■})\S)([^\s{])*fail dot
  1084   |  4     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}){■})\S)([^\s{])*fail dot
  1085   |  5     ((((((■){■}■)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  1086   |  5     ((((((■){■}■)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  1087   |  5     ((((((■){■}■)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  1088   |  5     ((((((■){■}■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1089   |  5     ((((((■){■}■)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  1090   |  5     ((((((■){■}■)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  1091   |  5     ((((((■){■}■)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1092   |  5     ((((((■){■}■)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  1093   |  5     ((((((■){■}■)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  1094   |  5     ((((((■){■}■)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  1095   |  5     ((((((■){■}■)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  1096   |  5     ((((((■){■}■)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  1097   |  5     ((((((■){■}■)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1098   |  5     ((((((■){■}■)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1099   |  5     ((((((■){■}■)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  1100   |  5     ((((((■){■}■)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  1101   |  5     ((((((■){■}■)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  1102   |  5     ((((((■){■}■)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1103   |  5     ((((((■){■}■)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  1104   |  5     ((((((■){■}■)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  1105   |  5     ((((((■){■}■)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  1106   |  5     ((((((■){■}■)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  1107   |  5     ((((((■){■}■)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1108   |  5     ((((((■){■}■)\{)■)\})\S)([^\s{])*fail dotstar or empty
  1109   |  5     ((((((■){■}■)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  1110   |  5     ((((((■){■}■)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  1111   |  5     ((((((■){■}■)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1112   |  5     ((((((■){■}■)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  1113   |  5     ((((((■){■}■)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1114   |  5     ((((((■){■}■)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  1115   |  5     ((((((■){■}■)\{)((.)*)?)\})\S)■fail dotstar or empty
  1116   |  5     ((((((■){■}\s)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  1117   |  5     ((((((■){■}\s)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  1118   |  5     ((((((■){■}\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  1119   |  5     ((((((■){■}\s)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  1120   |  5     ((((((■){■}\s)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  1121   |  5     ((((((■){■}\s)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1122   |  5     ((((((■){■}\s)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1123   |  5     ((((((■){■}\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  1124   |  5     ((((((■){■}\s)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  1125   |  5     ((((((■){■}\s)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  1126   |  5     ((((((■){■}\s)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1127   |  5     ((((((■){■}\s)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  1128   |  5     ((((((■){■}\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  1129   |  5     ((((((■){■}\s)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  1130   |  5     ((((((■){■}\s)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  1131   |  5     ((((((■){■}\s)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1132   |  5     ((((((■){■}\s)■)■)\})\S)([^\s{])*fail dotstar or empty
  1133   |  5     ((((((■){■}\s)■)((.)*)?)■)■)([^\s{])*fail dot
  1134   |  5     ((((((■){■}\s)■)((.)*)?)■)\S)(■)*fail dot
  1135   |  5     ((((((■){■}\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  1136   |  5     ((((((■■){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1137   |  5     (((((((■|■)){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1138   |  5     (((((((■){■}){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1139   |  5     ((((((■){■}\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  1140   |  5     ((((((■){■}\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  1141   |  5     ((((((■){■}\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  1142   |  5     ((((((■){■}\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  1143   |  5     ((((((■){■}\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  1144   |  5     ((((((■){■}\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  1145   |  5     ((((((■){■}\s)■)((.)*)?)\})■)(■)*fail dotstar or empty
  1146   |  5     ((((((■){■}\s)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1147   |  5     ((((((■){■}\s)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  1148   |  5     ((((((■){■}\s)■)((.)*)?)\})\S)■fail dotstar or empty
  1149   |  5     ((((((■){■}\s)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1150   |  5     ((((((■){■}\s)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  1151   |  5     ((((((■){■}\s)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1152   |  5     ((((((■){■}\s)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  1153   |  5     ((((((■){■}\s)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1154   |  5     ((((((■){■}\s)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  1155   |  5     ((((((■){■}\s)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1156   |  5     ((((((■){■}\s)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  1157   |  5     ((((((■){■}\s)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1158   |  5     ((((((■){■}\s)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  1159   |  5     ((((((■){■}\s)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  1160   |  5     ((((((■){■}\s)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1161   |  5     ((((((■){■}\s)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  1162   |  5     ((((((■){■}\s)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1163   |  5     ((((((■){■}\s)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1164   |  5     ((((((■){■}\s)\{)((■)*)?)\})\S)■fail dotstar or empty
  1165   |  5     ((((((■){■}\s)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1166   |  5     ((((((■){■}\s)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1167   |  5     ((((((■){■}\s)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1168   |  5     ((((((■){■}\s)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1169   |  5     ((((((■){■}\s)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1170   |  5     ((((((■){■}\s)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  1171   |  5     ((((((■){■}\s)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  1172   |  5     ((((((■){■}\s)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1173   |  5     ((((((■){■}\s)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  1174   |  5     ((((((■){■}\s)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  1175   |  5     ((((((■){■}\s)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1176   |  5     ((((((■){■}\s)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  1177   |  5     ((((((■){■}\s)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1178   |  5     ((((((■){■}\s)\{)(■)?)\})\S)(■)*fail dotstar or empty
  1179   |  5     ((((((■){■}\s)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1180   |  5     ((((((■){■}\s)\{)((.){■})?)\})\S)■fail dotstar or empty
  1181   |  5     ((((((■){■}\s)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  1182   |  5     ((((((■){■}\s)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  1183   |  5     ((((((■){■}\s)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1184   |  5     ((((((■){■}\s)\{)■)■)\S)([^\s{])*fail dotstar or empty
  1185   |  5     ((((((■){■}\s)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  1186   |  5     ((((((■){■}\s)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1187   |  5     ((((((■){■}\s)\{)■)\})■)([^\s{])*fail dotstar or empty
  1188   |  5     ((((((■){■}\s)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1189   |  5     ((((((■){■}\s)\{)■)\})\S)(■)*fail dotstar or empty
  1190   |  5     ((((((■){■}\s)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  1191   |  5     ((((((■){■}\s)\{)((.)*){■})\})\S)■fail dotstar or empty
  1192   |  5     ((((((■){■}\s)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  1193   |  5     ((((((■){■}\s)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1194   |  5     ((((((■){■}\s)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  1195   |  5     ((((((■){■}\s)\{)((.)*)?)■)\S)■fail dotstar or empty
  1196   |  5     ((((((■){■}\s)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  1197   |  5     ((((((■){■}\s)\{)((.)*)?)\})■)■fail dotstar or empty
  1198   |  5     ((((((■)*■)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  1199   |  5     ((((((■)*■)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  1200   |  5     ((((((■)*■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  1201   |  5     ((((((■)*■)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  1202   |  5     ((((((■)*■)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  1203   |  5     ((((((■)*■)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1204   |  5     ((((((■)*■)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1205   |  5     ((((((■)*■)■)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  1206   |  5     ((((((■)*■)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  1207   |  5     ((((((■)*■)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  1208   |  5     ((((((■)*■)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1209   |  5     ((((((■)*■)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  1210   |  5     ((((((■)*■)■)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  1211   |  5     ((((((■)*■)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  1212   |  5     ((((((■)*■)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  1213   |  5     ((((((■)*■)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1214   |  5     ((((((■)*■)■)■)\})\S)([^\s{])*fail dotstar or empty
  1215   |  5     ((((((■)*■)■)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  1216   |  5     ((((((■)*■)■)((.)*)?)■)\S)(■)*fail dotstar or empty
  1217   |  5     ((((((■)*■)■)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1218   |  5     ((((((■)*■)■)((.)*)?)\})■)(■)*fail dotstar or empty
  1219   |  5     ((((((■)*■)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1220   |  5     ((((((■)*■)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  1221   |  5     ((((((■)*■)■)((.)*)?)\})\S)■fail dotstar or empty
  1222   |  5     ((((((■)*■)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1223   |  5     ((((((■)*■)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  1224   |  5     ((((((■)*■)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1225   |  5     ((((((■)*■)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  1226   |  5     ((((((■)*■)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1227   |  5     ((((((■)*■)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  1228   |  5     ((((((■)*■)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1229   |  5     ((((((■)*■)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  1230   |  5     ((((((■)*■)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1231   |  5     ((((((■)*■)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  1232   |  5     ((((((■)*■)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  1233   |  5     ((((((■)*■)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1234   |  5     ((((((■)*■)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  1235   |  5     ((((((■)*■)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1236   |  5     ((((((■)*■)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1237   |  5     ((((((■)*■)\{)((■)*)?)\})\S)■fail dotstar or empty
  1238   |  5     ((((((■)*■)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1239   |  5     ((((((■)*■)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1240   |  5     ((((((■)*■)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1241   |  5     ((((((■)*■)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1242   |  5     ((((((■)*■)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1243   |  5     ((((((■)*■)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  1244   |  5     ((((((■)*■)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  1245   |  5     ((((((■)*■)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1246   |  5     ((((((■)*■)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  1247   |  5     ((((((■)*■)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  1248   |  5     ((((((■)*■)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1249   |  5     ((((((■)*■)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  1250   |  5     ((((((■)*■)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1251   |  5     ((((((■)*■)\{)(■)?)\})\S)(■)*fail dotstar or empty
  1252   |  5     ((((((■)*■)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1253   |  5     ((((((■)*■)\{)((.){■})?)\})\S)■fail dotstar or empty
  1254   |  5     ((((((■)*■)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  1255   |  5     ((((((■)*■)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  1256   |  5     ((((((■)*■)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1257   |  5     ((((((■)*■)\{)■)■)\S)([^\s{])*fail dotstar or empty
  1258   |  5     ((((((■)*■)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  1259   |  5     ((((((■)*■)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1260   |  5     ((((((■)*■)\{)■)\})■)([^\s{])*fail dotstar or empty
  1261   |  5     ((((((■)*■)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1262   |  5     ((((((■)*■)\{)■)\})\S)(■)*fail dotstar or empty
  1263   |  5     ((((((■)*■)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  1264   |  5     ((((((■)*■)\{)((.)*){■})\})\S)■fail dotstar or empty
  1265   |  5     ((((((■)*■)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  1266   |  5     ((((((■)*■)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1267   |  5     ((((((■)*■)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  1268   |  5     ((((((■)*■)\{)((.)*)?)■)\S)■fail dotstar or empty
  1269   |  5     ((((((■)*■)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  1270   |  5     ((((((■)*■)\{)((.)*)?)\})■)■fail dotstar or empty
  1271   |  5     ((((((■)*\s)■)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1272   |  5     ((((((■)*\s)■)((■){■})?)■)\S)([^\s{])*fail dot
  1273   |  5     ((((((■)*\s)■)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1274   |  5     ((((((■)*\s)■)((■){■})?)\})\S)(■)*fail dotstar or empty
  1275   |  5     ((((((■)*\s)■)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1276   |  5     ((((((■)*\s)■)((■)*){■})■)\S)([^\s{])*fail dot
  1277   |  5     ((((((■)*\s)■)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1278   |  5     ((((((■)*\s)■)((■)*){■})\})\S)(■)*fail dotstar or empty
  1279   |  5     ((((((■)*\s)■)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1280   |  5     ((((((■)*\s)■)((■)*)?)■)■)([^\s{])*fail dot
  1281   |  5     ((((((■)*\s)■)((■)*)?)■)\S)(■)*fail dot
  1282   |  5     ((((((■)*\s)■)((■)*)?)■)\S)([^\s{]){■}fail dot
  1283   |  5     ((((((■■)*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  1284   |  5     (((((((■|■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  1285   |  5     (((((((■){■})*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  1286   |  5     ((((((■)*\s)(■■))((■)*)?)■)\S)([^\s{])*fail dot
  1287   |  5     ((((((■)*\s)(■|■))((■)*)?)■)\S)([^\s{])*fail dot
  1288   |  5     ((((((■)*\s)(■){■})((■)*)?)■)\S)([^\s{])*fail dot
  1289   |  5     ((((((■)*\s)■)((■■)*)?)■)\S)([^\s{])*fail dot
  1290   |  5     ((((((■)*\s)■)(((■|■))*)?)■)\S)([^\s{])*fail dot
  1291   |  5     ((((((■)*\s)■)(((■){■})*)?)■)\S)([^\s{])*fail dot
  1292   |  5     ((((((■)*\s)■)((■)*)?)(■■))\S)([^\s{])*fail dot
  1293   |  5     ((((((■)*\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dot
  1294   |  5     ((((((■)*\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dot
  1295   |  5     ((((((■)*\s)■)((■)*)?)\})■)(■)*fail dotstar or empty
  1296   |  5     ((((((■)*\s)■)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1297   |  5     ((((((■)*\s)■)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1298   |  5     ((((((■)*\s)■)((■)*)?)\})\S)■fail dotstar or empty
  1299   |  5     ((((((■)*\s)■)((.){■}){■})■)\S)([^\s{])*fail dot
  1300   |  5     ((((((■)*\s)■)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1301   |  5     ((((((■)*\s)■)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1302   |  5     ((((((■)*\s)■)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1303   |  5     ((((((■)*\s)■)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1304   |  5     ((((((■)*\s)■)((.){■})?)■)■)([^\s{])*fail dot
  1305   |  5     ((((((■)*\s)■)((.){■})?)■)\S)(■)*fail dot
  1306   |  5     ((((((■)*\s)■)((.){■})?)■)\S)([^\s{]){■}fail dot
  1307   |  5     ((((((■)*\s)■)(■)?)■)\S)([^\s{])*fail dot
  1308   |  5     ((((((■■)*\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  1309   |  5     (((((((■|■))*\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  1310   |  5     (((((((■){■})*\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  1311   |  5     ((((((■)*\s)(■■))((.){■})?)■)\S)([^\s{])*fail dot
  1312   |  5     ((((((■)*\s)(■|■))((.){■})?)■)\S)([^\s{])*fail dot
  1313   |  5     ((((((■)*\s)(■){■})((.){■})?)■)\S)([^\s{])*fail dot
  1314   |  5     ((((((■)*\s)■)((.){■})?)(■■))\S)([^\s{])*fail dot
  1315   |  5     ((((((■)*\s)■)((.){■})?)(■|■))\S)([^\s{])*fail dot
  1316   |  5     ((((((■)*\s)■)((.){■})?)(■){■})\S)([^\s{])*fail dot
  1317   |  5     ((((((■)*\s)■)((.){■})?)\})■)(■)*fail dotstar or empty
  1318   |  5     ((((((■)*\s)■)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1319   |  5     ((((((■)*\s)■)(■)?)\})■)([^\s{])*fail dotstar or empty
  1320   |  5     ((((((■)*\s)■)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1321   |  5     ((((((■)*\s)■)(■)?)\})\S)(■)*fail dotstar or empty
  1322   |  5     ((((((■)*\s)■)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1323   |  5     ((((((■)*\s)■)((.){■})?)\})\S)■fail dotstar or empty
  1324   |  5     ((((((■)*\s)■)((.)*){■})■)■)([^\s{])*fail dot
  1325   |  5     ((((((■)*\s)■)((.)*){■})■)\S)(■)*fail dot
  1326   |  5     ((((((■)*\s)■)((.)*){■})■)\S)([^\s{]){■}fail dot
  1327   |  5     ((((((■)*\s)■)■)■)\S)([^\s{])*fail dot
  1328   |  5     ((((((■■)*\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  1329   |  5     (((((((■|■))*\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  1330   |  5     (((((((■){■})*\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  1331   |  5     ((((((■)*\s)(■■))((.)*){■})■)\S)([^\s{])*fail dot
  1332   |  5     ((((((■)*\s)(■|■))((.)*){■})■)\S)([^\s{])*fail dot
  1333   |  5     ((((((■)*\s)(■){■})((.)*){■})■)\S)([^\s{])*fail dot
  1334   |  5     ((((((■)*\s)■)((.)*){■})(■■))\S)([^\s{])*fail dot
  1335   |  5     ((((((■)*\s)■)((.)*){■})(■|■))\S)([^\s{])*fail dot
  1336   |  5     ((((((■)*\s)■)((.)*){■})(■){■})\S)([^\s{])*fail dot
  1337   |  5     ((((((■)*\s)■)((.)*){■})\})■)(■)*fail dotstar or empty
  1338   |  5     ((((((■)*\s)■)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1339   |  5     ((((((■)*\s)■)■)\})■)([^\s{])*fail dotstar or empty
  1340   |  5     ((((((■)*\s)■)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1341   |  5     ((((((■)*\s)■)■)\})\S)(■)*fail dotstar or empty
  1342   |  5     ((((((■)*\s)■)■)\})\S)([^\s{]){■}fail dotstar or empty
  1343   |  5     ((((((■)*\s)■)((.)*){■})\})\S)■fail dotstar or empty
  1344   |  5     ((((((■)*\s)■)((.)*)?)■)■)(■)*fail dot
  1345   |  5     ((((((■)*\s)■)((.)*)?)■)■)([^\s{]){■}fail dot
  1346   |  5     ((((((■■)*\s)■)((.)*)?)■)■)([^\s{])*fail dot
  1347   |  5     (((((((■|■))*\s)■)((.)*)?)■)■)([^\s{])*fail dot
  1348   |  5     (((((((■){■})*\s)■)((.)*)?)■)■)([^\s{])*fail dot
  1349   |  5     ((((((■)*\s)(■■))((.)*)?)■)■)([^\s{])*fail dot
  1350   |  5     ((((((■)*\s)(■|■))((.)*)?)■)■)([^\s{])*fail dot
  1351   |  5     ((((((■)*\s)(■){■})((.)*)?)■)■)([^\s{])*fail dot
  1352   |  5     ((((((■)*\s)■)((.)*)?)(■■))■)([^\s{])*fail dot
  1353   |  5     ((((((■)*\s)■)((.)*)?)(■|■))■)([^\s{])*fail dot
  1354   |  5     ((((((■)*\s)■)((.)*)?)(■){■})■)([^\s{])*fail dot
  1355   |  5     ((((((■)*\s)■)((.)*)?)■)(■■))([^\s{])*fail dot
  1356   |  5     ((((((■)*\s)■)((.)*)?)■)(■|■))([^\s{])*fail dot
  1357   |  5     ((((((■)*\s)■)((.)*)?)■)(■){■})([^\s{])*fail dot
  1358   |  5     ((((((■)*\s)■)((.)*)?)■)\S)(■){■}fail dot
  1359   |  5     ((((((■■)*\s)■)((.)*)?)■)\S)(■)*fail dot
  1360   |  5     (((((((■|■))*\s)■)((.)*)?)■)\S)(■)*fail dot
  1361   |  5     (((((((■){■})*\s)■)((.)*)?)■)\S)(■)*fail dot
  1362   |  5     ((((((■)*\s)(■■))((.)*)?)■)\S)(■)*fail dot
  1363   |  5     ((((((■)*\s)(■|■))((.)*)?)■)\S)(■)*fail dot
  1364   |  5     ((((((■)*\s)(■){■})((.)*)?)■)\S)(■)*fail dot
  1365   |  5     ((((((■)*\s)■)((.)*)?)(■■))\S)(■)*fail dot
  1366   |  5     ((((((■)*\s)■)((.)*)?)(■|■))\S)(■)*fail dot
  1367   |  5     ((((((■)*\s)■)((.)*)?)(■){■})\S)(■)*fail dot
  1368   |  5     ((((((■)*\s)■)((.)*)?)■)\S)(■■)*fail dot
  1369   |  5     ((((((■)*\s)■)((.)*)?)■)\S)((■|■))*fail dot
  1370   |  5     ((((((■)*\s)■)((.)*)?)■)\S)((■){■})*fail dot
  1371   |  5     ((((((■)*\s)■)((.)*)?)■)\S)■fail dot
  1372   |  5     ((((((■■)*\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  1373   |  5     (((((((■|■))*\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  1374   |  5     (((((((■){■})*\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  1375   |  5     ((((((■)*\s)(■■))((.)*)?)■)\S)([^\s{]){■}fail dot
  1376   |  5     ((((((■)*\s)(■|■))((.)*)?)■)\S)([^\s{]){■}fail dot
  1377   |  5     ((((((■)*\s)(■){■})((.)*)?)■)\S)([^\s{]){■}fail dot
  1378   |  5     ((((((■)*\s)■)((.)*)?)(■■))\S)([^\s{]){■}fail dot
  1379   |  5     ((((((■)*\s)■)((.)*)?)(■|■))\S)([^\s{]){■}fail dot
  1380   |  5     ((((((■)*\s)■)((.)*)?)(■){■})\S)([^\s{]){■}fail dot
  1381   |  5     ((((((■■)*■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1382   |  5     (((((((■■)■)*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1383   |  5     (((((((■|■)■)*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1384   |  5     (((((((■){■}■)*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1385   |  5     ((((((■(■■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1386   |  5     ((((((■(■|■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1387   |  5     ((((((■(■){■})*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1388   |  5     ((((((■■)*\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  1389   |  5     ((((((■■)*\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  1390   |  5     ((((((■■)*\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  1391   |  5     ((((((■■)*\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  1392   |  5     ((((((■■)*\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  1393   |  5     ((((((■■)*\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  1394   |  5     (((((((■|■))*■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1395   |  5     (((((((■■|■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1396   |  5     ((((((((■|■)|■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1397   |  5     ((((((((■){■}|■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1398   |  5     (((((((■|■■))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1399   |  5     (((((((■|(■|■)))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1400   |  5     (((((((■|(■){■}))*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1401   |  5     (((((((■|■))*\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  1402   |  5     (((((((■|■))*\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  1403   |  5     (((((((■|■))*\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  1404   |  5     (((((((■|■))*\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  1405   |  5     (((((((■|■))*\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  1406   |  5     (((((((■|■))*\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  1407   |  5     (((((((■){■})*■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1408   |  5     (((((((■■){■})*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1409   |  5     ((((((((■|■)){■})*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1410   |  5     ((((((((■){■}){■})*\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1411   |  5     (((((((■){■})*\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  1412   |  5     (((((((■){■})*\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  1413   |  5     (((((((■){■})*\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  1414   |  5     (((((((■){■})*\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  1415   |  5     (((((((■){■})*\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  1416   |  5     (((((((■){■})*\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  1417   |  5     ((((((■)*■)(■■))((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1418   |  5     ((((((■)*\s)(■))((.)*)?)■)\S)([^\s{])*fail dot
  1419   |  5     ((((((■)*\s)((■■)■))((.)*)?)■)\S)([^\s{])*fail dot
  1420   |  5     ((((((■)*\s)((■|■)■))((.)*)?)■)\S)([^\s{])*fail dot
  1421   |  5     ((((((■)*\s)((■){■}■))((.)*)?)■)\S)([^\s{])*fail dot
  1422   |  5     ((((((■)*\s)(■■))((.)*)?)(■■))\S)([^\s{])*fail dot
  1423   |  5     ((((((■)*\s)(■■))((.)*)?)(■|■))\S)([^\s{])*fail dot
  1424   |  5     ((((((■)*\s)(■■))((.)*)?)(■){■})\S)([^\s{])*fail dot
  1425   |  5     ((((((■)*■)(■|■))((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1426   |  5     ((((((■)*\s)(■■|■))((.)*)?)■)\S)([^\s{])*fail dot
  1427   |  5     ((((((■)*\s)((■|■)|■))((.)*)?)■)\S)([^\s{])*fail dot
  1428   |  5     ((((((■)*\s)((■){■}|■))((.)*)?)■)\S)([^\s{])*fail dot
  1429   |  5     ((((((■)*\s)(■|■))((.)*)?)(■■))\S)([^\s{])*fail dot
  1430   |  5     ((((((■)*\s)(■|■))((.)*)?)(■|■))\S)([^\s{])*fail dot
  1431   |  5     ((((((■)*\s)(■|■))((.)*)?)(■){■})\S)([^\s{])*fail dot
  1432   |  5     ((((((■)*■)(■){■})((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1433   |  5     ((((((■)*\s)(■■){■})((.)*)?)■)\S)([^\s{])*fail dot
  1434   |  5     ((((((■)*\s)((■|■)){■})((.)*)?)■)\S)([^\s{])*fail dot
  1435   |  5     ((((((■)*\s)((■){■}){■})((.)*)?)■)\S)([^\s{])*fail dot
  1436   |  5     ((((((■)*\s)(■){■})((.)*)?)(■■))\S)([^\s{])*fail dot
  1437   |  5     ((((((■)*\s)(■){■})((.)*)?)(■|■))\S)([^\s{])*fail dot
  1438   |  5     ((((((■)*\s)(■){■})((.)*)?)(■){■})\S)([^\s{])*get a solution: (((((([rdw{}o0 ])*\s)([rdw{}o 0]){0,8})((.)*)?)([rdw	
}o 0]){2,9})\S)([^\s{])*
add positive: 1	{0}	0
add negative: 			 
get a solution: (((((([1rdwo0])*\s)([rw{o]){0,4})((.)*)?)([rdw	
{} 0]){4,5})\S)([^\s{])*
add positive: 0	{o}	0
add negative: 					 
get a solution: (((((([1rdw{}o0 ])*\s)([rdw{}o 0]){2,9})((.)*)?)([rdw	
}o ]){1,8})\S)([^\s{])*
  timed-out cegis for `((((((■)*\s)(■){■})((.)*)?)(■){■})\S)([^\s{])*`
  1439   |  5     ((((((■)*■)■)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  1440   |  5     ((((((■)*\s)■)((.)*)?)(■))\S)([^\s{])*fail dot
  1441   |  5     ((((((■)*\s)■)((.)*)?)((■■)■))\S)([^\s{])*fail dot
  1442   |  5     ((((((■)*\s)■)((.)*)?)((■|■)■))\S)([^\s{])*fail dot
  1443   |  5     ((((((■)*\s)■)((.)*)?)((■){■}■))\S)([^\s{])*fail dot
  1444   |  5     ((((((■)*■)■)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  1445   |  5     ((((((■)*\s)■)((.)*)?)(■■|■))\S)([^\s{])*fail dot
  1446   |  5     ((((((■)*\s)■)((.)*)?)((■|■)|■))\S)([^\s{])*fail dot
  1447   |  5     ((((((■)*\s)■)((.)*)?)((■){■}|■))\S)([^\s{])*fail dot
  1448   |  5     ((((((■)*■)■)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  1449   |  5     ((((((■)*\s)■)((.)*)?)(■■){■})\S)([^\s{])*fail dot
  1450   |  5     ((((((■)*\s)■)((.)*)?)((■|■)){■})\S)([^\s{])*fail dot
  1451   |  5     ((((((■)*\s)■)((.)*)?)((■){■}){■})\S)([^\s{])*fail dot
  1452   |  5     ((((((■)*\s)■)((.)*)?)\})■)(■){■}fail dotstar or empty
  1453   |  5     ((((((■)*\s)■)((.)*)?)\})■)■fail dotstar or empty
  1454   |  5     ((((((■)*\s)\{)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1455   |  5     ((((((■)*\s)\{)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  1456   |  5     ((((((■)*\s)\{)((■){■}){■})\})\S)(■)*fail dotstar or empty
  1457   |  5     ((((((■)*\s)\{)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1458   |  5     ((((((■)*\s)\{)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  1459   |  5     ((((((■)*\s)\{)((■){■})?)■)\S)(■)*fail dotstar or empty
  1460   |  5     ((((((■)*\s)\{)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1461   |  5     ((((((■)*\s)\{)((■){■})?)\})■)(■)*fail dotstar or empty
  1462   |  5     ((((((■)*\s)\{)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1463   |  5     ((((((■)*\s)\{)((■){■})?)\})\S)(■){■}fail dotstar or empty
  1464   |  5     ((((((■)*\s)\{)((■){■})?)\})\S)■fail dotstar or empty
  1465   |  5     ((((((■)*\s)\{)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  1466   |  5     ((((((■)*\s)\{)((■)*){■})■)\S)(■)*fail dotstar or empty
  1467   |  5     ((((((■)*\s)\{)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1468   |  5     ((((((■)*\s)\{)((■)*){■})\})■)(■)*fail dotstar or empty
  1469   |  5     ((((((■)*\s)\{)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1470   |  5     ((((((■)*\s)\{)((■)*){■})\})\S)(■){■}fail dotstar or empty
  1471   |  5     ((((((■)*\s)\{)((■)*){■})\})\S)■fail dotstar or empty
  1472   |  5     ((((((■)*\s)\{)((■)*)?)■)■)(■)*fail dotstar or empty
  1473   |  5     ((((((■)*\s)\{)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1474   |  5     ((((((■)*\s)\{)((■)*)?)■)\S)(■){■}fail dotstar or empty
  1475   |  5     ((((((■)*\s)\{)((■)*)?)■)\S)■fail dotstar or empty
  1476   |  5     ((((((■)*\s)\{)((■)*)?)\})■)(■){■}fail dotstar or empty
  1477   |  5     ((((((■)*\s)\{)((■)*)?)\})■)■fail dotstar or empty
  1478   |  5     ((((((■)*\s)\{)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  1479   |  5     ((((((■)*\s)\{)((.){■}){■})■)\S)(■)*fail dotstar or empty
  1480   |  5     ((((((■)*\s)\{)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  1481   |  5     ((((((■)*\s)\{)(■){■})■)\S)([^\s{])*fail dotstar or empty
  1482   |  5     ((((((■)*\s)\{)((.){■}){■})\})■)(■)*fail dotstar or empty
  1483   |  5     ((((((■)*\s)\{)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  1484   |  5     ((((((■)*\s)\{)(■){■})\})■)([^\s{])*fail dotstar or empty
  1485   |  5     ((((((■)*\s)\{)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  1486   |  5     ((((((■)*\s)\{)(■){■})\})\S)(■)*fail dotstar or empty
  1487   |  5     ((((((■)*\s)\{)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  1488   |  5     ((((((■)*\s)\{)((.){■}){■})\})\S)■fail dotstar or empty
  1489   |  5     ((((((■)*\s)\{)((.){■})?)■)■)(■)*fail dotstar or empty
  1490   |  5     ((((((■)*\s)\{)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  1491   |  5     ((((((■)*\s)\{)(■)?)■)■)([^\s{])*fail dotstar or empty
  1492   |  5     ((((((■)*\s)\{)((.){■})?)■)\S)(■){■}fail dotstar or empty
  1493   |  5     ((((((■)*\s)\{)(■)?)■)\S)(■)*fail dotstar or empty
  1494   |  5     ((((((■)*\s)\{)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  1495   |  5     ((((((■)*\s)\{)((.){■})?)■)\S)■fail dotstar or empty
  1496   |  5     ((((((■)*\s)\{)((.){■})?)\})■)(■){■}fail dotstar or empty
  1497   |  5     ((((((■)*\s)\{)(■)?)\})■)(■)*fail dotstar or empty
  1498   |  5     ((((((■)*\s)\{)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  1499   |  5     ((((((■)*\s)\{)((.){■})?)\})■)■fail dotstar or empty
  1500   |  5     ((((((■)*\s)\{)(■)?)\})\S)(■){■}fail dotstar or empty
  1501   |  5     ((((((■)*\s)\{)(■)?)\})\S)■fail dotstar or empty
  1502   |  5     ((((((■)*\s)\{)((.)*){■})■)■)(■)*fail dotstar or empty
  1503   |  5     ((((((■)*\s)\{)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  1504   |  5     ((((((■)*\s)\{)■)■)■)([^\s{])*fail dotstar or empty
  1505   |  5     ((((((■)*\s)\{)((.)*){■})■)\S)(■){■}fail dotstar or empty
  1506   |  5     ((((((■)*\s)\{)■)■)\S)(■)*fail dotstar or empty
  1507   |  5     ((((((■)*\s)\{)■)■)\S)([^\s{]){■}fail dotstar or empty
  1508   |  5     ((((((■)*\s)\{)((.)*){■})■)\S)■fail dotstar or empty
  1509   |  5     ((((((■)*\s)\{)((.)*){■})\})■)(■){■}fail dotstar or empty
  1510   |  5     ((((((■)*\s)\{)■)\})■)(■)*fail dotstar or empty
  1511   |  5     ((((((■)*\s)\{)■)\})■)([^\s{]){■}fail dotstar or empty
  1512   |  5     ((((((■)*\s)\{)((.)*){■})\})■)■fail dotstar or empty
  1513   |  5     ((((((■)*\s)\{)■)\})\S)(■){■}fail dotstar or empty
  1514   |  5     ((((((■)*\s)\{)■)\})\S)■fail dotstar or empty
  1515   |  5     ((((((■)*\s)\{)((.)*)?)■)■)(■){■}fail dotstar or empty
  1516   |  5     ((((((■)*\s)\{)((.)*)?)■)■)■fail dotstar or empty
  1517   |  5     ((((((\S){■}■)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  1518   |  5     ((((((\S){■}■)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  1519   |  5     ((((((\S){■}■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  1520   |  5     ((((((\S){■}■)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  1521   |  5     ((((((\S){■}■)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  1522   |  5     ((((((\S){■}■)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1523   |  5     (((((■■)■)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  1524   |  5     ((((((\S){■}■)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1525   |  5     ((((((\S){■}■)■)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  1526   |  5     ((((((\S){■}■)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  1527   |  5     ((((((\S){■}■)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  1528   |  5     ((((((\S){■}■)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1529   |  5     (((((■■)■)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  1530   |  5     ((((((\S){■}■)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  1531   |  5     ((((((\S){■}■)■)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  1532   |  5     ((((((\S){■}■)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  1533   |  5     ((((((\S){■}■)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  1534   |  5     ((((((\S){■}■)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1535   |  5     (((((■■)■)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  1536   |  5     ((((((\S){■}■)■)■)\})\S)([^\s{])*fail dotstar or empty
  1537   |  5     ((((((\S){■}■)■)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  1538   |  5     ((((((\S){■}■)■)((.)*)?)■)\S)(■)*fail dotstar or empty
  1539   |  5     ((((((\S){■}■)■)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1540   |  5     (((((■■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1541   |  5     ((((((\S){■}■)■)((.)*)?)\})■)(■)*fail dotstar or empty
  1542   |  5     ((((((\S){■}■)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1543   |  5     (((((■■)■)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  1544   |  5     ((((((\S){■}■)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  1545   |  5     (((((■■)■)((.)*)?)\})\S)(■)*fail dotstar or empty
  1546   |  5     (((((■■)■)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1547   |  5     ((((((\S){■}■)■)((.)*)?)\})\S)■fail dotstar or empty
  1548   |  5     (((((■)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  1549   |  5     ((((((\S){■}■)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1550   |  5     ((((((\S){■}■)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  1551   |  5     ((((((\S){■}■)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1552   |  5     ((((((\S){■}■)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  1553   |  5     ((((((\S){■}■)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1554   |  5     (((((■■)\{)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  1555   |  5     ((((((\S){■}■)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  1556   |  5     ((((((\S){■}■)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1557   |  5     ((((((\S){■}■)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  1558   |  5     ((((((\S){■}■)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1559   |  5     (((((■■)\{)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  1560   |  5     ((((((\S){■}■)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  1561   |  5     ((((((\S){■}■)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  1562   |  5     ((((((\S){■}■)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1563   |  5     (((((■■)\{)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  1564   |  5     ((((((\S){■}■)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  1565   |  5     ((((((\S){■}■)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1566   |  5     (((((■■)\{)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  1567   |  5     ((((((\S){■}■)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1568   |  5     (((((■■)\{)((■)*)?)\})\S)(■)*fail dotstar or empty
  1569   |  5     (((((■■)\{)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1570   |  5     ((((((\S){■}■)\{)((■)*)?)\})\S)■fail dotstar or empty
  1571   |  5     (((((■)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  1572   |  5     ((((((\S){■}■)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1573   |  5     ((((((\S){■}■)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1574   |  5     ((((((\S){■}■)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1575   |  5     ((((((\S){■}■)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1576   |  5     (((((■■)\{)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1577   |  5     ((((((\S){■}■)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1578   |  5     ((((((\S){■}■)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  1579   |  5     ((((((\S){■}■)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  1580   |  5     ((((((\S){■}■)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1581   |  5     (((((■■)\{)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  1582   |  5     ((((((\S){■}■)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  1583   |  5     ((((((\S){■}■)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  1584   |  5     ((((((\S){■}■)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1585   |  5     (((((■■)\{)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  1586   |  5     ((((((\S){■}■)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  1587   |  5     ((((((\S){■}■)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1588   |  5     (((((■■)\{)((.){■})?)\})\S)(■)*fail dotstar or empty
  1589   |  5     ((((((\S){■}■)\{)(■)?)\})\S)(■)*fail dotstar or empty
  1590   |  5     (((((■■)\{)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1591   |  5     ((((((\S){■}■)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1592   |  5     ((((((\S){■}■)\{)((.){■})?)\})\S)■fail dotstar or empty
  1593   |  5     (((((■)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  1594   |  5     (((((■■)\{)(■)?)\})\S)([^\s{])*fail dotstar or empty
  1595   |  5     ((((((\S){■}■)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  1596   |  5     ((((((\S){■}■)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  1597   |  5     ((((((\S){■}■)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1598   |  5     (((((■■)\{)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  1599   |  5     ((((((\S){■}■)\{)■)■)\S)([^\s{])*fail dotstar or empty
  1600   |  5     ((((((\S){■}■)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  1601   |  5     ((((((\S){■}■)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1602   |  5     (((((■■)\{)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  1603   |  5     ((((((\S){■}■)\{)■)\})■)([^\s{])*fail dotstar or empty
  1604   |  5     ((((((\S){■}■)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1605   |  5     (((((■■)\{)((.)*){■})\})\S)(■)*fail dotstar or empty
  1606   |  5     ((((((\S){■}■)\{)■)\})\S)(■)*fail dotstar or empty
  1607   |  5     (((((■■)\{)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1608   |  5     ((((((\S){■}■)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  1609   |  5     ((((((\S){■}■)\{)((.)*){■})\})\S)■fail dotstar or empty
  1610   |  5     (((((■)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  1611   |  5     (((((■■)\{)■)\})\S)([^\s{])*fail dotstar or empty
  1612   |  5     ((((((\S){■}■)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  1613   |  5     ((((((\S){■}■)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1614   |  5     (((((■■)\{)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  1615   |  5     ((((((\S){■}■)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  1616   |  5     (((((■■)\{)((.)*)?)■)\S)(■)*fail dotstar or empty
  1617   |  5     (((((■■)\{)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1618   |  5     ((((((\S){■}■)\{)((.)*)?)■)\S)■fail dotstar or empty
  1619   |  5     (((((■)\{)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  1620   |  5     ((((((\S){■}■)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  1621   |  5     (((((■■)\{)((.)*)?)\})■)(■)*fail dotstar or empty
  1622   |  5     (((((■■)\{)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1623   |  5     ((((((\S){■}■)\{)((.)*)?)\})■)■fail dotstar or empty
  1624   |  5     (((((■)\{)((.)*)?)\})■)([^\s{])*fail dotstar or empty
  1625   |  5     (((((■■)\{)((.)*)?)\})\S)(■){■}fail dotstar or empty
  1626   |  5     (((((■)\{)((.)*)?)\})\S)(■)*fail dotstar or empty
  1627   |  5     (((((■)\{)((.)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1628   |  5     (((((■■)\{)((.)*)?)\})\S)■fail dotstar or empty
  1629   |  5     ((((■\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  1630   |  5     ((((((\S){■}\s)■)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1631   |  5     ((((((\S){■}\s)■)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  1632   |  5     ((((((\S){■}\s)■)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1633   |  5     ((((((\S){■}\s)■)((■){■})?)\})\S)(■)*fail dotstar or empty
  1634   |  5     ((((((\S){■}\s)■)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1635   |  5     (((((■\s)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  1636   |  5     ((((((\S){■}\s)■)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  1637   |  5     ((((((\S){■}\s)■)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1638   |  5     ((((((\S){■}\s)■)((■)*){■})\})\S)(■)*fail dotstar or empty
  1639   |  5     ((((((\S){■}\s)■)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1640   |  5     (((((■\s)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  1641   |  5     ((((((\S){■}\s)■)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  1642   |  5     ((((((\S){■}\s)■)((■)*)?)■)\S)(■)*fail dotstar or empty
  1643   |  5     ((((((\S){■}\s)■)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1644   |  5     (((((■\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  1645   |  5     ((((((\S){■}\s)■)((■)*)?)\})■)(■)*fail dotstar or empty
  1646   |  5     ((((((\S){■}\s)■)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1647   |  5     (((((■\s)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  1648   |  5     ((((((\S){■}\s)■)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1649   |  5     (((((■\s)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  1650   |  5     (((((■\s)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  1651   |  5     ((((((\S){■}\s)■)((■)*)?)\})\S)■fail dotstar or empty
  1652   |  5     ((((((\S){■}\s)■)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1653   |  5     ((((((\S){■}\s)■)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1654   |  5     ((((((\S){■}\s)■)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1655   |  5     ((((((\S){■}\s)■)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1656   |  5     (((((■\s)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1657   |  5     ((((((\S){■}\s)■)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1658   |  5     ((((((\S){■}\s)■)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  1659   |  5     ((((((\S){■}\s)■)((.){■})?)■)\S)(■)*fail dotstar or empty
  1660   |  5     ((((((\S){■}\s)■)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1661   |  5     (((((■\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  1662   |  5     ((((((\S){■}\s)■)(■)?)■)\S)([^\s{])*fail dotstar or empty
  1663   |  5     ((((((\S){■}\s)■)((.){■})?)\})■)(■)*fail dotstar or empty
  1664   |  5     ((((((\S){■}\s)■)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1665   |  5     (((((■\s)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  1666   |  5     ((((((\S){■}\s)■)(■)?)\})■)([^\s{])*fail dotstar or empty
  1667   |  5     ((((((\S){■}\s)■)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1668   |  5     (((((■\s)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  1669   |  5     ((((((\S){■}\s)■)(■)?)\})\S)(■)*fail dotstar or empty
  1670   |  5     (((((■\s)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1671   |  5     ((((((\S){■}\s)■)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1672   |  5     ((((((\S){■}\s)■)((.){■})?)\})\S)■fail dotstar or empty
  1673   |  5     (((((■\s)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  1674   |  5     ((((((\S){■}\s)■)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  1675   |  5     ((((((\S){■}\s)■)((.)*){■})■)\S)(■)*fail dotstar or empty
  1676   |  5     ((((((\S){■}\s)■)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1677   |  5     (((((■\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  1678   |  5     ((((((\S){■}\s)■)■)■)\S)([^\s{])*fail dotstar or empty
  1679   |  5     ((((((\S){■}\s)■)((.)*){■})\})■)(■)*fail dotstar or empty
  1680   |  5     ((((((\S){■}\s)■)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1681   |  5     (((((■\s)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  1682   |  5     ((((((\S){■}\s)■)■)\})■)([^\s{])*fail dotstar or empty
  1683   |  5     ((((((\S){■}\s)■)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1684   |  5     (((((■\s)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  1685   |  5     ((((((\S){■}\s)■)■)\})\S)(■)*fail dotstar or empty
  1686   |  5     (((((■\s)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1687   |  5     ((((((\S){■}\s)■)■)\})\S)([^\s{]){■}fail dotstar or empty
  1688   |  5     ((((((\S){■}\s)■)((.)*){■})\})\S)■fail dotstar or empty
  1689   |  5     (((((■\s)■)■)\})\S)([^\s{])*fail dotstar or empty
  1690   |  5     ((((((\S){■}\s)■)((.)*)?)■)■)(■)*fail dotstar or empty
  1691   |  5     ((((((\S){■}\s)■)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1692   |  5     (((((■\s)■)((.)*)?)■)■)([^\s{])*fail dot
  1693   |  5     ((((((\S){■}\s)■)((.)*)?)■)\S)(■){■}fail dotstar or empty
  1694   |  5     (((((■\s)■)((.)*)?)■)\S)(■)*fail dot
  1695   |  5     (((((■\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  1696   |  5     ((((((\S){■}\s)■)((.)*)?)■)\S)■fail dotstar or empty
  1697   |  5     ((((((■■)\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1698   |  5     ((((((■|■)\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  1699   |  5     (((((■\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  1700   |  5     (((((■\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  1701   |  5     (((((■\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  1702   |  5     (((((■\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  1703   |  5     (((((■\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  1704   |  5     (((((■\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  1705   |  5     ((((((\S){■}\s)■)((.)*)?)\})■)(■){■}fail dotstar or empty
  1706   |  5     (((((■\s)■)((.)*)?)\})■)(■)*fail dotstar or empty
  1707   |  5     (((((■\s)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1708   |  5     ((((((\S){■}\s)■)((.)*)?)\})■)■fail dotstar or empty
  1709   |  5     (((((■\s)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  1710   |  5     (((((■\s)■)((.)*)?)\})\S)■fail dotstar or empty
  1711   |  5     ((((((\S){■}\s)\{)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1712   |  5     ((((((\S){■}\s)\{)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  1713   |  5     ((((((\S){■}\s)\{)((■){■}){■})\})\S)(■)*fail dotstar or empty
  1714   |  5     ((((((\S){■}\s)\{)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1715   |  5     (((((■\s)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1716   |  5     ((((((\S){■}\s)\{)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  1717   |  5     ((((((\S){■}\s)\{)((■){■})?)■)\S)(■)*fail dotstar or empty
  1718   |  5     ((((((\S){■}\s)\{)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1719   |  5     (((((■\s)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  1720   |  5     ((((((\S){■}\s)\{)((■){■})?)\})■)(■)*fail dotstar or empty
  1721   |  5     ((((((\S){■}\s)\{)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1722   |  5     (((((■\s)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1723   |  5     ((((((\S){■}\s)\{)((■){■})?)\})\S)(■){■}fail dotstar or empty
  1724   |  5     (((((■\s)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  1725   |  5     (((((■\s)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1726   |  5     ((((((\S){■}\s)\{)((■){■})?)\})\S)■fail dotstar or empty
  1727   |  5     ((((((\S){■}\s)\{)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  1728   |  5     ((((((\S){■}\s)\{)((■)*){■})■)\S)(■)*fail dotstar or empty
  1729   |  5     ((((((\S){■}\s)\{)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1730   |  5     (((((■\s)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  1731   |  5     ((((((\S){■}\s)\{)((■)*){■})\})■)(■)*fail dotstar or empty
  1732   |  5     ((((((\S){■}\s)\{)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1733   |  5     (((((■\s)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1734   |  5     ((((((\S){■}\s)\{)((■)*){■})\})\S)(■){■}fail dotstar or empty
  1735   |  5     (((((■\s)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  1736   |  5     (((((■\s)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1737   |  5     ((((((\S){■}\s)\{)((■)*){■})\})\S)■fail dotstar or empty
  1738   |  5     ((((((\S){■}\s)\{)((■)*)?)■)■)(■)*fail dotstar or empty
  1739   |  5     ((((((\S){■}\s)\{)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1740   |  5     (((((■\s)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  1741   |  5     ((((((\S){■}\s)\{)((■)*)?)■)\S)(■){■}fail dotstar or empty
  1742   |  5     (((((■\s)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  1743   |  5     (((((■\s)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1744   |  5     ((((((\S){■}\s)\{)((■)*)?)■)\S)■fail dotstar or empty
  1745   |  5     ((((((\S){■}\s)\{)((■)*)?)\})■)(■){■}fail dotstar or empty
  1746   |  5     (((((■\s)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  1747   |  5     (((((■\s)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1748   |  5     ((((((\S){■}\s)\{)((■)*)?)\})■)■fail dotstar or empty
  1749   |  5     (((((■\s)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1750   |  5     (((((■\s)\{)((■)*)?)\})\S)■fail dotstar or empty
  1751   |  5     ((((((\S){■}\s)\{)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  1752   |  5     ((((((\S){■}\s)\{)((.){■}){■})■)\S)(■)*fail dotstar or empty
  1753   |  5     ((((((\S){■}\s)\{)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  1754   |  5     (((((■\s)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1755   |  5     ((((((\S){■}\s)\{)(■){■})■)\S)([^\s{])*fail dotstar or empty
  1756   |  5     ((((((\S){■}\s)\{)((.){■}){■})\})■)(■)*fail dotstar or empty
  1757   |  5     ((((((\S){■}\s)\{)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  1758   |  5     (((((■\s)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1759   |  5     ((((((\S){■}\s)\{)(■){■})\})■)([^\s{])*fail dotstar or empty
  1760   |  5     ((((((\S){■}\s)\{)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  1761   |  5     (((((■\s)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1762   |  5     ((((((\S){■}\s)\{)(■){■})\})\S)(■)*fail dotstar or empty
  1763   |  5     (((((■\s)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1764   |  5     ((((((\S){■}\s)\{)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  1765   |  5     ((((((\S){■}\s)\{)((.){■}){■})\})\S)■fail dotstar or empty
  1766   |  5     (((((■\s)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1767   |  5     ((((((\S){■}\s)\{)((.){■})?)■)■)(■)*fail dotstar or empty
  1768   |  5     ((((((\S){■}\s)\{)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  1769   |  5     (((((■\s)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  1770   |  5     ((((((\S){■}\s)\{)(■)?)■)■)([^\s{])*fail dotstar or empty
  1771   |  5     ((((((\S){■}\s)\{)((.){■})?)■)\S)(■){■}fail dotstar or empty
  1772   |  5     (((((■\s)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  1773   |  5     ((((((\S){■}\s)\{)(■)?)■)\S)(■)*fail dotstar or empty
  1774   |  5     (((((■\s)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1775   |  5     ((((((\S){■}\s)\{)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  1776   |  5     ((((((\S){■}\s)\{)((.){■})?)■)\S)■fail dotstar or empty
  1777   |  5     (((((■\s)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  1778   |  5     ((((((\S){■}\s)\{)((.){■})?)\})■)(■){■}fail dotstar or empty
  1779   |  5     (((((■\s)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  1780   |  5     ((((((\S){■}\s)\{)(■)?)\})■)(■)*fail dotstar or empty
  1781   |  5     (((((■\s)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1782   |  5     ((((((\S){■}\s)\{)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  1783   |  5     ((((((\S){■}\s)\{)((.){■})?)\})■)■fail dotstar or empty
  1784   |  5     (((((■\s)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  1785   |  5     (((((■\s)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1786   |  5     ((((((\S){■}\s)\{)(■)?)\})\S)(■){■}fail dotstar or empty
  1787   |  5     (((((■\s)\{)(■)?)\})\S)(■)*fail dotstar or empty
  1788   |  5     (((((■\s)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1789   |  5     (((((■\s)\{)((.){■})?)\})\S)■fail dotstar or empty
  1790   |  5     ((((((\S){■}\s)\{)(■)?)\})\S)■fail dotstar or empty
  1791   |  5     ((((((\S){■}\s)\{)((.)*){■})■)■)(■)*fail dotstar or empty
  1792   |  5     ((((((\S){■}\s)\{)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  1793   |  5     (((((■\s)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  1794   |  5     ((((((\S){■}\s)\{)■)■)■)([^\s{])*fail dotstar or empty
  1795   |  5     ((((((\S){■}\s)\{)((.)*){■})■)\S)(■){■}fail dotstar or empty
  1796   |  5     (((((■\s)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  1797   |  5     ((((((\S){■}\s)\{)■)■)\S)(■)*fail dotstar or empty
  1798   |  5     (((((■\s)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1799   |  5     ((((((\S){■}\s)\{)■)■)\S)([^\s{]){■}fail dotstar or empty
  1800   |  5     ((((((\S){■}\s)\{)((.)*){■})■)\S)■fail dotstar or empty
  1801   |  5     (((((■\s)\{)■)■)\S)([^\s{])*fail dotstar or empty
  1802   |  5     ((((((\S){■}\s)\{)((.)*){■})\})■)(■){■}fail dotstar or empty
  1803   |  5     (((((■\s)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  1804   |  5     ((((((\S){■}\s)\{)■)\})■)(■)*fail dotstar or empty
  1805   |  5     (((((■\s)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1806   |  5     ((((((\S){■}\s)\{)■)\})■)([^\s{]){■}fail dotstar or empty
  1807   |  5     ((((((\S){■}\s)\{)((.)*){■})\})■)■fail dotstar or empty
  1808   |  5     (((((■\s)\{)■)\})■)([^\s{])*fail dotstar or empty
  1809   |  5     (((((■\s)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1810   |  5     ((((((\S){■}\s)\{)■)\})\S)(■){■}fail dotstar or empty
  1811   |  5     (((((■\s)\{)■)\})\S)(■)*fail dotstar or empty
  1812   |  5     (((((■\s)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  1813   |  5     (((((■\s)\{)((.)*){■})\})\S)■fail dotstar or empty
  1814   |  5     ((((((\S){■}\s)\{)■)\})\S)■fail dotstar or empty
  1815   |  5     ((((((\S){■}\s)\{)((.)*)?)■)■)(■){■}fail dotstar or empty
  1816   |  5     (((((■\s)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  1817   |  5     (((((■\s)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1818   |  5     ((((((\S){■}\s)\{)((.)*)?)■)■)■fail dotstar or empty
  1819   |  5     (((((■\s)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  1820   |  5     (((((■\s)\{)((.)*)?)■)\S)■fail dotstar or empty
  1821   |  5     (((((■\s)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  1822   |  5     (((((■\s)\{)((.)*)?)\})■)■fail dotstar or empty
  1823   |  5     ((((((\S)*■)■)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  1824   |  5     ((((((\S)*■)■)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  1825   |  5     ((((((\S)*■)■)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  1826   |  5     ((((((\S)*■)■)((■){■})?)\})\S)(■)*fail dotstar or empty
  1827   |  5     ((((((\S)*■)■)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  1828   |  5     ((((((\S)*■)■)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  1829   |  5     ((((((\S)*■)■)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  1830   |  5     ((((((\S)*■)■)((■)*){■})\})\S)(■)*fail dotstar or empty
  1831   |  5     ((((((\S)*■)■)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  1832   |  5     ((((((\S)*■)■)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  1833   |  5     ((((((\S)*■)■)((■)*)?)■)\S)(■)*fail dotstar or empty
  1834   |  5     ((((((\S)*■)■)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  1835   |  5     ((((((\S)*■)■)((■)*)?)\})■)(■)*fail dotstar or empty
  1836   |  5     ((((((\S)*■)■)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  1837   |  5     ((((((\S)*■)■)((■)*)?)\})\S)(■){■}fail dotstar or empty
  1838   |  5     ((((((\S)*■)■)((■)*)?)\})\S)■fail dotstar or empty
  1839   |  5     ((((((\S)*■)■)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1840   |  5     ((((((\S)*■)■)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  1841   |  5     ((((((\S)*■)■)((.){■}){■})\})\S)(■)*fail dotstar or empty
  1842   |  5     ((((((\S)*■)■)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1843   |  5     ((((((\S)*■)■)(■){■})\})\S)([^\s{])*fail dotstar or empty
  1844   |  5     ((((((\S)*■)■)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  1845   |  5     ((((((\S)*■)■)((.){■})?)■)\S)(■)*fail dotstar or empty
  1846   |  5     ((((((\S)*■)■)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1847   |  5     ((((((\S)*■)■)(■)?)■)\S)([^\s{])*fail dotstar or empty
  1848   |  5     ((((((\S)*■)■)((.){■})?)\})■)(■)*fail dotstar or empty
  1849   |  5     ((((((\S)*■)■)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1850   |  5     ((((((\S)*■)■)(■)?)\})■)([^\s{])*fail dotstar or empty
  1851   |  5     ((((((\S)*■)■)((.){■})?)\})\S)(■){■}fail dotstar or empty
  1852   |  5     ((((((\S)*■)■)(■)?)\})\S)(■)*fail dotstar or empty
  1853   |  5     ((((((\S)*■)■)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  1854   |  5     ((((((\S)*■)■)((.){■})?)\})\S)■fail dotstar or empty
  1855   |  5     ((((((\S)*■)■)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  1856   |  5     ((((((\S)*■)■)((.)*){■})■)\S)(■)*fail dotstar or empty
  1857   |  5     ((((((\S)*■)■)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1858   |  5     ((((((\S)*■)■)■)■)\S)([^\s{])*fail dotstar or empty
  1859   |  5     ((((((\S)*■)■)((.)*){■})\})■)(■)*fail dotstar or empty
  1860   |  5     ((((((\S)*■)■)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1861   |  5     ((((((\S)*■)■)■)\})■)([^\s{])*fail dotstar or empty
  1862   |  5     ((((((\S)*■)■)((.)*){■})\})\S)(■){■}fail dotstar or empty
  1863   |  5     ((((((\S)*■)■)■)\})\S)(■)*fail dotstar or empty
  1864   |  5     ((((((\S)*■)■)■)\})\S)([^\s{]){■}fail dotstar or empty
  1865   |  5     ((((((\S)*■)■)((.)*){■})\})\S)■fail dotstar or empty
  1866   |  5     ((((((\S)*■)■)((.)*)?)■)■)(■)*fail dotstar or empty
  1867   |  5     ((((((\S)*■)■)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1868   |  5     ((((((\S)*■)■)((.)*)?)■)\S)(■){■}fail dotstar or empty
  1869   |  5     ((((((\S)*■)■)((.)*)?)■)\S)■fail dotstar or empty
  1870   |  5     ((((((\S)*■)■)((.)*)?)\})■)(■){■}fail dotstar or empty
  1871   |  5     ((((((\S)*■)■)((.)*)?)\})■)■fail dotstar or empty
  1872   |  5     ((((((\S)*■)\{)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1873   |  5     ((((((\S)*■)\{)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  1874   |  5     ((((((\S)*■)\{)((■){■}){■})\})\S)(■)*fail dotstar or empty
  1875   |  5     ((((((\S)*■)\{)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1876   |  5     ((((((\S)*■)\{)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  1877   |  5     ((((((\S)*■)\{)((■){■})?)■)\S)(■)*fail dotstar or empty
  1878   |  5     ((((((\S)*■)\{)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1879   |  5     ((((((\S)*■)\{)((■){■})?)\})■)(■)*fail dotstar or empty
  1880   |  5     ((((((\S)*■)\{)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1881   |  5     ((((((\S)*■)\{)((■){■})?)\})\S)(■){■}fail dotstar or empty
  1882   |  5     ((((((\S)*■)\{)((■){■})?)\})\S)■fail dotstar or empty
  1883   |  5     ((((((\S)*■)\{)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  1884   |  5     ((((((\S)*■)\{)((■)*){■})■)\S)(■)*fail dotstar or empty
  1885   |  5     ((((((\S)*■)\{)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1886   |  5     ((((((\S)*■)\{)((■)*){■})\})■)(■)*fail dotstar or empty
  1887   |  5     ((((((\S)*■)\{)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1888   |  5     ((((((\S)*■)\{)((■)*){■})\})\S)(■){■}fail dotstar or empty
  1889   |  5     ((((((\S)*■)\{)((■)*){■})\})\S)■fail dotstar or empty
  1890   |  5     ((((((\S)*■)\{)((■)*)?)■)■)(■)*fail dotstar or empty
  1891   |  5     ((((((\S)*■)\{)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1892   |  5     ((((((\S)*■)\{)((■)*)?)■)\S)(■){■}fail dotstar or empty
  1893   |  5     ((((((\S)*■)\{)((■)*)?)■)\S)■fail dotstar or empty
  1894   |  5     ((((((\S)*■)\{)((■)*)?)\})■)(■){■}fail dotstar or empty
  1895   |  5     ((((((\S)*■)\{)((■)*)?)\})■)■fail dotstar or empty
  1896   |  5     ((((((\S)*■)\{)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  1897   |  5     ((((((\S)*■)\{)((.){■}){■})■)\S)(■)*fail dotstar or empty
  1898   |  5     ((((((\S)*■)\{)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  1899   |  5     ((((((\S)*■)\{)(■){■})■)\S)([^\s{])*fail dotstar or empty
  1900   |  5     ((((((\S)*■)\{)((.){■}){■})\})■)(■)*fail dotstar or empty
  1901   |  5     ((((((\S)*■)\{)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  1902   |  5     ((((((\S)*■)\{)(■){■})\})■)([^\s{])*fail dotstar or empty
  1903   |  5     ((((((\S)*■)\{)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  1904   |  5     ((((((\S)*■)\{)(■){■})\})\S)(■)*fail dotstar or empty
  1905   |  5     ((((((\S)*■)\{)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  1906   |  5     ((((((\S)*■)\{)((.){■}){■})\})\S)■fail dotstar or empty
  1907   |  5     ((((((\S)*■)\{)((.){■})?)■)■)(■)*fail dotstar or empty
  1908   |  5     ((((((\S)*■)\{)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  1909   |  5     ((((((\S)*■)\{)(■)?)■)■)([^\s{])*fail dotstar or empty
  1910   |  5     ((((((\S)*■)\{)((.){■})?)■)\S)(■){■}fail dotstar or empty
  1911   |  5     ((((((\S)*■)\{)(■)?)■)\S)(■)*fail dotstar or empty
  1912   |  5     ((((((\S)*■)\{)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  1913   |  5     ((((((\S)*■)\{)((.){■})?)■)\S)■fail dotstar or empty
  1914   |  5     ((((((\S)*■)\{)((.){■})?)\})■)(■){■}fail dotstar or empty
  1915   |  5     ((((((\S)*■)\{)(■)?)\})■)(■)*fail dotstar or empty
  1916   |  5     ((((((\S)*■)\{)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  1917   |  5     ((((((\S)*■)\{)((.){■})?)\})■)■fail dotstar or empty
  1918   |  5     ((((((\S)*■)\{)(■)?)\})\S)(■){■}fail dotstar or empty
  1919   |  5     ((((((\S)*■)\{)(■)?)\})\S)■fail dotstar or empty
  1920   |  5     ((((((\S)*■)\{)((.)*){■})■)■)(■)*fail dotstar or empty
  1921   |  5     ((((((\S)*■)\{)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  1922   |  5     ((((((\S)*■)\{)■)■)■)([^\s{])*fail dotstar or empty
  1923   |  5     ((((((\S)*■)\{)((.)*){■})■)\S)(■){■}fail dotstar or empty
  1924   |  5     ((((((\S)*■)\{)■)■)\S)(■)*fail dotstar or empty
  1925   |  5     ((((((\S)*■)\{)■)■)\S)([^\s{]){■}fail dotstar or empty
  1926   |  5     ((((((\S)*■)\{)((.)*){■})■)\S)■fail dotstar or empty
  1927   |  5     ((((((\S)*■)\{)((.)*){■})\})■)(■){■}fail dotstar or empty
  1928   |  5     ((((((\S)*■)\{)■)\})■)(■)*fail dotstar or empty
  1929   |  5     ((((((\S)*■)\{)■)\})■)([^\s{]){■}fail dotstar or empty
  1930   |  5     ((((((\S)*■)\{)((.)*){■})\})■)■fail dotstar or empty
  1931   |  5     ((((((\S)*■)\{)■)\})\S)(■){■}fail dotstar or empty
  1932   |  5     ((((((\S)*■)\{)■)\})\S)■fail dotstar or empty
  1933   |  5     ((((((\S)*■)\{)((.)*)?)■)■)(■){■}fail dotstar or empty
  1934   |  5     ((((((\S)*■)\{)((.)*)?)■)■)■fail dotstar or empty
  1935   |  5     ((((((\S)*\s)■)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  1936   |  5     ((((((\S)*\s)■)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  1937   |  5     ((((((\S)*\s)■)((■){■}){■})\})\S)(■)*fail dotstar or empty
  1938   |  5     ((((((\S)*\s)■)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  1939   |  5     ((((((\S)*\s)■)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  1940   |  5     ((((((\S)*\s)■)((■){■})?)■)\S)(■)*fail dotstar or empty
  1941   |  5     ((((((\S)*\s)■)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  1942   |  5     ((((((\S)*\s)■)((■){■})?)\})■)(■)*fail dotstar or empty
  1943   |  5     ((((((\S)*\s)■)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  1944   |  5     ((((((\S)*\s)■)((■){■})?)\})\S)(■){■}fail dotstar or empty
  1945   |  5     ((((((\S)*\s)■)((■){■})?)\})\S)■fail dotstar or empty
  1946   |  5     ((((((\S)*\s)■)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  1947   |  5     ((((((\S)*\s)■)((■)*){■})■)\S)(■)*fail dotstar or empty
  1948   |  5     ((((((\S)*\s)■)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  1949   |  5     ((((((\S)*\s)■)((■)*){■})\})■)(■)*fail dotstar or empty
  1950   |  5     ((((((\S)*\s)■)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  1951   |  5     ((((((\S)*\s)■)((■)*){■})\})\S)(■){■}fail dotstar or empty
  1952   |  5     ((((((\S)*\s)■)((■)*){■})\})\S)■fail dotstar or empty
  1953   |  5     ((((((\S)*\s)■)((■)*)?)■)■)(■)*fail dotstar or empty
  1954   |  5     ((((((\S)*\s)■)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  1955   |  5     ((((((\S)*\s)■)((■)*)?)■)\S)(■){■}fail dotstar or empty
  1956   |  5     ((((((\S)*\s)■)((■)*)?)■)\S)■fail dotstar or empty
  1957   |  5     ((((((\S)*\s)■)((■)*)?)\})■)(■){■}fail dotstar or empty
  1958   |  5     ((((((\S)*\s)■)((■)*)?)\})■)■fail dotstar or empty
  1959   |  5     ((((((\S)*\s)■)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  1960   |  5     ((((((\S)*\s)■)((.){■}){■})■)\S)(■)*fail dotstar or empty
  1961   |  5     ((((((\S)*\s)■)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  1962   |  5     ((((((\S)*\s)■)(■){■})■)\S)([^\s{])*fail dotstar or empty
  1963   |  5     ((((((\S)*\s)■)((.){■}){■})\})■)(■)*fail dotstar or empty
  1964   |  5     ((((((\S)*\s)■)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  1965   |  5     ((((((\S)*\s)■)(■){■})\})■)([^\s{])*fail dotstar or empty
  1966   |  5     ((((((\S)*\s)■)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  1967   |  5     ((((((\S)*\s)■)(■){■})\})\S)(■)*fail dotstar or empty
  1968   |  5     ((((((\S)*\s)■)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  1969   |  5     ((((((\S)*\s)■)((.){■}){■})\})\S)■fail dotstar or empty
  1970   |  5     ((((((\S)*\s)■)((.){■})?)■)■)(■)*fail dotstar or empty
  1971   |  5     ((((((\S)*\s)■)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  1972   |  5     ((((((\S)*\s)■)(■)?)■)■)([^\s{])*fail dotstar or empty
  1973   |  5     ((((((\S)*\s)■)((.){■})?)■)\S)(■){■}fail dotstar or empty
  1974   |  5     ((((((\S)*\s)■)(■)?)■)\S)(■)*fail dotstar or empty
  1975   |  5     ((((((\S)*\s)■)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  1976   |  5     ((((((\S)*\s)■)((.){■})?)■)\S)■fail dotstar or empty
  1977   |  5     ((((((\S)*\s)■)((.){■})?)\})■)(■){■}fail dotstar or empty
  1978   |  5     ((((((\S)*\s)■)(■)?)\})■)(■)*fail dotstar or empty
  1979   |  5     ((((((\S)*\s)■)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  1980   |  5     ((((((\S)*\s)■)((.){■})?)\})■)■fail dotstar or empty
  1981   |  5     ((((((\S)*\s)■)(■)?)\})\S)(■){■}fail dotstar or empty
  1982   |  5     ((((((\S)*\s)■)(■)?)\})\S)■fail dotstar or empty
  1983   |  5     ((((((\S)*\s)■)((.)*){■})■)■)(■)*fail dotstar or empty
  1984   |  5     ((((((\S)*\s)■)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  1985   |  5     ((((((\S)*\s)■)■)■)■)([^\s{])*fail dotstar or empty
  1986   |  5     ((((((\S)*\s)■)((.)*){■})■)\S)(■){■}fail dotstar or empty
  1987   |  5     ((((((\S)*\s)■)■)■)\S)(■)*fail dotstar or empty
  1988   |  5     ((((((\S)*\s)■)■)■)\S)([^\s{]){■}fail dotstar or empty
  1989   |  5     ((((((\S)*\s)■)((.)*){■})■)\S)■fail dotstar or empty
  1990   |  5     ((((((\S)*\s)■)((.)*){■})\})■)(■){■}fail dotstar or empty
  1991   |  5     ((((((\S)*\s)■)■)\})■)(■)*fail dotstar or empty
  1992   |  5     ((((((\S)*\s)■)■)\})■)([^\s{]){■}fail dotstar or empty
  1993   |  5     ((((((\S)*\s)■)((.)*){■})\})■)■fail dotstar or empty
  1994   |  5     ((((((\S)*\s)■)■)\})\S)(■){■}fail dotstar or empty
  1995   |  5     ((((((\S)*\s)■)■)\})\S)■fail dotstar or empty
  1996   |  5     ((((((\S)*\s)■)((.)*)?)■)■)(■){■}fail dotstar or empty
  1997   |  5     ((((((\S)*\s)■)((.)*)?)■)■)■fail dotstar or empty
  1998   |  5     ((((((\S)*\s)\{)((■){■}){■})■)■)([^\s{])*fail dotstar or empty
  1999   |  5     ((((((\S)*\s)\{)((■){■}){■})■)\S)(■)*fail dotstar or empty
  2000   |  5     ((((((\S)*\s)\{)((■){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  2001   |  5     ((((((\S)*\s)\{)((■){■}){■})\})■)(■)*fail dotstar or empty
  2002   |  5     ((((((\S)*\s)\{)((■){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  2003   |  5     ((((((\S)*\s)\{)((■){■}){■})\})\S)(■){■}fail dotstar or empty
  2004   |  5     ((((((\S)*\s)\{)((■){■}){■})\})\S)■fail dotstar or empty
  2005   |  5     ((((((\S)*\s)\{)((■){■})?)■)■)(■)*fail dotstar or empty
  2006   |  5     ((((((\S)*\s)\{)((■){■})?)■)■)([^\s{]){■}fail dotstar or empty
  2007   |  5     ((((((\S)*\s)\{)((■){■})?)■)\S)(■){■}fail dotstar or empty
  2008   |  5     ((((((\S)*\s)\{)((■){■})?)■)\S)■fail dotstar or empty
  2009   |  5     ((((((\S)*\s)\{)((■){■})?)\})■)(■){■}fail dotstar or empty
  2010   |  5     ((((((\S)*\s)\{)((■){■})?)\})■)■fail dotstar or empty
  2011   |  5     ((((((\S)*\s)\{)((■)*){■})■)■)(■)*fail dotstar or empty
  2012   |  5     ((((((\S)*\s)\{)((■)*){■})■)■)([^\s{]){■}fail dotstar or empty
  2013   |  5     ((((((\S)*\s)\{)((■)*){■})■)\S)(■){■}fail dotstar or empty
  2014   |  5     ((((((\S)*\s)\{)((■)*){■})■)\S)■fail dotstar or empty
  2015   |  5     ((((((\S)*\s)\{)((■)*){■})\})■)(■){■}fail dotstar or empty
  2016   |  5     ((((((\S)*\s)\{)((■)*){■})\})■)■fail dotstar or empty
  2017   |  5     ((((((\S)*\s)\{)((■)*)?)■)■)(■){■}fail dotstar or empty
  2018   |  5     ((((((\S)*\s)\{)((■)*)?)■)■)■fail dotstar or empty
  2019   |  5     ((((((\S)*\s)\{)((.){■}){■})■)■)(■)*fail dotstar or empty
  2020   |  5     ((((((\S)*\s)\{)((.){■}){■})■)■)([^\s{]){■}fail dotstar or empty
  2021   |  5     ((((((\S)*\s)\{)(■){■})■)■)([^\s{])*fail dotstar or empty
  2022   |  5     ((((((\S)*\s)\{)((.){■}){■})■)\S)(■){■}fail dotstar or empty
  2023   |  5     ((((((\S)*\s)\{)(■){■})■)\S)(■)*fail dotstar or empty
  2024   |  5     ((((((\S)*\s)\{)(■){■})■)\S)([^\s{]){■}fail dotstar or empty
  2025   |  5     ((((((\S)*\s)\{)((.){■}){■})■)\S)■fail dotstar or empty
  2026   |  5     ((((((\S)*\s)\{)((.){■}){■})\})■)(■){■}fail dotstar or empty
  2027   |  5     ((((((\S)*\s)\{)(■){■})\})■)(■)*fail dotstar or empty
  2028   |  5     ((((((\S)*\s)\{)(■){■})\})■)([^\s{]){■}fail dotstar or empty
  2029   |  5     ((((((\S)*\s)\{)((.){■}){■})\})■)■fail dotstar or empty
  2030   |  5     ((((((\S)*\s)\{)(■){■})\})\S)(■){■}fail dotstar or empty
  2031   |  5     ((((((\S)*\s)\{)(■){■})\})\S)■fail dotstar or empty
  2032   |  5     ((((((\S)*\s)\{)((.){■})?)■)■)(■){■}fail dotstar or empty
  2033   |  5     ((((((\S)*\s)\{)(■)?)■)■)(■)*fail dotstar or empty
  2034   |  5     ((((((\S)*\s)\{)(■)?)■)■)([^\s{]){■}fail dotstar or empty
  2035   |  5     ((((((\S)*\s)\{)((.){■})?)■)■)■fail dotstar or empty
  2036   |  5     ((((((\S)*\s)\{)(■)?)■)\S)(■){■}fail dotstar or empty
  2037   |  5     ((((((\S)*\s)\{)(■)?)■)\S)■fail dotstar or empty
  2038   |  5     ((((((\S)*\s)\{)(■)?)\})■)(■){■}fail dotstar or empty
  2039   |  5     ((((((\S)*\s)\{)(■)?)\})■)■fail dotstar or empty
  2040   |  5     ((((((\S)*\s)\{)((.)*){■})■)■)(■){■}fail dotstar or empty
  2041   |  5     ((((((\S)*\s)\{)■)■)■)(■)*fail dotstar or empty
  2042   |  5     ((((((\S)*\s)\{)■)■)■)([^\s{]){■}fail dotstar or empty
  2043   |  5     ((((((\S)*\s)\{)((.)*){■})■)■)■fail dotstar or empty
  2044   |  5     ((((((\S)*\s)\{)■)■)\S)(■){■}fail dotstar or empty
  2045   |  5     ((((((\S)*\s)\{)■)■)\S)■fail dotstar or empty
  2046   |  5     ((((((\S)*\s)\{)■)\})■)(■){■}fail dotstar or empty
  2047   |  5     ((((((\S)*\s)\{)■)\})■)■fail dotstar or empty
  2048   |  5     ((((((■){■}■)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2049   |  5     ((((((■){■}\s)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2050   |  5     ((((((■){■}\s)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2051   |  5     ((((((■){■}\s)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2052   |  5     ((((((■){■}\s)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2053   |  5     ((((((■){■}\s)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  2054   |  5     ((((((■){■}\s)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2055   |  5     ((((((■){■}\s)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2056   |  5     ((((((■)*■)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2057   |  5     ((((((■)*■)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2058   |  5     ((((((■)*■)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2059   |  5     ((((((■)*■)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2060   |  5     ((((((■)*■)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  2061   |  5     ((((((■)*■)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2062   |  5     ((((((■)*■)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2063   |  5     ((((((■)*\s)\{)((■){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2064   |  5     ((((((■)*\s)\{)((■)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2065   |  5     ((((((■)*\s)\{)((■)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2066   |  5     ((((((■)*\s)\{)((■)*)?)(■■))\S)(■)*fail dotstar or empty
  2067   |  5     ((((((■)*\s)\{)((■)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2068   |  5     ((((((■)*\s)\{)((■)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2069   |  5     ((((((■)*\s)\{)((.){■}){■})(■■))\S)([^\s{])*fail dotstar or empty
  2070   |  5     ((((((■)*\s)\{)((.){■})?)(■■))■)([^\s{])*fail dotstar or empty
  2071   |  5     ((((((■)*\s)\{)((.){■})?)(■■))\S)(■)*fail dotstar or empty
  2072   |  5     ((((((■)*\s)\{)((.){■})?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2073   |  5     ((((((■)*\s)\{)(■)?)(■■))\S)([^\s{])*fail dotstar or empty
  2074   |  5     ((((((■)*\s)\{)((.){■})?)(■))\S)([^\s{])*fail dotstar or empty
  2075   |  5     ((((((■)*\s)\{)((.)*){■})(■■))■)([^\s{])*fail dotstar or empty
  2076   |  5     ((((((■)*\s)\{)((.)*){■})(■■))\S)(■)*fail dotstar or empty
  2077   |  5     ((((((■)*\s)\{)((.)*){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  2078   |  5     ((((((■)*\s)\{)■)(■■))\S)([^\s{])*fail dotstar or empty
  2079   |  5     ((((((■)*\s)\{)((.)*){■})(■))\S)([^\s{])*fail dotstar or empty
  2080   |  5     ((((((■)*\s)\{)((.)*)?)(■■))■)(■)*fail dotstar or empty
  2081   |  5     ((((((■)*\s)\{)((.)*)?)(■■))■)([^\s{]){■}fail dotstar or empty
  2082   |  5     ((((((■)*\s)\{)((.)*)?)(■))■)([^\s{])*fail dotstar or empty
  2083   |  5     ((((((■)*\s)\{)((.)*)?)(■■))\S)(■){■}fail dotstar or empty
  2084   |  5     ((((((■)*\s)\{)((.)*)?)(■))\S)(■)*fail dotstar or empty
  2085   |  5     ((((((■)*\s)\{)((.)*)?)(■))\S)([^\s{]){■}fail dotstar or empty
  2086   |  5     ((((((■)*\s)\{)((.)*)?)(■■))\S)■fail dotstar or empty
  2087   |  5     ((((((\S){■}■)■)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2088   |  5     ((((((\S){■}■)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2089   |  5     ((((((\S){■}■)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2090   |  5     ((((((\S){■}■)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2091   |  5     ((((((\S){■}■)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2092   |  5     ((((((\S){■}■)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  2093   |  5     ((((((\S){■}■)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2094   |  5     (((((■■)\{)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2095   |  5     ((((((\S){■}■)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2096   |  5     ((((((\S){■}\s)■)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2097   |  5     ((((((\S){■}\s)■)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2098   |  5     ((((((\S){■}\s)■)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2099   |  5     ((((((\S){■}\s)■)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2100   |  5     ((((((\S){■}\s)■)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  2101   |  5     ((((((\S){■}\s)■)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2102   |  5     ((((((\S){■}\s)■)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2103   |  5     ((((((\S){■}\s)\{)((■){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2104   |  5     ((((((\S){■}\s)\{)((■)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2105   |  5     ((((((\S){■}\s)\{)((■)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2106   |  5     ((((((\S){■}\s)\{)((■)*)?)(■■))\S)(■)*fail dotstar or empty
  2107   |  5     ((((((\S){■}\s)\{)((■)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2108   |  5     (((((■\s)\{)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2109   |  5     ((((((\S){■}\s)\{)((■)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2110   |  5     ((((((\S){■}\s)\{)((.){■}){■})(■■))\S)([^\s{])*fail dotstar or empty
  2111   |  5     ((((((\S){■}\s)\{)((.){■})?)(■■))■)([^\s{])*fail dotstar or empty
  2112   |  5     ((((((\S){■}\s)\{)((.){■})?)(■■))\S)(■)*fail dotstar or empty
  2113   |  5     ((((((\S){■}\s)\{)((.){■})?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2114   |  5     (((((■\s)\{)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2115   |  5     ((((((\S){■}\s)\{)(■)?)(■■))\S)([^\s{])*fail dotstar or empty
  2116   |  5     ((((((\S){■}\s)\{)((.){■})?)(■))\S)([^\s{])*fail dotstar or empty
  2117   |  5     ((((((\S){■}\s)\{)((.)*){■})(■■))■)([^\s{])*fail dotstar or empty
  2118   |  5     ((((((\S){■}\s)\{)((.)*){■})(■■))\S)(■)*fail dotstar or empty
  2119   |  5     ((((((\S){■}\s)\{)((.)*){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  2120   |  5     (((((■\s)\{)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2121   |  5     ((((((\S){■}\s)\{)■)(■■))\S)([^\s{])*fail dotstar or empty
  2122   |  5     ((((((\S){■}\s)\{)((.)*){■})(■))\S)([^\s{])*fail dotstar or empty
  2123   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■))■)(■)*fail dotstar or empty
  2124   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■))■)([^\s{]){■}fail dotstar or empty
  2125   |  5     (((((■\s)\{)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2126   |  5     ((((((\S){■}\s)\{)((.)*)?)(■))■)([^\s{])*fail dotstar or empty
  2127   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■))\S)(■){■}fail dotstar or empty
  2128   |  5     (((((■\s)\{)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  2129   |  5     ((((((\S){■}\s)\{)((.)*)?)(■))\S)(■)*fail dotstar or empty
  2130   |  5     (((((■\s)\{)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2131   |  5     ((((((\S){■}\s)\{)((.)*)?)(■))\S)([^\s{]){■}fail dotstar or empty
  2132   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■))\S)■fail dotstar or empty
  2133   |  5     (((((■\s)\{)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2134   |  5     ((((((\S)*■)■)((■)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  2135   |  5     ((((((\S)*■)■)((.){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2136   |  5     ((((((\S)*■)■)((.)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2137   |  5     ((((((\S)*■)■)((.)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2138   |  5     ((((((\S)*■)■)((.)*)?)(■■))\S)(■)*fail dotstar or empty
  2139   |  5     ((((((\S)*■)■)((.)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2140   |  5     ((((((\S)*■)■)((.)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2141   |  5     ((((((\S)*■)\{)((■){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2142   |  5     ((((((\S)*■)\{)((■)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2143   |  5     ((((((\S)*■)\{)((■)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2144   |  5     ((((((\S)*■)\{)((■)*)?)(■■))\S)(■)*fail dotstar or empty
  2145   |  5     ((((((\S)*■)\{)((■)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2146   |  5     ((((((\S)*■)\{)((■)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2147   |  5     ((((((\S)*■)\{)((.){■}){■})(■■))\S)([^\s{])*fail dotstar or empty
  2148   |  5     ((((((\S)*■)\{)((.){■})?)(■■))■)([^\s{])*fail dotstar or empty
  2149   |  5     ((((((\S)*■)\{)((.){■})?)(■■))\S)(■)*fail dotstar or empty
  2150   |  5     ((((((\S)*■)\{)((.){■})?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2151   |  5     ((((((\S)*■)\{)(■)?)(■■))\S)([^\s{])*fail dotstar or empty
  2152   |  5     ((((((\S)*■)\{)((.){■})?)(■))\S)([^\s{])*fail dotstar or empty
  2153   |  5     ((((((\S)*■)\{)((.)*){■})(■■))■)([^\s{])*fail dotstar or empty
  2154   |  5     ((((((\S)*■)\{)((.)*){■})(■■))\S)(■)*fail dotstar or empty
  2155   |  5     ((((((\S)*■)\{)((.)*){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  2156   |  5     ((((((\S)*■)\{)■)(■■))\S)([^\s{])*fail dotstar or empty
  2157   |  5     ((((((\S)*■)\{)((.)*){■})(■))\S)([^\s{])*fail dotstar or empty
  2158   |  5     ((((((\S)*■)\{)((.)*)?)(■■))■)(■)*fail dotstar or empty
  2159   |  5     ((((((\S)*■)\{)((.)*)?)(■■))■)([^\s{]){■}fail dotstar or empty
  2160   |  5     ((((((\S)*■)\{)((.)*)?)(■))■)([^\s{])*fail dotstar or empty
  2161   |  5     ((((((\S)*■)\{)((.)*)?)(■■))\S)(■){■}fail dotstar or empty
  2162   |  5     ((((((\S)*■)\{)((.)*)?)(■))\S)(■)*fail dotstar or empty
  2163   |  5     ((((((\S)*■)\{)((.)*)?)(■))\S)([^\s{]){■}fail dotstar or empty
  2164   |  5     ((((((\S)*■)\{)((.)*)?)(■■))\S)■fail dotstar or empty
  2165   |  5     ((((((\S)*\s)■)((■){■})?)(■■))\S)([^\s{])*fail dotstar or empty
  2166   |  5     ((((((\S)*\s)■)((■)*){■})(■■))\S)([^\s{])*fail dotstar or empty
  2167   |  5     ((((((\S)*\s)■)((■)*)?)(■■))■)([^\s{])*fail dotstar or empty
  2168   |  5     ((((((\S)*\s)■)((■)*)?)(■■))\S)(■)*fail dotstar or empty
  2169   |  5     ((((((\S)*\s)■)((■)*)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2170   |  5     ((((((\S)*\s)■)((■)*)?)(■))\S)([^\s{])*fail dotstar or empty
  2171   |  5     ((((((\S)*\s)■)((.){■}){■})(■■))\S)([^\s{])*fail dotstar or empty
  2172   |  5     ((((((\S)*\s)■)((.){■})?)(■■))■)([^\s{])*fail dotstar or empty
  2173   |  5     ((((((\S)*\s)■)((.){■})?)(■■))\S)(■)*fail dotstar or empty
  2174   |  5     ((((((\S)*\s)■)((.){■})?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2175   |  5     ((((((\S)*\s)■)(■)?)(■■))\S)([^\s{])*fail dotstar or empty
  2176   |  5     ((((((\S)*\s)■)((.){■})?)(■))\S)([^\s{])*fail dotstar or empty
  2177   |  5     ((((((\S)*\s)■)((.)*){■})(■■))■)([^\s{])*fail dotstar or empty
  2178   |  5     ((((((\S)*\s)■)((.)*){■})(■■))\S)(■)*fail dotstar or empty
  2179   |  5     ((((((\S)*\s)■)((.)*){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  2180   |  5     ((((((\S)*\s)■)■)(■■))\S)([^\s{])*fail dotstar or empty
  2181   |  5     ((((((\S)*\s)■)((.)*){■})(■))\S)([^\s{])*fail dotstar or empty
  2182   |  5     ((((((\S)*\s)■)((.)*)?)(■■))■)(■)*fail dotstar or empty
  2183   |  5     ((((((\S)*\s)■)((.)*)?)(■■))■)([^\s{]){■}fail dotstar or empty
  2184   |  5     ((((((\S)*\s)■)((.)*)?)(■))■)([^\s{])*fail dotstar or empty
  2185   |  5     ((((((\S)*\s)■)((.)*)?)(■■))\S)(■){■}fail dotstar or empty
  2186   |  5     ((((((\S)*\s)■)((.)*)?)(■))\S)(■)*fail dotstar or empty
  2187   |  5     ((((((\S)*\s)■)((.)*)?)(■))\S)([^\s{]){■}fail dotstar or empty
  2188   |  5     ((((((\S)*\s)■)((.)*)?)(■■))\S)■fail dotstar or empty
  2189   |  5     ((((((\S)*\s)\{)((■){■}){■})(■■))\S)([^\s{])*fail dotstar or empty
  2190   |  5     ((((((\S)*\s)\{)((■){■})?)(■■))■)([^\s{])*fail dotstar or empty
  2191   |  5     ((((((\S)*\s)\{)((■){■})?)(■■))\S)(■)*fail dotstar or empty
  2192   |  5     ((((((\S)*\s)\{)((■){■})?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2193   |  5     ((((((\S)*\s)\{)((■){■})?)(■))\S)([^\s{])*fail dotstar or empty
  2194   |  5     ((((((\S)*\s)\{)((■)*){■})(■■))■)([^\s{])*fail dotstar or empty
  2195   |  5     ((((((\S)*\s)\{)((■)*){■})(■■))\S)(■)*fail dotstar or empty
  2196   |  5     ((((((\S)*\s)\{)((■)*){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  2197   |  5     ((((((\S)*\s)\{)((■)*){■})(■))\S)([^\s{])*fail dotstar or empty
  2198   |  5     ((((((\S)*\s)\{)((■)*)?)(■■))■)(■)*fail dotstar or empty
  2199   |  5     ((((((\S)*\s)\{)((■)*)?)(■■))■)([^\s{]){■}fail dotstar or empty
  2200   |  5     ((((((\S)*\s)\{)((■)*)?)(■))■)([^\s{])*fail dotstar or empty
  2201   |  5     ((((((\S)*\s)\{)((■)*)?)(■■))\S)(■){■}fail dotstar or empty
  2202   |  5     ((((((\S)*\s)\{)((■)*)?)(■))\S)(■)*fail dotstar or empty
  2203   |  5     ((((((\S)*\s)\{)((■)*)?)(■))\S)([^\s{]){■}fail dotstar or empty
  2204   |  5     ((((((\S)*\s)\{)((■)*)?)(■■))\S)■fail dotstar or empty
  2205   |  5     ((((((\S)*\s)\{)((.){■}){■})(■■))■)([^\s{])*fail dotstar or empty
  2206   |  5     ((((((\S)*\s)\{)((.){■}){■})(■■))\S)(■)*fail dotstar or empty
  2207   |  5     ((((((\S)*\s)\{)((.){■}){■})(■■))\S)([^\s{]){■}fail dotstar or empty
  2208   |  5     ((((((\S)*\s)\{)(■){■})(■■))\S)([^\s{])*fail dotstar or empty
  2209   |  5     ((((((\S)*\s)\{)((.){■}){■})(■))\S)([^\s{])*fail dotstar or empty
  2210   |  5     ((((((\S)*\s)\{)((.){■})?)(■■))■)(■)*fail dotstar or empty
  2211   |  5     ((((((\S)*\s)\{)((.){■})?)(■■))■)([^\s{]){■}fail dotstar or empty
  2212   |  5     ((((((\S)*\s)\{)(■)?)(■■))■)([^\s{])*fail dotstar or empty
  2213   |  5     ((((((\S)*\s)\{)((.){■})?)(■))■)([^\s{])*fail dotstar or empty
  2214   |  5     ((((((\S)*\s)\{)((.){■})?)(■■))\S)(■){■}fail dotstar or empty
  2215   |  5     ((((((\S)*\s)\{)(■)?)(■■))\S)(■)*fail dotstar or empty
  2216   |  5     ((((((\S)*\s)\{)((.){■})?)(■))\S)(■)*fail dotstar or empty
  2217   |  5     ((((((\S)*\s)\{)(■)?)(■■))\S)([^\s{]){■}fail dotstar or empty
  2218   |  5     ((((((\S)*\s)\{)((.){■})?)(■))\S)([^\s{]){■}fail dotstar or empty
  2219   |  5     ((((((\S)*\s)\{)((.){■})?)(■■))\S)■fail dotstar or empty
  2220   |  5     ((((((\S)*\s)\{)(■)?)(■))\S)([^\s{])*fail dotstar or empty
  2221   |  5     ((((((\S)*\s)\{)((.)*){■})(■■))■)(■)*fail dotstar or empty
  2222   |  5     ((((((\S)*\s)\{)((.)*){■})(■■))■)([^\s{]){■}fail dotstar or empty
  2223   |  5     ((((((\S)*\s)\{)■)(■■))■)([^\s{])*fail dotstar or empty
  2224   |  5     ((((((\S)*\s)\{)((.)*){■})(■))■)([^\s{])*fail dotstar or empty
  2225   |  5     ((((((\S)*\s)\{)((.)*){■})(■■))\S)(■){■}fail dotstar or empty
  2226   |  5     ((((((\S)*\s)\{)■)(■■))\S)(■)*fail dotstar or empty
  2227   |  5     ((((((\S)*\s)\{)((.)*){■})(■))\S)(■)*fail dotstar or empty
  2228   |  5     ((((((\S)*\s)\{)■)(■■))\S)([^\s{]){■}fail dotstar or empty
  2229   |  5     ((((((\S)*\s)\{)((.)*){■})(■))\S)([^\s{]){■}fail dotstar or empty
  2230   |  5     ((((((\S)*\s)\{)((.)*){■})(■■))\S)■fail dotstar or empty
  2231   |  5     ((((((\S)*\s)\{)■)(■))\S)([^\s{])*fail dotstar or empty
  2232   |  5     ((((((\S)*\s)\{)((.)*)?)(■■))■)(■){■}fail dotstar or empty
  2233   |  5     ((((((\S)*\s)\{)((.)*)?)(■))■)(■)*fail dotstar or empty
  2234   |  5     ((((((\S)*\s)\{)((.)*)?)(■))■)([^\s{]){■}fail dotstar or empty
  2235   |  5     ((((((\S)*\s)\{)((.)*)?)(■■))■)■fail dotstar or empty
  2236   |  5     ((((((\S)*\s)\{)((.)*)?)(■))\S)(■){■}fail dotstar or empty
  2237   |  5     ((((((\S)*\s)\{)((.)*)?)(■))\S)■fail dotstar or empty
  2238   |  5     ((((((■){■}\s)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2239   |  5     ((((((■)*■)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2240   |  5     ((((((■)*\s)\{)((■)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2241   |  5     ((((((■)*\s)\{)((.){■})?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2242   |  5     ((((((■)*\s)\{)((.)*){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  2243   |  5     ((((((■)*\s)\{)((.)*)?)((■■)■))■)([^\s{])*fail dotstar or empty
  2244   |  5     ((((((■)*\s)\{)((.)*)?)((■■)■))\S)(■)*fail dotstar or empty
  2245   |  5     ((((((■)*\s)\{)((.)*)?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2246   |  5     ((((((■)*\s)\{)((.)*)?)((■)■))\S)([^\s{])*fail dotstar or empty
  2247   |  5     ((((((\S){■}■)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2248   |  5     ((((((\S){■}\s)■)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2249   |  5     ((((((\S){■}\s)\{)((■)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2250   |  5     ((((((\S){■}\s)\{)((.){■})?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2251   |  5     ((((((\S){■}\s)\{)((.)*){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  2252   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)■))■)([^\s{])*fail dotstar or empty
  2253   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)■))\S)(■)*fail dotstar or empty
  2254   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2255   |  5     (((((■\s)\{)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2256   |  5     ((((((\S){■}\s)\{)((.)*)?)((■)■))\S)([^\s{])*fail dotstar or empty
  2257   |  5     ((((((\S)*■)■)((.)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2258   |  5     ((((((\S)*■)\{)((■)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2259   |  5     ((((((\S)*■)\{)((.){■})?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2260   |  5     ((((((\S)*■)\{)((.)*){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  2261   |  5     ((((((\S)*■)\{)((.)*)?)((■■)■))■)([^\s{])*fail dotstar or empty
  2262   |  5     ((((((\S)*■)\{)((.)*)?)((■■)■))\S)(■)*fail dotstar or empty
  2263   |  5     ((((((\S)*■)\{)((.)*)?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2264   |  5     ((((((\S)*■)\{)((.)*)?)((■)■))\S)([^\s{])*fail dotstar or empty
  2265   |  5     ((((((\S)*\s)■)((■)*)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2266   |  5     ((((((\S)*\s)■)((.){■})?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2267   |  5     ((((((\S)*\s)■)((.)*){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  2268   |  5     ((((((\S)*\s)■)((.)*)?)((■■)■))■)([^\s{])*fail dotstar or empty
  2269   |  5     ((((((\S)*\s)■)((.)*)?)((■■)■))\S)(■)*fail dotstar or empty
  2270   |  5     ((((((\S)*\s)■)((.)*)?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2271   |  5     ((((((\S)*\s)■)((.)*)?)((■)■))\S)([^\s{])*fail dotstar or empty
  2272   |  5     ((((((\S)*\s)\{)((■){■})?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2273   |  5     ((((((\S)*\s)\{)((■)*){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  2274   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)■))■)([^\s{])*fail dotstar or empty
  2275   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)■))\S)(■)*fail dotstar or empty
  2276   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2277   |  5     ((((((\S)*\s)\{)((■)*)?)((■)■))\S)([^\s{])*fail dotstar or empty
  2278   |  5     ((((((\S)*\s)\{)((.){■}){■})((■■)■))\S)([^\s{])*fail dotstar or empty
  2279   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)■))■)([^\s{])*fail dotstar or empty
  2280   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)■))\S)(■)*fail dotstar or empty
  2281   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2282   |  5     ((((((\S)*\s)\{)(■)?)((■■)■))\S)([^\s{])*fail dotstar or empty
  2283   |  5     ((((((\S)*\s)\{)((.){■})?)((■)■))\S)([^\s{])*fail dotstar or empty
  2284   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)■))■)([^\s{])*fail dotstar or empty
  2285   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)■))\S)(■)*fail dotstar or empty
  2286   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)■))\S)([^\s{]){■}fail dotstar or empty
  2287   |  5     ((((((\S)*\s)\{)■)((■■)■))\S)([^\s{])*fail dotstar or empty
  2288   |  5     ((((((\S)*\s)\{)((.)*){■})((■)■))\S)([^\s{])*fail dotstar or empty
  2289   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■))■)(■)*fail dotstar or empty
  2290   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■))■)([^\s{]){■}fail dotstar or empty
  2291   |  5     ((((((\S)*\s)\{)((.)*)?)((■)■))■)([^\s{])*fail dotstar or empty
  2292   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■))\S)(■){■}fail dotstar or empty
  2293   |  5     ((((((\S)*\s)\{)((.)*)?)((■)■))\S)(■)*fail dotstar or empty
  2294   |  5     ((((((\S)*\s)\{)((.)*)?)((■)■))\S)([^\s{]){■}fail dotstar or empty
  2295   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■))\S)■fail dotstar or empty
  2296   |  5     ((((((■)*\s)\{)((.)*)?)(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2297   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2298   |  5     ((((((\S)*■)\{)((.)*)?)(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2299   |  5     ((((((\S)*\s)■)((.)*)?)(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2300   |  5     ((((((\S)*\s)\{)((■)*)?)(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2301   |  5     ((((((\S)*\s)\{)((.){■})?)(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2302   |  5     ((((((\S)*\s)\{)((.)*){■})(((■■)■)■))\S)([^\s{])*fail dotstar or empty
  2303   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)■))■)([^\s{])*fail dotstar or empty
  2304   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)■))\S)(■)*fail dotstar or empty
  2305   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)■))\S)([^\s{]){■}fail dotstar or empty
  2306   |  5     ((((((\S)*\s)\{)((.)*)?)(((■)■)■))\S)([^\s{])*fail dotstar or empty
  2307   |  5     ((((((\S)*\s)\{)((.)*)?)((((■■)■)■)■))\S)([^\s{])*fail dot
  2308   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)■)■)■))\S)([^\s{])*fail dot
  2309   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}■)■)■))\S)([^\s{])*fail dot
  2310   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)(■■))■))\S)([^\s{])*fail dot
  2311   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)(■|■))■))\S)([^\s{])*fail dot
  2312   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)(■){■})■))\S)([^\s{])*fail dot
  2313   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)(■■)))\S)([^\s{])*fail dot
  2314   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)(■|■)))\S)([^\s{])*fail dot
  2315   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)(■){■}))\S)([^\s{])*fail dot
  2316   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2317   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2318   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2319   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2320   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2321   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2322   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)■)■))\S)([^\s{])*fail dotstar or empty
  2323   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)■))■)([^\s{])*fail dotstar or empty
  2324   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)■))\S)(■)*fail dotstar or empty
  2325   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)■))\S)([^\s{]){■}fail dotstar or empty
  2326   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)■)■))\S)([^\s{])*fail dot
  2327   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)■)■))\S)([^\s{])*fail dot
  2328   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)■)■))\S)([^\s{])*fail dot
  2329   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)(■■))■))\S)([^\s{])*fail dot
  2330   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)(■|■))■))\S)([^\s{])*fail dot
  2331   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)(■){■})■))\S)([^\s{])*fail dot
  2332   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)(■■)))\S)([^\s{])*fail dot
  2333   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)(■|■)))\S)([^\s{])*fail dot
  2334   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)(■){■}))\S)([^\s{])*fail dot
  2335   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2336   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2337   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2338   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2339   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2340   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2341   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}■)■))\S)([^\s{])*fail dotstar or empty
  2342   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)■))■)([^\s{])*fail dotstar or empty
  2343   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)■))\S)(■)*fail dotstar or empty
  2344   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)■))\S)([^\s{]){■}fail dotstar or empty
  2345   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}■)■))\S)([^\s{])*fail dot
  2346   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}■)■))\S)([^\s{])*fail dot
  2347   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}■)■))\S)([^\s{])*fail dot
  2348   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}(■■))■))\S)([^\s{])*fail dot
  2349   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}(■|■))■))\S)([^\s{])*fail dot
  2350   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}(■){■})■))\S)([^\s{])*fail dot
  2351   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)(■■)))\S)([^\s{])*fail dot
  2352   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)(■|■)))\S)([^\s{])*fail dot
  2353   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)(■){■}))\S)([^\s{])*fail dot
  2354   |  5     ((((((■)*\s)\{)((.)*)?)((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2355   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2356   |  5     ((((((\S)*■)\{)((.)*)?)((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2357   |  5     ((((((\S)*\s)■)((.)*)?)((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2358   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2359   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2360   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)(■■)))\S)([^\s{])*fail dotstar or empty
  2361   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■■)))■)([^\s{])*fail dotstar or empty
  2362   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■■)))\S)(■)*fail dotstar or empty
  2363   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■■)))\S)([^\s{]){■}fail dotstar or empty
  2364   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■)))\S)([^\s{])*fail dotstar or empty
  2365   |  5     ((((((■)*\s)\{)((.)*)?)((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2366   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2367   |  5     ((((((\S)*■)\{)((.)*)?)((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2368   |  5     ((((((\S)*\s)■)((.)*)?)((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2369   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2370   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2371   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2372   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■|■)))■)([^\s{])*fail dotstar or empty
  2373   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■|■)))\S)(■)*fail dotstar or empty
  2374   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■|■)))\S)([^\s{]){■}fail dotstar or empty
  2375   |  5     ((((((■)*\s)\{)((.)*)?)((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2376   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2377   |  5     ((((((\S)*■)\{)((.)*)?)((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2378   |  5     ((((((\S)*\s)■)((.)*)?)((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2379   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2380   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2381   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2382   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■){■}))■)([^\s{])*fail dotstar or empty
  2383   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■){■}))\S)(■)*fail dotstar or empty
  2384   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■){■}))\S)([^\s{]){■}fail dotstar or empty
  2385   |  5     ((((((■){■}\s)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2386   |  5     ((((((■)*■)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2387   |  5     ((((((■)*\s)\{)((■)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2388   |  5     ((((((■)*\s)\{)((.){■})?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2389   |  5     ((((((■)*\s)\{)((.)*){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  2390   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)■))■)([^\s{])*fail dotstar or empty
  2391   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)■))\S)(■)*fail dotstar or empty
  2392   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2393   |  5     ((((((\S){■}■)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2394   |  5     ((((((\S){■}\s)■)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2395   |  5     ((((((\S){■}\s)\{)((■)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2396   |  5     ((((((\S){■}\s)\{)((.){■})?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2397   |  5     ((((((\S){■}\s)\{)((.)*){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  2398   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)■))■)([^\s{])*fail dotstar or empty
  2399   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)■))\S)(■)*fail dotstar or empty
  2400   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2401   |  5     (((((■\s)\{)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2402   |  5     ((((((\S)*■)■)((.)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2403   |  5     ((((((\S)*■)\{)((■)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2404   |  5     ((((((\S)*■)\{)((.){■})?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2405   |  5     ((((((\S)*■)\{)((.)*){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  2406   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)■))■)([^\s{])*fail dotstar or empty
  2407   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)■))\S)(■)*fail dotstar or empty
  2408   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2409   |  5     ((((((\S)*\s)■)((■)*)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2410   |  5     ((((((\S)*\s)■)((.){■})?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2411   |  5     ((((((\S)*\s)■)((.)*){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  2412   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)■))■)([^\s{])*fail dotstar or empty
  2413   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)■))\S)(■)*fail dotstar or empty
  2414   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2415   |  5     ((((((\S)*\s)\{)((■){■})?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2416   |  5     ((((((\S)*\s)\{)((■)*){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  2417   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)■))■)([^\s{])*fail dotstar or empty
  2418   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)■))\S)(■)*fail dotstar or empty
  2419   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2420   |  5     ((((((\S)*\s)\{)((.){■}){■})((■|■)■))\S)([^\s{])*fail dotstar or empty
  2421   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)■))■)([^\s{])*fail dotstar or empty
  2422   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)■))\S)(■)*fail dotstar or empty
  2423   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2424   |  5     ((((((\S)*\s)\{)(■)?)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2425   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)■))■)([^\s{])*fail dotstar or empty
  2426   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)■))\S)(■)*fail dotstar or empty
  2427   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2428   |  5     ((((((\S)*\s)\{)■)((■|■)■))\S)([^\s{])*fail dotstar or empty
  2429   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■))■)(■)*fail dotstar or empty
  2430   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■))■)([^\s{]){■}fail dotstar or empty
  2431   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■))\S)(■){■}fail dotstar or empty
  2432   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■))\S)■fail dotstar or empty
  2433   |  5     ((((((■)*\s)\{)((.)*)?)((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2434   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2435   |  5     ((((((\S)*■)\{)((.)*)?)((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2436   |  5     ((((((\S)*\s)■)((.)*)?)((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2437   |  5     ((((((\S)*\s)\{)((■)*)?)((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2438   |  5     ((((((\S)*\s)\{)((.){■})?)((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2439   |  5     ((((((\S)*\s)\{)((.)*){■})((■■|■)■))\S)([^\s{])*fail dotstar or empty
  2440   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)■))■)([^\s{])*fail dotstar or empty
  2441   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)■))\S)(■)*fail dotstar or empty
  2442   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)■))\S)([^\s{]){■}fail dotstar or empty
  2443   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■|■)■))\S)([^\s{])*fail dot
  2444   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■|■)■))\S)([^\s{])*fail dot
  2445   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■|■)■))\S)([^\s{])*fail dot
  2446   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■■)■))\S)([^\s{])*fail dot
  2447   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|(■|■))■))\S)([^\s{])*fail dot
  2448   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|(■){■})■))\S)([^\s{])*fail dot
  2449   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)(■■)))\S)([^\s{])*fail dot
  2450   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)(■|■)))\S)([^\s{])*fail dot
  2451   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)(■){■}))\S)([^\s{])*fail dot
  2452   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2453   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2454   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2455   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2456   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2457   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2458   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)|■)■))\S)([^\s{])*fail dotstar or empty
  2459   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)■))■)([^\s{])*fail dotstar or empty
  2460   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)■))\S)(■)*fail dotstar or empty
  2461   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)■))\S)([^\s{]){■}fail dotstar or empty
  2462   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)|■)■))\S)([^\s{])*fail dot
  2463   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)|■)■))\S)([^\s{])*fail dot
  2464   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)|■)■))\S)([^\s{])*fail dot
  2465   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■■)■))\S)([^\s{])*fail dot
  2466   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|(■|■))■))\S)([^\s{])*fail dot
  2467   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|(■){■})■))\S)([^\s{])*fail dot
  2468   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)(■■)))\S)([^\s{])*fail dot
  2469   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)(■|■)))\S)([^\s{])*fail dot
  2470   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)(■){■}))\S)([^\s{])*fail dot
  2471   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2472   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2473   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2474   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2475   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2476   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2477   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}|■)■))\S)([^\s{])*fail dotstar or empty
  2478   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)■))■)([^\s{])*fail dotstar or empty
  2479   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)■))\S)(■)*fail dotstar or empty
  2480   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)■))\S)([^\s{]){■}fail dotstar or empty
  2481   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}|■)■))\S)([^\s{])*fail dot
  2482   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}|■)■))\S)([^\s{])*fail dot
  2483   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}|■)■))\S)([^\s{])*fail dot
  2484   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■■)■))\S)([^\s{])*fail dot
  2485   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|(■|■))■))\S)([^\s{])*fail dot
  2486   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|(■){■})■))\S)([^\s{])*fail dot
  2487   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)(■■)))\S)([^\s{])*fail dot
  2488   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)(■|■)))\S)([^\s{])*fail dot
  2489   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)(■){■}))\S)([^\s{])*fail dot
  2490   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2491   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2492   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2493   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2494   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2495   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2496   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)(■■)))\S)([^\s{])*fail dotstar or empty
  2497   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■■)))■)([^\s{])*fail dotstar or empty
  2498   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■■)))\S)(■)*fail dotstar or empty
  2499   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■■)))\S)([^\s{]){■}fail dotstar or empty
  2500   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■)))\S)([^\s{])*fail dotstar or empty
  2501   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2502   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2503   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2504   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2505   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2506   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2507   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)(■|■)))\S)([^\s{])*fail dotstar or empty
  2508   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■|■)))■)([^\s{])*fail dotstar or empty
  2509   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■|■)))\S)(■)*fail dotstar or empty
  2510   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■|■)))\S)([^\s{]){■}fail dotstar or empty
  2511   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2512   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2513   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2514   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2515   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2516   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2517   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)(■){■}))\S)([^\s{])*fail dotstar or empty
  2518   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■){■}))■)([^\s{])*fail dotstar or empty
  2519   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■){■}))\S)(■)*fail dotstar or empty
  2520   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■){■}))\S)([^\s{]){■}fail dotstar or empty
  2521   |  5     ((((((■){■}\s)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2522   |  5     ((((((■)*■)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2523   |  5     ((((((■)*\s)\{)((■)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2524   |  5     ((((((■)*\s)\{)((.){■})?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2525   |  5     ((((((■)*\s)\{)((.)*){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  2526   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}■))■)([^\s{])*fail dotstar or empty
  2527   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}■))\S)(■)*fail dotstar or empty
  2528   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2529   |  5     ((((((\S){■}■)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2530   |  5     ((((((\S){■}\s)■)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2531   |  5     ((((((\S){■}\s)\{)((■)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2532   |  5     ((((((\S){■}\s)\{)((.){■})?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2533   |  5     ((((((\S){■}\s)\{)((.)*){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  2534   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}■))■)([^\s{])*fail dotstar or empty
  2535   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}■))\S)(■)*fail dotstar or empty
  2536   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2537   |  5     (((((■\s)\{)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2538   |  5     ((((((\S)*■)■)((.)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2539   |  5     ((((((\S)*■)\{)((■)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2540   |  5     ((((((\S)*■)\{)((.){■})?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2541   |  5     ((((((\S)*■)\{)((.)*){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  2542   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}■))■)([^\s{])*fail dotstar or empty
  2543   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}■))\S)(■)*fail dotstar or empty
  2544   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2545   |  5     ((((((\S)*\s)■)((■)*)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2546   |  5     ((((((\S)*\s)■)((.){■})?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2547   |  5     ((((((\S)*\s)■)((.)*){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  2548   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}■))■)([^\s{])*fail dotstar or empty
  2549   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}■))\S)(■)*fail dotstar or empty
  2550   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2551   |  5     ((((((\S)*\s)\{)((■){■})?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2552   |  5     ((((((\S)*\s)\{)((■)*){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  2553   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}■))■)([^\s{])*fail dotstar or empty
  2554   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}■))\S)(■)*fail dotstar or empty
  2555   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2556   |  5     ((((((\S)*\s)\{)((.){■}){■})((■){■}■))\S)([^\s{])*fail dotstar or empty
  2557   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}■))■)([^\s{])*fail dotstar or empty
  2558   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}■))\S)(■)*fail dotstar or empty
  2559   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2560   |  5     ((((((\S)*\s)\{)(■)?)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2561   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}■))■)([^\s{])*fail dotstar or empty
  2562   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}■))\S)(■)*fail dotstar or empty
  2563   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2564   |  5     ((((((\S)*\s)\{)■)((■){■}■))\S)([^\s{])*fail dotstar or empty
  2565   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■))■)(■)*fail dotstar or empty
  2566   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■))■)([^\s{]){■}fail dotstar or empty
  2567   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■))\S)(■){■}fail dotstar or empty
  2568   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■))\S)■fail dotstar or empty
  2569   |  5     ((((((■)*\s)\{)((.)*)?)((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2570   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2571   |  5     ((((((\S)*■)\{)((.)*)?)((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2572   |  5     ((((((\S)*\s)■)((.)*)?)((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2573   |  5     ((((((\S)*\s)\{)((■)*)?)((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2574   |  5     ((((((\S)*\s)\{)((.){■})?)((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2575   |  5     ((((((\S)*\s)\{)((.)*){■})((■■){■}■))\S)([^\s{])*fail dotstar or empty
  2576   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}■))■)([^\s{])*fail dotstar or empty
  2577   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}■))\S)(■)*fail dotstar or empty
  2578   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}■))\S)([^\s{]){■}fail dotstar or empty
  2579   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■){■}■))\S)([^\s{])*fail dot
  2580   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■){■}■))\S)([^\s{])*fail dot
  2581   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■){■}■))\S)([^\s{])*fail dot
  2582   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}(■■)))\S)([^\s{])*fail dot
  2583   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}(■|■)))\S)([^\s{])*fail dot
  2584   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}(■){■}))\S)([^\s{])*fail dot
  2585   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2586   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2587   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2588   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2589   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2590   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2591   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)){■}■))\S)([^\s{])*fail dotstar or empty
  2592   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}■))■)([^\s{])*fail dotstar or empty
  2593   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}■))\S)(■)*fail dotstar or empty
  2594   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}■))\S)([^\s{]){■}fail dotstar or empty
  2595   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)){■}■))\S)([^\s{])*fail dot
  2596   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)){■}■))\S)([^\s{])*fail dot
  2597   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)){■}■))\S)([^\s{])*fail dot
  2598   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}(■■)))\S)([^\s{])*fail dot
  2599   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}(■|■)))\S)([^\s{])*fail dot
  2600   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}(■){■}))\S)([^\s{])*fail dot
  2601   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2602   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2603   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2604   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2605   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2606   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2607   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}){■}■))\S)([^\s{])*fail dotstar or empty
  2608   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}■))■)([^\s{])*fail dotstar or empty
  2609   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}■))\S)(■)*fail dotstar or empty
  2610   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}■))\S)([^\s{]){■}fail dotstar or empty
  2611   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}){■}■))\S)([^\s{])*fail dot
  2612   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}){■}■))\S)([^\s{])*fail dot
  2613   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}){■}■))\S)([^\s{])*fail dot
  2614   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}(■■)))\S)([^\s{])*fail dot
  2615   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}(■|■)))\S)([^\s{])*fail dot
  2616   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}(■){■}))\S)([^\s{])*fail dot
  2617   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2618   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2619   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2620   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2621   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2622   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2623   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}(■■)))\S)([^\s{])*fail dotstar or empty
  2624   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■■)))■)([^\s{])*fail dotstar or empty
  2625   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■■)))\S)(■)*fail dotstar or empty
  2626   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■■)))\S)([^\s{]){■}fail dotstar or empty
  2627   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■)))\S)([^\s{])*fail dotstar or empty
  2628   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2629   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2630   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2631   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2632   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2633   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2634   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}(■|■)))\S)([^\s{])*fail dotstar or empty
  2635   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■|■)))■)([^\s{])*fail dotstar or empty
  2636   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■|■)))\S)(■)*fail dotstar or empty
  2637   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■|■)))\S)([^\s{]){■}fail dotstar or empty
  2638   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2639   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2640   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2641   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2642   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2643   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2644   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}(■){■}))\S)([^\s{])*fail dotstar or empty
  2645   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■){■}))■)([^\s{])*fail dotstar or empty
  2646   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■){■}))\S)(■)*fail dotstar or empty
  2647   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■){■}))\S)([^\s{]){■}fail dotstar or empty
  2648   |  5     ((((((■){■}■)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2649   |  5     ((((((■){■}\s)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2650   |  5     ((((((■){■}\s)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2651   |  5     ((((((■){■}\s)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2652   |  5     ((((((■){■}\s)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2653   |  5     ((((((■){■}\s)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  2654   |  5     ((((((■){■}\s)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2655   |  5     ((((((■)*■)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2656   |  5     ((((((■)*■)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2657   |  5     ((((((■)*■)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2658   |  5     ((((((■)*■)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2659   |  5     ((((((■)*■)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  2660   |  5     ((((((■)*■)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2661   |  5     ((((((■)*\s)\{)((■){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2662   |  5     ((((((■)*\s)\{)((■)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2663   |  5     ((((((■)*\s)\{)((■)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2664   |  5     ((((((■)*\s)\{)((■)*)?)(■|■))\S)(■)*fail dotstar or empty
  2665   |  5     ((((((■)*\s)\{)((■)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2666   |  5     ((((((■)*\s)\{)((.){■}){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2667   |  5     ((((((■)*\s)\{)((.){■})?)(■|■))■)([^\s{])*fail dotstar or empty
  2668   |  5     ((((((■)*\s)\{)((.){■})?)(■|■))\S)(■)*fail dotstar or empty
  2669   |  5     ((((((■)*\s)\{)((.){■})?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2670   |  5     ((((((■)*\s)\{)(■)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2671   |  5     ((((((■)*\s)\{)((.)*){■})(■|■))■)([^\s{])*fail dotstar or empty
  2672   |  5     ((((((■)*\s)\{)((.)*){■})(■|■))\S)(■)*fail dotstar or empty
  2673   |  5     ((((((■)*\s)\{)((.)*){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  2674   |  5     ((((((■)*\s)\{)■)(■|■))\S)([^\s{])*fail dotstar or empty
  2675   |  5     ((((((■)*\s)\{)((.)*)?)(■|■))■)(■)*fail dotstar or empty
  2676   |  5     ((((((■)*\s)\{)((.)*)?)(■|■))■)([^\s{]){■}fail dotstar or empty
  2677   |  5     ((((((■)*\s)\{)((.)*)?)(■|■))\S)(■){■}fail dotstar or empty
  2678   |  5     ((((((■)*\s)\{)((.)*)?)(■|■))\S)■fail dotstar or empty
  2679   |  5     ((((((\S){■}■)■)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2680   |  5     ((((((\S){■}■)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2681   |  5     ((((((\S){■}■)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2682   |  5     ((((((\S){■}■)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2683   |  5     ((((((\S){■}■)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2684   |  5     ((((((\S){■}■)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  2685   |  5     ((((((\S){■}■)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2686   |  5     (((((■■)\{)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2687   |  5     ((((((\S){■}\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2688   |  5     ((((((\S){■}\s)■)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2689   |  5     ((((((\S){■}\s)■)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2690   |  5     ((((((\S){■}\s)■)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2691   |  5     ((((((\S){■}\s)■)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  2692   |  5     ((((((\S){■}\s)■)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2693   |  5     ((((((\S){■}\s)\{)((■){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2694   |  5     ((((((\S){■}\s)\{)((■)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2695   |  5     ((((((\S){■}\s)\{)((■)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2696   |  5     ((((((\S){■}\s)\{)((■)*)?)(■|■))\S)(■)*fail dotstar or empty
  2697   |  5     ((((((\S){■}\s)\{)((■)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2698   |  5     (((((■\s)\{)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2699   |  5     ((((((\S){■}\s)\{)((.){■}){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2700   |  5     ((((((\S){■}\s)\{)((.){■})?)(■|■))■)([^\s{])*fail dotstar or empty
  2701   |  5     ((((((\S){■}\s)\{)((.){■})?)(■|■))\S)(■)*fail dotstar or empty
  2702   |  5     ((((((\S){■}\s)\{)((.){■})?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2703   |  5     (((((■\s)\{)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2704   |  5     ((((((\S){■}\s)\{)(■)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2705   |  5     ((((((\S){■}\s)\{)((.)*){■})(■|■))■)([^\s{])*fail dotstar or empty
  2706   |  5     ((((((\S){■}\s)\{)((.)*){■})(■|■))\S)(■)*fail dotstar or empty
  2707   |  5     ((((((\S){■}\s)\{)((.)*){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  2708   |  5     (((((■\s)\{)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2709   |  5     ((((((\S){■}\s)\{)■)(■|■))\S)([^\s{])*fail dotstar or empty
  2710   |  5     ((((((\S){■}\s)\{)((.)*)?)(■|■))■)(■)*fail dotstar or empty
  2711   |  5     ((((((\S){■}\s)\{)((.)*)?)(■|■))■)([^\s{]){■}fail dotstar or empty
  2712   |  5     (((((■\s)\{)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2713   |  5     ((((((\S){■}\s)\{)((.)*)?)(■|■))\S)(■){■}fail dotstar or empty
  2714   |  5     (((((■\s)\{)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  2715   |  5     (((((■\s)\{)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2716   |  5     ((((((\S){■}\s)\{)((.)*)?)(■|■))\S)■fail dotstar or empty
  2717   |  5     ((((((\S)*■)■)((■)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2718   |  5     ((((((\S)*■)■)((.){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2719   |  5     ((((((\S)*■)■)((.)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2720   |  5     ((((((\S)*■)■)((.)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2721   |  5     ((((((\S)*■)■)((.)*)?)(■|■))\S)(■)*fail dotstar or empty
  2722   |  5     ((((((\S)*■)■)((.)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2723   |  5     ((((((\S)*■)\{)((■){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2724   |  5     ((((((\S)*■)\{)((■)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2725   |  5     ((((((\S)*■)\{)((■)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2726   |  5     ((((((\S)*■)\{)((■)*)?)(■|■))\S)(■)*fail dotstar or empty
  2727   |  5     ((((((\S)*■)\{)((■)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2728   |  5     ((((((\S)*■)\{)((.){■}){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2729   |  5     ((((((\S)*■)\{)((.){■})?)(■|■))■)([^\s{])*fail dotstar or empty
  2730   |  5     ((((((\S)*■)\{)((.){■})?)(■|■))\S)(■)*fail dotstar or empty
  2731   |  5     ((((((\S)*■)\{)((.){■})?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2732   |  5     ((((((\S)*■)\{)(■)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2733   |  5     ((((((\S)*■)\{)((.)*){■})(■|■))■)([^\s{])*fail dotstar or empty
  2734   |  5     ((((((\S)*■)\{)((.)*){■})(■|■))\S)(■)*fail dotstar or empty
  2735   |  5     ((((((\S)*■)\{)((.)*){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  2736   |  5     ((((((\S)*■)\{)■)(■|■))\S)([^\s{])*fail dotstar or empty
  2737   |  5     ((((((\S)*■)\{)((.)*)?)(■|■))■)(■)*fail dotstar or empty
  2738   |  5     ((((((\S)*■)\{)((.)*)?)(■|■))■)([^\s{]){■}fail dotstar or empty
  2739   |  5     ((((((\S)*■)\{)((.)*)?)(■|■))\S)(■){■}fail dotstar or empty
  2740   |  5     ((((((\S)*■)\{)((.)*)?)(■|■))\S)■fail dotstar or empty
  2741   |  5     ((((((\S)*\s)■)((■){■})?)(■|■))\S)([^\s{])*fail dotstar or empty
  2742   |  5     ((((((\S)*\s)■)((■)*){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2743   |  5     ((((((\S)*\s)■)((■)*)?)(■|■))■)([^\s{])*fail dotstar or empty
  2744   |  5     ((((((\S)*\s)■)((■)*)?)(■|■))\S)(■)*fail dotstar or empty
  2745   |  5     ((((((\S)*\s)■)((■)*)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2746   |  5     ((((((\S)*\s)■)((.){■}){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2747   |  5     ((((((\S)*\s)■)((.){■})?)(■|■))■)([^\s{])*fail dotstar or empty
  2748   |  5     ((((((\S)*\s)■)((.){■})?)(■|■))\S)(■)*fail dotstar or empty
  2749   |  5     ((((((\S)*\s)■)((.){■})?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2750   |  5     ((((((\S)*\s)■)(■)?)(■|■))\S)([^\s{])*fail dotstar or empty
  2751   |  5     ((((((\S)*\s)■)((.)*){■})(■|■))■)([^\s{])*fail dotstar or empty
  2752   |  5     ((((((\S)*\s)■)((.)*){■})(■|■))\S)(■)*fail dotstar or empty
  2753   |  5     ((((((\S)*\s)■)((.)*){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  2754   |  5     ((((((\S)*\s)■)■)(■|■))\S)([^\s{])*fail dotstar or empty
  2755   |  5     ((((((\S)*\s)■)((.)*)?)(■|■))■)(■)*fail dotstar or empty
  2756   |  5     ((((((\S)*\s)■)((.)*)?)(■|■))■)([^\s{]){■}fail dotstar or empty
  2757   |  5     ((((((\S)*\s)■)((.)*)?)(■|■))\S)(■){■}fail dotstar or empty
  2758   |  5     ((((((\S)*\s)■)((.)*)?)(■|■))\S)■fail dotstar or empty
  2759   |  5     ((((((\S)*\s)\{)((■){■}){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2760   |  5     ((((((\S)*\s)\{)((■){■})?)(■|■))■)([^\s{])*fail dotstar or empty
  2761   |  5     ((((((\S)*\s)\{)((■){■})?)(■|■))\S)(■)*fail dotstar or empty
  2762   |  5     ((((((\S)*\s)\{)((■){■})?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2763   |  5     ((((((\S)*\s)\{)((■)*){■})(■|■))■)([^\s{])*fail dotstar or empty
  2764   |  5     ((((((\S)*\s)\{)((■)*){■})(■|■))\S)(■)*fail dotstar or empty
  2765   |  5     ((((((\S)*\s)\{)((■)*){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  2766   |  5     ((((((\S)*\s)\{)((■)*)?)(■|■))■)(■)*fail dotstar or empty
  2767   |  5     ((((((\S)*\s)\{)((■)*)?)(■|■))■)([^\s{]){■}fail dotstar or empty
  2768   |  5     ((((((\S)*\s)\{)((■)*)?)(■|■))\S)(■){■}fail dotstar or empty
  2769   |  5     ((((((\S)*\s)\{)((■)*)?)(■|■))\S)■fail dotstar or empty
  2770   |  5     ((((((\S)*\s)\{)((.){■}){■})(■|■))■)([^\s{])*fail dotstar or empty
  2771   |  5     ((((((\S)*\s)\{)((.){■}){■})(■|■))\S)(■)*fail dotstar or empty
  2772   |  5     ((((((\S)*\s)\{)((.){■}){■})(■|■))\S)([^\s{]){■}fail dotstar or empty
  2773   |  5     ((((((\S)*\s)\{)(■){■})(■|■))\S)([^\s{])*fail dotstar or empty
  2774   |  5     ((((((\S)*\s)\{)((.){■})?)(■|■))■)(■)*fail dotstar or empty
  2775   |  5     ((((((\S)*\s)\{)((.){■})?)(■|■))■)([^\s{]){■}fail dotstar or empty
  2776   |  5     ((((((\S)*\s)\{)(■)?)(■|■))■)([^\s{])*fail dotstar or empty
  2777   |  5     ((((((\S)*\s)\{)((.){■})?)(■|■))\S)(■){■}fail dotstar or empty
  2778   |  5     ((((((\S)*\s)\{)(■)?)(■|■))\S)(■)*fail dotstar or empty
  2779   |  5     ((((((\S)*\s)\{)(■)?)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2780   |  5     ((((((\S)*\s)\{)((.){■})?)(■|■))\S)■fail dotstar or empty
  2781   |  5     ((((((\S)*\s)\{)((.)*){■})(■|■))■)(■)*fail dotstar or empty
  2782   |  5     ((((((\S)*\s)\{)((.)*){■})(■|■))■)([^\s{]){■}fail dotstar or empty
  2783   |  5     ((((((\S)*\s)\{)■)(■|■))■)([^\s{])*fail dotstar or empty
  2784   |  5     ((((((\S)*\s)\{)((.)*){■})(■|■))\S)(■){■}fail dotstar or empty
  2785   |  5     ((((((\S)*\s)\{)■)(■|■))\S)(■)*fail dotstar or empty
  2786   |  5     ((((((\S)*\s)\{)■)(■|■))\S)([^\s{]){■}fail dotstar or empty
  2787   |  5     ((((((\S)*\s)\{)((.)*){■})(■|■))\S)■fail dotstar or empty
  2788   |  5     ((((((\S)*\s)\{)((.)*)?)(■|■))■)(■){■}fail dotstar or empty
  2789   |  5     ((((((\S)*\s)\{)((.)*)?)(■|■))■)■fail dotstar or empty
  2790   |  5     ((((((■){■}\s)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2791   |  5     ((((((■)*■)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2792   |  5     ((((((■)*\s)\{)((■)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2793   |  5     ((((((■)*\s)\{)((.){■})?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2794   |  5     ((((((■)*\s)\{)((.)*){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  2795   |  5     ((((((■)*\s)\{)((.)*)?)(■■|■))■)([^\s{])*fail dotstar or empty
  2796   |  5     ((((((■)*\s)\{)((.)*)?)(■■|■))\S)(■)*fail dotstar or empty
  2797   |  5     ((((((■)*\s)\{)((.)*)?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2798   |  5     ((((((\S){■}■)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2799   |  5     ((((((\S){■}\s)■)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2800   |  5     ((((((\S){■}\s)\{)((■)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2801   |  5     ((((((\S){■}\s)\{)((.){■})?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2802   |  5     ((((((\S){■}\s)\{)((.)*){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  2803   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■|■))■)([^\s{])*fail dotstar or empty
  2804   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■|■))\S)(■)*fail dotstar or empty
  2805   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2806   |  5     (((((■\s)\{)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2807   |  5     ((((((\S)*■)■)((.)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2808   |  5     ((((((\S)*■)\{)((■)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2809   |  5     ((((((\S)*■)\{)((.){■})?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2810   |  5     ((((((\S)*■)\{)((.)*){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  2811   |  5     ((((((\S)*■)\{)((.)*)?)(■■|■))■)([^\s{])*fail dotstar or empty
  2812   |  5     ((((((\S)*■)\{)((.)*)?)(■■|■))\S)(■)*fail dotstar or empty
  2813   |  5     ((((((\S)*■)\{)((.)*)?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2814   |  5     ((((((\S)*\s)■)((■)*)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2815   |  5     ((((((\S)*\s)■)((.){■})?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2816   |  5     ((((((\S)*\s)■)((.)*){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  2817   |  5     ((((((\S)*\s)■)((.)*)?)(■■|■))■)([^\s{])*fail dotstar or empty
  2818   |  5     ((((((\S)*\s)■)((.)*)?)(■■|■))\S)(■)*fail dotstar or empty
  2819   |  5     ((((((\S)*\s)■)((.)*)?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2820   |  5     ((((((\S)*\s)\{)((■){■})?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2821   |  5     ((((((\S)*\s)\{)((■)*){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  2822   |  5     ((((((\S)*\s)\{)((■)*)?)(■■|■))■)([^\s{])*fail dotstar or empty
  2823   |  5     ((((((\S)*\s)\{)((■)*)?)(■■|■))\S)(■)*fail dotstar or empty
  2824   |  5     ((((((\S)*\s)\{)((■)*)?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2825   |  5     ((((((\S)*\s)\{)((.){■}){■})(■■|■))\S)([^\s{])*fail dotstar or empty
  2826   |  5     ((((((\S)*\s)\{)((.){■})?)(■■|■))■)([^\s{])*fail dotstar or empty
  2827   |  5     ((((((\S)*\s)\{)((.){■})?)(■■|■))\S)(■)*fail dotstar or empty
  2828   |  5     ((((((\S)*\s)\{)((.){■})?)(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2829   |  5     ((((((\S)*\s)\{)(■)?)(■■|■))\S)([^\s{])*fail dotstar or empty
  2830   |  5     ((((((\S)*\s)\{)((.)*){■})(■■|■))■)([^\s{])*fail dotstar or empty
  2831   |  5     ((((((\S)*\s)\{)((.)*){■})(■■|■))\S)(■)*fail dotstar or empty
  2832   |  5     ((((((\S)*\s)\{)((.)*){■})(■■|■))\S)([^\s{]){■}fail dotstar or empty
  2833   |  5     ((((((\S)*\s)\{)■)(■■|■))\S)([^\s{])*fail dotstar or empty
  2834   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■))■)(■)*fail dotstar or empty
  2835   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■))■)([^\s{]){■}fail dotstar or empty
  2836   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■))\S)(■){■}fail dotstar or empty
  2837   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■))\S)■fail dotstar or empty
  2838   |  5     ((((((■)*\s)\{)((.)*)?)((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2839   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2840   |  5     ((((((\S)*■)\{)((.)*)?)((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2841   |  5     ((((((\S)*\s)■)((.)*)?)((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2842   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2843   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2844   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)■|■))\S)([^\s{])*fail dotstar or empty
  2845   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■|■))■)([^\s{])*fail dotstar or empty
  2846   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■|■))\S)(■)*fail dotstar or empty
  2847   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■|■))\S)([^\s{]){■}fail dotstar or empty
  2848   |  5     ((((((\S)*\s)\{)((.)*)?)((■)■|■))\S)([^\s{])*fail dotstar or empty
  2849   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)■|■))\S)([^\s{])*fail dot
  2850   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)■|■))\S)([^\s{])*fail dot
  2851   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)■|■))\S)([^\s{])*fail dot
  2852   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■■)|■))\S)([^\s{])*fail dot
  2853   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■|■)|■))\S)([^\s{])*fail dot
  2854   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■){■}|■))\S)([^\s{])*fail dot
  2855   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■|■■))\S)([^\s{])*fail dot
  2856   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■|(■|■)))\S)([^\s{])*fail dot
  2857   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■|(■){■}))\S)([^\s{])*fail dot
  2858   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2859   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2860   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2861   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2862   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2863   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2864   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)■|■))\S)([^\s{])*fail dotstar or empty
  2865   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■|■))■)([^\s{])*fail dotstar or empty
  2866   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■|■))\S)(■)*fail dotstar or empty
  2867   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■|■))\S)([^\s{]){■}fail dotstar or empty
  2868   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)■|■))\S)([^\s{])*fail dot
  2869   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)■|■))\S)([^\s{])*fail dot
  2870   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)■|■))\S)([^\s{])*fail dot
  2871   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■■)|■))\S)([^\s{])*fail dot
  2872   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■|■)|■))\S)([^\s{])*fail dot
  2873   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■){■}|■))\S)([^\s{])*fail dot
  2874   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■|■■))\S)([^\s{])*fail dot
  2875   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■|(■|■)))\S)([^\s{])*fail dot
  2876   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■|(■){■}))\S)([^\s{])*fail dot
  2877   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2878   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2879   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2880   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2881   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2882   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2883   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}■|■))\S)([^\s{])*fail dotstar or empty
  2884   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■|■))■)([^\s{])*fail dotstar or empty
  2885   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■|■))\S)(■)*fail dotstar or empty
  2886   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■|■))\S)([^\s{]){■}fail dotstar or empty
  2887   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}■|■))\S)([^\s{])*fail dot
  2888   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}■|■))\S)([^\s{])*fail dot
  2889   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}■|■))\S)([^\s{])*fail dot
  2890   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■■)|■))\S)([^\s{])*fail dot
  2891   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■|■)|■))\S)([^\s{])*fail dot
  2892   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■){■}|■))\S)([^\s{])*fail dot
  2893   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■|■■))\S)([^\s{])*fail dot
  2894   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■|(■|■)))\S)([^\s{])*fail dot
  2895   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■|(■){■}))\S)([^\s{])*fail dot
  2896   |  5     ((((((■)*\s)\{)((.)*)?)(■■|■■))\S)([^\s{])*fail dotstar or empty
  2897   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■|■■))\S)([^\s{])*fail dotstar or empty
  2898   |  5     ((((((\S)*■)\{)((.)*)?)(■■|■■))\S)([^\s{])*fail dotstar or empty
  2899   |  5     ((((((\S)*\s)■)((.)*)?)(■■|■■))\S)([^\s{])*fail dotstar or empty
  2900   |  5     ((((((\S)*\s)\{)((■)*)?)(■■|■■))\S)([^\s{])*fail dotstar or empty
  2901   |  5     ((((((\S)*\s)\{)((.){■})?)(■■|■■))\S)([^\s{])*fail dotstar or empty
  2902   |  5     ((((((\S)*\s)\{)((.)*){■})(■■|■■))\S)([^\s{])*fail dotstar or empty
  2903   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■■))■)([^\s{])*fail dotstar or empty
  2904   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■■))\S)(■)*fail dotstar or empty
  2905   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|■■))\S)([^\s{]){■}fail dotstar or empty
  2906   |  5     ((((((■)*\s)\{)((.)*)?)(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2907   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2908   |  5     ((((((\S)*■)\{)((.)*)?)(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2909   |  5     ((((((\S)*\s)■)((.)*)?)(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2910   |  5     ((((((\S)*\s)\{)((■)*)?)(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2911   |  5     ((((((\S)*\s)\{)((.){■})?)(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2912   |  5     ((((((\S)*\s)\{)((.)*){■})(■■|(■|■)))\S)([^\s{])*fail dotstar or empty
  2913   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|(■|■)))■)([^\s{])*fail dotstar or empty
  2914   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|(■|■)))\S)(■)*fail dotstar or empty
  2915   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|(■|■)))\S)([^\s{]){■}fail dotstar or empty
  2916   |  5     ((((((■)*\s)\{)((.)*)?)(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2917   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2918   |  5     ((((((\S)*■)\{)((.)*)?)(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2919   |  5     ((((((\S)*\s)■)((.)*)?)(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2920   |  5     ((((((\S)*\s)\{)((■)*)?)(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2921   |  5     ((((((\S)*\s)\{)((.){■})?)(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2922   |  5     ((((((\S)*\s)\{)((.)*){■})(■■|(■){■}))\S)([^\s{])*fail dotstar or empty
  2923   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|(■){■}))■)([^\s{])*fail dotstar or empty
  2924   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|(■){■}))\S)(■)*fail dotstar or empty
  2925   |  5     ((((((\S)*\s)\{)((.)*)?)(■■|(■){■}))\S)([^\s{]){■}fail dotstar or empty
  2926   |  5     ((((((■){■}\s)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2927   |  5     ((((((■)*■)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2928   |  5     ((((((■)*\s)\{)((■)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2929   |  5     ((((((■)*\s)\{)((.){■})?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2930   |  5     ((((((■)*\s)\{)((.)*){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2931   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  2932   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)|■))\S)(■)*fail dotstar or empty
  2933   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2934   |  5     ((((((\S){■}■)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2935   |  5     ((((((\S){■}\s)■)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2936   |  5     ((((((\S){■}\s)\{)((■)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2937   |  5     ((((((\S){■}\s)\{)((.){■})?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2938   |  5     ((((((\S){■}\s)\{)((.)*){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2939   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  2940   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)|■))\S)(■)*fail dotstar or empty
  2941   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2942   |  5     (((((■\s)\{)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2943   |  5     ((((((\S)*■)■)((.)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2944   |  5     ((((((\S)*■)\{)((■)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2945   |  5     ((((((\S)*■)\{)((.){■})?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2946   |  5     ((((((\S)*■)\{)((.)*){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2947   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  2948   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)|■))\S)(■)*fail dotstar or empty
  2949   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2950   |  5     ((((((\S)*\s)■)((■)*)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2951   |  5     ((((((\S)*\s)■)((.){■})?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2952   |  5     ((((((\S)*\s)■)((.)*){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2953   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  2954   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)|■))\S)(■)*fail dotstar or empty
  2955   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2956   |  5     ((((((\S)*\s)\{)((■){■})?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2957   |  5     ((((((\S)*\s)\{)((■)*){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2958   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  2959   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)|■))\S)(■)*fail dotstar or empty
  2960   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2961   |  5     ((((((\S)*\s)\{)((.){■}){■})((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2962   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)|■))■)([^\s{])*fail dotstar or empty
  2963   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)|■))\S)(■)*fail dotstar or empty
  2964   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2965   |  5     ((((((\S)*\s)\{)(■)?)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2966   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)|■))■)([^\s{])*fail dotstar or empty
  2967   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)|■))\S)(■)*fail dotstar or empty
  2968   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2969   |  5     ((((((\S)*\s)\{)■)((■|■)|■))\S)([^\s{])*fail dotstar or empty
  2970   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))■)(■)*fail dotstar or empty
  2971   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))■)([^\s{]){■}fail dotstar or empty
  2972   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))\S)(■){■}fail dotstar or empty
  2973   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■))\S)■fail dotstar or empty
  2974   |  5     ((((((■)*\s)\{)((.)*)?)((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2975   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2976   |  5     ((((((\S)*■)\{)((.)*)?)((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2977   |  5     ((((((\S)*\s)■)((.)*)?)((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2978   |  5     ((((((\S)*\s)\{)((■)*)?)((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2979   |  5     ((((((\S)*\s)\{)((.){■})?)((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2980   |  5     ((((((\S)*\s)\{)((.)*){■})((■■|■)|■))\S)([^\s{])*fail dotstar or empty
  2981   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)|■))■)([^\s{])*fail dotstar or empty
  2982   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)|■))\S)(■)*fail dotstar or empty
  2983   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)|■))\S)([^\s{]){■}fail dotstar or empty
  2984   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■|■)|■))\S)([^\s{])*fail dot
  2985   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■|■)|■))\S)([^\s{])*fail dot
  2986   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■|■)|■))\S)([^\s{])*fail dot
  2987   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■■)|■))\S)([^\s{])*fail dot
  2988   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|(■|■))|■))\S)([^\s{])*fail dot
  2989   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|(■){■})|■))\S)([^\s{])*fail dot
  2990   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)|■■))\S)([^\s{])*fail dot
  2991   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)|(■|■)))\S)([^\s{])*fail dot
  2992   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)|(■){■}))\S)([^\s{])*fail dot
  2993   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  2994   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  2995   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  2996   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  2997   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  2998   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  2999   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)|■)|■))\S)([^\s{])*fail dotstar or empty
  3000   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|■))■)([^\s{])*fail dotstar or empty
  3001   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|■))\S)(■)*fail dotstar or empty
  3002   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|■))\S)([^\s{]){■}fail dotstar or empty
  3003   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)|■)|■))\S)([^\s{])*fail dot
  3004   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)|■)|■))\S)([^\s{])*fail solve
  3005   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)|■)|■))\S)([^\s{])*fail dot
  3006   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■■)|■))\S)([^\s{])*fail dot
  3007   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|(■|■))|■))\S)([^\s{])*fail solve
  3008   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|(■){■})|■))\S)([^\s{])*fail dot
  3009   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|■■))\S)([^\s{])*fail dot
  3010   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|(■|■)))\S)([^\s{])*fail solve
  3011   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)|(■){■}))\S)([^\s{])*fail dot
  3012   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3013   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3014   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3015   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3016   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3017   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3018   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}|■)|■))\S)([^\s{])*fail dotstar or empty
  3019   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|■))■)([^\s{])*fail dotstar or empty
  3020   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|■))\S)(■)*fail dotstar or empty
  3021   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|■))\S)([^\s{]){■}fail dotstar or empty
  3022   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}|■)|■))\S)([^\s{])*fail dot
  3023   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}|■)|■))\S)([^\s{])*fail dot
  3024   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}|■)|■))\S)([^\s{])*fail dot
  3025   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■■)|■))\S)([^\s{])*fail dot
  3026   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|(■|■))|■))\S)([^\s{])*fail dot
  3027   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|(■){■})|■))\S)([^\s{])*fail dot
  3028   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|■■))\S)([^\s{])*fail dot
  3029   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|(■|■)))\S)([^\s{])*fail dot
  3030   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)|(■){■}))\S)([^\s{])*fail dot
  3031   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3032   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3033   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3034   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3035   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3036   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3037   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)|■■))\S)([^\s{])*fail dotstar or empty
  3038   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■■))■)([^\s{])*fail dotstar or empty
  3039   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■■))\S)(■)*fail dotstar or empty
  3040   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|■■))\S)([^\s{]){■}fail dotstar or empty
  3041   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3042   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3043   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3044   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3045   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3046   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3047   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)|(■|■)))\S)([^\s{])*fail dotstar or empty
  3048   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■|■)))■)([^\s{])*fail dotstar or empty
  3049   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■|■)))\S)(■)*fail dotstar or empty
  3050   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■|■)))\S)([^\s{]){■}fail dotstar or empty
  3051   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3052   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3053   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3054   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3055   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3056   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3057   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)|(■){■}))\S)([^\s{])*fail dotstar or empty
  3058   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■){■}))■)([^\s{])*fail dotstar or empty
  3059   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■){■}))\S)(■)*fail dotstar or empty
  3060   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)|(■){■}))\S)([^\s{]){■}fail dotstar or empty
  3061   |  5     ((((((■){■}\s)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3062   |  5     ((((((■)*■)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3063   |  5     ((((((■)*\s)\{)((■)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3064   |  5     ((((((■)*\s)\{)((.){■})?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3065   |  5     ((((((■)*\s)\{)((.)*){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3066   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  3067   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}|■))\S)(■)*fail dotstar or empty
  3068   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3069   |  5     ((((((\S){■}■)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3070   |  5     ((((((\S){■}\s)■)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3071   |  5     ((((((\S){■}\s)\{)((■)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3072   |  5     ((((((\S){■}\s)\{)((.){■})?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3073   |  5     ((((((\S){■}\s)\{)((.)*){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3074   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  3075   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}|■))\S)(■)*fail dotstar or empty
  3076   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3077   |  5     (((((■\s)\{)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3078   |  5     ((((((\S)*■)■)((.)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3079   |  5     ((((((\S)*■)\{)((■)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3080   |  5     ((((((\S)*■)\{)((.){■})?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3081   |  5     ((((((\S)*■)\{)((.)*){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3082   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  3083   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}|■))\S)(■)*fail dotstar or empty
  3084   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3085   |  5     ((((((\S)*\s)■)((■)*)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3086   |  5     ((((((\S)*\s)■)((.){■})?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3087   |  5     ((((((\S)*\s)■)((.)*){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3088   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  3089   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}|■))\S)(■)*fail dotstar or empty
  3090   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3091   |  5     ((((((\S)*\s)\{)((■){■})?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3092   |  5     ((((((\S)*\s)\{)((■)*){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3093   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  3094   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}|■))\S)(■)*fail dotstar or empty
  3095   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3096   |  5     ((((((\S)*\s)\{)((.){■}){■})((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3097   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}|■))■)([^\s{])*fail dotstar or empty
  3098   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}|■))\S)(■)*fail dotstar or empty
  3099   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3100   |  5     ((((((\S)*\s)\{)(■)?)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3101   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}|■))■)([^\s{])*fail dotstar or empty
  3102   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}|■))\S)(■)*fail dotstar or empty
  3103   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3104   |  5     ((((((\S)*\s)\{)■)((■){■}|■))\S)([^\s{])*fail dotstar or empty
  3105   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))■)(■)*fail dotstar or empty
  3106   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))■)([^\s{]){■}fail dotstar or empty
  3107   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))\S)(■){■}fail dotstar or empty
  3108   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■))\S)■fail dotstar or empty
  3109   |  5     ((((((■)*\s)\{)((.)*)?)((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3110   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3111   |  5     ((((((\S)*■)\{)((.)*)?)((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3112   |  5     ((((((\S)*\s)■)((.)*)?)((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3113   |  5     ((((((\S)*\s)\{)((■)*)?)((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3114   |  5     ((((((\S)*\s)\{)((.){■})?)((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3115   |  5     ((((((\S)*\s)\{)((.)*){■})((■■){■}|■))\S)([^\s{])*fail dotstar or empty
  3116   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}|■))■)([^\s{])*fail dotstar or empty
  3117   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}|■))\S)(■)*fail dotstar or empty
  3118   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3119   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■){■}|■))\S)([^\s{])*fail dot
  3120   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■){■}|■))\S)([^\s{])*fail dot
  3121   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■){■}|■))\S)([^\s{])*fail dot
  3122   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}|■■))\S)([^\s{])*fail dot
  3123   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}|(■|■)))\S)([^\s{])*fail dot
  3124   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}|(■){■}))\S)([^\s{])*fail dot
  3125   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3126   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3127   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3128   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3129   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3130   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3131   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)){■}|■))\S)([^\s{])*fail dotstar or empty
  3132   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|■))■)([^\s{])*fail dotstar or empty
  3133   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|■))\S)(■)*fail dotstar or empty
  3134   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3135   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)){■}|■))\S)([^\s{])*fail dot
  3136   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)){■}|■))\S)([^\s{])*fail dot
  3137   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)){■}|■))\S)([^\s{])*fail dot
  3138   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|■■))\S)([^\s{])*fail dot
  3139   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|(■|■)))\S)([^\s{])*fail dot
  3140   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}|(■){■}))\S)([^\s{])*fail dot
  3141   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3142   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3143   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3144   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3145   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3146   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3147   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}){■}|■))\S)([^\s{])*fail dotstar or empty
  3148   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|■))■)([^\s{])*fail dotstar or empty
  3149   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|■))\S)(■)*fail dotstar or empty
  3150   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|■))\S)([^\s{]){■}fail dotstar or empty
  3151   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}){■}|■))\S)([^\s{])*fail dot
  3152   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}){■}|■))\S)([^\s{])*fail dot
  3153   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}){■}|■))\S)([^\s{])*fail dot
  3154   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|■■))\S)([^\s{])*fail dot
  3155   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|(■|■)))\S)([^\s{])*fail dot
  3156   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}|(■){■}))\S)([^\s{])*fail dot
  3157   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3158   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3159   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3160   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3161   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3162   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3163   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}|■■))\S)([^\s{])*fail dotstar or empty
  3164   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■■))■)([^\s{])*fail dotstar or empty
  3165   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■■))\S)(■)*fail dotstar or empty
  3166   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|■■))\S)([^\s{]){■}fail dotstar or empty
  3167   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3168   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3169   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3170   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3171   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3172   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3173   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}|(■|■)))\S)([^\s{])*fail dotstar or empty
  3174   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■|■)))■)([^\s{])*fail dotstar or empty
  3175   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■|■)))\S)(■)*fail dotstar or empty
  3176   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■|■)))\S)([^\s{]){■}fail dotstar or empty
  3177   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3178   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3179   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3180   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3181   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3182   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3183   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}|(■){■}))\S)([^\s{])*fail dotstar or empty
  3184   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■){■}))■)([^\s{])*fail dotstar or empty
  3185   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■){■}))\S)(■)*fail dotstar or empty
  3186   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}|(■){■}))\S)([^\s{]){■}fail dotstar or empty
  3187   |  5     ((((((■){■}■)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3188   |  5     ((((((■){■}\s)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3189   |  5     ((((((■){■}\s)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3190   |  5     ((((((■){■}\s)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3191   |  5     ((((((■){■}\s)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3192   |  5     ((((((■){■}\s)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  3193   |  5     ((((((■){■}\s)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3194   |  5     ((((((■)*■)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3195   |  5     ((((((■)*■)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3196   |  5     ((((((■)*■)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3197   |  5     ((((((■)*■)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3198   |  5     ((((((■)*■)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  3199   |  5     ((((((■)*■)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3200   |  5     ((((((■)*\s)\{)((■){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3201   |  5     ((((((■)*\s)\{)((■)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3202   |  5     ((((((■)*\s)\{)((■)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3203   |  5     ((((((■)*\s)\{)((■)*)?)(■){■})\S)(■)*fail dotstar or empty
  3204   |  5     ((((((■)*\s)\{)((■)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3205   |  5     ((((((■)*\s)\{)((.){■}){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3206   |  5     ((((((■)*\s)\{)((.){■})?)(■){■})■)([^\s{])*fail dotstar or empty
  3207   |  5     ((((((■)*\s)\{)((.){■})?)(■){■})\S)(■)*fail dotstar or empty
  3208   |  5     ((((((■)*\s)\{)((.){■})?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3209   |  5     ((((((■)*\s)\{)(■)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3210   |  5     ((((((■)*\s)\{)((.)*){■})(■){■})■)([^\s{])*fail dotstar or empty
  3211   |  5     ((((((■)*\s)\{)((.)*){■})(■){■})\S)(■)*fail dotstar or empty
  3212   |  5     ((((((■)*\s)\{)((.)*){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  3213   |  5     ((((((■)*\s)\{)■)(■){■})\S)([^\s{])*fail dotstar or empty
  3214   |  5     ((((((■)*\s)\{)((.)*)?)(■){■})■)(■)*fail dotstar or empty
  3215   |  5     ((((((■)*\s)\{)((.)*)?)(■){■})■)([^\s{]){■}fail dotstar or empty
  3216   |  5     ((((((■)*\s)\{)((.)*)?)(■){■})\S)(■){■}fail dotstar or empty
  3217   |  5     ((((((■)*\s)\{)((.)*)?)(■){■})\S)■fail dotstar or empty
  3218   |  5     ((((((\S){■}■)■)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3219   |  5     ((((((\S){■}■)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3220   |  5     ((((((\S){■}■)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3221   |  5     ((((((\S){■}■)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3222   |  5     ((((((\S){■}■)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3223   |  5     ((((((\S){■}■)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  3224   |  5     ((((((\S){■}■)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3225   |  5     (((((■■)\{)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3226   |  5     ((((((\S){■}\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3227   |  5     ((((((\S){■}\s)■)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3228   |  5     ((((((\S){■}\s)■)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3229   |  5     ((((((\S){■}\s)■)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3230   |  5     ((((((\S){■}\s)■)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  3231   |  5     ((((((\S){■}\s)■)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3232   |  5     ((((((\S){■}\s)\{)((■){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3233   |  5     ((((((\S){■}\s)\{)((■)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3234   |  5     ((((((\S){■}\s)\{)((■)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3235   |  5     ((((((\S){■}\s)\{)((■)*)?)(■){■})\S)(■)*fail dotstar or empty
  3236   |  5     ((((((\S){■}\s)\{)((■)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3237   |  5     (((((■\s)\{)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3238   |  5     ((((((\S){■}\s)\{)((.){■}){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3239   |  5     ((((((\S){■}\s)\{)((.){■})?)(■){■})■)([^\s{])*fail dotstar or empty
  3240   |  5     ((((((\S){■}\s)\{)((.){■})?)(■){■})\S)(■)*fail dotstar or empty
  3241   |  5     ((((((\S){■}\s)\{)((.){■})?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3242   |  5     (((((■\s)\{)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3243   |  5     ((((((\S){■}\s)\{)(■)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3244   |  5     ((((((\S){■}\s)\{)((.)*){■})(■){■})■)([^\s{])*fail dotstar or empty
  3245   |  5     ((((((\S){■}\s)\{)((.)*){■})(■){■})\S)(■)*fail dotstar or empty
  3246   |  5     ((((((\S){■}\s)\{)((.)*){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  3247   |  5     (((((■\s)\{)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3248   |  5     ((((((\S){■}\s)\{)■)(■){■})\S)([^\s{])*fail dotstar or empty
  3249   |  5     ((((((\S){■}\s)\{)((.)*)?)(■){■})■)(■)*fail dotstar or empty
  3250   |  5     ((((((\S){■}\s)\{)((.)*)?)(■){■})■)([^\s{]){■}fail dotstar or empty
  3251   |  5     (((((■\s)\{)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3252   |  5     ((((((\S){■}\s)\{)((.)*)?)(■){■})\S)(■){■}fail dotstar or empty
  3253   |  5     (((((■\s)\{)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  3254   |  5     (((((■\s)\{)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3255   |  5     ((((((\S){■}\s)\{)((.)*)?)(■){■})\S)■fail dotstar or empty
  3256   |  5     ((((((\S)*■)■)((■)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3257   |  5     ((((((\S)*■)■)((.){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3258   |  5     ((((((\S)*■)■)((.)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3259   |  5     ((((((\S)*■)■)((.)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3260   |  5     ((((((\S)*■)■)((.)*)?)(■){■})\S)(■)*fail dotstar or empty
  3261   |  5     ((((((\S)*■)■)((.)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3262   |  5     ((((((\S)*■)\{)((■){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3263   |  5     ((((((\S)*■)\{)((■)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3264   |  5     ((((((\S)*■)\{)((■)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3265   |  5     ((((((\S)*■)\{)((■)*)?)(■){■})\S)(■)*fail dotstar or empty
  3266   |  5     ((((((\S)*■)\{)((■)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3267   |  5     ((((((\S)*■)\{)((.){■}){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3268   |  5     ((((((\S)*■)\{)((.){■})?)(■){■})■)([^\s{])*fail dotstar or empty
  3269   |  5     ((((((\S)*■)\{)((.){■})?)(■){■})\S)(■)*fail dotstar or empty
  3270   |  5     ((((((\S)*■)\{)((.){■})?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3271   |  5     ((((((\S)*■)\{)(■)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3272   |  5     ((((((\S)*■)\{)((.)*){■})(■){■})■)([^\s{])*fail dotstar or empty
  3273   |  5     ((((((\S)*■)\{)((.)*){■})(■){■})\S)(■)*fail dotstar or empty
  3274   |  5     ((((((\S)*■)\{)((.)*){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  3275   |  5     ((((((\S)*■)\{)■)(■){■})\S)([^\s{])*fail dotstar or empty
  3276   |  5     ((((((\S)*■)\{)((.)*)?)(■){■})■)(■)*fail dotstar or empty
  3277   |  5     ((((((\S)*■)\{)((.)*)?)(■){■})■)([^\s{]){■}fail dotstar or empty
  3278   |  5     ((((((\S)*■)\{)((.)*)?)(■){■})\S)(■){■}fail dotstar or empty
  3279   |  5     ((((((\S)*■)\{)((.)*)?)(■){■})\S)■fail dotstar or empty
  3280   |  5     ((((((\S)*\s)■)((■){■})?)(■){■})\S)([^\s{])*fail dotstar or empty
  3281   |  5     ((((((\S)*\s)■)((■)*){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3282   |  5     ((((((\S)*\s)■)((■)*)?)(■){■})■)([^\s{])*fail dotstar or empty
  3283   |  5     ((((((\S)*\s)■)((■)*)?)(■){■})\S)(■)*fail dotstar or empty
  3284   |  5     ((((((\S)*\s)■)((■)*)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3285   |  5     ((((((\S)*\s)■)((.){■}){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3286   |  5     ((((((\S)*\s)■)((.){■})?)(■){■})■)([^\s{])*fail dotstar or empty
  3287   |  5     ((((((\S)*\s)■)((.){■})?)(■){■})\S)(■)*fail dotstar or empty
  3288   |  5     ((((((\S)*\s)■)((.){■})?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3289   |  5     ((((((\S)*\s)■)(■)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3290   |  5     ((((((\S)*\s)■)((.)*){■})(■){■})■)([^\s{])*fail dotstar or empty
  3291   |  5     ((((((\S)*\s)■)((.)*){■})(■){■})\S)(■)*fail dotstar or empty
  3292   |  5     ((((((\S)*\s)■)((.)*){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  3293   |  5     ((((((\S)*\s)■)■)(■){■})\S)([^\s{])*fail dotstar or empty
  3294   |  5     ((((((\S)*\s)■)((.)*)?)(■){■})■)(■)*fail dotstar or empty
  3295   |  5     ((((((\S)*\s)■)((.)*)?)(■){■})■)([^\s{]){■}fail dotstar or empty
  3296   |  5     ((((((\S)*\s)■)((.)*)?)(■){■})\S)(■){■}fail dotstar or empty
  3297   |  5     ((((((\S)*\s)■)((.)*)?)(■){■})\S)■fail dotstar or empty
  3298   |  5     ((((((\S)*\s)\{)((■){■}){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3299   |  5     ((((((\S)*\s)\{)((■){■})?)(■){■})■)([^\s{])*fail dotstar or empty
  3300   |  5     ((((((\S)*\s)\{)((■){■})?)(■){■})\S)(■)*fail dotstar or empty
  3301   |  5     ((((((\S)*\s)\{)((■){■})?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3302   |  5     ((((((\S)*\s)\{)((■)*){■})(■){■})■)([^\s{])*fail dotstar or empty
  3303   |  5     ((((((\S)*\s)\{)((■)*){■})(■){■})\S)(■)*fail dotstar or empty
  3304   |  5     ((((((\S)*\s)\{)((■)*){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  3305   |  5     ((((((\S)*\s)\{)((■)*)?)(■){■})■)(■)*fail dotstar or empty
  3306   |  5     ((((((\S)*\s)\{)((■)*)?)(■){■})■)([^\s{]){■}fail dotstar or empty
  3307   |  5     ((((((\S)*\s)\{)((■)*)?)(■){■})\S)(■){■}fail dotstar or empty
  3308   |  5     ((((((\S)*\s)\{)((■)*)?)(■){■})\S)■fail dotstar or empty
  3309   |  5     ((((((\S)*\s)\{)((.){■}){■})(■){■})■)([^\s{])*fail dotstar or empty
  3310   |  5     ((((((\S)*\s)\{)((.){■}){■})(■){■})\S)(■)*fail dotstar or empty
  3311   |  5     ((((((\S)*\s)\{)((.){■}){■})(■){■})\S)([^\s{]){■}fail dotstar or empty
  3312   |  5     ((((((\S)*\s)\{)(■){■})(■){■})\S)([^\s{])*fail dotstar or empty
  3313   |  5     ((((((\S)*\s)\{)((.){■})?)(■){■})■)(■)*fail dotstar or empty
  3314   |  5     ((((((\S)*\s)\{)((.){■})?)(■){■})■)([^\s{]){■}fail dotstar or empty
  3315   |  5     ((((((\S)*\s)\{)(■)?)(■){■})■)([^\s{])*fail dotstar or empty
  3316   |  5     ((((((\S)*\s)\{)((.){■})?)(■){■})\S)(■){■}fail dotstar or empty
  3317   |  5     ((((((\S)*\s)\{)(■)?)(■){■})\S)(■)*fail dotstar or empty
  3318   |  5     ((((((\S)*\s)\{)(■)?)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3319   |  5     ((((((\S)*\s)\{)((.){■})?)(■){■})\S)■fail dotstar or empty
  3320   |  5     ((((((\S)*\s)\{)((.)*){■})(■){■})■)(■)*fail dotstar or empty
  3321   |  5     ((((((\S)*\s)\{)((.)*){■})(■){■})■)([^\s{]){■}fail dotstar or empty
  3322   |  5     ((((((\S)*\s)\{)■)(■){■})■)([^\s{])*fail dotstar or empty
  3323   |  5     ((((((\S)*\s)\{)((.)*){■})(■){■})\S)(■){■}fail dotstar or empty
  3324   |  5     ((((((\S)*\s)\{)■)(■){■})\S)(■)*fail dotstar or empty
  3325   |  5     ((((((\S)*\s)\{)■)(■){■})\S)([^\s{]){■}fail dotstar or empty
  3326   |  5     ((((((\S)*\s)\{)((.)*){■})(■){■})\S)■fail dotstar or empty
  3327   |  5     ((((((\S)*\s)\{)((.)*)?)(■){■})■)(■){■}fail dotstar or empty
  3328   |  5     ((((((\S)*\s)\{)((.)*)?)(■){■})■)■fail dotstar or empty
  3329   |  5     ((((((■){■}\s)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3330   |  5     ((((((■)*■)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3331   |  5     ((((((■)*\s)\{)((■)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3332   |  5     ((((((■)*\s)\{)((.){■})?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3333   |  5     ((((((■)*\s)\{)((.)*){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  3334   |  5     ((((((■)*\s)\{)((.)*)?)(■■){■})■)([^\s{])*fail dotstar or empty
  3335   |  5     ((((((■)*\s)\{)((.)*)?)(■■){■})\S)(■)*fail dotstar or empty
  3336   |  5     ((((((■)*\s)\{)((.)*)?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3337   |  5     ((((((\S){■}■)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3338   |  5     ((((((\S){■}\s)■)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3339   |  5     ((((((\S){■}\s)\{)((■)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3340   |  5     ((((((\S){■}\s)\{)((.){■})?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3341   |  5     ((((((\S){■}\s)\{)((.)*){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  3342   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■){■})■)([^\s{])*fail dotstar or empty
  3343   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■){■})\S)(■)*fail dotstar or empty
  3344   |  5     ((((((\S){■}\s)\{)((.)*)?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3345   |  5     (((((■\s)\{)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3346   |  5     ((((((\S)*■)■)((.)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3347   |  5     ((((((\S)*■)\{)((■)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3348   |  5     ((((((\S)*■)\{)((.){■})?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3349   |  5     ((((((\S)*■)\{)((.)*){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  3350   |  5     ((((((\S)*■)\{)((.)*)?)(■■){■})■)([^\s{])*fail dotstar or empty
  3351   |  5     ((((((\S)*■)\{)((.)*)?)(■■){■})\S)(■)*fail dotstar or empty
  3352   |  5     ((((((\S)*■)\{)((.)*)?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3353   |  5     ((((((\S)*\s)■)((■)*)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3354   |  5     ((((((\S)*\s)■)((.){■})?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3355   |  5     ((((((\S)*\s)■)((.)*){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  3356   |  5     ((((((\S)*\s)■)((.)*)?)(■■){■})■)([^\s{])*fail dotstar or empty
  3357   |  5     ((((((\S)*\s)■)((.)*)?)(■■){■})\S)(■)*fail dotstar or empty
  3358   |  5     ((((((\S)*\s)■)((.)*)?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3359   |  5     ((((((\S)*\s)\{)((■){■})?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3360   |  5     ((((((\S)*\s)\{)((■)*){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  3361   |  5     ((((((\S)*\s)\{)((■)*)?)(■■){■})■)([^\s{])*fail dotstar or empty
  3362   |  5     ((((((\S)*\s)\{)((■)*)?)(■■){■})\S)(■)*fail dotstar or empty
  3363   |  5     ((((((\S)*\s)\{)((■)*)?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3364   |  5     ((((((\S)*\s)\{)((.){■}){■})(■■){■})\S)([^\s{])*fail dotstar or empty
  3365   |  5     ((((((\S)*\s)\{)((.){■})?)(■■){■})■)([^\s{])*fail dotstar or empty
  3366   |  5     ((((((\S)*\s)\{)((.){■})?)(■■){■})\S)(■)*fail dotstar or empty
  3367   |  5     ((((((\S)*\s)\{)((.){■})?)(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3368   |  5     ((((((\S)*\s)\{)(■)?)(■■){■})\S)([^\s{])*fail dotstar or empty
  3369   |  5     ((((((\S)*\s)\{)((.)*){■})(■■){■})■)([^\s{])*fail dotstar or empty
  3370   |  5     ((((((\S)*\s)\{)((.)*){■})(■■){■})\S)(■)*fail dotstar or empty
  3371   |  5     ((((((\S)*\s)\{)((.)*){■})(■■){■})\S)([^\s{]){■}fail dotstar or empty
  3372   |  5     ((((((\S)*\s)\{)■)(■■){■})\S)([^\s{])*fail dotstar or empty
  3373   |  5     ((((((\S)*\s)\{)((.)*)?)(■■){■})■)(■)*fail dotstar or empty
  3374   |  5     ((((((\S)*\s)\{)((.)*)?)(■■){■})■)([^\s{]){■}fail dotstar or empty
  3375   |  5     ((((((\S)*\s)\{)((.)*)?)(■■){■})\S)(■){■}fail dotstar or empty
  3376   |  5     ((((((\S)*\s)\{)((.)*)?)(■■){■})\S)■fail dotstar or empty
  3377   |  5     ((((((■)*\s)\{)((.)*)?)((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3378   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3379   |  5     ((((((\S)*■)\{)((.)*)?)((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3380   |  5     ((((((\S)*\s)■)((.)*)?)((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3381   |  5     ((((((\S)*\s)\{)((■)*)?)((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3382   |  5     ((((((\S)*\s)\{)((.){■})?)((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3383   |  5     ((((((\S)*\s)\{)((.)*){■})((■■)■){■})\S)([^\s{])*fail dotstar or empty
  3384   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■){■})■)([^\s{])*fail dotstar or empty
  3385   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■){■})\S)(■)*fail dotstar or empty
  3386   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)■){■})\S)([^\s{]){■}fail dotstar or empty
  3387   |  5     ((((((\S)*\s)\{)((.)*)?)((■)■){■})\S)([^\s{])*fail dotstar or empty
  3388   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■)■){■})\S)([^\s{])*fail dot
  3389   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■)■){■})\S)([^\s{])*fail dot
  3390   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■)■){■})\S)([^\s{])*fail dot
  3391   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■■)){■})\S)([^\s{])*fail dot
  3392   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■|■)){■})\S)([^\s{])*fail dot
  3393   |  5     ((((((\S)*\s)\{)((.)*)?)((■■)(■){■}){■})\S)([^\s{])*fail dot
  3394   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3395   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3396   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3397   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3398   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3399   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3400   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)■){■})\S)([^\s{])*fail dotstar or empty
  3401   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■){■})■)([^\s{])*fail dotstar or empty
  3402   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■){■})\S)(■)*fail dotstar or empty
  3403   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)■){■})\S)([^\s{]){■}fail dotstar or empty
  3404   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)■){■})\S)([^\s{])*fail dot
  3405   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)■){■})\S)([^\s{])*fail dot
  3406   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)■){■})\S)([^\s{])*fail dot
  3407   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■■)){■})\S)([^\s{])*fail dot
  3408   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■|■)){■})\S)([^\s{])*fail dot
  3409   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)(■){■}){■})\S)([^\s{])*fail dot
  3410   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3411   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3412   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3413   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3414   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3415   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3416   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}■){■})\S)([^\s{])*fail dotstar or empty
  3417   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■){■})■)([^\s{])*fail dotstar or empty
  3418   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■){■})\S)(■)*fail dotstar or empty
  3419   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}■){■})\S)([^\s{]){■}fail dotstar or empty
  3420   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}■){■})\S)([^\s{])*fail dot
  3421   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}■){■})\S)([^\s{])*fail dot
  3422   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}■){■})\S)([^\s{])*fail dot
  3423   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■■)){■})\S)([^\s{])*fail dot
  3424   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■|■)){■})\S)([^\s{])*fail dot
  3425   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}(■){■}){■})\S)([^\s{])*fail dot
  3426   |  5     ((((((■){■}\s)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3427   |  5     ((((((■)*■)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3428   |  5     ((((((■)*\s)\{)((■)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3429   |  5     ((((((■)*\s)\{)((.){■})?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3430   |  5     ((((((■)*\s)\{)((.)*){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3431   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  3432   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)){■})\S)(■)*fail dotstar or empty
  3433   |  5     ((((((■)*\s)\{)((.)*)?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3434   |  5     ((((((\S){■}■)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3435   |  5     ((((((\S){■}\s)■)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3436   |  5     ((((((\S){■}\s)\{)((■)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3437   |  5     ((((((\S){■}\s)\{)((.){■})?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3438   |  5     ((((((\S){■}\s)\{)((.)*){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3439   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  3440   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)){■})\S)(■)*fail dotstar or empty
  3441   |  5     ((((((\S){■}\s)\{)((.)*)?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3442   |  5     (((((■\s)\{)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3443   |  5     ((((((\S)*■)■)((.)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3444   |  5     ((((((\S)*■)\{)((■)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3445   |  5     ((((((\S)*■)\{)((.){■})?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3446   |  5     ((((((\S)*■)\{)((.)*){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3447   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  3448   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)){■})\S)(■)*fail dotstar or empty
  3449   |  5     ((((((\S)*■)\{)((.)*)?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3450   |  5     ((((((\S)*\s)■)((■)*)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3451   |  5     ((((((\S)*\s)■)((.){■})?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3452   |  5     ((((((\S)*\s)■)((.)*){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3453   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  3454   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)){■})\S)(■)*fail dotstar or empty
  3455   |  5     ((((((\S)*\s)■)((.)*)?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3456   |  5     ((((((\S)*\s)\{)((■){■})?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3457   |  5     ((((((\S)*\s)\{)((■)*){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3458   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  3459   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)){■})\S)(■)*fail dotstar or empty
  3460   |  5     ((((((\S)*\s)\{)((■)*)?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3461   |  5     ((((((\S)*\s)\{)((.){■}){■})((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3462   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)){■})■)([^\s{])*fail dotstar or empty
  3463   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)){■})\S)(■)*fail dotstar or empty
  3464   |  5     ((((((\S)*\s)\{)((.){■})?)((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3465   |  5     ((((((\S)*\s)\{)(■)?)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3466   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)){■})■)([^\s{])*fail dotstar or empty
  3467   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)){■})\S)(■)*fail dotstar or empty
  3468   |  5     ((((((\S)*\s)\{)((.)*){■})((■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3469   |  5     ((((((\S)*\s)\{)■)((■|■)){■})\S)([^\s{])*fail dotstar or empty
  3470   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})■)(■)*fail dotstar or empty
  3471   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})■)([^\s{]){■}fail dotstar or empty
  3472   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})\S)(■){■}fail dotstar or empty
  3473   |  5     ((((((\S)*\s)\{)((.)*)?)((■|■)){■})\S)■fail dotstar or empty
  3474   |  5     ((((((■)*\s)\{)((.)*)?)((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3475   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3476   |  5     ((((((\S)*■)\{)((.)*)?)((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3477   |  5     ((((((\S)*\s)■)((.)*)?)((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3478   |  5     ((((((\S)*\s)\{)((■)*)?)((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3479   |  5     ((((((\S)*\s)\{)((.){■})?)((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3480   |  5     ((((((\S)*\s)\{)((.)*){■})((■■|■)){■})\S)([^\s{])*fail dotstar or empty
  3481   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)){■})■)([^\s{])*fail dotstar or empty
  3482   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)){■})\S)(■)*fail dotstar or empty
  3483   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3484   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■|■)){■})\S)([^\s{])*fail dot
  3485   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■|■)){■})\S)([^\s{])*fail dot
  3486   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■|■)){■})\S)([^\s{])*fail dot
  3487   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|■■)){■})\S)([^\s{])*fail dot
  3488   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|(■|■))){■})\S)([^\s{])*fail dot
  3489   |  5     ((((((\S)*\s)\{)((.)*)?)((■■|(■){■})){■})\S)([^\s{])*fail dot
  3490   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3491   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3492   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3493   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3494   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3495   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3496   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)|■)){■})\S)([^\s{])*fail dotstar or empty
  3497   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)){■})■)([^\s{])*fail dotstar or empty
  3498   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)){■})\S)(■)*fail dotstar or empty
  3499   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3500   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)|■)){■})\S)([^\s{])*fail dot
  3501   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)|■)){■})\S)([^\s{])*fail dot
  3502   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)|■)){■})\S)([^\s{])*fail dot
  3503   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|■■)){■})\S)([^\s{])*fail dot
  3504   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|(■|■))){■})\S)([^\s{])*fail dot
  3505   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)|(■){■})){■})\S)([^\s{])*fail dot
  3506   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3507   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3508   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3509   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3510   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3511   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3512   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}|■)){■})\S)([^\s{])*fail dotstar or empty
  3513   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)){■})■)([^\s{])*fail dotstar or empty
  3514   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)){■})\S)(■)*fail dotstar or empty
  3515   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■)){■})\S)([^\s{]){■}fail dotstar or empty
  3516   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}|■)){■})\S)([^\s{])*fail dot
  3517   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}|■)){■})\S)([^\s{])*fail dot
  3518   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}|■)){■})\S)([^\s{])*fail dot
  3519   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|■■)){■})\S)([^\s{])*fail dot
  3520   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|(■|■))){■})\S)([^\s{])*fail dot
  3521   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}|(■){■})){■})\S)([^\s{])*fail dot
  3522   |  5     ((((((■){■}\s)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3523   |  5     ((((((■)*■)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3524   |  5     ((((((■)*\s)\{)((■)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3525   |  5     ((((((■)*\s)\{)((.){■})?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3526   |  5     ((((((■)*\s)\{)((.)*){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3527   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  3528   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}){■})\S)(■)*fail dotstar or empty
  3529   |  5     ((((((■)*\s)\{)((.)*)?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3530   |  5     ((((((\S){■}■)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3531   |  5     ((((((\S){■}\s)■)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3532   |  5     ((((((\S){■}\s)\{)((■)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3533   |  5     ((((((\S){■}\s)\{)((.){■})?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3534   |  5     ((((((\S){■}\s)\{)((.)*){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3535   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  3536   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}){■})\S)(■)*fail dotstar or empty
  3537   |  5     ((((((\S){■}\s)\{)((.)*)?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3538   |  5     (((((■\s)\{)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3539   |  5     ((((((\S)*■)■)((.)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3540   |  5     ((((((\S)*■)\{)((■)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3541   |  5     ((((((\S)*■)\{)((.){■})?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3542   |  5     ((((((\S)*■)\{)((.)*){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3543   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  3544   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}){■})\S)(■)*fail dotstar or empty
  3545   |  5     ((((((\S)*■)\{)((.)*)?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3546   |  5     ((((((\S)*\s)■)((■)*)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3547   |  5     ((((((\S)*\s)■)((.){■})?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3548   |  5     ((((((\S)*\s)■)((.)*){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3549   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  3550   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}){■})\S)(■)*fail dotstar or empty
  3551   |  5     ((((((\S)*\s)■)((.)*)?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3552   |  5     ((((((\S)*\s)\{)((■){■})?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3553   |  5     ((((((\S)*\s)\{)((■)*){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3554   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  3555   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}){■})\S)(■)*fail dotstar or empty
  3556   |  5     ((((((\S)*\s)\{)((■)*)?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3557   |  5     ((((((\S)*\s)\{)((.){■}){■})((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3558   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}){■})■)([^\s{])*fail dotstar or empty
  3559   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}){■})\S)(■)*fail dotstar or empty
  3560   |  5     ((((((\S)*\s)\{)((.){■})?)((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3561   |  5     ((((((\S)*\s)\{)(■)?)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3562   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}){■})■)([^\s{])*fail dotstar or empty
  3563   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}){■})\S)(■)*fail dotstar or empty
  3564   |  5     ((((((\S)*\s)\{)((.)*){■})((■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3565   |  5     ((((((\S)*\s)\{)■)((■){■}){■})\S)([^\s{])*fail dotstar or empty
  3566   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})■)(■)*fail dotstar or empty
  3567   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})■)([^\s{]){■}fail dotstar or empty
  3568   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})\S)(■){■}fail dotstar or empty
  3569   |  5     ((((((\S)*\s)\{)((.)*)?)((■){■}){■})\S)■fail dotstar or empty
  3570   |  5     ((((((■)*\s)\{)((.)*)?)((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3571   |  5     ((((((\S){■}\s)\{)((.)*)?)((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3572   |  5     ((((((\S)*■)\{)((.)*)?)((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3573   |  5     ((((((\S)*\s)■)((.)*)?)((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3574   |  5     ((((((\S)*\s)\{)((■)*)?)((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3575   |  5     ((((((\S)*\s)\{)((.){■})?)((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3576   |  5     ((((((\S)*\s)\{)((.)*){■})((■■){■}){■})\S)([^\s{])*fail dotstar or empty
  3577   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}){■})■)([^\s{])*fail dotstar or empty
  3578   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}){■})\S)(■)*fail dotstar or empty
  3579   |  5     ((((((\S)*\s)\{)((.)*)?)((■■){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3580   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■)■){■}){■})\S)([^\s{])*fail dot
  3581   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)■){■}){■})\S)([^\s{])*fail dot
  3582   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}■){■}){■})\S)([^\s{])*fail dot
  3583   |  5     ((((((■)*\s)\{)((.)*)?)(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3584   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3585   |  5     ((((((\S)*■)\{)((.)*)?)(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3586   |  5     ((((((\S)*\s)■)((.)*)?)(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3587   |  5     ((((((\S)*\s)\{)((■)*)?)(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3588   |  5     ((((((\S)*\s)\{)((.){■})?)(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3589   |  5     ((((((\S)*\s)\{)((.)*){■})(((■|■)){■}){■})\S)([^\s{])*fail dotstar or empty
  3590   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}){■})■)([^\s{])*fail dotstar or empty
  3591   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}){■})\S)(■)*fail dotstar or empty
  3592   |  5     ((((((\S)*\s)\{)((.)*)?)(((■|■)){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3593   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■|■)){■}){■})\S)([^\s{])*fail dot
  3594   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)|■)){■}){■})\S)([^\s{])*fail dot
  3595   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}|■)){■}){■})\S)([^\s{])*fail dot
  3596   |  5     ((((((■)*\s)\{)((.)*)?)(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3597   |  5     ((((((\S){■}\s)\{)((.)*)?)(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3598   |  5     ((((((\S)*■)\{)((.)*)?)(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3599   |  5     ((((((\S)*\s)■)((.)*)?)(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3600   |  5     ((((((\S)*\s)\{)((■)*)?)(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3601   |  5     ((((((\S)*\s)\{)((.){■})?)(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3602   |  5     ((((((\S)*\s)\{)((.)*){■})(((■){■}){■}){■})\S)([^\s{])*fail dotstar or empty
  3603   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}){■})■)([^\s{])*fail dotstar or empty
  3604   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}){■})\S)(■)*fail dotstar or empty
  3605   |  5     ((((((\S)*\s)\{)((.)*)?)(((■){■}){■}){■})\S)([^\s{]){■}fail dotstar or empty
  3606   |  5     ((((((\S)*\s)\{)((.)*)?)(((■■){■}){■}){■})\S)([^\s{])*fail dot
  3607   |  5     ((((((\S)*\s)\{)((.)*)?)((((■|■)){■}){■}){■})\S)([^\s{])*fail dot
  3608   |  5     ((((((\S)*\s)\{)((.)*)?)((((■){■}){■}){■}){■})\S)([^\s{])*fail dot
  3609   |  6     ((((((■){■}■)■)((■){■})?)\})\S)([^\s{])*fail dotstar or empty
  3610   |  6     ((((((■){■}■)■)((■)*){■})\})\S)([^\s{])*fail dotstar or empty
  3611   |  6     ((((((■){■}■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  3612   |  6     ((((((■){■}■)■)((■)*)?)\})■)([^\s{])*fail dotstar or empty
  3613   |  6     ((((((■){■}■)■)((■)*)?)\})\S)(■)*fail dotstar or empty
  3614   |  6     ((((((■){■}■)■)((■)*)?)\})\S)([^\s{]){■}fail dotstar or empty
  3615   |  6     ((((((■){■}■)■)((.){■}){■})\})\S)([^\s{])*fail dotstar or empty
  3616   |  6     ((((((■){■}■)■)((.){■})?)■)\S)([^\s{])*fail dotstar or empty
  3617   |  6     ((((((■){■}■)■)((.){■})?)\})■)([^\s{])*fail dotstar or empty
  3618   |  6     ((((((■){■}■)■)((.){■})?)\})\S)(■)*fail dotstar or empty
  3619   |  6     ((((((■){■}■)■)((.){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  3620   |  6     ((((((■){■}■)■)(■)?)\})\S)([^\s{])*fail dotstar or empty
  3621   |  6     ((((((■){■}■)■)((.)*){■})■)\S)([^\s{])*fail dotstar or empty
  3622   |  6     ((((((■){■}■)■)((.)*){■})\})■)([^\s{])*fail dotstar or empty
  3623   |  6     ((((((■){■}■)■)((.)*){■})\})\S)(■)*fail dotstar or empty
  3624   |  6     ((((((■){■}■)■)((.)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  3625   |  6     ((((((■){■}■)■)■)\})\S)([^\s{])*fail dotstar or empty
  3626   |  6     ((((((■){■}■)■)((.)*)?)■)■)([^\s{])*fail dotstar or empty
  3627   |  6     ((((((■){■}■)■)((.)*)?)■)\S)(■)*fail dotstar or empty
  3628   |  6     ((((((■){■}■)■)((.)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  3629   |  6     ((((((■){■}■)■)((.)*)?)\})■)(■)*fail dotstar or empty
  3630   |  6     ((((((■){■}■)■)((.)*)?)\})■)([^\s{]){■}fail dotstar or empty
  3631   |  6     ((((((■){■}■)■)((.)*)?)\})\S)(■){■}fail dotstar or empty
  3632   |  6     ((((((■){■}■)■)((.)*)?)\})\S)■fail dotstar or empty
  3633   |  6     ((((((■){■}■)\{)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  3634   |  6     ((((((■){■}■)\{)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  3635   |  6     ((((((■){■}■)\{)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  3636   |  6     ((((((■){■}■)\{)((■){■})?)\})\S)(■)*fail dotstar or empty
  3637   |  6     ((((((■){■}■)\{)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  3638   |  6     ((((((■){■}■)\{)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  3639   |  6     ((((((■){■}■)\{)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  3640   |  6     ((((((■){■}■)\{)((■)*){■})\})\S)(■)*fail dotstar or empty
  3641   |  6     ((((((■){■}■)\{)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  3642   |  6     ((((((■){■}■)\{)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  3643   |  6     ((((((■){■}■)\{)((■)*)?)■)\S)(■)*fail dotstar or empty
  3644   |  6     ((((((■){■}■)\{)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  3645   |  6     ((((((■){■}■)\{)((■)*)?)\})■)(■)*fail dotstar or empty
  3646   |  6     ((((((■){■}■)\{)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  3647   |  6     ((((((■){■}■)\{)((■)*)?)\})\S)(■){■}fail dotstar or empty
  3648   |  6     ((((((■){■}■)\{)((■)*)?)\})\S)■fail dotstar or empty
  3649   |  6     ((((((■){■}■)\{)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  3650   |  6     ((((((■){■}■)\{)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  3651   |  6     ((((((■){■}■)\{)((.){■}){■})\})\S)(■)*fail dotstar or empty
  3652   |  6     ((((((■){■}■)\{)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  3653   |  6     ((((((■){■}■)\{)(■){■})\})\S)([^\s{])*fail dotstar or empty
  3654   |  6     ((((((■){■}■)\{)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  3655   |  6     ((((((■){■}■)\{)((.){■})?)■)\S)(■)*fail dotstar or empty
  3656   |  6     ((((((■){■}■)\{)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  3657   |  6     ((((((■){■}■)\{)(■)?)■)\S)([^\s{])*fail dotstar or empty
  3658   |  6     ((((((■){■}■)\{)((.){■})?)\})■)(■)*fail dotstar or empty
  3659   |  6     ((((((■){■}■)\{)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  3660   |  6     ((((((■){■}■)\{)(■)?)\})■)([^\s{])*fail dotstar or empty
  3661   |  6     ((((((■){■}■)\{)((.){■})?)\})\S)(■){■}fail dotstar or empty
  3662   |  6     ((((((■){■}■)\{)(■)?)\})\S)(■)*fail dotstar or empty
  3663   |  6     ((((((■){■}■)\{)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  3664   |  6     ((((((■){■}■)\{)((.){■})?)\})\S)■fail dotstar or empty
  3665   |  6     ((((((■){■}■)\{)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  3666   |  6     ((((((■){■}■)\{)((.)*){■})■)\S)(■)*fail dotstar or empty
  3667   |  6     ((((((■){■}■)\{)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  3668   |  6     ((((((■){■}■)\{)■)■)\S)([^\s{])*fail dotstar or empty
  3669   |  6     ((((((■){■}■)\{)((.)*){■})\})■)(■)*fail dotstar or empty
  3670   |  6     ((((((■){■}■)\{)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  3671   |  6     ((((((■){■}■)\{)■)\})■)([^\s{])*fail dotstar or empty
  3672   |  6     ((((((■){■}■)\{)((.)*){■})\})\S)(■){■}fail dotstar or empty
  3673   |  6     ((((((■){■}■)\{)■)\})\S)(■)*fail dotstar or empty
  3674   |  6     ((((((■){■}■)\{)■)\})\S)([^\s{]){■}fail dotstar or empty
  3675   |  6     ((((((■){■}■)\{)((.)*){■})\})\S)■fail dotstar or empty
  3676   |  6     ((((((■){■}■)\{)((.)*)?)■)■)(■)*fail dotstar or empty
  3677   |  6     ((((((■){■}■)\{)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  3678   |  6     ((((((■){■}■)\{)((.)*)?)■)\S)(■){■}fail dotstar or empty
  3679   |  6     ((((((■){■}■)\{)((.)*)?)■)\S)■fail dotstar or empty
  3680   |  6     ((((((■){■}■)\{)((.)*)?)\})■)(■){■}fail dotstar or empty
  3681   |  6     ((((((■){■}■)\{)((.)*)?)\})■)■fail dotstar or empty
  3682   |  6     ((((((■){■}\s)■)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  3683   |  6     ((((((■){■}\s)■)((■){■})?)■)\S)([^\s{])*fail dot
  3684   |  6     ((((((■){■}\s)■)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  3685   |  6     ((((((■){■}\s)■)((■){■})?)\})\S)(■)*fail dotstar or empty
  3686   |  6     ((((((■){■}\s)■)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  3687   |  6     ((((((■){■}\s)■)((■)*){■})■)\S)([^\s{])*fail dot
  3688   |  6     ((((((■){■}\s)■)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  3689   |  6     ((((((■){■}\s)■)((■)*){■})\})\S)(■)*fail dotstar or empty
  3690   |  6     ((((((■){■}\s)■)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  3691   |  6     ((((((■){■}\s)■)((■)*)?)■)■)([^\s{])*fail dot
  3692   |  6     ((((((■){■}\s)■)((■)*)?)■)\S)(■)*fail dot
  3693   |  6     ((((((■){■}\s)■)((■)*)?)■)\S)([^\s{]){■}fail dot
  3694   |  6     ((((((■■){■}\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  3695   |  6     (((((((■|■)){■}\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  3696   |  6     (((((((■){■}){■}\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  3697   |  6     ((((((■){■}\s)(■■))((■)*)?)■)\S)([^\s{])*fail dot
  3698   |  6     ((((((■){■}\s)(■|■))((■)*)?)■)\S)([^\s{])*fail dot
  3699   |  6     ((((((■){■}\s)(■){■})((■)*)?)■)\S)([^\s{])*fail dot
  3700   |  6     ((((((■){■}\s)■)((■■)*)?)■)\S)([^\s{])*fail dot
  3701   |  6     ((((((■){■}\s)■)(((■|■))*)?)■)\S)([^\s{])*fail dot
  3702   |  6     ((((((■){■}\s)■)(((■){■})*)?)■)\S)([^\s{])*fail dot
  3703   |  6     ((((((■){■}\s)■)((■)*)?)(■■))\S)([^\s{])*fail dot
  3704   |  6     ((((((■){■}\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dot
  3705   |  6     ((((((■){■}\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dot
  3706   |  6     ((((((■){■}\s)■)((■)*)?)\})■)(■)*fail dotstar or empty
  3707   |  6     ((((((■){■}\s)■)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  3708   |  6     ((((((■){■}\s)■)((■)*)?)\})\S)(■){■}fail dotstar or empty
  3709   |  6     ((((((■){■}\s)■)((■)*)?)\})\S)■fail dotstar or empty
  3710   |  6     ((((((■){■}\s)■)((.){■}){■})■)\S)([^\s{])*fail dot
  3711   |  6     ((((((■){■}\s)■)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  3712   |  6     ((((((■){■}\s)■)((.){■}){■})\})\S)(■)*fail dotstar or empty
  3713   |  6     ((((((■){■}\s)■)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  3714   |  6     ((((((■){■}\s)■)(■){■})\})\S)([^\s{])*fail dotstar or empty
  3715   |  6     ((((((■){■}\s)■)((.){■})?)■)■)([^\s{])*fail dot
  3716   |  6     ((((((■){■}\s)■)((.){■})?)■)\S)(■)*fail dot
  3717   |  6     ((((((■){■}\s)■)((.){■})?)■)\S)([^\s{]){■}fail dot
  3718   |  6     ((((((■){■}\s)■)(■)?)■)\S)([^\s{])*fail dot
  3719   |  6     ((((((■■){■}\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  3720   |  6     (((((((■|■)){■}\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  3721   |  6     (((((((■){■}){■}\s)■)((.){■})?)■)\S)([^\s{])*fail dot
  3722   |  6     ((((((■){■}\s)(■■))((.){■})?)■)\S)([^\s{])*fail dot
  3723   |  6     ((((((■){■}\s)(■|■))((.){■})?)■)\S)([^\s{])*fail dot
  3724   |  6     ((((((■){■}\s)(■){■})((.){■})?)■)\S)([^\s{])*fail dot
  3725   |  6     ((((((■){■}\s)■)((.){■})?)(■■))\S)([^\s{])*fail dot
  3726   |  6     ((((((■){■}\s)■)((.){■})?)(■|■))\S)([^\s{])*fail dot
  3727   |  6     ((((((■){■}\s)■)((.){■})?)(■){■})\S)([^\s{])*fail dot
  3728   |  6     ((((((■){■}\s)■)((.){■})?)\})■)(■)*fail dotstar or empty
  3729   |  6     ((((((■){■}\s)■)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  3730   |  6     ((((((■){■}\s)■)(■)?)\})■)([^\s{])*fail dotstar or empty
  3731   |  6     ((((((■){■}\s)■)((.){■})?)\})\S)(■){■}fail dotstar or empty
  3732   |  6     ((((((■){■}\s)■)(■)?)\})\S)(■)*fail dotstar or empty
  3733   |  6     ((((((■){■}\s)■)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  3734   |  6     ((((((■){■}\s)■)((.){■})?)\})\S)■fail dotstar or empty
  3735   |  6     ((((((■){■}\s)■)((.)*){■})■)■)([^\s{])*fail dot
  3736   |  6     ((((((■){■}\s)■)((.)*){■})■)\S)(■)*fail dot
  3737   |  6     ((((((■){■}\s)■)((.)*){■})■)\S)([^\s{]){■}fail dot
  3738   |  6     ((((((■){■}\s)■)■)■)\S)([^\s{])*fail dot
  3739   |  6     ((((((■■){■}\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  3740   |  6     (((((((■|■)){■}\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  3741   |  6     (((((((■){■}){■}\s)■)((.)*){■})■)\S)([^\s{])*fail dot
  3742   |  6     ((((((■){■}\s)(■■))((.)*){■})■)\S)([^\s{])*fail dot
  3743   |  6     ((((((■){■}\s)(■|■))((.)*){■})■)\S)([^\s{])*fail dot
  3744   |  6     ((((((■){■}\s)(■){■})((.)*){■})■)\S)([^\s{])*fail dot
  3745   |  6     ((((((■){■}\s)■)((.)*){■})(■■))\S)([^\s{])*fail dot
  3746   |  6     ((((((■){■}\s)■)((.)*){■})(■|■))\S)([^\s{])*fail dot
  3747   |  6     ((((((■){■}\s)■)((.)*){■})(■){■})\S)([^\s{])*fail dot
  3748   |  6     ((((((■){■}\s)■)((.)*){■})\})■)(■)*fail dotstar or empty
  3749   |  6     ((((((■){■}\s)■)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  3750   |  6     ((((((■){■}\s)■)■)\})■)([^\s{])*fail dotstar or empty
  3751   |  6     ((((((■){■}\s)■)((.)*){■})\})\S)(■){■}fail dotstar or empty
  3752   |  6     ((((((■){■}\s)■)■)\})\S)(■)*fail dotstar or empty
  3753   |  6     ((((((■){■}\s)■)■)\})\S)([^\s{]){■}fail dotstar or empty
  3754   |  6     ((((((■){■}\s)■)((.)*){■})\})\S)■fail dotstar or empty
  3755   |  6     ((((((■){■}\s)■)((.)*)?)■)■)(■)*fail dot
  3756   |  6     ((((((■){■}\s)■)((.)*)?)■)■)([^\s{]){■}fail dot
  3757   |  6     ((((((■■){■}\s)■)((.)*)?)■)■)([^\s{])*fail dot
  3758   |  6     (((((((■|■)){■}\s)■)((.)*)?)■)■)([^\s{])*fail dot
  3759   |  6     (((((((■){■}){■}\s)■)((.)*)?)■)■)([^\s{])*fail dot
  3760   |  6     ((((((■){■}\s)(■■))((.)*)?)■)■)([^\s{])*fail dot
  3761   |  6     ((((((■){■}\s)(■|■))((.)*)?)■)■)([^\s{])*fail dot
  3762   |  6     ((((((■){■}\s)(■){■})((.)*)?)■)■)([^\s{])*fail dot
  3763   |  6     ((((((■){■}\s)■)((.)*)?)(■■))■)([^\s{])*fail dot
  3764   |  6     ((((((■){■}\s)■)((.)*)?)(■|■))■)([^\s{])*fail dot
  3765   |  6     ((((((■){■}\s)■)((.)*)?)(■){■})■)([^\s{])*fail dot
  3766   |  6     ((((((■){■}\s)■)((.)*)?)■)(■■))([^\s{])*fail dot
  3767   |  6     ((((((■){■}\s)■)((.)*)?)■)(■|■))([^\s{])*fail dot
  3768   |  6     ((((((■){■}\s)■)((.)*)?)■)(■){■})([^\s{])*fail dot
  3769   |  6     ((((((■){■}\s)■)((.)*)?)■)\S)(■){■}fail dot
  3770   |  6     ((((((■■){■}\s)■)((.)*)?)■)\S)(■)*fail dot
  3771   |  6     (((((((■|■)){■}\s)■)((.)*)?)■)\S)(■)*fail dot
  3772   |  6     (((((((■){■}){■}\s)■)((.)*)?)■)\S)(■)*fail dot
  3773   |  6     ((((((■){■}\s)(■■))((.)*)?)■)\S)(■)*fail dot
  3774   |  6     ((((((■){■}\s)(■|■))((.)*)?)■)\S)(■)*fail dot
  3775   |  6     ((((((■){■}\s)(■){■})((.)*)?)■)\S)(■)*fail dot
  3776   |  6     ((((((■){■}\s)■)((.)*)?)(■■))\S)(■)*fail dot
  3777   |  6     ((((((■){■}\s)■)((.)*)?)(■|■))\S)(■)*fail dot
  3778   |  6     ((((((■){■}\s)■)((.)*)?)(■){■})\S)(■)*fail dot
  3779   |  6     ((((((■){■}\s)■)((.)*)?)■)\S)(■■)*fail dot
  3780   |  6     ((((((■){■}\s)■)((.)*)?)■)\S)((■|■))*fail dot
  3781   |  6     ((((((■){■}\s)■)((.)*)?)■)\S)((■){■})*fail dot
  3782   |  6     ((((((■){■}\s)■)((.)*)?)■)\S)■fail dot
  3783   |  6     ((((((■■){■}\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  3784   |  6     (((((((■|■)){■}\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  3785   |  6     (((((((■){■}){■}\s)■)((.)*)?)■)\S)([^\s{]){■}fail dot
  3786   |  6     ((((((■){■}\s)(■■))((.)*)?)■)\S)([^\s{]){■}fail dot
  3787   |  6     ((((((■){■}\s)(■|■))((.)*)?)■)\S)([^\s{]){■}fail dot
  3788   |  6     ((((((■){■}\s)(■){■})((.)*)?)■)\S)([^\s{]){■}fail dot
  3789   |  6     ((((((■){■}\s)■)((.)*)?)(■■))\S)([^\s{]){■}fail dot
  3790   |  6     ((((((■){■}\s)■)((.)*)?)(■|■))\S)([^\s{]){■}fail dot
  3791   |  6     ((((((■){■}\s)■)((.)*)?)(■){■})\S)([^\s{]){■}fail dot
  3792   |  6     ((((((■■){■}■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  3793   |  6     (((((((■■)■){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3794   |  6     (((((((■|■)■){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3795   |  6     (((((((■){■}■){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3796   |  6     ((((((■■){■}\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  3797   |  6     ((((((■■){■}\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  3798   |  6     ((((((■■){■}\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  3799   |  6     ((((((■■){■}\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  3800   |  6     ((((((■■){■}\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  3801   |  6     ((((((■■){■}\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  3802   |  6     (((((((■|■)){■}■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  3803   |  6     (((((((■■|■)){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3804   |  6     ((((((((■|■)|■)){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3805   |  6     ((((((((■){■}|■)){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3806   |  6     (((((((■|■)){■}\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  3807   |  6     (((((((■|■)){■}\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  3808   |  6     (((((((■|■)){■}\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  3809   |  6     (((((((■|■)){■}\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  3810   |  6     (((((((■|■)){■}\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  3811   |  6     (((((((■|■)){■}\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  3812   |  6     (((((((■){■}){■}■)■)((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  3813   |  6     (((((((■■){■}){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3814   |  6     ((((((((■|■)){■}){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3815   |  6     ((((((((■){■}){■}){■}\s)■)((.)*)?)■)\S)([^\s{])*fail dot
  3816   |  6     (((((((■){■}){■}\s)(■■))((.)*)?)■)\S)([^\s{])*fail dot
  3817   |  6     (((((((■){■}){■}\s)(■|■))((.)*)?)■)\S)([^\s{])*fail dot
  3818   |  6     (((((((■){■}){■}\s)(■){■})((.)*)?)■)\S)([^\s{])*fail dot
  3819   |  6     (((((((■){■}){■}\s)■)((.)*)?)(■■))\S)([^\s{])*fail dot
  3820   |  6     (((((((■){■}){■}\s)■)((.)*)?)(■|■))\S)([^\s{])*fail dot
  3821   |  6     (((((((■){■}){■}\s)■)((.)*)?)(■){■})\S)([^\s{])*fail dot
  3822   |  6     ((((((■){■}■)(■■))((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  3823   |  6     ((((((■){■}\s)(■))((.)*)?)■)\S)([^\s{])*fail dot
  3824   |  6     ((((((■){■}\s)((■■)■))((.)*)?)■)\S)([^\s{])*fail dot
  3825   |  6     ((((((■){■}\s)((■|■)■))((.)*)?)■)\S)([^\s{])*fail dot
  3826   |  6     ((((((■){■}\s)((■){■}■))((.)*)?)■)\S)([^\s{])*fail dot
  3827   |  6     ((((((■){■}\s)(■■))((.)*)?)(■■))\S)([^\s{])*fail dot
  3828   |  6     ((((((■){■}\s)(■■))((.)*)?)(■|■))\S)([^\s{])*fail dot
  3829   |  6     ((((((■){■}\s)(■■))((.)*)?)(■){■})\S)([^\s{])*fail dot
  3830   |  6     ((((((■){■}■)(■|■))((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  3831   |  6     ((((((■){■}\s)(■■|■))((.)*)?)■)\S)([^\s{])*fail dot
  3832   |  6     ((((((■){■}\s)((■|■)|■))((.)*)?)■)\S)([^\s{])*fail dot
  3833   |  6     ((((((■){■}\s)((■){■}|■))((.)*)?)■)\S)([^\s{])*fail dot
  3834   |  6     ((((((■){■}\s)(■|■))((.)*)?)(■■))\S)([^\s{])*fail dot
  3835   |  6     ((((((■){■}\s)(■|■))((.)*)?)(■|■))\S)([^\s{])*fail dot
  3836   |  6     ((((((■){■}\s)(■|■))((.)*)?)(■){■})\S)([^\s{])*fail dot
  3837   |  6     ((((((■){■}■)(■){■})((.)*)?)■)\S)([^\s{])*fail dotstar or empty
  3838   |  6     ((((((■){■}\s)(■■){■})((.)*)?)■)\S)([^\s{])*fail dot
  3839   |  6     ((((((■){■}\s)((■|■)){■})((.)*)?)■)\S)([^\s{])*fail dot
  3840   |  6     ((((((■){■}\s)((■){■}){■})((.)*)?)■)\S)([^\s{])*fail dot
  3841   |  6     ((((((■){■}\s)(■){■})((.)*)?)(■■))\S)([^\s{])*fail dot
  3842   |  6     ((((((■){■}\s)(■){■})((.)*)?)(■|■))\S)([^\s{])*fail dot
  3843   |  6     ((((((■){■}\s)(■){■})((.)*)?)(■){■})\S)([^\s{])*get a solution: (((((([1rdw	{}o0 ]){5,11}\s)([rwo]){0,3})((.)*)?)([rwo]){0,3})\S)([^\s{])*
add positive: 0	{2}	0
add negative: 0{				 
get a solution: (((((([1rdwo0]){1,4}\s)([2rdw	
{}o 0]){4,10})((.)*)?)([rwo]){0,3})\S)([^\s{])*
add positive: 2	{0}	0
add negative: 0		{0} 
get a solution: (((((([12rdw{}o0 ]){1,11}\s)([2rdw{}o 0]){3,10})((.)*)?)([rdw	}o ]){0,7})\S)([^\s{])*
  timed-out cegis for `((((((■){■}\s)(■){■})((.)*)?)(■){■})\S)([^\s{])*`
  3844   |  6     ((((((■){■}■)■)((.)*)?)(■■))\S)([^\s{])*fail dotstar or empty
  3845   |  6     ((((((■){■}\s)■)((.)*)?)(■))\S)([^\s{])*fail dot
  3846   |  6     ((((((■){■}\s)■)((.)*)?)((■■)■))\S)([^\s{])*fail dot
  3847   |  6     ((((((■){■}\s)■)((.)*)?)((■|■)■))\S)([^\s{])*fail dot
  3848   |  6     ((((((■){■}\s)■)((.)*)?)((■){■}■))\S)([^\s{])*fail dot
  3849   |  6     ((((((■){■}■)■)((.)*)?)(■|■))\S)([^\s{])*fail dotstar or empty
  3850   |  6     ((((((■){■}\s)■)((.)*)?)(■■|■))\S)([^\s{])*fail dot
  3851   |  6     ((((((■){■}\s)■)((.)*)?)((■|■)|■))\S)([^\s{])*fail dot
  3852   |  6     ((((((■){■}\s)■)((.)*)?)((■){■}|■))\S)([^\s{])*fail dot
  3853   |  6     ((((((■){■}■)■)((.)*)?)(■){■})\S)([^\s{])*fail dotstar or empty
  3854   |  6     ((((((■){■}\s)■)((.)*)?)(■■){■})\S)([^\s{])*fail dot
  3855   |  6     ((((((■){■}\s)■)((.)*)?)((■|■)){■})\S)([^\s{])*fail dot
  3856   |  6     ((((((■){■}\s)■)((.)*)?)((■){■}){■})\S)([^\s{])*fail dot
  3857   |  6     ((((((■){■}\s)■)((.)*)?)\})■)(■){■}fail dotstar or empty
  3858   |  6     ((((((■){■}\s)■)((.)*)?)\})■)■fail dotstar or empty
  3859   |  6     ((((((■){■}\s)\{)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  3860   |  6     ((((((■){■}\s)\{)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  3861   |  6     ((((((■){■}\s)\{)((■){■}){■})\})\S)(■)*fail dotstar or empty
  3862   |  6     ((((((■){■}\s)\{)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  3863   |  6     ((((((■){■}\s)\{)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  3864   |  6     ((((((■){■}\s)\{)((■){■})?)■)\S)(■)*fail dotstar or empty
  3865   |  6     ((((((■){■}\s)\{)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  3866   |  6     ((((((■){■}\s)\{)((■){■})?)\})■)(■)*fail dotstar or empty
  3867   |  6     ((((((■){■}\s)\{)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  3868   |  6     ((((((■){■}\s)\{)((■){■})?)\})\S)(■){■}fail dotstar or empty
  3869   |  6     ((((((■){■}\s)\{)((■){■})?)\})\S)■fail dotstar or empty
  3870   |  6     ((((((■){■}\s)\{)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  3871   |  6     ((((((■){■}\s)\{)((■)*){■})■)\S)(■)*fail dotstar or empty
  3872   |  6     ((((((■){■}\s)\{)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  3873   |  6     ((((((■){■}\s)\{)((■)*){■})\})■)(■)*fail dotstar or empty
  3874   |  6     ((((((■){■}\s)\{)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  3875   |  6     ((((((■){■}\s)\{)((■)*){■})\})\S)(■){■}fail dotstar or empty
  3876   |  6     ((((((■){■}\s)\{)((■)*){■})\})\S)■fail dotstar or empty
  3877   |  6     ((((((■){■}\s)\{)((■)*)?)■)■)(■)*fail dotstar or empty
  3878   |  6     ((((((■){■}\s)\{)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  3879   |  6     ((((((■){■}\s)\{)((■)*)?)■)\S)(■){■}fail dotstar or empty
  3880   |  6     ((((((■){■}\s)\{)((■)*)?)■)\S)■fail dotstar or empty
  3881   |  6     ((((((■){■}\s)\{)((■)*)?)\})■)(■){■}fail dotstar or empty
  3882   |  6     ((((((■){■}\s)\{)((■)*)?)\})■)■fail dotstar or empty
  3883   |  6     ((((((■){■}\s)\{)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  3884   |  6     ((((((■){■}\s)\{)((.){■}){■})■)\S)(■)*fail dotstar or empty
  3885   |  6     ((((((■){■}\s)\{)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  3886   |  6     ((((((■){■}\s)\{)(■){■})■)\S)([^\s{])*fail dotstar or empty
  3887   |  6     ((((((■){■}\s)\{)((.){■}){■})\})■)(■)*fail dotstar or empty
  3888   |  6     ((((((■){■}\s)\{)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  3889   |  6     ((((((■){■}\s)\{)(■){■})\})■)([^\s{])*fail dotstar or empty
  3890   |  6     ((((((■){■}\s)\{)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  3891   |  6     ((((((■){■}\s)\{)(■){■})\})\S)(■)*fail dotstar or empty
  3892   |  6     ((((((■){■}\s)\{)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  3893   |  6     ((((((■){■}\s)\{)((.){■}){■})\})\S)■fail dotstar or empty
  3894   |  6     ((((((■){■}\s)\{)((.){■})?)■)■)(■)*fail dotstar or empty
  3895   |  6     ((((((■){■}\s)\{)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  3896   |  6     ((((((■){■}\s)\{)(■)?)■)■)([^\s{])*fail dotstar or empty
  3897   |  6     ((((((■){■}\s)\{)((.){■})?)■)\S)(■){■}fail dotstar or empty
  3898   |  6     ((((((■){■}\s)\{)(■)?)■)\S)(■)*fail dotstar or empty
  3899   |  6     ((((((■){■}\s)\{)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  3900   |  6     ((((((■){■}\s)\{)((.){■})?)■)\S)■fail dotstar or empty
  3901   |  6     ((((((■){■}\s)\{)((.){■})?)\})■)(■){■}fail dotstar or empty
  3902   |  6     ((((((■){■}\s)\{)(■)?)\})■)(■)*fail dotstar or empty
  3903   |  6     ((((((■){■}\s)\{)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  3904   |  6     ((((((■){■}\s)\{)((.){■})?)\})■)■fail dotstar or empty
  3905   |  6     ((((((■){■}\s)\{)(■)?)\})\S)(■){■}fail dotstar or empty
  3906   |  6     ((((((■){■}\s)\{)(■)?)\})\S)■fail dotstar or empty
  3907   |  6     ((((((■){■}\s)\{)((.)*){■})■)■)(■)*fail dotstar or empty
  3908   |  6     ((((((■){■}\s)\{)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  3909   |  6     ((((((■){■}\s)\{)■)■)■)([^\s{])*fail dotstar or empty
  3910   |  6     ((((((■){■}\s)\{)((.)*){■})■)\S)(■){■}fail dotstar or empty
  3911   |  6     ((((((■){■}\s)\{)■)■)\S)(■)*fail dotstar or empty
  3912   |  6     ((((((■){■}\s)\{)■)■)\S)([^\s{]){■}fail dotstar or empty
  3913   |  6     ((((((■){■}\s)\{)((.)*){■})■)\S)■fail dotstar or empty
  3914   |  6     ((((((■){■}\s)\{)((.)*){■})\})■)(■){■}fail dotstar or empty
  3915   |  6     ((((((■){■}\s)\{)■)\})■)(■)*fail dotstar or empty
  3916   |  6     ((((((■){■}\s)\{)■)\})■)([^\s{]){■}fail dotstar or empty
  3917   |  6     ((((((■){■}\s)\{)((.)*){■})\})■)■fail dotstar or empty
  3918   |  6     ((((((■){■}\s)\{)■)\})\S)(■){■}fail dotstar or empty
  3919   |  6     ((((((■){■}\s)\{)■)\})\S)■fail dotstar or empty
  3920   |  6     ((((((■){■}\s)\{)((.)*)?)■)■)(■){■}fail dotstar or empty
  3921   |  6     ((((((■){■}\s)\{)((.)*)?)■)■)■fail dotstar or empty
  3922   |  6     ((((((■)*■)■)((■){■}){■})\})\S)([^\s{])*fail dotstar or empty
  3923   |  6     ((((((■)*■)■)((■){■})?)■)\S)([^\s{])*fail dotstar or empty
  3924   |  6     ((((((■)*■)■)((■){■})?)\})■)([^\s{])*fail dotstar or empty
  3925   |  6     ((((((■)*■)■)((■){■})?)\})\S)(■)*fail dotstar or empty
  3926   |  6     ((((((■)*■)■)((■){■})?)\})\S)([^\s{]){■}fail dotstar or empty
  3927   |  6     ((((((■)*■)■)((■)*){■})■)\S)([^\s{])*fail dotstar or empty
  3928   |  6     ((((((■)*■)■)((■)*){■})\})■)([^\s{])*fail dotstar or empty
  3929   |  6     ((((((■)*■)■)((■)*){■})\})\S)(■)*fail dotstar or empty
  3930   |  6     ((((((■)*■)■)((■)*){■})\})\S)([^\s{]){■}fail dotstar or empty
  3931   |  6     ((((((■)*■)■)((■)*)?)■)■)([^\s{])*fail dotstar or empty
  3932   |  6     ((((((■)*■)■)((■)*)?)■)\S)(■)*fail dotstar or empty
  3933   |  6     ((((((■)*■)■)((■)*)?)■)\S)([^\s{]){■}fail dotstar or empty
  3934   |  6     ((((((■)*■)■)((■)*)?)\})■)(■)*fail dotstar or empty
  3935   |  6     ((((((■)*■)■)((■)*)?)\})■)([^\s{]){■}fail dotstar or empty
  3936   |  6     ((((((■)*■)■)((■)*)?)\})\S)(■){■}fail dotstar or empty
  3937   |  6     ((((((■)*■)■)((■)*)?)\})\S)■fail dotstar or empty
  3938   |  6     ((((((■)*■)■)((.){■}){■})■)\S)([^\s{])*fail dotstar or empty
  3939   |  6     ((((((■)*■)■)((.){■}){■})\})■)([^\s{])*fail dotstar or empty
  3940   |  6     ((((((■)*■)■)((.){■}){■})\})\S)(■)*fail dotstar or empty
  3941   |  6     ((((((■)*■)■)((.){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  3942   |  6     ((((((■)*■)■)(■){■})\})\S)([^\s{])*fail dotstar or empty
  3943   |  6     ((((((■)*■)■)((.){■})?)■)■)([^\s{])*fail dotstar or empty
  3944   |  6     ((((((■)*■)■)((.){■})?)■)\S)(■)*fail dotstar or empty
  3945   |  6     ((((((■)*■)■)((.){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  3946   |  6     ((((((■)*■)■)(■)?)■)\S)([^\s{])*fail dotstar or empty
  3947   |  6     ((((((■)*■)■)((.){■})?)\})■)(■)*fail dotstar or empty
  3948   |  6     ((((((■)*■)■)((.){■})?)\})■)([^\s{]){■}fail dotstar or empty
  3949   |  6     ((((((■)*■)■)(■)?)\})■)([^\s{])*fail dotstar or empty
  3950   |  6     ((((((■)*■)■)((.){■})?)\})\S)(■){■}fail dotstar or empty
  3951   |  6     ((((((■)*■)■)(■)?)\})\S)(■)*fail dotstar or empty
  3952   |  6     ((((((■)*■)■)(■)?)\})\S)([^\s{]){■}fail dotstar or empty
  3953   |  6     ((((((■)*■)■)((.){■})?)\})\S)■fail dotstar or empty
  3954   |  6     ((((((■)*■)■)((.)*){■})■)■)([^\s{])*fail dotstar or empty
  3955   |  6     ((((((■)*■)■)((.)*){■})■)\S)(■)*fail dotstar or empty
  3956   |  6     ((((((■)*■)■)((.)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  3957   |  6     ((((((■)*■)■)■)■)\S)([^\s{])*fail dotstar or empty
  3958   |  6     ((((((■)*■)■)((.)*){■})\})■)(■)*fail dotstar or empty
  3959   |  6     ((((((■)*■)■)((.)*){■})\})■)([^\s{]){■}fail dotstar or empty
  3960   |  6     ((((((■)*■)■)■)\})■)([^\s{])*fail dotstar or empty
  3961   |  6     ((((((■)*■)■)((.)*){■})\})\S)(■){■}fail dotstar or empty
  3962   |  6     ((((((■)*■)■)■)\})\S)(■)*fail dotstar or empty
  3963   |  6     ((((((■)*■)■)■)\})\S)([^\s{]){■}fail dotstar or empty
  3964   |  6     ((((((■)*■)■)((.)*){■})\})\S)■fail dotstar or empty
  3965   |  6     ((((((■)*■)■)((.)*)?)■)■)(■)*fail dotstar or empty
  3966   |  6     ((((((■)*■)■)((.)*)?)■)■)([^\s{]){■}fail dotstar or empty
  3967   |  6     ((((((■)*■)■)((.)*)?)■)\S)(■){■}fail dotstar or empty
  3968   |  6     ((((((■)*■)■)((.)*)?)■)\S)■fail dotstar or empty
  3969   |  6     ((((((■)*■)■)((.)*)?)\})■)(■){■}fail dotstar or empty
  3970   |  6     ((((((■)*■)■)((.)*)?)\})■)■fail dotstar or empty
  3971   |  6     ((((((■)*■)\{)((■){■}){■})■)\S)([^\s{])*fail dotstar or empty
  3972   |  6     ((((((■)*■)\{)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  3973   |  6     ((((((■)*■)\{)((■){■}){■})\})\S)(■)*fail dotstar or empty
  3974   |  6     ((((((■)*■)\{)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  3975   |  6     ((((((■)*■)\{)((■){■})?)■)■)([^\s{])*fail dotstar or empty
  3976   |  6     ((((((■)*■)\{)((■){■})?)■)\S)(■)*fail dotstar or empty
  3977   |  6     ((((((■)*■)\{)((■){■})?)■)\S)([^\s{]){■}fail dotstar or empty
  3978   |  6     ((((((■)*■)\{)((■){■})?)\})■)(■)*fail dotstar or empty
  3979   |  6     ((((((■)*■)\{)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  3980   |  6     ((((((■)*■)\{)((■){■})?)\})\S)(■){■}fail dotstar or empty
  3981   |  6     ((((((■)*■)\{)((■){■})?)\})\S)■fail dotstar or empty
  3982   |  6     ((((((■)*■)\{)((■)*){■})■)■)([^\s{])*fail dotstar or empty
  3983   |  6     ((((((■)*■)\{)((■)*){■})■)\S)(■)*fail dotstar or empty
  3984   |  6     ((((((■)*■)\{)((■)*){■})■)\S)([^\s{]){■}fail dotstar or empty
  3985   |  6     ((((((■)*■)\{)((■)*){■})\})■)(■)*fail dotstar or empty
  3986   |  6     ((((((■)*■)\{)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  3987   |  6     ((((((■)*■)\{)((■)*){■})\})\S)(■){■}fail dotstar or empty
  3988   |  6     ((((((■)*■)\{)((■)*){■})\})\S)■fail dotstar or empty
  3989   |  6     ((((((■)*■)\{)((■)*)?)■)■)(■)*fail dotstar or empty
  3990   |  6     ((((((■)*■)\{)((■)*)?)■)■)([^\s{]){■}fail dotstar or empty
  3991   |  6     ((((((■)*■)\{)((■)*)?)■)\S)(■){■}fail dotstar or empty
  3992   |  6     ((((((■)*■)\{)((■)*)?)■)\S)■fail dotstar or empty
  3993   |  6     ((((((■)*■)\{)((■)*)?)\})■)(■){■}fail dotstar or empty
  3994   |  6     ((((((■)*■)\{)((■)*)?)\})■)■fail dotstar or empty
  3995   |  6     ((((((■)*■)\{)((.){■}){■})■)■)([^\s{])*fail dotstar or empty
  3996   |  6     ((((((■)*■)\{)((.){■}){■})■)\S)(■)*fail dotstar or empty
  3997   |  6     ((((((■)*■)\{)((.){■}){■})■)\S)([^\s{]){■}fail dotstar or empty
  3998   |  6     ((((((■)*■)\{)(■){■})■)\S)([^\s{])*fail dotstar or empty
  3999   |  6     ((((((■)*■)\{)((.){■}){■})\})■)(■)*fail dotstar or empty
  4000   |  6     ((((((■)*■)\{)((.){■}){■})\})■)([^\s{]){■}fail dotstar or empty
  4001   |  6     ((((((■)*■)\{)(■){■})\})■)([^\s{])*fail dotstar or empty
  4002   |  6     ((((((■)*■)\{)((.){■}){■})\})\S)(■){■}fail dotstar or empty
  4003   |  6     ((((((■)*■)\{)(■){■})\})\S)(■)*fail dotstar or empty
  4004   |  6     ((((((■)*■)\{)(■){■})\})\S)([^\s{]){■}fail dotstar or empty
  4005   |  6     ((((((■)*■)\{)((.){■}){■})\})\S)■fail dotstar or empty
  4006   |  6     ((((((■)*■)\{)((.){■})?)■)■)(■)*fail dotstar or empty
  4007   |  6     ((((((■)*■)\{)((.){■})?)■)■)([^\s{]){■}fail dotstar or empty
  4008   |  6     ((((((■)*■)\{)(■)?)■)■)([^\s{])*fail dotstar or empty
  4009   |  6     ((((((■)*■)\{)((.){■})?)■)\S)(■){■}fail dotstar or empty
  4010   |  6     ((((((■)*■)\{)(■)?)■)\S)(■)*fail dotstar or empty
  4011   |  6     ((((((■)*■)\{)(■)?)■)\S)([^\s{]){■}fail dotstar or empty
  4012   |  6     ((((((■)*■)\{)((.){■})?)■)\S)■fail dotstar or empty
  4013   |  6     ((((((■)*■)\{)((.){■})?)\})■)(■){■}fail dotstar or empty
  4014   |  6     ((((((■)*■)\{)(■)?)\})■)(■)*fail dotstar or empty
  4015   |  6     ((((((■)*■)\{)(■)?)\})■)([^\s{]){■}fail dotstar or empty
  4016   |  6     ((((((■)*■)\{)((.){■})?)\})■)■fail dotstar or empty
  4017   |  6     ((((((■)*■)\{)(■)?)\})\S)(■){■}fail dotstar or empty
  4018   |  6     ((((((■)*■)\{)(■)?)\})\S)■fail dotstar or empty
  4019   |  6     ((((((■)*■)\{)((.)*){■})■)■)(■)*fail dotstar or empty
  4020   |  6     ((((((■)*■)\{)((.)*){■})■)■)([^\s{]){■}fail dotstar or empty
  4021   |  6     ((((((■)*■)\{)■)■)■)([^\s{])*fail dotstar or empty
  4022   |  6     ((((((■)*■)\{)((.)*){■})■)\S)(■){■}fail dotstar or empty
  4023   |  6     ((((((■)*■)\{)■)■)\S)(■)*fail dotstar or empty
  4024   |  6     ((((((■)*■)\{)■)■)\S)([^\s{]){■}fail dotstar or empty
  4025   |  6     ((((((■)*■)\{)((.)*){■})■)\S)■fail dotstar or empty
  4026   |  6     ((((((■)*■)\{)((.)*){■})\})■)(■){■}fail dotstar or empty
  4027   |  6     ((((((■)*■)\{)■)\})■)(■)*fail dotstar or empty
  4028   |  6     ((((((■)*■)\{)■)\})■)([^\s{]){■}fail dotstar or empty
  4029   |  6     ((((((■)*■)\{)((.)*){■})\})■)■fail dotstar or empty
  4030   |  6     ((((((■)*■)\{)■)\})\S)(■){■}fail dotstar or empty
  4031   |  6     ((((((■)*■)\{)■)\})\S)■ fail dotstar or empty
  4032   |  6     ((((((■)*■)\{)((.)*)?)■)■)(■){■}fail dotstar or empty
  4033   |  6     ((((((■)*■)\{)((.)*)?)■)■)■fail dotstar or empty
  4034   |  6     ((((((■)*\s)■)((■){■}){■})■)\S)([^\s{])*fail dot
  4035   |  6     ((((((■)*\s)■)((■){■}){■})\})■)([^\s{])*fail dotstar or empty
  4036   |  6     ((((((■)*\s)■)((■){■}){■})\})\S)(■)*fail dotstar or empty
  4037   |  6     ((((((■)*\s)■)((■){■}){■})\})\S)([^\s{]){■}fail dotstar or empty
  4038   |  6     ((((((■)*\s)■)((■){■})?)■)■)([^\s{])*fail dot
  4039   |  6     ((((((■)*\s)■)((■){■})?)■)\S)(■)*fail dot
  4040   |  6     ((((((■)*\s)■)((■){■})?)■)\S)([^\s{]){■}fail dot
  4041   |  6     ((((((■■)*\s)■)((■){■})?)■)\S)([^\s{])*fail dot
  4042   |  6     (((((((■|■))*\s)■)((■){■})?)■)\S)([^\s{])*fail dot
  4043   |  6     (((((((■){■})*\s)■)((■){■})?)■)\S)([^\s{])*fail dot
  4044   |  6     ((((((■)*\s)(■■))((■){■})?)■)\S)([^\s{])*fail dot
  4045   |  6     ((((((■)*\s)(■|■))((■){■})?)■)\S)([^\s{])*fail dot
  4046   |  6     ((((((■)*\s)(■){■})((■){■})?)■)\S)([^\s{])*fail dot
  4047   |  6     ((((((■)*\s)■)((■■){■})?)■)\S)([^\s{])*fail dot
  4048   |  6     ((((((■)*\s)■)(((■|■)){■})?)■)\S)([^\s{])*fail dot
  4049   |  6     ((((((■)*\s)■)(((■){■}){■})?)■)\S)([^\s{])*fail dot
  4050   |  6     ((((((■)*\s)■)((■){■})?)(■■))\S)([^\s{])*fail dot
  4051   |  6     ((((((■)*\s)■)((■){■})?)(■|■))\S)([^\s{])*fail dot
  4052   |  6     ((((((■)*\s)■)((■){■})?)(■){■})\S)([^\s{])*fail dot
  4053   |  6     ((((((■)*\s)■)((■){■})?)\})■)(■)*fail dotstar or empty
  4054   |  6     ((((((■)*\s)■)((■){■})?)\})■)([^\s{]){■}fail dotstar or empty
  4055   |  6     ((((((■)*\s)■)((■){■})?)\})\S)(■){■}fail dotstar or empty
  4056   |  6     ((((((■)*\s)■)((■){■})?)\})\S)■fail dotstar or empty
  4057   |  6     ((((((■)*\s)■)((■)*){■})■)■)([^\s{])*fail dot
  4058   |  6     ((((((■)*\s)■)((■)*){■})■)\S)(■)*fail dot
  4059   |  6     ((((((■)*\s)■)((■)*){■})■)\S)([^\s{]){■}fail dot
  4060   |  6     ((((((■■)*\s)■)((■)*){■})■)\S)([^\s{])*fail dot
  4061   |  6     (((((((■|■))*\s)■)((■)*){■})■)\S)([^\s{])*fail dot
  4062   |  6     (((((((■){■})*\s)■)((■)*){■})■)\S)([^\s{])*fail dot
  4063   |  6     ((((((■)*\s)(■■))((■)*){■})■)\S)([^\s{])*fail dot
  4064   |  6     ((((((■)*\s)(■|■))((■)*){■})■)\S)([^\s{])*fail dot
  4065   |  6     ((((((■)*\s)(■){■})((■)*){■})■)\S)([^\s{])*fail dot
  4066   |  6     ((((((■)*\s)■)((■■)*){■})■)\S)([^\s{])*fail dot
  4067   |  6     ((((((■)*\s)■)(((■|■))*){■})■)\S)([^\s{])*fail dot
  4068   |  6     ((((((■)*\s)■)(((■){■})*){■})■)\S)([^\s{])*fail dot
  4069   |  6     ((((((■)*\s)■)((■)*){■})(■■))\S)([^\s{])*fail dot
  4070   |  6     ((((((■)*\s)■)((■)*){■})(■|■))\S)([^\s{])*fail dot
  4071   |  6     ((((((■)*\s)■)((■)*){■})(■){■})\S)([^\s{])*fail dot
  4072   |  6     ((((((■)*\s)■)((■)*){■})\})■)(■)*fail dotstar or empty
  4073   |  6     ((((((■)*\s)■)((■)*){■})\})■)([^\s{]){■}fail dotstar or empty
  4074   |  6     ((((((■)*\s)■)((■)*){■})\})\S)(■){■}fail dotstar or empty
  4075   |  6     ((((((■)*\s)■)((■)*){■})\})\S)■fail dotstar or empty
  4076   |  6     ((((((■)*\s)■)((■)*)?)■)■)(■)*fail dot
  4077   |  6     ((((((■)*\s)■)((■)*)?)■)■)([^\s{]){■}fail dot
  4078   |  6     ((((((■■)*\s)■)((■)*)?)■)■)([^\s{])*fail dot
  4079   |  6     (((((((■|■))*\s)■)((■)*)?)■)■)([^\s{])*fail dot
  4080   |  6     (((((((■){■})*\s)■)((■)*)?)■)■)([^\s{])*fail dot
  4081   |  6     ((((((■)*\s)(■■))((■)*)?)■)■)([^\s{])*fail dot
  4082   |  6     ((((((■)*\s)(■|■))((■)*)?)■)■)([^\s{])*fail dot
  4083   |  6     ((((((■)*\s)(■){■})((■)*)?)■)■)([^\s{])*fail dot
  4084   |  6     ((((((■)*\s)■)((■■)*)?)■)■)([^\s{])*fail dot
  4085   |  6     ((((((■)*\s)■)(((■|■))*)?)■)■)([^\s{])*fail dot
  4086   |  6     ((((((■)*\s)■)(((■){■})*)?)■)■)([^\s{])*fail dot
  4087   |  6     ((((((■)*\s)■)((■)*)?)(■■))■)([^\s{])*fail dot
  4088   |  6     ((((((■)*\s)■)((■)*)?)(■|■))■)([^\s{])*fail dot
  4089   |  6     ((((((■)*\s)■)((■)*)?)(■){■})■)([^\s{])*fail dot
  4090   |  6     ((((((■)*\s)■)((■)*)?)■)(■■))([^\s{])*fail dot
  4091   |  6     ((((((■)*\s)■)((■)*)?)■)(■|■))([^\s{])*fail dot
  4092   |  6     ((((((■)*\s)■)((■)*)?)■)(■){■})([^\s{])*fail dot
  4093   |  6     ((((((■)*\s)■)((■)*)?)■)\S)(■){■}fail dot
  4094   |  6     ((((((■■)*\s)■)((■)*)?)■)\S)(■)*fail dot
  4095   |  6     (((((((■|■))*\s)■)((■)*)?)■)\S)(■)*fail dot
  4096   |  6     (((((((■){■})*\s)■)((■)*)?)■)\S)(■)*fail dot
  4097   |  6     ((((((■)*\s)(■■))((■)*)?)■)\S)(■)*fail dot
  4098   |  6     ((((((■)*\s)(■|■))((■)*)?)■)\S)(■)*fail dot
  4099   |  6     ((((((■)*\s)(■){■})((■)*)?)■)\S)(■)*fail dot
  4100   |  6     ((((((■)*\s)■)((■■)*)?)■)\S)(■)*fail dot
  4101   |  6     ((((((■)*\s)■)(((■|■))*)?)■)\S)(■)*fail dot
  4102   |  6     ((((((■)*\s)■)(((■){■})*)?)■)\S)(■)*fail dot
  4103   |  6     ((((((■)*\s)■)((■)*)?)(■■))\S)(■)*fail dot
  4104   |  6     ((((((■)*\s)■)((■)*)?)(■|■))\S)(■)*fail dot
  4105   |  6     ((((((■)*\s)■)((■)*)?)(■){■})\S)(■)*fail dot
  4106   |  6     ((((((■)*\s)■)((■)*)?)■)\S)(■■)*fail dot
  4107   |  6     ((((((■)*\s)■)((■)*)?)■)\S)((■|■))*fail dot
  4108   |  6     ((((((■)*\s)■)((■)*)?)■)\S)((■){■})*fail dot
  4109   |  6     ((((((■)*\s)■)((■)*)?)■)\S)■fail dot
  4110   |  6     ((((((■■)*\s)■)((■)*)?)■)\S)([^\s{]){■}fail dot
  4111   |  6     (((((((■|■))*\s)■)((■)*)?)■)\S)([^\s{]){■}fail dot
  4112   |  6     (((((((■){■})*\s)■)((■)*)?)■)\S)([^\s{]){■}fail dot
  4113   |  6     ((((((■)*\s)(■■))((■)*)?)■)\S)([^\s{]){■}fail dot
  4114   |  6     ((((((■)*\s)(■|■))((■)*)?)■)\S)([^\s{]){■}fail dot
  4115   |  6     ((((((■)*\s)(■){■})((■)*)?)■)\S)([^\s{]){■}fail dot
  4116   |  6     ((((((■)*\s)■)((■■)*)?)■)\S)([^\s{]){■}fail dot
  4117   |  6     ((((((■)*\s)■)(((■|■))*)?)■)\S)([^\s{]){■}fail dot
  4118   |  6     ((((((■)*\s)■)(((■){■})*)?)■)\S)([^\s{]){■}fail dot
  4119   |  6     ((((((■)*\s)■)((■)*)?)(■■))\S)([^\s{]){■}fail dot
  4120   |  6     ((((((■)*\s)■)((■)*)?)(■|■))\S)([^\s{]){■}fail dot
  4121   |  6     ((((((■)*\s)■)((■)*)?)(■){■})\S)([^\s{]){■}fail dot
  4122   |  6     ((((((■■)*■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  4123   |  6     (((((((■■)■)*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4124   |  6     (((((((■|■)■)*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4125   |  6     (((((((■){■}■)*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4126   |  6     ((((((■(■■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4127   |  6     ((((((■(■|■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4128   |  6     ((((((■(■){■})*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4129   |  6     ((((((■■)*\s)(■■))((■)*)?)■)\S)([^\s{])*fail dot
  4130   |  6     ((((((■■)*\s)(■|■))((■)*)?)■)\S)([^\s{])*fail dot
  4131   |  6     ((((((■■)*\s)(■){■})((■)*)?)■)\S)([^\s{])*fail dot
  4132   |  6     ((((((■■)*\s)■)((■■)*)?)■)\S)([^\s{])*fail dot
  4133   |  6     ((((((■■)*\s)■)(((■|■))*)?)■)\S)([^\s{])*fail dot
  4134   |  6     ((((((■■)*\s)■)(((■){■})*)?)■)\S)([^\s{])*fail dot
  4135   |  6     ((((((■■)*\s)■)((■)*)?)(■■))\S)([^\s{])*fail dot
  4136   |  6     ((((((■■)*\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dot
  4137   |  6     ((((((■■)*\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dot
  4138   |  6     (((((((■|■))*■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  4139   |  6     (((((((■■|■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4140   |  6     ((((((((■|■)|■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4141   |  6     ((((((((■){■}|■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4142   |  6     (((((((■|■■))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4143   |  6     (((((((■|(■|■)))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4144   |  6     (((((((■|(■){■}))*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4145   |  6     (((((((■|■))*\s)(■■))((■)*)?)■)\S)([^\s{])*fail dot
  4146   |  6     (((((((■|■))*\s)(■|■))((■)*)?)■)\S)([^\s{])*fail dot
  4147   |  6     (((((((■|■))*\s)(■){■})((■)*)?)■)\S)([^\s{])*fail dot
  4148   |  6     (((((((■|■))*\s)■)((■■)*)?)■)\S)([^\s{])*fail dot
  4149   |  6     (((((((■|■))*\s)■)(((■|■))*)?)■)\S)([^\s{])*fail dot
  4150   |  6     (((((((■|■))*\s)■)(((■){■})*)?)■)\S)([^\s{])*fail dot
  4151   |  6     (((((((■|■))*\s)■)((■)*)?)(■■))\S)([^\s{])*fail dot
  4152   |  6     (((((((■|■))*\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dot
  4153   |  6     (((((((■|■))*\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dot
  4154   |  6     (((((((■){■})*■)■)((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  4155   |  6     (((((((■■){■})*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4156   |  6     ((((((((■|■)){■})*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4157   |  6     ((((((((■){■}){■})*\s)■)((■)*)?)■)\S)([^\s{])*fail dot
  4158   |  6     (((((((■){■})*\s)(■■))((■)*)?)■)\S)([^\s{])*fail dot
  4159   |  6     (((((((■){■})*\s)(■|■))((■)*)?)■)\S)([^\s{])*fail dot
  4160   |  6     (((((((■){■})*\s)(■){■})((■)*)?)■)\S)([^\s{])*fail dot
  4161   |  6     (((((((■){■})*\s)■)((■■)*)?)■)\S)([^\s{])*fail dot
  4162   |  6     (((((((■){■})*\s)■)(((■|■))*)?)■)\S)([^\s{])*fail dot
  4163   |  6     (((((((■){■})*\s)■)(((■){■})*)?)■)\S)([^\s{])*fail dot
  4164   |  6     (((((((■){■})*\s)■)((■)*)?)(■■))\S)([^\s{])*fail dot
  4165   |  6     (((((((■){■})*\s)■)((■)*)?)(■|■))\S)([^\s{])*fail dot
  4166   |  6     (((((((■){■})*\s)■)((■)*)?)(■){■})\S)([^\s{])*fail dot
  4167   |  6     ((((((■)*■)(■■))((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  4168   |  6     ((((((■)*\s)(■))((■)*)?)■)\S)([^\s{])*fail dot
  4169   |  6     ((((((■)*\s)((■■)■))((■)*)?)■)\S)([^\s{])*fail dot
  4170   |  6     ((((((■)*\s)((■|■)■))((■)*)?)■)\S)([^\s{])*fail dot
  4171   |  6     ((((((■)*\s)((■){■}■))((■)*)?)■)\S)([^\s{])*fail dot
  4172   |  6     ((((((■)*\s)(■■))((■■)*)?)■)\S)([^\s{])*fail dot
  4173   |  6     ((((((■)*\s)(■■))(((■|■))*)?)■)\S)([^\s{])*fail dot
  4174   |  6     ((((((■)*\s)(■■))(((■){■})*)?)■)\S)([^\s{])*fail dot
  4175   |  6     ((((((■)*\s)(■■))((■)*)?)(■■))\S)([^\s{])*fail dot
  4176   |  6     ((((((■)*\s)(■■))((■)*)?)(■|■))\S)([^\s{])*fail dot
  4177   |  6     ((((((■)*\s)(■■))((■)*)?)(■){■})\S)([^\s{])*fail dot
  4178   |  6     ((((((■)*■)(■|■))((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  4179   |  6     ((((((■)*\s)(■■|■))((■)*)?)■)\S)([^\s{])*fail dot
  4180   |  6     ((((((■)*\s)((■|■)|■))((■)*)?)■)\S)([^\s{])*fail dot
  4181   |  6     ((((((■)*\s)((■){■}|■))((■)*)?)■)\S)([^\s{])*fail dot
  4182   |  6     ((((((■)*\s)(■|■))((■■)*)?)■)\S)([^\s{])*fail dot
  4183   |  6     ((((((■)*\s)(■|■))(((■|■))*)?)■)\S)([^\s{])*fail dot
  4184   |  6     ((((((■)*\s)(■|■))(((■){■})*)?)■)\S)([^\s{])*fail dot
  4185   |  6     ((((((■)*\s)(■|■))((■)*)?)(■■))\S)([^\s{])*fail dot
  4186   |  6     ((((((■)*\s)(■|■))((■)*)?)(■|■))\S)([^\s{])*fail dot
  4187   |  6     ((((((■)*\s)(■|■))((■)*)?)(■){■})\S)([^\s{])*fail dot
  4188   |  6     ((((((■)*■)(■){■})((■)*)?)■)\S)([^\s{])*fail dotstar or empty
  4189   |  6     ((((((■)*\s)(■■){■})((■)*)?)■)\S)([^\s{])*fail dot
  4190   |  6     ((((((■)*\s)((■|■)){■})((■)*)?)■)\S)([^\s{])*fail dot
  4191   |  6     ((((((■)*\s)((■){■}){■})((■)*)?)■)\S)([^\s{])*fail dot
  4192   |  6     ((((((■)*\s)(■){■})((■■)*)?)■)\S)([^\s{])*fail dot
  4193   |  6     ((((((■)*\s)(■){■})(((■|■))*)?)■)\S)([^\s{])*fail dot
  4194   |  6     ((((((■)*\s)(■){■})(((■){■})*)?)■)\S)([^\s{])*fail dot
  4195   |  6     ((((((■)*\s)(■){■})((■)*)?)(■■))\S)([^\s{])*fail dot
  4196   |  6     ((((((■)*\s)(■){■})((■)*)?)(■|■))\S)([^\s{])*fail dot
  4197   |  6     ((((((■)*\s)(■){■})((■)*)?)(■){■})\S)([^\s{])*get a solution: (((((([12rdw{}o0 ])*\s)([2rdw
{}o 0]){3,10})(([rdw	
}o ])*)?)([rdw	
}o ]){0,7})\S)([^\s{])*

10.10194993019104
timeout