
Given the regular expression:

  (([\s\da-zA-Z])+[\sa-zA-Z])+

That that should match the strings:

  ✓ (0:2)    12

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+[\sa-zA-Z])+       fail dotstar or empty
  2      |  1     (([\s\da-zA-Z]){■}[\sa-zA-Z])+fail dotstar or empty
  3      |  1     (([\s\da-zA-Z])+■)+       (([\s\da-zA-Z])+2)+             
template: (([\s\da-zA-Z])+■)+ size: 3 holes: 1 time: 2.625782ms
longest: #mn#(([\s\da-zA-Z])+■)+#mn# size: #ms#3#ms# holes: #mh#1#mh# time: #mt#2.625782#mt#ms

Computed in:

  #c#102#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (([\s\da-zA-Z])+2)+

All done

last template: #t#(([\s\da-zA-Z])+■)+#t#
#num#3#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#2#t3#
solution is #sol#(([\s\da-zA-Z])+2)+#sol#
before exit
