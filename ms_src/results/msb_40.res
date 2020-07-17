
Given the regular expression:

  [1-9]([0-9])*

That that should match the strings:

  ✓ (0:11)   +9089098909
  ✓ (11:24)  +919089098909

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([0-9])*                 +([0-9])*                       
template: ■([0-9])* size: 2 holes: 1 time: 2.543935ms
longest: #mn#■([0-9])*#mn# size: #ms#2#ms# holes: #mh#1#mh# time: #mt#2.543935#mt#ms

Computed in:

  #c#95#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    +([0-9])*

All done

last template: #t#■([0-9])*#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
exception while checking
before exit
