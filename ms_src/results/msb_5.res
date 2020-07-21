
Given the regular expression:

  [4-9][0-9]\.

That that should match the strings:

  ✓ (0:4)    999.
  ✓ (4:9)    1000.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[0-9])\.              fail dot
  2      |  1     ([4-9]■)\.              fail dotstar or empty
  3      |  1     ([4-9][0-9])■           fail dotstar or empty
  4      |  2     (■■)\.                  fail dot
  5      |  2     (■[0-9])■               fail dot
  6      |  2     ((■■)[0-9])\.           fail dot
  7      |  2     ((■|■)[0-9])\.          fail dot
  8      |  2     ((■){■}[0-9])\.         get a solution: (([190]){1,3}[0-9])\.
add positive: 40.
add negative: 00.
  unsatisfiable SAT formula       
  9      |  2     ([4-9]■)■               fail dotstar or empty
  10     |  3     (■■)■                   fail dot
  11     |  3     (■)\.                   fail dot
  12     |  3     ((■■)■)\.               fail dot
  13     |  3     ((■|■)■)\.              fail dot
  14     |  3     ((■){■}■)\.               unsatisfiable SAT formula       
  15     |  3     ((■■)[0-9])■            fail dot
  16     |  3     ((■|■)[0-9])■           fail dot
  17     |  3     ((■){■}[0-9])■            unsatisfiable SAT formula       
  18     |  3     (■[0-9])(■■)            fail dot
  19     |  3     (■[0-9])(■|■)           fail dot
  20     |  3     (■[0-9])(■){■}          get a solution: ([149][0-9])([\.90]){1,3}
add positive: 50.
add negative: 10.
  unsatisfiable SAT formula       
  21     |  3     ((■)[0-9])\.            fail dot
  22     |  3     (((■■)■)[0-9])\.        fail dot
  23     |  3     (((■|■)■)[0-9])\.       fail dot
  24     |  3     (((■){■}■)[0-9])\.        unsatisfiable SAT formula       
  25     |  3     ((■■|■)[0-9])\.         fail dot
  26     |  3     (((■|■)|■)[0-9])\.      fail dot
  27     |  3     (((■){■}|■)[0-9])\.     get a solution: ((([190]){2,3}|[45])[0-9])\.
add positive: 90.
get a solution: ((([190]){2,3}|[459])[0-9])\.
add positive: 60.
get a solution: ((([190]){2,3}|[4569])[0-9])\.
add positive: 70.
get a solution: ((([190]){2,3}|[45679])[0-9])\.
add positive: 80.
get a solution: ((([190]){2,3}|[456789])[0-9])\.
add positive: 020.
get a solution: ((([1290]){2,3}|[456789])[0-9])\.
add positive: 030.
get a solution: ((([12390]){2,3}|[456789])[0-9])\.
add positive: 940.
get a solution: ((([123490]){2,3}|[456789])[0-9])\.
add positive: 450.
get a solution: ((([1234590]){2,3}|[456789])[0-9])\.
add positive: 460.
get a solution: ((([12345690]){2,3}|[456789])[0-9])\.
add positive: 470.
get a solution: ((([123456790]){2,3}|[456789])[0-9])\.
add positive: 480.
get a solution: ((([1234567890]){2,3}|[456789])[0-9])\.
add positive: 00000.
get a solution: ((([1234567890]){2,4}|[456789])[0-9])\.
add positive: 400000.
get a solution: ((([1234567890]){2,5}|[456789])[0-9])\.
add positive: 0000000.
get a solution: ((([1234567890]){2,6}|[456789])[0-9])\.
add positive: 00000000.
get a solution: ((([1234567890]){2,7}|[456789])[0-9])\.
add positive: 400000000.
get a solution: ((([1234567890]){2,8}|[456789])[0-9])\.
add positive: 0000000000.
get a solution: ((([1234567890]){2,9}|[456789])[0-9])\.
add positive: 00000000000.
get a solution: ((([1234567890]){2,10}|[456789])[0-9])\.
add positive: 400000000000.
get a solution: ((([1234567890]){2,11}|[456789])[0-9])\.
add positive: 4000000000000.
get a solution: ((([1234567890]){2,12}|[456789])[0-9])\.
add positive: 00000000000000.
get a solution: ((([1234567890]){2,13}|[456789])[0-9])\.
add positive: 000000000000000.
get a solution: ((([1234567890]){2,14}|[456789])[0-9])\.
add positive: 4000000000000000.
get a solution: ((([1234567890]){2,15}|[456789])[0-9])\.
add positive: 00000000000000000.
get a solution: ((([1234567890]){2,16}|[456789])[0-9])\.
add positive: 400000000000000000.
get a solution: ((([1234567890]){2,17}|[456789])[0-9])\.
add positive: 0000000000000000000.
get a solution: ((([1234567890]){2,18}|[456789])[0-9])\.
add positive: 40000000000000000000.
get a solution: ((([1234567890]){2,19}|[456789])[0-9])\.
add positive: 000000000000000000000.
get a solution: ((([1234567890]){2,20}|[456789])[0-9])\.
add positive: 4000000000000000000000.
get a solution: ((([1234567890]){2,21}|[456789])[0-9])\.
add positive: 40000000000000000000000.
get a solution: ((([1234567890]){2,22}|[456789])[0-9])\.
add positive: 400000000000000000000000.
get a solution: ((([1234567890]){2,23}|[456789])[0-9])\.
add positive: 0000000000000000000000000.
get a solution: ((([1234567890]){2,24}|[456789])[0-9])\.
add positive: 40000000000000000000000000.
get a solution: ((([1234567890]){2,25}|[456789])[0-9])\.
add positive: 400000000000000000000000000.
get a solution: ((([1234567890]){2,26}|[456789])[0-9])\.
add positive: 0000000000000000000000000000.
get a solution: ((([1234567890]){2,27}|[456789])[0-9])\.
add positive: 00000000000000000000000000000.
get a solution: ((([1234567890]){2,28}|[456789])[0-9])\.

2.0377309322357178
timeout