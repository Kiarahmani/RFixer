
Given the regular expression:

  ([0-9a-zA-Z]){1,30}\.([a-z]){3}((\.)([a-z]){2})?

That that should match the strings:

  ✓ (0:14)   abc.abc.com.ae

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){1,30}\.)([a-z]){3})(\.([a-z]){2})?  ((([ab\.c]){1,30}\.)([a-z]){3})(\.([a-z]){2})?
template: (((■){1,30}\.)([a-z]){3})(\.([a-z]){2})? size: 8 holes: 1 time: 2.754012ms
longest: #mn#(((■){1,30}\.)([a-z]){3})(\.([a-z]){2})?#mn# size: #ms#8#ms# holes: #mh#1#mh# time: #mt#2.754012#mt#ms

Computed in:

  #c#247#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  4    ((([ab\.c]){1,30}\.)([a-z]){3})(\.([a-z]){2})?

All done

last template: #t#(((■){1,30}\.)([a-z]){3})(\.([a-z]){2})?#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#((([ab\.c]){1,30}\.)([a-z]){3})(\.([a-z]){2})?#sol#
before exit
