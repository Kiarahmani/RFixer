
Given the regular expression:

  [a-z][_][a-z]

That that should match the strings:

  ✓ (0:9)    blah_blah

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[_])[a-z]             fail dotstar or empty
  2      |  1     ([a-z]■)[a-z]           fail dot
  3      |  1     ([a-z][_])■             fail dotstar or empty
  4      |  2     (■■)[a-z]               fail dot
  5      |  2     (■[_])■                 fail dot
  6      |  2     ([a-z]■)■               fail dot
  7      |  2     ([a-z](■■))[a-z]        fail dot
  8      |  2     ([a-z](■|■))[a-z]       fail dot
  9      |  2     ([a-z](■){■})[a-z]        ([a-z]([abhl_]){1,7})[a-z]      
template: ([a-z](■){■})[a-z] size: 3 holes: 3 time: 2.573193ms
longest: #mn#([a-z](■){■})[a-z]#mn# size: #ms#3#ms# holes: #mh#3#mh# time: #mt#2.573193#mt#ms

Computed in:

  #c#120#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  5    ([a-z]([abhl_]){1,7})[a-z]

All done

last template: #t#([a-z](■){■})[a-z]#t#
#num#9#num#
#dep#2#dep#
#t1#0#t1#
#t2#6#t2#
#t3#2#t3#
solution is #sol#([a-z]([abhl_]){1,7})[a-z]#sol#
before exit
