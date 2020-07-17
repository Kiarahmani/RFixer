
Given the regular expression:

  (s)*(n)*(o)*(w)*

That that should match the strings:

  ✓ (0:4)    snow
  ✓ (4:15)   ssssnnnowww

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)*(n)*)(o)*)(w)*      (((s)*(n)*)(o)*)(w)*            
template: (((■)*(n)*)(o)*)(w)* size: 7 holes: 1 time: 3.206759ms
longest: #mn#(((■)*(n)*)(o)*)(w)*#mn# size: #ms#7#ms# holes: #mh#1#mh# time: #mt#3.206759#mt#ms

Computed in:

  #c#114#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (((s)*(n)*)(o)*)(w)*

All done

last template: #t#(((■)*(n)*)(o)*)(w)*#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#(((s)*(n)*)(o)*)(w)*#sol#
before exit
