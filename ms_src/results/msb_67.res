
Given the regular expression:

  [w\\][sww,\\\\\\\\]

That that should match the strings:

  ✓ (0:19)   lastname, firstname

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■[sww,\\\\\\\\]         fail dotstar or empty
  2      |  1     [w\\]■                  fail dotstar or empty
  3      |  2     ■■                      fail dot
  4      |  3     ■                       fail dot
  5      |  3     (■■)■                   fail dot
  6      |  3     (■|■)■                  fail dot
  7      |  3     (■){■}■                   ([aefi,lmnrst ]){1,18}e         
template: (■){■}■ size: 1 holes: 4 time: 2.417475ms
longest: #mn#(■){■}■#mn# size: #ms#1#ms# holes: #mh#4#mh# time: #mt#2.417475#mt#ms

Computed in:

  #c#104#c#ms

timeSATSolver time:

  #s#2#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  13   ([aefi,lmnrst ]){1,18}e

All done

last template: #t#(■){■}■#t#
#num#7#num#
#dep#3#dep#
#t1#0#t1#
#t2#4#t2#
#t3#2#t3#
solution is #sol#([aefi,lmnrst ]){1,18}e#sol#
before exit
