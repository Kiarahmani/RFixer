
Given the regular expression:

  ([a]){1}([b]){1}[aaaaaaabbbbbbbcccccccc||||||||]([b]){1}([a]){1}

That that should match the strings:

  ✓ (0:6)    abccba
  ✓ (6:14)   abccabba

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  2      |  1     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  3      |  1     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  4      |  1     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  5      |  1     (((([a]){1}([b]){1})■)([b]){1})([a]){1}fail dot
  6      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  7      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  8      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  9      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  10     |  2     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  11     |  2     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  12     |  2     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  13     |  2     ((((■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  14     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  15     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  16     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  17     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  18     |  2     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  19     |  2     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  20     |  2     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  21     |  2     (((([a]){■}([b]){1})■)([b]){1})([a]){1}fail dot
  22     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  23     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  24     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  25     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  26     |  2     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}get a solution: (((([a]){1}([abc]){1,4})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}
add positive: abba
add negative: aaaba
  unsatisfiable SAT formula       
  27     |  2     (((([a]){1}(■){1})■)([b]){1})([a]){1}fail dot
  28     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  29     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  30     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  31     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  32     |  2     (((([a]){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  33     |  2     (((([a]){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  34     |  2     (((([a]){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  35     |  2     (((([a]){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  36     |  2     (((([a]){1}([b]){■})■)([b]){1})([a]){1}fail dot
  37     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  38     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  39     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  40     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  41     |  2     (((([a]){1}([b]){1})■)(■){1})([a]){1}fail dot
  42     |  2     (((([a]){1}([b]){1})■)([b]){■})([a]){1}fail dot
  43     |  2     (((([a]){1}([b]){1})■)([b]){1})(■){1}fail dot
  44     |  2     (((([a]){1}([b]){1})■)([b]){1})([a]){■}fail dot
  45     |  2     (((([a]){1}([b]){1})(■■))([b]){1})([a]){1}fail dot
  46     |  2     (((([a]){1}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  47     |  2     (((([a]){1}([b]){1})(■){■})([b]){1})([a]){1}get a solution: (((([a]){1}([b]){1})([abc]){0,4})([b]){1})([a]){1}
add positive: abbbbbbba
add negative: abbaba
  unsatisfiable SAT formula       
  48     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  49     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  50     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  51     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  52     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  53     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  54     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  55     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  56     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dotstar or empty
  57     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dotstar or empty
  58     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dotstar or empty
  59     |  3     ((((■){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  60     |  3     ((((■){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  61     |  3     ((((■){■}([b]){1})■)([b]){1})([a]){1}fail dot
  62     |  3     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  63     |  3     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  64     |  3     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  65     |  3     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  66     |  3     ((((■){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  67     |  3     ((((■){1}(■){1})■)([b]){1})([a]){1}fail dot
  68     |  3     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  69     |  3     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  70     |  3     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  71     |  3     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  72     |  3     (((■(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  73     |  3     ((((■){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  74     |  3     ((((■■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  75     |  3     (((((■|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  76     |  3     (((((■){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  77     |  3     ((((■){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  78     |  3     ((((■){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  79     |  3     ((((■){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  80     |  3     ((((■){1}([b]){■})■)([b]){1})([a]){1}fail dot
  81     |  3     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  82     |  3     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  83     |  3     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  84     |  3     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  85     |  3     (((■([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  86     |  3     ((((■■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  87     |  3     (((((■|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  88     |  3     (((((■){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  89     |  3     ((((■){1}([b]){1})■)(■){1})([a]){1}fail dot
  90     |  3     ((((■){1}([b]){1})■)([b]){■})([a]){1}fail dot
  91     |  3     ((((■){1}([b]){1})■)([b]){1})(■){1}fail dot
  92     |  3     ((((■){1}([b]){1})■)([b]){1})([a]){■}fail dot
  93     |  3     (((■([b]){1})■)([b]){1})([a]){1}fail dot
  94     |  3     ((((■■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  95     |  3     (((((■|■)){1}([b]){1})■)([b]){1})([a]){1}fail dot
  96     |  3     (((((■){■}){1}([b]){1})■)([b]){1})([a]){1}fail dot
  97     |  3     ((((■){1}([b]){1})(■■))([b]){1})([a]){1}fail dot
  98     |  3     ((((■){1}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  99     |  3     ((((■){1}([b]){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  100    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  101    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  102    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  103    |  3     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  104    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  105    |  3     ((((■■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  106    |  3     (((((■|■)){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  107    |  3     (((((■){■}){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  108    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  109    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  110    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  111    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  112    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dot
  113    |  3     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  114    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dotstar or empty
  115    |  3     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  116    |  3     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dotstar or empty
  117    |  3     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  118    |  3     (((([a]){■}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  119    |  3     (((([a]){■}(■){1})■)([b]){1})([a]){1}fail dot
  120    |  3     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  121    |  3     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  122    |  3     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  123    |  3     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  124    |  3     (((([a]){■}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  125    |  3     (((([a]){■}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  126    |  3     (((([a]){■}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  127    |  3     (((([a]){■}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  128    |  3     (((([a]){■}([b]){■})■)([b]){1})([a]){1}fail dot
  129    |  3     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  130    |  3     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  131    |  3     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  132    |  3     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  133    |  3     (((([a]){■}([b]){1})■)(■){1})([a]){1}fail dot
  134    |  3     (((([a]){■}([b]){1})■)([b]){■})([a]){1}fail dot
  135    |  3     (((([a]){■}([b]){1})■)([b]){1})(■){1}fail dot
  136    |  3     (((([a]){■}([b]){1})■)([b]){1})([a]){■}fail dot
  137    |  3     (((([a]){■}([b]){1})(■■))([b]){1})([a]){1}fail dot
  138    |  3     (((([a]){■}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  139    |  3     (((([a]){■}([b]){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  140    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  141    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  142    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  143    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  144    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  145    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  146    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  147    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  148    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dotstar or empty
  149    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dotstar or empty
  150    |  3     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dotstar or empty
  151    |  3     (((([a]){1}(■){■})■)([b]){1})([a]){1}get a solution: (((([a]){1}([abc]){0,5})[bc])([b]){1})([a]){1}
add positive: ababa
add negative: acba
  unsatisfiable SAT formula       
  152    |  3     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  153    |  3     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  154    |  3     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  155    |  3     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  156    |  3     (((([a]){1}(■■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  157    |  3     (((([a]){1}((■|■)){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  158    |  3     (((([a]){1}((■){■}){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  159    |  3     (((([a]){1}(■){1})■)(■){1})([a]){1}fail dot
  160    |  3     (((([a]){1}(■){1})■)([b]){■})([a]){1}fail dot
  161    |  3     (((([a]){1}(■){1})■)([b]){1})(■){1}fail dot
  162    |  3     (((([a]){1}(■){1})■)([b]){1})([a]){■}fail dot
  163    |  3     (((([a]){1}■)■)([b]){1})([a]){1}fail dot
  164    |  3     (((([a]){1}(■■){1})■)([b]){1})([a]){1}fail dot
  165    |  3     (((([a]){1}((■|■)){1})■)([b]){1})([a]){1}fail dot
  166    |  3     (((([a]){1}((■){■}){1})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  167    |  3     (((([a]){1}(■){1})(■■))([b]){1})([a]){1}fail dot
  168    |  3     (((([a]){1}(■){1})(■|■))([b]){1})([a]){1}fail dot
  169    |  3     (((([a]){1}(■){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  170    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  171    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  172    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  173    |  3     (((([a]){1}■)[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  174    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  175    |  3     (((([a]){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  176    |  3     (((([a]){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  177    |  3     (((([a]){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  178    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  179    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  180    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  181    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  182    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dot
  183    |  3     (((([a]){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  184    |  3     (((([a]){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  185    |  3     (((([a]){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  186    |  3     (((([a]){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  187    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dot
  188    |  3     (((([a]){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  189    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dot
  190    |  3     (((([a]){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  191    |  3     (((([a]){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  192    |  3     (((([a]){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  193    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■■){1}fail dot
  194    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})((■|■)){1}fail dot
  195    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})((■){■}){1}fail dot
  196    |  3     (((([a]){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  197    |  3     (((([a]){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  198    |  3     (((([a]){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  199    |  3     (((([a]){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  200    |  3     (((([a]){1}(■■))[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  201    |  3     (((([a]){1}(■|■))[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  202    |  3     (((([a]){1}((■■)■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  203    |  3     (((([a]){1}((■|■)■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  204    |  3     (((([a]){1}((■){■}■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  205    |  3     (((([a]){1}((■■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  206    |  3     (((([a]){1}(((■|■)|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  207    |  3     (((([a]){1}(((■){■}|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  208    |  3     (((([a]){1}((■■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  209    |  3     (((([a]){1}(((■|■)){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  210    |  3     (((([a]){1}(((■){■}){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  211    |  3     (((([a]){1}([b]){■})■)(■){1})([a]){1}fail dot
  212    |  3     (((([a]){1}([b]){■})■)([b]){■})([a]){1}fail dot
  213    |  3     (((([a]){1}([b]){■})■)([b]){1})(■){1}fail dot
  214    |  3     (((([a]){1}([b]){■})■)([b]){1})([a]){■}fail dot
  215    |  3     (((([a]){1}([b]){■})(■■))([b]){1})([a]){1}fail dot
  216    |  3     (((([a]){1}([b]){■})(■|■))([b]){1})([a]){1}fail dot
  217    |  3     (((([a]){1}([b]){■})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  218    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  219    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  220    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  221    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  222    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  223    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  224    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  225    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  226    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dotstar or empty
  227    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dotstar or empty
  228    |  3     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dotstar or empty
  229    |  3     (((([a]){1}([b]){1})■)(■){■})([a]){1}  unsatisfiable SAT formula       
  230    |  3     (((([a]){1}([b]){1})■)(■){1})(■){1}fail dot
  231    |  3     (((([a]){1}([b]){1})■)(■){1})([a]){■}fail dot
  232    |  3     (((([a]){1}([b]){1})■)■)([a]){1}fail dot
  233    |  3     (((([a]){1}([b]){1})(■■))(■){1})([a]){1}fail dot
  234    |  3     (((([a]){1}([b]){1})(■|■))(■){1})([a]){1}fail dot
  235    |  3     (((([a]){1}([b]){1})(■){■})(■){1})([a]){1}  unsatisfiable SAT formula       
  236    |  3     (((([a]){1}([b]){1})■)(■■){1})([a]){1}fail dot
  237    |  3     (((([a]){1}([b]){1})■)((■|■)){1})([a]){1}fail dot
  238    |  3     (((([a]){1}([b]){1})■)((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  239    |  3     (((([a]){1}([b]){1})■)([b]){■})(■){1}fail dot
  240    |  3     (((([a]){1}([b]){1})■)([b]){■})([a]){■}fail dot
  241    |  3     (((([a]){1}([b]){1})(■■))([b]){■})([a]){1}fail dot
  242    |  3     (((([a]){1}([b]){1})(■|■))([b]){■})([a]){1}fail dot
  243    |  3     (((([a]){1}([b]){1})(■){■})([b]){■})([a]){1}get a solution: (((([a]){1}([b]){1})([ac]){0,5})([b]){1,6})([a]){1}
add positive: abbcba
  unsatisfiable SAT formula       
  244    |  3     (((([a]){1}([b]){1})■)([b]){1})(■){■}fail dot
  245    |  3     (((([a]){1}([b]){1})■)([b]){1})■fail dot
  246    |  3     (((([a]){1}([b]){1})(■■))([b]){1})(■){1}fail dot
  247    |  3     (((([a]){1}([b]){1})(■|■))([b]){1})(■){1}fail dot
  248    |  3     (((([a]){1}([b]){1})(■){■})([b]){1})(■){1}  unsatisfiable SAT formula       
  249    |  3     (((([a]){1}([b]){1})■)([b]){1})(■■){1}fail dot
  250    |  3     (((([a]){1}([b]){1})■)([b]){1})((■|■)){1}fail dot
  251    |  3     (((([a]){1}([b]){1})■)([b]){1})((■){■}){1}fail dot
  252    |  3     (((([a]){1}([b]){1})(■■))([b]){1})([a]){■}fail dot
  253    |  3     (((([a]){1}([b]){1})(■|■))([b]){1})([a]){■}fail dot
  254    |  3     (((([a]){1}([b]){1})(■){■})([b]){1})([a]){■}  unsatisfiable SAT formula       
  255    |  3     (((([a]){1}([b]){1})(■))([b]){1})([a]){1}fail dot
  256    |  3     (((([a]){1}([b]){1})((■■)■))([b]){1})([a]){1}fail dot
  257    |  3     (((([a]){1}([b]){1})((■|■)■))([b]){1})([a]){1}fail dot
  258    |  3     (((([a]){1}([b]){1})((■){■}■))([b]){1})([a]){1}fail dot
  259    |  3     (((([a]){1}([b]){1})(■■|■))([b]){1})([a]){1}fail dot
  260    |  3     (((([a]){1}([b]){1})((■|■)|■))([b]){1})([a]){1}fail dot
  261    |  3     (((([a]){1}([b]){1})((■){■}|■))([b]){1})([a]){1}  unsatisfiable SAT formula       
  262    |  3     (((([a]){1}([b]){1})(■■){■})([b]){1})([a]){1}fail dot
  263    |  3     (((([a]){1}([b]){1})((■|■)){■})([b]){1})([a]){1}fail solve
  264    |  3     (((([a]){1}([b]){1})((■){■}){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  265    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})(■){1}  unsatisfiable SAT formula       
  266    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){■}  unsatisfiable SAT formula       
  267    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){■})([a]){1}fail dot
  268    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){■})([a]){1}fail solve
  269    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){■})([a]){1}  unsatisfiable SAT formula       
  270    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){■}  unsatisfiable SAT formula       
  271    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])■)(■){1}fail dot
  272    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})■fail dot
  273    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})(■){1}fail dot
  274    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})(■){1}fail dot
  275    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})(■){1}  unsatisfiable SAT formula       
  276    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■■){1}fail dot
  277    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})((■|■)){1}fail dot
  278    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})((■){■}){1}  unsatisfiable SAT formula       
  279    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){■}fail dot
  280    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){■}fail dot
  281    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){■}fail dot
  282    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){■}  unsatisfiable SAT formula       
  283    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■))([a]){1}fail dot
  284    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■|■))([a]){1}fail dot
  285    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■■)■){1})([a]){1}fail dot
  286    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)■){1})([a]){1}fail dot
  287    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}■){1})([a]){1}fail dot
  288    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■■|■)){1})([a]){1}fail dot
  289    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(((■|■)|■)){1})([a]){1}fail dot
  290    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(((■){■}|■)){1})([a]){1}  unsatisfiable SAT formula       
  291    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■■){■}){1})([a]){1}fail dot
  292    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(((■|■)){■}){1})([a]){1}fail solve
  293    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(((■){■}){■}){1})([a]){1}  unsatisfiable SAT formula       
  294    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){■}  unsatisfiable SAT formula       
  295    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})■fail dot
  296    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■■){1}fail dot
  297    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})((■|■)){1}fail dot
  298    |  3     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})((■){■}){1}  unsatisfiable SAT formula       
  299    |  4     ((((■){■}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  300    |  4     ((((■){■}(■){1})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  301    |  4     ((((■){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  302    |  4     ((((■){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  303    |  4     ((((■){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  304    |  4     ((((■){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  305    |  4     ((((■){■}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  306    |  4     ((((■■){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  307    |  4     (((((■|■)){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  308    |  4     (((((■){■}){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  309    |  4     ((((■){■}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  310    |  4     ((((■){■}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  311    |  4     ((((■){■}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  312    |  4     ((((■){■}([b]){■})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  313    |  4     ((((■){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  314    |  4     ((((■){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  315    |  4     ((((■){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  316    |  4     ((((■){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  317    |  4     ((((■■){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  318    |  4     (((((■|■)){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  319    |  4     (((((■){■}){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  320    |  4     ((((■){■}([b]){1})■)(■){1})([a]){1}fail dot
  321    |  4     ((((■){■}([b]){1})■)([b]){■})([a]){1}fail dot
  322    |  4     ((((■){■}([b]){1})■)([b]){1})(■){1}fail dot
  323    |  4     ((((■){■}([b]){1})■)([b]){1})([a]){■}fail dot
  324    |  4     ((((■■){■}([b]){1})■)([b]){1})([a]){1}fail dot
  325    |  4     (((((■|■)){■}([b]){1})■)([b]){1})([a]){1}fail dot
  326    |  4     (((((■){■}){■}([b]){1})■)([b]){1})([a]){1}fail dot
  327    |  4     ((((■){■}([b]){1})(■■))([b]){1})([a]){1}fail dot
  328    |  4     ((((■){■}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  329    |  4     ((((■){■}([b]){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  330    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  331    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  332    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  333    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  334    |  4     ((((■■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  335    |  4     (((((■|■)){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  336    |  4     (((((■){■}){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  337    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  338    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  339    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  340    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  341    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}  unsatisfiable SAT formula       
  342    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dotstar or empty
  343    |  4     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dotstar or empty
  344    |  4     ((((■){1}(■){■})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  345    |  4     ((((■){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  346    |  4     ((((■){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  347    |  4     ((((■){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  348    |  4     ((((■){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  349    |  4     ((((■■){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  350    |  4     (((((■|■)){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  351    |  4     (((((■){■}){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  352    |  4     ((((■){1}(■■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  353    |  4     ((((■){1}((■|■)){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  354    |  4     ((((■){1}((■){■}){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  355    |  4     ((((■){1}(■){1})■)(■){1})([a]){1}fail dot
  356    |  4     ((((■){1}(■){1})■)([b]){■})([a]){1}fail dot
  357    |  4     ((((■){1}(■){1})■)([b]){1})(■){1}fail dot
  358    |  4     ((((■){1}(■){1})■)([b]){1})([a]){■}fail dot
  359    |  4     (((■(■){1})■)([b]){1})([a]){1}fail dot
  360    |  4     ((((■){1}■)■)([b]){1})([a]){1}fail dot
  361    |  4     ((((■■){1}(■){1})■)([b]){1})([a]){1}fail dot
  362    |  4     (((((■|■)){1}(■){1})■)([b]){1})([a]){1}fail dot
  363    |  4     (((((■){■}){1}(■){1})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  364    |  4     ((((■){1}(■■){1})■)([b]){1})([a]){1}fail dot
  365    |  4     ((((■){1}((■|■)){1})■)([b]){1})([a]){1}fail dot
  366    |  4     ((((■){1}((■){■}){1})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  367    |  4     ((((■){1}(■){1})(■■))([b]){1})([a]){1}fail dot
  368    |  4     ((((■){1}(■){1})(■|■))([b]){1})([a]){1}fail dot
  369    |  4     ((((■){1}(■){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  370    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  371    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  372    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  373    |  4     (((■(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  374    |  4     ((((■){1}■)[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  375    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  376    |  4     ((((■■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  377    |  4     (((((■|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  378    |  4     (((((■){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  379    |  4     ((((■){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  380    |  4     ((((■){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  381    |  4     ((((■){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  382    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  383    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  384    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  385    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  386    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dot
  387    |  4     (((■(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  388    |  4     ((((■){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  389    |  4     ((((■■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  390    |  4     (((((■|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  391    |  4     (((((■){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  392    |  4     ((((■){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  393    |  4     ((((■){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  394    |  4     ((((■){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  395    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dot
  396    |  4     (((■(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  397    |  4     ((((■){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  398    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dot
  399    |  4     ((((■■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  400    |  4     (((((■|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  401    |  4     (((((■){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  402    |  4     ((((■){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  403    |  4     ((((■){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  404    |  4     ((((■){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  405    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■■){1}fail dot
  406    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})((■|■)){1}fail dot
  407    |  4     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})((■){■}){1}fail dot
  408    |  4     (((■(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  409    |  4     ((((■){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  410    |  4     ((((■■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  411    |  4     (((((■|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  412    |  4     (((((■){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  413    |  4     ((((■){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  414    |  4     ((((■){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  415    |  4     ((((■){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  416    |  4     (((■■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  417    |  4     ((((■■)(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  418    |  4     ((((■|■)(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  419    |  4     (((■(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  420    |  4     (((■((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  421    |  4     (((■((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  422    |  4     ((((■■){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  423    |  4     (((((■|■)){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  424    |  4     (((((■){■}){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  425    |  4     ((((■){1}(■■))[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  426    |  4     ((((■){1}(■|■))[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  427    |  4     (((((■■)■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  428    |  4     (((((■|■)■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  429    |  4     (((((■){■}■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  430    |  4     ((((■■){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  431    |  4     ((((■■){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  432    |  4     ((((■■){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  433    |  4     (((((■■|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  434    |  4     ((((((■|■)|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  435    |  4     ((((((■){■}|■)){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  436    |  4     (((((■|■)){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  437    |  4     (((((■|■)){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  438    |  4     (((((■|■)){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  439    |  4     (((((■■){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  440    |  4     ((((((■|■)){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  441    |  4     ((((((■){■}){■}){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  442    |  4     (((((■){■}){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  443    |  4     (((((■){■}){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  444    |  4     (((((■){■}){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  445    |  4     ((((■){1}((■■)■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  446    |  4     ((((■){1}((■|■)■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  447    |  4     ((((■){1}((■){■}■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  448    |  4     ((((■){1}((■■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  449    |  4     ((((■){1}(((■|■)|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  450    |  4     ((((■){1}(((■){■}|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  451    |  4     ((((■){1}((■■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  452    |  4     ((((■){1}(((■|■)){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  453    |  4     ((((■){1}(((■){■}){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  454    |  4     ((((■){1}([b]){■})■)(■){1})([a]){1}fail dot
  455    |  4     ((((■){1}([b]){■})■)([b]){■})([a]){1}fail dot
  456    |  4     ((((■){1}([b]){■})■)([b]){1})(■){1}fail dot
  457    |  4     ((((■){1}([b]){■})■)([b]){1})([a]){■}fail dot
  458    |  4     (((■([b]){■})■)([b]){1})([a]){1}fail dot
  459    |  4     ((((■■){1}([b]){■})■)([b]){1})([a]){1}fail dot
  460    |  4     (((((■|■)){1}([b]){■})■)([b]){1})([a]){1}fail dot
  461    |  4     (((((■){■}){1}([b]){■})■)([b]){1})([a]){1}  unsatisfiable SAT formula       
  462    |  4     ((((■){1}([b]){■})(■■))([b]){1})([a]){1}fail dot
  463    |  4     ((((■){1}([b]){■})(■|■))([b]){1})([a]){1}fail dot
  464    |  4     ((((■){1}([b]){■})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  465    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}  unsatisfiable SAT formula       
  466    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})(■){1}fail dot
  467    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){■}fail dot
  468    |  4     (((■([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  469    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])■)([a]){1}fail dot
  470    |  4     ((((■■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  471    |  4     (((((■|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  472    |  4     (((((■){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}  unsatisfiable SAT formula       
  473    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■■){1})([a]){1}fail dot
  474    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}fail dot
  475    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  476    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})(■){1}fail dot
  477    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){■}fail dot
  478    |  4     (((■([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  479    |  4     ((((■■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  480    |  4     (((((■|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  481    |  4     (((((■){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}  unsatisfiable SAT formula       
  482    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){■}fail dot
  483    |  4     (((■([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  484    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})■fail dot
  485    |  4     ((((■■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  486    |  4     (((((■|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  487    |  4     (((((■){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}  unsatisfiable SAT formula       
  488    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■■){1}fail dot
  489    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})((■|■)){1}fail dot
  490    |  4     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})((■){■}){1}fail dot
  491    |  4     (((■([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  492    |  4     ((((■■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  493    |  4     (((((■|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  494    |  4     (((((■){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}  unsatisfiable SAT formula       
  495    |  4     ((((■■)([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  496    |  4     ((((■|■)([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  497    |  4     (((((■■)■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  498    |  4     (((((■|■)■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  499    |  4     (((((■){■}■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  500    |  4     (((((■■|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  501    |  4     ((((((■|■)|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  502    |  4     ((((((■){■}|■)){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  503    |  4     (((((■■){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  504    |  4     ((((((■|■)){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail solve
  505    |  4     ((((((■){■}){■}){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  506    |  4     ((((■){1}([b]){1})■)(■){■})([a]){1}  unsatisfiable SAT formula       
  507    |  4     ((((■){1}([b]){1})■)(■){1})(■){1}fail dot
  508    |  4     ((((■){1}([b]){1})■)(■){1})([a]){■}fail dot
  509    |  4     (((■([b]){1})■)(■){1})([a]){1}fail dot
  510    |  4     ((((■){1}([b]){1})■)■)([a]){1}fail dot
  511    |  4     ((((■■){1}([b]){1})■)(■){1})([a]){1}fail dot
  512    |  4     (((((■|■)){1}([b]){1})■)(■){1})([a]){1}fail dot
  513    |  4     (((((■){■}){1}([b]){1})■)(■){1})([a]){1}fail dot
  514    |  4     ((((■){1}([b]){1})(■■))(■){1})([a]){1}fail dot
  515    |  4     ((((■){1}([b]){1})(■|■))(■){1})([a]){1}fail dot
  516    |  4     ((((■){1}([b]){1})(■){■})(■){1})([a]){1}  unsatisfiable SAT formula       
  517    |  4     ((((■){1}([b]){1})■)(■■){1})([a]){1}fail dot
  518    |  4     ((((■){1}([b]){1})■)((■|■)){1})([a]){1}fail dot
  519    |  4     ((((■){1}([b]){1})■)((■){■}){1})([a]){1}  unsatisfiable SAT formula       
  520    |  4     ((((■){1}([b]){1})■)([b]){■})(■){1}fail dot
  521    |  4     ((((■){1}([b]){1})■)([b]){■})([a]){■}fail dot
  522    |  4     (((■([b]){1})■)([b]){■})([a]){1}fail dot
  523    |  4     ((((■■){1}([b]){1})■)([b]){■})([a]){1}fail dot
  524    |  4     (((((■|■)){1}([b]){1})■)([b]){■})([a]){1}fail dot
  525    |  4     (((((■){■}){1}([b]){1})■)([b]){■})([a]){1}fail dot
  526    |  4     ((((■){1}([b]){1})(■■))([b]){■})([a]){1}fail dot
  527    |  4     ((((■){1}([b]){1})(■|■))([b]){■})([a]){1}fail dot
  528    |  4     ((((■){1}([b]){1})(■){■})([b]){■})([a]){1}  unsatisfiable SAT formula       
  529    |  4     ((((■){1}([b]){1})■)([b]){1})(■){■}fail dot
  530    |  4     (((■([b]){1})■)([b]){1})(■){1}fail dot
  531    |  4     ((((■){1}([b]){1})■)([b]){1})■fail dot
  532    |  4     ((((■■){1}([b]){1})■)([b]){1})(■){1}fail dot
  533    |  4     (((((■|■)){1}([b]){1})■)([b]){1})(■){1}fail dot
  534    |  4     (((((■){■}){1}([b]){1})■)([b]){1})(■){1}fail dot
  535    |  4     ((((■){1}([b]){1})(■■))([b]){1})(■){1}fail dot
  536    |  4     ((((■){1}([b]){1})(■|■))([b]){1})(■){1}fail dot
  537    |  4     ((((■){1}([b]){1})(■){■})([b]){1})(■){1}  unsatisfiable SAT formula       
  538    |  4     ((((■){1}([b]){1})■)([b]){1})(■■){1}fail dot
  539    |  4     ((((■){1}([b]){1})■)([b]){1})((■|■)){1}fail dot
  540    |  4     ((((■){1}([b]){1})■)([b]){1})((■){■}){1}fail dot
  541    |  4     (((■([b]){1})■)([b]){1})([a]){■}fail dot
  542    |  4     ((((■■){1}([b]){1})■)([b]){1})([a]){■}fail dot
  543    |  4     (((((■|■)){1}([b]){1})■)([b]){1})([a]){■}fail dot
  544    |  4     (((((■){■}){1}([b]){1})■)([b]){1})([a]){■}fail dot
  545    |  4     ((((■){1}([b]){1})(■■))([b]){1})([a]){■}fail dot
  546    |  4     ((((■){1}([b]){1})(■|■))([b]){1})([a]){■}fail dot
  547    |  4     ((((■){1}([b]){1})(■){■})([b]){1})([a]){■}  unsatisfiable SAT formula       
  548    |  4     ((((■■)([b]){1})■)([b]){1})([a]){1}fail dot
  549    |  4     ((((■|■)([b]){1})■)([b]){1})([a]){1}fail dot
  550    |  4     (((■([b]){1})(■■))([b]){1})([a]){1}fail dot
  551    |  4     (((■([b]){1})(■|■))([b]){1})([a]){1}fail dot
  552    |  4     (((■([b]){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  553    |  4     (((((■■)■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  554    |  4     (((((■|■)■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  555    |  4     (((((■){■}■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  556    |  4     ((((■■){1}([b]){1})(■■))([b]){1})([a]){1}fail dot
  557    |  4     ((((■■){1}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  558    |  4     ((((■■){1}([b]){1})(■){■})([b]){1})([a]){1}fail dot
  559    |  4     (((((■■|■)){1}([b]){1})■)([b]){1})([a]){1}fail dot
  560    |  4     ((((((■|■)|■)){1}([b]){1})■)([b]){1})([a]){1}fail dot
  561    |  4     ((((((■){■}|■)){1}([b]){1})■)([b]){1})([a]){1}fail dot
  562    |  4     (((((■|■)){1}([b]){1})(■■))([b]){1})([a]){1}fail dot
  563    |  4     (((((■|■)){1}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  564    |  4     (((((■|■)){1}([b]){1})(■){■})([b]){1})([a]){1}  unsatisfiable SAT formula       
  565    |  4     (((((■■){■}){1}([b]){1})■)([b]){1})([a]){1}fail dot
  566    |  4     ((((((■|■)){■}){1}([b]){1})■)([b]){1})([a]){1}fail dot
  567    |  4     ((((((■){■}){■}){1}([b]){1})■)([b]){1})([a]){1}fail dot
  568    |  4     (((((■){■}){1}([b]){1})(■■))([b]){1})([a]){1}fail dot
  569    |  4     (((((■){■}){1}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  570    |  4     (((((■){■}){1}([b]){1})(■){■})([b]){1})([a]){1}
2.0254039764404297
timeout