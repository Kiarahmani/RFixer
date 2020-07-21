
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
  200    |  4     (((([a-zA-Z])+((■|■)■)+)\()[0-2])■
2.0276570320129395
timeout