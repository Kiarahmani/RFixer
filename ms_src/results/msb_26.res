
Given the regular expression:

  ([bc])*(a){3}([bc])*

That that should match the strings:

  ✓ (0:3)    cab
  ✓ (3:11)   caabaaac
  ✓ (11:21)  ababaccccc

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)*(a){3})([bc])*     fail dotstar or empty
  2      |  1     (([bc]){■}(a){3})([bc])*fail dotstar or empty
  3      |  1     (([bc])*(■){3})([bc])*  fail dot
  4      |  1     (([bc])*(a){■})([bc])*  fail dotstar or empty
  5      |  1     (([bc])*(a){3})(■)*     fail dotstar or empty
  6      |  1     (([bc])*(a){3})([bc]){■}fail dotstar or empty
  7      |  2     ((■){■}(a){3})([bc])*   fail dotstar or empty
  8      |  2     ((■)*(■){3})([bc])*     get a solution: (([abc])*([abc]){3})([bc])*
add positive: a
add negative: bbb
  9      |  2     ((■)*(a){■})([bc])*     get a solution: (([abc])*(a){1,3})([bc])*
add negative: aa
  unsatisfiable SAT formula       
  10     |  2     ((■)*(a){3})(■)*        fail dotstar or empty
  11     |  2     ((■)*(a){3})([bc]){■}   fail dotstar or empty
  12     |  2     (([bc]){■}(■){3})([bc])*fail dot
  13     |  2     (([bc]){■}(a){■})([bc])*fail dotstar or empty
  14     |  2     (([bc]){■}(a){3})(■)*   fail dotstar or empty
  15     |  2     (([bc]){■}(a){3})([bc]){■}fail dotstar or empty
  16     |  2     (■(a){3})([bc])*        fail dotstar or empty
  17     |  2     (([bc])*(■){■})([bc])*    unsatisfiable SAT formula       
  18     |  2     (([bc])*(■){3})(■)*     fail dot
  19     |  2     (([bc])*(■){3})([bc]){■}fail dot
  20     |  2     (([bc])*■)([bc])*       fail dot
  21     |  2     (([bc])*(■■){3})([bc])* fail dot
  22     |  2     (([bc])*((■|■)){3})([bc])*fail dot
  23     |  2     (([bc])*((■){■}){3})([bc])*  unsatisfiable SAT formula       
  24     |  2     (([bc])*(a){■})(■)*       unsatisfiable SAT formula       
  25     |  2     (([bc])*(a){■})([bc]){■}fail dotstar or empty
  26     |  2     (([bc])*(a){3})(■){■}   fail dotstar or empty
  27     |  2     (([bc])*(a){3})■        fail dotstar or empty
  28     |  3     ((■){■}(■){3})([bc])*   fail dot
  29     |  3     ((■){■}(a){■})([bc])*     unsatisfiable SAT formula       
  30     |  3     ((■){■}(a){3})(■)*      fail dotstar or empty
  31     |  3     ((■){■}(a){3})([bc]){■} fail dotstar or empty
  32     |  3     ((■)*(■){■})([bc])*       unsatisfiable SAT formula       
  33     |  3     ((■)*(■){3})(■)*        fail dot
  34     |  3     ((■)*(■){3})([bc]){■}   fail dot
  35     |  3     ((■)*■)([bc])*            unsatisfiable SAT formula       
  36     |  3     ((■■)*(■){3})([bc])*    fail dot
  37     |  3     (((■|■))*(■){3})([bc])* fail solve
  38     |  3     (((■){■})*(■){3})([bc])*fail dot
  39     |  3     ((■)*(■■){3})([bc])*    fail dot
  40     |  3     ((■)*((■|■)){3})([bc])* fail solve
  41     |  3     ((■)*((■){■}){3})([bc])*  unsatisfiable SAT formula       
  42     |  3     ((■)*(a){■})(■)*          unsatisfiable SAT formula       
  43     |  3     ((■)*(a){■})([bc]){■}     unsatisfiable SAT formula       
  44     |  3     ((■■)*(a){■})([bc])*      unsatisfiable SAT formula       
  45     |  3     (((■|■))*(a){■})([bc])* fail solve
  46     |  3     (((■){■})*(a){■})([bc])*  unsatisfiable SAT formula       
  47     |  3     ((■)*(a){3})(■){■}      fail dotstar or empty
  48     |  3     ((■)*(a){3})■           fail dotstar or empty
  49     |  3     (([bc]){■}(■){■})([bc])*  unsatisfiable SAT formula       
  50     |  3     (([bc]){■}(■){3})(■)*   fail dot
  51     |  3     (([bc]){■}(■){3})([bc]){■}fail dot
  52     |  3     (■(■){3})([bc])*        fail dot
  53     |  3     (([bc]){■}■)([bc])*     fail dot
  54     |  3     (([bc]){■}(■■){3})([bc])*fail dot
  55     |  3     (([bc]){■}((■|■)){3})([bc])*fail dot
  56     |  3     (([bc]){■}((■){■}){3})([bc])*  unsatisfiable SAT formula       
  57     |  3     (([bc]){■}(a){■})(■)*     unsatisfiable SAT formula       
  58     |  3     (([bc]){■}(a){■})([bc]){■}fail dotstar or empty
  59     |  3     (■(a){■})([bc])*        fail dot
  60     |  3     (([bc]){■}(a){3})(■){■} fail dotstar or empty
  61     |  3     (■(a){3})(■)*           fail dotstar or empty
  62     |  3     (■(a){3})([bc]){■}      fail dotstar or empty
  63     |  3     (([bc]){■}(a){3})■      fail dotstar or empty
  64     |  3     (([bc])*(■){■})(■)*       unsatisfiable SAT formula       
  65     |  3     (([bc])*(■){■})([bc]){■}  unsatisfiable SAT formula       
  66     |  3     (([bc])*(■■){■})([bc])* fail dot
  67     |  3     (([bc])*((■|■)){■})([bc])*fail solve
  68     |  3     (([bc])*((■){■}){■})([bc])*  unsatisfiable SAT formula       
  69     |  3     (([bc])*(■){3})(■){■}   fail dot
  70     |  3     (([bc])*■)(■)*            unsatisfiable SAT formula       
  71     |  3     (([bc])*(■■){3})(■)*    fail dot
  72     |  3     (([bc])*((■|■)){3})(■)* fail dot
  73     |  3     (([bc])*((■){■}){3})(■)*  unsatisfiable SAT formula       
  74     |  3     (([bc])*(■){3})(■■)*    fail dot
  75     |  3     (([bc])*(■){3})((■|■))* fail dot
  76     |  3     (([bc])*(■){3})((■){■})*fail dot
  77     |  3     (([bc])*■)([bc]){■}     fail dot
  78     |  3     (([bc])*(■){3})■        fail dot
  79     |  3     (([bc])*(■■){3})([bc]){■}fail dot
  80     |  3     (([bc])*((■|■)){3})([bc]){■}fail dot
  81     |  3     (([bc])*((■){■}){3})([bc]){■}  unsatisfiable SAT formula       
  82     |  3     (([bc])*(■■))([bc])*    fail dot
  83     |  3     (([bc])*(■|■))([bc])*   fail dot
  84     |  3     (([bc])*((■■)■){3})([bc])*fail dot
  85     |  3     (([bc])*((■|■)■){3})([bc])*fail dot
  86     |  3     (([bc])*((■){■}■){3})([bc])*fail dot
  87     |  3     (([bc])*((■■|■)){3})([bc])*fail dot
  88     |  3     (([bc])*(((■|■)|■)){3})([bc])*fail dot
  89     |  3     (([bc])*(((■){■}|■)){3})([bc])*  unsatisfiable SAT formula       
  90     |  3     (([bc])*((■■){■}){3})([bc])*fail dot
  91     |  3     (([bc])*(((■|■)){■}){3})([bc])*fail solve
  92     |  3     (([bc])*(((■){■}){■}){3})([bc])*
10.026520013809204
timeout