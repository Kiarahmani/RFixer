
Given the regular expression:

  (([a-zA-Z]){1})(([0-9]){3})

That that should match the strings:

  ✓ (0:4)    123d
  ✓ (4:8)    12d3
  ✓ (8:12)   99A9

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){1}([0-9]){3}        fail dotstar or empty
  2      |  1     ([a-zA-Z]){■}([0-9]){3} fail dotstar or empty
  3      |  1     ([a-zA-Z]){1}(■){3}     fail dotstar or empty
  4      |  1     ([a-zA-Z]){1}([0-9]){■} fail dotstar or empty
  5      |  2     (■){■}([0-9]){3}        fail dotstar or empty
  6      |  2     (■){1}(■){3}              ([19]){1}([A23d9]){3}           
template: (■){1}(■){3} size: 2 holes: 2 time: 3.309266ms
longest: #mn#(■){1}(■){3}#mn# size: #ms#2#ms# holes: #mh#2#mh# time: #mt#3.309266#mt#ms

Computed in:

  #c#112#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  7    ([19]){1}([A23d9]){3}

All done

last template: #t#(■){1}(■){3}#t#
#num#6#num#
#dep#2#dep#
#t1#0#t1#
#t2#0#t2#
#t3#5#t3#
solution is #sol#([19]){1}([A23d9]){3}#sol#
before exit
