
Given the regular expression:

  (([aeuio])*[aeuio]){2,}

That that should match the strings:

  ✓ (0:2)    oe
  ✓ (2:4)    oi
  ✓ (4:6)    io

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)*[aeuio]){2,}         (([∅])*[aeuio]){2,}             
template: ((■)*[aeuio]){2,} size: 3 holes: 1 time: 3.089934ms
longest: #mn#((■)*[aeuio]){2,}#mn# size: #ms#3#ms# holes: #mh#1#mh# time: #mt#3.089934#mt#ms

Computed in:

  #c#98#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (([∅])*[aeuio]){2,}

All done

last template: #t#((■)*[aeuio]){2,}#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#(([∅])*[aeuio]){2,}#sol#
before exit
