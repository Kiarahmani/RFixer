
Given the regular expression:

  ([0-9]){4}

That that should match the strings:

  ✓ (0:7)    . 1900.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){4}                  fail dot
  2      |  1     ([0-9]){■}              fail dotstar or empty
  3      |  2     (■){■}                    ([1\.90 ]){1,7}                 
template: (■){■} size: 1 holes: 3 time: 2.494586ms
longest: #mn#(■){■}#mn# size: #ms#1#ms# holes: #mh#3#mh# time: #mt#2.494586#mt#ms

Computed in:

  #c#99#c#ms

timeSATSolver time:

  #s#2#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  5    ([1\.90 ]){1,7}

All done

last template: #t#(■){■}#t#
#num#3#num#
#dep#2#dep#
#t1#0#t1#
#t2#1#t2#
#t3#1#t3#
solution is #sol#([1\.90 ]){1,7}#sol#
before exit
