
Given the regular expression:

  [0-9]:[0-9]

That that should match the strings:

  ✓ (0:7)    999:999
  ✓ (7:14)   222:115

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■:)[0-9]               fail dotstar or empty
  2      |  1     ([0-9]■)[0-9]           fail dot
  3      |  1     ([0-9]:)■               fail dotstar or empty
  4      |  2     (■■)[0-9]               fail dot
  5      |  2     (■:)■                   fail dot
  6      |  2     ([0-9]■)■               fail dot
  7      |  2     ([0-9](■■))[0-9]        fail dot
  8      |  2     ([0-9](■|■))[0-9]       fail dot
  9      |  2     ([0-9](■){■})[0-9]      get a solution: ([0-9]([129:]){1,5})[0-9]
add positive: 00:0
add negative: 010
get a solution: ([0-9]([129:0]){2,5})[0-9]
add positive: 0:3
add negative: 0000
  unsatisfiable SAT formula       
  10     |  3     (■■)■                   fail dot
  11     |  3     (■)[0-9]                fail dot
  12     |  3     ((■■)■)[0-9]            fail dot
  13     |  3     ((■|■)■)[0-9]           fail dot
  14     |  3     ((■){■}■)[0-9]            unsatisfiable SAT formula       
  15     |  3     ((■■):)■                fail dot
  16     |  3     ((■|■):)■               fail dot
  17     |  3     ((■){■}:)■              fail dot
  18     |  3     (■:)(■■)                fail dot
  19     |  3     (■:)(■|■)               fail dot
  20     |  3     (■:)(■){■}              fail dot
  21     |  3     ([0-9](■■))■            fail dot
  22     |  3     ([0-9](■|■))■           fail dot
  23     |  3     ([0-9](■){■})■            unsatisfiable SAT formula       
  24     |  3     ([0-9]■)(■■)            fail dot
  25     |  3     ([0-9]■)(■|■)           fail dot
  26     |  3     ([0-9]■)(■){■}            unsatisfiable SAT formula       
  27     |  3     ([0-9](■))[0-9]         fail dot
  28     |  3     ([0-9]((■■)■))[0-9]     fail dot
  29     |  3     ([0-9]((■|■)■))[0-9]    fail dot
  30     |  3     ([0-9]((■){■}■))[0-9]     unsatisfiable SAT formula       
  31     |  3     ([0-9](■■|■))[0-9]      fail dot
  32     |  3     ([0-9]((■|■)|■))[0-9]   fail dot
  33     |  3     ([0-9]((■){■}|■))[0-9]    unsatisfiable SAT formula       
  34     |  3     ([0-9](■■){■})[0-9]     fail dot
  35     |  3     ([0-9]((■|■)){■})[0-9]  fail solve
  36     |  3     ([0-9]((■){■}){■})[0-9]   unsatisfiable SAT formula       
  37     |  4     (■)■                    fail dot
  38     |  4     ((■■)■)■                fail dot
  39     |  4     ((■|■)■)■               fail dot
  40     |  4     ((■){■}■)■                unsatisfiable SAT formula       
  41     |  4     (■■)(■■)                fail dot
  42     |  4     (■■)(■|■)               fail dot
  43     |  4     (■■)(■){■}                unsatisfiable SAT formula       
  44     |  4     ■[0-9]                  fail dot
  45     |  4     ((■■))[0-9]             fail dot
  46     |  4     ((■|■))[0-9]            fail dot
  47     |  4     ((■){■})[0-9]             unsatisfiable SAT formula       
  48     |  4     ((■)■)[0-9]             fail dot
  49     |  4     (((■■)■)■)[0-9]         fail dot
  50     |  4     (((■|■)■)■)[0-9]        fail dot
  51     |  4     (((■){■}■)■)[0-9]         unsatisfiable SAT formula       
  52     |  4     ((■■)(■■))[0-9]         fail dot
  53     |  4     ((■■)(■|■))[0-9]        fail dot
  54     |  4     ((■■)(■){■})[0-9]       get a solution: (([290][29:0])([129:]){0,4})[0-9]
