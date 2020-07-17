
Given the regular expression:

  ([A-Z]([a-z])*((\\s[a-zA-Z])?([a-z])*)*)

That that should match the strings:

  ✓ (0:7)    To Make

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■([a-z])*)(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  2      |  1     ([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z])*)*  ([A-Z]([Mo ])*)(((\\s)[a-zA-Z])?([a-z])*)*
template: ([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z])*)* size: 9 holes: 1 time: 3.147394ms
longest: #mn#([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z])*)*#mn# size: #ms#9#ms# holes: #mh#1#mh# time: #mt#3.147394#mt#ms

Computed in:

  #c#130#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  3    ([A-Z]([Mo ])*)(((\\s)[a-zA-Z])?([a-z])*)*

All done

last template: #t#([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z])*)*#t#
#num#2#num#
#dep#1#dep#
#t1#0#t1#
#t2#1#t2#
#t3#0#t3#
solution is #sol#([A-Z]([Mo ])*)(((\\s)[a-zA-Z])?([a-z])*)*#sol#
before exit
