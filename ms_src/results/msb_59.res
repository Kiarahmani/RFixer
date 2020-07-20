
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
  50     |  3     (■)+(((■■)\.)(\d)+)?      unsatisfiable SAT formula       
  51     |  3     (■)+(((■|■)\.)(\d)+)?   fail solve
  52     |  3     (■)+(((■){■}\.)(\d)+)?    unsatisfiable SAT formula       
  53     |  3     (■)+((\,■)(■)+)?          unsatisfiable SAT formula       
  54     |  3     (■)+((\,■)(\d){■})?       unsatisfiable SAT formula       
  55     |  3     (■)+((\,■)(\d)+){■}       unsatisfiable SAT formula       
  56     |  3     (■■)+((\,■)(\d)+)?      fail dot
  57     |  3     ((■|■))+((\,■)(\d)+)?   fail solve
  58     |  3     ((■){■})+((\,■)(\d)+)?    unsatisfiable SAT formula       
  59     |  3     (■)+((\,(■■))(\d)+)?      unsatisfiable SAT formula       
  60     |  3     (■)+((\,(■|■))(\d)+)?   fail solve
  61     |  3     (■)+((\,(■){■})(\d)+)?    unsatisfiable SAT formula       
  62     |  3     (■)+((\,\.)(■){■})?       unsatisfiable SAT formula       
  63     |  3     (■)+((\,\.)(■)+){■}       unsatisfiable SAT formula       
  64     |  3     (■■)+((\,\.)(■)+)?      fail dot
  65     |  3     ((■|■))+((\,\.)(■)+)?   fail solve
  66     |  3     ((■){■})+((\,\.)(■)+)?    unsatisfiable SAT formula       
  67     |  3     (■)+((\,\.)(■■)+)?        unsatisfiable SAT formula       
  68     |  3     (■)+((\,\.)((■|■))+)?   fail solve
  69     |  3     (■)+((\,\.)((■){■})+)?    unsatisfiable SAT formula       
  70     |  3     (■)+((\,\.)(\d){■}){■}    unsatisfiable SAT formula       
  71     |  3     (■)+((\,\.)■)?            unsatisfiable SAT formula       
  72     |  3     (■■)+((\,\.)(\d){■})?   fail dot
  73     |  3     ((■|■))+((\,\.)(\d){■})?fail solve
  74     |  3     ((■){■})+((\,\.)(\d){■})?  unsatisfiable SAT formula       
  75     |  3     (■)+■                   fail dot
  76     |  3     (■■)+((\,\.)(\d)+){■}   fail dot
  77     |  3     ((■|■))+((\,\.)(\d)+){■}fail solve
  78     |  3     ((■){■})+((\,\.)(\d)+){■}  unsatisfiable SAT formula       
  79     |  3     ((■■)■)+((\,\.)(\d)+)?  fail dot
  80     |  3     ((■|■)■)+((\,\.)(\d)+)? fail dot
  81     |  3     ((■){■}■)+((\,\.)(\d)+)?get a solution: (([12\.345,]){0,5}[1234560])+((\,\.)(\d)+)?
add positive: 7
add negative: ,0
  unsatisfiable SAT formula       
  82     |  3     (■(■■))+((\,\.)(\d)+)?  fail dot
  83     |  3     (■(■|■))+((\,\.)(\d)+)? fail dot
  84     |  3     (■(■){■})+((\,\.)(\d)+)?get a solution: ([1235670]([12\.3456,]){0,5})+((\,\.)(\d)+)?
add positive: 4
add negative: 0,
  unsatisfiable SAT formula       
  85     |  3     ((■■|■))+((\,\.)(\d)+)? get a solution: (([12\.345,][12\.3456,]|[12345670]))+((\,\.)(\d)+)?
add positive: 8
add negative: ,,
get a solution: (([12\.345,][12\.3456]|[123456780]))+((\,\.)(\d)+)?
add positive: 9
add negative: 1.
get a solution: (([12\.5,][123456]|[1234567890]))+((\,\.)(\d)+)?
add positive: 1.0
add negative: ,1
get a solution: (([12\.5][123456,0]|[1234567890]))+((\,\.)(\d)+)?
add positive: 1.7
add negative: 1,
  unsatisfiable SAT formula       
  86     |  3     (((■|■)|■))+((\,\.)(\d)+)?fail solve
  87     |  3     (((■){■}|■))+((\,\.)(\d)+)?get a solution: ((([12\.357,0]){3}|[24567890]))+((\,\.)(\d)+)?
add positive: 1
add negative: 0,,
  unsatisfiable SAT formula       
  88     |  3     ((■|■■))+((\,\.)(\d)+)?   unsatisfiable SAT formula       
  89     |  3     ((■|(■|■)))+((\,\.)(\d)+)?fail solve
  90     |  3     ((■|(■){■}))+((\,\.)(\d)+)?  unsatisfiable SAT formula       
  91     |  3     ((■■){■})+((\,\.)(\d)+)?fail dot
  92     |  3     (((■|■)){■})+((\,\.)(\d)+)?fail solve
  93     |  3     (((■){■}){■})+((\,\.)(\d)+)?
10.215348958969116
timeout