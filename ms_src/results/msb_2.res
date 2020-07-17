
Given the regular expression:

  ([0-9A-Z])+

That that should match the strings:

  ✓ (0:5)    A-59#
  ✓ (5:10)   A453#

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+                      ([A\-3#459])+                   
template: (■)+ size: 1 holes: 1 time: 2.580483ms
longest: #mn#(■)+#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#2.580483#mt#ms

Computed in:

  #c#97#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  7    ([A\-3#459])+

All done

last template: #t#(■)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#([A\-3#459])+#sol#
before exit
