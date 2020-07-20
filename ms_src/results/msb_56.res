
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
  179    |  3     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])((■|■)){1})([a]){1}
1.0161259174346924
timeout