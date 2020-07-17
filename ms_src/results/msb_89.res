
Given the regular expression:

  ((\d){9})

That that should match the strings:

  ✓ (0:10)   4901773349

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){9}                  fail dot
  2      |  1     (\d){■}                   (\d){1,10}                      
template: (\d){■} size: 2 holes: 2 time: 2.281923ms
longest: #mn#(\d){■}#mn# size: #ms#2#ms# holes: #mh#2#mh# time: #mt#2.281923#mt#ms

Computed in:

  #c#85#c#ms

timeSATSolver time:

  #s#2#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  0    (\d){1,10}

All done

last template: #t#(\d){■}#t#
#num#2#num#
#dep#1#dep#
#t1#0#t1#
#t2#1#t2#
#t3#0#t3#
solution is #sol#(\d){1,10}#sol#
before exit
