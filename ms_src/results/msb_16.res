
Given the regular expression:

  ((([4-9])+(\d)*(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?))

That that should match the strings:

  ✓ (0:3)    6.1
  ✓ (3:6)    5.1

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)get a solution: ((([1\.56])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 7
add negative: 1
get a solution: ((([\.567])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 8
add negative: .
  unsatisfiable SAT formula       
  2      |  1     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  3      |  1     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)get a solution: ((([4-9])+([1\.])*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 00
add negative: 4
  4      |  1     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  5      |  1     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  6      |  1     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  7      |  1     ((([4-9])+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  8      |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  9      |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  10     |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  11     |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  12     |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  13     |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  14     |  1     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  15     |  2     (((■){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  16     |  2     (((■)+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)get a solution: ((([56780])+([1\.])*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 9
add negative: 0
  unsatisfiable SAT formula       
  17     |  2     (((■)+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  18     |  2     (((■)+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  19     |  2     (((■)+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  20     |  2     (((■)+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  21     |  2     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  22     |  2     (((■)+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  23     |  2     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  24     |  2     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  25     |  2     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  26     |  2     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  27     |  2     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  28     |  2     (((■■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  29     |  2     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  30     |  2     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  31     |  2     ((([4-9]){■}(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  32     |  2     ((([4-9]){■}(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  33     |  2     ((([4-9]){■}(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  34     |  2     ((([4-9]){■}(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  35     |  2     ((([4-9]){■}(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  36     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  37     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  38     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  39     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  40     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  41     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  42     |  2     ((([4-9]){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  43     |  2     ((([4-9])+(■){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  44     |  2     ((([4-9])+(■)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  45     |  2     ((([4-9])+(■)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  46     |  2     ((([4-9])+(■)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  47     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  48     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  49     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  50     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  51     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  52     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  53     |  2     ((([4-9])+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  54     |  2     ((([4-9])+(■■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  55     |  2     ((([4-9])+((■|■))*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  56     |  2     ((([4-9])+((■){■})*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  57     |  2     ((([4-9])+(\d){■})(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  58     |  2     ((([4-9])+(\d){■})(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  59     |  2     ((([4-9])+(\d){■})(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  60     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  61     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  62     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  63     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  64     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  65     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  66     |  2     ((([4-9])+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  67     |  2     ((([4-9])+(\d)*)(■((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  68     |  2     ((([4-9])+(\d)*)(■((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  69     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  70     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  71     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  72     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  73     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  74     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  75     |  2     ((([4-9])+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  76     |  2     ((([4-9])+(\d)*)(\.((■)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  77     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  78     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  79     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  80     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  81     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  82     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  83     |  2     ((([4-9])+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  84     |  2     ((([4-9])+(\d)*)(\.((\*)|((■){■}(\.((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  85     |  2     ((([4-9])+(\d)*)(\.((\*)|((■)+(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  86     |  2     ((([4-9])+(\d)*)(\.((\*)|((■)+(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  87     |  2     ((([4-9])+(\d)*)(\.((\*)|((■)+(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  88     |  2     ((([4-9])+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  89     |  2     ((([4-9])+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  90     |  2     ((([4-9])+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  91     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(■((\*)|(([0-9])+)))?)))?)fail dotstar or empty
  92     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(\.((■)|(([0-9])+)))?)))?)fail dotstar or empty
  93     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|((■)+)))?)))?)fail dotstar or empty
  94     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  95     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  96     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  97     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(■((■)|(([0-9])+)))?)))?)fail dotstar or empty
  98     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(■((\*)|((■)+)))?)))?)fail dotstar or empty
  99     |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9]){■})))?)))?)fail dotstar or empty
  100    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+))){■})))?)fail dotstar or empty
  101    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?))){■})fail dotstar or empty
  102    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((■)|((■)+)))?)))?)fail dotstar or empty
  103    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9]){■})))?)))?)fail dotstar or empty
  104    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+))){■})))?)fail dotstar or empty
  105    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?))){■})fail dotstar or empty
  106    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■){■})))?)))?)fail dotstar or empty
  107    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+))){■})))?)fail dotstar or empty
  108    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?))){■})fail dotstar or empty
  109    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■}))){■})))?)fail dotstar or empty
  110    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?))){■})fail dotstar or empty
  111    |  2     ((([4-9])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■}))){■})fail dotstar or empty
  112    |  3     (((■){■}(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  113    |  3     (((■){■}(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  114    |  3     (((■){■}(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  115    |  3     (((■){■}(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  116    |  3     (((■){■}(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  117    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  118    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  119    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  120    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  121    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  122    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  123    |  3     (((■){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  124    |  3     (((■■){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  125    |  3     ((((■|■)){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  126    |  3     ((((■){■}){■}(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  127    |  3     (((■)+(■){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  128    |  3     (((■)+(■)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  129    |  3     (((■)+(■)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  130    |  3     (((■)+(■)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  131    |  3     (((■)+(■)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  132    |  3     (((■)+(■)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  133    |  3     (((■)+(■)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  134    |  3     (((■)+(■)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  135    |  3     (((■)+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  136    |  3     (((■)+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  137    |  3     (((■)+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  138    |  3     (((■■)+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  139    |  3     ((((■|■))+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  140    |  3     ((((■){■})+(■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  141    |  3     (((■)+(■■)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  142    |  3     (((■)+((■|■))*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  143    |  3     (((■)+((■){■})*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  144    |  3     (((■)+(\d){■})(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  145    |  3     (((■)+(\d){■})(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  146    |  3     (((■)+(\d){■})(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  147    |  3     (((■)+(\d){■})(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  148    |  3     (((■)+(\d){■})(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  149    |  3     (((■)+(\d){■})(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  150    |  3     (((■)+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  151    |  3     (((■)+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  152    |  3     (((■)+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  153    |  3     (((■)+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  154    |  3     (((■■)+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  155    |  3     ((((■|■))+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  156    |  3     ((((■){■})+(\d){■})(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  157    |  3     (((■)+(\d)*)(■((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  158    |  3     (((■)+(\d)*)(■((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  159    |  3     (((■)+(\d)*)(■((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  160    |  3     (((■)+(\d)*)(■((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  161    |  3     (((■)+(\d)*)(■((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  162    |  3     (((■)+(\d)*)(■((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  163    |  3     (((■)+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  164    |  3     (((■)+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  165    |  3     (((■)+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  166    |  3     (((■■)+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  167    |  3     ((((■|■))+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  168    |  3     ((((■){■})+(\d)*)(■((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  169    |  3     (((■)+(\d)*)((■■)((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  170    |  3     (((■)+(\d)*)((■|■)((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  171    |  3     (((■)+(\d)*)((■){■}((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  172    |  3     (((■)+(\d)*)(\.((■)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  173    |  3     (((■)+(\d)*)(\.((■)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  174    |  3     (((■)+(\d)*)(\.((■)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  175    |  3     (((■)+(\d)*)(\.((■)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  176    |  3     (((■)+(\d)*)(\.((■)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  177    |  3     (((■)+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  178    |  3     (((■)+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  179    |  3     (((■)+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  180    |  3     (((■■)+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  181    |  3     ((((■|■))+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  182    |  3     ((((■){■})+(\d)*)(\.((■)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  183    |  3     (((■)+(\d)*)(\.(((■■))|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  184    |  3     (((■)+(\d)*)(\.(((■|■))|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  185    |  3     (((■)+(\d)*)(\.(((■){■})|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  186    |  3     (((■)+(\d)*)(\.((\*)|((■){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  187    |  3     (((■)+(\d)*)(\.((\*)|((■)+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  188    |  3     (((■)+(\d)*)(\.((\*)|((■)+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  189    |  3     (((■)+(\d)*)(\.((\*)|((■)+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  190    |  3     (((■)+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  191    |  3     (((■)+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  192    |  3     (((■)+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  193    |  3     (((■■)+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail dot
  194    |  3     ((((■|■))+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)fail solve
  195    |  3     ((((■){■})+(\d)*)(\.((\*)|((■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  196    |  3     (((■)+(\d)*)(\.((\*)|((■■)+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  197    |  3     (((■)+(\d)*)(\.((\*)|(((■|■))+(\.((\*)|(([0-9])+)))?)))?)fail solve
  198    |  3     (((■)+(\d)*)(\.((\*)|(((■){■})+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  199    |  3     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  200    |  3     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  201    |  3     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  202    |  3     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  203    |  3     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  204    |  3     (((■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  205    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail dot
  206    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)fail solve
  207    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9]){■}(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  208    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(■((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  209    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(■((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  210    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  211    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  212    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  213    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail dot
  214    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)fail solve
  215    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(■((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  216    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+((■■)((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  217    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+((■|■)((\*)|(([0-9])+)))?)))?)fail solve
  218    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+((■){■}((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  219    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((■)|((■)+)))?)))?)  unsatisfiable SAT formula       
  220    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  221    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  222    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  223    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail dot
  224    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)fail solve
  225    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((■)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  226    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.(((■■))|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  227    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.(((■|■))|(([0-9])+)))?)))?)fail solve
  228    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.(((■){■})|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  229    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■){■})))?)))?)  unsatisfiable SAT formula       
  230    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+))){■})))?)  unsatisfiable SAT formula       
  231    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?))){■})  unsatisfiable SAT formula       
  232    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail dot
  233    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)fail solve
  234    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■)+)))?)))?)  unsatisfiable SAT formula       
  235    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|((■■)+)))?)))?)  unsatisfiable SAT formula       
  236    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(((■|■))+)))?)))?)fail solve
  237    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(((■){■})+)))?)))?)  unsatisfiable SAT formula       
  238    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■}))){■})))?)  unsatisfiable SAT formula       
  239    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?))){■})  unsatisfiable SAT formula       
  240    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail dot
  241    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)fail solve
  242    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9]){■})))?)))?)  unsatisfiable SAT formula       
  243    |  3     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■}))){■})  unsatisfiable SAT formula       
  244    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail dot
  245    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)fail solve
  246    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+))){■})))?)  unsatisfiable SAT formula       
  247    |  3     (((■■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail dot
  248    |  3     ((((■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})fail solve
  249    |  3     ((((■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?))){■})  unsatisfiable SAT formula       
  250    |  3     ((((■■)■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  251    |  3     ((((■|■)■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  252    |  3     ((((■){■}■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  253    |  3     (((■(■■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  254    |  3     (((■(■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail dot
  255    |  3     (((■(■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  256    |  3     ((((■■|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)get a solution: (((([\.60][1\.0]|[56789]))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 10
add negative: ..
get a solution: (((([1560][\.0]|[789]))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 5
add negative: 0.
get a solution: (((([1\.0][10]|[56789]))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
add positive: 20
add negative: .0
  unsatisfiable SAT formula       
  257    |  3     (((((■|■)|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  258    |  3     (((((■){■}|■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  259    |  3     ((((■|■■))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  260    |  3     ((((■|(■|■)))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  261    |  3     ((((■|(■){■}))+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  262    |  3     ((((■■){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  unsatisfiable SAT formula       
  263    |  3     (((((■|■)){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)fail solve
  264    |  3     (((((■){■}){■})+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
2.05366587638855
timeout