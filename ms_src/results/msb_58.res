
Given the regular expression:

  (.)+(([!<=>])+)(.)+

That that should match the strings:

  ✓ (0:6)    f>=2+a
  ✓ (6:11)   1+2<4
  ✓ (11:15)  a!=2

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+([!<=>])+)(.)+       (([1a2f+])+([!<=>])+)(.)+       
template: ((■)+([!<=>])+)(.)+ size: 5 holes: 1 time: 3.728162ms
longest: #mn#((■)+([!<=>])+)(.)+#mn# size: #ms#5#ms# holes: #mh#1#mh# time: #mt#3.728162#mt#ms

Computed in:

  #c#107#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  5    (([1a2f+])+([!<=>])+)(.)+

All done

last template: #t#((■)+([!<=>])+)(.)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#(([1a2f+])+([!<=>])+)(.)+#sol#
before exit
