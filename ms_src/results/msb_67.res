
Given the regular expression:

  (\d)+(\,\.(\d)+)?

That that should match the strings:

  ✓ (0:5)    23.45
  ✓ (5:10)   1,156
  ✓ (10:13)  1.1
  ✓ (13:17)  1.24
  ✓ (17:23)  12,523

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+((\,\.)(\d)+)?      get a solution: ([12\.3456,])+((\,\.)(\d)+)?
add positive: 0
add negative: ,
  unsatisfiable SAT formula       
  2      |  1     (\d){■}((\,\.)(\d)+)?   fail dotstar or empty
  3      |  1     (\d)+((■\.)(\d)+)?      fail dotstar or empty
  4      |  1     (\d)+((\,■)(\d)+)?      fail dotstar or empty
  5      |  1     (\d)+((\,\.)(■)+)?      fail dotstar or empty
  6      |  1     (\d)+((\,\.)(\d){■})?   fail dotstar or empty
  7      |  1     (\d)+((\,\.)(\d)+){■}   fail dotstar or empty
  8      |  2     (■){■}((\,\.)(\d)+)?      unsatisfiable SAT formula       
  9      |  2     (■)+((■\.)(\d)+)?         unsatisfiable SAT formula       
  10     |  2     (■)+((\,■)(\d)+)?       get a solution: ([12\.3450])+((\,[15])(\d)+)?
add positive: 6
add negative: .
  unsatisfiable SAT formula       
  11     |  2     (■)+((\,\.)(■)+)?         unsatisfiable SAT formula       
  12     |  2     (■)+((\,\.)(\d){■})?      unsatisfiable SAT formula       
  13     |  2     (■)+((\,\.)(\d)+){■}      unsatisfiable SAT formula       
  14     |  2     (■■)+((\,\.)(\d)+)?     fail dot
  15     |  2     ((■|■))+((\,\.)(\d)+)?  fail solve
  16     |  2     ((■){■})+((\,\.)(\d)+)?   unsatisfiable SAT formula       
  17     |  2     (\d){■}((■\.)(\d)+)?    fail dotstar or empty
  18     |  2     (\d){■}((\,■)(\d)+)?    fail dotstar or empty
  19     |  2     (\d){■}((\,\.)(■)+)?    fail dotstar or empty
  20     |  2     (\d){■}((\,\.)(\d){■})? fail dotstar or empty
  21     |  2     (\d){■}((\,\.)(\d)+){■} fail dotstar or empty
  22     |  2     ■((\,\.)(\d)+)?         fail dot
  23     |  2     (\d)+((■■)(\d)+)?       fail dot
  24     |  2     (\d)+((■\.)(■)+)?       fail dotstar or empty
  25     |  2     (\d)+((■\.)(\d){■})?    fail dotstar or empty
  26     |  2     (\d)+((■\.)(\d)+){■}    fail dotstar or empty
  27     |  2     (\d)+((\,■)(■)+)?       fail dotstar or empty
  28     |  2     (\d)+((\,■)(\d){■})?    fail dotstar or empty
  29     |  2     (\d)+((\,■)(\d)+){■}    fail dotstar or empty
  30     |  2     (\d)+((\,\.)(■){■})?    fail dotstar or empty
  31     |  2     (\d)+((\,\.)(■)+){■}    fail dotstar or empty
  32     |  2     (\d)+((\,\.)(\d){■}){■} fail dotstar or empty
  33     |  2     (\d)+((\,\.)■)?         fail dotstar or empty
  34     |  2     (\d)+■                  fail dot
  35     |  3     (■){■}((■\.)(\d)+)?       unsatisfiable SAT formula       
  36     |  3     (■){■}((\,■)(\d)+)?       unsatisfiable SAT formula       
  37     |  3     (■){■}((\,\.)(■)+)?       unsatisfiable SAT formula       
  38     |  3     (■){■}((\,\.)(\d){■})?    unsatisfiable SAT formula       
  39     |  3     (■){■}((\,\.)(\d)+){■}    unsatisfiable SAT formula       
  40     |  3     (■■){■}((\,\.)(\d)+)?   fail dot
  41     |  3     ((■|■)){■}((\,\.)(\d)+)?fail solve
  42     |  3     ((■){■}){■}((\,\.)(\d)+)?  unsatisfiable SAT formula       
  43     |  3     (■)+((■■)(\d)+)?          unsatisfiable SAT formula       
  44     |  3     (■)+((■\.)(■)+)?          unsatisfiable SAT formula       
  45     |  3     (■)+((■\.)(\d){■})?       unsatisfiable SAT formula       
  46     |  3     (■)+((■\.)(\d)+){■}       unsatisfiable SAT formula       
  47     |  3     (■■)+((■\.)(\d)+)?      fail dot
  48     |  3     ((■|■))+((■\.)(\d)+)?   fail solve
  49     |  3     ((■){■})+((■\.)(\d)+)?    unsatisfiable SAT formula       
  50     |  3     (■)+(((■■)\.)(\d)+)?    
1.013240098953247
timeout