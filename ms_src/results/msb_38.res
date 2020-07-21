
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

10.162988901138306
timeout