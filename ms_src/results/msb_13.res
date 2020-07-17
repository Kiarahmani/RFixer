
Given the regular expression:

  (([\-0-9a-zA-Z])+)

That that should match the strings:

  ✓ (0:12)   product_name

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+                      ([acdemnoprtu_])+               
template: (■)+ size: 1 holes: 1 time: 2.637982ms
longest: #mn#(■)+#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#2.637982#mt#ms

Computed in:

  #c#101#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  12   ([acdemnoprtu_])+

All done

last template: #t#(■)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#([acdemnoprtu_])+#sol#
before exit
