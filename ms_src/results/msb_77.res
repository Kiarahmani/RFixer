
Given the regular expression:

  \d:[0-5]\d

That that should match the strings:

  ✓ (0:5)    12:55

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■:)[0-5])\d           fail dot
  2      |  1     ((\d■)[0-5])\d          fail dot
  3      |  1     ((\d:)■)\d              fail dotstar or empty
  4      |  1     ((\d:)[0-5])■           fail dotstar or empty
  5      |  2     ((■■)[0-5])\d           fail dot
  6      |  2     ((■:)■)\d               fail dot
  7      |  2     ((■:)[0-5])■            fail dot
  8      |  2     (((■■):)[0-5])\d          (((12):)[0-5])\d                
template: (((■■):)[0-5])\d size: 3 holes: 2 time: 2.754164ms
longest: #mn#(((■■):)[0-5])\d#mn# size: #ms#3#ms# holes: #mh#2#mh# time: #mt#2.754164#mt#ms

Computed in:

  #c#107#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  2    (((12):)[0-5])\d

All done

last template: #t#(((■■):)[0-5])\d#t#
#num#8#num#
#dep#2#dep#
#t1#0#t1#
#t2#5#t2#
#t3#2#t3#
solution is #sol#(((12):)[0-5])\d#sol#
before exit
