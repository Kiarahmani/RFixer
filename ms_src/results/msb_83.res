
Given the regular expression:

  [1-50]

That that should match the strings:

  ✓ (0:2)    06

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■                       fail dot
  2      |  2     ■■                        06                              
template: ■■ size: 0 holes: 2 time: 2.547401ms
longest: #mn#■■#mn# size: #ms#0#ms# holes: #mh#2#mh# time: #mt#2.547401#mt#ms

Computed in:

  #c#92#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  2    06

All done

last template: #t#■■#t#
#num#2#num#
#dep#2#dep#
#t1#0#t1#
#t2#1#t2#
#t3#0#t3#
solution is #sol#06#sol#
before exit
