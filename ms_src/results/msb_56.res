
Given the regular expression:

  [0-6]

That that should match the strings:

  ✓ (0:2)    .5
  ✓ (2:5)    1.5

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■                       fail dot
  2      |  2     ■■                      fail dot
  3      |  2     (■|■)                   fail dot
  4      |  2     (■){■}                    ([1\.5]){1,3}                   
template: (■){■} size: 1 holes: 3 time: 2.527244ms
longest: #mn#(■){■}#mn# size: #ms#1#ms# holes: #mh#3#mh# time: #mt#2.527244#mt#ms

Computed in:

  #c#104#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  3    ([1\.5]){1,3}

All done

last template: #t#(■){■}#t#
#num#4#num#
#dep#2#dep#
#t1#0#t1#
#t2#3#t2#
#t3#0#t3#
solution is #sol#([1\.5]){1,3}#sol#
before exit
