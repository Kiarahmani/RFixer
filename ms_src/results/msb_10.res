
Given the regular expression:

  ([0-9])+.\.

That that should match the strings:

  ✓ (0:2)    1.
  ✓ (2:4)    3.
  ✓ (4:6)    2.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+.)\.               fail dot
  2      |  1     (([0-9]){■}.)\.         get a solution: (([0-9]){0}.)\.
add positive: 00.
add negative:  .
  unsatisfiable SAT formula       
  3      |  1     (([0-9])+■)\.           fail dot
  4      |  1     (([0-9])+.)■            fail dot
  5      |  2     ((■){■}.)\.               unsatisfiable SAT formula       
  6      |  2     ((■)+■)\.               fail dot
  7      |  2     ((■)+.)■                fail dot
  8      |  2     ((■■)+.)\.              fail dot
  9      |  2     (((■|■))+.)\.           fail dot
  10     |  2     (((■){■})+.)\.            unsatisfiable SAT formula       
  11     |  2     (([0-9]){■}■)\.         get a solution: (([0-9]){0,1}[1230])\.
add positive: 4.
get a solution: (([0-9]){0,1}[12340])\.
add positive: 5.
get a solution: (([0-9]){0,1}[123450])\.
add positive: 6.
get a solution: (([0-9]){0,1}[1234560])\.
add positive: 7.
get a solution: (([0-9]){0,1}[12345670])\.
add positive: 8.
get a solution: (([0-9]){0,1}[123456780])\.
add positive: 9.
get a solution: (([0-9]){0,1}[1234567890])\.
add positive: 000.
get a solution: (([0-9]){0,2}[1234567890])\.
add positive: 0000.
get a solution: (([0-9]){0,3}[1234567890])\.
add positive: 00000.
get a solution: (([0-9]){0,4}[1234567890])\.
add positive: 000000.
get a solution: (([0-9]){0,5}[1234567890])\.
add positive: 0000000.
get a solution: (([0-9]){0,6}[1234567890])\.
add positive: 00000000.
get a solution: (([0-9]){0,7}[1234567890])\.
add positive: 000000000.
get a solution: (([0-9]){0,8}[1234567890])\.
add positive: 0000000000.
get a solution: (([0-9]){0,9}[1234567890])\.
add positive: 00000000000.
get a solution: (([0-9]){0,10}[1234567890])\.
add positive: 000000000000.
get a solution: (([0-9]){0,11}[1234567890])\.
add positive: 0000000000000.
get a solution: (([0-9]){0,12}[1234567890])\.
add positive: 00000000000000.
get a solution: (([0-9]){0,13}[1234567890])\.
add positive: 000000000000000.
get a solution: (([0-9]){0,14}[1234567890])\.
add positive: 0000000000000000.
get a solution: (([0-9]){0,15}[1234567890])\.
add positive: 00000000000000000.
get a solution: (([0-9]){0,16}[1234567890])\.
add positive: 000000000000000000.
get a solution: (([0-9]){0,17}[1234567890])\.
add positive: 0000000000000000000.
get a solution: (([0-9]){0,18}[1234567890])\.
add positive: 00000000000000000000.
get a solution: (([0-9]){0,19}[1234567890])\.
add positive: 000000000000000000000.
get a solution: (([0-9]){0,20}[1234567890])\.
add positive: 0000000000000000000000.
get a solution: (([0-9]){0,21}[1234567890])\.
add positive: 00000000000000000000000.
get a solution: (([0-9]){0,22}[1234567890])\.
add positive: 000000000000000000000000.
get a solution: (([0-9]){0,23}[1234567890])\.
add positive: 0000000000000000000000000.
get a solution: (([0-9]){0,24}[1234567890])\.
add positive: 00000000000000000000000000.
get a solution: (([0-9]){0,25}[1234567890])\.
add positive: 000000000000000000000000000.
get a solution: (([0-9]){0,26}[1234567890])\.
add positive: 0000000000000000000000000000.
get a solution: (([0-9]){0,27}[1234567890])\.
add positive: 00000000000000000000000000000.
get a solution: (([0-9]){0,28}[1234567890])\.
add positive: 000000000000000000000000000000.
get a solution: (([0-9]){0,29}[1234567890])\.
add positive: 0000000000000000000000000000000.
get a solution: (([0-9]){0,30}[1234567890])\.
add positive: 00000000000000000000000000000000.
get a solution: (([0-9]){0,31}[1234567890])\.
add positive: 000000000000000000000000000000000.
get a solution: (([0-9]){0,32}[1234567890])\.
add positive: 0000000000000000000000000000000000.
get a solution: (([0-9]){0,33}[1234567890])\.
add positive: 00000000000000000000000000000000000.
get a solution: (([0-9]){0,34}[1234567890])\.
add positive: 000000000000000000000000000000000000.
get a solution: (([0-9]){0,35}[1234567890])\.
add positive: 0000000000000000000000000000000000000.
get a solution: (([0-9]){0,36}[1234567890])\.
add positive: 00000000000000000000000000000000000000.
get a solution: (([0-9]){0,37}[1234567890])\.
add positive: 000000000000000000000000000000000000000.
get a solution: (([0-9]){0,38}[1234567890])\.
add positive: 0000000000000000000000000000000000000000.
get a solution: (([0-9]){0,39}[1234567890])\.
add positive: 00000000000000000000000000000000000000000.
get a solution: (([0-9]){0,40}[1234567890])\.
add positive: 000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,41}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,42}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,43}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,44}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,45}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,46}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,47}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,48}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,49}[1234567890])\.

5.074938058853149
timeout