
Given the regular expression:

  A(\w)+

That that should match the strings:

  ✓ (0:2)    My
  ✓ (2:5)    Yes
  ✓ (5:12)   Example
  ✓ (12:15)  How

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■(\w)+                    [EHYM](\w)+                     
template: ■(\w)+ size: 2 holes: 1 time: 2.88501ms
longest: #mn#■(\w)+#mn# size: #ms#2#ms# holes: #mh#1#mh# time: #mt#2.88501#mt#ms

Computed in:

  #c#103#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  4    [EHYM](\w)+

All done

last template: #t#■(\w)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#[EHYM](\w)+#sol#
before exit
