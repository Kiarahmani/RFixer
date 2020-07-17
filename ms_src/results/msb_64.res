
Given the regular expression:

  (\s)*(\d){8}(\s)*(\+)*(,(\s)*(\d){8}(,)*)?

That that should match the strings:

  ✓ (0:29)   12345678 , 12345678 ,12345678
  ✓ (29:55)  12345678,12345678,12345678
  ✓ (55:74)  12345678 , 12345678

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?  (((([12345678, ])*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?
template: ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)? size: 15 holes: 1 time: 3.059635ms
longest: #mn#((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?#mn# size: #ms#15#ms# holes: #mh#1#mh# time: #mt#3.059635#mt#ms

Computed in:

  #c#135#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  10   (((([12345678, ])*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?

All done

last template: #t#((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#(((([12345678, ])*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?#sol#
before exit
