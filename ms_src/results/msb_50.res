
Given the regular expression:

  ([a-zA-z]){2}([0-9]){6}

That that should match the strings:

  ✓ (0:11)   INM12345678
  ✓ (11:19)  RQ123456

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){2}([0-9]){6}        fail dot
  2      |  1     ([a-zA-z]){■}([0-9]){6} fail dotstar or empty
  3      |  1     ([a-zA-z]){2}(■){6}     fail dot
  4      |  1     ([a-zA-z]){2}([0-9]){■} fail dotstar or empty
  5      |  2     (■){■}([0-9]){6}          ([Q12RIMN]){1,5}([0-9]){6}      
template: (■){■}([0-9]){6} size: 3 holes: 3 time: 2.474984ms
longest: #mn#(■){■}([0-9]){6}#mn# size: #ms#3#ms# holes: #mh#3#mh# time: #mt#2.474984#mt#ms

Computed in:

  #c#121#c#ms

timeSATSolver time:

  #s#2#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  7    ([Q12RIMN]){1,5}([0-9]){6}

All done

last template: #t#(■){■}([0-9]){6}#t#
#num#5#num#
#dep#2#dep#
#t1#0#t1#
#t2#2#t2#
#t3#2#t3#
solution is #sol#([Q12RIMN]){1,5}([0-9]){6}#sol#
before exit
