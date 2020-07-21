
Given the regular expression:

  ([a-zA-Z])+([a-zA-Z])+\([0-2]\)

That that should match the strings:

  ✓ (0:15)   Word Word (2) >
  ✓ (15:30)  Word Word (1) >

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)+([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  2      |  1     (((([a-zA-Z]){■}([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  3      |  1     (((([a-zA-Z])+(■)+)\()[0-2])\)fail dotstar or empty
  4      |  1     (((([a-zA-Z])+([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  5      |  1     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  6      |  1     (((([a-zA-Z])+([a-zA-Z])+)\()■)\)fail dotstar or empty
  7      |  1     (((([a-zA-Z])+([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  8      |  2     ((((■){■}([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  9      |  2     ((((■)+(■)+)\()[0-2])\) fail dotstar or empty
  10     |  2     ((((■)+([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  11     |  2     ((((■)+([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  12     |  2     ((((■)+([a-zA-Z])+)\()■)\)fail dotstar or empty
  13     |  2     ((((■)+([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  14     |  2     (((([a-zA-Z]){■}(■)+)\()[0-2])\)fail dotstar or empty
  15     |  2     (((([a-zA-Z]){■}([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  16     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  17     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)\()■)\)fail dotstar or empty
  18     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  19     |  2     (((■([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  20     |  2     (((([a-zA-Z])+(■){■})\()[0-2])\)fail dotstar or empty
  21     |  2     (((([a-zA-Z])+(■)+)■)[0-2])\)fail dotstar or empty
  22     |  2     (((([a-zA-Z])+(■)+)\()■)\)fail dotstar or empty
  23     |  2     (((([a-zA-Z])+(■)+)\()[0-2])■fail dot
  24     |  2     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  25     |  2     (((([a-zA-Z])+([a-zA-Z]){■})\()■)\)fail dotstar or empty
  26     |  2     (((([a-zA-Z])+([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  27     |  2     (((([a-zA-Z])+■)\()[0-2])\)fail dotstar or empty
  28     |  2     (((([a-zA-Z])+([a-zA-Z])+)■)■)\)fail dotstar or empty
  29     |  2     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])■fail dot
  30     |  2     (((([a-zA-Z])+([a-zA-Z])+)\()■)■fail dotstar or empty
  31     |  3     ((((■){■}(■)+)\()[0-2])\)fail dotstar or empty
  32     |  3     ((((■){■}([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  33     |  3     ((((■){■}([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  34     |  3     ((((■){■}([a-zA-Z])+)\()■)\)fail dotstar or empty
  35     |  3     ((((■){■}([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  36     |  3     ((((■)+(■){■})\()[0-2])\)fail dotstar or empty
  37     |  3     ((((■)+(■)+)■)[0-2])\)  fail dotstar or empty
  38     |  3     ((((■)+(■)+)\()■)\)     fail dotstar or empty
  39     |  3     ((((■)+(■)+)\()[0-2])■  fail dot
  40     |  3     ((((■)+([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  41     |  3     ((((■)+([a-zA-Z]){■})\()■)\)fail dotstar or empty
  42     |  3     ((((■)+([a-zA-Z]){■})\()[0-2])■fail dot
  43     |  3     ((((■)+■)\()[0-2])\)    fail dotstar or empty
  44     |  3     ((((■)+([a-zA-Z])+)■)■)\)fail dotstar or empty
  45     |  3     ((((■)+([a-zA-Z])+)■)[0-2])■fail dot
  46     |  3     ((((■)+([a-zA-Z])+)\()■)■fail dotstar or empty
  47     |  3     (((([a-zA-Z]){■}(■){■})\()[0-2])\)fail dotstar or empty
  48     |  3     (((([a-zA-Z]){■}(■)+)■)[0-2])\)fail dotstar or empty
  49     |  3     (((([a-zA-Z]){■}(■)+)\()■)\)fail dotstar or empty
  50     |  3     (((([a-zA-Z]){■}(■)+)\()[0-2])■fail dot
  51     |  3     (((■(■)+)\()[0-2])\)    fail dotstar or empty
  52     |  3     (((([a-zA-Z]){■}([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  53     |  3     (((([a-zA-Z]){■}([a-zA-Z]){■})\()■)\)fail dotstar or empty
  54     |  3     (((([a-zA-Z]){■}([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  55     |  3     (((■([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  56     |  3     (((([a-zA-Z]){■}■)\()[0-2])\)fail dotstar or empty
  57     |  3     (((([a-zA-Z]){■}([a-zA-Z])+)■)■)\)fail dotstar or empty
  58     |  3     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])■fail dot
  59     |  3     (((■([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  60     |  3     (((([a-zA-Z]){■}([a-zA-Z])+)\()■)■fail dotstar or empty
  61     |  3     (((■([a-zA-Z])+)\()■)\) fail dotstar or empty
  62     |  3     (((■([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  63     |  3     (((([a-zA-Z])+(■){■})■)[0-2])\)fail dotstar or empty
  64     |  3     (((([a-zA-Z])+(■){■})\()■)\)fail dotstar or empty
  65     |  3     (((([a-zA-Z])+(■){■})\()[0-2])■fail dot
  66     |  3     (((([a-zA-Z])+(■)+)■)■)\)fail dotstar or empty
  67     |  3     (((([a-zA-Z])+(■)+)■)[0-2])■fail dot
  68     |  3     (((([a-zA-Z])+(■)+)\()■)■fail dot
  69     |  3     (((([a-zA-Z])+(■■)+)\()[0-2])■fail dot
  70     |  3     (((([a-zA-Z])+((■|■))+)\()[0-2])■fail dot
  71     |  3     (((([a-zA-Z])+((■){■})+)\()[0-2])■fail dot
  72     |  3     (((([a-zA-Z])+(■)+)\()[0-2])(■■)fail dot
  73     |  3     (((([a-zA-Z])+(■)+)\()[0-2])(■|■)fail dot
  74     |  3     (((([a-zA-Z])+(■)+)\()[0-2])(■){■}get a solution: (((([a-zA-Z])+([rdWo ])+)\()[0-2])([)> ]){1,3}
add positive: A (0) >	
add negative: A (0 
get a solution: (((([a-zA-Z])+([rdWo ])+)\()[0-2])([)	> ]){2,4}
add positive: A (0)	>

add negative: A (0		
get a solution: (((([a-zA-Z])+([rdWo ])+)\()[0-2])([)	
> ]){3,4}
add positive: A (3)	>	
add negative: AW(0			
  75     |  3     (((([a-zA-Z])+([a-zA-Z]){■})■)■)\)fail dotstar or empty
  76     |  3     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  77     |  3     (((([a-zA-Z])+■)■)[0-2])\)fail dotstar or empty
  78     |  3     (((([a-zA-Z])+([a-zA-Z]){■})\()■)■fail dotstar or empty
  79     |  3     (((([a-zA-Z])+■)\()■)\) fail dotstar or empty
  80     |  3     (((([a-zA-Z])+■)\()[0-2])■fail dotstar or empty
  81     |  3     (((([a-zA-Z])+([a-zA-Z])+)■)■)■fail dotstar or empty
  82     |  3     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])■fail dot
  83     |  3     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])■fail dot
  84     |  3     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])■fail dot
  85     |  3     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■■)fail dot
  86     |  3     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■|■)fail dot
  87     |  3     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■){■}fail dot
  88     |  4     ((((■){■}(■){■})\()[0-2])\)fail dotstar or empty
  89     |  4     ((((■){■}(■)+)■)[0-2])\)fail dotstar or empty
  90     |  4     ((((■){■}(■)+)\()■)\)   fail dotstar or empty
  91     |  4     ((((■){■}(■)+)\()[0-2])■fail dotstar or empty
  92     |  4     ((((■){■}([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  93     |  4     ((((■){■}([a-zA-Z]){■})\()■)\)fail dotstar or empty
  94     |  4     ((((■){■}([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  95     |  4     ((((■){■}■)\()[0-2])\)  fail dotstar or empty
  96     |  4     ((((■){■}([a-zA-Z])+)■)■)\)fail dotstar or empty
  97     |  4     ((((■){■}([a-zA-Z])+)■)[0-2])■fail dotstar or empty
  98     |  4     ((((■){■}([a-zA-Z])+)\()■)■fail dotstar or empty
  99     |  4     ((((■)+(■){■})■)[0-2])\)fail dotstar or empty
  100    |  4     ((((■)+(■){■})\()■)\)   fail dotstar or empty
  101    |  4     ((((■)+(■){■})\()[0-2])■fail dotstar or empty
  102    |  4     ((((■)+(■)+)■)■)\)      fail dotstar or empty
  103    |  4     ((((■)+(■)+)■)[0-2])■   fail dotstar or empty
  104    |  4     ((((■)+(■)+)\()■)■      fail dotstar or empty
  105    |  4     ((((■■)+(■)+)\()[0-2])■ fail dot
  106    |  4     (((((■|■))+(■)+)\()[0-2])■fail dot
  107    |  4     (((((■){■})+(■)+)\()[0-2])■fail dot
  108    |  4     ((((■)+(■■)+)\()[0-2])■ fail dot
  109    |  4     ((((■)+((■|■))+)\()[0-2])■fail dot
  110    |  4     ((((■)+((■){■})+)\()[0-2])■fail dot
  111    |  4     ((((■)+(■)+)\()[0-2])(■■)fail dot
  112    |  4     ((((■)+(■)+)\()[0-2])(■|■)fail dot
  113    |  4     ((((■)+(■)+)\()[0-2])(■){■}fail dot
  114    |  4     ((((■)+([a-zA-Z]){■})■)■)\)fail dotstar or empty
  115    |  4     ((((■)+([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  116    |  4     ((((■)+■)■)[0-2])\)     fail dotstar or empty
  117    |  4     ((((■)+([a-zA-Z]){■})\()■)■fail dotstar or empty
  118    |  4     ((((■)+■)\()■)\)        fail dotstar or empty
  119    |  4     ((((■)+■)\()[0-2])■     fail dotstar or empty
  120    |  4     ((((■■)+([a-zA-Z]){■})\()[0-2])■fail dot
  121    |  4     (((((■|■))+([a-zA-Z]){■})\()[0-2])■fail dot
  122    |  4     (((((■){■})+([a-zA-Z]){■})\()[0-2])■fail dot
  123    |  4     ((((■)+([a-zA-Z]){■})\()[0-2])(■■)fail dot
  124    |  4     ((((■)+([a-zA-Z]){■})\()[0-2])(■|■)fail dot
  125    |  4     ((((■)+([a-zA-Z]){■})\()[0-2])(■){■}fail dot
  126    |  4     ((((■)+([a-zA-Z])+)■)■)■fail dotstar or empty
  127    |  4     ((((■■)+([a-zA-Z])+)■)[0-2])■fail dot
  128    |  4     (((((■|■))+([a-zA-Z])+)■)[0-2])■fail dot
  129    |  4     (((((■){■})+([a-zA-Z])+)■)[0-2])■fail dot
  130    |  4     ((((■)+([a-zA-Z])+)(■■))[0-2])■fail dot
  131    |  4     ((((■)+([a-zA-Z])+)(■|■))[0-2])■fail dot
  132    |  4     ((((■)+([a-zA-Z])+)(■){■})[0-2])■fail dot
  133    |  4     ((((■)+([a-zA-Z])+)■)[0-2])(■■)fail dot
  134    |  4     ((((■)+([a-zA-Z])+)■)[0-2])(■|■)fail dot
  135    |  4     ((((■)+([a-zA-Z])+)■)[0-2])(■){■}fail dot
  136    |  4     (((([a-zA-Z]){■}(■){■})■)[0-2])\)fail dotstar or empty
  137    |  4     (((([a-zA-Z]){■}(■){■})\()■)\)fail dotstar or empty
  138    |  4     (((([a-zA-Z]){■}(■){■})\()[0-2])■fail dotstar or empty
  139    |  4     (((([a-zA-Z]){■}(■)+)■)■)\)fail dotstar or empty
  140    |  4     (((([a-zA-Z]){■}(■)+)■)[0-2])■fail dotstar or empty
  141    |  4     (((■(■)+)■)[0-2])\)     fail dotstar or empty
  142    |  4     (((([a-zA-Z]){■}(■)+)\()■)■fail dotstar or empty
  143    |  4     (((■(■)+)\()■)\)        fail dotstar or empty
  144    |  4     (((■(■)+)\()[0-2])■     fail dotstar or empty
  145    |  4     (((([a-zA-Z]){■}(■■)+)\()[0-2])■fail dot
  146    |  4     (((([a-zA-Z]){■}((■|■))+)\()[0-2])■fail dot
  147    |  4     (((([a-zA-Z]){■}((■){■})+)\()[0-2])■fail dot
  148    |  4     (((([a-zA-Z]){■}(■)+)\()[0-2])(■■)fail dot
  149    |  4     (((([a-zA-Z]){■}(■)+)\()[0-2])(■|■)fail dot
  150    |  4     (((([a-zA-Z]){■}(■)+)\()[0-2])(■){■}fail dot
  151    |  4     (((([a-zA-Z]){■}([a-zA-Z]){■})■)■)\)fail dotstar or empty
  152    |  4     (((([a-zA-Z]){■}([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  153    |  4     (((■([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  154    |  4     (((([a-zA-Z]){■}■)■)[0-2])\)fail dotstar or empty
  155    |  4     (((([a-zA-Z]){■}([a-zA-Z]){■})\()■)■fail dotstar or empty
  156    |  4     (((■([a-zA-Z]){■})\()■)\)fail dotstar or empty
  157    |  4     (((([a-zA-Z]){■}■)\()■)\)fail dotstar or empty
  158    |  4     (((■([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  159    |  4     (((([a-zA-Z]){■}■)\()[0-2])■fail dotstar or empty
  160    |  4     (((■■)\()[0-2])\)       fail dotstar or empty
  161    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)■)■)■fail dotstar or empty
  162    |  4     (((■([a-zA-Z])+)■)■)\)  fail dotstar or empty
  163    |  4     (((■([a-zA-Z])+)■)[0-2])■fail dotstar or empty
  164    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)(■■))[0-2])■fail dot
  165    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)(■|■))[0-2])■fail dot
  166    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)(■){■})[0-2])■fail dot
  167    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])(■■)fail dot
  168    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])(■|■)fail dot
  169    |  4     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])(■){■}fail dot
  170    |  4     (((■([a-zA-Z])+)\()■)■  fail dotstar or empty
  171    |  4     (((([a-zA-Z])+(■){■})■)■)\)fail dotstar or empty
  172    |  4     (((([a-zA-Z])+(■){■})■)[0-2])■fail dotstar or empty
  173    |  4     (((([a-zA-Z])+(■){■})\()■)■fail dotstar or empty
  174    |  4     (((([a-zA-Z])+(■■){■})\()[0-2])■fail dot
  175    |  4     (((([a-zA-Z])+((■|■)){■})\()[0-2])■fail dot
  176    |  4     (((([a-zA-Z])+((■){■}){■})\()[0-2])■fail dot
  177    |  4     (((([a-zA-Z])+(■){■})\()[0-2])(■■)fail dot
  178    |  4     (((([a-zA-Z])+(■){■})\()[0-2])(■|■)fail dot
  179    |  4     (((([a-zA-Z])+(■){■})\()[0-2])(■){■}fail dot
  180    |  4     (((([a-zA-Z])+(■)+)■)■)■fail dotstar or empty
  181    |  4     (((([a-zA-Z])+(■■)+)■)[0-2])■fail dot
  182    |  4     (((([a-zA-Z])+((■|■))+)■)[0-2])■fail dot
  183    |  4     (((([a-zA-Z])+((■){■})+)■)[0-2])■fail dot
  184    |  4     (((([a-zA-Z])+(■)+)(■■))[0-2])■fail dot
  185    |  4     (((([a-zA-Z])+(■)+)(■|■))[0-2])■fail dot
  186    |  4     (((([a-zA-Z])+(■)+)(■){■})[0-2])■fail dot
  187    |  4     (((([a-zA-Z])+(■)+)■)[0-2])(■■)fail dot
  188    |  4     (((([a-zA-Z])+(■)+)■)[0-2])(■|■)fail dot
  189    |  4     (((([a-zA-Z])+(■)+)■)[0-2])(■){■}fail dot
  190    |  4     (((([a-zA-Z])+(■■)+)\()■)■fail dot
  191    |  4     (((([a-zA-Z])+((■|■))+)\()■)■fail dot
  192    |  4     (((([a-zA-Z])+((■){■})+)\()■)■fail dot
  193    |  4     (((([a-zA-Z])+(■)+)\()(■■))■fail dot
  194    |  4     (((([a-zA-Z])+(■)+)\()(■|■))■fail dot
  195    |  4     (((([a-zA-Z])+(■)+)\()(■){■})■fail dot
  196    |  4     (((([a-zA-Z])+(■)+)\()■)(■■)fail dot
  197    |  4     (((([a-zA-Z])+(■)+)\()■)(■|■)fail dot
  198    |  4     (((([a-zA-Z])+(■)+)\()■)(■){■}fail dot
  199    |  4     (((([a-zA-Z])+((■■)■)+)\()[0-2])■fail dot
  200    |  4     (((([a-zA-Z])+((■|■)■)+)\()[0-2])■fail dot
  201    |  4     (((([a-zA-Z])+((■){■}■)+)\()[0-2])■fail dot
  202    |  4     (((([a-zA-Z])+(■(■■))+)\()[0-2])■fail dot
  203    |  4     (((([a-zA-Z])+(■(■|■))+)\()[0-2])■fail dot
  204    |  4     (((([a-zA-Z])+(■(■){■})+)\()[0-2])■fail dot
  205    |  4     (((([a-zA-Z])+(■■)+)\()[0-2])(■■)fail dot
  206    |  4     (((([a-zA-Z])+(■■)+)\()[0-2])(■|■)fail dot
  207    |  4     (((([a-zA-Z])+(■■)+)\()[0-2])(■){■}fail dot
  208    |  4     (((([a-zA-Z])+((■■|■))+)\()[0-2])■fail dot
  209    |  4     (((([a-zA-Z])+(((■|■)|■))+)\()[0-2])■fail dot
  210    |  4     (((([a-zA-Z])+(((■){■}|■))+)\()[0-2])■fail dot
  211    |  4     (((([a-zA-Z])+((■|■■))+)\()[0-2])■fail dot
  212    |  4     (((([a-zA-Z])+((■|(■|■)))+)\()[0-2])■fail dot
  213    |  4     (((([a-zA-Z])+((■|(■){■}))+)\()[0-2])■fail dot
  214    |  4     (((([a-zA-Z])+((■|■))+)\()[0-2])(■■)fail dot
  215    |  4     (((([a-zA-Z])+((■|■))+)\()[0-2])(■|■)fail dot
  216    |  4     (((([a-zA-Z])+((■|■))+)\()[0-2])(■){■}fail dot
  217    |  4     (((([a-zA-Z])+((■■){■})+)\()[0-2])■fail dot
  218    |  4     (((([a-zA-Z])+(((■|■)){■})+)\()[0-2])■fail dot
  219    |  4     (((([a-zA-Z])+(((■){■}){■})+)\()[0-2])■fail dot
  220    |  4     (((([a-zA-Z])+((■){■})+)\()[0-2])(■■)fail dot
  221    |  4     (((([a-zA-Z])+((■){■})+)\()[0-2])(■|■)fail dot
  222    |  4     (((([a-zA-Z])+((■){■})+)\()[0-2])(■){■}fail dot
  223    |  4     (((([a-zA-Z])+(■)+)\()[0-2])(■)fail dotstar or empty
  224    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■■)■)fail dot
  225    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)■)fail dot
  226    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}■)fail dot
  227    |  4     (((([a-zA-Z])+(■)+)\()[0-2])(■■|■)fail dot
  228    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)|■)fail dot
  229    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}|■)fail dot
  230    |  4     (((([a-zA-Z])+(■)+)\()[0-2])(■■){■}fail dot
  231    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)){■}fail solve
  232    |  4     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}){■}fail dot
  233    |  4     (((([a-zA-Z])+([a-zA-Z]){■})■)■)■fail dotstar or empty
  234    |  4     (((([a-zA-Z])+■)■)■)\)  fail dotstar or empty
  235    |  4     (((([a-zA-Z])+■)■)[0-2])■fail dotstar or empty
  236    |  4     (((([a-zA-Z])+■)\()■)■  fail dotstar or empty
  237    |  4     (((([a-zA-Z])+([a-zA-Z]){■})(■■))[0-2])■fail dotstar or empty
  238    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■■))■)■fail dotstar or empty
  239    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■))[0-2])■fail dotstar or empty
  240    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■■)■))[0-2])■fail dot
  241    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■))[0-2])■fail dot
  242    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■))[0-2])■fail dot
  243    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])(■■)fail dot
  244    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])(■|■)fail dot
  245    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])(■){■}fail dot
  246    |  4     (((([a-zA-Z])+([a-zA-Z]){■})(■|■))[0-2])■fail dotstar or empty
  247    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■|■))■)■fail dotstar or empty
  248    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■■|■))[0-2])■fail dot
  249    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|■))[0-2])■fail dot
  250    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|■))[0-2])■fail dot
  251    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])(■■)fail dot
  252    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])(■|■)fail dot
  253    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])(■){■}fail dot
  254    |  4     (((([a-zA-Z])+([a-zA-Z]){■})(■){■})[0-2])■fail dotstar or empty
  255    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■){■})■)■fail dotstar or empty
  256    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■■){■})[0-2])■fail dot
  257    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■|■)){■})[0-2])■fail dot
  258    |  4     (((([a-zA-Z])+([a-zA-Z])+)((■){■}){■})[0-2])■fail dot
  259    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])(■■)fail dot
  260    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])(■|■)fail dot
  261    |  4     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])(■){■}fail dot
  262    |  4     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])(■■)fail dotstar or empty
  263    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)■)(■■)fail dotstar or empty
  264    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■)fail dotstar or empty
  265    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■)■)fail dot
  266    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)■)fail dot
  267    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}■)fail dot
  268    |  4     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])(■|■)fail dotstar or empty
  269    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)■)(■|■)fail dotstar or empty
  270    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■■|■)fail dot
  271    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)|■)fail dot
  272    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}|■)fail dot
  273    |  4     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])(■){■}fail dotstar or empty
  274    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)■)(■){■}fail dotstar or empty
  275    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■■){■}fail dot
  276    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)){■}fail dot
  277    |  4     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}){■}fail dot
  278    |  5     ((((■){■}(■){■})■)[0-2])\)fail dotstar or empty
  279    |  5     ((((■){■}(■){■})\()■)\) fail dotstar or empty
  280    |  5     ((((■){■}(■){■})\()[0-2])■fail dotstar or empty
  281    |  5     ((((■){■}(■)+)■)■)\)    fail dotstar or empty
  282    |  5     ((((■){■}(■)+)■)[0-2])■ fail dotstar or empty
  283    |  5     ((((■){■}(■)+)\()■)■    fail dotstar or empty
  284    |  5     ((((■){■}([a-zA-Z]){■})■)■)\)fail dotstar or empty
  285    |  5     ((((■){■}([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  286    |  5     ((((■){■}■)■)[0-2])\)   fail dotstar or empty
  287    |  5     ((((■){■}([a-zA-Z]){■})\()■)■fail dotstar or empty
  288    |  5     ((((■){■}■)\()■)\)      fail dotstar or empty
  289    |  5     ((((■){■}■)\()[0-2])■   fail dotstar or empty
  290    |  5     ((((■){■}([a-zA-Z])+)■)■)■fail dotstar or empty
  291    |  5     ((((■)+(■){■})■)■)\)    fail dotstar or empty
  292    |  5     ((((■)+(■){■})■)[0-2])■ fail dotstar or empty
  293    |  5     ((((■)+(■){■})\()■)■    fail dotstar or empty
  294    |  5     ((((■)+(■)+)■)■)■       fail dotstar or empty
  295    |  5     ((((■■){■}(■)+)\()[0-2])■fail dotstar or empty
  296    |  5     ((((■■)+(■){■})\()[0-2])■fail dotstar or empty
  297    |  5     ((((■■)+(■)+)■)[0-2])■  fail dotstar or empty
  298    |  5     ((((■■)+(■)+)\()■)■     fail dotstar or empty
  299    |  5     (((((■■)■)+(■)+)\()[0-2])■fail dot
  300    |  5     (((((■|■)■)+(■)+)\()[0-2])■fail dot
  301    |  5     (((((■){■}■)+(■)+)\()[0-2])■fail dot
  302    |  5     ((((■(■■))+(■)+)\()[0-2])■fail dot
  303    |  5     ((((■(■|■))+(■)+)\()[0-2])■fail dot
  304    |  5     ((((■(■){■})+(■)+)\()[0-2])■fail dot
  305    |  5     ((((■■)+(■■)+)\()[0-2])■fail dot
  306    |  5     ((((■■)+((■|■))+)\()[0-2])■fail dot
  307    |  5     ((((■■)+((■){■})+)\()[0-2])■fail dot
  308    |  5     ((((■■)+(■)+)\()[0-2])(■■)fail dot
  309    |  5     ((((■■)+(■)+)\()[0-2])(■|■)fail dot
  310    |  5     ((((■■)+(■)+)\()[0-2])(■){■}fail dot
  311    |  5     (((((■|■)){■}(■)+)\()[0-2])■fail dotstar or empty
  312    |  5     (((((■|■))+(■){■})\()[0-2])■fail dotstar or empty
  313    |  5     (((((■|■))+(■)+)■)[0-2])■fail dotstar or empty
  314    |  5     (((((■|■))+(■)+)\()■)■  fail dotstar or empty
  315    |  5     (((((■■|■))+(■)+)\()[0-2])■fail dot
  316    |  5     ((((((■|■)|■))+(■)+)\()[0-2])■fail dot
  317    |  5     ((((((■){■}|■))+(■)+)\()[0-2])■fail dot
  318    |  5     (((((■|■■))+(■)+)\()[0-2])■fail dot
  319    |  5     (((((■|(■|■)))+(■)+)\()[0-2])■fail dot
  320    |  5     (((((■|(■){■}))+(■)+)\()[0-2])■fail dot
  321    |  5     (((((■|■))+(■■)+)\()[0-2])■fail dot
  322    |  5     (((((■|■))+((■|■))+)\()[0-2])■fail dot
  323    |  5     (((((■|■))+((■){■})+)\()[0-2])■fail dot
  324    |  5     (((((■|■))+(■)+)\()[0-2])(■■)fail dot
  325    |  5     (((((■|■))+(■)+)\()[0-2])(■|■)fail dot
  326    |  5     (((((■|■))+(■)+)\()[0-2])(■){■}fail dot
  327    |  5     (((((■){■}){■}(■)+)\()[0-2])■fail dotstar or empty
  328    |  5     (((((■){■})+(■){■})\()[0-2])■fail dotstar or empty
  329    |  5     (((((■){■})+(■)+)■)[0-2])■fail dotstar or empty
  330    |  5     (((((■){■})+(■)+)\()■)■ fail dotstar or empty
  331    |  5     (((((■■){■})+(■)+)\()[0-2])■fail dot
  332    |  5     ((((((■|■)){■})+(■)+)\()[0-2])■fail dot
  333    |  5     ((((((■){■}){■})+(■)+)\()[0-2])■fail dot
  334    |  5     (((((■){■})+(■■)+)\()[0-2])■fail dot
  335    |  5     (((((■){■})+((■|■))+)\()[0-2])■fail dot
  336    |  5     (((((■){■})+((■){■})+)\()[0-2])■fail dot
  337    |  5     (((((■){■})+(■)+)\()[0-2])(■■)fail dot
  338    |  5     (((((■){■})+(■)+)\()[0-2])(■|■)fail dot
  339    |  5     (((((■){■})+(■)+)\()[0-2])(■){■}fail dot
  340    |  5     ((((■){■}(■■)+)\()[0-2])■fail dotstar or empty
  341    |  5     ((((■)+(■■){■})\()[0-2])■fail dotstar or empty
  342    |  5     ((((■)+(■■)+)■)[0-2])■  fail dotstar or empty
  343    |  5     ((((■)+(■■)+)\()■)■     fail dotstar or empty
  344    |  5     ((((■)+((■■)■)+)\()[0-2])■fail dot
  345    |  5     ((((■)+((■|■)■)+)\()[0-2])■fail dot
  346    |  5     ((((■)+((■){■}■)+)\()[0-2])■fail dot
  347    |  5     ((((■)+(■(■■))+)\()[0-2])■fail dot
  348    |  5     ((((■)+(■(■|■))+)\()[0-2])■fail dot
  349    |  5     ((((■)+(■(■){■})+)\()[0-2])■fail dot
  350    |  5     ((((■)+(■■)+)\()[0-2])(■■)fail dot
  351    |  5     ((((■)+(■■)+)\()[0-2])(■|■)fail dot
  352    |  5     ((((■)+(■■)+)\()[0-2])(■){■}fail dot
  353    |  5     ((((■){■}((■|■))+)\()[0-2])■fail dotstar or empty
  354    |  5     ((((■)+((■|■)){■})\()[0-2])■fail dotstar or empty
  355    |  5     ((((■)+((■|■))+)■)[0-2])■fail dotstar or empty
  356    |  5     ((((■)+((■|■))+)\()■)■  fail dotstar or empty
  357    |  5     ((((■)+((■■|■))+)\()[0-2])■fail dot
  358    |  5     ((((■)+(((■|■)|■))+)\()[0-2])■fail dot
  359    |  5     ((((■)+(((■){■}|■))+)\()[0-2])■fail dot
  360    |  5     ((((■)+((■|■■))+)\()[0-2])■fail dot
  361    |  5     ((((■)+((■|(■|■)))+)\()[0-2])■fail dot
  362    |  5     ((((■)+((■|(■){■}))+)\()[0-2])■fail dot
  363    |  5     ((((■)+((■|■))+)\()[0-2])(■■)fail dot
  364    |  5     ((((■)+((■|■))+)\()[0-2])(■|■)fail dot
  365    |  5     ((((■)+((■|■))+)\()[0-2])(■){■}fail dot
  366    |  5     ((((■){■}((■){■})+)\()[0-2])■fail dotstar or empty
  367    |  5     ((((■)+((■){■}){■})\()[0-2])■fail dotstar or empty
  368    |  5     ((((■)+((■){■})+)■)[0-2])■fail dotstar or empty
  369    |  5     ((((■)+((■){■})+)\()■)■ fail dotstar or empty
  370    |  5     ((((■)+((■■){■})+)\()[0-2])■fail dot
  371    |  5     ((((■)+(((■|■)){■})+)\()[0-2])■fail dot
  372    |  5     ((((■)+(((■){■}){■})+)\()[0-2])■fail dot
  373    |  5     ((((■)+((■){■})+)\()[0-2])(■■)fail dot
  374    |  5     ((((■)+((■){■})+)\()[0-2])(■|■)fail dot
  375    |  5     ((((■)+((■){■})+)\()[0-2])(■){■}fail dot
  376    |  5     ((((■){■}(■)+)\()[0-2])(■■)fail dotstar or empty
  377    |  5     ((((■)+(■){■})\()[0-2])(■■)fail dotstar or empty
  378    |  5     ((((■)+(■)+)■)[0-2])(■■)fail dotstar or empty
  379    |  5     ((((■)+(■)+)\()■)(■■)   fail dotstar or empty
  380    |  5     ((((■)+(■)+)\()[0-2])(■)fail dotstar or empty
  381    |  5     ((((■)+(■)+)\()[0-2])((■■)■)fail dot
  382    |  5     ((((■)+(■)+)\()[0-2])((■|■)■)fail dot
  383    |  5     ((((■)+(■)+)\()[0-2])((■){■}■)fail dot
  384    |  5     ((((■){■}(■)+)\()[0-2])(■|■)fail dotstar or empty
  385    |  5     ((((■)+(■){■})\()[0-2])(■|■)fail dotstar or empty
  386    |  5     ((((■)+(■)+)■)[0-2])(■|■)fail dotstar or empty
  387    |  5     ((((■)+(■)+)\()■)(■|■)  fail dotstar or empty
  388    |  5     ((((■)+(■)+)\()[0-2])(■■|■)fail dot
  389    |  5     ((((■)+(■)+)\()[0-2])((■|■)|■)fail dot
  390    |  5     ((((■)+(■)+)\()[0-2])((■){■}|■)fail dot
  391    |  5     ((((■){■}(■)+)\()[0-2])(■){■}fail dotstar or empty
  392    |  5     ((((■)+(■){■})\()[0-2])(■){■}fail dotstar or empty
  393    |  5     ((((■)+(■)+)■)[0-2])(■){■}fail dotstar or empty
  394    |  5     ((((■)+(■)+)\()■)(■){■} fail dotstar or empty
  395    |  5     ((((■)+(■)+)\()[0-2])(■■){■}fail dot
  396    |  5     ((((■)+(■)+)\()[0-2])((■|■)){■}fail dot
  397    |  5     ((((■)+(■)+)\()[0-2])((■){■}){■}fail dot
  398    |  5     ((((■)+([a-zA-Z]){■})■)■)■fail dotstar or empty
  399    |  5     ((((■)+■)■)■)\)         fail dotstar or empty
  400    |  5     ((((■)+■)■)[0-2])■      fail dotstar or empty
  401    |  5     ((((■)+■)\()■)■         fail dotstar or empty
  402    |  5     ((((■■){■}([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  403    |  5     ((((■■)+([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  404    |  5     ((((■■)+([a-zA-Z]){■})\()■)■fail dotstar or empty
  405    |  5     ((((■■)+■)\()[0-2])■    fail dotstar or empty
  406    |  5     (((((■■)■)+([a-zA-Z]){■})\()[0-2])■fail dot
  407    |  5     (((((■|■)■)+([a-zA-Z]){■})\()[0-2])■fail dot
  408    |  5     (((((■){■}■)+([a-zA-Z]){■})\()[0-2])■fail dot
  409    |  5     ((((■(■■))+([a-zA-Z]){■})\()[0-2])■fail dot
  410    |  5     ((((■(■|■))+([a-zA-Z]){■})\()[0-2])■fail dot
  411    |  5     ((((■(■){■})+([a-zA-Z]){■})\()[0-2])■fail dot
  412    |  5     ((((■■)+([a-zA-Z]){■})\()[0-2])(■■)fail dot
  413    |  5     ((((■■)+([a-zA-Z]){■})\()[0-2])(■|■)fail dot
  414    |  5     ((((■■)+([a-zA-Z]){■})\()[0-2])(■){■}fail dot
  415    |  5     (((((■|■)){■}([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  416    |  5     (((((■|■))+([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  417    |  5     (((((■|■))+([a-zA-Z]){■})\()■)■fail dotstar or empty
  418    |  5     (((((■|■))+■)\()[0-2])■ fail dotstar or empty
  419    |  5     (((((■■|■))+([a-zA-Z]){■})\()[0-2])■fail dot
  420    |  5     ((((((■|■)|■))+([a-zA-Z]){■})\()[0-2])■fail dot
  421    |  5     ((((((■){■}|■))+([a-zA-Z]){■})\()[0-2])■fail dot
  422    |  5     (((((■|■■))+([a-zA-Z]){■})\()[0-2])■fail dot
  423    |  5     (((((■|(■|■)))+([a-zA-Z]){■})\()[0-2])■fail dot
  424    |  5     (((((■|(■){■}))+([a-zA-Z]){■})\()[0-2])■fail dot
  425    |  5     (((((■|■))+([a-zA-Z]){■})\()[0-2])(■■)fail dot
  426    |  5     (((((■|■))+([a-zA-Z]){■})\()[0-2])(■|■)fail dot
  427    |  5     (((((■|■))+([a-zA-Z]){■})\()[0-2])(■){■}fail dot
  428    |  5     (((((■){■}){■}([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  429    |  5     (((((■){■})+([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  430    |  5     (((((■){■})+([a-zA-Z]){■})\()■)■fail dotstar or empty
  431    |  5     (((((■){■})+■)\()[0-2])■fail dotstar or empty
  432    |  5     (((((■■){■})+([a-zA-Z]){■})\()[0-2])■fail dot
  433    |  5     ((((((■|■)){■})+([a-zA-Z]){■})\()[0-2])■fail dot
  434    |  5     ((((((■){■}){■})+([a-zA-Z]){■})\()[0-2])■fail dot
  435    |  5     (((((■){■})+([a-zA-Z]){■})\()[0-2])(■■)fail dot
  436    |  5     (((((■){■})+([a-zA-Z]){■})\()[0-2])(■|■)fail dot
  437    |  5     (((((■){■})+([a-zA-Z]){■})\()[0-2])(■){■}fail dot
  438    |  5     ((((■){■}([a-zA-Z]){■})\()[0-2])(■■)fail dotstar or empty
  439    |  5     ((((■)+([a-zA-Z]){■})■)[0-2])(■■)fail dotstar or empty
  440    |  5     ((((■)+([a-zA-Z]){■})\()■)(■■)fail dotstar or empty
  441    |  5     ((((■)+■)\()[0-2])(■■)  fail dotstar or empty
  442    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])(■)fail dotstar or empty
  443    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■■)■)fail dot
  444    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■|■)■)fail dot
  445    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■){■}■)fail dot
  446    |  5     ((((■){■}([a-zA-Z]){■})\()[0-2])(■|■)fail dotstar or empty
  447    |  5     ((((■)+([a-zA-Z]){■})■)[0-2])(■|■)fail dotstar or empty
  448    |  5     ((((■)+([a-zA-Z]){■})\()■)(■|■)fail dotstar or empty
  449    |  5     ((((■)+■)\()[0-2])(■|■) fail dotstar or empty
  450    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])(■■|■)fail dot
  451    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■|■)|■)fail dot
  452    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■){■}|■)fail dot
  453    |  5     ((((■){■}([a-zA-Z]){■})\()[0-2])(■){■}fail dotstar or empty
  454    |  5     ((((■)+([a-zA-Z]){■})■)[0-2])(■){■}fail dotstar or empty
  455    |  5     ((((■)+([a-zA-Z]){■})\()■)(■){■}fail dotstar or empty
  456    |  5     ((((■)+■)\()[0-2])(■){■}fail dotstar or empty
  457    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])(■■){■}fail dot
  458    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■|■)){■}fail dot
  459    |  5     ((((■)+([a-zA-Z]){■})\()[0-2])((■){■}){■}fail dot
  460    |  5     ((((■■){■}([a-zA-Z])+)■)[0-2])■fail dotstar or empty
  461    |  5     ((((■■)+([a-zA-Z])+)■)■)■fail dotstar or empty
  462    |  5     (((((■■)■)+([a-zA-Z])+)■)[0-2])■fail dot
  463    |  5     (((((■|■)■)+([a-zA-Z])+)■)[0-2])■fail dot
  464    |  5     (((((■){■}■)+([a-zA-Z])+)■)[0-2])■fail dot
  465    |  5     ((((■(■■))+([a-zA-Z])+)■)[0-2])■fail dot
  466    |  5     ((((■(■|■))+([a-zA-Z])+)■)[0-2])■fail dot
  467    |  5     ((((■(■){■})+([a-zA-Z])+)■)[0-2])■fail dot
  468    |  5     ((((■■)+([a-zA-Z])+)(■■))[0-2])■fail dot
  469    |  5     ((((■■)+([a-zA-Z])+)(■|■))[0-2])■fail dot
  470    |  5     ((((■■)+([a-zA-Z])+)(■){■})[0-2])■fail dot
  471    |  5     ((((■■)+([a-zA-Z])+)■)[0-2])(■■)fail dot
  472    |  5     ((((■■)+([a-zA-Z])+)■)[0-2])(■|■)fail dot
  473    |  5     ((((■■)+([a-zA-Z])+)■)[0-2])(■){■}fail dot
  474    |  5     (((((■|■)){■}([a-zA-Z])+)■)[0-2])■fail dotstar or empty
  475    |  5     (((((■|■))+([a-zA-Z])+)■)■)■fail dotstar or empty
  476    |  5     (((((■■|■))+([a-zA-Z])+)■)[0-2])■fail dot
  477    |  5     ((((((■|■)|■))+([a-zA-Z])+)■)[0-2])■fail dot
  478    |  5     ((((((■){■}|■))+([a-zA-Z])+)■)[0-2])■fail dot
  479    |  5     (((((■|■■))+([a-zA-Z])+)■)[0-2])■fail dot
  480    |  5     (((((■|(■|■)))+([a-zA-Z])+)■)[0-2])■fail dot
  481    |  5     (((((■|(■){■}))+([a-zA-Z])+)■)[0-2])■fail dot
  482    |  5     (((((■|■))+([a-zA-Z])+)(■■))[0-2])■fail dot
  483    |  5     (((((■|■))+([a-zA-Z])+)(■|■))[0-2])■fail dot
  484    |  5     (((((■|■))+([a-zA-Z])+)(■){■})[0-2])■fail dot
  485    |  5     (((((■|■))+([a-zA-Z])+)■)[0-2])(■■)fail dot
  486    |  5     (((((■|■))+([a-zA-Z])+)■)[0-2])(■|■)fail dot
  487    |  5     (((((■|■))+([a-zA-Z])+)■)[0-2])(■){■}fail dot
  488    |  5     (((((■){■}){■}([a-zA-Z])+)■)[0-2])■fail dotstar or empty
  489    |  5     (((((■){■})+([a-zA-Z])+)■)■)■fail dotstar or empty
  490    |  5     (((((■■){■})+([a-zA-Z])+)■)[0-2])■fail dot
  491    |  5     ((((((■|■)){■})+([a-zA-Z])+)■)[0-2])■fail dot
  492    |  5     ((((((■){■}){■})+([a-zA-Z])+)■)[0-2])■fail dot
  493    |  5     (((((■){■})+([a-zA-Z])+)(■■))[0-2])■fail dot
  494    |  5     (((((■){■})+([a-zA-Z])+)(■|■))[0-2])■fail dot
  495    |  5     (((((■){■})+([a-zA-Z])+)(■){■})[0-2])■fail dot
  496    |  5     (((((■){■})+([a-zA-Z])+)■)[0-2])(■■)fail dot
  497    |  5     (((((■){■})+([a-zA-Z])+)■)[0-2])(■|■)fail dot
  498    |  5     (((((■){■})+([a-zA-Z])+)■)[0-2])(■){■}fail dot
  499    |  5     ((((■){■}([a-zA-Z])+)(■■))[0-2])■fail dotstar or empty
  500    |  5     ((((■)+(■)+)(■■))[0-2])■fail dotstar or empty
  501    |  5     ((((■)+([a-zA-Z]){■})(■■))[0-2])■fail dotstar or empty
  502    |  5     ((((■)+([a-zA-Z])+)(■■))■)■fail dotstar or empty
  503    |  5     ((((■)+([a-zA-Z])+)(■))[0-2])■fail dotstar or empty
  504    |  5     ((((■)+([a-zA-Z])+)((■■)■))[0-2])■fail dot
  505    |  5     ((((■)+([a-zA-Z])+)((■|■)■))[0-2])■fail dot
  506    |  5     ((((■)+([a-zA-Z])+)((■){■}■))[0-2])■fail dot
  507    |  5     ((((■)+([a-zA-Z])+)(■■))[0-2])(■■)fail dot
  508    |  5     ((((■)+([a-zA-Z])+)(■■))[0-2])(■|■)fail dot
  509    |  5     ((((■)+([a-zA-Z])+)(■■))[0-2])(■){■}fail dot
  510    |  5     ((((■){■}([a-zA-Z])+)(■|■))[0-2])■fail dotstar or empty
  511    |  5     ((((■)+(■)+)(■|■))[0-2])■fail dotstar or empty
  512    |  5     ((((■)+([a-zA-Z]){■})(■|■))[0-2])■fail dotstar or empty
  513    |  5     ((((■)+([a-zA-Z])+)(■|■))■)■fail dotstar or empty
  514    |  5     ((((■)+([a-zA-Z])+)(■■|■))[0-2])■fail dot
  515    |  5     ((((■)+([a-zA-Z])+)((■|■)|■))[0-2])■fail dot
  516    |  5     ((((■)+([a-zA-Z])+)((■){■}|■))[0-2])■fail dot
  517    |  5     ((((■)+([a-zA-Z])+)(■|■))[0-2])(■■)fail dot
  518    |  5     ((((■)+([a-zA-Z])+)(■|■))[0-2])(■|■)fail dot
  519    |  5     ((((■)+([a-zA-Z])+)(■|■))[0-2])(■){■}fail dot
  520    |  5     ((((■){■}([a-zA-Z])+)(■){■})[0-2])■fail dotstar or empty
  521    |  5     ((((■)+(■)+)(■){■})[0-2])■fail dotstar or empty
  522    |  5     ((((■)+([a-zA-Z]){■})(■){■})[0-2])■fail dotstar or empty
  523    |  5     ((((■)+([a-zA-Z])+)(■){■})■)■fail dotstar or empty
  524    |  5     ((((■)+([a-zA-Z])+)(■■){■})[0-2])■fail dot
  525    |  5     ((((■)+([a-zA-Z])+)((■|■)){■})[0-2])■fail dot
  526    |  5     ((((■)+([a-zA-Z])+)((■){■}){■})[0-2])■fail dot
  527    |  5     ((((■)+([a-zA-Z])+)(■){■})[0-2])(■■)fail dot
  528    |  5     ((((■)+([a-zA-Z])+)(■){■})[0-2])(■|■)fail dot
  529    |  5     ((((■)+([a-zA-Z])+)(■){■})[0-2])(■){■}fail dot
  530    |  5     ((((■){■}([a-zA-Z])+)■)[0-2])(■■)fail dotstar or empty
  531    |  5     ((((■)+([a-zA-Z])+)■)■)(■■)fail dotstar or empty
  532    |  5     ((((■)+([a-zA-Z])+)■)[0-2])(■)fail dotstar or empty
  533    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■■)■)fail dot
  534    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■|■)■)fail dot
  535    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■){■}■)fail dot
  536    |  5     ((((■){■}([a-zA-Z])+)■)[0-2])(■|■)fail dotstar or empty
  537    |  5     ((((■)+([a-zA-Z])+)■)■)(■|■)fail dotstar or empty
  538    |  5     ((((■)+([a-zA-Z])+)■)[0-2])(■■|■)fail dot
  539    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■|■)|■)fail dot
  540    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■){■}|■)fail dot
  541    |  5     ((((■){■}([a-zA-Z])+)■)[0-2])(■){■}fail dotstar or empty
  542    |  5     ((((■)+([a-zA-Z])+)■)■)(■){■}fail dotstar or empty
  543    |  5     ((((■)+([a-zA-Z])+)■)[0-2])(■■){■}fail dot
  544    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■|■)){■}fail dot
  545    |  5     ((((■)+([a-zA-Z])+)■)[0-2])((■){■}){■}fail dot
  546    |  5     (((([a-zA-Z]){■}(■){■})■)■)\)fail dotstar or empty
  547    |  5     (((([a-zA-Z]){■}(■){■})■)[0-2])■fail dotstar or empty
  548    |  5     (((([a-zA-Z]){■}(■){■})\()■)■fail dotstar or empty
  549    |  5     (((([a-zA-Z]){■}(■)+)■)■)■fail dotstar or empty
  550    |  5     (((■(■)+)■)■)\)         fail dotstar or empty
  551    |  5     (((■(■)+)■)[0-2])■      fail dotstar or empty
  552    |  5     (((■(■)+)\()■)■         fail dotstar or empty
  553    |  5     (((([a-zA-Z]){■}(■■){■})\()[0-2])■fail dotstar or empty
  554    |  5     (((([a-zA-Z]){■}(■■)+)■)[0-2])■fail dotstar or empty
  555    |  5     (((([a-zA-Z]){■}(■■)+)\()■)■fail dotstar or empty
  556    |  5     (((■(■■)+)\()[0-2])■    fail dotstar or empty
  557    |  5     (((([a-zA-Z]){■}((■■)■)+)\()[0-2])■fail dot
  558    |  5     (((([a-zA-Z]){■}((■|■)■)+)\()[0-2])■fail dot
  559    |  5     (((([a-zA-Z]){■}((■){■}■)+)\()[0-2])■fail dot
  560    |  5     (((([a-zA-Z]){■}(■(■■))+)\()[0-2])■fail dot
  561    |  5     (((([a-zA-Z]){■}(■(■|■))+)\()[0-2])■fail dot
  562    |  5     (((([a-zA-Z]){■}(■(■){■})+)\()[0-2])■fail dot
  563    |  5     (((([a-zA-Z]){■}(■■)+)\()[0-2])(■■)fail dot
  564    |  5     (((([a-zA-Z]){■}(■■)+)\()[0-2])(■|■)fail dot
  565    |  5     (((([a-zA-Z]){■}(■■)+)\()[0-2])(■){■}fail dot
  566    |  5     (((([a-zA-Z]){■}((■|■)){■})\()[0-2])■fail dotstar or empty
  567    |  5     (((([a-zA-Z]){■}((■|■))+)■)[0-2])■fail dotstar or empty
  568    |  5     (((([a-zA-Z]){■}((■|■))+)\()■)■fail dotstar or empty
  569    |  5     (((■((■|■))+)\()[0-2])■ fail dotstar or empty
  570    |  5     (((([a-zA-Z]){■}((■■|■))+)\()[0-2])■fail dot
  571    |  5     (((([a-zA-Z]){■}(((■|■)|■))+)\()[0-2])■fail dot
  572    |  5     (((([a-zA-Z]){■}(((■){■}|■))+)\()[0-2])■fail dot
  573    |  5     (((([a-zA-Z]){■}((■|■■))+)\()[0-2])■fail dot
  574    |  5     (((([a-zA-Z]){■}((■|(■|■)))+)\()[0-2])■fail dot
  575    |  5     (((([a-zA-Z]){■}((■|(■){■}))+)\()[0-2])■fail dot
  576    |  5     (((([a-zA-Z]){■}((■|■))+)\()[0-2])(■■)fail dot
  577    |  5     (((([a-zA-Z]){■}((■|■))+)\()[0-2])(■|■)fail dot
  578    |  5     (((([a-zA-Z]){■}((■|■))+)\()[0-2])(■){■}fail dot
  579    |  5     (((([a-zA-Z]){■}((■){■}){■})\()[0-2])■fail dotstar or empty
  580    |  5     (((([a-zA-Z]){■}((■){■})+)■)[0-2])■fail dotstar or empty
  581    |  5     (((([a-zA-Z]){■}((■){■})+)\()■)■fail dotstar or empty
  582    |  5     (((■((■){■})+)\()[0-2])■fail dotstar or empty
  583    |  5     (((([a-zA-Z]){■}((■■){■})+)\()[0-2])■fail dot
  584    |  5     (((([a-zA-Z]){■}(((■|■)){■})+)\()[0-2])■fail dot
  585    |  5     (((([a-zA-Z]){■}(((■){■}){■})+)\()[0-2])■fail dot
  586    |  5     (((([a-zA-Z]){■}((■){■})+)\()[0-2])(■■)fail dot
  587    |  5     (((([a-zA-Z]){■}((■){■})+)\()[0-2])(■|■)fail dot
  588    |  5     (((([a-zA-Z]){■}((■){■})+)\()[0-2])(■){■}fail dot
  589    |  5     (((([a-zA-Z]){■}(■){■})\()[0-2])(■■)fail dotstar or empty
  590    |  5     (((([a-zA-Z]){■}(■)+)■)[0-2])(■■)fail dotstar or empty
  591    |  5     (((([a-zA-Z]){■}(■)+)\()■)(■■)fail dotstar or empty
  592    |  5     (((■(■)+)\()[0-2])(■■)  fail dotstar or empty
  593    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])(■)fail dotstar or empty
  594    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■■)■)fail dot
  595    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■|■)■)fail dot
  596    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■){■}■)fail dot
  597    |  5     (((([a-zA-Z]){■}(■){■})\()[0-2])(■|■)fail dotstar or empty
  598    |  5     (((([a-zA-Z]){■}(■)+)■)[0-2])(■|■)fail dotstar or empty
  599    |  5     (((([a-zA-Z]){■}(■)+)\()■)(■|■)fail dotstar or empty
  600    |  5     (((■(■)+)\()[0-2])(■|■) fail dotstar or empty
  601    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])(■■|■)fail dot
  602    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■|■)|■)fail dot
  603    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■){■}|■)fail dot
  604    |  5     (((([a-zA-Z]){■}(■){■})\()[0-2])(■){■}fail dotstar or empty
  605    |  5     (((([a-zA-Z]){■}(■)+)■)[0-2])(■){■}fail dotstar or empty
  606    |  5     (((([a-zA-Z]){■}(■)+)\()■)(■){■}fail dotstar or empty
  607    |  5     (((■(■)+)\()[0-2])(■){■}fail dotstar or empty
  608    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])(■■){■}fail dot
  609    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■|■)){■}fail dot
  610    |  5     (((([a-zA-Z]){■}(■)+)\()[0-2])((■){■}){■}fail dot
  611    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})■)■)■fail dotstar or empty
  612    |  5     (((■([a-zA-Z]){■})■)■)\)fail dotstar or empty
  613    |  5     (((([a-zA-Z]){■}■)■)■)\)fail dotstar or empty
  614    |  5     (((■([a-zA-Z]){■})■)[0-2])■fail dotstar or empty
  615    |  5     (((([a-zA-Z]){■}■)■)[0-2])■fail dotstar or empty
  616    |  5     (((■■)■)[0-2])\)        fail dotstar or empty
  617    |  5     (((■([a-zA-Z]){■})\()■)■fail dotstar or empty
  618    |  5     (((([a-zA-Z]){■}■)\()■)■fail dotstar or empty
  619    |  5     (((■■)\()■)\)           fail dotstar or empty
  620    |  5     (((■■)\()[0-2])■        fail dotstar or empty
  621    |  5     (((■)\()[0-2])\)        fail dotstar or empty
  622    |  5     (((■([a-zA-Z])+)■)■)■   fail dotstar or empty
  623    |  5     (((([a-zA-Z]){■}(■)+)(■■))[0-2])■fail dotstar or empty
  624    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})(■■))[0-2])■fail dotstar or empty
  625    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■■))■)■fail dotstar or empty
  626    |  5     (((■([a-zA-Z])+)(■■))[0-2])■fail dotstar or empty
  627    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■))[0-2])■fail dotstar or empty
  628    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■■)■))[0-2])■fail dot
  629    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■|■)■))[0-2])■fail dot
  630    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■){■}■))[0-2])■fail dot
  631    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■■))[0-2])(■■)fail dot
  632    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■■))[0-2])(■|■)fail dot
  633    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■■))[0-2])(■){■}fail dot
  634    |  5     (((([a-zA-Z]){■}(■)+)(■|■))[0-2])■fail dotstar or empty
  635    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})(■|■))[0-2])■fail dotstar or empty
  636    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■|■))■)■fail dotstar or empty
  637    |  5     (((■([a-zA-Z])+)(■|■))[0-2])■fail dotstar or empty
  638    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■■|■))[0-2])■fail dot
  639    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■|■)|■))[0-2])■fail dot
  640    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■){■}|■))[0-2])■fail dot
  641    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■|■))[0-2])(■■)fail dot
  642    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■|■))[0-2])(■|■)fail dot
  643    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■|■))[0-2])(■){■}fail dot
  644    |  5     (((([a-zA-Z]){■}(■)+)(■){■})[0-2])■fail dotstar or empty
  645    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})(■){■})[0-2])■fail dotstar or empty
  646    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■){■})■)■fail dotstar or empty
  647    |  5     (((■([a-zA-Z])+)(■){■})[0-2])■fail dotstar or empty
  648    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■■){■})[0-2])■fail dot
  649    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■|■)){■})[0-2])■fail dot
  650    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)((■){■}){■})[0-2])■fail dot
  651    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■){■})[0-2])(■■)fail dot
  652    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■){■})[0-2])(■|■)fail dot
  653    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)(■){■})[0-2])(■){■}fail dot
  654    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})■)[0-2])(■■)fail dotstar or empty
  655    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)■)(■■)fail dotstar or empty
  656    |  5     (((■([a-zA-Z])+)■)[0-2])(■■)fail dotstar or empty
  657    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])(■)fail dotstar or empty
  658    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■■)■)fail dot
  659    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■|■)■)fail dot
  660    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■){■}■)fail dot
  661    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})■)[0-2])(■|■)fail dotstar or empty
  662    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)■)(■|■)fail dotstar or empty
  663    |  5     (((■([a-zA-Z])+)■)[0-2])(■|■)fail dotstar or empty
  664    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])(■■|■)fail dot
  665    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■|■)|■)fail dot
  666    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■){■}|■)fail dot
  667    |  5     (((([a-zA-Z]){■}([a-zA-Z]){■})■)[0-2])(■){■}fail dotstar or empty
  668    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)■)(■){■}fail dotstar or empty
  669    |  5     (((■([a-zA-Z])+)■)[0-2])(■){■}fail dotstar or empty
  670    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])(■■){■}fail dot
  671    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■|■)){■}fail dot
  672    |  5     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])((■){■}){■}fail dot
  673    |  5     (((([a-zA-Z])+(■){■})■)■)■fail dotstar or empty
  674    |  5     (((([a-zA-Z])+(■■){■})■)[0-2])■fail dotstar or empty
  675    |  5     (((([a-zA-Z])+(■■){■})\()■)■fail dotstar or empty
  676    |  5     (((([a-zA-Z])+((■■)■){■})\()[0-2])■fail dot
  677    |  5     (((([a-zA-Z])+((■|■)■){■})\()[0-2])■fail dot
  678    |  5     (((([a-zA-Z])+((■){■}■){■})\()[0-2])■fail dot
  679    |  5     (((([a-zA-Z])+(■■){■})\()[0-2])(■■)fail dot
  680    |  5     (((([a-zA-Z])+(■■){■})\()[0-2])(■|■)fail dot
  681    |  5     (((([a-zA-Z])+(■■){■})\()[0-2])(■){■}fail dot
  682    |  5     (((([a-zA-Z])+((■|■)){■})■)[0-2])■fail dotstar or empty
  683    |  5     (((([a-zA-Z])+((■|■)){■})\()■)■fail dotstar or empty
  684    |  5     (((([a-zA-Z])+((■■|■)){■})\()[0-2])■fail dot
  685    |  5     (((([a-zA-Z])+(((■|■)|■)){■})\()[0-2])■fail dot
  686    |  5     (((([a-zA-Z])+(((■){■}|■)){■})\()[0-2])■fail dot
  687    |  5     (((([a-zA-Z])+((■|■)){■})\()[0-2])(■■)fail dot
  688    |  5     (((([a-zA-Z])+((■|■)){■})\()[0-2])(■|■)fail dot
  689    |  5     (((([a-zA-Z])+((■|■)){■})\()[0-2])(■){■}fail dot
  690    |  5     (((([a-zA-Z])+((■){■}){■})■)[0-2])■fail dotstar or empty
  691    |  5     (((([a-zA-Z])+((■){■}){■})\()■)■fail dotstar or empty
  692    |  5     (((([a-zA-Z])+((■■){■}){■})\()[0-2])■fail dot
  693    |  5     (((([a-zA-Z])+(((■|■)){■}){■})\()[0-2])■fail dot
  694    |  5     (((([a-zA-Z])+(((■){■}){■}){■})\()[0-2])■fail dot
  695    |  5     (((([a-zA-Z])+((■){■}){■})\()[0-2])(■■)fail dot
  696    |  5     (((([a-zA-Z])+((■){■}){■})\()[0-2])(■|■)fail dot
  697    |  5     (((([a-zA-Z])+((■){■}){■})\()[0-2])(■){■}fail dot
  698    |  5     (((([a-zA-Z])+(■){■})■)[0-2])(■■)fail dotstar or empty
  699    |  5     (((([a-zA-Z])+(■){■})\()■)(■■)fail dotstar or empty
  700    |  5     (((([a-zA-Z])+■)\()[0-2])(■■)fail dotstar or empty
  701    |  5     (((([a-zA-Z])+(■){■})\()[0-2])(■)fail dotstar or empty
  702    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■■)■)fail dot
  703    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■|■)■)fail dot
  704    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■){■}■)fail dot
  705    |  5     (((([a-zA-Z])+(■){■})■)[0-2])(■|■)fail dotstar or empty
  706    |  5     (((([a-zA-Z])+(■){■})\()■)(■|■)fail dotstar or empty
  707    |  5     (((([a-zA-Z])+■)\()[0-2])(■|■)fail dotstar or empty
  708    |  5     (((([a-zA-Z])+(■){■})\()[0-2])(■■|■)fail dot
  709    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■|■)|■)fail dot
  710    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■){■}|■)fail dot
  711    |  5     (((([a-zA-Z])+(■){■})■)[0-2])(■){■}fail dotstar or empty
  712    |  5     (((([a-zA-Z])+(■){■})\()■)(■){■}fail dotstar or empty
  713    |  5     (((([a-zA-Z])+■)\()[0-2])(■){■}fail dotstar or empty
  714    |  5     (((([a-zA-Z])+(■){■})\()[0-2])(■■){■}fail dot
  715    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■|■)){■}fail dot
  716    |  5     (((([a-zA-Z])+(■){■})\()[0-2])((■){■}){■}fail dot
  717    |  5     (((([a-zA-Z])+(■■)+)■)■)■fail dotstar or empty
  718    |  5     (((([a-zA-Z])+((■■)■)+)■)[0-2])■fail dot
  719    |  5     (((([a-zA-Z])+((■|■)■)+)■)[0-2])■fail dot
  720    |  5     (((([a-zA-Z])+((■){■}■)+)■)[0-2])■fail dot
  721    |  5     (((([a-zA-Z])+(■(■■))+)■)[0-2])■fail dot
  722    |  5     (((([a-zA-Z])+(■(■|■))+)■)[0-2])■fail dot
  723    |  5     (((([a-zA-Z])+(■(■){■})+)■)[0-2])■fail dot
  724    |  5     (((([a-zA-Z])+(■■)+)(■■))[0-2])■fail dot
  725    |  5     (((([a-zA-Z])+(■■)+)(■|■))[0-2])■fail dot
  726    |  5     (((([a-zA-Z])+(■■)+)(■){■})[0-2])■fail dot
  727    |  5     (((([a-zA-Z])+(■■)+)■)[0-2])(■■)fail dot
  728    |  5     (((([a-zA-Z])+(■■)+)■)[0-2])(■|■)fail dot
  729    |  5     (((([a-zA-Z])+(■■)+)■)[0-2])(■){■}fail dot
  730    |  5     (((([a-zA-Z])+((■|■))+)■)■)■fail dotstar or empty
  731    |  5     (((([a-zA-Z])+((■■|■))+)■)[0-2])■fail dot
  732    |  5     (((([a-zA-Z])+(((■|■)|■))+)■)[0-2])■fail dot
  733    |  5     (((([a-zA-Z])+(((■){■}|■))+)■)[0-2])■fail dot
  734    |  5     (((([a-zA-Z])+((■|■■))+)■)[0-2])■fail dot
  735    |  5     (((([a-zA-Z])+((■|(■|■)))+)■)[0-2])■fail dot
  736    |  5     (((([a-zA-Z])+((■|(■){■}))+)■)[0-2])■fail dot
  737    |  5     (((([a-zA-Z])+((■|■))+)(■■))[0-2])■fail dot
  738    |  5     (((([a-zA-Z])+((■|■))+)(■|■))[0-2])■fail dot
  739    |  5     (((([a-zA-Z])+((■|■))+)(■){■})[0-2])■fail dot
  740    |  5     (((([a-zA-Z])+((■|■))+)■)[0-2])(■■)fail dot
  741    |  5     (((([a-zA-Z])+((■|■))+)■)[0-2])(■|■)fail dot
  742    |  5     (((([a-zA-Z])+((■|■))+)■)[0-2])(■){■}fail dot
  743    |  5     (((([a-zA-Z])+((■){■})+)■)■)■fail dotstar or empty
  744    |  5     (((([a-zA-Z])+((■■){■})+)■)[0-2])■fail dot
  745    |  5     (((([a-zA-Z])+(((■|■)){■})+)■)[0-2])■fail dot
  746    |  5     (((([a-zA-Z])+(((■){■}){■})+)■)[0-2])■fail dot
  747    |  5     (((([a-zA-Z])+((■){■})+)(■■))[0-2])■fail dot
  748    |  5     (((([a-zA-Z])+((■){■})+)(■|■))[0-2])■fail dot
  749    |  5     (((([a-zA-Z])+((■){■})+)(■){■})[0-2])■fail dot
  750    |  5     (((([a-zA-Z])+((■){■})+)■)[0-2])(■■)fail dot
  751    |  5     (((([a-zA-Z])+((■){■})+)■)[0-2])(■|■)fail dot
  752    |  5     (((([a-zA-Z])+((■){■})+)■)[0-2])(■){■}fail dot
  753    |  5     (((([a-zA-Z])+(■){■})(■■))[0-2])■fail dotstar or empty
  754    |  5     (((([a-zA-Z])+(■)+)(■■))■)■fail dotstar or empty
  755    |  5     (((([a-zA-Z])+(■)+)(■))[0-2])■fail dotstar or empty
  756    |  5     (((([a-zA-Z])+(■)+)((■■)■))[0-2])■fail dot
  757    |  5     (((([a-zA-Z])+(■)+)((■|■)■))[0-2])■fail dot
  758    |  5     (((([a-zA-Z])+(■)+)((■){■}■))[0-2])■fail dot
  759    |  5     (((([a-zA-Z])+(■)+)(■■))[0-2])(■■)fail dot
  760    |  5     (((([a-zA-Z])+(■)+)(■■))[0-2])(■|■)fail dot
  761    |  5     (((([a-zA-Z])+(■)+)(■■))[0-2])(■){■}fail dot
  762    |  5     (((([a-zA-Z])+(■){■})(■|■))[0-2])■fail dotstar or empty
  763    |  5     (((([a-zA-Z])+(■)+)(■|■))■)■fail dotstar or empty
  764    |  5     (((([a-zA-Z])+(■)+)(■■|■))[0-2])■fail dot
  765    |  5     (((([a-zA-Z])+(■)+)((■|■)|■))[0-2])■fail dot
  766    |  5     (((([a-zA-Z])+(■)+)((■){■}|■))[0-2])■fail dot
  767    |  5     (((([a-zA-Z])+(■)+)(■|■))[0-2])(■■)fail dot
  768    |  5     (((([a-zA-Z])+(■)+)(■|■))[0-2])(■|■)fail dot
  769    |  5     (((([a-zA-Z])+(■)+)(■|■))[0-2])(■){■}fail dot
  770    |  5     (((([a-zA-Z])+(■){■})(■){■})[0-2])■fail dotstar or empty
  771    |  5     (((([a-zA-Z])+(■)+)(■){■})■)■fail dotstar or empty
  772    |  5     (((([a-zA-Z])+(■)+)(■■){■})[0-2])■fail dot
  773    |  5     (((([a-zA-Z])+(■)+)((■|■)){■})[0-2])■fail dot
  774    |  5     (((([a-zA-Z])+(■)+)((■){■}){■})[0-2])■fail dot
  775    |  5     (((([a-zA-Z])+(■)+)(■){■})[0-2])(■■)fail dot
  776    |  5     (((([a-zA-Z])+(■)+)(■){■})[0-2])(■|■)fail dot
  777    |  5     (((([a-zA-Z])+(■)+)(■){■})[0-2])(■){■}fail dot
  778    |  5     (((([a-zA-Z])+(■)+)■)■)(■■)fail dotstar or empty
  779    |  5     (((([a-zA-Z])+(■)+)■)[0-2])(■)fail dotstar or empty
  780    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■■)■)fail dot
  781    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■|■)■)fail dot
  782    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■){■}■)fail dot
  783    |  5     (((([a-zA-Z])+(■)+)■)■)(■|■)fail dotstar or empty
  784    |  5     (((([a-zA-Z])+(■)+)■)[0-2])(■■|■)fail dot
  785    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■|■)|■)fail dot
  786    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■){■}|■)fail dot
  787    |  5     (((([a-zA-Z])+(■)+)■)■)(■){■}fail dotstar or empty
  788    |  5     (((([a-zA-Z])+(■)+)■)[0-2])(■■){■}fail dot
  789    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■|■)){■}fail dot
  790    |  5     (((([a-zA-Z])+(■)+)■)[0-2])((■){■}){■}fail dot
  791    |  5     (((([a-zA-Z])+((■■)■)+)\()■)■fail dot
  792    |  5     (((([a-zA-Z])+((■|■)■)+)\()■)■fail dot
  793    |  5     (((([a-zA-Z])+((■){■}■)+)\()■)■fail dot
  794    |  5     (((([a-zA-Z])+(■(■■))+)\()■)■fail dot
  795    |  5     (((([a-zA-Z])+(■(■|■))+)\()■)■fail dot
  796    |  5     (((([a-zA-Z])+(■(■){■})+)\()■)■fail dot
  797    |  5     (((([a-zA-Z])+(■■)+)\()(■■))■fail dot
  798    |  5     (((([a-zA-Z])+(■■)+)\()(■|■))■fail dot
  799    |  5     (((([a-zA-Z])+(■■)+)\()(■){■})■fail dot
  800    |  5     (((([a-zA-Z])+(■■)+)\()■)(■■)fail dot
  801    |  5     (((([a-zA-Z])+(■■)+)\()■)(■|■)fail dot
  802    |  5     (((([a-zA-Z])+(■■)+)\()■)(■){■}fail dot
  803    |  5     (((([a-zA-Z])+((■■|■))+)\()■)■fail dot
  804    |  5     (((([a-zA-Z])+(((■|■)|■))+)\()■)■fail dot
  805    |  5     (((([a-zA-Z])+(((■){■}|■))+)\()■)■fail dot
  806    |  5     (((([a-zA-Z])+((■|■■))+)\()■)■fail dot
  807    |  5     (((([a-zA-Z])+((■|(■|■)))+)\()■)■fail dot
  808    |  5     (((([a-zA-Z])+((■|(■){■}))+)\()■)■fail dot
  809    |  5     (((([a-zA-Z])+((■|■))+)\()(■■))■fail dot
  810    |  5     (((([a-zA-Z])+((■|■))+)\()(■|■))■fail dot
  811    |  5     (((([a-zA-Z])+((■|■))+)\()(■){■})■fail dot
  812    |  5     (((([a-zA-Z])+((■|■))+)\()■)(■■)fail dot
  813    |  5     (((([a-zA-Z])+((■|■))+)\()■)(■|■)fail dot
  814    |  5     (((([a-zA-Z])+((■|■))+)\()■)(■){■}fail dot
  815    |  5     (((([a-zA-Z])+((■■){■})+)\()■)■fail dot
  816    |  5     (((([a-zA-Z])+(((■|■)){■})+)\()■)■fail dot
  817    |  5     (((([a-zA-Z])+(((■){■}){■})+)\()■)■fail dot
  818    |  5     (((([a-zA-Z])+((■){■})+)\()(■■))■fail dot
  819    |  5     (((([a-zA-Z])+((■){■})+)\()(■|■))■fail dot
  820    |  5     (((([a-zA-Z])+((■){■})+)\()(■){■})■fail dot
  821    |  5     (((([a-zA-Z])+((■){■})+)\()■)(■■)fail dot
  822    |  5     (((([a-zA-Z])+((■){■})+)\()■)(■|■)fail dot
  823    |  5     (((([a-zA-Z])+((■){■})+)\()■)(■){■}fail dot
  824    |  5     ((((■)+(■)+)\()(■■))■   fail dotstar or empty
  825    |  5     (((([a-zA-Z]){■}(■)+)\()(■■))■fail dotstar or empty
  826    |  5     (((([a-zA-Z])+(■){■})\()(■■))■fail dotstar or empty
  827    |  5     (((([a-zA-Z])+(■)+)■)(■■))■fail dotstar or empty
  828    |  5     (((([a-zA-Z])+(■)+)\()(■))■fail dotstar or empty
  829    |  5     (((([a-zA-Z])+(■)+)\()((■■)■))■fail dot
  830    |  5     (((([a-zA-Z])+(■)+)\()((■|■)■))■fail dot
  831    |  5     (((([a-zA-Z])+(■)+)\()((■){■}■))■fail dot
  832    |  5     (((([a-zA-Z])+(■)+)\()(■■))(■■)fail dot
  833    |  5     (((([a-zA-Z])+(■)+)\()(■■))(■|■)fail dot
  834    |  5     (((([a-zA-Z])+(■)+)\()(■■))(■){■}fail dot
  835    |  5     ((((■)+(■)+)\()(■|■))■  fail dotstar or empty
  836    |  5     (((([a-zA-Z]){■}(■)+)\()(■|■))■fail dotstar or empty
  837    |  5     (((([a-zA-Z])+(■){■})\()(■|■))■fail dotstar or empty
  838    |  5     (((([a-zA-Z])+(■)+)■)(■|■))■fail dotstar or empty
  839    |  5     (((([a-zA-Z])+(■)+)\()(■■|■))■fail dot
  840    |  5     (((([a-zA-Z])+(■)+)\()((■|■)|■))■fail dot
  841    |  5     (((([a-zA-Z])+(■)+)\()((■){■}|■))■fail dot
  842    |  5     (((([a-zA-Z])+(■)+)\()(■|■))(■■)fail dot
  843    |  5     (((([a-zA-Z])+(■)+)\()(■|■))(■|■)fail dot
  844    |  5     (((([a-zA-Z])+(■)+)\()(■|■))(■){■}fail dot
  845    |  5     ((((■)+(■)+)\()(■){■})■ fail dotstar or empty
  846    |  5     (((([a-zA-Z]){■}(■)+)\()(■){■})■fail dotstar or empty
  847    |  5     (((([a-zA-Z])+(■){■})\()(■){■})■fail dotstar or empty
  848    |  5     (((([a-zA-Z])+(■)+)■)(■){■})■fail dotstar or empty
  849    |  5     (((([a-zA-Z])+(■)+)\()(■■){■})■fail dot
  850    |  5     (((([a-zA-Z])+(■)+)\()((■|■)){■})■fail dot
  851    |  5     (((([a-zA-Z])+(■)+)\()((■){■}){■})■fail dot
  852    |  5     (((([a-zA-Z])+(■)+)\()(■){■})(■■)fail dot
  853    |  5     (((([a-zA-Z])+(■)+)\()(■){■})(■|■)fail dot
  854    |  5     (((([a-zA-Z])+(■)+)\()(■){■})(■){■}fail dot
  855    |  5     (((([a-zA-Z])+(■)+)\()■)(■)fail dotstar or empty
  856    |  5     (((([a-zA-Z])+(■)+)\()■)((■■)■)fail dot
  857    |  5     (((([a-zA-Z])+(■)+)\()■)((■|■)■)fail dot
  858    |  5     (((([a-zA-Z])+(■)+)\()■)((■){■}■)fail dot
  859    |  5     (((([a-zA-Z])+(■)+)\()■)(■■|■)fail dot
  860    |  5     (((([a-zA-Z])+(■)+)\()■)((■|■)|■)fail dot
  861    |  5     (((([a-zA-Z])+(■)+)\()■)((■){■}|■)fail dot
  862    |  5     (((([a-zA-Z])+(■)+)\()■)(■■){■}fail dot
  863    |  5     (((([a-zA-Z])+(■)+)\()■)((■|■)){■}fail dot
  864    |  5     (((([a-zA-Z])+(■)+)\()■)((■){■}){■}fail dot
  865    |  5     (((([a-zA-Z])+((■)■)+)\()[0-2])■fail dotstar or empty
  866    |  5     (((([a-zA-Z])+(((■■)■)■)+)\()[0-2])■fail dot
  867    |  5     (((([a-zA-Z])+(((■|■)■)■)+)\()[0-2])■fail dot
  868    |  5     (((([a-zA-Z])+(((■){■}■)■)+)\()[0-2])■fail dot
  869    |  5     (((([a-zA-Z])+((■(■■))■)+)\()[0-2])■fail dot
  870    |  5     (((([a-zA-Z])+((■(■|■))■)+)\()[0-2])■fail dot
  871    |  5     (((([a-zA-Z])+((■(■){■})■)+)\()[0-2])■fail dot
  872    |  5     (((([a-zA-Z])+((■■)(■■))+)\()[0-2])■fail dot
  873    |  5     (((([a-zA-Z])+((■■)(■|■))+)\()[0-2])■fail dot
  874    |  5     (((([a-zA-Z])+((■■)(■){■})+)\()[0-2])■fail dot
  875    |  5     (((([a-zA-Z])+((■■)■)+)\()[0-2])(■■)fail dot
  876    |  5     (((([a-zA-Z])+((■■)■)+)\()[0-2])(■|■)fail dot
  877    |  5     (((([a-zA-Z])+((■■)■)+)\()[0-2])(■){■}fail dot
  878    |  5     (((([a-zA-Z])+((■■|■)■)+)\()[0-2])■fail dot
  879    |  5     (((([a-zA-Z])+(((■|■)|■)■)+)\()[0-2])■fail dot
  880    |  5     (((([a-zA-Z])+(((■){■}|■)■)+)\()[0-2])■fail dot
  881    |  5     (((([a-zA-Z])+((■|■■)■)+)\()[0-2])■fail dot
  882    |  5     (((([a-zA-Z])+((■|(■|■))■)+)\()[0-2])■fail dot
  883    |  5     (((([a-zA-Z])+((■|(■){■})■)+)\()[0-2])■fail dot
  884    |  5     (((([a-zA-Z])+((■|■)(■■))+)\()[0-2])■fail dot
  885    |  5     (((([a-zA-Z])+((■|■)(■|■))+)\()[0-2])■fail dot
  886    |  5     (((([a-zA-Z])+((■|■)(■){■})+)\()[0-2])■fail dot
  887    |  5     (((([a-zA-Z])+((■|■)■)+)\()[0-2])(■■)fail dot
  888    |  5     (((([a-zA-Z])+((■|■)■)+)\()[0-2])(■|■)fail dot
  889    |  5     (((([a-zA-Z])+((■|■)■)+)\()[0-2])(■){■}fail dot
  890    |  5     (((([a-zA-Z])+((■■){■}■)+)\()[0-2])■fail dot
  891    |  5     (((([a-zA-Z])+(((■|■)){■}■)+)\()[0-2])■fail dot
  892    |  5     (((([a-zA-Z])+(((■){■}){■}■)+)\()[0-2])■fail dot
  893    |  5     (((([a-zA-Z])+((■){■}(■■))+)\()[0-2])■fail dot
  894    |  5     (((([a-zA-Z])+((■){■}(■|■))+)\()[0-2])■fail dot
  895    |  5     (((([a-zA-Z])+((■){■}(■){■})+)\()[0-2])■fail dot
  896    |  5     (((([a-zA-Z])+((■){■}■)+)\()[0-2])(■■)fail dot
  897    |  5     (((([a-zA-Z])+((■){■}■)+)\()[0-2])(■|■)fail dot
  898    |  5     (((([a-zA-Z])+((■){■}■)+)\()[0-2])(■){■}fail dot
  899    |  5     (((([a-zA-Z])+(■(■))+)\()[0-2])■fail dotstar or empty
  900    |  5     (((([a-zA-Z])+(■((■■)■))+)\()[0-2])■fail dot
  901    |  5     (((([a-zA-Z])+(■((■|■)■))+)\()[0-2])■fail dot
  902    |  5     (((([a-zA-Z])+(■((■){■}■))+)\()[0-2])■fail dot
  903    |  5     (((([a-zA-Z])+(■(■(■■)))+)\()[0-2])■fail dot
  904    |  5     (((([a-zA-Z])+(■(■(■|■)))+)\()[0-2])■fail dot
  905    |  5     (((([a-zA-Z])+(■(■(■){■}))+)\()[0-2])■fail dot
  906    |  5     (((([a-zA-Z])+(■(■■))+)\()[0-2])(■■)fail dot
  907    |  5     (((([a-zA-Z])+(■(■■))+)\()[0-2])(■|■)fail dot
  908    |  5     (((([a-zA-Z])+(■(■■))+)\()[0-2])(■){■}fail dot
  909    |  5     (((([a-zA-Z])+(■(■■|■))+)\()[0-2])■fail dot
  910    |  5     (((([a-zA-Z])+(■((■|■)|■))+)\()[0-2])■fail dot
  911    |  5     (((([a-zA-Z])+(■((■){■}|■))+)\()[0-2])■fail dot
  912    |  5     (((([a-zA-Z])+(■(■|■■))+)\()[0-2])■fail dot
  913    |  5     (((([a-zA-Z])+(■(■|(■|■)))+)\()[0-2])■fail dot
  914    |  5     (((([a-zA-Z])+(■(■|(■){■}))+)\()[0-2])■fail dot
  915    |  5     (((([a-zA-Z])+(■(■|■))+)\()[0-2])(■■)fail dot
  916    |  5     (((([a-zA-Z])+(■(■|■))+)\()[0-2])(■|■)fail dot
  917    |  5     (((([a-zA-Z])+(■(■|■))+)\()[0-2])(■){■}fail dot
  918    |  5     (((([a-zA-Z])+(■(■■){■})+)\()[0-2])■fail dot
  919    |  5     (((([a-zA-Z])+(■((■|■)){■})+)\()[0-2])■fail dot
  920    |  5     (((([a-zA-Z])+(■((■){■}){■})+)\()[0-2])■fail dot
  921    |  5     (((([a-zA-Z])+(■(■){■})+)\()[0-2])(■■)fail dot
  922    |  5     (((([a-zA-Z])+(■(■){■})+)\()[0-2])(■|■)fail dot
  923    |  5     (((([a-zA-Z])+(■(■){■})+)\()[0-2])(■){■}fail dot
  924    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])(■)fail dotstar or empty
  925    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■■)■)fail dot
  926    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■|■)■)fail dot
  927    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■){■}■)fail dot
  928    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])(■■|■)fail dot
  929    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■|■)|■)fail dot
  930    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■){■}|■)fail dot
  931    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])(■■){■}fail dot
  932    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■|■)){■}fail dot
  933    |  5     (((([a-zA-Z])+(■■)+)\()[0-2])((■){■}){■}fail dot
  934    |  5     (((([a-zA-Z])+(((■■)■|■))+)\()[0-2])■fail dot
  935    |  5     (((([a-zA-Z])+(((■|■)■|■))+)\()[0-2])■fail dot
  936    |  5     (((([a-zA-Z])+(((■){■}■|■))+)\()[0-2])■fail dot
  937    |  5     (((([a-zA-Z])+((■(■■)|■))+)\()[0-2])■fail dot
  938    |  5     (((([a-zA-Z])+((■(■|■)|■))+)\()[0-2])■fail dot
  939    |  5     (((([a-zA-Z])+((■(■){■}|■))+)\()[0-2])■fail dot
  940    |  5     (((([a-zA-Z])+((■■|■■))+)\()[0-2])■fail dot
  941    |  5     (((([a-zA-Z])+((■■|(■|■)))+)\()[0-2])■fail dot
  942    |  5     (((([a-zA-Z])+((■■|(■){■}))+)\()[0-2])■fail dot
  943    |  5     (((([a-zA-Z])+((■■|■))+)\()[0-2])(■■)fail dot
  944    |  5     (((([a-zA-Z])+((■■|■))+)\()[0-2])(■|■)fail dot
  945    |  5     (((([a-zA-Z])+((■■|■))+)\()[0-2])(■){■}fail dot
  946    |  5     (((([a-zA-Z])+(((■■|■)|■))+)\()[0-2])■fail dot
  947    |  5     (((([a-zA-Z])+((((■|■)|■)|■))+)\()[0-2])■fail dot
  948    |  5     (((([a-zA-Z])+((((■){■}|■)|■))+)\()[0-2])■fail dot
  949    |  5     (((([a-zA-Z])+(((■|■■)|■))+)\()[0-2])■fail dot
  950    |  5     (((([a-zA-Z])+(((■|(■|■))|■))+)\()[0-2])■fail dot
  951    |  5     (((([a-zA-Z])+(((■|(■){■})|■))+)\()[0-2])■fail dot
  952    |  5     (((([a-zA-Z])+(((■|■)|■■))+)\()[0-2])■fail dot
  953    |  5     (((([a-zA-Z])+(((■|■)|(■|■)))+)\()[0-2])■fail dot
  954    |  5     (((([a-zA-Z])+(((■|■)|(■){■}))+)\()[0-2])■fail dot
  955    |  5     (((([a-zA-Z])+(((■|■)|■))+)\()[0-2])(■■)fail dot
  956    |  5     (((([a-zA-Z])+(((■|■)|■))+)\()[0-2])(■|■)fail dot
  957    |  5     (((([a-zA-Z])+(((■|■)|■))+)\()[0-2])(■){■}fail dot
  958    |  5     (((([a-zA-Z])+(((■■){■}|■))+)\()[0-2])■fail dot
  959    |  5     (((([a-zA-Z])+((((■|■)){■}|■))+)\()[0-2])■fail dot
  960    |  5     (((([a-zA-Z])+((((■){■}){■}|■))+)\()[0-2])■fail dot
  961    |  5     (((([a-zA-Z])+(((■){■}|■■))+)\()[0-2])■fail dot
  962    |  5     (((([a-zA-Z])+(((■){■}|(■|■)))+)\()[0-2])■fail dot
  963    |  5     (((([a-zA-Z])+(((■){■}|(■){■}))+)\()[0-2])■fail dot
  964    |  5     (((([a-zA-Z])+(((■){■}|■))+)\()[0-2])(■■)fail dot
  965    |  5     (((([a-zA-Z])+(((■){■}|■))+)\()[0-2])(■|■)fail dot
  966    |  5     (((([a-zA-Z])+(((■){■}|■))+)\()[0-2])(■){■}fail dot
  967    |  5     (((([a-zA-Z])+((■|(■■)■))+)\()[0-2])■fail dot
  968    |  5     (((([a-zA-Z])+((■|(■|■)■))+)\()[0-2])■fail dot
  969    |  5     (((([a-zA-Z])+((■|(■){■}■))+)\()[0-2])■fail dot
  970    |  5     (((([a-zA-Z])+((■|■(■■)))+)\()[0-2])■fail dot
  971    |  5     (((([a-zA-Z])+((■|■(■|■)))+)\()[0-2])■fail dot
  972    |  5     (((([a-zA-Z])+((■|■(■){■}))+)\()[0-2])■fail dot
  973    |  5     (((([a-zA-Z])+((■|■■))+)\()[0-2])(■■)fail dot
  974    |  5     (((([a-zA-Z])+((■|■■))+)\()[0-2])(■|■)fail dot
  975    |  5     (((([a-zA-Z])+((■|■■))+)\()[0-2])(■){■}fail dot
  976    |  5     (((([a-zA-Z])+((■|(■■|■)))+)\()[0-2])■fail dot
  977    |  5     (((([a-zA-Z])+((■|((■|■)|■)))+)\()[0-2])■fail dot
  978    |  5     (((([a-zA-Z])+((■|((■){■}|■)))+)\()[0-2])■fail dot
  979    |  5     (((([a-zA-Z])+((■|(■|■■)))+)\()[0-2])■fail dot
  980    |  5     (((([a-zA-Z])+((■|(■|(■|■))))+)\()[0-2])■fail dot
  981    |  5     (((([a-zA-Z])+((■|(■|(■){■})))+)\()[0-2])■fail dot
  982    |  5     (((([a-zA-Z])+((■|(■|■)))+)\()[0-2])(■■)fail dot
  983    |  5     (((([a-zA-Z])+((■|(■|■)))+)\()[0-2])(■|■)fail dot
  984    |  5     (((([a-zA-Z])+((■|(■|■)))+)\()[0-2])(■){■}fail dot
  985    |  5     (((([a-zA-Z])+((■|(■■){■}))+)\()[0-2])■fail dot
  986    |  5     (((([a-zA-Z])+((■|((■|■)){■}))+)\()[0-2])■fail dot
  987    |  5     (((([a-zA-Z])+((■|((■){■}){■}))+)\()[0-2])■fail dot
  988    |  5     (((([a-zA-Z])+((■|(■){■}))+)\()[0-2])(■■)fail dot
  989    |  5     (((([a-zA-Z])+((■|(■){■}))+)\()[0-2])(■|■)fail dot
  990    |  5     (((([a-zA-Z])+((■|(■){■}))+)\()[0-2])(■){■}fail dot
  991    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])(■)fail dotstar or empty
  992    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■■)■)fail dot
  993    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■|■)■)fail dot
  994    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■){■}■)fail dot
  995    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])(■■|■)fail dot
  996    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■|■)|■)fail dot
  997    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■){■}|■)fail dot
  998    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])(■■){■}fail dot
  999    |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■|■)){■}fail dot
  1000   |  5     (((([a-zA-Z])+((■|■))+)\()[0-2])((■){■}){■}fail dot
  1001   |  5     (((([a-zA-Z])+(((■■)■){■})+)\()[0-2])■fail dot
  1002   |  5     (((([a-zA-Z])+(((■|■)■){■})+)\()[0-2])■fail dot
  1003   |  5     (((([a-zA-Z])+(((■){■}■){■})+)\()[0-2])■fail dot
  1004   |  5     (((([a-zA-Z])+((■(■■)){■})+)\()[0-2])■fail dot
  1005   |  5     (((([a-zA-Z])+((■(■|■)){■})+)\()[0-2])■fail dot
  1006   |  5     (((([a-zA-Z])+((■(■){■}){■})+)\()[0-2])■fail dot
  1007   |  5     (((([a-zA-Z])+((■■){■})+)\()[0-2])(■■)fail dot
  1008   |  5     (((([a-zA-Z])+((■■){■})+)\()[0-2])(■|■)fail dot
  1009   |  5     (((([a-zA-Z])+((■■){■})+)\()[0-2])(■){■}fail dot
  1010   |  5     (((([a-zA-Z])+(((■■|■)){■})+)\()[0-2])■fail dot
  1011   |  5     (((([a-zA-Z])+((((■|■)|■)){■})+)\()[0-2])■fail dot
  1012   |  5     (((([a-zA-Z])+((((■){■}|■)){■})+)\()[0-2])■fail dot
  1013   |  5     (((([a-zA-Z])+(((■|■■)){■})+)\()[0-2])■fail dot
  1014   |  5     (((([a-zA-Z])+(((■|(■|■))){■})+)\()[0-2])■fail dot
  1015   |  5     (((([a-zA-Z])+(((■|(■){■})){■})+)\()[0-2])■fail dot
  1016   |  5     (((([a-zA-Z])+(((■|■)){■})+)\()[0-2])(■■)fail dot
  1017   |  5     (((([a-zA-Z])+(((■|■)){■})+)\()[0-2])(■|■)fail dot
  1018   |  5     (((([a-zA-Z])+(((■|■)){■})+)\()[0-2])(■){■}fail dot
  1019   |  5     (((([a-zA-Z])+(((■■){■}){■})+)\()[0-2])■fail dot
  1020   |  5     (((([a-zA-Z])+((((■|■)){■}){■})+)\()[0-2])■fail dot
  1021   |  5     (((([a-zA-Z])+((((■){■}){■}){■})+)\()[0-2])■fail dot
  1022   |  5     (((([a-zA-Z])+(((■){■}){■})+)\()[0-2])(■■)fail dot
  1023   |  5     (((([a-zA-Z])+(((■){■}){■})+)\()[0-2])(■|■)fail dot
  1024   |  5     (((([a-zA-Z])+(((■){■}){■})+)\()[0-2])(■){■}fail dot
  1025   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])(■)fail dotstar or empty
  1026   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■■)■)fail dot
  1027   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■|■)■)fail dot
  1028   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■){■}■)fail dot
  1029   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])(■■|■)fail dot
  1030   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■|■)|■)fail dot
  1031   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■){■}|■)fail dot
  1032   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])(■■){■}fail dot
  1033   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■|■)){■}fail dot
  1034   |  5     (((([a-zA-Z])+((■){■})+)\()[0-2])((■){■}){■}fail dot
  1035   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■)■)fail dotstar or empty
  1036   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■■)■)■)fail dot
  1037   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)■)■)fail dot
  1038   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}■)■)fail dot
  1039   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■)(■■))fail dot
  1040   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■)(■|■))fail dot
  1041   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■)(■){■})fail dot
  1042   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■|■)■)fail dot
  1043   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)|■)■)fail dot
  1044   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}|■)■)fail dot
  1045   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)(■■))fail dot
  1046   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)(■|■))fail dot
  1047   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)(■){■})fail dot
  1048   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■){■}■)fail dot
  1049   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)){■}■)fail dot
  1050   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}){■}■)fail dot
  1051   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}(■■))fail dot
  1052   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}(■|■))fail dot
  1053   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}(■){■})fail dot
  1054   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■)■|■)fail dot
  1055   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)■|■)fail dot
  1056   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}■|■)fail dot
  1057   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(■■|■■)fail dot
  1058   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(■■|(■|■))fail dot
  1059   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(■■|(■){■})fail dot
  1060   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■|■)|■)fail dot
  1061   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)|■)|■)fail dot
  1062   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}|■)|■)fail dot
  1063   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)|■■)fail dot
  1064   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)|(■|■))fail dot
  1065   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)|(■){■})fail dot
  1066   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■){■}|■)fail dot
  1067   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)){■}|■)fail dot
  1068   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}){■}|■)fail dot
  1069   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}|■■)fail dot
  1070   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}|(■|■))fail dot
  1071   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}|(■){■})fail dot
  1072   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■)■){■}fail dot
  1073   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■|■)■){■}fail dot
  1074   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■){■}■){■}fail dot
  1075   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■|■)){■}fail dot
  1076   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)|■)){■}fail solve
  1077   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}|■)){■}fail dot
  1078   |  5     (((([a-zA-Z])+(■)+)\()[0-2])((■■){■}){■}fail dot
  1079   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■|■)){■}){■}fail dot
  1080   |  5     (((([a-zA-Z])+(■)+)\()[0-2])(((■){■}){■}){■}fail dot
  1081   |  5     (((([a-zA-Z])+■)■)■)■   fail dotstar or empty
  1082   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■■))■)■fail dotstar or empty
  1083   |  5     (((([a-zA-Z])+■)(■■))[0-2])■fail dotstar or empty
  1084   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■))[0-2])■fail dotstar or empty
  1085   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■))■)■fail dotstar or empty
  1086   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■■)■))[0-2])■fail dotstar or empty
  1087   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)■))■)■fail dotstar or empty
  1088   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■)■))[0-2])■fail dotstar or empty
  1089   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■■)■)■))[0-2])■fail dot
  1090   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)■)■))[0-2])■fail dot
  1091   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}■)■))[0-2])■fail dot
  1092   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)(■■)))[0-2])■fail dot
  1093   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)(■|■)))[0-2])■fail dot
  1094   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)(■){■}))[0-2])■fail dot
  1095   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)■))[0-2])(■■)fail dot
  1096   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)■))[0-2])(■|■)fail dot
  1097   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)■))[0-2])(■){■}fail dot
  1098   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■|■)■))[0-2])■fail dotstar or empty
  1099   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■))■)■fail dotstar or empty
  1100   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■|■)■))[0-2])■fail dot
  1101   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)|■)■))[0-2])■fail dot
  1102   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}|■)■))[0-2])■fail dot
  1103   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)(■■)))[0-2])■fail dot
  1104   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)(■|■)))[0-2])■fail dot
  1105   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)(■){■}))[0-2])■fail dot
  1106   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■))[0-2])(■■)fail dot
  1107   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■))[0-2])(■|■)fail dot
  1108   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■))[0-2])(■){■}fail dot
  1109   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■){■}■))[0-2])■fail dotstar or empty
  1110   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■))■)■fail dotstar or empty
  1111   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■){■}■))[0-2])■fail dot
  1112   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)){■}■))[0-2])■fail dot
  1113   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}){■}■))[0-2])■fail dot
  1114   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}(■■)))[0-2])■fail dot
  1115   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}(■|■)))[0-2])■fail dot
  1116   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}(■){■}))[0-2])■fail dot
  1117   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■))[0-2])(■■)fail dot
  1118   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■))[0-2])(■|■)fail dot
  1119   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■))[0-2])(■){■}fail dot
  1120   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■■))[0-2])(■■)fail dotstar or empty
  1121   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))■)(■■)fail dotstar or empty
  1122   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■))[0-2])(■■)fail dotstar or empty
  1123   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])(■)fail dotstar or empty
  1124   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■■)■)fail dot
  1125   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■|■)■)fail dot
  1126   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■){■}■)fail dot
  1127   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■■))[0-2])(■|■)fail dotstar or empty
  1128   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))■)(■|■)fail dotstar or empty
  1129   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■))[0-2])(■|■)fail dotstar or empty
  1130   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])(■■|■)fail dot
  1131   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■|■)|■)fail dot
  1132   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■){■}|■)fail dot
  1133   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■■))[0-2])(■){■}fail dotstar or empty
  1134   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))■)(■){■}fail dotstar or empty
  1135   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■))[0-2])(■){■}fail dotstar or empty
  1136   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])(■■){■}fail dot
  1137   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■|■)){■}fail dot
  1138   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■))[0-2])((■){■}){■}fail dot
  1139   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■|■))■)■fail dotstar or empty
  1140   |  5     (((([a-zA-Z])+■)(■|■))[0-2])■fail dotstar or empty
  1141   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■■|■))[0-2])■fail dotstar or empty
  1142   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|■))■)■fail dotstar or empty
  1143   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)■|■))[0-2])■fail dot
  1144   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■|■))[0-2])■fail dot
  1145   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■|■))[0-2])■fail dot
  1146   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|■■))[0-2])■fail dot
  1147   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|(■|■)))[0-2])■fail dot
  1148   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|(■){■}))[0-2])■fail dot
  1149   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|■))[0-2])(■■)fail dot
  1150   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|■))[0-2])(■|■)fail dot
  1151   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■|■))[0-2])(■){■}fail dot
  1152   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■|■)|■))[0-2])■fail dotstar or empty
  1153   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|■))■)■fail dotstar or empty
  1154   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■|■)|■))[0-2])■fail dot
  1155   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)|■)|■))[0-2])■fail dot
  1156   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}|■)|■))[0-2])■fail dot
  1157   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|■■))[0-2])■fail dot
  1158   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|(■|■)))[0-2])■fail dot
  1159   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|(■){■}))[0-2])■fail dot
  1160   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|■))[0-2])(■■)fail dot
  1161   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|■))[0-2])(■|■)fail dot
  1162   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)|■))[0-2])(■){■}fail dot
  1163   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■){■}|■))[0-2])■fail dotstar or empty
  1164   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|■))■)■fail dotstar or empty
  1165   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■){■}|■))[0-2])■fail dot
  1166   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)){■}|■))[0-2])■fail dot
  1167   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}){■}|■))[0-2])■fail dot
  1168   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|■■))[0-2])■fail dot
  1169   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|(■|■)))[0-2])■fail dot
  1170   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|(■){■}))[0-2])■fail dot
  1171   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|■))[0-2])(■■)fail dot
  1172   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|■))[0-2])(■|■)fail dot
  1173   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}|■))[0-2])(■){■}fail dot
  1174   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■|■))[0-2])(■■)fail dotstar or empty
  1175   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))■)(■■)fail dotstar or empty
  1176   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])(■)fail dotstar or empty
  1177   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■■)■)fail dot
  1178   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■|■)■)fail dot
  1179   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■){■}■)fail dot
  1180   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■|■))[0-2])(■|■)fail dotstar or empty
  1181   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))■)(■|■)fail dotstar or empty
  1182   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])(■■|■)fail dot
  1183   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■|■)|■)fail dot
  1184   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■){■}|■)fail dot
  1185   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■|■))[0-2])(■){■}fail dotstar or empty
  1186   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))■)(■){■}fail dotstar or empty
  1187   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])(■■){■}fail dot
  1188   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■|■)){■}fail dot
  1189   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■|■))[0-2])((■){■}){■}fail dot
  1190   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■){■})■)■fail dotstar or empty
  1191   |  5     (((([a-zA-Z])+■)(■){■})[0-2])■fail dotstar or empty
  1192   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■■){■})[0-2])■fail dotstar or empty
  1193   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■){■})■)■fail dotstar or empty
  1194   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■)■){■})[0-2])■fail dot
  1195   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)■){■})[0-2])■fail dot
  1196   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}■){■})[0-2])■fail dot
  1197   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■){■})[0-2])(■■)fail dot
  1198   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■){■})[0-2])(■|■)fail dot
  1199   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■■){■})[0-2])(■){■}fail dot
  1200   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■|■)){■})[0-2])■fail dotstar or empty
  1201   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)){■})■)■fail dotstar or empty
  1202   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■|■)){■})[0-2])■fail dot
  1203   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)|■)){■})[0-2])■fail dot
  1204   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}|■)){■})[0-2])■fail dot
  1205   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)){■})[0-2])(■■)fail dot
  1206   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)){■})[0-2])(■|■)fail dot
  1207   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■|■)){■})[0-2])(■){■}fail dot
  1208   |  5     (((([a-zA-Z])+([a-zA-Z]){■})((■){■}){■})[0-2])■fail dotstar or empty
  1209   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}){■})■)■fail dotstar or empty
  1210   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■■){■}){■})[0-2])■fail dot
  1211   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■|■)){■}){■})[0-2])■fail dot
  1212   |  5     (((([a-zA-Z])+([a-zA-Z])+)(((■){■}){■}){■})[0-2])■fail dot
  1213   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}){■})[0-2])(■■)fail dot
  1214   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}){■})[0-2])(■|■)fail dot
  1215   |  5     (((([a-zA-Z])+([a-zA-Z])+)((■){■}){■})[0-2])(■){■}fail dot
  1216   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■){■})[0-2])(■■)fail dotstar or empty
  1217   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})■)(■■)fail dotstar or empty
  1218   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])(■)fail dotstar or empty
  1219   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■■)■)fail dot
  1220   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■|■)■)fail dot
  1221   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■){■}■)fail dot
  1222   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■){■})[0-2])(■|■)fail dotstar or empty
  1223   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})■)(■|■)fail dotstar or empty
  1224   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])(■■|■)fail dot
  1225   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■|■)|■)fail dot
  1226   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■){■}|■)fail dot
  1227   |  5     (((([a-zA-Z])+([a-zA-Z]){■})(■){■})[0-2])(■){■}fail dotstar or empty
  1228   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})■)(■){■}fail dotstar or empty
  1229   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])(■■){■}fail dot
  1230   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■|■)){■}fail dot
  1231   |  5     (((([a-zA-Z])+([a-zA-Z])+)(■){■})[0-2])((■){■}){■}fail dot
  1232   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)■)(■■)fail dotstar or empty
  1233   |  5     (((([a-zA-Z])+■)■)[0-2])(■■)fail dotstar or empty
  1234   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])(■)fail dotstar or empty
  1235   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)(■)fail dotstar or empty
  1236   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■■)■)fail dotstar or empty
  1237   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■■)■)fail dotstar or empty
  1238   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■)■)fail dotstar or empty
  1239   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■■)■)■)fail dot
  1240   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)■)■)fail dot
  1241   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}■)■)fail dot
  1242   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■)(■■))fail dot
  1243   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■)(■|■))fail dot
  1244   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■)(■){■})fail dot
  1245   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■|■)■)fail dotstar or empty
  1246   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■|■)■)fail dotstar or empty
  1247   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■|■)■)fail dot
  1248   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)|■)■)fail dot
  1249   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}|■)■)fail dot
  1250   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)(■■))fail dot
  1251   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)(■|■))fail dot
  1252   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)(■){■})fail dot
  1253   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■){■}■)fail dotstar or empty
  1254   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■){■}■)fail dotstar or empty
  1255   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■){■}■)fail dot
  1256   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)){■}■)fail dot
  1257   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}){■}■)fail dot
  1258   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}(■■))fail dot
  1259   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}(■|■))fail dot
  1260   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}(■){■})fail dot
  1261   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)■)(■|■)fail dotstar or empty
  1262   |  5     (((([a-zA-Z])+■)■)[0-2])(■|■)fail dotstar or empty
  1263   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])(■■|■)fail dotstar or empty
  1264   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)(■■|■)fail dotstar or empty
  1265   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■)■|■)fail dot
  1266   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)■|■)fail dot
  1267   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}■|■)fail dot
  1268   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■■|■■)fail dot
  1269   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■■|(■|■))fail dot
  1270   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(■■|(■){■})fail dot
  1271   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■|■)|■)fail dotstar or empty
  1272   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■|■)|■)fail dotstar or empty
  1273   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■|■)|■)fail dot
  1274   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)|■)|■)fail dot
  1275   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}|■)|■)fail dot
  1276   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)|■■)fail dot
  1277   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)|(■|■))fail dot
  1278   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)|(■){■})fail dot
  1279   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■){■}|■)fail dotstar or empty
  1280   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■){■}|■)fail dotstar or empty
  1281   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■){■}|■)fail dot
  1282   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)){■}|■)fail dot
  1283   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}){■}|■)fail dot
  1284   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}|■■)fail dot
  1285   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}|(■|■))fail dot
  1286   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}|(■){■})fail dot
  1287   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)■)(■){■}fail dotstar or empty
  1288   |  5     (((([a-zA-Z])+■)■)[0-2])(■){■}fail dotstar or empty
  1289   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])(■■){■}fail dotstar or empty
  1290   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)(■■){■}fail dotstar or empty
  1291   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■)■){■}fail dot
  1292   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■|■)■){■}fail dot
  1293   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■){■}■){■}fail dot
  1294   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■|■)){■}fail dotstar or empty
  1295   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■|■)){■}fail dotstar or empty
  1296   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■|■)){■}fail dot
  1297   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)|■)){■}fail dot
  1298   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}|■)){■}fail dot
  1299   |  5     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])((■){■}){■}fail dotstar or empty
  1300   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)■)((■){■}){■}fail dotstar or empty
  1301   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])((■■){■}){■}fail dot
  1302   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■|■)){■}){■}fail dot
  1303   |  5     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])(((■){■}){■}){■}fail dot
  1304   |  6     ((((■){■}(■){■})■)■)\)  fail dotstar or empty
  1305   |  6     ((((■){■}(■){■})■)[0-2])■fail dotstar or empty
  1306   |  6     ((((■){■}(■){■})\()■)■  fail dotstar or empty
  1307   |  6     ((((■){■}(■)+)■)■)■     fail dotstar or empty
  1308   |  6     ((((■){■}([a-zA-Z]){■})■)■)■fail dotstar or empty
  1309   |  6     ((((■){■}■)■)■)\)       fail dotstar or empty
  1310   |  6     ((((■){■}■)■)[0-2])■    fail dotstar or empty
  1311   |  6     ((((■){■}■)\()■)■       fail dotstar or empty
  1312   |  6     ((((■)+(■){■})■)■)■     fail dotstar or empty
  1313   |  6     ((((■■){■}(■){■})\()[0-2])■fail dotstar or empty
  1314   |  6     ((((■■){■}(■)+)■)[0-2])■fail dotstar or empty
  1315   |  6     ((((■■){■}(■)+)\()■)■   fail dotstar or empty
  1316   |  6     ((((■■)+(■){■})■)[0-2])■fail dotstar or empty
  1317   |  6     ((((■■)+(■){■})\()■)■   fail dotstar or empty
  1318   |  6     ((((■■)+(■)+)■)■)■      fail dotstar or empty
  1319   |  6     (((((■■)■){■}(■)+)\()[0-2])■fail dotstar or empty
  1320   |  6     (((((■■)■)+(■){■})\()[0-2])■fail dotstar or empty
  1321   |  6     (((((■■)■)+(■)+)■)[0-2])■fail dotstar or empty
  1322   |  6     (((((■■)■)+(■)+)\()■)■  fail dotstar or empty
  1323   |  6     (((((■)■)+(■)+)\()[0-2])■fail dotstar or empty
  1324   |  6     ((((((■■)■)■)+(■)+)\()[0-2])■fail dot
  1325   |  6     ((((((■|■)■)■)+(■)+)\()[0-2])■fail dot
  1326   |  6     ((((((■){■}■)■)+(■)+)\()[0-2])■fail dot
  1327   |  6     (((((■(■■))■)+(■)+)\()[0-2])■fail dot
  1328   |  6     (((((■(■|■))■)+(■)+)\()[0-2])■fail dot
  1329   |  6     (((((■(■){■})■)+(■)+)\()[0-2])■fail dot
  1330   |  6     (((((■■)(■■))+(■)+)\()[0-2])■fail dot
  1331   |  6     (((((■■)(■|■))+(■)+)\()[0-2])■fail dot
  1332   |  6     (((((■■)(■){■})+(■)+)\()[0-2])■fail dot
  1333   |  6     (((((■■)■)+(■■)+)\()[0-2])■fail dot
  1334   |  6     (((((■■)■)+((■|■))+)\()[0-2])■fail dot
  1335   |  6     (((((■■)■)+((■){■})+)\()[0-2])■fail dot
  1336   |  6     (((((■■)■)+(■)+)\()[0-2])(■■)fail dot
  1337   |  6     (((((■■)■)+(■)+)\()[0-2])(■|■)fail dot
  1338   |  6     (((((■■)■)+(■)+)\()[0-2])(■){■}fail dot
  1339   |  6     (((((■|■)■){■}(■)+)\()[0-2])■fail dotstar or empty
  1340   |  6     (((((■|■)■)+(■){■})\()[0-2])■fail dotstar or empty
  1341   |  6     (((((■|■)■)+(■)+)■)[0-2])■fail dotstar or empty
  1342   |  6     (((((■|■)■)+(■)+)\()■)■ fail dotstar or empty
  1343   |  6     (((((■■|■)■)+(■)+)\()[0-2])■fail dot
  1344   |  6     ((((((■|■)|■)■)+(■)+)\()[0-2])■fail dot
  1345   |  6     ((((((■){■}|■)■)+(■)+)\()[0-2])■fail dot
  1346   |  6     (((((■|■■)■)+(■)+)\()[0-2])■fail dot
  1347   |  6     (((((■|(■|■))■)+(■)+)\()[0-2])■fail dot
  1348   |  6     (((((■|(■){■})■)+(■)+)\()[0-2])■fail dot
  1349   |  6     (((((■|■)(■■))+(■)+)\()[0-2])■fail dot
  1350   |  6     (((((■|■)(■|■))+(■)+)\()[0-2])■fail dot
  1351   |  6     (((((■|■)(■){■})+(■)+)\()[0-2])■fail dot
  1352   |  6     (((((■|■)■)+(■■)+)\()[0-2])■fail dot
  1353   |  6     (((((■|■)■)+((■|■))+)\()[0-2])■fail dot
  1354   |  6     (((((■|■)■)+((■){■})+)\()[0-2])■fail dot
  1355   |  6     (((((■|■)■)+(■)+)\()[0-2])(■■)fail dot
  1356   |  6     (((((■|■)■)+(■)+)\()[0-2])(■|■)fail dot
  1357   |  6     (((((■|■)■)+(■)+)\()[0-2])(■){■}fail dot
  1358   |  6     (((((■){■}■){■}(■)+)\()[0-2])■fail dotstar or empty
  1359   |  6     (((((■){■}■)+(■){■})\()[0-2])■fail dotstar or empty
  1360   |  6     (((((■){■}■)+(■)+)■)[0-2])■fail dotstar or empty
  1361   |  6     (((((■){■}■)+(■)+)\()■)■fail dotstar or empty
  1362   |  6     (((((■■){■}■)+(■)+)\()[0-2])■fail dot
  1363   |  6     ((((((■|■)){■}■)+(■)+)\()[0-2])■fail dot
  1364   |  6     ((((((■){■}){■}■)+(■)+)\()[0-2])■fail dot
  1365   |  6     (((((■){■}(■■))+(■)+)\()[0-2])■fail dot
  1366   |  6     (((((■){■}(■|■))+(■)+)\()[0-2])■fail dot
  1367   |  6     (((((■){■}(■){■})+(■)+)\()[0-2])■fail dot
  1368   |  6     (((((■){■}■)+(■■)+)\()[0-2])■fail dot
  1369   |  6     (((((■){■}■)+((■|■))+)\()[0-2])■fail dot
  1370   |  6     (((((■){■}■)+((■){■})+)\()[0-2])■fail dot
  1371   |  6     (((((■){■}■)+(■)+)\()[0-2])(■■)fail dot
  1372   |  6     (((((■){■}■)+(■)+)\()[0-2])(■|■)fail dot
  1373   |  6     (((((■){■}■)+(■)+)\()[0-2])(■){■}fail dot
  1374   |  6     ((((■(■■))+(■){■})\()[0-2])■fail dotstar or empty
  1375   |  6     ((((■(■■))+(■)+)■)[0-2])■fail dotstar or empty
  1376   |  6     ((((■(■■))+(■)+)\()■)■  fail dotstar or empty
  1377   |  6     ((((■(■))+(■)+)\()[0-2])■fail dotstar or empty
  1378   |  6     ((((■((■■)■))+(■)+)\()[0-2])■fail dot
  1379   |  6     ((((■((■|■)■))+(■)+)\()[0-2])■fail dot
  1380   |  6     ((((■((■){■}■))+(■)+)\()[0-2])■fail dot
  1381   |  6     ((((■(■(■■)))+(■)+)\()[0-2])■fail dot
  1382   |  6     ((((■(■(■|■)))+(■)+)\()[0-2])■fail dot
  1383   |  6     ((((■(■(■){■}))+(■)+)\()[0-2])■fail dot
  1384   |  6     ((((■(■■))+(■■)+)\()[0-2])■fail dot
  1385   |  6     ((((■(■■))+((■|■))+)\()[0-2])■fail dot
  1386   |  6     ((((■(■■))+((■){■})+)\()[0-2])■fail dot
  1387   |  6     ((((■(■■))+(■)+)\()[0-2])(■■)fail dot
  1388   |  6     ((((■(■■))+(■)+)\()[0-2])(■|■)fail dot
  1389   |  6     ((((■(■■))+(■)+)\()[0-2])(■){■}fail dot
  1390   |  6     ((((■(■|■))+(■){■})\()[0-2])■fail dotstar or empty
  1391   |  6     ((((■(■|■))+(■)+)■)[0-2])■fail dotstar or empty
  1392   |  6     ((((■(■|■))+(■)+)\()■)■ fail dotstar or empty
  1393   |  6     ((((■(■■|■))+(■)+)\()[0-2])■fail dot
  1394   |  6     ((((■((■|■)|■))+(■)+)\()[0-2])■fail dot
  1395   |  6     ((((■((■){■}|■))+(■)+)\()[0-2])■fail dot
  1396   |  6     ((((■(■|■■))+(■)+)\()[0-2])■fail dot
  1397   |  6     ((((■(■|(■|■)))+(■)+)\()[0-2])■fail dot
  1398   |  6     ((((■(■|(■){■}))+(■)+)\()[0-2])■fail dot
  1399   |  6     ((((■(■|■))+(■■)+)\()[0-2])■fail dot
  1400   |  6     ((((■(■|■))+((■|■))+)\()[0-2])■fail dot
  1401   |  6     ((((■(■|■))+((■){■})+)\()[0-2])■fail dot
  1402   |  6     ((((■(■|■))+(■)+)\()[0-2])(■■)fail dot
  1403   |  6     ((((■(■|■))+(■)+)\()[0-2])(■|■)fail dot
  1404   |  6     ((((■(■|■))+(■)+)\()[0-2])(■){■}fail dot
  1405   |  6     ((((■(■){■})+(■){■})\()[0-2])■fail dotstar or empty
  1406   |  6     ((((■(■){■})+(■)+)■)[0-2])■fail dotstar or empty
  1407   |  6     ((((■(■){■})+(■)+)\()■)■fail dotstar or empty
  1408   |  6     ((((■(■■){■})+(■)+)\()[0-2])■fail dot
  1409   |  6     ((((■((■|■)){■})+(■)+)\()[0-2])■fail dot
  1410   |  6     ((((■((■){■}){■})+(■)+)\()[0-2])■fail dot
  1411   |  6     ((((■(■){■})+(■■)+)\()[0-2])■fail dot
  1412   |  6     ((((■(■){■})+((■|■))+)\()[0-2])■fail dot
  1413   |  6     ((((■(■){■})+((■){■})+)\()[0-2])■fail dot
  1414   |  6     ((((■(■){■})+(■)+)\()[0-2])(■■)fail dot
  1415   |  6     ((((■(■){■})+(■)+)\()[0-2])(■|■)fail dot
  1416   |  6     ((((■(■){■})+(■)+)\()[0-2])(■){■}fail dot
  1417   |  6     ((((■■){■}(■■)+)\()[0-2])■fail dotstar or empty
  1418   |  6     ((((■■)+(■■){■})\()[0-2])■fail dotstar or empty
  1419   |  6     ((((■■)+(■■)+)■)[0-2])■ fail dotstar or empty
  1420   |  6     ((((■■)+(■■)+)\()■)■    fail dotstar or empty
  1421   |  6     ((((■■)+((■■)■)+)\()[0-2])■fail dot
  1422   |  6     ((((■■)+((■|■)■)+)\()[0-2])■fail dot
  1423   |  6     ((((■■)+((■){■}■)+)\()[0-2])■fail dot
  1424   |  6     ((((■■)+(■(■■))+)\()[0-2])■fail dot
  1425   |  6     ((((■■)+(■(■|■))+)\()[0-2])■fail dot
  1426   |  6     ((((■■)+(■(■){■})+)\()[0-2])■fail dot
  1427   |  6     ((((■■)+(■■)+)\()[0-2])(■■)fail dot
  1428   |  6     ((((■■)+(■■)+)\()[0-2])(■|■)fail dot
  1429   |  6     ((((■■)+(■■)+)\()[0-2])(■){■}fail dot
  1430   |  6     ((((■■){■}((■|■))+)\()[0-2])■fail dotstar or empty
  1431   |  6     ((((■■)+((■|■)){■})\()[0-2])■fail dotstar or empty
  1432   |  6     ((((■■)+((■|■))+)■)[0-2])■fail dotstar or empty
  1433   |  6     ((((■■)+((■|■))+)\()■)■ fail dotstar or empty
  1434   |  6     ((((■■)+((■■|■))+)\()[0-2])■fail dot
  1435   |  6     ((((■■)+(((■|■)|■))+)\()[0-2])■fail dot
  1436   |  6     ((((■■)+(((■){■}|■))+)\()[0-2])■fail dot
  1437   |  6     ((((■■)+((■|■■))+)\()[0-2])■fail dot
  1438   |  6     ((((■■)+((■|(■|■)))+)\()[0-2])■fail dot
  1439   |  6     ((((■■)+((■|(■){■}))+)\()[0-2])■fail dot
  1440   |  6     ((((■■)+((■|■))+)\()[0-2])(■■)fail dot
  1441   |  6     ((((■■)+((■|■))+)\()[0-2])(■|■)fail dot
  1442   |  6     ((((■■)+((■|■))+)\()[0-2])(■){■}fail dot
  1443   |  6     ((((■■){■}((■){■})+)\()[0-2])■fail dotstar or empty
  1444   |  6     ((((■■)+((■){■}){■})\()[0-2])■fail dotstar or empty
  1445   |  6     ((((■■)+((■){■})+)■)[0-2])■fail dotstar or empty
  1446   |  6     ((((■■)+((■){■})+)\()■)■fail dotstar or empty
  1447   |  6     ((((■■)+((■■){■})+)\()[0-2])■fail dot
  1448   |  6     ((((■■)+(((■|■)){■})+)\()[0-2])■fail dot
  1449   |  6     ((((■■)+(((■){■}){■})+)\()[0-2])■fail dot
  1450   |  6     ((((■■)+((■){■})+)\()[0-2])(■■)fail dot
  1451   |  6     ((((■■)+((■){■})+)\()[0-2])(■|■)fail dot
  1452   |  6     ((((■■)+((■){■})+)\()[0-2])(■){■}fail dot
  1453   |  6     ((((■■){■}(■)+)\()[0-2])(■■)fail dotstar or empty
  1454   |  6     ((((■■)+(■){■})\()[0-2])(■■)fail dotstar or empty
  1455   |  6     ((((■■)+(■)+)■)[0-2])(■■)fail dotstar or empty
  1456   |  6     ((((■■)+(■)+)\()■)(■■)  fail dotstar or empty
  1457   |  6     ((((■■)+(■)+)\()[0-2])(■)fail dotstar or empty
  1458   |  6     ((((■■)+(■)+)\()[0-2])((■■)■)fail dot
  1459   |  6     ((((■■)+(■)+)\()[0-2])((■|■)■)fail dot
  1460   |  6     ((((■■)+(■)+)\()[0-2])((■){■}■)fail dot
  1461   |  6     ((((■■){■}(■)+)\()[0-2])(■|■)fail dotstar or empty
  1462   |  6     ((((■■)+(■){■})\()[0-2])(■|■)fail dotstar or empty
  1463   |  6     ((((■■)+(■)+)■)[0-2])(■|■)fail dotstar or empty
  1464   |  6     ((((■■)+(■)+)\()■)(■|■) fail dotstar or empty
  1465   |  6     ((((■■)+(■)+)\()[0-2])(■■|■)fail dot
  1466   |  6     ((((■■)+(■)+)\()[0-2])((■|■)|■)fail dot
  1467   |  6     ((((■■)+(■)+)\()[0-2])((■){■}|■)fail dot
  1468   |  6     ((((■■){■}(■)+)\()[0-2])(■){■}fail dotstar or empty
  1469   |  6     ((((■■)+(■){■})\()[0-2])(■){■}fail dotstar or empty
  1470   |  6     ((((■■)+(■)+)■)[0-2])(■){■}fail dotstar or empty
  1471   |  6     ((((■■)+(■)+)\()■)(■){■}fail dotstar or empty
  1472   |  6     ((((■■)+(■)+)\()[0-2])(■■){■}fail dot
  1473   |  6     ((((■■)+(■)+)\()[0-2])((■|■)){■}fail dot
  1474   |  6     ((((■■)+(■)+)\()[0-2])((■){■}){■}fail dot
  1475   |  6     (((((■|■)){■}(■){■})\()[0-2])■fail dotstar or empty
  1476   |  6     (((((■|■)){■}(■)+)■)[0-2])■fail dotstar or empty
  1477   |  6     (((((■|■)){■}(■)+)\()■)■fail dotstar or empty
  1478   |  6     (((((■|■))+(■){■})■)[0-2])■fail dotstar or empty
  1479   |  6     (((((■|■))+(■){■})\()■)■fail dotstar or empty
  1480   |  6     (((((■|■))+(■)+)■)■)■   fail dotstar or empty
  1481   |  6     (((((■■|■)){■}(■)+)\()[0-2])■fail dotstar or empty
  1482   |  6     (((((■■|■))+(■){■})\()[0-2])■fail dotstar or empty
  1483   |  6     (((((■■|■))+(■)+)■)[0-2])■fail dotstar or empty
  1484   |  6     (((((■■|■))+(■)+)\()■)■ fail dotstar or empty
  1485   |  6     ((((((■■)■|■))+(■)+)\()[0-2])■fail dot
  1486   |  6     ((((((■|■)■|■))+(■)+)\()[0-2])■fail dot
  1487   |  6     ((((((■){■}■|■))+(■)+)\()[0-2])■fail dot
  1488   |  6     (((((■(■■)|■))+(■)+)\()[0-2])■fail dot
  1489   |  6     (((((■(■|■)|■))+(■)+)\()[0-2])■fail dot
  1490   |  6     (((((■(■){■}|■))+(■)+)\()[0-2])■fail dot
  1491   |  6     (((((■■|■■))+(■)+)\()[0-2])■fail dot
  1492   |  6     (((((■■|(■|■)))+(■)+)\()[0-2])■fail dot
  1493   |  6     (((((■■|(■){■}))+(■)+)\()[0-2])■fail dot
  1494   |  6     (((((■■|■))+(■■)+)\()[0-2])■fail dot
  1495   |  6     (((((■■|■))+((■|■))+)\()[0-2])■fail dot
  1496   |  6     (((((■■|■))+((■){■})+)\()[0-2])■fail dot
  1497   |  6     (((((■■|■))+(■)+)\()[0-2])(■■)fail dot
  1498   |  6     (((((■■|■))+(■)+)\()[0-2])(■|■)fail dot
  1499   |  6     (((((■■|■))+(■)+)\()[0-2])(■){■}fail dot
  1500   |  6     ((((((■|■)|■)){■}(■)+)\()[0-2])■fail dotstar or empty
  1501   |  6     ((((((■|■)|■))+(■){■})\()[0-2])■fail dotstar or empty
  1502   |  6     ((((((■|■)|■))+(■)+)■)[0-2])■fail dotstar or empty
  1503   |  6     ((((((■|■)|■))+(■)+)\()■)■fail dotstar or empty
  1504   |  6     ((((((■■|■)|■))+(■)+)\()[0-2])■fail dot
  1505   |  6     (((((((■|■)|■)|■))+(■)+)\()[0-2])■fail dot
  1506   |  6     (((((((■){■}|■)|■))+(■)+)\()[0-2])■fail dot
  1507   |  6     ((((((■|■■)|■))+(■)+)\()[0-2])■fail dot
  1508   |  6     ((((((■|(■|■))|■))+(■)+)\()[0-2])■fail dot
  1509   |  6     ((((((■|(■){■})|■))+(■)+)\()[0-2])■fail dot
  1510   |  6     ((((((■|■)|■■))+(■)+)\()[0-2])■fail dot
  1511   |  6     ((((((■|■)|(■|■)))+(■)+)\()[0-2])■fail dot
  1512   |  6     ((((((■|■)|(■){■}))+(■)+)\()[0-2])■fail dot
  1513   |  6     ((((((■|■)|■))+(■■)+)\()[0-2])■fail dot
  1514   |  6     ((((((■|■)|■))+((■|■))+)\()[0-2])■fail dot
  1515   |  6     ((((((■|■)|■))+((■){■})+)\()[0-2])■fail dot
  1516   |  6     ((((((■|■)|■))+(■)+)\()[0-2])(■■)fail dot
  1517   |  6     ((((((■|■)|■))+(■)+)\()[0-2])(■|■)fail dot
  1518   |  6     ((((((■|■)|■))+(■)+)\()[0-2])(■){■}fail dot
  1519   |  6     ((((((■){■}|■)){■}(■)+)\()[0-2])■fail dotstar or empty
  1520   |  6     ((((((■){■}|■))+(■){■})\()[0-2])■fail dotstar or empty
  1521   |  6     ((((((■){■}|■))+(■)+)■)[0-2])■fail dotstar or empty
  1522   |  6     ((((((■){■}|■))+(■)+)\()■)■fail dotstar or empty
  1523   |  6     ((((((■■){■}|■))+(■)+)\()[0-2])■fail dot
  1524   |  6     (((((((■|■)){■}|■))+(■)+)\()[0-2])■fail dot
  1525   |  6     (((((((■){■}){■}|■))+(■)+)\()[0-2])■fail dot
  1526   |  6     ((((((■){■}|■■))+(■)+)\()[0-2])■fail dot
  1527   |  6     ((((((■){■}|(■|■)))+(■)+)\()[0-2])■fail dot
  1528   |  6     ((((((■){■}|(■){■}))+(■)+)\()[0-2])■fail dot
  1529   |  6     ((((((■){■}|■))+(■■)+)\()[0-2])■fail dot
  1530   |  6     ((((((■){■}|■))+((■|■))+)\()[0-2])■fail dot
  1531   |  6     ((((((■){■}|■))+((■){■})+)\()[0-2])■fail dot
  1532   |  6     ((((((■){■}|■))+(■)+)\()[0-2])(■■)fail dot
  1533   |  6     ((((((■){■}|■))+(■)+)\()[0-2])(■|■)fail dot
  1534   |  6     ((((((■){■}|■))+(■)+)\()[0-2])(■){■}fail dot
  1535   |  6     (((((■|■■))+(■){■})\()[0-2])■fail dotstar or empty
  1536   |  6     (((((■|■■))+(■)+)■)[0-2])■fail dotstar or empty
  1537   |  6     (((((■|■■))+(■)+)\()■)■ fail dotstar or empty
  1538   |  6     (((((■|(■■)■))+(■)+)\()[0-2])■fail dot
  1539   |  6     (((((■|(■|■)■))+(■)+)\()[0-2])■fail dot
  1540   |  6     (((((■|(■){■}■))+(■)+)\()[0-2])■fail dot
  1541   |  6     (((((■|■(■■)))+(■)+)\()[0-2])■fail dot
  1542   |  6     (((((■|■(■|■)))+(■)+)\()[0-2])■fail dot
  1543   |  6     (((((■|■(■){■}))+(■)+)\()[0-2])■fail dot
  1544   |  6     (((((■|■■))+(■■)+)\()[0-2])■fail dot
  1545   |  6     (((((■|■■))+((■|■))+)\()[0-2])■fail dot
  1546   |  6     (((((■|■■))+((■){■})+)\()[0-2])■fail dot
  1547   |  6     (((((■|■■))+(■)+)\()[0-2])(■■)fail dot
  1548   |  6     (((((■|■■))+(■)+)\()[0-2])(■|■)fail dot
  1549   |  6     (((((■|■■))+(■)+)\()[0-2])(■){■}fail dot
  1550   |  6     (((((■|(■|■)))+(■){■})\()[0-2])■fail dotstar or empty
  1551   |  6     (((((■|(■|■)))+(■)+)■)[0-2])■fail dotstar or empty
  1552   |  6     (((((■|(■|■)))+(■)+)\()■)■fail dotstar or empty
  1553   |  6     (((((■|(■■|■)))+(■)+)\()[0-2])■fail dot
  1554   |  6     (((((■|((■|■)|■)))+(■)+)\()[0-2])■fail dot
  1555   |  6     (((((■|((■){■}|■)))+(■)+)\()[0-2])■fail dot
  1556   |  6     (((((■|(■|■■)))+(■)+)\()[0-2])■fail dot
  1557   |  6     (((((■|(■|(■|■))))+(■)+)\()[0-2])■fail dot
  1558   |  6     (((((■|(■|(■){■})))+(■)+)\()[0-2])■fail dot
  1559   |  6     (((((■|(■|■)))+(■■)+)\()[0-2])■fail dot
  1560   |  6     (((((■|(■|■)))+((■|■))+)\()[0-2])■fail dot
  1561   |  6     (((((■|(■|■)))+((■){■})+)\()[0-2])■fail dot
  1562   |  6     (((((■|(■|■)))+(■)+)\()[0-2])(■■)fail dot
  1563   |  6     (((((■|(■|■)))+(■)+)\()[0-2])(■|■)fail dot
  1564   |  6     (((((■|(■|■)))+(■)+)\()[0-2])(■){■}fail dot
  1565   |  6     (((((■|(■){■}))+(■){■})\()[0-2])■fail dotstar or empty
  1566   |  6     (((((■|(■){■}))+(■)+)■)[0-2])■fail dotstar or empty
  1567   |  6     (((((■|(■){■}))+(■)+)\()■)■fail dotstar or empty
  1568   |  6     (((((■|(■■){■}))+(■)+)\()[0-2])■fail dot
  1569   |  6     (((((■|((■|■)){■}))+(■)+)\()[0-2])■fail dot
  1570   |  6     (((((■|((■){■}){■}))+(■)+)\()[0-2])■fail dot
  1571   |  6     (((((■|(■){■}))+(■■)+)\()[0-2])■fail dot
  1572   |  6     (((((■|(■){■}))+((■|■))+)\()[0-2])■fail dot
  1573   |  6     (((((■|(■){■}))+((■){■})+)\()[0-2])■fail dot
  1574   |  6     (((((■|(■){■}))+(■)+)\()[0-2])(■■)fail dot
  1575   |  6     (((((■|(■){■}))+(■)+)\()[0-2])(■|■)fail dot
  1576   |  6     (((((■|(■){■}))+(■)+)\()[0-2])(■){■}fail dot
  1577   |  6     (((((■|■)){■}(■■)+)\()[0-2])■fail dotstar or empty
  1578   |  6     (((((■|■))+(■■){■})\()[0-2])■fail dotstar or empty
  1579   |  6     (((((■|■))+(■■)+)■)[0-2])■fail dotstar or empty
  1580   |  6     (((((■|■))+(■■)+)\()■)■ fail dotstar or empty
  1581   |  6     (((((■|■))+((■■)■)+)\()[0-2])■fail dot
  1582   |  6     (((((■|■))+((■|■)■)+)\()[0-2])■fail dot
  1583   |  6     (((((■|■))+((■){■}■)+)\()[0-2])■fail dot
  1584   |  6     (((((■|■))+(■(■■))+)\()[0-2])■fail dot
  1585   |  6     (((((■|■))+(■(■|■))+)\()[0-2])■fail dot
  1586   |  6     (((((■|■))+(■(■){■})+)\()[0-2])■fail dot
  1587   |  6     (((((■|■))+(■■)+)\()[0-2])(■■)fail dot
  1588   |  6     (((((■|■))+(■■)+)\()[0-2])(■|■)fail dot
  1589   |  6     (((((■|■))+(■■)+)\()[0-2])(■){■}fail dot
  1590   |  6     (((((■|■)){■}((■|■))+)\()[0-2])■fail dotstar or empty
  1591   |  6     (((((■|■))+((■|■)){■})\()[0-2])■fail dotstar or empty
  1592   |  6     (((((■|■))+((■|■))+)■)[0-2])■fail dotstar or empty
  1593   |  6     (((((■|■))+((■|■))+)\()■)■fail dotstar or empty
  1594   |  6     (((((■|■))+((■■|■))+)\()[0-2])■fail dot
  1595   |  6     (((((■|■))+(((■|■)|■))+)\()[0-2])■fail dot
  1596   |  6     (((((■|■))+(((■){■}|■))+)\()[0-2])■fail dot
  1597   |  6     (((((■|■))+((■|■■))+)\()[0-2])■fail dot
  1598   |  6     (((((■|■))+((■|(■|■)))+)\()[0-2])■fail dot
  1599   |  6     (((((■|■))+((■|(■){■}))+)\()[0-2])■fail dot
  1600   |  6     (((((■|■))+((■|■))+)\()[0-2])(■■)fail dot
  1601   |  6     (((((■|■))+((■|■))+)\()[0-2])(■|■)fail dot
  1602   |  6     (((((■|■))+((■|■))+)\()[0-2])(■){■}fail dot
  1603   |  6     (((((■|■)){■}((■){■})+)\()[0-2])■fail dotstar or empty
  1604   |  6     (((((■|■))+((■){■}){■})\()[0-2])■fail dotstar or empty
  1605   |  6     (((((■|■))+((■){■})+)■)[0-2])■fail dotstar or empty
  1606   |  6     (((((■|■))+((■){■})+)\()■)■fail dotstar or empty
  1607   |  6     (((((■|■))+((■■){■})+)\()[0-2])■fail dot
  1608   |  6     (((((■|■))+(((■|■)){■})+)\()[0-2])■fail dot
  1609   |  6     (((((■|■))+(((■){■}){■})+)\()[0-2])■fail dot
  1610   |  6     (((((■|■))+((■){■})+)\()[0-2])(■■)fail dot
  1611   |  6     (((((■|■))+((■){■})+)\()[0-2])(■|■)fail dot
  1612   |  6     (((((■|■))+((■){■})+)\()[0-2])(■){■}fail dot
  1613   |  6     (((((■|■)){■}(■)+)\()[0-2])(■■)fail dotstar or empty
  1614   |  6     (((((■|■))+(■){■})\()[0-2])(■■)fail dotstar or empty
  1615   |  6     (((((■|■))+(■)+)■)[0-2])(■■)fail dotstar or empty
  1616   |  6     (((((■|■))+(■)+)\()■)(■■)fail dotstar or empty
  1617   |  6     (((((■|■))+(■)+)\()[0-2])(■)fail dotstar or empty
  1618   |  6     (((((■|■))+(■)+)\()[0-2])((■■)■)fail dot
  1619   |  6     (((((■|■))+(■)+)\()[0-2])((■|■)■)fail dot
  1620   |  6     (((((■|■))+(■)+)\()[0-2])((■){■}■)fail dot
  1621   |  6     (((((■|■)){■}(■)+)\()[0-2])(■|■)fail dotstar or empty
  1622   |  6     (((((■|■))+(■){■})\()[0-2])(■|■)fail dotstar or empty
  1623   |  6     (((((■|■))+(■)+)■)[0-2])(■|■)fail dotstar or empty
  1624   |  6     (((((■|■))+(■)+)\()■)(■|■)fail dotstar or empty
  1625   |  6     (((((■|■))+(■)+)\()[0-2])(■■|■)fail dot
  1626   |  6     (((((■|■))+(■)+)\()[0-2])((■|■)|■)fail dot
  1627   |  6     (((((■|■))+(■)+)\()[0-2])((■){■}|■)fail dot
  1628   |  6     (((((■|■)){■}(■)+)\()[0-2])(■){■}fail dotstar or empty
  1629   |  6     (((((■|■))+(■){■})\()[0-2])(■){■}fail dotstar or empty
  1630   |  6     (((((■|■))+(■)+)■)[0-2])(■){■}fail dotstar or empty
  1631   |  6     (((((■|■))+(■)+)\()■)(■){■}fail dotstar or empty
  1632   |  6     (((((■|■))+(■)+)\()[0-2])(■■){■}fail dot
  1633   |  6     (((((■|■))+(■)+)\()[0-2])((■|■)){■}fail dot
  1634   |  6     (((((■|■))+(■)+)\()[0-2])((■){■}){■}fail dot
  1635   |  6     (((((■){■}){■}(■){■})\()[0-2])■fail dotstar or empty
  1636   |  6     (((((■){■}){■}(■)+)■)[0-2])■fail dotstar or empty
  1637   |  6     (((((■){■}){■}(■)+)\()■)■fail dotstar or empty
  1638   |  6     (((((■){■})+(■){■})■)[0-2])■fail dotstar or empty
  1639   |  6     (((((■){■})+(■){■})\()■)■fail dotstar or empty
  1640   |  6     (((((■){■})+(■)+)■)■)■  fail dotstar or empty
  1641   |  6     (((((■■){■}){■}(■)+)\()[0-2])■fail dotstar or empty
  1642   |  6     (((((■■){■})+(■){■})\()[0-2])■fail dotstar or empty
  1643   |  6     (((((■■){■})+(■)+)■)[0-2])■fail dotstar or empty
  1644   |  6     (((((■■){■})+(■)+)\()■)■fail dotstar or empty
  1645   |  6     ((((((■■)■){■})+(■)+)\()[0-2])■fail dot
  1646   |  6     ((((((■|■)■){■})+(■)+)\()[0-2])■fail dot
  1647   |  6     ((((((■){■}■){■})+(■)+)\()[0-2])■fail dot
  1648   |  6     (((((■(■■)){■})+(■)+)\()[0-2])■fail dot
  1649   |  6     (((((■(■|■)){■})+(■)+)\()[0-2])■fail dot
  1650   |  6     (((((■(■){■}){■})+(■)+)\()[0-2])■fail dot
  1651   |  6     (((((■■){■})+(■■)+)\()[0-2])■fail dot
  1652   |  6     (((((■■){■})+((■|■))+)\()[0-2])■fail dot
  1653   |  6     (((((■■){■})+((■){■})+)\()[0-2])■fail dot
  1654   |  6     (((((■■){■})+(■)+)\()[0-2])(■■)fail dot
  1655   |  6     (((((■■){■})+(■)+)\()[0-2])(■|■)fail dot
  1656   |  6     (((((■■){■})+(■)+)\()[0-2])(■){■}fail dot
  1657   |  6     ((((((■|■)){■}){■}(■)+)\()[0-2])■fail dotstar or empty
  1658   |  6     ((((((■|■)){■})+(■){■})\()[0-2])■fail dotstar or empty
  1659   |  6     ((((((■|■)){■})+(■)+)■)[0-2])■
10.033359050750732
timeout