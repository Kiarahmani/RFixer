
Given the regular expression:

  ([a-zA-Z])*

That that should match the strings:

  ✓ (0:37)   but with spaces allowed between words
  ✓ (37:51)  t allow spaces
  ✓ (51:90)  can i change it to make it allow spaces
  ✓ (90:129) i have tried the following but it doesn
  ✓ (129:135) t work

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)*                      ([abcdefghiklmnoprstuvw ])*     
template: (■)* size: 1 holes: 1 time: 3.287088ms
longest: #mn#(■)*#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#3.287088#mt#ms

Computed in:

  #c#109#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  22   ([abcdefghiklmnoprstuvw ])*

All done

last template: #t#(■)*#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#([abcdefghiklmnoprstuvw ])*#sol#
before exit