add positive: 1:0
add negative: 000
  unsatisfiable SAT formula       
  55     |  4     ((■■|■)■)[0-9]          fail dot
  56     |  4     (((■|■)|■)■)[0-9]       fail dot
  57     |  4     (((■){■}|■)■)[0-9]        unsatisfiable SAT formula       
  58     |  4     ((■|■)(■■))[0-9]        fail dot
  59     |  4     ((■|■)(■|■))[0-9]       fail dot
  60     |  4     ((■|■)(■){■})[0-9]        unsatisfiable SAT formula       
  61     |  4     ((■■){■}■)[0-9]         fail dot
  62     |  4     (((■|■)){■}■)[0-9]      fail solve
  63     |  4     (((■){■}){■}■)[0-9]       unsatisfiable SAT formula       
  64     |  4     ((■){■}(■■))[0-9]         unsatisfiable SAT formula       
  65     |  4     ((■){■}(■|■))[0-9]      fail solve
  66     |  4     ((■){■}(■){■})[0-9]       unsatisfiable SAT formula       
  67     |  4     ((■):)■                 fail dot
  68     |  4     (((■■)■):)■             fail dot
  69     |  4     (((■|■)■):)■            fail dot
  70     |  4     (((■){■}■):)■           fail dot
  71     |  4     ((■■):)(■■)             fail dot
  72     |  4     ((■■):)(■|■)            fail dot
  73     |  4     ((■■):)(■){■}           fail dot
  74     |  4     ((■■|■):)■              fail dot
  75     |  4     (((■|■)|■):)■           fail dot
  76     |  4     (((■){■}|■):)■          fail dot
  77     |  4     ((■|■):)(■■)            fail dot
  78     |  4     ((■|■):)(■|■)           fail dot
  79     |  4     ((■|■):)(■){■}          fail dot
  80     |  4     ((■■){■}:)■             fail dot
  81     |  4     (((■|■)){■}:)■          fail dot
  82     |  4     (((■){■}){■}:)■         fail dot
  83     |  4     ((■){■}:)(■■)           fail dot
  84     |  4     ((■){■}:)(■|■)          fail dot
  85     |  4     ((■){■}:)(■){■}         get a solution: (([1290]){1,3}:)([13590]){1,3}
