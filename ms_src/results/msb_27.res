
Given the regular expression:

  ([\d])*[\-*+^/]([\d])*([\-*+^/]([\d])*)*

That that should match the strings:

  ✓ (0:2)    34

And reject the strings:

  ✗ (2:10)   34+-/^34
  ✗ (10:23)  34+45*5^7/3-5

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)*[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  2      |  1     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  3      |  1     ((([\d])*■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
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
  28     |  2     ((([\d])*■)([\d])*)(■([\d])*)*get a solution: ((([\d])*3)([\d])*)([∅]([\d])*)*
add positive: 0
get a solution: ((([\d])*[30])([\d])*)([∅]([\d])*)*
add positive: 1
get a solution: ((([\d])*[130])([\d])*)([∅]([\d])*)*
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
get a solution: ((([\d])*[1234567890])([\d])*)(*([\d])*)*
add positive: 0+0
add negative: 0*
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
  62     |  3     (((■)*■)([\d])*)(■([\d])*)*get a solution: ((([*+0])*[123456789+0])([\d])*)(0([\d])*)*
add positive: 0-0
add negative: +
get a solution: ((([\-*+0])*[1\-234567890])([\d])*)(0([\d])*)*
add positive: 0/0
add negative: -
get a solution: ((([\-*+/0])*[123456789/0])([\d])*)(0([\d])*)*
add positive: 1*0
add negative: /
get a solution: ((([1\-*+/0])*[1234567890])([\d])*)(0([\d])*)*
add positive: 2*0
add negative: *0
  unsatisfiable SAT formula       
  63     |  3     (((■)*■)([\d])*)([\-*+^/](■)*)*  unsatisfiable SAT formula       
  64     |  3     (((■)*■)([\d])*)([\-*+^/]([\d]){■})*  unsatisfiable SAT formula       
  65     |  3     (((■)*■)([\d])*)([\-*+^/]([\d])*){■}  unsatisfiable SAT formula       
  66     |  3     (((■■)*■)([\d])*)([\-*+^/]([\d])*)*  unsatisfiable SAT formula       
  67     |  3     ((((■|■))*■)([\d])*)([\-*+^/]([\d])*)*fail solve
  68     |  3     ((((■){■})*■)([\d])*)([\-*+^/]([\d])*)*
2.019120931625366
timeout