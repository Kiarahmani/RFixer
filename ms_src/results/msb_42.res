
Given the regular expression:

  42\.[6-9][0-6]

That that should match the strings:

  ✓ (0:5)    42.67

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■2)\.)[6-9])[0-6]    fail dotstar or empty
  2      |  1     (((4■)\.)[6-9])[0-6]    fail dotstar or empty
  3      |  1     (((42)■)[6-9])[0-6]     fail dotstar or empty
  4      |  1     (((42)\.)■)[0-6]        fail dotstar or empty
  5      |  1     (((42)\.)[6-9])■          (((42)\.)[6-9])7                
template: (((42)\.)[6-9])■ size: 4 holes: 1 time: 3.306984ms
longest: #mn#(((42)\.)[6-9])■#mn# size: #ms#4#ms# holes: #mh#1#mh# time: #mt#3.306984#mt#ms

Computed in:

  #c#107#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (((42)\.)[6-9])7

All done

last template: #t#(((42)\.)[6-9])■#t#
#num#5#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#4#t3#
solution is #sol#(((42)\.)[6-9])7#sol#
before exit
