
Given the regular expression:

  ([0-9])+.\.

That that should match the strings:

  ? (0:2)    3.
  ? (2:4)    1.
  ? (4:6)    2.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((?)+.)\.               fail dot
  2      |  1     (([0-9]){?}.)\.         get a solution: (([0-9]){0}.)\.
add positive: 00.
add negative:  .
  unsatisfiable SAT formula       
  3      |  1     (([0-9])+?)\.           fail dot
  4      |  1     (([0-9])+.)?            fail dot
  5      |  2     ((?){?}.)\.               unsatisfiable SAT formula       
  6      |  2     ((?)+?)\.               fail dot
  7      |  2     ((?)+.)?                fail dot
  8      |  2     ((??)+.)\.              fail dot
  9      |  2     (((?|?))+.)\.           fail dot
  10     |  2     (((?){?})+.)\.            unsatisfiable SAT formula       
  11     |  2     (([0-9]){?}?)\.         get a solution: (([0-9]){0,1}[1230])\.
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
add positive: 000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,50}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,51}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,52}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,53}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,54}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,55}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,56}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,57}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,58}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,59}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,60}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,61}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,62}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,63}[1234567890])\.
add positive: 00000000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,64}[1234567890])\.
add positive: 000000000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,65}[1234567890])\.
add positive: 0000000000000000000000000000000000000000000000000000000000000000000.
get a solution: (([0-9]){0,66}[1234567890])\.
  timed-out cegis for `(([0-9]){?}?)\.`
  12     |  2     (([0-9]){?}.)?            unsatisfiable SAT formula       
  13     |  2     (?.)\.                  fail dot
  14     |  2     (([0-9])+?)?            fail dot
  15     |  2     (([0-9])+(??))\.        fail dot
  16     |  2     (([0-9])+(?|?))\.       fail dot
  17     |  2     (([0-9])+(?){?})\.      get a solution: (([0-9])+([?]){0})\.
  (([0-9])+([?]){0})\.            
template: (([0-9]){?}.)\. size: 4 holes: 2 time: 0.605341ms
template: (([0-9])+(?){?})\. size: 4 holes: 3 time: 6.6669ms
template: (([0-9]){?}.)? size: 3 holes: 3 time: 1.908408ms
template: (([0-9]){?}?)\. size: 3 holes: 3 time: 2.079642ms
template: ((?){?}.)\. size: 3 holes: 3 time: 0.505882ms
template: (((?){?})+.)\. size: 4 holes: 3 time: 0.680207ms
longest: #mn#(([0-9])+(?){?})\.#mn# size: #ms#4#ms# holes: #mh#3#mh# time: #mt#6.6669#mt#ms

Computed in:

  #c#8063#c#ms

timeSATSolver time:

  #s#111#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  1    (([0-9])+([?]){0})\.

All done

last template: #t#(([0-9])+(?){?})\.#t#
#num#17#num#
#dep#2#dep#
#t1#0#t1#
#t2#11#t2#
#t3#0#t3#
#p#72#p#
#n#1#n#
solution is #sol#(([0-9])+([?]){0})\.#sol#
before exit

8.459884643554688
success