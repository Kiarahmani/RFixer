
Given the regular expression:

  ([A-Z]){2}

That that should match the strings:

  ✓ (0:5)    HeLlo
  ✓ (5:10)   Hello
  ✓ (10:15)  HELLo
  ✓ (15:20)  HELLO
  ✓ (20:25)  heLLO

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){2}                  fail dot
  2      |  1     ([A-Z]){■}              fail dotstar or empty
  3      |  2     (■){■}                    ([EeHhLlOo]){1,5}               
template: (■){■} size: 1 holes: 3 time: 2.712034ms
longest: #mn#(■){■}#mn# size: #ms#1#ms# holes: #mh#3#mh# time: #mt#2.712034#mt#ms

Computed in:

  #c#101#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  8    ([EeHhLlOo]){1,5}

All done

last template: #t#(■){■}#t#
#num#3#num#
#dep#2#dep#
#t1#0#t1#
#t2#1#t2#
#t3#1#t3#
solution is #sol#([EeHhLlOo]){1,5}#sol#
before exit
