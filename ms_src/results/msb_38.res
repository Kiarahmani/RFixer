
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

1.0271539688110352
timeout