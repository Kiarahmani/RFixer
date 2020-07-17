
Given the regular expression:

  11(\d){8}

That that should match the strings:

  ✓ (0:12)   t1128647953t

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■1)(\d){8}             fail dotstar or empty
  2      |  1     (1■)(\d){8}             fail dotstar or empty
  3      |  1     (11)(■){8}              fail dotstar or empty
  4      |  1     (11)(\d){■}             fail dotstar or empty
  5      |  2     (■■)(\d){8}             fail dotstar or empty
  6      |  2     (■1)(■){8}              fail dot
  7      |  2     (■1)(\d){■}             fail dotstar or empty
  8      |  2     (1■)(■){8}              fail dotstar or empty
  9      |  2     (1■)(\d){■}             fail dotstar or empty
  10     |  2     (11)(■){■}              fail dotstar or empty
  11     |  2     (11)■                   fail dotstar or empty
  12     |  3     (■■)(■){8}              fail dot
  13     |  3     (■■)(\d){■}             fail dot
  14     |  3     (■)(\d){8}              fail dotstar or empty
  15     |  3     (■1)(■){■}                (t1)([1234t56789]){1,10}        
template: (■1)(■){■} size: 2 holes: 4 time: 3.071237ms
longest: #mn#(■1)(■){■}#mn# size: #ms#2#ms# holes: #mh#4#mh# time: #mt#3.071237#mt#ms

Computed in:

  #c#116#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  11   (t1)([1234t56789]){1,10}

All done

last template: #t#(■1)(■){■}#t#
#num#15#num#
#dep#3#dep#
#t1#0#t1#
#t2#3#t2#
#t3#11#t3#
solution is #sol#(t1)([1234t56789]){1,10}#sol#
before exit
