
Given the regular expression:

  [4-9][0-9]\.

That that should match the strings:

  ✓ (0:4)    1000
  ✓ (4:7)    999
  ✓ (7:13)   999.75
  ✓ (13:15)  40

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[0-9])\.              fail dotstar or empty
  2      |  1     ([4-9]■)\.              fail dotstar or empty
  3      |  1     ([4-9][0-9])■           fail dotstar or empty
  4      |  2     (■■)\.                  fail dotstar or empty
  5      |  2     (■[0-9])■               fail dot
  6      |  2     ([4-9]■)■               fail dotstar or empty
  7      |  3     (■■)■                   fail dot
  8      |  3     (■)\.                   fail dotstar or empty
  9      |  3     ((■■)[0-9])■            fail dot
  10     |  3     ((■|■)[0-9])■           fail dot
  11     |  3     ((■){■}[0-9])■            (([1\.90]){0,4}[0-9])[590]      
template: ((■){■}[0-9])■ size: 2 holes: 4 time: 2.383454ms
longest: #mn#((■){■}[0-9])■#mn# size: #ms#2#ms# holes: #mh#4#mh# time: #mt#2.383454#mt#ms

Computed in:

  #c#112#c#ms

timeSATSolver time:

  #s#2#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  7    (([1\.90]){0,4}[0-9])[590]

All done

last template: #t#((■){■}[0-9])■#t#
#num#11#num#
#dep#3#dep#
#t1#0#t1#
#t2#4#t2#
#t3#6#t3#
solution is #sol#(([1\.90]){0,4}[0-9])[590]#sol#
before exit
