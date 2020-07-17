
Given the regular expression:

  ([0-9a-zA-Z])+

That that should match the strings:

  ✓ (0:4)    So I
  ✓ (4:43)   Example of a search that is not working
  ✓ (43:53)  I am using
  ✓ (53:67)  Summer holiday
  ✓ (67:87)  it fails to validate

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+                      ([acdefghiklmnoprstuvwxyEIS ])+ 
template: (■)+ size: 1 holes: 1 time: 2.825043ms
longest: #mn#(■)+#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#2.825043#mt#ms

Computed in:

  #c#111#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  26   ([acdefghiklmnoprstuvwxyEIS ])+

All done

last template: #t#(■)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#([acdefghiklmnoprstuvwxyEIS ])+#sol#
before exit
