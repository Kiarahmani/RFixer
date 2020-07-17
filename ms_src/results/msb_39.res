
Given the regular expression:

  ([CD]){1}(\d){7}[0000019999990-9]

That that should match the strings:

  ✓ (0:9)    DC9999999
  ✓ (9:18)   DC0001000

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){1}(\d){7})[0000019999990-9]fail dotstar or empty
  2      |  1     (([CD]){■}(\d){7})[0000019999990-9]fail dotstar or empty
  3      |  1     (([CD]){1}(■){7})[0000019999990-9]  (([CD]){1}([1C90]){7})[0000019999990-9]
template: (([CD]){1}(■){7})[0000019999990-9] size: 4 holes: 1 time: 2.625768ms
longest: #mn#(([CD]){1}(■){7})[0000019999990-9]#mn# size: #ms#4#ms# holes: #mh#1#mh# time: #mt#2.625768#mt#ms

Computed in:

  #c#121#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  4    (([CD]){1}([1C90]){7})[0000019999990-9]

All done

last template: #t#(([CD]){1}(■){7})[0000019999990-9]#t#
#num#3#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#2#t3#
solution is #sol#(([CD]){1}([1C90]){7})[0000019999990-9]#sol#
before exit
