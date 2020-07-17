
Given the regular expression:

  \+([0-9])+

That that should match the strings:

  ✓ (0:10)   9946546543

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([0-9])+                 9([0-9])+                       
template: ■([0-9])+ size: 2 holes: 1 time: 2.574982ms
longest: #mn#■([0-9])+#mn# size: #ms#2#ms# holes: #mh#1#mh# time: #mt#2.574982#mt#ms

Computed in:

  #c#99#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    9([0-9])+

All done

last template: #t#■([0-9])+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#9([0-9])+#sol#
before exit
