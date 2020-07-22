
Given the regular expression:

  (s)*(n)*(o)*(w)*

That that should match the strings:

  ✓ (0:4)    snow
  ✓ (4:15)   ssssnnnowww

And reject the strings:

  ✗ (15:27)  sssooooowwww

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)*(n)*)(o)*)(w)*      unsatisfiable SAT formula       
  2      |  1     (((s){■}(n)*)(o)*)(w)*    unsatisfiable SAT formula       
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
  9      |  2     (((■){■}(n)*)(o)*)(w)*    unsatisfiable SAT formula       
  10     |  2     (((■)*(■)*)(o)*)(w)*    fail dotstar or empty
  11     |  2     (((■)*(n){■})(o)*)(w)*    unsatisfiable SAT formula       
  12     |  2     (((■)*(n)*)(■)*)(w)*    fail dotstar or empty
  13     |  2     (((■)*(n)*)(o){■})(w)*    unsatisfiable SAT formula       
  14     |  2     (((■)*(n)*)(o)*)(■)*    fail dotstar or empty
  15     |  2     (((■)*(n)*)(o)*)(w){■}    unsatisfiable SAT formula       
  16     |  2     (((■■)*(n)*)(o)*)(w)*     17     |  2     ((((■|■))*(n)*)(o)*)(w)*fail solve
  18     |  2     ((((■){■})*(n)*)(o)*)(w)*  19     |  2     (((s){■}(■)*)(o)*)(w)*    unsatisfiable SAT formula       
  20     |  2     (((s){■}(n){■})(o)*)(w)*get a solution: (((s){1,4}(n){1,4})(o)*)(w)*
add positive: sssssnow
add negative: sn
  unsatisfiable SAT formula       
  21     |  2     (((s){■}(n)*)(■)*)(w)*    unsatisfiable SAT formula       
  22     |  2     (((s){■}(n)*)(o){■})(w)*get a solution: (((s){1,5}(n)*)(o){1,2})(w)*
add positive: snooow
add negative: so
  unsatisfiable SAT formula       
  23     |  2     (((s){■}(n)*)(o)*)(■)*    unsatisfiable SAT formula       
  24     |  2     (((s){■}(n)*)(o)*)(w){■}  unsatisfiable SAT formula       
  25     |  2     ((■(n)*)(o)*)(w)*       fail dot
  26     |  2     (((s)*(■){■})(o)*)(w)*    unsatisfiable SAT formula       
  27     |  2     (((s)*(■)*)(■)*)(w)*    fail dotstar or empty
  28     |  2     (((s)*(■)*)(o){■})(w)*    unsatisfiable SAT formula       
  29     |  2     (((s)*(■)*)(o)*)(■)*    fail dotstar or empty
  30     |  2     (((s)*(■)*)(o)*)(w){■}    unsatisfiable SAT formula       
  31     |  2     (((s)*(n){■})(■)*)(w)*    unsatisfiable SAT formula       
  32     |  2     (((s)*(n){■})(o){■})(w)*get a solution: (((s)*(n){1,4})(o){1,3})(w)*
add positive: snoooow
add negative: no
  unsatisfiable SAT formula       
  33     |  2     (((s)*(n){■})(o)*)(■)*    unsatisfiable SAT formula       
  34     |  2     (((s)*(n){■})(o)*)(w){■}get a solution: (((s)*(n){1,4})(o)*)(w){1,4}
add positive: snnnnnow
add negative: nw
  unsatisfiable SAT formula       
  35     |  2     (((s)*■)(o)*)(w)*       fail dot
  36     |  2     (((s)*(n)*)(■){■})(w)*  get a solution: (((s)*(n)*)([swno]){4})(w)*
add positive: snooooow
add negative: snoo
  unsatisfiable SAT formula       
  37     |  2     (((s)*(n)*)(■)*)(■)*    fail dotstar or empty
  38     |  2     (((s)*(n)*)(■)*)(w){■}    unsatisfiable SAT formula       
  39     |  2     (((s)*(n)*)(o){■})(■)*    unsatisfiable SAT formula       
  40     |  2     (((s)*(n)*)(o){■})(w){■}  unsatisfiable SAT formula       
  41     |  2     (((s)*(n)*)■)(w)*       fail dot
  42     |  2     (((s)*(n)*)(o)*)(■){■}    unsatisfiable SAT formula       
  43     |  2     (((s)*(n)*)(o)*)■       fail dot
  44     |  3     (((■){■}(■)*)(o)*)(w)*    unsatisfiable SAT formula       
  45     |  3     (((■){■}(n){■})(o)*)(w)*  unsatisfiable SAT formula       
  46     |  3     (((■){■}(n)*)(■)*)(w)*    unsatisfiable SAT formula       
  47     |  3     (((■){■}(n)*)(o){■})(w)*  unsatisfiable SAT formula       
  48     |  3     (((■){■}(n)*)(o)*)(■)*    unsatisfiable SAT formula       
  49     |  3     (((■){■}(n)*)(o)*)(w){■}get a solution: ((([swno]){2,8}(n)*)(o)*)(w){1,3}
add positive: sssssssssnow
add negative: nnw
get a solution: ((([swno]){3,9}(n)*)(o)*)(w){1,2}
add positive: sssssssnowww
add negative: nnnw
  unsatisfiable SAT formula       
  50     |  3     (((■■){■}(n)*)(o)*)(w)*   unsatisfiable SAT formula       
  51     |  3     ((((■|■)){■}(n)*)(o)*)(w)*fail solve
  52     |  3     ((((■){■}){■}(n)*)(o)*)(w)*
3.0181989669799805
timeout