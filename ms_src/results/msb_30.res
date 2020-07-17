
Given the regular expression:

  (\d){1,2}(\.){0,1}(\d){0,3}

That that should match the strings:

  ✓ (0:5)    11.11
  ✓ (5:9)    11.1
  ✓ (9:15)   11.111

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){1,2}(\.){0,1})(\d){0,3}  ((1){1,2}(\.){0,1})(\d){0,3}    
template: ((■){1,2}(\.){0,1})(\d){0,3} size: 5 holes: 1 time: 2.886605ms
longest: #mn#((■){1,2}(\.){0,1})(\d){0,3}#mn# size: #ms#5#ms# holes: #mh#1#mh# time: #mt#2.886605#mt#ms

Computed in:

  #c#119#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    ((1){1,2}(\.){0,1})(\d){0,3}

All done

last template: #t#((■){1,2}(\.){0,1})(\d){0,3}#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#((1){1,2}(\.){0,1})(\d){0,3}#sol#
before exit
