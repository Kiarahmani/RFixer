
Given the regular expression:

  4.45(E)+11

That that should match the strings:

  ✓ (0:3)    987
  ✓ (3:6)    123

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■.)4)5)(E)+)1)1    fail dotstar or empty
  2      |  1     (((((4■)4)5)(E)+)1)1    fail dotstar or empty
  3      |  1     (((((4.)■)5)(E)+)1)1    fail dotstar or empty
  4      |  1     (((((4.)4)■)(E)+)1)1    fail dotstar or empty
  5      |  1     (((((4.)4)5)(■)+)1)1    fail dotstar or empty
  6      |  1     (((((4.)4)5)(E){■})1)1  fail dotstar or empty
  7      |  1     (((((4.)4)5)(E)+)■)1    fail dotstar or empty
  8      |  1     (((((4.)4)5)(E)+)1)■    fail dotstar or empty
  9      |  2     (((((■■)4)5)(E)+)1)1    fail dotstar or empty
  10     |  2     (((((■.)■)5)(E)+)1)1    fail dotstar or empty
  11     |  2     (((((■.)4)■)(E)+)1)1    fail dotstar or empty
  12     |  2     (((((■.)4)5)(■)+)1)1    fail dotstar or empty
  13     |  2     (((((■.)4)5)(E){■})1)1  fail dotstar or empty
  14     |  2     (((((■.)4)5)(E)+)■)1    fail dotstar or empty
  15     |  2     (((((■.)4)5)(E)+)1)■    fail dotstar or empty
  16     |  2     (((((4■)■)5)(E)+)1)1    fail dotstar or empty
  17     |  2     (((((4■)4)■)(E)+)1)1    fail dotstar or empty
  18     |  2     (((((4■)4)5)(■)+)1)1    fail dotstar or empty
  19     |  2     (((((4■)4)5)(E){■})1)1  fail dotstar or empty
  20     |  2     (((((4■)4)5)(E)+)■)1    fail dotstar or empty
  21     |  2     (((((4■)4)5)(E)+)1)■    fail dotstar or empty
  22     |  2     (((((4.)■)■)(E)+)1)1    fail dotstar or empty
  23     |  2     (((((4.)■)5)(■)+)1)1    fail dotstar or empty
  24     |  2     (((((4.)■)5)(E){■})1)1  fail dotstar or empty
  25     |  2     (((((4.)■)5)(E)+)■)1    fail dotstar or empty
  26     |  2     (((((4.)■)5)(E)+)1)■    fail dotstar or empty
  27     |  2     (((((4.)4)■)(■)+)1)1    fail dotstar or empty
  28     |  2     (((((4.)4)■)(E){■})1)1  fail dotstar or empty
  29     |  2     (((((4.)4)■)(E)+)■)1    fail dotstar or empty
  30     |  2     (((((4.)4)■)(E)+)1)■    fail dotstar or empty
  31     |  2     (((((4.)4)5)(■){■})1)1  fail dotstar or empty
  32     |  2     (((((4.)4)5)(■)+)■)1    fail dotstar or empty
  33     |  2     (((((4.)4)5)(■)+)1)■    fail dotstar or empty
  34     |  2     (((((4.)4)5)(E){■})■)1  fail dotstar or empty
  35     |  2     (((((4.)4)5)(E){■})1)■  fail dotstar or empty
  36     |  2     (((((4.)4)5)■)1)1       fail dotstar or empty
  37     |  2     (((((4.)4)5)(E)+)■)■    fail dotstar or empty
  38     |  3     (((((■■)■)5)(E)+)1)1    fail dotstar or empty
  39     |  3     (((((■■)4)■)(E)+)1)1    fail dotstar or empty
  40     |  3     (((((■■)4)5)(■)+)1)1    fail dotstar or empty
  41     |  3     (((((■■)4)5)(E){■})1)1  fail dotstar or empty
  42     |  3     (((((■■)4)5)(E)+)■)1    fail dotstar or empty
  43     |  3     (((((■■)4)5)(E)+)1)■    fail dotstar or empty
  44     |  3     (((((■)4)5)(E)+)1)1     fail dotstar or empty
  45     |  3     (((((■.)■)■)(E)+)1)1    fail dotstar or empty
  46     |  3     (((((■.)■)5)(■)+)1)1    fail dotstar or empty
  47     |  3     (((((■.)■)5)(E){■})1)1  fail dotstar or empty
  48     |  3     (((((■.)■)5)(E)+)■)1    fail dotstar or empty
  49     |  3     (((((■.)■)5)(E)+)1)■    fail dotstar or empty
  50     |  3     (((((■.)4)■)(■)+)1)1    fail dotstar or empty
  51     |  3     (((((■.)4)■)(E){■})1)1  fail dotstar or empty
  52     |  3     (((((■.)4)■)(E)+)■)1    fail dotstar or empty
  53     |  3     (((((■.)4)■)(E)+)1)■    fail dotstar or empty
  54     |  3     (((((■.)4)5)(■){■})1)1  fail dotstar or empty
  55     |  3     (((((■.)4)5)(■)+)■)1    fail dotstar or empty
  56     |  3     (((((■.)4)5)(■)+)1)■    fail dotstar or empty
  57     |  3     (((((■.)4)5)(E){■})■)1  fail dotstar or empty
  58     |  3     (((((■.)4)5)(E){■})1)■  fail dotstar or empty
  59     |  3     (((((■.)4)5)■)1)1       fail dotstar or empty
  60     |  3     (((((■.)4)5)(E)+)■)■    fail dotstar or empty
  61     |  3     (((((4■)■)■)(E)+)1)1    fail dotstar or empty
  62     |  3     (((((4■)■)5)(■)+)1)1    fail dotstar or empty
  63     |  3     (((((4■)■)5)(E){■})1)1  fail dotstar or empty
  64     |  3     (((((4■)■)5)(E)+)■)1    fail dotstar or empty
  65     |  3     (((((4■)■)5)(E)+)1)■    fail dotstar or empty
  66     |  3     (((((4■)4)■)(■)+)1)1    fail dotstar or empty
  67     |  3     (((((4■)4)■)(E){■})1)1  fail dotstar or empty
  68     |  3     (((((4■)4)■)(E)+)■)1    fail dotstar or empty
  69     |  3     (((((4■)4)■)(E)+)1)■    fail dotstar or empty
  70     |  3     (((((4■)4)5)(■){■})1)1  fail dotstar or empty
  71     |  3     (((((4■)4)5)(■)+)■)1    fail dotstar or empty
  72     |  3     (((((4■)4)5)(■)+)1)■    fail dotstar or empty
  73     |  3     (((((4■)4)5)(E){■})■)1  fail dotstar or empty
  74     |  3     (((((4■)4)5)(E){■})1)■  fail dotstar or empty
  75     |  3     (((((4■)4)5)■)1)1       fail dotstar or empty
  76     |  3     (((((4■)4)5)(E)+)■)■    fail dotstar or empty
  77     |  3     (((((4.)■)■)(■)+)1)1    fail dotstar or empty
  78     |  3     (((((4.)■)■)(E){■})1)1  fail dotstar or empty
  79     |  3     (((((4.)■)■)(E)+)■)1    fail dotstar or empty
  80     |  3     (((((4.)■)■)(E)+)1)■    fail dotstar or empty
  81     |  3     (((((4.)■)5)(■){■})1)1  fail dotstar or empty
  82     |  3     (((((4.)■)5)(■)+)■)1    fail dotstar or empty
  83     |  3     (((((4.)■)5)(■)+)1)■    fail dotstar or empty
  84     |  3     (((((4.)■)5)(E){■})■)1  fail dotstar or empty
  85     |  3     (((((4.)■)5)(E){■})1)■  fail dotstar or empty
  86     |  3     (((((4.)■)5)■)1)1       fail dotstar or empty
  87     |  3     (((((4.)■)5)(E)+)■)■    fail dotstar or empty
  88     |  3     (((((4.)4)■)(■){■})1)1  fail dotstar or empty
  89     |  3     (((((4.)4)■)(■)+)■)1    fail dotstar or empty
  90     |  3     (((((4.)4)■)(■)+)1)■    fail dotstar or empty
  91     |  3     (((((4.)4)■)(E){■})■)1  fail dotstar or empty
  92     |  3     (((((4.)4)■)(E){■})1)■  fail dotstar or empty
  93     |  3     (((((4.)4)■)■)1)1       fail dotstar or empty
  94     |  3     (((((4.)4)■)(E)+)■)■    fail dotstar or empty
  95     |  3     (((((4.)4)5)(■){■})■)1  fail dotstar or empty
  96     |  3     (((((4.)4)5)(■){■})1)■  fail dotstar or empty
  97     |  3     (((((4.)4)5)(■)+)■)■    fail dotstar or empty
  98     |  3     (((((4.)4)5)(E){■})■)■  fail dotstar or empty
  99     |  3     (((((4.)4)5)■)■)1       fail dotstar or empty
  100    |  3     (((((4.)4)5)■)1)■       fail dotstar or empty
  101    |  4     (((((■■)■)■)(E)+)1)1    fail dotstar or empty
  102    |  4     (((((■■)■)5)(■)+)1)1    fail dotstar or empty
  103    |  4     (((((■■)■)5)(E){■})1)1  fail dotstar or empty
  104    |  4     (((((■■)■)5)(E)+)■)1    fail dotstar or empty
  105    |  4     (((((■■)■)5)(E)+)1)■    fail dotstar or empty
  106    |  4     (((((■)■)5)(E)+)1)1     fail dotstar or empty
  107    |  4     (((((■■)4)■)(■)+)1)1    fail dotstar or empty
  108    |  4     (((((■■)4)■)(E){■})1)1  fail dotstar or empty
  109    |  4     (((((■■)4)■)(E)+)■)1    fail dotstar or empty
  110    |  4     (((((■■)4)■)(E)+)1)■    fail dotstar or empty
  111    |  4     (((((■)4)■)(E)+)1)1     fail dotstar or empty
  112    |  4     (((((■■)4)5)(■){■})1)1  fail dotstar or empty
  113    |  4     (((((■■)4)5)(■)+)■)1    fail dotstar or empty
  114    |  4     (((((■■)4)5)(■)+)1)■    fail dotstar or empty
  115    |  4     (((((■)4)5)(■)+)1)1     fail dotstar or empty
  116    |  4     (((((■■)4)5)(E){■})■)1  fail dotstar or empty
  117    |  4     (((((■■)4)5)(E){■})1)■  fail dotstar or empty
  118    |  4     (((((■)4)5)(E){■})1)1   fail dotstar or empty
  119    |  4     (((((■■)4)5)■)1)1       fail dotstar or empty
  120    |  4     (((((■■)4)5)(E)+)■)■    fail dotstar or empty
  121    |  4     (((((■)4)5)(E)+)■)1     fail dotstar or empty
  122    |  4     (((((■)4)5)(E)+)1)■     fail dotstar or empty
  123    |  4     ((((■4)5)(E)+)1)1       fail dotstar or empty
  124    |  4     (((((■.)■)■)(■)+)1)1    fail dotstar or empty
  125    |  4     (((((■.)■)■)(E){■})1)1  fail dotstar or empty
  126    |  4     (((((■.)■)■)(E)+)■)1    fail dotstar or empty
  127    |  4     (((((■.)■)■)(E)+)1)■    fail dotstar or empty
  128    |  4     (((((■.)■)5)(■){■})1)1  fail dotstar or empty
  129    |  4     (((((■.)■)5)(■)+)■)1    fail dotstar or empty
  130    |  4     (((((■.)■)5)(■)+)1)■    fail dotstar or empty
  131    |  4     (((((■.)■)5)(E){■})■)1  fail dotstar or empty
  132    |  4     (((((■.)■)5)(E){■})1)■  fail dotstar or empty
  133    |  4     (((((■.)■)5)■)1)1       fail dotstar or empty
  134    |  4     (((((■.)■)5)(E)+)■)■    fail dotstar or empty
  135    |  4     (((((■.)4)■)(■){■})1)1  fail dotstar or empty
  136    |  4     (((((■.)4)■)(■)+)■)1    fail dotstar or empty
  137    |  4     (((((■.)4)■)(■)+)1)■    fail dotstar or empty
  138    |  4     (((((■.)4)■)(E){■})■)1  fail dotstar or empty
  139    |  4     (((((■.)4)■)(E){■})1)■  fail dotstar or empty
  140    |  4     (((((■.)4)■)■)1)1       fail dotstar or empty
  141    |  4     (((((■.)4)■)(E)+)■)■    fail dotstar or empty
  142    |  4     (((((■.)4)5)(■){■})■)1  fail dotstar or empty
  143    |  4     (((((■.)4)5)(■){■})1)■  fail dotstar or empty
  144    |  4     (((((■.)4)5)(■)+)■)■    fail dotstar or empty
  145    |  4     (((((■.)4)5)(E){■})■)■  fail dotstar or empty
  146    |  4     (((((■.)4)5)■)■)1       fail dotstar or empty
  147    |  4     (((((■.)4)5)■)1)■       fail dotstar or empty
  148    |  4     (((((4■)■)■)(■)+)1)1    fail dotstar or empty
  149    |  4     (((((4■)■)■)(E){■})1)1  fail dotstar or empty
  150    |  4     (((((4■)■)■)(E)+)■)1    fail dotstar or empty
  151    |  4     (((((4■)■)■)(E)+)1)■    fail dotstar or empty
  152    |  4     (((((4■)■)5)(■){■})1)1  fail dotstar or empty
  153    |  4     (((((4■)■)5)(■)+)■)1    fail dotstar or empty
  154    |  4     (((((4■)■)5)(■)+)1)■    fail dotstar or empty
  155    |  4     (((((4■)■)5)(E){■})■)1  fail dotstar or empty
  156    |  4     (((((4■)■)5)(E){■})1)■  fail dotstar or empty
  157    |  4     (((((4■)■)5)■)1)1       fail dotstar or empty
  158    |  4     (((((4■)■)5)(E)+)■)■    fail dotstar or empty
  159    |  4     (((((4■)4)■)(■){■})1)1  fail dotstar or empty
  160    |  4     (((((4■)4)■)(■)+)■)1    fail dotstar or empty
  161    |  4     (((((4■)4)■)(■)+)1)■    fail dotstar or empty
  162    |  4     (((((4■)4)■)(E){■})■)1  fail dotstar or empty
  163    |  4     (((((4■)4)■)(E){■})1)■  fail dotstar or empty
  164    |  4     (((((4■)4)■)■)1)1       fail dotstar or empty
  165    |  4     (((((4■)4)■)(E)+)■)■    fail dotstar or empty
  166    |  4     (((((4■)4)5)(■){■})■)1  fail dotstar or empty
  167    |  4     (((((4■)4)5)(■){■})1)■  fail dotstar or empty
  168    |  4     (((((4■)4)5)(■)+)■)■    fail dotstar or empty
  169    |  4     (((((4■)4)5)(E){■})■)■  fail dotstar or empty
  170    |  4     (((((4■)4)5)■)■)1       fail dotstar or empty
  171    |  4     (((((4■)4)5)■)1)■       fail dotstar or empty
  172    |  4     (((((4.)■)■)(■){■})1)1  fail dotstar or empty
  173    |  4     (((((4.)■)■)(■)+)■)1    fail dotstar or empty
  174    |  4     (((((4.)■)■)(■)+)1)■    fail dotstar or empty
  175    |  4     (((((4.)■)■)(E){■})■)1  fail dotstar or empty
  176    |  4     (((((4.)■)■)(E){■})1)■  fail dotstar or empty
  177    |  4     (((((4.)■)■)■)1)1       fail dotstar or empty
  178    |  4     (((((4.)■)■)(E)+)■)■    fail dotstar or empty
  179    |  4     (((((4.)■)5)(■){■})■)1  fail dotstar or empty
  180    |  4     (((((4.)■)5)(■){■})1)■  fail dotstar or empty
  181    |  4     (((((4.)■)5)(■)+)■)■    fail dotstar or empty
  182    |  4     (((((4.)■)5)(E){■})■)■  fail dotstar or empty
  183    |  4     (((((4.)■)5)■)■)1       fail dotstar or empty
  184    |  4     (((((4.)■)5)■)1)■       fail dotstar or empty
  185    |  4     (((((4.)4)■)(■){■})■)1  fail dotstar or empty
  186    |  4     (((((4.)4)■)(■){■})1)■  fail dotstar or empty
  187    |  4     (((((4.)4)■)(■)+)■)■    fail dotstar or empty
  188    |  4     (((((4.)4)■)(E){■})■)■  fail dotstar or empty
  189    |  4     (((((4.)4)■)■)■)1       fail dotstar or empty
  190    |  4     (((((4.)4)■)■)1)■       fail dotstar or empty
  191    |  4     (((((4.)4)5)(■){■})■)■  fail dotstar or empty
  192    |  4     (((((4.)4)5)■)■)■       fail dotstar or empty
  193    |  5     (((((■■)■)■)(■)+)1)1    fail dotstar or empty
  194    |  5     (((((■■)■)■)(E){■})1)1  fail dotstar or empty
  195    |  5     (((((■■)■)■)(E)+)■)1    fail dotstar or empty
  196    |  5     (((((■■)■)■)(E)+)1)■    fail dotstar or empty
  197    |  5     (((((■)■)■)(E)+)1)1     fail dotstar or empty
  198    |  5     (((((■■)■)5)(■){■})1)1  fail dotstar or empty
  199    |  5     (((((■■)■)5)(■)+)■)1    fail dotstar or empty
  200    |  5     (((((■■)■)5)(■)+)1)■    fail dotstar or empty
  201    |  5     (((((■)■)5)(■)+)1)1     fail dotstar or empty
  202    |  5     (((((■■)■)5)(E){■})■)1  fail dotstar or empty
  203    |  5     (((((■■)■)5)(E){■})1)■  fail dotstar or empty
  204    |  5     (((((■)■)5)(E){■})1)1   fail dotstar or empty
  205    |  5     (((((■■)■)5)■)1)1       fail dotstar or empty
  206    |  5     (((((■■)■)5)(E)+)■)■    fail dotstar or empty
  207    |  5     (((((■)■)5)(E)+)■)1     fail dotstar or empty
  208    |  5     (((((■)■)5)(E)+)1)■     fail dotstar or empty
  209    |  5     ((((■■)5)(E)+)1)1       fail dotstar or empty
  210    |  5     (((((■■)4)■)(■){■})1)1  fail dotstar or empty
  211    |  5     (((((■■)4)■)(■)+)■)1    fail dotstar or empty
  212    |  5     (((((■■)4)■)(■)+)1)■    fail dotstar or empty
  213    |  5     (((((■)4)■)(■)+)1)1     fail dotstar or empty
  214    |  5     (((((■■)4)■)(E){■})■)1  fail dotstar or empty
  215    |  5     (((((■■)4)■)(E){■})1)■  fail dotstar or empty
  216    |  5     (((((■)4)■)(E){■})1)1   fail dotstar or empty
  217    |  5     (((((■■)4)■)■)1)1       fail dotstar or empty
  218    |  5     (((((■■)4)■)(E)+)■)■    fail dotstar or empty
  219    |  5     (((((■)4)■)(E)+)■)1     fail dotstar or empty
  220    |  5     (((((■)4)■)(E)+)1)■     fail dotstar or empty
  221    |  5     ((((■4)■)(E)+)1)1       fail dotstar or empty
  222    |  5     (((((■■)4)5)(■){■})■)1  fail dotstar or empty
  223    |  5     (((((■■)4)5)(■){■})1)■  fail dotstar or empty
  224    |  5     (((((■)4)5)(■){■})1)1   fail dotstar or empty
  225    |  5     (((((■■)4)5)(■)+)■)■    fail dotstar or empty
  226    |  5     (((((■)4)5)(■)+)■)1     fail dotstar or empty
  227    |  5     (((((■)4)5)(■)+)1)■     fail dotstar or empty
  228    |  5     ((((■4)5)(■)+)1)1       fail dotstar or empty
  229    |  5     (((((■■)4)5)(E){■})■)■  fail dotstar or empty
  230    |  5     (((((■)4)5)(E){■})■)1   fail dotstar or empty
  231    |  5     (((((■■)4)5)■)■)1       fail dotstar or empty
  232    |  5     (((((■)4)5)(E){■})1)■   fail dotstar or empty
  233    |  5     (((((■■)4)5)■)1)■       fail dotstar or empty
  234    |  5     ((((■4)5)(E){■})1)1     fail dotstar or empty
  235    |  5     (((((■)4)5)■)1)1        fail dotstar or empty
  236    |  5     (((((■)4)5)(E)+)■)■     fail dotstar or empty
  237    |  5     ((((■4)5)(E)+)■)1       fail dotstar or empty
  238    |  5     ((((■4)5)(E)+)1)■       fail dotstar or empty
  239    |  5     (((((■.)■)■)(■){■})1)1  fail dotstar or empty
  240    |  5     (((((■.)■)■)(■)+)■)1    fail dotstar or empty
  241    |  5     (((((■.)■)■)(■)+)1)■    fail dotstar or empty
  242    |  5     (((((■.)■)■)(E){■})■)1  fail dotstar or empty
  243    |  5     (((((■.)■)■)(E){■})1)■  fail dotstar or empty
  244    |  5     (((((■.)■)■)■)1)1       fail dotstar or empty
  245    |  5     (((((■.)■)■)(E)+)■)■    fail dotstar or empty
  246    |  5     (((((■.)■)5)(■){■})■)1  fail dotstar or empty
  247    |  5     (((((■.)■)5)(■){■})1)■  fail dotstar or empty
  248    |  5     (((((■.)■)5)(■)+)■)■    fail dotstar or empty
  249    |  5     (((((■.)■)5)(E){■})■)■  fail dotstar or empty
  250    |  5     (((((■.)■)5)■)■)1       fail dotstar or empty
  251    |  5     (((((■.)■)5)■)1)■       fail dotstar or empty
  252    |  5     (((((■.)4)■)(■){■})■)1  fail dotstar or empty
  253    |  5     (((((■.)4)■)(■){■})1)■  fail dotstar or empty
  254    |  5     (((((■.)4)■)(■)+)■)■    fail dotstar or empty
  255    |  5     (((((■.)4)■)(E){■})■)■  fail dotstar or empty
  256    |  5     (((((■.)4)■)■)■)1       fail dotstar or empty
  257    |  5     (((((■.)4)■)■)1)■       fail dotstar or empty
  258    |  5     (((((■.)4)5)(■){■})■)■  fail dotstar or empty
  259    |  5     (((((■.)4)5)■)■)■       fail dotstar or empty
  260    |  5     (((((4■)■)■)(■){■})1)1  fail dotstar or empty
  261    |  5     (((((4■)■)■)(■)+)■)1    fail dotstar or empty
  262    |  5     (((((4■)■)■)(■)+)1)■    fail dotstar or empty
  263    |  5     (((((4■)■)■)(E){■})■)1  fail dotstar or empty
  264    |  5     (((((4■)■)■)(E){■})1)■  fail dotstar or empty
  265    |  5     (((((4■)■)■)■)1)1       fail dotstar or empty
  266    |  5     (((((4■)■)■)(E)+)■)■    fail dotstar or empty
  267    |  5     (((((4■)■)5)(■){■})■)1  fail dotstar or empty
  268    |  5     (((((4■)■)5)(■){■})1)■  fail dotstar or empty
  269    |  5     (((((4■)■)5)(■)+)■)■    fail dotstar or empty
  270    |  5     (((((4■)■)5)(E){■})■)■  fail dotstar or empty
  271    |  5     (((((4■)■)5)■)■)1       fail dotstar or empty
  272    |  5     (((((4■)■)5)■)1)■       fail dotstar or empty
  273    |  5     (((((4■)4)■)(■){■})■)1  fail dotstar or empty
  274    |  5     (((((4■)4)■)(■){■})1)■  fail dotstar or empty
  275    |  5     (((((4■)4)■)(■)+)■)■    fail dotstar or empty
  276    |  5     (((((4■)4)■)(E){■})■)■  fail dotstar or empty
  277    |  5     (((((4■)4)■)■)■)1       fail dotstar or empty
  278    |  5     (((((4■)4)■)■)1)■       fail dotstar or empty
  279    |  5     (((((4■)4)5)(■){■})■)■  fail dotstar or empty
  280    |  5     (((((4■)4)5)■)■)■       fail dotstar or empty
  281    |  5     (((((4.)■)■)(■){■})■)1  fail dotstar or empty
  282    |  5     (((((4.)■)■)(■){■})1)■  fail dotstar or empty
  283    |  5     (((((4.)■)■)(■)+)■)■    fail dotstar or empty
  284    |  5     (((((4.)■)■)(E){■})■)■  fail dotstar or empty
  285    |  5     (((((4.)■)■)■)■)1       fail dotstar or empty
  286    |  5     (((((4.)■)■)■)1)■       fail dotstar or empty
  287    |  5     (((((4.)■)5)(■){■})■)■  fail dotstar or empty
  288    |  5     (((((4.)■)5)■)■)■       fail dotstar or empty
  289    |  5     (((((4.)4)■)(■){■})■)■  fail dotstar or empty
  290    |  5     (((((4.)4)■)■)■)■       fail dotstar or empty
  291    |  6     (((((■■)■)■)(■){■})1)1  fail dotstar or empty
  292    |  6     (((((■■)■)■)(■)+)■)1    fail dotstar or empty
  293    |  6     (((((■■)■)■)(■)+)1)■    fail dotstar or empty
  294    |  6     (((((■)■)■)(■)+)1)1     fail dotstar or empty
  295    |  6     (((((■■)■)■)(E){■})■)1  fail dotstar or empty
  296    |  6     (((((■■)■)■)(E){■})1)■  fail dotstar or empty
  297    |  6     (((((■)■)■)(E){■})1)1   fail dotstar or empty
  298    |  6     (((((■■)■)■)■)1)1       fail dotstar or empty
  299    |  6     (((((■■)■)■)(E)+)■)■    fail dotstar or empty
  300    |  6     (((((■)■)■)(E)+)■)1     fail dotstar or empty
  301    |  6     (((((■)■)■)(E)+)1)■     fail dotstar or empty
  302    |  6     ((((■■)■)(E)+)1)1       fail dotstar or empty
  303    |  6     (((((■■)■)5)(■){■})■)1  fail dotstar or empty
  304    |  6     (((((■■)■)5)(■){■})1)■  fail dotstar or empty
  305    |  6     (((((■)■)5)(■){■})1)1   fail dotstar or empty
  306    |  6     (((((■■)■)5)(■)+)■)■    fail dotstar or empty
  307    |  6     (((((■)■)5)(■)+)■)1     fail dotstar or empty
  308    |  6     (((((■)■)5)(■)+)1)■     fail dotstar or empty
  309    |  6     ((((■■)5)(■)+)1)1       fail dotstar or empty
  310    |  6     (((((■■)■)5)(E){■})■)■  fail dotstar or empty
  311    |  6     (((((■)■)5)(E){■})■)1   fail dotstar or empty
  312    |  6     (((((■■)■)5)■)■)1       fail dotstar or empty
  313    |  6     (((((■)■)5)(E){■})1)■   fail dotstar or empty
  314    |  6     (((((■■)■)5)■)1)■       fail dotstar or empty
  315    |  6     ((((■■)5)(E){■})1)1     fail dotstar or empty
  316    |  6     (((((■)■)5)■)1)1        fail dotstar or empty
  317    |  6     (((((■)■)5)(E)+)■)■     fail dotstar or empty
  318    |  6     ((((■■)5)(E)+)■)1       fail dotstar or empty
  319    |  6     ((((■■)5)(E)+)1)■       fail dotstar or empty
  320    |  6     ((((■)5)(E)+)1)1        fail dotstar or empty
  321    |  6     (((((■■)4)■)(■){■})■)1  fail dotstar or empty
  322    |  6     (((((■■)4)■)(■){■})1)■  fail dotstar or empty
  323    |  6     (((((■)4)■)(■){■})1)1   fail dotstar or empty
  324    |  6     (((((■■)4)■)(■)+)■)■    fail dotstar or empty
  325    |  6     (((((■)4)■)(■)+)■)1     fail dotstar or empty
  326    |  6     (((((■)4)■)(■)+)1)■     fail dotstar or empty
  327    |  6     ((((■4)■)(■)+)1)1       fail dotstar or empty
  328    |  6     (((((■■)4)■)(E){■})■)■  fail dotstar or empty
  329    |  6     (((((■)4)■)(E){■})■)1   fail dotstar or empty
  330    |  6     (((((■■)4)■)■)■)1       fail dotstar or empty
  331    |  6     (((((■)4)■)(E){■})1)■   fail dotstar or empty
  332    |  6     (((((■■)4)■)■)1)■       fail dotstar or empty
  333    |  6     ((((■4)■)(E){■})1)1     fail dotstar or empty
  334    |  6     (((((■)4)■)■)1)1        fail dotstar or empty
  335    |  6     (((((■)4)■)(E)+)■)■     fail dotstar or empty
  336    |  6     ((((■4)■)(E)+)■)1       fail dotstar or empty
  337    |  6     ((((■4)■)(E)+)1)■       fail dotstar or empty
  338    |  6     (((((■■)4)5)(■){■})■)■  fail dotstar or empty
  339    |  6     (((((■)4)5)(■){■})■)1   fail dotstar or empty
  340    |  6     (((((■)4)5)(■){■})1)■   fail dotstar or empty
  341    |  6     ((((■4)5)(■){■})1)1     fail dotstar or empty
  342    |  6     (((((■)4)5)(■)+)■)■     fail dotstar or empty
  343    |  6     ((((■4)5)(■)+)■)1       fail dotstar or empty
  344    |  6     ((((■4)5)(■)+)1)■       fail dotstar or empty
  345    |  6     (((((■)4)5)(E){■})■)■   fail dotstar or empty
  346    |  6     (((((■■)4)5)■)■)■       fail dotstar or empty
  347    |  6     ((((■4)5)(E){■})■)1     fail dotstar or empty
  348    |  6     (((((■)4)5)■)■)1        fail dotstar or empty
  349    |  6     ((((■4)5)(E){■})1)■     fail dotstar or empty
  350    |  6     (((((■)4)5)■)1)■        fail dotstar or empty
  351    |  6     ((((■4)5)■)1)1          fail dotstar or empty
  352    |  6     ((((■4)5)(E)+)■)■       fail dotstar or empty
  353    |  6     (((((■.)■)■)(■){■})■)1  fail dotstar or empty
  354    |  6     (((((■.)■)■)(■){■})1)■  fail dotstar or empty
  355    |  6     (((((■.)■)■)(■)+)■)■    fail dot
  356    |  6     (((((■.)■)■)(E){■})■)■  fail dot
  357    |  6     (((((■.)■)■)■)■)1       fail dotstar or empty
  358    |  6     (((((■.)■)■)■)1)■       fail dotstar or empty
  359    |  6     (((((■.)■)5)(■){■})■)■  fail dotstar or empty
  360    |  6     (((((■.)■)5)■)■)■       fail dotstar or empty
  361    |  6     (((((■.)4)■)(■){■})■)■  fail dotstar or empty
  362    |  6     (((((■.)4)■)■)■)■       fail dotstar or empty
  363    |  6     (((((4■)■)■)(■){■})■)1  fail dotstar or empty
  364    |  6     (((((4■)■)■)(■){■})1)■  fail dotstar or empty
  365    |  6     (((((4■)■)■)(■)+)■)■    fail dotstar or empty
  366    |  6     (((((4■)■)■)(E){■})■)■  fail dotstar or empty
  367    |  6     (((((4■)■)■)■)■)1       fail dotstar or empty
  368    |  6     (((((4■)■)■)■)1)■       fail dotstar or empty
  369    |  6     (((((4■)■)5)(■){■})■)■  fail dotstar or empty
  370    |  6     (((((4■)■)5)■)■)■       fail dotstar or empty
  371    |  6     (((((4■)4)■)(■){■})■)■  fail dotstar or empty
  372    |  6     (((((4■)4)■)■)■)■       fail dotstar or empty
  373    |  6     (((((4.)■)■)(■){■})■)■  fail dotstar or empty
  374    |  6     (((((4.)■)■)■)■)■       fail dotstar or empty
  375    |  7     (((((■■)■)■)(■){■})■)1  fail dotstar or empty
  376    |  7     (((((■■)■)■)(■){■})1)■  fail dotstar or empty
  377    |  7     (((((■)■)■)(■){■})1)1   fail dotstar or empty
  378    |  7     (((((■■)■)■)(■)+)■)■    fail dot
  379    |  7     (((((■)■)■)(■)+)■)1     fail dotstar or empty
  380    |  7     (((((■)■)■)(■)+)1)■     fail dotstar or empty
  381    |  7     ((((■■)■)(■)+)1)1       fail dotstar or empty
  382    |  7     (((((■■)■)■)(E){■})■)■  fail dot
  383    |  7     (((((■)■)■)(E){■})■)1   fail dotstar or empty
  384    |  7     (((((■■)■)■)■)■)1       fail dotstar or empty
  385    |  7     (((((■)■)■)(E){■})1)■   fail dotstar or empty
  386    |  7     (((((■■)■)■)■)1)■       fail dotstar or empty
  387    |  7     ((((■■)■)(E){■})1)1     fail dotstar or empty
  388    |  7     (((((■)■)■)■)1)1        fail dotstar or empty
  389    |  7     (((((■)■)■)(E)+)■)■     fail dotstar or empty
  390    |  7     ((((■■)■)(E)+)■)1       fail dotstar or empty
  391    |  7     ((((■■)■)(E)+)1)■       fail dotstar or empty
  392    |  7     ((((■)■)(E)+)1)1        fail dotstar or empty
  393    |  7     (((((■■)■)5)(■){■})■)■  fail dotstar or empty
  394    |  7     (((((■)■)5)(■){■})■)1   fail dotstar or empty
  395    |  7     (((((■)■)5)(■){■})1)■   fail dotstar or empty
  396    |  7     ((((■■)5)(■){■})1)1     fail dotstar or empty
  397    |  7     (((((■)■)5)(■)+)■)■     fail dotstar or empty
  398    |  7     ((((■■)5)(■)+)■)1       fail dotstar or empty
  399    |  7     ((((■■)5)(■)+)1)■       fail dotstar or empty
  400    |  7     ((((■)5)(■)+)1)1        fail dotstar or empty
  401    |  7     (((((■)■)5)(E){■})■)■   fail dotstar or empty
  402    |  7     (((((■■)■)5)■)■)■       fail dotstar or empty
  403    |  7     ((((■■)5)(E){■})■)1     fail dotstar or empty
  404    |  7     (((((■)■)5)■)■)1        fail dotstar or empty
  405    |  7     ((((■■)5)(E){■})1)■     fail dotstar or empty
  406    |  7     (((((■)■)5)■)1)■        fail dotstar or empty
  407    |  7     ((((■)5)(E){■})1)1      fail dotstar or empty
  408    |  7     ((((■■)5)■)1)1          fail dotstar or empty
  409    |  7     ((((■■)5)(E)+)■)■       fail dotstar or empty
  410    |  7     ((((■)5)(E)+)■)1        fail dotstar or empty
  411    |  7     ((((■)5)(E)+)1)■        fail dotstar or empty
  412    |  7     (((■5)(E)+)1)1          fail dotstar or empty
  413    |  7     (((((■■)4)■)(■){■})■)■  fail dotstar or empty
  414    |  7     (((((■)4)■)(■){■})■)1   fail dotstar or empty
  415    |  7     (((((■)4)■)(■){■})1)■   fail dotstar or empty
  416    |  7     ((((■4)■)(■){■})1)1     fail dotstar or empty
  417    |  7     (((((■)4)■)(■)+)■)■     fail dotstar or empty
  418    |  7     ((((■4)■)(■)+)■)1       fail dotstar or empty
  419    |  7     ((((■4)■)(■)+)1)■       fail dotstar or empty
  420    |  7     (((((■)4)■)(E){■})■)■   fail dotstar or empty
  421    |  7     (((((■■)4)■)■)■)■       fail dotstar or empty
  422    |  7     ((((■4)■)(E){■})■)1     fail dotstar or empty
  423    |  7     (((((■)4)■)■)■)1        fail dotstar or empty
  424    |  7     ((((■4)■)(E){■})1)■     fail dotstar or empty
  425    |  7     (((((■)4)■)■)1)■        fail dotstar or empty
  426    |  7     ((((■4)■)■)1)1          fail dotstar or empty
  427    |  7     ((((■4)■)(E)+)■)■       fail dotstar or empty
  428    |  7     (((((■)4)5)(■){■})■)■   fail dotstar or empty
  429    |  7     ((((■4)5)(■){■})■)1     fail dotstar or empty
  430    |  7     ((((■4)5)(■){■})1)■     fail dotstar or empty
  431    |  7     ((((■4)5)(■)+)■)■       fail dotstar or empty
  432    |  7     ((((■4)5)(E){■})■)■     fail dotstar or empty
  433    |  7     (((((■)4)5)■)■)■        fail dotstar or empty
  434    |  7     ((((■4)5)■)■)1          fail dotstar or empty
  435    |  7     ((((■4)5)■)1)■          fail dotstar or empty
  436    |  7     (((((■.)■)■)(■){■})■)■  fail dot
  437    |  7     ((((((■■).)■)■)(■)+)■)■ fail dot
  438    |  7     ((((((■|■).)■)■)(■)+)■)■fail dot
  439    |  7     ((((((■){■}.)■)■)(■)+)■)■fail dot
  440    |  7     (((((■.)(■■))■)(■)+)■)■ fail dot
  441    |  7     (((((■.)(■|■))■)(■)+)■)■fail dot
  442    |  7     (((((■.)(■){■})■)(■)+)■)■fail dot
  443    |  7     (((((■.)■)(■■))(■)+)■)■ fail dot
  444    |  7     (((((■.)■)(■|■))(■)+)■)■fail dot
  445    |  7     (((((■.)■)(■){■})(■)+)■)■fail dot
  446    |  7     (((((■.)■)■)(■■)+)■)■   fail dot
  447    |  7     (((((■.)■)■)((■|■))+)■)■fail dot
  448    |  7     (((((■.)■)■)((■){■})+)■)■fail dot
  449    |  7     (((((■.)■)■)(■)+)(■■))■ fail dot
  450    |  7     (((((■.)■)■)(■)+)(■|■))■fail dot
  451    |  7     (((((■.)■)■)(■)+)(■){■})■fail dot
  452    |  7     (((((■.)■)■)(■)+)■)(■■) fail dot
  453    |  7     (((((■.)■)■)(■)+)■)(■|■)fail dot
  454    |  7     (((((■.)■)■)(■)+)■)(■){■}fail dot
  455    |  7     (((((■.)■)■)■)■)■       fail dot
  456    |  7     ((((((■■).)■)■)(E){■})■)■fail dot
  457    |  7     ((((((■|■).)■)■)(E){■})■)■fail dot
  458    |  7     ((((((■){■}.)■)■)(E){■})■)■fail dot
  459    |  7     (((((■.)(■■))■)(E){■})■)■fail dot
  460    |  7     (((((■.)(■|■))■)(E){■})■)■fail dot
  461    |  7     (((((■.)(■){■})■)(E){■})■)■fail dot
  462    |  7     (((((■.)■)(■■))(E){■})■)■fail dot
  463    |  7     (((((■.)■)(■|■))(E){■})■)■fail dot
  464    |  7     (((((■.)■)(■){■})(E){■})■)■fail dot
  465    |  7     (((((■.)■)■)(E){■})(■■))■fail dot
  466    |  7     (((((■.)■)■)(E){■})(■|■))■fail dot
  467    |  7     (((((■.)■)■)(E){■})(■){■})■fail dot
  468    |  7     (((((■.)■)■)(E){■})■)(■■)fail dot
  469    |  7     (((((■.)■)■)(E){■})■)(■|■)fail dot
  470    |  7     (((((■.)■)■)(E){■})■)(■){■}fail dot
  471    |  7     (((((4■)■)■)(■){■})■)■  fail dotstar or empty
  472    |  7     (((((4■)■)■)■)■)■       fail dotstar or empty
  473    |  8     (((((■■)■)■)(■){■})■)■  fail dot
  474    |  8     (((((■)■)■)(■){■})■)1   fail dotstar or empty
  475    |  8     (((((■)■)■)(■){■})1)■   fail dotstar or empty
  476    |  8     ((((■■)■)(■){■})1)1     fail dotstar or empty
  477    |  8     (((((■)■)■)(■)+)■)■     fail dot
  478    |  8     ((((((■■)■)■)■)(■)+)■)■ fail dot
  479    |  8     ((((((■|■)■)■)■)(■)+)■)■fail dot
  480    |  8     ((((((■){■}■)■)■)(■)+)■)■fail dot
  481    |  8     (((((■■)(■■))■)(■)+)■)■ fail dot
  482    |  8     (((((■■)(■|■))■)(■)+)■)■fail dot
  483    |  8     (((((■■)(■){■})■)(■)+)■)■fail dot
  484    |  8     (((((■■)■)(■■))(■)+)■)■ fail dot
  485    |  8     (((((■■)■)(■|■))(■)+)■)■fail dot
  486    |  8     (((((■■)■)(■){■})(■)+)■)■fail dot
  487    |  8     (((((■■)■)■)(■■)+)■)■   fail dot
  488    |  8     (((((■■)■)■)((■|■))+)■)■fail dot
  489    |  8     (((((■■)■)■)((■){■})+)■)■fail dot
  490    |  8     (((((■■)■)■)(■)+)(■■))■ fail dot
  491    |  8     (((((■■)■)■)(■)+)(■|■))■fail dot
  492    |  8     (((((■■)■)■)(■)+)(■){■})■fail dot
  493    |  8     (((((■■)■)■)(■)+)■)(■■) fail dot
  494    |  8     (((((■■)■)■)(■)+)■)(■|■)fail dot
  495    |  8     (((((■■)■)■)(■)+)■)(■){■}fail dot
  496    |  8     ((((■■)■)(■)+)■)1       fail dotstar or empty
  497    |  8     ((((■■)■)(■)+)1)■       fail dotstar or empty
  498    |  8     ((((■)■)(■)+)1)1        fail dotstar or empty
  499    |  8     (((((■)■)■)(E){■})■)■   fail dot
  500    |  8     (((((■■)■)■)■)■)■       fail dot
  501    |  8     ((((((■■)■)■)■)(E){■})■)■fail dot
  502    |  8     ((((((■|■)■)■)■)(E){■})■)■fail dot
  503    |  8     ((((((■){■}■)■)■)(E){■})■)■fail dot
  504    |  8     (((((■■)(■■))■)(E){■})■)■fail dot
  505    |  8     (((((■■)(■|■))■)(E){■})■)■fail dot
  506    |  8     (((((■■)(■){■})■)(E){■})■)■fail dot
  507    |  8     (((((■■)■)(■■))(E){■})■)■fail dot
  508    |  8     (((((■■)■)(■|■))(E){■})■)■fail dot
  509    |  8     (((((■■)■)(■){■})(E){■})■)■fail dot
  510    |  8     (((((■■)■)■)(E){■})(■■))■fail dot
  511    |  8     (((((■■)■)■)(E){■})(■|■))■fail dot
  512    |  8     (((((■■)■)■)(E){■})(■){■})■fail dot
  513    |  8     (((((■■)■)■)(E){■})■)(■■)fail dot
  514    |  8     (((((■■)■)■)(E){■})■)(■|■)fail dot
  515    |  8     (((((■■)■)■)(E){■})■)(■){■}fail dot
  516    |  8     ((((■■)■)(E){■})■)1     fail dotstar or empty
  517    |  8     (((((■)■)■)■)■)1        fail dotstar or empty
  518    |  8     ((((■■)■)(E){■})1)■     fail dotstar or empty
  519    |  8     (((((■)■)■)■)1)■        fail dotstar or empty
  520    |  8     ((((■)■)(E){■})1)1      fail dotstar or empty
  521    |  8     ((((■■)■)■)1)1          fail dotstar or empty
  522    |  8     ((((■■)■)(E)+)■)■       fail dotstar or empty
  523    |  8     ((((■)■)(E)+)■)1        fail dotstar or empty
  524    |  8     ((((■)■)(E)+)1)■        fail dotstar or empty
  525    |  8     (((■■)(E)+)1)1          fail dotstar or empty
  526    |  8     (((((■)■)5)(■){■})■)■   fail dotstar or empty
  527    |  8     ((((■■)5)(■){■})■)1     fail dotstar or empty
  528    |  8     ((((■■)5)(■){■})1)■     fail dotstar or empty
  529    |  8     ((((■)5)(■){■})1)1      fail dotstar or empty
  530    |  8     ((((■■)5)(■)+)■)■       fail dotstar or empty
  531    |  8     ((((■)5)(■)+)■)1        fail dotstar or empty
  532    |  8     ((((■)5)(■)+)1)■        fail dotstar or empty
  533    |  8     (((■5)(■)+)1)1          fail dotstar or empty
  534    |  8     ((((■■)5)(E){■})■)■     fail dotstar or empty
  535    |  8     (((((■)■)5)■)■)■        fail dotstar or empty
  536    |  8     ((((■)5)(E){■})■)1      fail dotstar or empty
  537    |  8     ((((■■)5)■)■)1          fail dotstar or empty
  538    |  8     ((((■)5)(E){■})1)■      fail dotstar or empty
  539    |  8     ((((■■)5)■)1)■          fail dotstar or empty
  540    |  8     (((■5)(E){■})1)1        fail dotstar or empty
  541    |  8     ((((■)5)■)1)1           fail dotstar or empty
  542    |  8     ((((■)5)(E)+)■)■        fail dotstar or empty
  543    |  8     (((■5)(E)+)■)1          fail dotstar or empty
  544    |  8     (((■5)(E)+)1)■          fail dotstar or empty
  545    |  8     (((((■)4)■)(■){■})■)■   fail dotstar or empty
  546    |  8     ((((■4)■)(■){■})■)1     fail dotstar or empty
  547    |  8     ((((■4)■)(■){■})1)■     fail dotstar or empty
  548    |  8     ((((■4)■)(■)+)■)■       fail dotstar or empty
  549    |  8     ((((■4)■)(E){■})■)■     fail dotstar or empty
  550    |  8     (((((■)4)■)■)■)■        fail dotstar or empty
  551    |  8     ((((■4)■)■)■)1          fail dotstar or empty
  552    |  8     ((((■4)■)■)1)■          fail dotstar or empty
  553    |  8     ((((■4)5)(■){■})■)■     fail dotstar or empty
  554    |  8     ((((■4)5)■)■)■          fail dotstar or empty
  555    |  8     ((((((■■).)■)■)(■){■})■)■fail dot
  556    |  8     ((((((■|■).)■)■)(■){■})■)■fail dot
  557    |  8     ((((((■){■}.)■)■)(■){■})■)■fail dot
  558    |  8     (((((■.)(■■))■)(■){■})■)■fail dot
  559    |  8     (((((■.)(■|■))■)(■){■})■)■fail dot
  560    |  8     (((((■.)(■){■})■)(■){■})■)■fail dot
  561    |  8     (((((■.)■)(■■))(■){■})■)■fail dot
  562    |  8     (((((■.)■)(■|■))(■){■})■)■fail dot
  563    |  8     (((((■.)■)(■){■})(■){■})■)■fail dot
  564    |  8     (((((■.)■)■)(■■){■})■)■ fail dot
  565    |  8     (((((■.)■)■)((■|■)){■})■)■fail dot
  566    |  8     (((((■.)■)■)((■){■}){■})■)■fail dot
  567    |  8     (((((■.)■)■)(■){■})(■■))■fail dot
  568    |  8     (((((■.)■)■)(■){■})(■|■))■fail dot
  569    |  8     (((((■.)■)■)(■){■})(■){■})■fail dot
  570    |  8     (((((■.)■)■)(■){■})■)(■■)fail dot
  571    |  8     (((((■.)■)■)(■){■})■)(■|■)fail dot
  572    |  8     (((((■.)■)■)(■){■})■)(■){■}fail dot
  573    |  8     ((((((■).)■)■)(■)+)■)■  fail dot
  574    |  8     (((((((■■)■).)■)■)(■)+)■)■fail dot
  575    |  8     (((((((■|■)■).)■)■)(■)+)■)■fail dot
  576    |  8     (((((((■){■}■).)■)■)(■)+)■)■fail dot
  577    |  8     ((((((■■).)(■■))■)(■)+)■)■fail dot
  578    |  8     ((((((■■).)(■|■))■)(■)+)■)■fail dot
  579    |  8     ((((((■■).)(■){■})■)(■)+)■)■fail dot
  580    |  8     ((((((■■).)■)(■■))(■)+)■)■fail dot
  581    |  8     ((((((■■).)■)(■|■))(■)+)■)■fail dot
  582    |  8     ((((((■■).)■)(■){■})(■)+)■)■fail dot
  583    |  8     ((((((■■).)■)■)(■■)+)■)■fail dot
  584    |  8     ((((((■■).)■)■)((■|■))+)■)■fail dot
  585    |  8     ((((((■■).)■)■)((■){■})+)■)■fail dot
  586    |  8     ((((((■■).)■)■)(■)+)(■■))■fail dot
  587    |  8     ((((((■■).)■)■)(■)+)(■|■))■fail dot
  588    |  8     ((((((■■).)■)■)(■)+)(■){■})■fail dot
  589    |  8     ((((((■■).)■)■)(■)+)■)(■■)fail dot
  590    |  8     ((((((■■).)■)■)(■)+)■)(■|■)fail dot
  591    |  8     ((((((■■).)■)■)(■)+)■)(■){■}fail dot
  592    |  8     ((((((■■|■).)■)■)(■)+)■)■fail dot
  593    |  8     (((((((■|■)|■).)■)■)(■)+)■)■fail dot
  594    |  8     (((((((■){■}|■).)■)■)(■)+)■)■fail dot
  595    |  8     ((((((■|■).)(■■))■)(■)+)■)■fail dot
  596    |  8     ((((((■|■).)(■|■))■)(■)+)■)■fail dot
  597    |  8     ((((((■|■).)(■){■})■)(■)+)■)■fail dot
  598    |  8     ((((((■|■).)■)(■■))(■)+)■)■fail dot
  599    |  8     ((((((■|■).)■)(■|■))(■)+)■)■fail dot
  600    |  8     ((((((■|■).)■)(■){■})(■)+)■)■fail dot
  601    |  8     ((((((■|■).)■)■)(■■)+)■)■fail dot
  602    |  8     ((((((■|■).)■)■)((■|■))+)■)■fail dot
  603    |  8     ((((((■|■).)■)■)((■){■})+)■)■fail dot
  604    |  8     ((((((■|■).)■)■)(■)+)(■■))■fail dot
  605    |  8     ((((((■|■).)■)■)(■)+)(■|■))■fail dot
  606    |  8     ((((((■|■).)■)■)(■)+)(■){■})■fail dot
  607    |  8     ((((((■|■).)■)■)(■)+)■)(■■)fail dot
  608    |  8     ((((((■|■).)■)■)(■)+)■)(■|■)fail dot
  609    |  8     ((((((■|■).)■)■)(■)+)■)(■){■}fail dot
  610    |  8     ((((((■■){■}.)■)■)(■)+)■)■fail dot
  611    |  8     (((((((■|■)){■}.)■)■)(■)+)■)■fail dot
  612    |  8     (((((((■){■}){■}.)■)■)(■)+)■)■fail dot
  613    |  8     ((((((■){■}.)(■■))■)(■)+)■)■fail dot
  614    |  8     ((((((■){■}.)(■|■))■)(■)+)■)■fail dot
  615    |  8     ((((((■){■}.)(■){■})■)(■)+)■)■fail dot
  616    |  8     ((((((■){■}.)■)(■■))(■)+)■)■fail dot
  617    |  8     ((((((■){■}.)■)(■|■))(■)+)■)■fail dot
  618    |  8     ((((((■){■}.)■)(■){■})(■)+)■)■fail dot
  619    |  8     ((((((■){■}.)■)■)(■■)+)■)■fail dot
  620    |  8     ((((((■){■}.)■)■)((■|■))+)■)■fail dot
  621    |  8     ((((((■){■}.)■)■)((■){■})+)■)■fail dot
  622    |  8     ((((((■){■}.)■)■)(■)+)(■■))■fail dot
  623    |  8     ((((((■){■}.)■)■)(■)+)(■|■))■fail dot
  624    |  8     ((((((■){■}.)■)■)(■)+)(■){■})■fail dot
  625    |  8     ((((((■){■}.)■)■)(■)+)■)(■■)fail dot
  626    |  8     ((((((■){■}.)■)■)(■)+)■)(■|■)fail dot
  627    |  8     ((((((■){■}.)■)■)(■)+)■)(■){■}fail dot
  628    |  8     (((((■.)(■))■)(■)+)■)■  fail dot
  629    |  8     (((((■.)((■■)■))■)(■)+)■)■fail dot
  630    |  8     (((((■.)((■|■)■))■)(■)+)■)■fail dot
  631    |  8     (((((■.)((■){■}■))■)(■)+)■)■fail dot
  632    |  8     (((((■.)(■■))(■■))(■)+)■)■fail dot
  633    |  8     (((((■.)(■■))(■|■))(■)+)■)■fail dot
  634    |  8     (((((■.)(■■))(■){■})(■)+)■)■fail dot
  635    |  8     (((((■.)(■■))■)(■■)+)■)■fail dot
  636    |  8     (((((■.)(■■))■)((■|■))+)■)■fail dot
  637    |  8     (((((■.)(■■))■)((■){■})+)■)■fail dot
  638    |  8     (((((■.)(■■))■)(■)+)(■■))■fail dot
  639    |  8     (((((■.)(■■))■)(■)+)(■|■))■fail dot
  640    |  8     (((((■.)(■■))■)(■)+)(■){■})■fail dot
  641    |  8     (((((■.)(■■))■)(■)+)■)(■■)fail dot
  642    |  8     (((((■.)(■■))■)(■)+)■)(■|■)fail dot
  643    |  8     (((((■.)(■■))■)(■)+)■)(■){■}fail dot
  644    |  8     (((((■.)(■■|■))■)(■)+)■)■fail dot
  645    |  8     (((((■.)((■|■)|■))■)(■)+)■)■fail dot
  646    |  8     (((((■.)((■){■}|■))■)(■)+)■)■fail dot
  647    |  8     (((((■.)(■|■))(■■))(■)+)■)■fail dot
  648    |  8     (((((■.)(■|■))(■|■))(■)+)■)■fail dot
  649    |  8     (((((■.)(■|■))(■){■})(■)+)■)■fail dot
  650    |  8     (((((■.)(■|■))■)(■■)+)■)■fail dot
  651    |  8     (((((■.)(■|■))■)((■|■))+)■)■fail dot
  652    |  8     (((((■.)(■|■))■)((■){■})+)■)■fail dot
  653    |  8     (((((■.)(■|■))■)(■)+)(■■))■fail dot
  654    |  8     (((((■.)(■|■))■)(■)+)(■|■))■fail dot
  655    |  8     (((((■.)(■|■))■)(■)+)(■){■})■fail dot
  656    |  8     (((((■.)(■|■))■)(■)+)■)(■■)fail dot
  657    |  8     (((((■.)(■|■))■)(■)+)■)(■|■)fail dot
  658    |  8     (((((■.)(■|■))■)(■)+)■)(■){■}fail dot
  659    |  8     (((((■.)(■■){■})■)(■)+)■)■fail dot
  660    |  8     (((((■.)((■|■)){■})■)(■)+)■)■fail dot
  661    |  8     (((((■.)((■){■}){■})■)(■)+)■)■fail dot
  662    |  8     (((((■.)(■){■})(■■))(■)+)■)■fail dot
  663    |  8     (((((■.)(■){■})(■|■))(■)+)■)■fail dot
  664    |  8     (((((■.)(■){■})(■){■})(■)+)■)■fail dot
  665    |  8     (((((■.)(■){■})■)(■■)+)■)■fail dot
  666    |  8     (((((■.)(■){■})■)((■|■))+)■)■fail dot
  667    |  8     (((((■.)(■){■})■)((■){■})+)■)■fail dot
  668    |  8     (((((■.)(■){■})■)(■)+)(■■))■fail dot
  669    |  8     (((((■.)(■){■})■)(■)+)(■|■))■fail dot
  670    |  8     (((((■.)(■){■})■)(■)+)(■){■})■fail dot
  671    |  8     (((((■.)(■){■})■)(■)+)■)(■■)fail dot
  672    |  8     (((((■.)(■){■})■)(■)+)■)(■|■)fail dot
  673    |  8     (((((■.)(■){■})■)(■)+)■)(■){■}fail dot
  674    |  8     (((((■.)■)(■))(■)+)■)■  fail dot
  675    |  8     (((((■.)■)((■■)■))(■)+)■)■fail dot
  676    |  8     (((((■.)■)((■|■)■))(■)+)■)■fail dot
  677    |  8     (((((■.)■)((■){■}■))(■)+)■)■fail dot
  678    |  8     (((((■.)■)(■■))(■■)+)■)■fail dot
  679    |  8     (((((■.)■)(■■))((■|■))+)■)■fail dot
  680    |  8     (((((■.)■)(■■))((■){■})+)■)■fail dot
  681    |  8     (((((■.)■)(■■))(■)+)(■■))■fail dot
  682    |  8     (((((■.)■)(■■))(■)+)(■|■))■fail dot
  683    |  8     (((((■.)■)(■■))(■)+)(■){■})■fail dot
  684    |  8     (((((■.)■)(■■))(■)+)■)(■■)fail dot
  685    |  8     (((((■.)■)(■■))(■)+)■)(■|■)fail dot
  686    |  8     (((((■.)■)(■■))(■)+)■)(■){■}fail dot
  687    |  8     (((((■.)■)(■■|■))(■)+)■)■fail dot
  688    |  8     (((((■.)■)((■|■)|■))(■)+)■)■fail dot
  689    |  8     (((((■.)■)((■){■}|■))(■)+)■)■fail dot
  690    |  8     (((((■.)■)(■|■))(■■)+)■)■fail dot
  691    |  8     (((((■.)■)(■|■))((■|■))+)■)■fail dot
  692    |  8     (((((■.)■)(■|■))((■){■})+)■)■fail dot
  693    |  8     (((((■.)■)(■|■))(■)+)(■■))■fail dot
  694    |  8     (((((■.)■)(■|■))(■)+)(■|■))■fail dot
  695    |  8     (((((■.)■)(■|■))(■)+)(■){■})■fail dot
  696    |  8     (((((■.)■)(■|■))(■)+)■)(■■)fail dot
  697    |  8     (((((■.)■)(■|■))(■)+)■)(■|■)fail dot
  698    |  8     (((((■.)■)(■|■))(■)+)■)(■){■}fail dot
  699    |  8     (((((■.)■)(■■){■})(■)+)■)■fail dot
  700    |  8     (((((■.)■)((■|■)){■})(■)+)■)■fail dot
  701    |  8     (((((■.)■)((■){■}){■})(■)+)■)■fail dot
  702    |  8     (((((■.)■)(■){■})(■■)+)■)■fail dot
  703    |  8     (((((■.)■)(■){■})((■|■))+)■)■fail dot
  704    |  8     (((((■.)■)(■){■})((■){■})+)■)■fail dot
  705    |  8     (((((■.)■)(■){■})(■)+)(■■))■fail dot
  706    |  8     (((((■.)■)(■){■})(■)+)(■|■))■fail dot
  707    |  8     (((((■.)■)(■){■})(■)+)(■){■})■fail dot
  708    |  8     (((((■.)■)(■){■})(■)+)■)(■■)fail dot
  709    |  8     (((((■.)■)(■){■})(■)+)■)(■|■)fail dot
  710    |  8     (((((■.)■)(■){■})(■)+)■)(■){■}fail dot
  711    |  8     (((((■.)■)■)((■■)■)+)■)■fail dot
  712    |  8     (((((■.)■)■)((■|■)■)+)■)■fail dot
  713    |  8     (((((■.)■)■)((■){■}■)+)■)■fail dot
  714    |  8     (((((■.)■)■)(■(■■))+)■)■fail dot
  715    |  8     (((((■.)■)■)(■(■|■))+)■)■fail dot
  716    |  8     (((((■.)■)■)(■(■){■})+)■)■fail dot
  717    |  8     (((((■.)■)■)(■■)+)(■■))■fail dot
  718    |  8     (((((■.)■)■)(■■)+)(■|■))■fail dot
  719    |  8     (((((■.)■)■)(■■)+)(■){■})■fail dot
  720    |  8     (((((■.)■)■)(■■)+)■)(■■)fail dot
  721    |  8     (((((■.)■)■)(■■)+)■)(■|■)fail dot
  722    |  8     (((((■.)■)■)(■■)+)■)(■){■}fail dot
  723    |  8     (((((■.)■)■)((■■|■))+)■)■fail dot
  724    |  8     (((((■.)■)■)(((■|■)|■))+)■)■fail dot
  725    |  8     (((((■.)■)■)(((■){■}|■))+)■)■fail dot
  726    |  8     (((((■.)■)■)((■|■■))+)■)■fail dot
  727    |  8     (((((■.)■)■)((■|(■|■)))+)■)■fail dot
  728    |  8     (((((■.)■)■)((■|(■){■}))+)■)■fail dot
  729    |  8     (((((■.)■)■)((■|■))+)(■■))■fail dot
  730    |  8     (((((■.)■)■)((■|■))+)(■|■))■fail dot
  731    |  8     (((((■.)■)■)((■|■))+)(■){■})■fail dot
  732    |  8     (((((■.)■)■)((■|■))+)■)(■■)fail dot
  733    |  8     (((((■.)■)■)((■|■))+)■)(■|■)fail dot
  734    |  8     (((((■.)■)■)((■|■))+)■)(■){■}fail dot
  735    |  8     (((((■.)■)■)((■■){■})+)■)■fail dot
  736    |  8     (((((■.)■)■)(((■|■)){■})+)■)■fail dot
  737    |  8     (((((■.)■)■)(((■){■}){■})+)■)■fail dot
  738    |  8     (((((■.)■)■)((■){■})+)(■■))■fail dot
  739    |  8     (((((■.)■)■)((■){■})+)(■|■))■fail dot
  740    |  8     (((((■.)■)■)((■){■})+)(■){■})■fail dot
  741    |  8     (((((■.)■)■)((■){■})+)■)(■■)fail dot
  742    |  8     (((((■.)■)■)((■){■})+)■)(■|■)fail dot
  743    |  8     (((((■.)■)■)((■){■})+)■)(■){■}fail dot
  744    |  8     (((((■.)■)■)(■)+)(■))■  fail dot
  745    |  8     (((((■.)■)■)(■)+)((■■)■))■fail dot
  746    |  8     (((((■.)■)■)(■)+)((■|■)■))■fail dot
  747    |  8     (((((■.)■)■)(■)+)((■){■}■))■fail dot
  748    |  8     (((((■.)■)■)(■)+)(■■))(■■)fail dot
  749    |  8     (((((■.)■)■)(■)+)(■■))(■|■)fail dot
  750    |  8     (((((■.)■)■)(■)+)(■■))(■){■}fail dot
  751    |  8     (((((■.)■)■)(■)+)(■■|■))■fail dot
  752    |  8     (((((■.)■)■)(■)+)((■|■)|■))■fail dot
  753    |  8     (((((■.)■)■)(■)+)((■){■}|■))■fail dot
  754    |  8     (((((■.)■)■)(■)+)(■|■))(■■)fail dot
  755    |  8     (((((■.)■)■)(■)+)(■|■))(■|■)fail dot
  756    |  8     (((((■.)■)■)(■)+)(■|■))(■){■}fail dot
  757    |  8     (((((■.)■)■)(■)+)(■■){■})■fail dot
  758    |  8     (((((■.)■)■)(■)+)((■|■)){■})■fail dot
  759    |  8     (((((■.)■)■)(■)+)((■){■}){■})■fail dot
  760    |  8     (((((■.)■)■)(■)+)(■){■})(■■)fail dot
  761    |  8     (((((■.)■)■)(■)+)(■){■})(■|■)fail dot
  762    |  8     (((((■.)■)■)(■)+)(■){■})(■){■}fail dot
  763    |  8     (((((■.)■)■)(■)+)■)(■)  fail dot
  764    |  8     (((((■.)■)■)(■)+)■)((■■)■)fail dot
  765    |  8     (((((■.)■)■)(■)+)■)((■|■)■)fail dot
  766    |  8     (((((■.)■)■)(■)+)■)((■){■}■)fail dot
  767    |  8     (((((■.)■)■)(■)+)■)(■■|■)fail dot
  768    |  8     (((((■.)■)■)(■)+)■)((■|■)|■)fail dot
  769    |  8     (((((■.)■)■)(■)+)■)((■){■}|■)fail dot
  770    |  8     (((((■.)■)■)(■)+)■)(■■){■}fail dot
  771    |  8     (((((■.)■)■)(■)+)■)((■|■)){■}fail dot
  772    |  8     (((((■.)■)■)(■)+)■)((■){■}){■}fail dot
  773    |  8     ((((((■■).)■)■)■)■)■    fail dot
  774    |  8     ((((((■|■).)■)■)■)■)■   fail dot
  775    |  8     ((((((■){■}.)■)■)■)■)■  fail dot
  776    |  8     (((((■.)(■■))■)■)■)■    fail dot
  777    |  8     (((((■.)(■|■))■)■)■)■   fail dot
  778    |  8     (((((■.)(■){■})■)■)■)■  fail dot
  779    |  8     (((((■.)■)(■■))■)■)■    fail dot
  780    |  8     (((((■.)■)(■|■))■)■)■   fail dot
  781    |  8     (((((■.)■)(■){■})■)■)■  fail dot
  782    |  8     (((((■.)■)■)(■■))■)■    fail dot
  783    |  8     (((((■.)■)■)(■|■))■)■   fail dot
  784    |  8     (((((■.)■)■)■)(■■))■    fail dot
  785    |  8     (((((■.)■)■)■)(■|■))■   fail dot
  786    |  8     (((((■.)■)■)■)(■){■})■  fail dot
  787    |  8     (((((■.)■)■)■)■)(■■)    fail dot
  788    |  8     (((((■.)■)■)■)■)(■|■)   fail dot
  789    |  8     (((((■.)■)■)■)■)(■){■}  fail dot
  790    |  8     ((((((■).)■)■)(E){■})■)■fail dot
  791    |  8     (((((((■■)■).)■)■)(E){■})■)■fail dot
  792    |  8     (((((((■|■)■).)■)■)(E){■})■)■fail dot
  793    |  8     (((((((■){■}■).)■)■)(E){■})■)■fail dot
  794    |  8     ((((((■■).)(■■))■)(E){■})■)■fail dot
  795    |  8     ((((((■■).)(■|■))■)(E){■})■)■fail dot
  796    |  8     ((((((■■).)(■){■})■)(E){■})■)■fail dot
  797    |  8     ((((((■■).)■)(■■))(E){■})■)■fail dot
  798    |  8     ((((((■■).)■)(■|■))(E){■})■)■fail dot
  799    |  8     ((((((■■).)■)(■){■})(E){■})■)■fail dot
  800    |  8     ((((((■■).)■)■)(E){■})(■■))■fail dot
  801    |  8     ((((((■■).)■)■)(E){■})(■|■))■fail dot
  802    |  8     ((((((■■).)■)■)(E){■})(■){■})■fail dot
  803    |  8     ((((((■■).)■)■)(E){■})■)(■■)fail dot
  804    |  8     ((((((■■).)■)■)(E){■})■)(■|■)fail dot
  805    |  8     ((((((■■).)■)■)(E){■})■)(■){■}fail dot
  806    |  8     ((((((■■|■).)■)■)(E){■})■)■fail dot
  807    |  8     (((((((■|■)|■).)■)■)(E){■})■)■fail dot
  808    |  8     (((((((■){■}|■).)■)■)(E){■})■)■fail dot
  809    |  8     ((((((■|■).)(■■))■)(E){■})■)■fail dot
  810    |  8     ((((((■|■).)(■|■))■)(E){■})■)■fail dot
  811    |  8     ((((((■|■).)(■){■})■)(E){■})■)■fail dot
  812    |  8     ((((((■|■).)■)(■■))(E){■})■)■fail dot
  813    |  8     ((((((■|■).)■)(■|■))(E){■})■)■fail dot
  814    |  8     ((((((■|■).)■)(■){■})(E){■})■)■fail dot
  815    |  8     ((((((■|■).)■)■)(E){■})(■■))■fail dot
  816    |  8     ((((((■|■).)■)■)(E){■})(■|■))■fail dot
  817    |  8     ((((((■|■).)■)■)(E){■})(■){■})■fail dot
  818    |  8     ((((((■|■).)■)■)(E){■})■)(■■)fail dot
  819    |  8     ((((((■|■).)■)■)(E){■})■)(■|■)fail dot
  820    |  8     ((((((■|■).)■)■)(E){■})■)(■){■}fail dot
  821    |  8     ((((((■■){■}.)■)■)(E){■})■)■fail dot
  822    |  8     (((((((■|■)){■}.)■)■)(E){■})■)■fail dot
  823    |  8     (((((((■){■}){■}.)■)■)(E){■})■)■fail dot
  824    |  8     ((((((■){■}.)(■■))■)(E){■})■)■fail dot
  825    |  8     ((((((■){■}.)(■|■))■)(E){■})■)■fail dot
  826    |  8     ((((((■){■}.)(■){■})■)(E){■})■)■fail dot
  827    |  8     ((((((■){■}.)■)(■■))(E){■})■)■fail dot
  828    |  8     ((((((■){■}.)■)(■|■))(E){■})■)■fail dot
  829    |  8     ((((((■){■}.)■)(■){■})(E){■})■)■fail dot
  830    |  8     ((((((■){■}.)■)■)(E){■})(■■))■fail dot
  831    |  8     ((((((■){■}.)■)■)(E){■})(■|■))■fail dot
  832    |  8     ((((((■){■}.)■)■)(E){■})(■){■})■fail dot
  833    |  8     ((((((■){■}.)■)■)(E){■})■)(■■)fail dot
  834    |  8     ((((((■){■}.)■)■)(E){■})■)(■|■)fail dot
  835    |  8     ((((((■){■}.)■)■)(E){■})■)(■){■}fail dot
  836    |  8     (((((■.)(■))■)(E){■})■)■fail dot
  837    |  8     (((((■.)((■■)■))■)(E){■})■)■fail dot
  838    |  8     (((((■.)((■|■)■))■)(E){■})■)■fail dot
  839    |  8     (((((■.)((■){■}■))■)(E){■})■)■fail dot
  840    |  8     (((((■.)(■■))(■■))(E){■})■)■fail dot
  841    |  8     (((((■.)(■■))(■|■))(E){■})■)■fail dot
  842    |  8     (((((■.)(■■))(■){■})(E){■})■)■fail dot
  843    |  8     (((((■.)(■■))■)(E){■})(■■))■fail dot
  844    |  8     (((((■.)(■■))■)(E){■})(■|■))■fail dot
  845    |  8     (((((■.)(■■))■)(E){■})(■){■})■fail dot
  846    |  8     (((((■.)(■■))■)(E){■})■)(■■)fail dot
  847    |  8     (((((■.)(■■))■)(E){■})■)(■|■)fail dot
  848    |  8     (((((■.)(■■))■)(E){■})■)(■){■}fail dot
  849    |  8     (((((■.)(■■|■))■)(E){■})■)■fail dot
  850    |  8     (((((■.)((■|■)|■))■)(E){■})■)■fail dot
  851    |  8     (((((■.)((■){■}|■))■)(E){■})■)■fail dot
  852    |  8     (((((■.)(■|■))(■■))(E){■})■)■fail dot
  853    |  8     (((((■.)(■|■))(■|■))(E){■})■)■fail dot
  854    |  8     (((((■.)(■|■))(■){■})(E){■})■)■fail dot
  855    |  8     (((((■.)(■|■))■)(E){■})(■■))■fail dot
  856    |  8     (((((■.)(■|■))■)(E){■})(■|■))■fail dot
  857    |  8     (((((■.)(■|■))■)(E){■})(■){■})■fail dot
  858    |  8     (((((■.)(■|■))■)(E){■})■)(■■)fail dot
  859    |  8     (((((■.)(■|■))■)(E){■})■)(■|■)fail dot
  860    |  8     (((((■.)(■|■))■)(E){■})■)(■){■}fail dot
  861    |  8     (((((■.)(■■){■})■)(E){■})■)■fail dot
  862    |  8     (((((■.)((■|■)){■})■)(E){■})■)■fail dot
  863    |  8     (((((■.)((■){■}){■})■)(E){■})■)■fail dot
  864    |  8     (((((■.)(■){■})(■■))(E){■})■)■fail dot
  865    |  8     (((((■.)(■){■})(■|■))(E){■})■)■fail dot
  866    |  8     (((((■.)(■){■})(■){■})(E){■})■)■fail dot
  867    |  8     (((((■.)(■){■})■)(E){■})(■■))■fail dot
  868    |  8     (((((■.)(■){■})■)(E){■})(■|■))■fail dot
  869    |  8     (((((■.)(■){■})■)(E){■})(■){■})■fail dot
  870    |  8     (((((■.)(■){■})■)(E){■})■)(■■)fail dot
  871    |  8     (((((■.)(■){■})■)(E){■})■)(■|■)fail dot
  872    |  8     (((((■.)(■){■})■)(E){■})■)(■){■}fail dot
  873    |  8     (((((■.)■)(■))(E){■})■)■fail dot
  874    |  8     (((((■.)■)((■■)■))(E){■})■)■fail dot
  875    |  8     (((((■.)■)((■|■)■))(E){■})■)■fail dot
  876    |  8     (((((■.)■)((■){■}■))(E){■})■)■fail dot
  877    |  8     (((((■.)■)(■■))(E){■})(■■))■fail dot
  878    |  8     (((((■.)■)(■■))(E){■})(■|■))■fail dot
  879    |  8     (((((■.)■)(■■))(E){■})(■){■})■fail dot
  880    |  8     (((((■.)■)(■■))(E){■})■)(■■)fail dot
  881    |  8     (((((■.)■)(■■))(E){■})■)(■|■)fail dot
  882    |  8     (((((■.)■)(■■))(E){■})■)(■){■}fail dot
  883    |  8     (((((■.)■)(■■|■))(E){■})■)■fail dot
  884    |  8     (((((■.)■)((■|■)|■))(E){■})■)■fail dot
  885    |  8     (((((■.)■)((■){■}|■))(E){■})■)■fail dot
  886    |  8     (((((■.)■)(■|■))(E){■})(■■))■fail dot
  887    |  8     (((((■.)■)(■|■))(E){■})(■|■))■fail dot
  888    |  8     (((((■.)■)(■|■))(E){■})(■){■})■fail dot
  889    |  8     (((((■.)■)(■|■))(E){■})■)(■■)fail dot
  890    |  8     (((((■.)■)(■|■))(E){■})■)(■|■)fail dot
  891    |  8     (((((■.)■)(■|■))(E){■})■)(■){■}fail dot
  892    |  8     (((((■.)■)(■■){■})(E){■})■)■fail dot
  893    |  8     (((((■.)■)((■|■)){■})(E){■})■)■fail dot
  894    |  8     (((((■.)■)((■){■}){■})(E){■})■)■fail dot
  895    |  8     (((((■.)■)(■){■})(E){■})(■■))■fail dot
  896    |  8     (((((■.)■)(■){■})(E){■})(■|■))■fail dot
  897    |  8     (((((■.)■)(■){■})(E){■})(■){■})■fail dot
  898    |  8     (((((■.)■)(■){■})(E){■})■)(■■)fail dot
  899    |  8     (((((■.)■)(■){■})(E){■})■)(■|■)fail dot
  900    |  8     (((((■.)■)(■){■})(E){■})■)(■){■}fail dot
  901    |  8     (((((■.)■)■)(E){■})(■))■fail dot
  902    |  8     (((((■.)■)■)(E){■})((■■)■))■fail dot
  903    |  8     (((((■.)■)■)(E){■})((■|■)■))■fail dot
  904    |  8     (((((■.)■)■)(E){■})((■){■}■))■fail dot
  905    |  8     (((((■.)■)■)(E){■})(■■))(■■)fail dot
  906    |  8     (((((■.)■)■)(E){■})(■■))(■|■)fail dot
  907    |  8     (((((■.)■)■)(E){■})(■■))(■){■}fail dot
  908    |  8     (((((■.)■)■)(E){■})(■■|■))■fail dot
  909    |  8     (((((■.)■)■)(E){■})((■|■)|■))■fail dot
  910    |  8     (((((■.)■)■)(E){■})((■){■}|■))■fail dot
  911    |  8     (((((■.)■)■)(E){■})(■|■))(■■)fail dot
  912    |  8     (((((■.)■)■)(E){■})(■|■))(■|■)fail dot
  913    |  8     (((((■.)■)■)(E){■})(■|■))(■){■}fail dot
  914    |  8     (((((■.)■)■)(E){■})(■■){■})■fail dot
  915    |  8     (((((■.)■)■)(E){■})((■|■)){■})■fail dot
  916    |  8     (((((■.)■)■)(E){■})((■){■}){■})■fail dot
  917    |  8     (((((■.)■)■)(E){■})(■){■})(■■)fail dot
  918    |  8     (((((■.)■)■)(E){■})(■){■})(■|■)fail dot
  919    |  8     (((((■.)■)■)(E){■})(■){■})(■){■}fail dot
  920    |  8     (((((■.)■)■)(E){■})■)(■)fail dot
  921    |  8     (((((■.)■)■)(E){■})■)((■■)■)fail dot
  922    |  8     (((((■.)■)■)(E){■})■)((■|■)■)fail dot
  923    |  8     (((((■.)■)■)(E){■})■)((■){■}■)fail dot
  924    |  8     (((((■.)■)■)(E){■})■)(■■|■)fail dot
  925    |  8     (((((■.)■)■)(E){■})■)((■|■)|■)fail dot
  926    |  8     (((((■.)■)■)(E){■})■)((■){■}|■)fail dot
  927    |  8     (((((■.)■)■)(E){■})■)(■■){■}fail dot
  928    |  8     (((((■.)■)■)(E){■})■)((■|■)){■}fail dot
  929    |  8     (((((■.)■)■)(E){■})■)((■){■}){■}fail dot
  930    |  9     (((((■)■)■)(■){■})■)■   fail dot
  931    |  9     ((((((■■)■)■)■)(■){■})■)■fail dot
  932    |  9     ((((((■|■)■)■)■)(■){■})■)■fail dot
  933    |  9     ((((((■){■}■)■)■)(■){■})■)■fail dot
  934    |  9     (((((■■)(■■))■)(■){■})■)■fail dot
  935    |  9     (((((■■)(■|■))■)(■){■})■)■fail dot
  936    |  9     (((((■■)(■){■})■)(■){■})■)■fail dot
  937    |  9     (((((■■)■)(■■))(■){■})■)■fail dot
  938    |  9     (((((■■)■)(■|■))(■){■})■)■fail dot
  939    |  9     (((((■■)■)(■){■})(■){■})■)■fail dot
  940    |  9     (((((■■)■)■)(■■){■})■)■ fail dot
  941    |  9     (((((■■)■)■)((■|■)){■})■)■fail dot
  942    |  9     (((((■■)■)■)((■){■}){■})■)■fail dot
  943    |  9     (((((■■)■)■)(■){■})(■■))■fail dot
  944    |  9     (((((■■)■)■)(■){■})(■|■))■fail dot
  945    |  9     (((((■■)■)■)(■){■})(■){■})■fail dot
  946    |  9     (((((■■)■)■)(■){■})■)(■■)fail dot
  947    |  9     (((((■■)■)■)(■){■})■)(■|■)fail dot
  948    |  9     (((((■■)■)■)(■){■})■)(■){■}fail dot
  949    |  9     ((((■■)■)(■){■})■)1     fail dotstar or empty
  950    |  9     ((((■■)■)(■){■})1)■     fail dotstar or empty
  951    |  9     ((((■)■)(■){■})1)1      fail dotstar or empty
  952    |  9     ((((■■)■)(■)+)■)■       fail dot
  953    |  9     ((((((■■))■)■)(■)+)■)■  fail dot
  954    |  9     ((((((■|■))■)■)(■)+)■)■ fail dot
  955    |  9     ((((((■){■})■)■)(■)+)■)■fail dot
  956    |  9     (((((■)■)(■■))(■)+)■)■  fail dot
  957    |  9     (((((■)■)(■|■))(■)+)■)■ fail dot
  958    |  9     (((((■)■)(■){■})(■)+)■)■fail dot
  959    |  9     (((((■)■)■)(■■)+)■)■    fail dot
  960    |  9     (((((■)■)■)((■|■))+)■)■ fail dot
  961    |  9     (((((■)■)■)((■){■})+)■)■fail dot
  962    |  9     (((((■)■)■)(■)+)(■■))■  fail dot
  963    |  9     (((((■)■)■)(■)+)(■|■))■ fail dot
  964    |  9     (((((■)■)■)(■)+)(■){■})■fail dot
  965    |  9     (((((■)■)■)(■)+)■)(■■)  fail dot
  966    |  9     (((((■)■)■)(■)+)■)(■|■) fail dot
  967    |  9     (((((■)■)■)(■)+)■)(■){■}fail dot
  968    |  9     ((((((■)■)■)■)(■)+)■)■  fail dot
  969    |  9     (((((((■■)■)■)■)■)(■)+)■)■fail dot
  970    |  9     (((((((■|■)■)■)■)■)(■)+)■)■fail dot
  971    |  9     (((((((■){■}■)■)■)■)(■)+)■)■fail dot
  972    |  9     ((((((■■)(■■))■)■)(■)+)■)■fail dot
  973    |  9     ((((((■■)(■|■))■)■)(■)+)■)■fail dot
  974    |  9     ((((((■■)(■){■})■)■)(■)+)■)■fail dot
  975    |  9     ((((((■■)■)(■■))■)(■)+)■)■fail dot
  976    |  9     ((((((■■)■)(■|■))■)(■)+)■)■fail dot
  977    |  9     ((((((■■)■)(■){■})■)(■)+)■)■fail dot
  978    |  9     ((((((■■)■)■)(■■))(■)+)■)■fail dot
  979    |  9     ((((((■■)■)■)(■|■))(■)+)■)■fail dot
  980    |  9     ((((((■■)■)■)(■){■})(■)+)■)■fail dot
  981    |  9     ((((((■■)■)■)■)(■■)+)■)■fail dot
  982    |  9     ((((((■■)■)■)■)((■|■))+)■)■fail dot
  983    |  9     ((((((■■)■)■)■)((■){■})+)■)■fail dot
  984    |  9     ((((((■■)■)■)■)(■)+)(■■))■fail dot
  985    |  9     ((((((■■)■)■)■)(■)+)(■|■))■fail dot
  986    |  9     ((((((■■)■)■)■)(■)+)(■){■})■fail dot
  987    |  9     ((((((■■)■)■)■)(■)+)■)(■■)fail dot
  988    |  9     ((((((■■)■)■)■)(■)+)■)(■|■)fail dot
  989    |  9     ((((((■■)■)■)■)(■)+)■)(■){■}fail dot
  990    |  9     ((((((■■|■)■)■)■)(■)+)■)■fail dot
  991    |  9     (((((((■|■)|■)■)■)■)(■)+)■)■fail dot
  992    |  9     (((((((■){■}|■)■)■)■)(■)+)■)■fail dot
  993    |  9     ((((((■|■)(■■))■)■)(■)+)■)■fail dot
  994    |  9     ((((((■|■)(■|■))■)■)(■)+)■)■fail dot
  995    |  9     ((((((■|■)(■){■})■)■)(■)+)■)■fail dot
  996    |  9     ((((((■|■)■)(■■))■)(■)+)■)■fail dot
  997    |  9     ((((((■|■)■)(■|■))■)(■)+)■)■fail dot
  998    |  9     ((((((■|■)■)(■){■})■)(■)+)■)■fail dot
  999    |  9     ((((((■|■)■)■)(■■))(■)+)■)■fail dot
  1000   |  9     ((((((■|■)■)■)(■|■))(■)+)■)■fail dot
  1001   |  9     ((((((■|■)■)■)(■){■})(■)+)■)■fail dot
  1002   |  9     ((((((■|■)■)■)■)(■■)+)■)■fail dot
  1003   |  9     ((((((■|■)■)■)■)((■|■))+)■)■fail dot
  1004   |  9     ((((((■|■)■)■)■)((■){■})+)■)■fail dot
  1005   |  9     ((((((■|■)■)■)■)(■)+)(■■))■fail dot
  1006   |  9     ((((((■|■)■)■)■)(■)+)(■|■))■fail dot
  1007   |  9     ((((((■|■)■)■)■)(■)+)(■){■})■fail dot
  1008   |  9     ((((((■|■)■)■)■)(■)+)■)(■■)fail dot
  1009   |  9     ((((((■|■)■)■)■)(■)+)■)(■|■)fail dot
  1010   |  9     ((((((■|■)■)■)■)(■)+)■)(■){■}fail dot
  1011   |  9     ((((((■■){■}■)■)■)(■)+)■)■fail dot
  1012   |  9     (((((((■|■)){■}■)■)■)(■)+)■)■fail dot
  1013   |  9     (((((((■){■}){■}■)■)■)(■)+)■)■fail dot
  1014   |  9     ((((((■){■}(■■))■)■)(■)+)■)■fail dot
  1015   |  9     ((((((■){■}(■|■))■)■)(■)+)■)■fail dot
  1016   |  9     ((((((■){■}(■){■})■)■)(■)+)■)■fail dot
  1017   |  9     ((((((■){■}■)(■■))■)(■)+)■)■fail dot
  1018   |  9     ((((((■){■}■)(■|■))■)(■)+)■)■fail dot
  1019   |  9     ((((((■){■}■)(■){■})■)(■)+)■)■fail dot
  1020   |  9     ((((((■){■}■)■)(■■))(■)+)■)■fail dot
  1021   |  9     ((((((■){■}■)■)(■|■))(■)+)■)■fail dot
  1022   |  9     ((((((■){■}■)■)(■){■})(■)+)■)■fail dot
  1023   |  9     ((((((■){■}■)■)■)(■■)+)■)■fail dot
  1024   |  9     ((((((■){■}■)■)■)((■|■))+)■)■fail dot
  1025   |  9     ((((((■){■}■)■)■)((■){■})+)■)■fail dot
  1026   |  9     ((((((■){■}■)■)■)(■)+)(■■))■fail dot
  1027   |  9     ((((((■){■}■)■)■)(■)+)(■|■))■fail dot
  1028   |  9     ((((((■){■}■)■)■)(■)+)(■){■})■fail dot
  1029   |  9     ((((((■){■}■)■)■)(■)+)■)(■■)fail dot
  1030   |  9     ((((((■){■}■)■)■)(■)+)■)(■|■)fail dot
  1031   |  9     ((((((■){■}■)■)■)(■)+)■)(■){■}fail dot
  1032   |  9     (((((■■)(■))■)(■)+)■)■  fail dot
  1033   |  9     (((((■■)(■■))(■■))(■)+)■)■fail dot
  1034   |  9     (((((■■)(■■))(■|■))(■)+)■)■fail dot
  1035   |  9     (((((■■)(■■))(■){■})(■)+)■)■fail dot
  1036   |  9     (((((■■)(■■))■)(■■)+)■)■fail dot
  1037   |  9     (((((■■)(■■))■)((■|■))+)■)■fail dot
  1038   |  9     (((((■■)(■■))■)((■){■})+)■)■fail dot
  1039   |  9     (((((■■)(■■))■)(■)+)(■■))■fail dot
  1040   |  9     (((((■■)(■■))■)(■)+)(■|■))■fail dot
  1041   |  9     (((((■■)(■■))■)(■)+)(■){■})■fail dot
  1042   |  9     (((((■■)(■■))■)(■)+)■)(■■)fail dot
  1043   |  9     (((((■■)(■■))■)(■)+)■)(■|■)fail dot
  1044   |  9     (((((■■)(■■))■)(■)+)■)(■){■}fail dot
  1045   |  9     (((((■■)(■|■))(■■))(■)+)■)■fail dot
  1046   |  9     (((((■■)(■|■))(■|■))(■)+)■)■fail dot
  1047   |  9     (((((■■)(■|■))(■){■})(■)+)■)■fail dot
  1048   |  9     (((((■■)(■|■))■)(■■)+)■)■fail dot
  1049   |  9     (((((■■)(■|■))■)((■|■))+)■)■fail dot
  1050   |  9     (((((■■)(■|■))■)((■){■})+)■)■fail dot
  1051   |  9     (((((■■)(■|■))■)(■)+)(■■))■fail dot
  1052   |  9     (((((■■)(■|■))■)(■)+)(■|■))■fail dot
  1053   |  9     (((((■■)(■|■))■)(■)+)(■){■})■fail dot
  1054   |  9     (((((■■)(■|■))■)(■)+)■)(■■)fail dot
  1055   |  9     (((((■■)(■|■))■)(■)+)■)(■|■)fail dot
  1056   |  9     (((((■■)(■|■))■)(■)+)■)(■){■}fail dot
  1057   |  9     (((((■■)(■){■})(■■))(■)+)■)■fail dot
  1058   |  9     (((((■■)(■){■})(■|■))(■)+)■)■fail dot
  1059   |  9     (((((■■)(■){■})(■){■})(■)+)■)■fail dot
  1060   |  9     (((((■■)(■){■})■)(■■)+)■)■fail dot
  1061   |  9     (((((■■)(■){■})■)((■|■))+)■)■fail dot
  1062   |  9     (((((■■)(■){■})■)((■){■})+)■)■fail dot
  1063   |  9     (((((■■)(■){■})■)(■)+)(■■))■fail dot
  1064   |  9     (((((■■)(■){■})■)(■)+)(■|■))■fail dot
  1065   |  9     (((((■■)(■){■})■)(■)+)(■){■})■fail dot
  1066   |  9     (((((■■)(■){■})■)(■)+)■)(■■)fail dot
  1067   |  9     (((((■■)(■){■})■)(■)+)■)(■|■)fail dot
  1068   |  9     (((((■■)(■){■})■)(■)+)■)(■){■}fail dot
  1069   |  9     (((((■■)■)(■))(■)+)■)■  fail dot
  1070   |  9     (((((■■)■)((■■)■))(■)+)■)■fail dot
  1071   |  9     (((((■■)■)((■|■)■))(■)+)■)■fail dot
  1072   |  9     (((((■■)■)((■){■}■))(■)+)■)■fail dot
  1073   |  9     (((((■■)■)(■■))(■■)+)■)■fail dot
  1074   |  9     (((((■■)■)(■■))((■|■))+)■)■fail dot
  1075   |  9     (((((■■)■)(■■))((■){■})+)■)■fail dot
  1076   |  9     (((((■■)■)(■■))(■)+)(■■))■fail dot
  1077   |  9     (((((■■)■)(■■))(■)+)(■|■))■fail dot
  1078   |  9     (((((■■)■)(■■))(■)+)(■){■})■fail dot
  1079   |  9     (((((■■)■)(■■))(■)+)■)(■■)fail dot
  1080   |  9     (((((■■)■)(■■))(■)+)■)(■|■)fail dot
  1081   |  9     (((((■■)■)(■■))(■)+)■)(■){■}fail dot
  1082   |  9     (((((■■)■)(■■|■))(■)+)■)■fail dot
  1083   |  9     (((((■■)■)((■|■)|■))(■)+)■)■fail dot
  1084   |  9     (((((■■)■)((■){■}|■))(■)+)■)■fail dot
  1085   |  9     (((((■■)■)(■|■))(■■)+)■)■fail dot
  1086   |  9     (((((■■)■)(■|■))((■|■))+)■)■fail dot
  1087   |  9     (((((■■)■)(■|■))((■){■})+)■)■fail dot
  1088   |  9     (((((■■)■)(■|■))(■)+)(■■))■fail dot
  1089   |  9     (((((■■)■)(■|■))(■)+)(■|■))■fail dot
  1090   |  9     (((((■■)■)(■|■))(■)+)(■){■})■fail dot
  1091   |  9     (((((■■)■)(■|■))(■)+)■)(■■)fail dot
  1092   |  9     (((((■■)■)(■|■))(■)+)■)(■|■)fail dot
  1093   |  9     (((((■■)■)(■|■))(■)+)■)(■){■}fail dot
  1094   |  9     (((((■■)■)(■■){■})(■)+)■)■fail dot
  1095   |  9     (((((■■)■)((■|■)){■})(■)+)■)■fail dot
  1096   |  9     (((((■■)■)((■){■}){■})(■)+)■)■fail dot
  1097   |  9     (((((■■)■)(■){■})(■■)+)■)■fail dot
  1098   |  9     (((((■■)■)(■){■})((■|■))+)■)■fail dot
  1099   |  9     (((((■■)■)(■){■})((■){■})+)■)■fail dot
  1100   |  9     (((((■■)■)(■){■})(■)+)(■■))■fail dot
  1101   |  9     (((((■■)■)(■){■})(■)+)(■|■))■fail dot
  1102   |  9     (((((■■)■)(■){■})(■)+)(■){■})■fail dot
  1103   |  9     (((((■■)■)(■){■})(■)+)■)(■■)fail dot
  1104   |  9     (((((■■)■)(■){■})(■)+)■)(■|■)fail dot
  1105   |  9     (((((■■)■)(■){■})(■)+)■)(■){■}fail dot
  1106   |  9     (((((■■)■)■)((■■)■)+)■)■fail dot
  1107   |  9     (((((■■)■)■)((■|■)■)+)■)■fail dot
  1108   |  9     (((((■■)■)■)((■){■}■)+)■)■fail dot
  1109   |  9     (((((■■)■)■)(■(■■))+)■)■fail dot
  1110   |  9     (((((■■)■)■)(■(■|■))+)■)■fail dot
  1111   |  9     (((((■■)■)■)(■(■){■})+)■)■fail dot
  1112   |  9     (((((■■)■)■)(■■)+)(■■))■fail dot
  1113   |  9     (((((■■)■)■)(■■)+)(■|■))■fail dot
  1114   |  9     (((((■■)■)■)(■■)+)(■){■})■fail dot
  1115   |  9     (((((■■)■)■)(■■)+)■)(■■)fail dot
  1116   |  9     (((((■■)■)■)(■■)+)■)(■|■)fail dot
  1117   |  9     (((((■■)■)■)(■■)+)■)(■){■}fail dot
  1118   |  9     (((((■■)■)■)((■■|■))+)■)■fail dot
  1119   |  9     (((((■■)■)■)(((■|■)|■))+)■)■fail dot
  1120   |  9     (((((■■)■)■)(((■){■}|■))+)■)■fail dot
  1121   |  9     (((((■■)■)■)((■|■■))+)■)■fail dot
  1122   |  9     (((((■■)■)■)((■|(■|■)))+)■)■fail dot
  1123   |  9     (((((■■)■)■)((■|(■){■}))+)■)■fail dot
  1124   |  9     (((((■■)■)■)((■|■))+)(■■))■fail dot
  1125   |  9     (((((■■)■)■)((■|■))+)(■|■))■fail dot
  1126   |  9     (((((■■)■)■)((■|■))+)(■){■})■fail dot
  1127   |  9     (((((■■)■)■)((■|■))+)■)(■■)fail dot
  1128   |  9     (((((■■)■)■)((■|■))+)■)(■|■)fail dot
  1129   |  9     (((((■■)■)■)((■|■))+)■)(■){■}fail dot
  1130   |  9     (((((■■)■)■)((■■){■})+)■)■fail dot
  1131   |  9     (((((■■)■)■)(((■|■)){■})+)■)■fail dot
  1132   |  9     (((((■■)■)■)(((■){■}){■})+)■)■fail dot
  1133   |  9     (((((■■)■)■)((■){■})+)(■■))■fail dot
  1134   |  9     (((((■■)■)■)((■){■})+)(■|■))■fail dot
  1135   |  9     (((((■■)■)■)((■){■})+)(■){■})■fail dot
  1136   |  9     (((((■■)■)■)((■){■})+)■)(■■)fail dot
  1137   |  9     (((((■■)■)■)((■){■})+)■)(■|■)fail dot
  1138   |  9     (((((■■)■)■)((■){■})+)■)(■){■}fail dot
  1139   |  9     (((((■■)■)■)(■)+)(■))■  fail dot
  1140   |  9     (((((■■)■)■)(■)+)((■■)■))■fail dot
  1141   |  9     (((((■■)■)■)(■)+)((■|■)■))■fail dot
  1142   |  9     (((((■■)■)■)(■)+)((■){■}■))■fail dot
  1143   |  9     (((((■■)■)■)(■)+)(■■))(■■)fail dot
  1144   |  9     (((((■■)■)■)(■)+)(■■))(■|■)fail dot
  1145   |  9     (((((■■)■)■)(■)+)(■■))(■){■}fail dot
  1146   |  9     (((((■■)■)■)(■)+)(■■|■))■fail dot
  1147   |  9     (((((■■)■)■)(■)+)((■|■)|■))■fail dot
  1148   |  9     (((((■■)■)■)(■)+)((■){■}|■))■fail dot
  1149   |  9     (((((■■)■)■)(■)+)(■|■))(■■)fail dot
  1150   |  9     (((((■■)■)■)(■)+)(■|■))(■|■)fail dot
  1151   |  9     (((((■■)■)■)(■)+)(■|■))(■){■}fail dot
  1152   |  9     (((((■■)■)■)(■)+)(■■){■})■fail dot
  1153   |  9     (((((■■)■)■)(■)+)((■|■)){■})■fail dot
  1154   |  9     (((((■■)■)■)(■)+)((■){■}){■})■fail dot
  1155   |  9     (((((■■)■)■)(■)+)(■){■})(■■)fail dot
  1156   |  9     (((((■■)■)■)(■)+)(■){■})(■|■)fail dot
  1157   |  9     (((((■■)■)■)(■)+)(■){■})(■){■}fail dot
  1158   |  9     (((((■■)■)■)(■)+)■)(■)  fail dot
  1159   |  9     (((((■■)■)■)(■)+)■)((■■)■)fail dot
  1160   |  9     (((((■■)■)■)(■)+)■)((■|■)■)fail dot
  1161   |  9     (((((■■)■)■)(■)+)■)((■){■}■)fail dot
  1162   |  9     (((((■■)■)■)(■)+)■)(■■|■)fail dot
  1163   |  9     (((((■■)■)■)(■)+)■)((■|■)|■)fail dot
  1164   |  9     (((((■■)■)■)(■)+)■)((■){■}|■)fail dot
  1165   |  9     (((((■■)■)■)(■)+)■)(■■){■}fail dot
  1166   |  9     (((((■■)■)■)(■)+)■)((■|■)){■}fail dot
  1167   |  9     (((((■■)■)■)(■)+)■)((■){■}){■}fail dot
  1168   |  9     ((((■)■)(■)+)■)1        fail dotstar or empty
  1169   |  9     ((((■)■)(■)+)1)■        fail dotstar or empty
  1170   |  9     (((■■)(■)+)1)1          fail dotstar or empty
  1171   |  9     ((((■■)■)(E){■})■)■     fail dot
  1172   |  9     (((((■)■)■)■)■)■        fail dot
  1173   |  9     ((((((■■))■)■)(E){■})■)■fail dot
  1174   |  9     ((((((■|■))■)■)(E){■})■)■fail dot
  1175   |  9     ((((((■){■})■)■)(E){■})■)■fail dot
  1176   |  9     (((((■)■)(■■))(E){■})■)■fail dot
  1177   |  9     (((((■)■)(■|■))(E){■})■)■fail dot
  1178   |  9     (((((■)■)(■){■})(E){■})■)■fail dot
  1179   |  9     (((((■)■)■)(E){■})(■■))■fail dot
  1180   |  9     (((((■)■)■)(E){■})(■|■))■fail dot
  1181   |  9     (((((■)■)■)(E){■})(■){■})■fail dot
  1182   |  9     (((((■)■)■)(E){■})■)(■■)fail dot
  1183   |  9     (((((■)■)■)(E){■})■)(■|■)fail dot
  1184   |  9     (((((■)■)■)(E){■})■)(■){■}fail dot
  1185   |  9     ((((((■■)■)■)■)■)■)■    fail dot
  1186   |  9     ((((((■|■)■)■)■)■)■)■   fail dot
  1187   |  9     ((((((■){■}■)■)■)■)■)■  fail dot
  1188   |  9     (((((■■)(■■))■)■)■)■    fail dot
  1189   |  9     (((((■■)(■|■))■)■)■)■   fail dot
  1190   |  9     (((((■■)(■){■})■)■)■)■  fail dot
  1191   |  9     (((((■■)■)(■■))■)■)■    fail dot
  1192   |  9     (((((■■)■)(■|■))■)■)■   fail dot
  1193   |  9     (((((■■)■)(■){■})■)■)■  fail dot
  1194   |  9     (((((■■)■)■)(■■))■)■    fail dot
  1195   |  9     (((((■■)■)■)(■|■))■)■   fail dot
  1196   |  9     (((((■■)■)■)■)(■■))■    fail dot
  1197   |  9     (((((■■)■)■)■)(■|■))■   fail dot
  1198   |  9     (((((■■)■)■)■)(■){■})■  fail dot
  1199   |  9     (((((■■)■)■)■)■)(■■)    fail dot
  1200   |  9     (((((■■)■)■)■)■)(■|■)   fail dot
  1201   |  9     (((((■■)■)■)■)■)(■){■}  fail dot
  1202   |  9     ((((((■)■)■)■)(E){■})■)■fail dot
  1203   |  9     (((((((■■)■)■)■)■)(E){■})■)■fail dot
  1204   |  9     (((((((■|■)■)■)■)■)(E){■})■)■fail dot
  1205   |  9     (((((((■){■}■)■)■)■)(E){■})■)■fail dot
  1206   |  9     ((((((■■)(■■))■)■)(E){■})■)■fail dot
  1207   |  9     ((((((■■)(■|■))■)■)(E){■})■)■fail dot
  1208   |  9     ((((((■■)(■){■})■)■)(E){■})■)■fail dot
  1209   |  9     ((((((■■)■)(■■))■)(E){■})■)■fail dot
  1210   |  9     ((((((■■)■)(■|■))■)(E){■})■)■fail dot
  1211   |  9     ((((((■■)■)(■){■})■)(E){■})■)■fail dot
  1212   |  9     ((((((■■)■)■)(■■))(E){■})■)■fail dot
  1213   |  9     ((((((■■)■)■)(■|■))(E){■})■)■fail dot
  1214   |  9     ((((((■■)■)■)(■){■})(E){■})■)■fail dot
  1215   |  9     ((((((■■)■)■)■)(E){■})(■■))■fail dot
  1216   |  9     ((((((■■)■)■)■)(E){■})(■|■))■fail dot
  1217   |  9     ((((((■■)■)■)■)(E){■})(■){■})■fail dot
  1218   |  9     ((((((■■)■)■)■)(E){■})■)(■■)fail dot
  1219   |  9     ((((((■■)■)■)■)(E){■})■)(■|■)fail dot
  1220   |  9     ((((((■■)■)■)■)(E){■})■)(■){■}fail dot
  1221   |  9     ((((((■■|■)■)■)■)(E){■})■)■fail dot
  1222   |  9     (((((((■|■)|■)■)■)■)(E){■})■)■fail dot
  1223   |  9     (((((((■){■}|■)■)■)■)(E){■})■)■fail dot
  1224   |  9     ((((((■|■)(■■))■)■)(E){■})■)■fail dot
  1225   |  9     ((((((■|■)(■|■))■)■)(E){■})■)■fail dot
  1226   |  9     ((((((■|■)(■){■})■)■)(E){■})■)■fail dot
  1227   |  9     ((((((■|■)■)(■■))■)(E){■})■)■fail dot
  1228   |  9     ((((((■|■)■)(■|■))■)(E){■})■)■fail dot
  1229   |  9     ((((((■|■)■)(■){■})■)(E){■})■)■fail dot
  1230   |  9     ((((((■|■)■)■)(■■))(E){■})■)■fail dot
  1231   |  9     ((((((■|■)■)■)(■|■))(E){■})■)■fail dot
  1232   |  9     ((((((■|■)■)■)(■){■})(E){■})■)■fail dot
  1233   |  9     ((((((■|■)■)■)■)(E){■})(■■))■fail dot
  1234   |  9     ((((((■|■)■)■)■)(E){■})(■|■))■fail dot
  1235   |  9     ((((((■|■)■)■)■)(E){■})(■){■})■fail dot
  1236   |  9     ((((((■|■)■)■)■)(E){■})■)(■■)fail dot
  1237   |  9     ((((((■|■)■)■)■)(E){■})■)(■|■)fail dot
  1238   |  9     ((((((■|■)■)■)■)(E){■})■)(■){■}fail dot
  1239   |  9     ((((((■■){■}■)■)■)(E){■})■)■fail dot
  1240   |  9     (((((((■|■)){■}■)■)■)(E){■})■)■fail dot
  1241   |  9     (((((((■){■}){■}■)■)■)(E){■})■)■fail dot
  1242   |  9     ((((((■){■}(■■))■)■)(E){■})■)■fail dot
  1243   |  9     ((((((■){■}(■|■))■)■)(E){■})■)■fail dot
  1244   |  9     ((((((■){■}(■){■})■)■)(E){■})■)■fail dot
  1245   |  9     ((((((■){■}■)(■■))■)(E){■})■)■fail dot
  1246   |  9     ((((((■){■}■)(■|■))■)(E){■})■)■fail dot
  1247   |  9     ((((((■){■}■)(■){■})■)(E){■})■)■fail dot
  1248   |  9     ((((((■){■}■)■)(■■))(E){■})■)■fail dot
  1249   |  9     ((((((■){■}■)■)(■|■))(E){■})■)■fail dot
  1250   |  9     ((((((■){■}■)■)(■){■})(E){■})■)■fail dot
  1251   |  9     ((((((■){■}■)■)■)(E){■})(■■))■fail dot
  1252   |  9     ((((((■){■}■)■)■)(E){■})(■|■))■fail dot
  1253   |  9     ((((((■){■}■)■)■)(E){■})(■){■})■fail dot
  1254   |  9     ((((((■){■}■)■)■)(E){■})■)(■■)fail dot
  1255   |  9     ((((((■){■}■)■)■)(E){■})■)(■|■)fail dot
  1256   |  9     ((((((■){■}■)■)■)(E){■})■)(■){■}fail dot
  1257   |  9     (((((■■)(■))■)(E){■})■)■fail dot
  1258   |  9     (((((■■)(■■))(■■))(E){■})■)■fail dot
  1259   |  9     (((((■■)(■■))(■|■))(E){■})■)■fail dot
  1260   |  9     (((((■■)(■■))(■){■})(E){■})■)■fail dot
  1261   |  9     (((((■■)(■■))■)(E){■})(■■))■fail dot
  1262   |  9     (((((■■)(■■))■)(E){■})(■|■))■fail dot
  1263   |  9     (((((■■)(■■))■)(E){■})(■){■})■fail dot
  1264   |  9     (((((■■)(■■))■)(E){■})■)(■■)fail dot
  1265   |  9     (((((■■)(■■))■)(E){■})■)(■|■)fail dot
  1266   |  9     (((((■■)(■■))■)(E){■})■)(■){■}fail dot
  1267   |  9     (((((■■)(■|■))(■■))(E){■})■)■fail dot
  1268   |  9     (((((■■)(■|■))(■|■))(E){■})■)■fail dot
  1269   |  9     (((((■■)(■|■))(■){■})(E){■})■)■fail dot
  1270   |  9     (((((■■)(■|■))■)(E){■})(■■))■fail dot
  1271   |  9     (((((■■)(■|■))■)(E){■})(■|■))■fail dot
  1272   |  9     (((((■■)(■|■))■)(E){■})(■){■})■fail dot
  1273   |  9     (((((■■)(■|■))■)(E){■})■)(■■)fail dot
  1274   |  9     (((((■■)(■|■))■)(E){■})■)(■|■)fail dot
  1275   |  9     (((((■■)(■|■))■)(E){■})■)(■){■}fail dot
  1276   |  9     (((((■■)(■){■})(■■))(E){■})■)■fail dot
  1277   |  9     (((((■■)(■){■})(■|■))(E){■})■)■fail dot
  1278   |  9     (((((■■)(■){■})(■){■})(E){■})■)■fail dot
  1279   |  9     (((((■■)(■){■})■)(E){■})(■■))■fail dot
  1280   |  9     (((((■■)(■){■})■)(E){■})(■|■))■fail dot
  1281   |  9     (((((■■)(■){■})■)(E){■})(■){■})■fail dot
  1282   |  9     (((((■■)(■){■})■)(E){■})■)(■■)fail dot
  1283   |  9     (((((■■)(■){■})■)(E){■})■)(■|■)fail dot
  1284   |  9     (((((■■)(■){■})■)(E){■})■)(■){■}fail dot
  1285   |  9     (((((■■)■)(■))(E){■})■)■fail dot
  1286   |  9     (((((■■)■)((■■)■))(E){■})■)■fail dot
  1287   |  9     (((((■■)■)((■|■)■))(E){■})■)■fail dot
  1288   |  9     (((((■■)■)((■){■}■))(E){■})■)■fail dot
  1289   |  9     (((((■■)■)(■■))(E){■})(■■))■fail dot
  1290   |  9     (((((■■)■)(■■))(E){■})(■|■))■fail dot
  1291   |  9     (((((■■)■)(■■))(E){■})(■){■})■fail dot
  1292   |  9     (((((■■)■)(■■))(E){■})■)(■■)fail dot
  1293   |  9     (((((■■)■)(■■))(E){■})■)(■|■)fail dot
  1294   |  9     (((((■■)■)(■■))(E){■})■)(■){■}fail dot
  1295   |  9     (((((■■)■)(■■|■))(E){■})■)■fail dot
  1296   |  9     (((((■■)■)((■|■)|■))(E){■})■)■fail dot
  1297   |  9     (((((■■)■)((■){■}|■))(E){■})■)■fail dot
  1298   |  9     (((((■■)■)(■|■))(E){■})(■■))■fail dot
  1299   |  9     (((((■■)■)(■|■))(E){■})(■|■))■fail dot
  1300   |  9     (((((■■)■)(■|■))(E){■})(■){■})■fail dot
  1301   |  9     (((((■■)■)(■|■))(E){■})■)(■■)fail dot
  1302   |  9     (((((■■)■)(■|■))(E){■})■)(■|■)fail dot
  1303   |  9     (((((■■)■)(■|■))(E){■})■)(■){■}fail dot
  1304   |  9     (((((■■)■)(■■){■})(E){■})■)■fail dot
  1305   |  9     (((((■■)■)((■|■)){■})(E){■})■)■fail dot
  1306   |  9     (((((■■)■)((■){■}){■})(E){■})■)■fail dot
  1307   |  9     (((((■■)■)(■){■})(E){■})(■■))■fail dot
  1308   |  9     (((((■■)■)(■){■})(E){■})(■|■))■fail dot
  1309   |  9     (((((■■)■)(■){■})(E){■})(■){■})■fail dot
  1310   |  9     (((((■■)■)(■){■})(E){■})■)(■■)fail dot
  1311   |  9     (((((■■)■)(■){■})(E){■})■)(■|■)fail dot
  1312   |  9     (((((■■)■)(■){■})(E){■})■)(■){■}fail dot
  1313   |  9     (((((■■)■)■)(E){■})(■))■fail dot
  1314   |  9     (((((■■)■)■)(E){■})((■■)■))■fail dot
  1315   |  9     (((((■■)■)■)(E){■})((■|■)■))■fail dot
  1316   |  9     (((((■■)■)■)(E){■})((■){■}■))■fail dot
  1317   |  9     (((((■■)■)■)(E){■})(■■))(■■)fail dot
  1318   |  9     (((((■■)■)■)(E){■})(■■))(■|■)fail dot
  1319   |  9     (((((■■)■)■)(E){■})(■■))(■){■}fail dot
  1320   |  9     (((((■■)■)■)(E){■})(■■|■))■fail dot
  1321   |  9     (((((■■)■)■)(E){■})((■|■)|■))■fail dot
  1322   |  9     (((((■■)■)■)(E){■})((■){■}|■))■fail dot
  1323   |  9     (((((■■)■)■)(E){■})(■|■))(■■)fail dot
  1324   |  9     (((((■■)■)■)(E){■})(■|■))(■|■)fail dot
  1325   |  9     (((((■■)■)■)(E){■})(■|■))(■){■}fail dot
  1326   |  9     (((((■■)■)■)(E){■})(■■){■})■fail dot
  1327   |  9     (((((■■)■)■)(E){■})((■|■)){■})■fail dot
  1328   |  9     (((((■■)■)■)(E){■})((■){■}){■})■fail dot
  1329   |  9     (((((■■)■)■)(E){■})(■){■})(■■)fail dot
  1330   |  9     (((((■■)■)■)(E){■})(■){■})(■|■)fail dot
  1331   |  9     (((((■■)■)■)(E){■})(■){■})(■){■}fail dot
  1332   |  9     (((((■■)■)■)(E){■})■)(■)fail dot
  1333   |  9     (((((■■)■)■)(E){■})■)((■■)■)fail dot
  1334   |  9     (((((■■)■)■)(E){■})■)((■|■)■)fail dot
  1335   |  9     (((((■■)■)■)(E){■})■)((■){■}■)fail dot
  1336   |  9     (((((■■)■)■)(E){■})■)(■■|■)fail dot
  1337   |  9     (((((■■)■)■)(E){■})■)((■|■)|■)fail dot
  1338   |  9     (((((■■)■)■)(E){■})■)((■){■}|■)fail dot
  1339   |  9     (((((■■)■)■)(E){■})■)(■■){■}fail dot
  1340   |  9     (((((■■)■)■)(E){■})■)((■|■)){■}fail dot
  1341   |  9     (((((■■)■)■)(E){■})■)((■){■}){■}fail dot
  1342   |  9     ((((■)■)(E){■})■)1      fail dotstar or empty
  1343   |  9     ((((■■)■)■)■)1          fail dotstar or empty
  1344   |  9     ((((■)■)(E){■})1)■      fail dotstar or empty
  1345   |  9     ((((■■)■)■)1)■          fail dotstar or empty
  1346   |  9     (((■■)(E){■})1)1        fail dotstar or empty
  1347   |  9     ((((■)■)■)1)1           fail dotstar or empty
  1348   |  9     ((((■)■)(E)+)■)■        fail dotstar or empty
  1349   |  9     (((■■)(E)+)■)1          fail dotstar or empty
  1350   |  9     (((■■)(E)+)1)■          fail dotstar or empty
  1351   |  9     (((■)(E)+)1)1           fail dotstar or empty
  1352   |  9     ((((■■)5)(■){■})■)■     fail dotstar or empty
  1353   |  9     ((((■)5)(■){■})■)1      fail dotstar or empty
  1354   |  9     ((((■)5)(■){■})1)■      fail dotstar or empty
  1355   |  9     (((■5)(■){■})1)1        fail dotstar or empty
  1356   |  9     ((((■)5)(■)+)■)■        fail dotstar or empty
  1357   |  9     (((■5)(■)+)■)1          fail dotstar or empty
  1358   |  9     (((■5)(■)+)1)■          fail dotstar or empty
  1359   |  9     ((((■)5)(E){■})■)■      fail dotstar or empty
  1360   |  9     ((((■■)5)■)■)■          fail dotstar or empty
  1361   |  9     (((■5)(E){■})■)1        fail dotstar or empty
  1362   |  9     ((((■)5)■)■)1           fail dotstar or empty
  1363   |  9     (((■5)(E){■})1)■        fail dotstar or empty
  1364   |  9     ((((■)5)■)1)■           fail dotstar or empty
  1365   |  9     (((■5)■)1)1             fail dotstar or empty
  1366   |  9     (((■5)(E)+)■)■          fail dotstar or empty
  1367   |  9     ((((■4)■)(■){■})■)■     fail dotstar or empty
  1368   |  9     ((((■4)■)■)■)■          fail dotstar or empty
  1369   |  9     ((((((■).)■)■)(■){■})■)■fail dot
  1370   |  9     (((((((■■)■).)■)■)(■){■})■)■fail dot
  1371   |  9     (((((((■|■)■).)■)■)(■){■})■)■fail dot
  1372   |  9     (((((((■){■}■).)■)■)(■){■})■)■fail dot
  1373   |  9     ((((((■■).)(■■))■)(■){■})■)■fail dot
  1374   |  9     ((((((■■).)(■|■))■)(■){■})■)■fail dot
  1375   |  9     ((((((■■).)(■){■})■)(■){■})■)■fail dot
  1376   |  9     ((((((■■).)■)(■■))(■){■})■)■fail dot
  1377   |  9     ((((((■■).)■)(■|■))(■){■})■)■fail dot
  1378   |  9     ((((((■■).)■)(■){■})(■){■})■)■fail dot
  1379   |  9     ((((((■■).)■)■)(■■){■})■)■fail dot
  1380   |  9     ((((((■■).)■)■)((■|■)){■})■)■fail dot
  1381   |  9     ((((((■■).)■)■)((■){■}){■})■)■fail dot
  1382   |  9     ((((((■■).)■)■)(■){■})(■■))■fail dot
  1383   |  9     ((((((■■).)■)■)(■){■})(■|■))■fail dot
  1384   |  9     ((((((■■).)■)■)(■){■})(■){■})■fail dot
  1385   |  9     ((((((■■).)■)■)(■){■})■)(■■)fail dot
  1386   |  9     ((((((■■).)■)■)(■){■})■)(■|■)fail dot
  1387   |  9     ((((((■■).)■)■)(■){■})■)(■){■}fail dot
  1388   |  9     ((((((■■|■).)■)■)(■){■})■)■fail dot
  1389   |  9     (((((((■|■)|■).)■)■)(■){■})■)■fail dot
  1390   |  9     (((((((■){■}|■).)■)■)(■){■})■)■fail dot
  1391   |  9     ((((((■|■).)(■■))■)(■){■})■)■fail dot
  1392   |  9     ((((((■|■).)(■|■))■)(■){■})■)■fail dot
  1393   |  9     ((((((■|■).)(■){■})■)(■){■})■)■fail dot
  1394   |  9     ((((((■|■).)■)(■■))(■){■})■)■fail dot
  1395   |  9     ((((((■|■).)■)(■|■))(■){■})■)■fail dot
  1396   |  9     ((((((■|■).)■)(■){■})(■){■})■)■fail dot
  1397   |  9     ((((((■|■).)■)■)(■■){■})■)■fail dot
  1398   |  9     ((((((■|■).)■)■)((■|■)){■})■)■fail dot
  1399   |  9     ((((((■|■).)■)■)((■){■}){■})■)■fail dot
  1400   |  9     ((((((■|■).)■)■)(■){■})(■■))■fail dot
  1401   |  9     ((((((■|■).)■)■)(■){■})(■|■))■fail dot
  1402   |  9     ((((((■|■).)■)■)(■){■})(■){■})■fail dot
  1403   |  9     ((((((■|■).)■)■)(■){■})■)(■■)fail dot
  1404   |  9     ((((((■|■).)■)■)(■){■})■)(■|■)fail dot
  1405   |  9     ((((((■|■).)■)■)(■){■})■)(■){■}fail dot
  1406   |  9     ((((((■■){■}.)■)■)(■){■})■)■fail dot
  1407   |  9     (((((((■|■)){■}.)■)■)(■){■})■)■fail dot
  1408   |  9     (((((((■){■}){■}.)■)■)(■){■})■)■fail dot
  1409   |  9     ((((((■){■}.)(■■))■)(■){■})■)■fail dot
  1410   |  9     ((((((■){■}.)(■|■))■)(■){■})■)■fail dot
  1411   |  9     ((((((■){■}.)(■){■})■)(■){■})■)■fail dot
  1412   |  9     ((((((■){■}.)■)(■■))(■){■})■)■fail dot
  1413   |  9     ((((((■){■}.)■)(■|■))(■){■})■)■fail dot
  1414   |  9     ((((((■){■}.)■)(■){■})(■){■})■)■fail dot
  1415   |  9     ((((((■){■}.)■)■)(■■){■})■)■fail dot
  1416   |  9     ((((((■){■}.)■)■)((■|■)){■})■)■fail dot
  1417   |  9     ((((((■){■}.)■)■)((■){■}){■})■)■fail dot
  1418   |  9     ((((((■){■}.)■)■)(■){■})(■■))■fail dot
  1419   |  9     ((((((■){■}.)■)■)(■){■})(■|■))■fail dot
  1420   |  9     ((((((■){■}.)■)■)(■){■})(■){■})■fail dot
  1421   |  9     ((((((■){■}.)■)■)(■){■})■)(■■)fail dot
  1422   |  9     ((((((■){■}.)■)■)(■){■})■)(■|■)fail dot
  1423   |  9     ((((((■){■}.)■)■)(■){■})■)(■){■}fail dot
  1424   |  9     (((((■.)(■))■)(■){■})■)■fail dot
  1425   |  9     (((((■.)((■■)■))■)(■){■})■)■fail dot
  1426   |  9     (((((■.)((■|■)■))■)(■){■})■)■fail dot
  1427   |  9     (((((■.)((■){■}■))■)(■){■})■)■fail dot
  1428   |  9     (((((■.)(■■))(■■))(■){■})■)■fail dot
  1429   |  9     (((((■.)(■■))(■|■))(■){■})■)■fail dot
  1430   |  9     (((((■.)(■■))(■){■})(■){■})■)■fail dot
  1431   |  9     (((((■.)(■■))■)(■■){■})■)■fail dot
  1432   |  9     (((((■.)(■■))■)((■|■)){■})■)■fail dot
  1433   |  9     (((((■.)(■■))■)((■){■}){■})■)■fail dot
  1434   |  9     (((((■.)(■■))■)(■){■})(■■))■fail dot
  1435   |  9     (((((■.)(■■))■)(■){■})(■|■))■fail dot
  1436   |  9     (((((■.)(■■))■)(■){■})(■){■})■fail dot
  1437   |  9     (((((■.)(■■))■)(■){■})■)(■■)fail dot
  1438   |  9     (((((■.)(■■))■)(■){■})■)(■|■)fail dot
  1439   |  9     (((((■.)(■■))■)(■){■})■)(■){■}fail dot
  1440   |  9     (((((■.)(■■|■))■)(■){■})■)■fail dot
  1441   |  9     (((((■.)((■|■)|■))■)(■){■})■)■fail dot
  1442   |  9     (((((■.)((■){■}|■))■)(■){■})■)■fail dot
  1443   |  9     (((((■.)(■|■))(■■))(■){■})■)■fail dot
  1444   |  9     (((((■.)(■|■))(■|■))(■){■})■)■fail dot
  1445   |  9     (((((■.)(■|■))(■){■})(■){■})■)■fail dot
  1446   |  9     (((((■.)(■|■))■)(■■){■})■)■fail dot
  1447   |  9     (((((■.)(■|■))■)((■|■)){■})■)■fail dot
  1448   |  9     (((((■.)(■|■))■)((■){■}){■})■)■fail dot
  1449   |  9     (((((■.)(■|■))■)(■){■})(■■))■fail dot
  1450   |  9     (((((■.)(■|■))■)(■){■})(■|■))■fail dot
  1451   |  9     (((((■.)(■|■))■)(■){■})(■){■})■fail dot
  1452   |  9     (((((■.)(■|■))■)(■){■})■)(■■)fail dot
  1453   |  9     (((((■.)(■|■))■)(■){■})■)(■|■)fail dot
  1454   |  9     (((((■.)(■|■))■)(■){■})■)(■){■}fail dot
  1455   |  9     (((((■.)(■■){■})■)(■){■})■)■fail dot
  1456   |  9     (((((■.)((■|■)){■})■)(■){■})■)■fail dot
  1457   |  9     (((((■.)((■){■}){■})■)(■){■})■)■fail dot
  1458   |  9     (((((■.)(■){■})(■■))(■){■})■)■fail dot
  1459   |  9     (((((■.)(■){■})(■|■))(■){■})■)■fail dot
  1460   |  9     (((((■.)(■){■})(■){■})(■){■})■)■fail dot
  1461   |  9     (((((■.)(■){■})■)(■■){■})■)■fail dot
  1462   |  9     (((((■.)(■){■})■)((■|■)){■})■)■fail dot
  1463   |  9     (((((■.)(■){■})■)((■){■}){■})■)■fail dot
  1464   |  9     (((((■.)(■){■})■)(■){■})(■■))■fail dot
  1465   |  9     (((((■.)(■){■})■)(■){■})(■|■))■fail dot
  1466   |  9     (((((■.)(■){■})■)(■){■})(■){■})■fail dot
  1467   |  9     (((((■.)(■){■})■)(■){■})■)(■■)fail dot
  1468   |  9     (((((■.)(■){■})■)(■){■})■)(■|■)fail dot
  1469   |  9     (((((■.)(■){■})■)(■){■})■)(■){■}fail dot
  1470   |  9     (((((■.)■)(■))(■){■})■)■fail dot
  1471   |  9     (((((■.)■)((■■)■))(■){■})■)■fail dot
  1472   |  9     (((((■.)■)((■|■)■))(■){■})■)■fail dot
  1473   |  9     (((((■.)■)((■){■}■))(■){■})■)■fail dot
  1474   |  9     (((((■.)■)(■■))(■■){■})■)■fail dot
  1475   |  9     (((((■.)■)(■■))((■|■)){■})■)■fail dot
  1476   |  9     (((((■.)■)(■■))((■){■}){■})■)■fail dot
  1477   |  9     (((((■.)■)(■■))(■){■})(■■))■fail dot
  1478   |  9     (((((■.)■)(■■))(■){■})(■|■))■fail dot
  1479   |  9     (((((■.)■)(■■))(■){■})(■){■})■fail dot
  1480   |  9     (((((■.)■)(■■))(■){■})■)(■■)fail dot
  1481   |  9     (((((■.)■)(■■))(■){■})■)(■|■)fail dot
  1482   |  9     (((((■.)■)(■■))(■){■})■)(■){■}fail dot
  1483   |  9     (((((■.)■)(■■|■))(■){■})■)■fail dot
  1484   |  9     (((((■.)■)((■|■)|■))(■){■})■)■fail dot
  1485   |  9     (((((■.)■)((■){■}|■))(■){■})■)■fail dot
  1486   |  9     (((((■.)■)(■|■))(■■){■})■)■fail dot
  1487   |  9     (((((■.)■)(■|■))((■|■)){■})■)■fail dot
  1488   |  9     (((((■.)■)(■|■))((■){■}){■})■)■fail dot
  1489   |  9     (((((■.)■)(■|■))(■){■})(■■))■fail dot
  1490   |  9     (((((■.)■)(■|■))(■){■})(■|■))■fail dot
  1491   |  9     (((((■.)■)(■|■))(■){■})(■){■})■fail dot
  1492   |  9     (((((■.)■)(■|■))(■){■})■)(■■)fail dot
  1493   |  9     (((((■.)■)(■|■))(■){■})■)(■|■)fail dot
  1494   |  9     (((((■.)■)(■|■))(■){■})■)(■){■}fail dot
  1495   |  9     (((((■.)■)(■■){■})(■){■})■)■fail dot
  1496   |  9     (((((■.)■)((■|■)){■})(■){■})■)■fail dot
  1497   |  9     (((((■.)■)((■){■}){■})(■){■})■)■fail dot
  1498   |  9     (((((■.)■)(■){■})(■■){■})■)■fail dot
  1499   |  9     (((((■.)■)(■){■})((■|■)){■})■)■fail dot
  1500   |  9     (((((■.)■)(■){■})((■){■}){■})■)■fail dot
  1501   |  9     (((((■.)■)(■){■})(■){■})(■■))■fail dot
  1502   |  9     (((((■.)■)(■){■})(■){■})(■|■))■fail dot
  1503   |  9     (((((■.)■)(■){■})(■){■})(■){■})■fail dot
  1504   |  9     (((((■.)■)(■){■})(■){■})■)(■■)fail dot
  1505   |  9     (((((■.)■)(■){■})(■){■})■)(■|■)fail dot
  1506   |  9     (((((■.)■)(■){■})(■){■})■)(■){■}fail dot
  1507   |  9     (((((■.)■)■)((■■)■){■})■)■fail dot
  1508   |  9     (((((■.)■)■)((■|■)■){■})■)■fail dot
  1509   |  9     (((((■.)■)■)((■){■}■){■})■)■fail dot
  1510   |  9     (((((■.)■)■)(■■){■})(■■))■fail dot
  1511   |  9     (((((■.)■)■)(■■){■})(■|■))■fail dot
  1512   |  9     (((((■.)■)■)(■■){■})(■){■})■fail dot
  1513   |  9     (((((■.)■)■)(■■){■})■)(■■)fail dot
  1514   |  9     (((((■.)■)■)(■■){■})■)(■|■)fail dot
  1515   |  9     (((((■.)■)■)(■■){■})■)(■){■}fail dot
  1516   |  9     (((((■.)■)■)((■■|■)){■})■)■fail dot
  1517   |  9     (((((■.)■)■)(((■|■)|■)){■})■)■fail dot
  1518   |  9     (((((■.)■)■)(((■){■}|■)){■})■)■fail dot
  1519   |  9     (((((■.)■)■)((■|■)){■})(■■))■fail dot
  1520   |  9     (((((■.)■)■)((■|■)){■})(■|■))■fail dot
  1521   |  9     (((((■.)■)■)((■|■)){■})(■){■})■fail dot
  1522   |  9     (((((■.)■)■)((■|■)){■})■)(■■)fail dot
  1523   |  9     (((((■.)■)■)((■|■)){■})■)(■|■)fail dot
  1524   |  9     (((((■.)■)■)((■|■)){■})■)(■){■}fail dot
  1525   |  9     (((((■.)■)■)((■■){■}){■})■)■fail dot
  1526   |  9     (((((■.)■)■)(((■|■)){■}){■})■)■fail dot
  1527   |  9     (((((■.)■)■)(((■){■}){■}){■})■)■fail dot
  1528   |  9     (((((■.)■)■)((■){■}){■})(■■))■fail dot
  1529   |  9     (((((■.)■)■)((■){■}){■})(■|■))■fail dot
  1530   |  9     (((((■.)■)■)((■){■}){■})(■){■})■fail dot
  1531   |  9     (((((■.)■)■)((■){■}){■})■)(■■)fail dot
  1532   |  9     (((((■.)■)■)((■){■}){■})■)(■|■)fail dot
  1533   |  9     (((((■.)■)■)((■){■}){■})■)(■){■}fail dot
  1534   |  9     (((((■.)■)■)(■){■})(■))■fail dot
  1535   |  9     (((((■.)■)■)(■){■})((■■)■))■fail dot
  1536   |  9     (((((■.)■)■)(■){■})((■|■)■))■fail dot
  1537   |  9     (((((■.)■)■)(■){■})((■){■}■))■fail dot
  1538   |  9     (((((■.)■)■)(■){■})(■■))(■■)fail dot
  1539   |  9     (((((■.)■)■)(■){■})(■■))(■|■)fail dot
  1540   |  9     (((((■.)■)■)(■){■})(■■))(■){■}fail dot
  1541   |  9     (((((■.)■)■)(■){■})(■■|■))■fail dot
  1542   |  9     (((((■.)■)■)(■){■})((■|■)|■))■fail dot
  1543   |  9     (((((■.)■)■)(■){■})((■){■}|■))■fail dot
  1544   |  9     (((((■.)■)■)(■){■})(■|■))(■■)fail dot
  1545   |  9     (((((■.)■)■)(■){■})(■|■))(■|■)fail dot
  1546   |  9     (((((■.)■)■)(■){■})(■|■))(■){■}fail dot
  1547   |  9     (((((■.)■)■)(■){■})(■■){■})■fail dot
  1548   |  9     (((((■.)■)■)(■){■})((■|■)){■})■fail dot
  1549   |  9     (((((■.)■)■)(■){■})((■){■}){■})■fail dot
  1550   |  9     (((((■.)■)■)(■){■})(■){■})(■■)fail dot
  1551   |  9     (((((■.)■)■)(■){■})(■){■})(■|■)fail dot
  1552   |  9     (((((■.)■)■)(■){■})(■){■})(■){■}fail dot
  1553   |  9     (((((■.)■)■)(■){■})■)(■)fail dot
  1554   |  9     (((((■.)■)■)(■){■})■)((■■)■)fail dot
  1555   |  9     (((((■.)■)■)(■){■})■)((■|■)■)fail dot
  1556   |  9     (((((■.)■)■)(■){■})■)((■){■}■)fail dot
  1557   |  9     (((((■.)■)■)(■){■})■)(■■|■)fail dot
  1558   |  9     (((((■.)■)■)(■){■})■)((■|■)|■)fail dot
  1559   |  9     (((((■.)■)■)(■){■})■)((■){■}|■)fail dot
  1560   |  9     (((((■.)■)■)(■){■})■)(■■){■}fail dot
  1561   |  9     (((((■.)■)■)(■){■})■)((■|■)){■}fail dot
  1562   |  9     (((((■.)■)■)(■){■})■)((■){■}){■}fail dot
  1563   |  9     (((((((■■)).)■)■)(■)+)■)■fail dot
  1564   |  9     (((((((■|■)).)■)■)(■)+)■)■fail dot
  1565   |  9     (((((((■){■}).)■)■)(■)+)■)■fail dot
  1566   |  9     ((((((■).)(■■))■)(■)+)■)■fail dot
  1567   |  9     ((((((■).)(■|■))■)(■)+)■)■fail dot
  1568   |  9     ((((((■).)(■){■})■)(■)+)■)■fail dot
  1569   |  9     ((((((■).)■)(■■))(■)+)■)■fail dot
  1570   |  9     ((((((■).)■)(■|■))(■)+)■)■fail dot
  1571   |  9     ((((((■).)■)(■){■})(■)+)■)■fail dot
  1572   |  9     ((((((■).)■)■)(■■)+)■)■ fail dot
  1573   |  9     ((((((■).)■)■)((■|■))+)■)■fail dot
  1574   |  9     ((((((■).)■)■)((■){■})+)■)■fail dot
  1575   |  9     ((((((■).)■)■)(■)+)(■■))■fail dot
  1576   |  9     ((((((■).)■)■)(■)+)(■|■))■fail dot
  1577   |  9     ((((((■).)■)■)(■)+)(■){■})■fail dot
  1578   |  9     ((((((■).)■)■)(■)+)■)(■■)fail dot
  1579   |  9     ((((((■).)■)■)(■)+)■)(■|■)fail dot
  1580   |  9     ((((((■).)■)■)(■)+)■)(■){■}fail dot
  1581   |  9     (((((((■)■).)■)■)(■)+)■)■fail dot
  1582   |  9     ((((((((■■)■)■).)■)■)(■)+)■)■fail dot
  1583   |  9     ((((((((■|■)■)■).)■)■)(■)+)■)■fail dot
  1584   |  9     ((((((((■){■}■)■).)■)■)(■)+)■)■fail dot
  1585   |  9     (((((((■■)(■■)).)■)■)(■)+)■)■fail dot
  1586   |  9     (((((((■■)(■|■)).)■)■)(■)+)■)■fail dot
  1587   |  9     (((((((■■)(■){■}).)■)■)(■)+)■)■fail dot
  1588   |  9     (((((((■■)■).)(■■))■)(■)+)■)■fail dot
  1589   |  9     (((((((■■)■).)(■|■))■)(■)+)■)■fail dot
  1590   |  9     (((((((■■)■).)(■){■})■)(■)+)■)■fail dot
  1591   |  9     (((((((■■)■).)■)(■■))(■)+)■)■fail dot
  1592   |  9     (((((((■■)■).)■)(■|■))(■)+)■)■fail dot
  1593   |  9     (((((((■■)■).)■)(■){■})(■)+)■)■fail dot
  1594   |  9     (((((((■■)■).)■)■)(■■)+)■)■fail dot
  1595   |  9     (((((((■■)■).)■)■)((■|■))+)■)■fail dot
  1596   |  9     (((((((■■)■).)■)■)((■){■})+)■)■fail dot
  1597   |  9     (((((((■■)■).)■)■)(■)+)(■■))■fail dot
  1598   |  9     (((((((■■)■).)■)■)(■)+)(■|■))■fail dot
  1599   |  9     (((((((■■)■).)■)■)(■)+)(■){■})■fail dot
  1600   |  9     (((((((■■)■).)■)■)(■)+)■)(■■)fail dot
  1601   |  9     (((((((■■)■).)■)■)(■)+)■)(■|■)fail dot
  1602   |  9     (((((((■■)■).)■)■)(■)+)■)(■){■}fail dot
  1603   |  9     (((((((■■|■)■).)■)■)(■)+)■)■fail dot
  1604   |  9     ((((((((■|■)|■)■).)■)■)(■)+)■)■fail dot
  1605   |  9     ((((((((■){■}|■)■).)■)■)(■)+)■)■fail dot
  1606   |  9     (((((((■|■)(■■)).)■)■)(■)+)■)■fail dot
  1607   |  9     (((((((■|■)(■|■)).)■)■)(■)+)■)■fail dot
  1608   |  9     (((((((■|■)(■){■}).)■)■)(■)+)■)■fail dot
  1609   |  9     (((((((■|■)■).)(■■))■)(■)+)■)■fail dot
  1610   |  9     (((((((■|■)■).)(■|■))■)(■)+)■)■fail dot
  1611   |  9     (((((((■|■)■).)(■){■})■)(■)+)■)■fail dot
  1612   |  9     (((((((■|■)■).)■)(■■))(■)+)■)■fail dot
  1613   |  9     (((((((■|■)■).)■)(■|■))(■)+)■)■fail dot
  1614   |  9     (((((((■|■)■).)■)(■){■})(■)+)■)■fail dot
  1615   |  9     (((((((■|■)■).)■)■)(■■)+)■)■fail dot
  1616   |  9     (((((((■|■)■).)■)■)((■|■))+)■)■fail dot
  1617   |  9     (((((((■|■)■).)■)■)((■){■})+)■)■fail dot
  1618   |  9     (((((((■|■)■).)■)■)(■)+)(■■))■fail dot
  1619   |  9     (((((((■|■)■).)■)■)(■)+)(■|■))■fail dot
  1620   |  9     (((((((■|■)■).)■)■)(■)+)(■){■})■fail dot
  1621   |  9     (((((((■|■)■).)■)■)(■)+)■)(■■)fail dot
  1622   |  9     (((((((■|■)■).)■)■)(■)+)■)(■|■)fail dot
  1623   |  9     (((((((■|■)■).)■)■)(■)+)■)(■){■}fail dot
  1624   |  9     (((((((■■){■}■).)■)■)(■)+)■)■fail dot
  1625   |  9     ((((((((■|■)){■}■).)■)■)(■)+)■)■fail dot
  1626   |  9     ((((((((■){■}){■}■).)■)■)(■)+)■)■fail dot
  1627   |  9     (((((((■){■}(■■)).)■)■)(■)+)■)■fail dot
  1628   |  9     (((((((■){■}(■|■)).)■)■)(■)+)■)■fail dot
  1629   |  9     (((((((■){■}(■){■}).)■)■)(■)+)■)■fail dot
  1630   |  9     (((((((■){■}■).)(■■))■)(■)+)■)■fail dot
  1631   |  9     (((((((■){■}■).)(■|■))■)(■)+)■)■fail dot
  1632   |  9     (((((((■){■}■).)(■){■})■)(■)+)■)■fail dot
  1633   |  9     (((((((■){■}■).)■)(■■))(■)+)■)■fail dot
  1634   |  9     (((((((■){■}■).)■)(■|■))(■)+)■)■fail dot
  1635   |  9     (((((((■){■}■).)■)(■){■})(■)+)■)■fail dot
  1636   |  9     (((((((■){■}■).)■)■)(■■)+)■)■fail dot
  1637   |  9     (((((((■){■}■).)■)■)((■|■))+)■)■fail dot
  1638   |  9     (((((((■){■}■).)■)■)((■){■})+)■)■fail dot
  1639   |  9     (((((((■){■}■).)■)■)(■)+)(■■))■fail dot
  1640   |  9     (((((((■){■}■).)■)■)(■)+)(■|■))■fail dot
  1641   |  9     (((((((■){■}■).)■)■)(■)+)(■){■})■fail dot
  1642   |  9     (((((((■){■}■).)■)■)(■)+)■)(■■)fail dot
  1643   |  9     (((((((■){■}■).)■)■)(■)+)■)(■|■)fail dot
  1644   |  9     (((((((■){■}■).)■)■)(■)+)■)(■){■}fail dot
  1645   |  9     ((((((■■).)(■))■)(■)+)■)■fail dot
  1646   |  9     ((((((■■).)((■■)■))■)(■)+)■)■fail dot
  1647   |  9     ((((((■■).)((■|■)■))■)(■)+)■)■fail dot
  1648   |  9     ((((((■■).)((■){■}■))■)(■)+)■)■fail dot
  1649   |  9     ((((((■■).)(■■))(■■))(■)+)■)■fail dot
  1650   |  9     ((((((■■).)(■■))(■|■))(■)+)■)■fail dot
  1651   |  9     ((((((■■).)(■■))(■){■})(■)+)■)■fail dot
  1652   |  9     ((((((■■).)(■■))■)(■■)+)■)■fail dot
  1653   |  9     ((((((■■).)(■■))■)((■|■))+)■)■fail dot
  1654   |  9     ((((((■■).)(■■))■)((■){■})+)■)■fail dot
  1655   |  9     ((((((■■).)(■■))■)(■)+)(■■))■fail dot
  1656   |  9     ((((((■■).)(■■))■)(■)+)(■|■))■fail dot
  1657   |  9     ((((((■■).)(■■))■)(■)+)(■){■})■fail dot
  1658   |  9     ((((((■■).)(■■))■)(■)+)■)(■■)fail dot
  1659   |  9     ((((((■■).)(■■))■)(■)+)■)(■|■)fail dot
  1660   |  9     ((((((■■).)(■■))■)(■)+)■)(■){■}fail dot
  1661   |  9     ((((((■■).)(■■|■))■)(■)+)■)■fail dot
  1662   |  9     ((((((■■).)((■|■)|■))■)(■)+)■)■fail dot
  1663   |  9     ((((((■■).)((■){■}|■))■)(■)+)■)■fail dot
  1664   |  9     ((((((■■).)(■|■))(■■))(■)+)■)■fail dot
  1665   |  9     ((((((■■).)(■|■))(■|■))(■)+)■)■fail dot
  1666   |  9     ((((((■■).)(■|■))(■){■})(■)+)■)■fail dot
  1667   |  9     ((((((■■).)(■|■))■)(■■)+)■)■fail dot
  1668   |  9     ((((((■■).)(■|■))■)((■|■))+)■)■fail dot
  1669   |  9     ((((((■■).)(■|■))■)((■){■})+)■)■fail dot
  1670   |  9     ((((((■■).)(■|■))■)(■)+)(■■))■fail dot
  1671   |  9     ((((((■■).)(■|■))■)(■)+)(■|■))■fail dot
  1672   |  9     ((((((■■).)(■|■))■)(■)+)(■){■})■fail dot
  1673   |  9     ((((((■■).)(■|■))■)(■)+)■)(■■)fail dot
  1674   |  9     ((((((■■).)(■|■))■)(■)+)■)(■|■)fail dot
  1675   |  9     ((((((■■).)(■|■))■)(■)+)■)(■){■}fail dot
  1676   |  9     ((((((■■).)(■■){■})■)(■)+)■)■fail dot
  1677   |  9     ((((((■■).)((■|■)){■})■)(■)+)■)■fail dot
  1678   |  9     ((((((■■).)((■){■}){■})■)(■)+)■)■fail dot
  1679   |  9     ((((((■■).)(■){■})(■■))(■)+)■)■fail dot
  1680   |  9     ((((((■■).)(■){■})(■|■))(■)+)■)■fail dot
  1681   |  9     ((((((■■).)(■){■})(■){■})(■)+)■)■fail dot
  1682   |  9     ((((((■■).)(■){■})■)(■■)+)■)■fail dot
  1683   |  9     ((((((■■).)(■){■})■)((■|■))+)■)■fail dot
  1684   |  9     ((((((■■).)(■){■})■)((■){■})+)■)■fail dot
  1685   |  9     ((((((■■).)(■){■})■)(■)+)(■■))■fail dot
  1686   |  9     ((((((■■).)(■){■})■)(■)+)(■|■))■fail dot
  1687   |  9     ((((((■■).)(■){■})■)(■)+)(■){■})■fail dot
  1688   |  9     ((((((■■).)(■){■})■)(■)+)■)(■■)fail dot
  1689   |  9     ((((((■■).)(■){■})■)(■)+)■)(■|■)fail dot
  1690   |  9     ((((((■■).)(■){■})■)(■)+)■)(■){■}fail dot
  1691   |  9     ((((((■■).)■)(■))(■)+)■)■fail dot
  1692   |  9     ((((((■■).)■)((■■)■))(■)+)■)■fail dot
  1693   |  9     ((((((■■).)■)((■|■)■))(■)+)■)■fail dot
  1694   |  9     ((((((■■).)■)((■){■}■))(■)+)■)■fail dot
  1695   |  9     ((((((■■).)■)(■■))(■■)+)■)■fail dot
  1696   |  9     ((((((■■).)■)(■■))((■|■))+)■)■fail dot
  1697   |  9     ((((((■■).)■)(■■))((■){■})+)■)■fail dot
  1698   |  9     ((((((■■).)■)(■■))(■)+)(■■))■fail dot
  1699   |  9     ((((((■■).)■)(■■))(■)+)(■|■))■fail dot
  1700   |  9     ((((((■■).)■)(■■))(■)+)(■){■})■fail dot
  1701   |  9     ((((((■■).)■)(■■))(■)+)■)(■■)fail dot
  1702   |  9     ((((((■■).)■)(■■))(■)+)■)(■|■)fail dot
  1703   |  9     ((((((■■).)■)(■■))(■)+)■)(■){■}fail dot
  1704   |  9     ((((((■■).)■)(■■|■))(■)+)■)■fail dot
  1705   |  9     ((((((■■).)■)((■|■)|■))(■)+)■)■fail dot
  1706   |  9     ((((((■■).)■)((■){■}|■))(■)+)■)■fail dot
  1707   |  9     ((((((■■).)■)(■|■))(■■)+)■)■fail dot
  1708   |  9     ((((((■■).)■)(■|■))((■|■))+)■)■fail dot
  1709   |  9     ((((((■■).)■)(■|■))((■){■})+)■)■fail dot
  1710   |  9     ((((((■■).)■)(■|■))(■)+)(■■))■fail dot
  1711   |  9     ((((((■■).)■)(■|■))(■)+)(■|■))■fail dot
  1712   |  9     ((((((■■).)■)(■|■))(■)+)(■){■})■fail dot
  1713   |  9     ((((((■■).)■)(■|■))(■)+)■)(■■)fail dot
  1714   |  9     ((((((■■).)■)(■|■))(■)+)■)(■|■)fail dot
  1715   |  9     ((((((■■).)■)(■|■))(■)+)■)(■){■}fail dot
  1716   |  9     ((((((■■).)■)(■■){■})(■)+)■)■fail dot
  1717   |  9     ((((((■■).)■)((■|■)){■})(■)+)■)■fail dot
  1718   |  9     ((((((■■).)■)((■){■}){■})(■)+)■)■fail dot
  1719   |  9     ((((((■■).)■)(■){■})(■■)+)■)■fail dot
  1720   |  9     ((((((■■).)■)(■){■})((■|■))+)■)■fail dot
  1721   |  9     ((((((■■).)■)(■){■})((■){■})+)■)■fail dot
  1722   |  9     ((((((■■).)■)(■){■})(■)+)(■■))■fail dot
  1723   |  9     ((((((■■).)■)(■){■})(■)+)(■|■))■fail dot
  1724   |  9     ((((((■■).)■)(■){■})(■)+)(■){■})■fail dot
  1725   |  9     ((((((■■).)■)(■){■})(■)+)■)(■■)fail dot
  1726   |  9     ((((((■■).)■)(■){■})(■)+)■)(■|■)fail dot
  1727   |  9     ((((((■■).)■)(■){■})(■)+)■)(■){■}fail dot
  1728   |  9     ((((((■■).)■)■)((■■)■)+)■)■fail dot
  1729   |  9     ((((((■■).)■)■)((■|■)■)+)■)■fail dot
  1730   |  9     ((((((■■).)■)■)((■){■}■)+)■)■fail dot
  1731   |  9     ((((((■■).)■)■)(■(■■))+)■)■fail dot
  1732   |  9     ((((((■■).)■)■)(■(■|■))+)■)■fail dot
  1733   |  9     ((((((■■).)■)■)(■(■){■})+)■)■fail dot
  1734   |  9     ((((((■■).)■)■)(■■)+)(■■))■fail dot
  1735   |  9     ((((((■■).)■)■)(■■)+)(■|■))■fail dot
  1736   |  9     ((((((■■).)■)■)(■■)+)(■){■})■fail dot
  1737   |  9     ((((((■■).)■)■)(■■)+)■)(■■)fail dot
  1738   |  9     ((((((■■).)■)■)(■■)+)■)(■|■)fail dot
  1739   |  9     ((((((■■).)■)■)(■■)+)■)(■){■}fail dot
  1740   |  9     ((((((■■).)■)■)((■■|■))+)■)■fail dot
  1741   |  9     ((((((■■).)■)■)(((■|■)|■))+)■)■fail dot
  1742   |  9     ((((((■■).)■)■)(((■){■}|■))+)■)■fail dot
  1743   |  9     ((((((■■).)■)■)((■|■■))+)■)■fail dot
  1744   |  9     ((((((■■).)■)■)((■|(■|■)))+)■)■fail dot
  1745   |  9     ((((((■■).)■)■)((■|(■){■}))+)■)■fail dot
  1746   |  9     ((((((■■).)■)■)((■|■))+)(■■))■fail dot
  1747   |  9     ((((((■■).)■)■)((■|■))+)(■|■))■fail dot
  1748   |  9     ((((((■■).)■)■)((■|■))+)(■){■})■fail dot
  1749   |  9     ((((((■■).)■)■)((■|■))+)■)(■■)fail dot
  1750   |  9     ((((((■■).)■)■)((■|■))+)■)(■|■)fail dot
  1751   |  9     ((((((■■).)■)■)((■|■))+)■)(■){■}fail dot
  1752   |  9     ((((((■■).)■)■)((■■){■})+)■)■fail dot
  1753   |  9     ((((((■■).)■)■)(((■|■)){■})+)■)■fail dot
  1754   |  9     ((((((■■).)■)■)(((■){■}){■})+)■)■fail dot
  1755   |  9     ((((((■■).)■)■)((■){■})+)(■■))■fail dot
  1756   |  9     ((((((■■).)■)■)((■){■})+)(■|■))■fail dot
  1757   |  9     ((((((■■).)■)■)((■){■})+)(■){■})■fail dot
  1758   |  9     ((((((■■).)■)■)((■){■})+)■)(■■)fail dot
  1759   |  9     ((((((■■).)■)■)((■){■})+)■)(■|■)fail dot
  1760   |  9     ((((((■■).)■)■)((■){■})+)■)(■){■}fail dot
  1761   |  9     ((((((■■).)■)■)(■)+)(■))■fail dot
  1762   |  9     ((((((■■).)■)■)(■)+)((■■)■))■fail dot
  1763   |  9     ((((((■■).)■)■)(■)+)((■|■)■))■fail dot
  1764   |  9     ((((((■■).)■)■)(■)+)((■){■}■))■fail dot
  1765   |  9     ((((((■■).)■)■)(■)+)(■■))(■■)fail dot
  1766   |  9     ((((((■■).)■)■)(■)+)(■■))(■|■)fail dot
  1767   |  9     ((((((■■).)■)■)(■)+)(■■))(■){■}fail dot
  1768   |  9     ((((((■■).)■)■)(■)+)(■■|■))■fail dot
  1769   |  9     ((((((■■).)■)■)(■)+)((■|■)|■))■fail dot
  1770   |  9     ((((((■■).)■)■)(■)+)((■){■}|■))■fail dot
  1771   |  9     ((((((■■).)■)■)(■)+)(■|■))(■■)fail dot
  1772   |  9     ((((((■■).)■)■)(■)+)(■|■))(■|■)fail dot
  1773   |  9     ((((((■■).)■)■)(■)+)(■|■))(■){■}fail dot
  1774   |  9     ((((((■■).)■)■)(■)+)(■■){■})■fail dot
  1775   |  9     ((((((■■).)■)■)(■)+)((■|■)){■})■fail dot
  1776   |  9     ((((((■■).)■)■)(■)+)((■){■}){■})■fail dot
  1777   |  9     ((((((■■).)■)■)(■)+)(■){■})(■■)fail dot
  1778   |  9     ((((((■■).)■)■)(■)+)(■){■})(■|■)fail dot
  1779   |  9     ((((((■■).)■)■)(■)+)(■){■})(■){■}fail dot
  1780   |  9     ((((((■■).)■)■)(■)+)■)(■)fail dot
  1781   |  9     ((((((■■).)■)■)(■)+)■)((■■)■)fail dot
  1782   |  9     ((((((■■).)■)■)(■)+)■)((■|■)■)fail dot
  1783   |  9     ((((((■■).)■)■)(■)+)■)((■){■}■)
2.0286219120025635
timeout