add positive: 0:2
get a solution: (([1290]){1,3}:)([123590]){1,3}
add positive: 3:0
get a solution: (([12390]){1,3}:)([123590]){1,3}
add positive: 4:0
get a solution: (([123490]){1,3}:)([123590]){1,3}
add positive: 0:4
get a solution: (([123490]){1,3}:)([1234590]){1,3}
add positive: 0:6
get a solution: (([123490]){1,3}:)([12345690]){1,3}
add positive: 0:7
get a solution: (([123490]){1,3}:)([123456790]){1,3}
add positive: 0:8
get a solution: (([123490]){1,3}:)([1234567890]){1,3}
add positive: 5:0
get a solution: (([1234590]){1,3}:)([1234567890]){1,3}
add positive: 6:0
get a solution: (([12345690]){1,3}:)([1234567890]){1,3}
add positive: 7:0
get a solution: (([123456790]){1,3}:)([1234567890]){1,3}
add positive: 8:0
get a solution: (([1234567890]){1,3}:)([1234567890]){1,3}
add positive: 0000:0
get a solution: (([1234567890]){1,4}:)([1234567890]){1,3}
add positive: 0:0000
get a solution: (([1234567890]){1,4}:)([1234567890]){1,4}
add positive: 00000:0
get a solution: (([1234567890]){1,5}:)([1234567890]){1,4}
add positive: 0:00000
get a solution: (([1234567890]){1,5}:)([1234567890]){1,5}
add positive: 000000:0
get a solution: (([1234567890]){1,6}:)([1234567890]){1,5}
add positive: 0:000000
get a solution: (([1234567890]){1,6}:)([1234567890]){1,6}
add positive: 0000000:0
get a solution: (([1234567890]){1,7}:)([1234567890]){1,6}
add positive: 0:0000000
get a solution: (([1234567890]){1,7}:)([1234567890]){1,7}
add positive: 00000000:0
get a solution: (([1234567890]){1,8}:)([1234567890]){1,7}
add positive: 0:00000000
get a solution: (([1234567890]){1,8}:)([1234567890]){1,8}
add positive: 000000000:0
get a solution: (([1234567890]){1,9}:)([1234567890]){1,8}
add positive: 0:000000000
get a solution: (([1234567890]){1,9}:)([1234567890]){1,9}
add positive: 0000000000:0
get a solution: (([1234567890]){1,10}:)([1234567890]){1,9}
add positive: 0:0000000000
get a solution: (([1234567890]){1,10}:)([1234567890]){1,10}
add positive: 00000000000:0
get a solution: (([1234567890]){1,11}:)([1234567890]){1,10}
add positive: 0:00000000000
get a solution: (([1234567890]){1,11}:)([1234567890]){1,11}
add positive: 000000000000:0
get a solution: (([1234567890]){1,12}:)([1234567890]){1,11}
add positive: 0:000000000000
get a solution: (([1234567890]){1,12}:)([1234567890]){1,12}
add positive: 0000000000000:0
get a solution: (([1234567890]){1,13}:)([1234567890]){1,12}
add positive: 0:0000000000000
get a solution: (([1234567890]){1,13}:)([1234567890]){1,13}
add positive: 00000000000000:0
get a solution: (([1234567890]){1,14}:)([1234567890]){1,13}
add positive: 0:00000000000000
get a solution: (([1234567890]){1,14}:)([1234567890]){1,14}
add positive: 000000000000000:0
get a solution: (([1234567890]){1,15}:)([1234567890]){1,14}
add positive: 0:000000000000000
get a solution: (([1234567890]){1,15}:)([1234567890]){1,15}
add positive: 0000000000000000:0
get a solution: (([1234567890]){1,16}:)([1234567890]){1,15}
add positive: 0:0000000000000000
get a solution: (([1234567890]){1,16}:)([1234567890]){1,16}
add positive: 00000000000000000:0
get a solution: (([1234567890]){1,17}:)([1234567890]){1,16}
add positive: 0:00000000000000000
get a solution: (([1234567890]){1,17}:)([1234567890]){1,17}
add positive: 000000000000000000:0
get a solution: (([1234567890]){1,18}:)([1234567890]){1,17}
add positive: 0:000000000000000000
get a solution: (([1234567890]){1,18}:)([1234567890]){1,18}
add positive: 0000000000000000000:0
get a solution: (([1234567890]){1,19}:)([1234567890]){1,18}
add positive: 0:0000000000000000000
get a solution: (([1234567890]){1,19}:)([1234567890]){1,19}
add positive: 00000000000000000000:0
get a solution: (([1234567890]){1,20}:)([1234567890]){1,19}
add positive: 0:00000000000000000000
get a solution: (([1234567890]){1,20}:)([1234567890]){1,20}
add positive: 000000000000000000000:0
get a solution: (([1234567890]){1,21}:)([1234567890]){1,20}
add positive: 0:000000000000000000000
get a solution: (([1234567890]){1,21}:)([1234567890]){1,21}
add positive: 0000000000000000000000:0
get a solution: (([1234567890]){1,22}:)([1234567890]){1,21}
add positive: 0:0000000000000000000000
get a solution: (([1234567890]){1,22}:)([1234567890]){1,22}
add positive: 00000000000000000000000:0
get a solution: (([1234567890]){1,23}:)([1234567890]){1,22}
add positive: 0:00000000000000000000000
get a solution: (([1234567890]){1,23}:)([1234567890]){1,23}
add positive: 000000000000000000000000:0
get a solution: (([1234567890]){1,24}:)([1234567890]){1,23}
add positive: 0:000000000000000000000000
get a solution: (([1234567890]){1,24}:)([1234567890]){1,24}
add positive: 0000000000000000000000000:0
get a solution: (([1234567890]){1,25}:)([1234567890]){1,24}
add positive: 0:0000000000000000000000000
get a solution: (([1234567890]){1,25}:)([1234567890]){1,25}
add positive: 00000000000000000000000000:0
get a solution: (([1234567890]){1,26}:)([1234567890]){1,25}
add positive: 0:00000000000000000000000000
get a solution: (([1234567890]){1,26}:)([1234567890]){1,26}
add positive: 000000000000000000000000000:0
get a solution: (([1234567890]){1,27}:)([1234567890]){1,26}
add positive: 0:000000000000000000000000000
get a solution: (([1234567890]){1,27}:)([1234567890]){1,27}
add positive: 0000000000000000000000000000:0
get a solution: (([1234567890]){1,28}:)([1234567890]){1,27}
add positive: 0:0000000000000000000000000000
get a solution: (([1234567890]){1,28}:)([1234567890]){1,28}
add positive: 00000000000000000000000000000:0
get a solution: (([1234567890]){1,29}:)([1234567890]){1,28}
add positive: 0:00000000000000000000000000000
get a solution: (([1234567890]){1,29}:)([1234567890]){1,29}
add positive: 000000000000000000000000000000:0
get a solution: (([1234567890]){1,30}:)([1234567890]){1,29}
add positive: 0:000000000000000000000000000000
get a solution: (([1234567890]){1,30}:)([1234567890]){1,30}
add positive: 0000000000000000000000000000000:0
get a solution: (([1234567890]){1,31}:)([1234567890]){1,30}
add positive: 0:0000000000000000000000000000000
get a solution: (([1234567890]){1,31}:)([1234567890]){1,31}
add positive: 00000000000000000000000000000000:0
get a solution: (([1234567890]){1,32}:)([1234567890]){1,31}
add positive: 0:00000000000000000000000000000000
get a solution: (([1234567890]){1,32}:)([1234567890]){1,32}
add positive: 000000000000000000000000000000000:0
get a solution: (([1234567890]){1,33}:)([1234567890]){1,32}
add positive: 0:000000000000000000000000000000000
get a solution: (([1234567890]){1,33}:)([1234567890]){1,33}
add positive: 0000000000000000000000000000000000:0
get a solution: (([1234567890]){1,34}:)([1234567890]){1,33}
add positive: 0:0000000000000000000000000000000000
get a solution: (([1234567890]){1,34}:)([1234567890]){1,34}
add positive: 00000000000000000000000000000000000:0
get a solution: (([1234567890]){1,35}:)([1234567890]){1,34}
add positive: 0:00000000000000000000000000000000000
get a solution: (([1234567890]){1,35}:)([1234567890]){1,35}
add positive: 000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,36}:)([1234567890]){1,35}
add positive: 0:000000000000000000000000000000000000
get a solution: (([1234567890]){1,36}:)([1234567890]){1,36}
add positive: 0000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,37}:)([1234567890]){1,36}
add positive: 0:0000000000000000000000000000000000000
get a solution: (([1234567890]){1,37}:)([1234567890]){1,37}
add positive: 00000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,38}:)([1234567890]){1,37}
add positive: 0:00000000000000000000000000000000000000
get a solution: (([1234567890]){1,38}:)([1234567890]){1,38}
add positive: 000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,39}:)([1234567890]){1,38}
add positive: 0:000000000000000000000000000000000000000
get a solution: (([1234567890]){1,39}:)([1234567890]){1,39}
add positive: 0000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,40}:)([1234567890]){1,39}
add positive: 0:0000000000000000000000000000000000000000
get a solution: (([1234567890]){1,40}:)([1234567890]){1,40}
add positive: 00000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,41}:)([1234567890]){1,40}
add positive: 0:00000000000000000000000000000000000000000
get a solution: (([1234567890]){1,41}:)([1234567890]){1,41}
add positive: 000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,42}:)([1234567890]){1,41}
add positive: 0:000000000000000000000000000000000000000000
get a solution: (([1234567890]){1,42}:)([1234567890]){1,42}
add positive: 0000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,43}:)([1234567890]){1,42}
add positive: 0:0000000000000000000000000000000000000000000
get a solution: (([1234567890]){1,43}:)([1234567890]){1,43}
add positive: 00000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,44}:)([1234567890]){1,43}
add positive: 0:00000000000000000000000000000000000000000000
get a solution: (([1234567890]){1,44}:)([1234567890]){1,44}
add positive: 000000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,45}:)([1234567890]){1,44}
add positive: 0:000000000000000000000000000000000000000000000
get a solution: (([1234567890]){1,45}:)([1234567890]){1,45}
add positive: 0000000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,46}:)([1234567890]){1,45}
add positive: 0:0000000000000000000000000000000000000000000000
get a solution: (([1234567890]){1,46}:)([1234567890]){1,46}
add positive: 00000000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,47}:)([1234567890]){1,46}
add positive: 0:00000000000000000000000000000000000000000000000
get a solution: (([1234567890]){1,47}:)([1234567890]){1,47}
add positive: 000000000000000000000000000000000000000000000000:0
get a solution: (([1234567890]){1,48}:)([1234567890]){1,47}
  timed-out cegis for `((■){■}:)(■){■}`
  86     |  4     (■:)(■)                 fail dot
  87     |  4     (■:)((■■)■)             fail dot
  88     |  4     (■:)((■|■)■)            fail dot
  89     |  4     (■:)((■){■}■)           fail dot
  90     |  4     (■:)(■■|■)              fail dot
  91     |  4     (■:)((■|■)|■)           fail dot
  92     |  4     (■:)((■){■}|■)          fail dot
  93     |  4     (■:)(■■){■}             fail dot
  94     |  4     (■:)((■|■)){■}          fail dot
  95     |  4     (■:)((■){■}){■}         fail dot
  96     |  4     ([0-9](■))■             fail dot
  97     |  4     ([0-9]((■■)■))■         fail dot
  98     |  4     ([0-9]((■|■)■))■        fail dot
  99     |  4     ([0-9]((■){■}■))■         unsatisfiable SAT formula       
  100    |  4     ([0-9](■■))(■■)         fail dot
  101    |  4     ([0-9](■■))(■|■)        fail dot
  102    |  4     ([0-9](■■))(■){■}         unsatisfiable SAT formula       
  103    |  4     ([0-9](■■|■))■          fail dot
  104    |  4     ([0-9]((■|■)|■))■       fail dot
  105    |  4     ([0-9]((■){■}|■))■        unsatisfiable SAT formula       
  106    |  4     ([0-9](■|■))(■■)        fail dot
  107    |  4     ([0-9](■|■))(■|■)       fail dot
  108    |  4     ([0-9](■|■))(■){■}        unsatisfiable SAT formula       
  109    |  4     ([0-9](■■){■})■         fail dot
  110    |  4     ([0-9]((■|■)){■})■      fail solve
  111    |  4     ([0-9]((■){■}){■})■     
10.101529836654663
timeout