
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
  2      |  1     (([0-9]){■}.)\.           (([0-9]){0}.)\.                 
template: (([0-9]){■}.)\. size: 4 holes: 2 time: 2.869194ms
longest: #mn#(([0-9]){■}.)\.#mn# size: #ms#4#ms# holes: #mh#2#mh# time: #mt#2.869194#mt#ms

Computed in:

  #c#98#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  0    (([0-9]){0}.)\.

All done

last template: #t#(([0-9]){■}.)\.#t#
#num#2#num#
#dep#1#dep#
#t1#0#t1#
#t2#1#t2#
#t3#0#t3#
solution is #sol#(([0-9]){0}.)\.#sol#
before exit
