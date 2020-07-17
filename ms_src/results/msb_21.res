
Given the regular expression:

  ([0-9]){0,2}\.([0-9]){0,2}

That that should match the strings:

  ✓ (0:2)    00

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){0,2}\.)([0-9]){0,2}fail dotstar or empty
  2      |  1     (([0-9]){■}\.)([0-9]){0,2}fail dotstar or empty
  3      |  1     (([0-9]){0,2}■)([0-9]){0,2}  (([0-9]){0,2}0)([0-9]){0,2}     
template: (([0-9]){0,2}■)([0-9]){0,2} size: 4 holes: 1 time: 2.476149ms
longest: #mn#(([0-9]){0,2}■)([0-9]){0,2}#mn# size: #ms#4#ms# holes: #mh#1#mh# time: #mt#2.476149#mt#ms

Computed in:

  #c#109#c#ms

timeSATSolver time:

  #s#2#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (([0-9]){0,2}0)([0-9]){0,2}

All done

last template: #t#(([0-9]){0,2}■)([0-9]){0,2}#t#
#num#3#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#2#t3#
solution is #sol#(([0-9]){0,2}0)([0-9]){0,2}#sol#
before exit
