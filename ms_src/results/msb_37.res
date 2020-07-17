
Given the regular expression:

  ([\d])*[\-*+^/]([\d])*([\-*+^/]([\d])*)*

That that should match the strings:

  ✓ (0:2)    34

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)*[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  2      |  1     ((([\d]){■}[\-*+^/])([\d])*)([\-*+^/]([\d])*)*fail dotstar or empty
  3      |  1     ((([\d])*■)([\d])*)([\-*+^/]([\d])*)*  ((([\d])*4)([\d])*)([\-*+^/]([\d])*)*
template: ((([\d])*■)([\d])*)([\-*+^/]([\d])*)* size: 8 holes: 1 time: 2.62487ms
longest: #mn#((([\d])*■)([\d])*)([\-*+^/]([\d])*)*#mn# size: #ms#8#ms# holes: #mh#1#mh# time: #mt#2.62487#mt#ms

Computed in:

  #c#169#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    ((([\d])*4)([\d])*)([\-*+^/]([\d])*)*

All done

last template: #t#((([\d])*■)([\d])*)([\-*+^/]([\d])*)*#t#
#num#3#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#2#t3#
solution is #sol#((([\d])*4)([\d])*)([\-*+^/]([\d])*)*#sol#
before exit
