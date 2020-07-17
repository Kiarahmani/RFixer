
Given the regular expression:

   ([\w])*\.([a-z]){2,}

That that should match the strings:

  ✓ (0:17)   stackoverflow.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■([\w])*)\.)([a-z]){2,}  ((s([\w])*)\.)([a-z]){2,}       
template: ((■([\w])*)\.)([a-z]){2,} size: 5 holes: 1 time: 2.962054ms
longest: #mn#((■([\w])*)\.)([a-z]){2,}#mn# size: #ms#5#ms# holes: #mh#1#mh# time: #mt#2.962054#mt#ms

Computed in:

  #c#100#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    ((s([\w])*)\.)([a-z]){2,}

All done

last template: #t#((■([\w])*)\.)([a-z]){2,}#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#((s([\w])*)\.)([a-z]){2,}#sol#
before exit
