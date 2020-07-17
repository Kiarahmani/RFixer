
Given the regular expression:

  (([0-9]){1,3}|1000)

That that should match the strings:

  ✓ (0:5)    -1000

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){1,3}|((10)0)0)     fail dot
  2      |  1     (([0-9]){■}|((10)0)0)   fail dotstar or empty
  3      |  1     (([0-9]){1,3}|((■0)0)0) fail dot
  4      |  1     (([0-9]){1,3}|((1■)0)0) fail dotstar or empty
  5      |  1     (([0-9]){1,3}|((10)■)0) fail dotstar or empty
  6      |  1     (([0-9]){1,3}|((10)0)■) fail dotstar or empty
  7      |  2     ((■){■}|((10)0)0)         (([1\-0]){1,5}|((10)0)0)        
template: ((■){■}|((10)0)0) size: 6 holes: 3 time: 3.077576ms
longest: #mn#((■){■}|((10)0)0)#mn# size: #ms#6#ms# holes: #mh#3#mh# time: #mt#3.077576#mt#ms

Computed in:

  #c#132#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  3    (([1\-0]){1,5}|((10)0)0)

All done

last template: #t#((■){■}|((10)0)0)#t#
#num#7#num#
#dep#2#dep#
#t1#0#t1#
#t2#2#t2#
#t3#4#t3#
solution is #sol#(([1\-0]){1,5}|((10)0)0)#sol#
before exit
