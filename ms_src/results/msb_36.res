
Given the regular expression:

  ([\d])*[\-*+^/]([\d])*([\-*+^/]([\d])*)*

That that should match the strings:

  ✓ (0:2)    34

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)*[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  2      |  1     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  3      |  1     ((([\d])*■)([\d])*)([\-*+^/]([\d])*)*get a solution: ((([\d])*4)([\d])*)([\-*+^/]([\d])*)*
add positive: 0
add negative: 4^
get a solution: ((([\d])*[30])([\d])*)([\-*+^/]([\d])*)*
add positive: 1
add negative: 0*
  unsatisfiable SAT formula       
  4      |  1     ((([\d])*[\-*+^/])(■)*)([\-*+^/]([\d])*)*fail dotstar or empty
  5      |  1     ((([\d])*[\-*+^/])([\d]){■})([\-*+^/]([\d])*)*fail dotstar or empty
  6      |  1     ((([\d])*[\-*+^/])([\d])*)(■([\d])*)*fail dotstar or empty
  7      |  1     ((([\d])*[\-*+^/])([\d])*)([\-*+^/](■)*)*fail dotstar or empty
  8      |  1     ((([\d])*[\-*+^/])([\d])*)([\-*+^/]([\d]){■})*fail dotstar or empty
  9      |  1     ((([\d])*[\-*+^/])([\d])*)([\-*+^/]([\d])*){■}fail dotstar or empty
  10     |  2     (((■){■}[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  11     |  2     (((■)*■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  12     |  2     (((■)*[\-*+^/])(■)*)([\-*+^/]([\d])*)*fail dotstar or empty
  13     |  2     (((■)*[\-*+^/])([\d]){■})([\-*+^/]([\d])*)*fail dotstar or empty
  14     |  2     (((■)*[\-*+^/])([\d])*)(■([\d])*)*fail dotstar or empty
  15     |  2     (((■)*[\-*+^/])([\d])*)([\-*+^/](■)*)*fail dotstar or empty
  16     |  2     (((■)*[\-*+^/])([\d])*)([\-*+^/]([\d]){■})*fail dotstar or empty
  17     |  2     (((■)*[\-*+^/])([\d])*)([\-*+^/]([\d])*){■}fail dotstar or empty
  18     |  2     ((([\d]){■}■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  19     |  2     ((([\d]){■}[\-*+^/])(■)*)([\-*+^/]([\d])*)*fail dotstar or empty
  20     |  2     ((([\d]){■}[\-*+^/])([\d]){■})([\-*+^/]([\d])*)*fail dotstar or empty
  21     |  2     ((([\d]){■}[\-*+^/])([\d])*)(■([\d])*)*fail dotstar or empty
  22     |  2     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/](■)*)*fail dotstar or empty
  23     |  2     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]([\d]){■})*fail dotstar or empty
  24     |  2     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]([\d])*){■}fail dotstar or empty
  25     |  2     ((■[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  26     |  2     ((([\d])*■)(■)*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  27     |  2     ((([\d])*■)([\d]){■})([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  28     |  2     ((([\d])*■)([\d])*)(■([\d])*)*get a solution: ((([\d])*[130])([\d])*)([∅]([\d])*)*
add positive: 2
get a solution: ((([\d])*[1230])([\d])*)([∅]([\d])*)*
add positive: 4
get a solution: ((([\d])*[1240])([\d])*)([∅]([\d])*)*
add positive: 3
get a solution: ((([\d])*[12340])([\d])*)([∅]([\d])*)*
add positive: 5
get a solution: ((([\d])*[123450])([\d])*)([∅]([\d])*)*
add positive: 6
get a solution: ((([\d])*[1234560])([\d])*)([∅]([\d])*)*
add positive: 7
get a solution: ((([\d])*[12345670])([\d])*)([∅]([\d])*)*
add positive: 8
get a solution: ((([\d])*[123456780])([\d])*)([∅]([\d])*)*
add positive: 9
get a solution: ((([\d])*[1234567890])([\d])*)([∅]([\d])*)*
add positive: 0*0
  unsatisfiable SAT formula       
  29     |  2     ((([\d])*■)([\d])*)([\-*+^/](■)*)*  unsatisfiable SAT formula       
  30     |  2     ((([\d])*■)([\d])*)([\-*+^/]([\d]){■})*get a solution: ((([\d])*[1234567890])([\d])*)([\-*+^/]([\d]){1})*
add positive: 0*00
add negative: 0^0
  unsatisfiable SAT formula       
  31     |  2     ((([\d])*■)([\d])*)([\-*+^/]([\d])*){■}  unsatisfiable SAT formula       
  32     |  2     ((([\d])*(■■))([\d])*)([\-*+^/]([\d])*)*fail dot
  33     |  2     ((([\d])*(■|■))([\d])*)([\-*+^/]([\d])*)*fail solve
  34     |  2     ((([\d])*(■){■})([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  35     |  2     ((([\d])*[\-*+^/])(■){■})([\-*+^/]([\d])*)*fail dotstar or empty
  36     |  2     ((([\d])*[\-*+^/])(■)*)(■([\d])*)*fail dotstar or empty
  37     |  2     ((([\d])*[\-*+^/])(■)*)([\-*+^/](■)*)*fail dotstar or empty
  38     |  2     ((([\d])*[\-*+^/])(■)*)([\-*+^/]([\d]){■})*fail dotstar or empty
  39     |  2     ((([\d])*[\-*+^/])(■)*)([\-*+^/]([\d])*){■}fail dotstar or empty
  40     |  2     ((([\d])*[\-*+^/])([\d]){■})(■([\d])*)*fail dotstar or empty
  41     |  2     ((([\d])*[\-*+^/])([\d]){■})([\-*+^/](■)*)*fail dotstar or empty
  42     |  2     ((([\d])*[\-*+^/])([\d]){■})([\-*+^/]([\d]){■})*fail dotstar or empty
  43     |  2     ((([\d])*[\-*+^/])([\d]){■})([\-*+^/]([\d])*){■}fail dotstar or empty
  44     |  2     ((([\d])*[\-*+^/])■)([\-*+^/]([\d])*)*fail dotstar or empty
  45     |  2     ((([\d])*[\-*+^/])([\d])*)(■(■)*)*fail dotstar or empty
  46     |  2     ((([\d])*[\-*+^/])([\d])*)(■([\d]){■})*fail dotstar or empty
  47     |  2     ((([\d])*[\-*+^/])([\d])*)(■([\d])*){■}fail dotstar or empty
  48     |  2     ((([\d])*[\-*+^/])([\d])*)([\-*+^/](■){■})*fail dotstar or empty
  49     |  2     ((([\d])*[\-*+^/])([\d])*)([\-*+^/](■)*){■}fail dotstar or empty
  50     |  2     ((([\d])*[\-*+^/])([\d])*)([\-*+^/]([\d]){■}){■}fail dotstar or empty
  51     |  2     ((([\d])*[\-*+^/])([\d])*)([\-*+^/]■)*fail dotstar or empty
  52     |  2     ((([\d])*[\-*+^/])([\d])*)■fail dotstar or empty
  53     |  3     (((■){■}■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  54     |  3     (((■){■}[\-*+^/])(■)*)([\-*+^/]([\d])*)*fail dotstar or empty
  55     |  3     (((■){■}[\-*+^/])([\d]){■})([\-*+^/]([\d])*)*fail dotstar or empty
  56     |  3     (((■){■}[\-*+^/])([\d])*)(■([\d])*)*fail dotstar or empty
  57     |  3     (((■){■}[\-*+^/])([\d])*)([\-*+^/](■)*)*fail dotstar or empty
  58     |  3     (((■){■}[\-*+^/])([\d])*)([\-*+^/]([\d]){■})*fail dotstar or empty
  59     |  3     (((■){■}[\-*+^/])([\d])*)([\-*+^/]([\d])*){■}fail dotstar or empty
  60     |  3     (((■)*■)(■)*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  61     |  3     (((■)*■)([\d]){■})([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  62     |  3     (((■)*■)([\d])*)(■([\d])*)*get a solution: ((([*0])*[1234567890])([\d])*)(0([\d])*)*
add positive: 0+0
add negative: *0
  unsatisfiable SAT formula       
  63     |  3     (((■)*■)([\d])*)([\-*+^/](■)*)*  unsatisfiable SAT formula       
  64     |  3     (((■)*■)([\d])*)([\-*+^/]([\d]){■})*  unsatisfiable SAT formula       
  65     |  3     (((■)*■)([\d])*)([\-*+^/]([\d])*){■}  unsatisfiable SAT formula       
  66     |  3     (((■■)*■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  67     |  3     ((((■|■))*■)([\d])*)([\-*+^/]([\d])*)*fail solve
  68     |  3     ((((■){■})*■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  69     |  3     (((■)*(■■))([\d])*)([\-*+^/]([\d])*)*fail dot
  70     |  3     (((■)*(■|■))([\d])*)([\-*+^/]([\d])*)*fail solve
  71     |  3     (((■)*(■){■})([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  72     |  3     (((■)*[\-*+^/])(■){■})([\-*+^/]([\d])*)*fail dotstar or empty
  73     |  3     (((■)*[\-*+^/])(■)*)(■([\d])*)*fail dotstar or empty
  74     |  3     (((■)*[\-*+^/])(■)*)([\-*+^/](■)*)*fail dotstar or empty
  75     |  3     (((■)*[\-*+^/])(■)*)([\-*+^/]([\d]){■})*fail dotstar or empty
  76     |  3     (((■)*[\-*+^/])(■)*)([\-*+^/]([\d])*){■}fail dotstar or empty
  77     |  3     (((■)*[\-*+^/])([\d]){■})(■([\d])*)*fail dotstar or empty
  78     |  3     (((■)*[\-*+^/])([\d]){■})([\-*+^/](■)*)*fail dotstar or empty
  79     |  3     (((■)*[\-*+^/])([\d]){■})([\-*+^/]([\d]){■})*fail dotstar or empty
  80     |  3     (((■)*[\-*+^/])([\d]){■})([\-*+^/]([\d])*){■}fail dotstar or empty
  81     |  3     (((■)*[\-*+^/])■)([\-*+^/]([\d])*)*fail dotstar or empty
  82     |  3     (((■)*[\-*+^/])([\d])*)(■(■)*)*fail dotstar or empty
  83     |  3     (((■)*[\-*+^/])([\d])*)(■([\d]){■})*fail dotstar or empty
  84     |  3     (((■)*[\-*+^/])([\d])*)(■([\d])*){■}fail dotstar or empty
  85     |  3     (((■)*[\-*+^/])([\d])*)([\-*+^/](■){■})*fail dotstar or empty
  86     |  3     (((■)*[\-*+^/])([\d])*)([\-*+^/](■)*){■}fail dotstar or empty
  87     |  3     (((■)*[\-*+^/])([\d])*)([\-*+^/]([\d]){■}){■}fail dotstar or empty
  88     |  3     (((■)*[\-*+^/])([\d])*)([\-*+^/]■)*fail dotstar or empty
  89     |  3     (((■)*[\-*+^/])([\d])*)■fail dotstar or empty
  90     |  3     ((([\d]){■}■)(■)*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  91     |  3     ((([\d]){■}■)([\d]){■})([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  92     |  3     ((([\d]){■}■)([\d])*)(■([\d])*)*  unsatisfiable SAT formula       
  93     |  3     ((([\d]){■}■)([\d])*)([\-*+^/](■)*)*  unsatisfiable SAT formula       
  94     |  3     ((([\d]){■}■)([\d])*)([\-*+^/]([\d]){■})*  unsatisfiable SAT formula       
  95     |  3     ((([\d]){■}■)([\d])*)([\-*+^/]([\d])*){■}  unsatisfiable SAT formula       
  96     |  3     ((■■)([\d])*)([\-*+^/]([\d])*)*fail dot
  97     |  3     ((([\d]){■}(■■))([\d])*)([\-*+^/]([\d])*)*fail dot
  98     |  3     ((([\d]){■}(■|■))([\d])*)([\-*+^/]([\d])*)*fail solve
  99     |  3     ((([\d]){■}(■){■})([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  100    |  3     ((([\d]){■}[\-*+^/])(■){■})([\-*+^/]([\d])*)*fail dotstar or empty
  101    |  3     ((([\d]){■}[\-*+^/])(■)*)(■([\d])*)*fail dotstar or empty
  102    |  3     ((([\d]){■}[\-*+^/])(■)*)([\-*+^/](■)*)*fail dotstar or empty
  103    |  3     ((([\d]){■}[\-*+^/])(■)*)([\-*+^/]([\d]){■})*fail dotstar or empty
  104    |  3     ((([\d]){■}[\-*+^/])(■)*)([\-*+^/]([\d])*){■}fail dotstar or empty
  105    |  3     ((■[\-*+^/])(■)*)([\-*+^/]([\d])*)*fail dotstar or empty
  106    |  3     ((([\d]){■}[\-*+^/])([\d]){■})(■([\d])*)*fail dotstar or empty
  107    |  3     ((([\d]){■}[\-*+^/])([\d]){■})([\-*+^/](■)*)*fail dotstar or empty
  108    |  3     ((([\d]){■}[\-*+^/])([\d]){■})([\-*+^/]([\d]){■})*fail dotstar or empty
  109    |  3     ((([\d]){■}[\-*+^/])([\d]){■})([\-*+^/]([\d])*){■}fail dotstar or empty
  110    |  3     ((■[\-*+^/])([\d]){■})([\-*+^/]([\d])*)*fail dotstar or empty
  111    |  3     ((([\d]){■}[\-*+^/])■)([\-*+^/]([\d])*)*fail dotstar or empty
  112    |  3     ((([\d]){■}[\-*+^/])([\d])*)(■(■)*)*fail dotstar or empty
  113    |  3     ((([\d]){■}[\-*+^/])([\d])*)(■([\d]){■})*fail dotstar or empty
  114    |  3     ((([\d]){■}[\-*+^/])([\d])*)(■([\d])*){■}fail dotstar or empty
  115    |  3     ((■[\-*+^/])([\d])*)(■([\d])*)*fail dotstar or empty
  116    |  3     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/](■){■})*fail dotstar or empty
  117    |  3     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/](■)*){■}fail dotstar or empty
  118    |  3     ((■[\-*+^/])([\d])*)([\-*+^/](■)*)*fail dotstar or empty
  119    |  3     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]([\d]){■}){■}fail dotstar or empty
  120    |  3     ((■[\-*+^/])([\d])*)([\-*+^/]([\d]){■})*fail dotstar or empty
  121    |  3     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]■)*fail dotstar or empty
  122    |  3     ((■[\-*+^/])([\d])*)([\-*+^/]([\d])*){■}fail dotstar or empty
  123    |  3     ((([\d]){■}[\-*+^/])([\d])*)■fail dotstar or empty
  124    |  3     ((([\d])*■)(■){■})([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  125    |  3     ((([\d])*■)(■)*)(■([\d])*)*  unsatisfiable SAT formula       
  126    |  3     ((([\d])*■)(■)*)([\-*+^/](■)*)*  unsatisfiable SAT formula       
  127    |  3     ((([\d])*■)(■)*)([\-*+^/]([\d]){■})*  unsatisfiable SAT formula       
  128    |  3     ((([\d])*■)(■)*)([\-*+^/]([\d])*){■}  unsatisfiable SAT formula       
  129    |  3     ((([\d])*(■■))(■)*)([\-*+^/]([\d])*)*fail dot
  130    |  3     ((([\d])*(■|■))(■)*)([\-*+^/]([\d])*)*fail solve
  131    |  3     ((([\d])*(■){■})(■)*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  132    |  3     ((([\d])*■)(■■)*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  133    |  3     ((([\d])*■)((■|■))*)([\-*+^/]([\d])*)*fail solve
  134    |  3     ((([\d])*■)((■){■})*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  135    |  3     ((([\d])*■)([\d]){■})(■([\d])*)*  unsatisfiable SAT formula       
  136    |  3     ((([\d])*■)([\d]){■})([\-*+^/](■)*)*  unsatisfiable SAT formula       
  137    |  3     ((([\d])*■)([\d]){■})([\-*+^/]([\d]){■})*  unsatisfiable SAT formula       
  138    |  3     ((([\d])*■)([\d]){■})([\-*+^/]([\d])*){■}  unsatisfiable SAT formula       
  139    |  3     ((([\d])*■)■)([\-*+^/]([\d])*)*fail dot
  140    |  3     ((([\d])*(■■))([\d]){■})([\-*+^/]([\d])*)*fail dot
  141    |  3     ((([\d])*(■|■))([\d]){■})([\-*+^/]([\d])*)*fail solve
  142    |  3     ((([\d])*(■){■})([\d]){■})([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  143    |  3     ((([\d])*■)([\d])*)(■(■)*)*  unsatisfiable SAT formula       
  144    |  3     ((([\d])*■)([\d])*)(■([\d]){■})*get a solution: ((([\d])*[123456789+0])([\d])*)([*+0]([\d]){1,2})*
add positive: 0-0
add negative: +
get a solution: ((([\d])*[1\-234567890])([\d])*)([*+0]([\d]){1,2})*
add positive: 0/0
add negative: -
get a solution: ((([\d])*[1234567890])([\d])*)([\-*+/0]([\d]){1,2})*
add positive: 0*011
get a solution: ((([\d])*[1234567890])([\d])*)([\-*+/0]([\d]){1,3})*
add positive: 0*0110
get a solution: ((([\d])*[1234567890])([\d])*)([1\-*+/0]([\d]){1,4})*
add positive: 0*02222
get a solution: ((([\d])*[1234567890])([\d])*)([1\-2*+/]([\d]){1,5})*
add positive: 0*000000
get a solution: ((([\d])*[1234567890])([\d])*)([1\-2*+/0]([\d]){1,6})*
add positive: 0*0333333
get a solution: ((([\d])*[1234567890])([\d])*)([1\-23*+/0]([\d]){1,7})*
add positive: 0*04444444
get a solution: ((([\d])*[1234567890])([\d])*)([1\-234*+/0]([\d]){1,8})*
add positive: 0*055555555
get a solution: ((([\d])*[1234567890])([\d])*)([1\-2345*+/0]([\d]){1,9})*
add positive: 0*0666666666
get a solution: ((([\d])*[1234567890])([\d])*)([1\-23456*+/0]([\d]){1,10})*
add positive: 0*07777777770
get a solution: ((([\d])*[1234567890])([\d])*)([*+/01\-234567]([\d]){1,11})*
add positive: 0*088888888880
10.100389003753662
timeout