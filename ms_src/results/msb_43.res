
Given the regular expression:

  42\.[6-9][0-6]

That that should match the strings:

  ✓ (0:5)    42.67

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■2)\.)[6-9])[0-6]    fail dotstar or empty
  2      |  1     (((4■)\.)[6-9])[0-6]    fail dotstar or empty
  3      |  1     (((42)■)[6-9])[0-6]     fail dotstar or empty
  4      |  1     (((42)\.)■)[0-6]        fail dotstar or empty
  5      |  1     (((42)\.)[6-9])■        get a solution: (((42)\.)[6-9])7
add positive: 42.80
add negative: 42.87
  unsatisfiable SAT formula       
  6      |  2     (((■■)\.)[6-9])[0-6]    fail dotstar or empty
  7      |  2     (((■2)■)[6-9])[0-6]     fail dotstar or empty
  8      |  2     (((■2)\.)■)[0-6]        fail dotstar or empty
  9      |  2     (((■2)\.)[6-9])■          unsatisfiable SAT formula       
  10     |  2     (((4■)■)[6-9])[0-6]     fail dotstar or empty
  11     |  2     (((4■)\.)■)[0-6]        fail dotstar or empty
  12     |  2     (((4■)\.)[6-9])■          unsatisfiable SAT formula       
  13     |  2     (((42)■)■)[0-6]         fail dotstar or empty
  14     |  2     (((42)■)[6-9])■           unsatisfiable SAT formula       
  15     |  2     (((42)\.)■)■              unsatisfiable SAT formula       
  16     |  2     (((42)\.)[6-9])(■■)     fail dot
  17     |  2     (((42)\.)[6-9])(■|■)    fail solve
  18     |  2     (((42)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  19     |  3     (((■■)■)[6-9])[0-6]     fail dotstar or empty
  20     |  3     (((■■)\.)■)[0-6]        fail dotstar or empty
  21     |  3     (((■■)\.)[6-9])■          unsatisfiable SAT formula       
  22     |  3     (((■)\.)[6-9])[0-6]     fail dotstar or empty
  23     |  3     (((■2)■)■)[0-6]         fail dotstar or empty
  24     |  3     (((■2)■)[6-9])■           unsatisfiable SAT formula       
  25     |  3     (((■2)\.)■)■              unsatisfiable SAT formula       
  26     |  3     ((((■■)2)\.)[6-9])■     fail dot
  27     |  3     ((((■|■)2)\.)[6-9])■    fail solve
  28     |  3     ((((■){■}2)\.)[6-9])■     unsatisfiable SAT formula       
  29     |  3     (((■2)\.)[6-9])(■■)     fail dot
  30     |  3     (((■2)\.)[6-9])(■|■)    fail solve
  31     |  3     (((■2)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  32     |  3     (((4■)■)■)[0-6]         fail dotstar or empty
  33     |  3     (((4■)■)[6-9])■           unsatisfiable SAT formula       
  34     |  3     (((4■)\.)■)■              unsatisfiable SAT formula       
  35     |  3     (((4(■■))\.)[6-9])■     fail dot
  36     |  3     (((4(■|■))\.)[6-9])■    fail solve
  37     |  3     (((4(■){■})\.)[6-9])■     unsatisfiable SAT formula       
  38     |  3     (((4■)\.)[6-9])(■■)     fail dot
  39     |  3     (((4■)\.)[6-9])(■|■)    fail solve
  40     |  3     (((4■)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  41     |  3     (((42)■)■)■               unsatisfiable SAT formula       
  42     |  3     (((42)(■■))[6-9])■      fail dot
  43     |  3     (((42)(■|■))[6-9])■     fail solve
  44     |  3     (((42)(■){■})[6-9])■      unsatisfiable SAT formula       
  45     |  3     (((42)■)[6-9])(■■)      fail dot
  46     |  3     (((42)■)[6-9])(■|■)     fail solve
  47     |  3     (((42)■)[6-9])(■){■}      unsatisfiable SAT formula       
  48     |  3     (((42)\.)(■■))■         fail dot
  49     |  3     (((42)\.)(■|■))■        fail solve
  50     |  3     (((42)\.)(■){■})■         unsatisfiable SAT formula       
  51     |  3     (((42)\.)■)(■■)         fail dot
  52     |  3     (((42)\.)■)(■|■)        fail solve
  53     |  3     (((42)\.)■)(■){■}         unsatisfiable SAT formula       
  54     |  3     (((42)\.)[6-9])(■)        unsatisfiable SAT formula       
  55     |  3     (((42)\.)[6-9])((■■)■)  fail dot
  56     |  3     (((42)\.)[6-9])((■|■)■) fail dot
  57     |  3     (((42)\.)[6-9])((■){■}■)  unsatisfiable SAT formula       
  58     |  3     (((42)\.)[6-9])(■■|■)     unsatisfiable SAT formula       
  59     |  3     (((42)\.)[6-9])((■|■)|■)fail solve
  60     |  3     (((42)\.)[6-9])((■){■}|■)  unsatisfiable SAT formula       
  61     |  3     (((42)\.)[6-9])(■■){■}  fail dot
  62     |  3     (((42)\.)[6-9])((■|■)){■}fail solve
  63     |  3     (((42)\.)[6-9])((■){■}){■}  unsatisfiable SAT formula       
  64     |  4     (((■■)■)■)[0-6]         fail dotstar or empty
  65     |  4     (((■■)■)[6-9])■           unsatisfiable SAT formula       
  66     |  4     (((■)■)[6-9])[0-6]      fail dotstar or empty
  67     |  4     (((■■)\.)■)■              unsatisfiable SAT formula       
  68     |  4     (((■)\.)■)[0-6]         fail dotstar or empty
  69     |  4     (((■)\.)[6-9])■         fail dot
  70     |  4     ((((■■)■)\.)[6-9])■     fail dot
  71     |  4     ((((■|■)■)\.)[6-9])■    fail solve
  72     |  4     ((((■){■}■)\.)[6-9])■     unsatisfiable SAT formula       
  73     |  4     (((■■)\.)[6-9])(■■)     fail dot
  74     |  4     (((■■)\.)[6-9])(■|■)    fail solve
  75     |  4     (((■■)\.)[6-9])(■){■}     unsatisfiable SAT formula       
  76     |  4     ((■\.)[6-9])[0-6]       fail dotstar or empty
  77     |  4     (((■2)■)■)■               unsatisfiable SAT formula       
  78     |  4     ((((■■)2)■)[6-9])■      fail dot
  79     |  4     ((((■|■)2)■)[6-9])■     fail solve
  80     |  4     ((((■){■}2)■)[6-9])■      unsatisfiable SAT formula       
  81     |  4     (((■2)(■■))[6-9])■      fail dot
  82     |  4     (((■2)(■|■))[6-9])■     fail solve
  83     |  4     (((■2)(■){■})[6-9])■      unsatisfiable SAT formula       
  84     |  4     (((■2)■)[6-9])(■■)      fail dot
  85     |  4     (((■2)■)[6-9])(■|■)     fail solve
  86     |  4     (((■2)■)[6-9])(■){■}      unsatisfiable SAT formula       
  87     |  4     ((((■■)2)\.)■)■         fail dot
  88     |  4     ((((■|■)2)\.)■)■        fail solve
  89     |  4     ((((■){■}2)\.)■)■         unsatisfiable SAT formula       
  90     |  4     (((■2)\.)(■■))■         fail dot
  91     |  4     (((■2)\.)(■|■))■        fail solve
  92     |  4     (((■2)\.)(■){■})■         unsatisfiable SAT formula       
  93     |  4     (((■2)\.)■)(■■)         fail dot
  94     |  4     (((■2)\.)■)(■|■)        fail solve
  95     |  4     (((■2)\.)■)(■){■}         unsatisfiable SAT formula       
  96     |  4     ((((■)2)\.)[6-9])■        unsatisfiable SAT formula       
  97     |  4     (((((■■)■)2)\.)[6-9])■  
1.0193378925323486
timeout