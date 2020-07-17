
Given the regular expression:

  ((([0-2]){1}W|([21-1]){2}M)|([1-2]){1}Y)

That that should match the strings:

  ✓ (0:2)    3W

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){1}W|([21-1]){2}M)|([1-2]){1}Y)  (((3){1}W|([21-1]){2}M)|([1-2]){1}Y)
template: (((■){1}W|([21-1]){2}M)|([1-2]){1}Y) size: 10 holes: 1 time: 3.102322ms
longest: #mn#(((■){1}W|([21-1]){2}M)|([1-2]){1}Y)#mn# size: #ms#10#ms# holes: #mh#1#mh# time: #mt#3.102322#mt#ms

Computed in:

  #c#116#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (((3){1}W|([21-1]){2}M)|([1-2]){1}Y)

All done

last template: #t#(((■){1}W|([21-1]){2}M)|([1-2]){1}Y)#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#(((3){1}W|([21-1]){2}M)|([1-2]){1}Y)#sol#
before exit
