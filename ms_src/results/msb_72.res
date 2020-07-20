
Given the regular expression:

  (s)*(n)*(o)*(w)*

That that should match the strings:

  ✓ (0:4)    snow
  ✓ (4:15)   ssssnnnowww

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)*(n)*)(o)*)(w)*    get a solution: (((s)*(n)*)(o)*)(w)*
add negative: 
  2      |  1     (((s){■}(n)*)(o)*)(w)*  get a solution: (((s){1,4}(n)*)(o)*)(w)*
add positive: sssssnow
add negative: s
  unsatisfiable SAT formula       
  3      |  1     (((s)*(■)*)(o)*)(w)*    fail dotstar or empty
  4      |  1     (((s)*(n){■})(o)*)(w)*  get a solution: (((s)*(n){1,3})(o)*)(w)*
add positive: snnnnow
add negative: n
  unsatisfiable SAT formula       
  5      |  1     (((s)*(n)*)(■)*)(w)*    fail dotstar or empty
  6      |  1     (((s)*(n)*)(o){■})(w)*  get a solution: (((s)*(n)*)(o){1})(w)*
add positive: snoow
add negative: o
  unsatisfiable SAT formula       
  7      |  1     (((s)*(n)*)(o)*)(■)*    fail dotstar or empty
  8      |  1     (((s)*(n)*)(o)*)(w){■}  get a solution: (((s)*(n)*)(o)*)(w){1,3}
add positive: snowwww
add negative: w
  unsatisfiable SAT formula       
  9      |  2     (((■){■}(n)*)(o)*)(w)*  get a solution: ((([swn]){2,5}(n)*)(o)*)(w)*
add positive: ssssssnow
add negative: sw
get a solution: ((([swno]){3,11}(n)*)(o)*)(w)*
add positive: ssssssssssssnow
add negative: son
get a solution: ((([swno]){4,15}(n)*)(o)*)(w)*
add positive: ssssssssssssssssnow
add negative: sonn
get a solution: ((([sn]){2,16}(n)*)(o)*)(w)*
add positive: sssssssssssssssssnow
add negative: nn
  unsatisfiable SAT formula       
  10     |  2     (((■)*(■)*)(o)*)(w)*    fail dotstar or empty
  11     |  2     (((■)*(n){■})(o)*)(w)*    unsatisfiable SAT formula       
  12     |  2     (((■)*(n)*)(■)*)(w)*    fail dotstar or empty
  13     |  2     (((■)*(n)*)(o){■})(w)*    unsatisfiable SAT formula       
  14     |  2     (((■)*(n)*)(o)*)(■)*    fail dotstar or empty
  15     |  2     (((■)*(n)*)(o)*)(w){■}    unsatisfiable SAT formula       
  16     |  2     (((■■)*(n)*)(o)*)(w)*     17     |  2     ((((■|■))*(n)*)(o)*)(w)*fail solve
  18     |  2     ((((■){■})*(n)*)(o)*)(w)*
1.0141558647155762
timeout