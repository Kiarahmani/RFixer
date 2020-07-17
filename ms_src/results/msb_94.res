
Given the regular expression:

  [1-9](\d)*(,(\d)+)?

That that should match the strings:

  ✓ (0:4)    0,01
  ✓ (4:9)    0,001

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■(\d)*)(,(\d)+)?         (0(\d)*)(,(\d)+)?               
template: (■(\d)*)(,(\d)+)? size: 6 holes: 1 time: 2.973456ms
longest: #mn#(■(\d)*)(,(\d)+)?#mn# size: #ms#6#ms# holes: #mh#1#mh# time: #mt#2.973456#mt#ms

Computed in:

  #c#119#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (0(\d)*)(,(\d)+)?

All done

last template: #t#(■(\d)*)(,(\d)+)?#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#(0(\d)*)(,(\d)+)?#sol#
before exit
