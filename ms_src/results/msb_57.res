
Given the regular expression:

  (((\d)+\.(\d)+|(\d)+([\.\/\d ])*)|\d)

That that should match the strings:


And reject the strings:

  ✗ (0:2)    3.
  ✗ (2:8)    43 1/3
  ✗ (8:17)   10 / 43.3

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)+\.)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  2      |  1     ((((\d){■}\.)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  3      |  1     ((((\d)+■)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  4      |  1     ((((\d)+\.)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  5      |  1     ((((\d)+\.)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  6      |  1     ((((\d)+\.)(\d)+|(■)+([\.\/\d ])*)|\d)get a solution: ((((\d)+\.)(\d)+|([∅])+([\.\/\d ])*)|\d)
add positive: /0/igm
add negative: 0
  7      |  1     ((((\d)+\.)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  8      |  1     ((((\d)+\.)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  9      |  1     ((((\d)+\.)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  10     |  1     ((((\d)+\.)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  11     |  2     ((((■){■}\.)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  12     |  2     ((((■)+■)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  13     |  2     ((((■)+\.)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  14     |  2     ((((■)+\.)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  15     |  2     ((((■)+\.)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  16     |  2     ((((■)+\.)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  17     |  2     ((((■)+\.)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  18     |  2     ((((■)+\.)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  19     |  2     ((((■)+\.)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  20     |  2     ((((\d){■}■)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  21     |  2     ((((\d){■}\.)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  22     |  2     ((((\d){■}\.)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  23     |  2     ((((\d){■}\.)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  24     |  2     ((((\d){■}\.)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  25     |  2     ((((\d){■}\.)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  26     |  2     ((((\d){■}\.)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  27     |  2     ((((\d){■}\.)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  28     |  2     (((■\.)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  29     |  2     ((((\d)+■)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  30     |  2     ((((\d)+■)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  31     |  2     ((((\d)+■)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  32     |  2     ((((\d)+■)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  33     |  2     ((((\d)+■)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  34     |  2     ((((\d)+■)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  35     |  2     ((((\d)+■)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  36     |  2     ((((\d)+\.)(■){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  37     |  2     ((((\d)+\.)(■)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  38     |  2     ((((\d)+\.)(■)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  39     |  2     ((((\d)+\.)(■)+|(\d)+(■)*)|\d)fail dotstar or empty
  40     |  2     ((((\d)+\.)(■)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  41     |  2     ((((\d)+\.)(■)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  42     |  2     ((((\d)+\.)(\d){■}|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  43     |  2     ((((\d)+\.)(\d){■}|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  44     |  2     ((((\d)+\.)(\d){■}|(\d)+(■)*)|\d)fail dotstar or empty
  45     |  2     ((((\d)+\.)(\d){■}|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  46     |  2     ((((\d)+\.)(\d){■}|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  47     |  2     ((((\d)+\.)■|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  48     |  2     ((((\d)+\.)(\d)+|(■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  49     |  2     ((((\d)+\.)(\d)+|(■)+(■)*)|\d)fail dotstar or empty
  50     |  2     ((((\d)+\.)(\d)+|(■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  51     |  2     ((((\d)+\.)(\d)+|(■)+([\.\/\d ])*)|■)  unsatisfiable SAT formula       
  52     |  2     ((((\d)+\.)(\d)+|(■■)+([\.\/\d ])*)|\d)  53     |  2     ((((\d)+\.)(\d)+|((■|■))+([\.\/\d ])*)|\d)fail solve
  54     |  2     ((((\d)+\.)(\d)+|((■){■})+([\.\/\d ])*)|\d)  55     |  2     ((((\d)+\.)(\d)+|(\d){■}(■)*)|\d)fail dotstar or empty
  56     |  2     ((((\d)+\.)(\d)+|(\d){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  57     |  2     ((((\d)+\.)(\d)+|(\d){■}([\.\/\d ])*)|■)fail dot
  58     |  2     ((((\d)+\.)(\d)+|■([\.\/\d ])*)|\d)fail dotstar or empty
  59     |  2     ((((\d)+\.)(\d)+|(\d)+(■){■})|\d)fail dotstar or empty
  60     |  2     ((((\d)+\.)(\d)+|(\d)+(■)*)|■)fail dotstar or empty
  61     |  2     ((((\d)+\.)(\d)+|(\d)+([\.\/\d ]){■})|■)fail dot
  62     |  2     ((((\d)+\.)(\d)+|(\d)+■)|\d)fail dotstar or empty
  63     |  3     ((((■){■}■)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  64     |  3     ((((■){■}\.)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  65     |  3     ((((■){■}\.)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  66     |  3     ((((■){■}\.)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  67     |  3     ((((■){■}\.)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  68     |  3     ((((■){■}\.)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  69     |  3     ((((■){■}\.)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  70     |  3     ((((■){■}\.)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  71     |  3     ((((■)+■)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  72     |  3     ((((■)+■)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  73     |  3     ((((■)+■)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  74     |  3     ((((■)+■)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  75     |  3     ((((■)+■)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  76     |  3     ((((■)+■)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  77     |  3     ((((■)+■)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  78     |  3     ((((■)+\.)(■){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  79     |  3     ((((■)+\.)(■)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  80     |  3     ((((■)+\.)(■)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  81     |  3     ((((■)+\.)(■)+|(\d)+(■)*)|\d)fail dotstar or empty
  82     |  3     ((((■)+\.)(■)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  83     |  3     ((((■)+\.)(■)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  84     |  3     ((((■)+\.)(\d){■}|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  85     |  3     ((((■)+\.)(\d){■}|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  86     |  3     ((((■)+\.)(\d){■}|(\d)+(■)*)|\d)fail dotstar or empty
  87     |  3     ((((■)+\.)(\d){■}|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  88     |  3     ((((■)+\.)(\d){■}|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  89     |  3     ((((■)+\.)■|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  90     |  3     ((((■)+\.)(\d)+|(■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  91     |  3     ((((■)+\.)(\d)+|(■)+(■)*)|\d)fail dotstar or empty
  92     |  3     ((((■)+\.)(\d)+|(■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  93     |  3     ((((■)+\.)(\d)+|(■)+([\.\/\d ])*)|■)  unsatisfiable SAT formula       
  94     |  3     ((((■)+\.)(\d)+|(\d){■}(■)*)|\d)fail dotstar or empty
  95     |  3     ((((■)+\.)(\d)+|(\d){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  96     |  3     ((((■)+\.)(\d)+|(\d){■}([\.\/\d ])*)|■)fail dot
  97     |  3     ((((■)+\.)(\d)+|■([\.\/\d ])*)|\d)fail dotstar or empty
  98     |  3     ((((■)+\.)(\d)+|(\d)+(■){■})|\d)fail dotstar or empty
  99     |  3     ((((■)+\.)(\d)+|(\d)+(■)*)|■)fail dotstar or empty
  100    |  3     ((((■)+\.)(\d)+|(\d)+([\.\/\d ]){■})|■)fail dot
  101    |  3     ((((■)+\.)(\d)+|(\d)+■)|\d)fail dotstar or empty
  102    |  3     ((((\d){■}■)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  103    |  3     ((((\d){■}■)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  104    |  3     ((((\d){■}■)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  105    |  3     ((((\d){■}■)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  106    |  3     ((((\d){■}■)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  107    |  3     ((((\d){■}■)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  108    |  3     ((((\d){■}■)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  109    |  3     (((■■)(\d)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  110    |  3     ((((\d){■}\.)(■){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  111    |  3     ((((\d){■}\.)(■)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  112    |  3     ((((\d){■}\.)(■)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  113    |  3     ((((\d){■}\.)(■)+|(\d)+(■)*)|\d)fail dotstar or empty
  114    |  3     ((((\d){■}\.)(■)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  115    |  3     ((((\d){■}\.)(■)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  116    |  3     (((■\.)(■)+|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  117    |  3     ((((\d){■}\.)(\d){■}|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  118    |  3     ((((\d){■}\.)(\d){■}|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  119    |  3     ((((\d){■}\.)(\d){■}|(\d)+(■)*)|\d)fail dotstar or empty
  120    |  3     ((((\d){■}\.)(\d){■}|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  121    |  3     ((((\d){■}\.)(\d){■}|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  122    |  3     (((■\.)(\d){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  123    |  3     ((((\d){■}\.)■|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  124    |  3     ((((\d){■}\.)(\d)+|(■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  125    |  3     ((((\d){■}\.)(\d)+|(■)+(■)*)|\d)fail dotstar or empty
  126    |  3     ((((\d){■}\.)(\d)+|(■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  127    |  3     ((((\d){■}\.)(\d)+|(■)+([\.\/\d ])*)|■)  unsatisfiable SAT formula       
  128    |  3     (((■\.)(\d)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  129    |  3     ((((\d){■}\.)(\d)+|(\d){■}(■)*)|\d)fail dotstar or empty
  130    |  3     ((((\d){■}\.)(\d)+|(\d){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  131    |  3     ((((\d){■}\.)(\d)+|(\d){■}([\.\/\d ])*)|■)fail dot
  132    |  3     (((■\.)(\d)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  133    |  3     ((((\d){■}\.)(\d)+|■([\.\/\d ])*)|\d)fail dotstar or empty
  134    |  3     ((((\d){■}\.)(\d)+|(\d)+(■){■})|\d)fail dotstar or empty
  135    |  3     ((((\d){■}\.)(\d)+|(\d)+(■)*)|■)fail dotstar or empty
  136    |  3     (((■\.)(\d)+|(\d)+(■)*)|\d)fail dotstar or empty
  137    |  3     ((((\d){■}\.)(\d)+|(\d)+([\.\/\d ]){■})|■)fail dot
  138    |  3     (((■\.)(\d)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  139    |  3     ((((\d){■}\.)(\d)+|(\d)+■)|\d)fail dotstar or empty
  140    |  3     (((■\.)(\d)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  141    |  3     ((((\d)+■)(■){■}|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  142    |  3     ((((\d)+■)(■)+|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  143    |  3     ((((\d)+■)(■)+|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  144    |  3     ((((\d)+■)(■)+|(\d)+(■)*)|\d)fail dotstar or empty
  145    |  3     ((((\d)+■)(■)+|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  146    |  3     ((((\d)+■)(■)+|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  147    |  3     ((((\d)+■)(\d){■}|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  148    |  3     ((((\d)+■)(\d){■}|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  149    |  3     ((((\d)+■)(\d){■}|(\d)+(■)*)|\d)fail dotstar or empty
  150    |  3     ((((\d)+■)(\d){■}|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  151    |  3     ((((\d)+■)(\d){■}|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  152    |  3     ((((\d)+■)■|(\d)+([\.\/\d ])*)|\d)fail dotstar or empty
  153    |  3     ((((\d)+■)(\d)+|(■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  154    |  3     ((((\d)+■)(\d)+|(■)+(■)*)|\d)fail dotstar or empty
  155    |  3     ((((\d)+■)(\d)+|(■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  156    |  3     ((((\d)+■)(\d)+|(■)+([\.\/\d ])*)|■)  unsatisfiable SAT formula       
  157    |  3     ((((\d)+■)(\d)+|(\d){■}(■)*)|\d)fail dotstar or empty
  158    |  3     ((((\d)+■)(\d)+|(\d){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  159    |  3     ((((\d)+■)(\d)+|(\d){■}([\.\/\d ])*)|■)fail dot
  160    |  3     ((((\d)+■)(\d)+|■([\.\/\d ])*)|\d)fail dotstar or empty
  161    |  3     ((((\d)+■)(\d)+|(\d)+(■){■})|\d)fail dotstar or empty
  162    |  3     ((((\d)+■)(\d)+|(\d)+(■)*)|■)fail dotstar or empty
  163    |  3     ((((\d)+■)(\d)+|(\d)+([\.\/\d ]){■})|■)fail dot
  164    |  3     ((((\d)+■)(\d)+|(\d)+■)|\d)fail dotstar or empty
  165    |  3     ((((\d)+\.)(■){■}|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  166    |  3     ((((\d)+\.)(■){■}|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  167    |  3     ((((\d)+\.)(■){■}|(\d)+(■)*)|\d)fail dotstar or empty
  168    |  3     ((((\d)+\.)(■){■}|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  169    |  3     ((((\d)+\.)(■){■}|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  170    |  3     ((((\d)+\.)(■)+|(■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  171    |  3     ((((\d)+\.)(■)+|(■)+(■)*)|\d)fail dotstar or empty
  172    |  3     ((((\d)+\.)(■)+|(■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  173    |  3     ((((\d)+\.)(■)+|(■)+([\.\/\d ])*)|■)  unsatisfiable SAT formula       
  174    |  3     ((((\d)+\.)(■)+|(\d){■}(■)*)|\d)fail dotstar or empty
  175    |  3     ((((\d)+\.)(■)+|(\d){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  176    |  3     ((((\d)+\.)(■)+|(\d){■}([\.\/\d ])*)|■)fail dot
  177    |  3     ((((\d)+\.)(■)+|■([\.\/\d ])*)|\d)fail dotstar or empty
  178    |  3     ((((\d)+\.)(■)+|(\d)+(■){■})|\d)fail dotstar or empty
  179    |  3     ((((\d)+\.)(■)+|(\d)+(■)*)|■)fail dotstar or empty
  180    |  3     ((((\d)+\.)(■)+|(\d)+([\.\/\d ]){■})|■)fail dot
  181    |  3     ((((\d)+\.)(■)+|(\d)+■)|\d)fail dotstar or empty
  182    |  3     ((((\d)+\.)(\d){■}|(■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  183    |  3     ((((\d)+\.)(\d){■}|(■)+(■)*)|\d)fail dotstar or empty
  184    |  3     ((((\d)+\.)(\d){■}|(■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  185    |  3     ((((\d)+\.)(\d){■}|(■)+([\.\/\d ])*)|■)  unsatisfiable SAT formula       
  186    |  3     ((((\d)+\.)■|(■)+([\.\/\d ])*)|\d)fail dotstar or empty
  187    |  3     ((((\d)+\.)(\d){■}|(\d){■}(■)*)|\d)fail dotstar or empty
  188    |  3     ((((\d)+\.)(\d){■}|(\d){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  189    |  3     ((((\d)+\.)(\d){■}|(\d){■}([\.\/\d ])*)|■)fail dot
  190    |  3     ((((\d)+\.)■|(\d){■}([\.\/\d ])*)|\d)fail dotstar or empty
  191    |  3     ((((\d)+\.)(\d){■}|■([\.\/\d ])*)|\d)fail dotstar or empty
  192    |  3     ((((\d)+\.)(\d){■}|(\d)+(■){■})|\d)fail dotstar or empty
  193    |  3     ((((\d)+\.)(\d){■}|(\d)+(■)*)|■)fail dotstar or empty
  194    |  3     ((((\d)+\.)■|(\d)+(■)*)|\d)fail dotstar or empty
  195    |  3     ((((\d)+\.)(\d){■}|(\d)+([\.\/\d ]){■})|■)fail dot
  196    |  3     ((((\d)+\.)■|(\d)+([\.\/\d ]){■})|\d)fail dotstar or empty
  197    |  3     ((((\d)+\.)(\d){■}|(\d)+■)|\d)fail dotstar or empty
  198    |  3     ((((\d)+\.)■|(\d)+([\.\/\d ])*)|■)fail dotstar or empty
  199    |  3     ((((\d)+\.)(\d)+|(■){■}(■)*)|\d)fail dotstar or empty
  200    |  3     ((((\d)+\.)(\d)+|(■){■}([\.\/\d ]){■})|\d)fail dotstar or empty
  201    |  3     ((((\d)+\.)(\d)+|(■){■}([\.\/\d ])*)|■)get a solution: ((((\d)+\.)(\d)+|([gim/0]){6}([\.\/\d ])*)|[∅])
add positive: /1/igm
add negative: 0.0
  202    |  3     ((((\d)+\.)(\d)+|(■)+(■){■})|\d)fail dotstar or empty
  203    |  3     ((((\d)+\.)(\d)+|(■)+(■)*)|■)fail dotstar or empty
  204    |  3     ((((\d)+\.)(\d)+|(■)+([\.\/\d ]){■})|■)fail dotstar or empty
  205    |  3     ((((\d)+\.)(\d)+|(■)+■)|\d)fail dotstar or empty
  206    |  3     ((((\d)+\.)(\d)+|(■■)+([\.\/\d ])*)|■)  207    |  3     ((((\d)+\.)(\d)+|((■|■))+([\.\/\d ])*)|■)fail solve
  208    |  3     ((((\d)+\.)(\d)+|((■){■})+([\.\/\d ])*)|■)  209    |  3     ((((\d)+\.)(\d)+|(■)+([\.\/\d ])*)|(■■))  210    |  3     ((((\d)+\.)(\d)+|(■)+([\.\/\d ])*)|(■|■))fail solve
  211    |  3     ((((\d)+\.)(\d)+|(■)+([\.\/\d ])*)|(■){■})  212    |  3     ((((■)+\.)(\d)+|(■■)+([\.\/\d ])*)|\d)fail dotstar or empty
  213    |  3     ((((\d){■}\.)(\d)+|(■■)+([\.\/\d ])*)|\d)fail dotstar or empty
  214    |  3     ((((\d)+■)(\d)+|(■■)+([\.\/\d ])*)|\d)fail dotstar or empty
  215    |  3     ((((\d)+\.)(■)+|(■■)+([\.\/\d ])*)|\d)fail dotstar or empty
  216    |  3     ((((\d)+\.)(\d){■}|(■■)+([\.\/\d ])*)|\d)fail dotstar or empty
  217    |  3     ((((\d)+\.)(\d)+|(■■){■}([\.\/\d ])*)|\d)fail dotstar or empty
  218    |  3     ((((\d)+\.)(\d)+|(■■)+(■)*)|\d)fail dotstar or empty
  219    |  3     ((((\d)+\.)(\d)+|(■■)+([\.\/\d ]){■})|\d)fail dotstar or empty
  220    |  3     ((((\d)+\.)(\d)+|((■■)■)+([\.\/\d ])*)|\d)  221    |  3     ((((\d)+\.)(\d)+|((■|■)■)+([\.\/\d ])*)|\d)fail solve
  222    |  3     ((((\d)+\.)(\d)+|((■){■}■)+([\.\/\d ])*)|\d)  223    |  3     ((((\d)+\.)(\d)+|(■(■■))+([\.\/\d ])*)|\d)  224    |  3     ((((\d)+\.)(\d)+|(■(■|■))+([\.\/\d ])*)|\d)fail solve
  225    |  3     ((((\d)+\.)(\d)+|(■(■){■})+([\.\/\d ])*)|\d)  226    |  3     ((((■)+\.)(\d)+|((■|■))+([\.\/\d ])*)|\d)fail dotstar or empty
  227    |  3     ((((\d){■}\.)(\d)+|((■|■))+([\.\/\d ])*)|\d)fail dotstar or empty
  228    |  3     ((((\d)+■)(\d)+|((■|■))+([\.\/\d ])*)|\d)fail dotstar or empty
  229    |  3     ((((\d)+\.)(■)+|((■|■))+([\.\/\d ])*)|\d)fail dotstar or empty
  230    |  3     ((((\d)+\.)(\d){■}|((■|■))+([\.\/\d ])*)|\d)fail dotstar or empty
  231    |  3     ((((\d)+\.)(\d)+|((■|■)){■}([\.\/\d ])*)|\d)fail dotstar or empty
  232    |  3     ((((\d)+\.)(\d)+|((■|■))+(■)*)|\d)fail dotstar or empty
  233    |  3     ((((\d)+\.)(\d)+|((■|■))+([\.\/\d ]){■})|\d)fail dotstar or empty
  234    |  3     ((((\d)+\.)(\d)+|((■■|■))+([\.\/\d ])*)|\d)  235    |  3     ((((\d)+\.)(\d)+|(((■|■)|■))+([\.\/\d ])*)|\d)fail solve
  236    |  3     ((((\d)+\.)(\d)+|(((■){■}|■))+([\.\/\d ])*)|\d)  237    |  3     ((((\d)+\.)(\d)+|((■|■■))+([\.\/\d ])*)|\d)  238    |  3     ((((\d)+\.)(\d)+|((■|(■|■)))+([\.\/\d ])*)|\d)fail solve
  239    |  3     ((((\d)+\.)(\d)+|((■|(■){■}))+([\.\/\d ])*)|\d)  240    |  3     ((((■)+\.)(\d)+|((■){■})+([\.\/\d ])*)|\d)fail dotstar or empty
  241    |  3     ((((\d){■}\.)(\d)+|((■){■})+([\.\/\d ])*)|\d)fail dotstar or empty
  242    |  3     ((((\d)+■)(\d)+|((■){■})+([\.\/\d ])*)|\d)fail dotstar or empty
  243    |  3     ((((\d)+\.)(■)+|((■){■})+([\.\/\d ])*)|\d)fail dotstar or empty
  244    |  3     ((((\d)+\.)(\d){■}|((■){■})+([\.\/\d ])*)|\d)fail dotstar or empty
  245    |  3     ((((\d)+\.)(\d)+|((■){■}){■}([\.\/\d ])*)|\d)fail dotstar or empty
  246    |  3     ((((\d)+\.)(\d)+|((■){■})+(■)*)|\d)fail dotstar or empty
  247    |  3     ((((\d)+\.)(\d)+|((■){■})+([\.\/\d ]){■})|\d)fail dotstar or empty
  248    |  3     ((((\d)+\.)(\d)+|((■■){■})+([\.\/\d ])*)|\d)  249    |  3     ((((\d)+\.)(\d)+|(((■|■)){■})+([\.\/\d ])*)|\d)fail solve
  250    |  3     ((((\d)+\.)(\d)+|(((■){■}){■})+([\.\/\d ])*)|\d)
20.47999620437622
timeout