
Given the regular expression:

  (((\d){6}|(\d){7})|(\d){8})

That that should match the strings:

  ✓ (0:8)    CH11 2ab
  ✓ (8:14)   b6 7ba
  ✓ (14:21)  BH6 5BG

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){6}|(\d){7})|(\d){8})fail dot
  2      |  1     (((\d){■}|(\d){7})|(\d){8})fail dotstar or empty
  3      |  1     (((\d){6}|(■){7})|(\d){8})fail dot
  4      |  1     (((\d){6}|(\d){■})|(\d){8})fail dotstar or empty
  5      |  1     (((\d){6}|(\d){7})|(■){8})fail dot
  6      |  1     (((\d){6}|(\d){7})|(\d){■})fail dotstar or empty
  7      |  2     (((■){■}|(\d){7})|(\d){8})  ((([abBCGH12567 ]){1,8}|(\d){7})|(\d){8})
template: (((■){■}|(\d){7})|(\d){8}) size: 7 holes: 3 time: 2.724854ms
longest: #mn#(((■){■}|(\d){7})|(\d){8})#mn# size: #ms#7#ms# holes: #mh#3#mh# time: #mt#2.724854#mt#ms

Computed in:

  #c#139#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  12   ((([abBCGH12567 ]){1,8}|(\d){7})|(\d){8})

All done

last template: #t#(((■){■}|(\d){7})|(\d){8})#t#
#num#7#num#
#dep#2#dep#
#t1#0#t1#
#t2#3#t2#
#t3#3#t3#
solution is #sol#((([abBCGH12567 ]){1,8}|(\d){7})|(\d){8})#sol#
before exit
