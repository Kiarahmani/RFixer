
Given the regular expression:

  (\d){1,2}(\.){0,1}(\d){0,3}

That that should match the strings:

  ✓ (0:5)    11.11
  ✓ (5:9)    11.1
  ✓ (9:15)   11.111

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){1,2}(\.){0,1})(\d){0,3}get a solution: ((1){1,2}(\.){0,1})(\d){0,3}
add positive: 0
add negative: 1.
  unsatisfiable SAT formula       
  2      |  1     ((\d){■}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  3      |  1     ((\d){1,2}(■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  4      |  1     ((\d){1,2}(\.){■})(\d){0,3}  unsatisfiable SAT formula       
  5      |  1     ((\d){1,2}(\.){0,1})(■){0,3}fail dotstar or empty
  6      |  1     ((\d){1,2}(\.){0,1})(\d){■}  unsatisfiable SAT formula       
  7      |  2     ((■){■}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  8      |  2     ((■){1,2}(■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  9      |  2     ((■){1,2}(\.){■})(\d){0,3}  unsatisfiable SAT formula       
  10     |  2     ((■){1,2}(\.){0,1})(■){0,3}  unsatisfiable SAT formula       
  11     |  2     ((■){1,2}(\.){0,1})(\d){■}  unsatisfiable SAT formula       
  12     |  2     (■(\.){0,1})(\d){0,3}   fail dot
  13     |  2     ((■■){1,2}(\.){0,1})(\d){0,3}fail dot
  14     |  2     (((■|■)){1,2}(\.){0,1})(\d){0,3}fail solve
  15     |  2     (((■){■}){1,2}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  16     |  2     ((\d){■}(■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  17     |  2     ((\d){■}(\.){■})(\d){0,3}  unsatisfiable SAT formula       
  18     |  2     ((\d){■}(\.){0,1})(■){0,3}  unsatisfiable SAT formula       
  19     |  2     ((\d){■}(\.){0,1})(\d){■}get a solution: ((\d){0,2}(\.){0,1})(\d){1,3}
add negative: .0
  unsatisfiable SAT formula       
  20     |  2     ((\d){1,2}(■){■})(\d){0,3}  unsatisfiable SAT formula       
  21     |  2     ((\d){1,2}(■){0,1})(■){0,3}  unsatisfiable SAT formula       
  22     |  2     ((\d){1,2}(■){0,1})(\d){■}  unsatisfiable SAT formula       
  23     |  2     ((\d){1,2}■)(\d){0,3}   fail dot
  24     |  2     ((\d){1,2}(■■){0,1})(\d){0,3}get a solution: ((\d){1,2}(\.1){0,1})(\d){0,3}
add positive: 0.0
add negative: 000
  25     |  2     ((\d){1,2}((■|■)){0,1})(\d){0,3}fail solve
  26     |  2     ((\d){1,2}((■){■}){0,1})(\d){0,3}  27     |  2     ((\d){1,2}(\.){■})(■){0,3}  unsatisfiable SAT formula       
  28     |  2     ((\d){1,2}(\.){■})(\d){■}  unsatisfiable SAT formula       
  29     |  2     ((\d){1,2}(\.){0,1})(■){■}  unsatisfiable SAT formula       
  30     |  2     ((\d){1,2}(\.){0,1})■   fail dot
  31     |  3     ((■){■}(■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  32     |  3     ((■){■}(\.){■})(\d){0,3}  unsatisfiable SAT formula       
  33     |  3     ((■){■}(\.){0,1})(■){0,3}  unsatisfiable SAT formula       
  34     |  3     ((■){■}(\.){0,1})(\d){■}  unsatisfiable SAT formula       
  35     |  3     ((■■){■}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  36     |  3     (((■|■)){■}(\.){0,1})(\d){0,3}fail solve
  37     |  3     (((■){■}){■}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  38     |  3     ((■){1,2}(■){■})(\d){0,3}  unsatisfiable SAT formula       
  39     |  3     ((■){1,2}(■){0,1})(■){0,3}  unsatisfiable SAT formula       
  40     |  3     ((■){1,2}(■){0,1})(\d){■}  unsatisfiable SAT formula       
  41     |  3     (■(■){0,1})(\d){0,3}    fail dot
  42     |  3     ((■){1,2}■)(\d){0,3}    fail dot
  43     |  3     ((■■){1,2}(■){0,1})(\d){0,3}fail dot
  44     |  3     (((■|■)){1,2}(■){0,1})(\d){0,3}fail solve
  45     |  3     (((■){■}){1,2}(■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  46     |  3     ((■){1,2}(■■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  47     |  3     ((■){1,2}((■|■)){0,1})(\d){0,3}fail solve
  48     |  3     ((■){1,2}((■){■}){0,1})(\d){0,3}  unsatisfiable SAT formula       
  49     |  3     ((■){1,2}(\.){■})(■){0,3}  unsatisfiable SAT formula       
  50     |  3     ((■){1,2}(\.){■})(\d){■}  unsatisfiable SAT formula       
  51     |  3     (■(\.){■})(\d){0,3}     fail dot
  52     |  3     ((■■){1,2}(\.){■})(\d){0,3}fail dot
  53     |  3     (((■|■)){1,2}(\.){■})(\d){0,3}fail solve
  54     |  3     (((■){■}){1,2}(\.){■})(\d){0,3}  unsatisfiable SAT formula       
  55     |  3     ((■){1,2}(\.){0,1})(■){■}  unsatisfiable SAT formula       
  56     |  3     (■(\.){0,1})(■){0,3}    fail dot
  57     |  3     ((■){1,2}(\.){0,1})■    fail dot
  58     |  3     ((■■){1,2}(\.){0,1})(■){0,3}fail dot
  59     |  3     (((■|■)){1,2}(\.){0,1})(■){0,3}fail solve
  60     |  3     (((■){■}){1,2}(\.){0,1})(■){0,3}  unsatisfiable SAT formula       
  61     |  3     ((■){1,2}(\.){0,1})(■■){0,3}  unsatisfiable SAT formula       
  62     |  3     ((■){1,2}(\.){0,1})((■|■)){0,3}fail solve
  63     |  3     ((■){1,2}(\.){0,1})((■){■}){0,3}  unsatisfiable SAT formula       
  64     |  3     (■(\.){0,1})(\d){■}     fail dot
  65     |  3     ((■■){1,2}(\.){0,1})(\d){■}fail dot
  66     |  3     (((■|■)){1,2}(\.){0,1})(\d){■}fail solve
  67     |  3     (((■){■}){1,2}(\.){0,1})(\d){■}  unsatisfiable SAT formula       
  68     |  3     ((■■)(\.){0,1})(\d){0,3}fail dot
  69     |  3     ((■|■)(\.){0,1})(\d){0,3}fail dot
  70     |  3     (((■■)■){1,2}(\.){0,1})(\d){0,3}fail dot
  71     |  3     (((■|■)■){1,2}(\.){0,1})(\d){0,3}fail dot
  72     |  3     (((■){■}■){1,2}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  73     |  3     (((■■|■)){1,2}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  74     |  3     ((((■|■)|■)){1,2}(\.){0,1})(\d){0,3}fail solve
  75     |  3     ((((■){■}|■)){1,2}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  76     |  3     (((■■){■}){1,2}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  77     |  3     ((((■|■)){■}){1,2}(\.){0,1})(\d){0,3}fail solve
  78     |  3     ((((■){■}){■}){1,2}(\.){0,1})(\d){0,3}  unsatisfiable SAT formula       
  79     |  3     ((\d){■}(■){■})(\d){0,3}  unsatisfiable SAT formula       
  80     |  3     ((\d){■}(■){0,1})(■){0,3}  unsatisfiable SAT formula       
  81     |  3     ((\d){■}(■){0,1})(\d){■}  unsatisfiable SAT formula       
  82     |  3     ((\d){■}■)(\d){0,3}       unsatisfiable SAT formula       
  83     |  3     ((\d){■}(■■){0,1})(\d){0,3}  unsatisfiable SAT formula       
  84     |  3     ((\d){■}((■|■)){0,1})(\d){0,3}fail solve
  85     |  3     ((\d){■}((■){■}){0,1})(\d){0,3}  unsatisfiable SAT formula       
  86     |  3     ((\d){■}(\.){■})(■){0,3}  unsatisfiable SAT formula       
  87     |  3     ((\d){■}(\.){■})(\d){■}   unsatisfiable SAT formula       
  88     |  3     ((\d){■}(\.){0,1})(■){■}
1.0280492305755615
timeout