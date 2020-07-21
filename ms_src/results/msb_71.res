
Given the regular expression:

  ((\d){9})

That that should match the strings:

  ✓ (0:10)   4901773349

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){9}                  fail dot
  2      |  1     (\d){■}                 get a solution: (\d){1,10}
add negative: 0
get a solution: (\d){2,10}
add negative: 00
get a solution: (\d){3,10}
add negative: 000
get a solution: (\d){4,10}
add negative: 0000
get a solution: (\d){5,10}
add negative: 00000
get a solution: (\d){6,10}
add negative: 000000
get a solution: (\d){7,10}
add negative: 0000000
get a solution: (\d){8,10}
add negative: 00000000
get a solution: (\d){9,10}
add negative: 000000000
get a solution: (\d){10}
  (\d){10}                        
template: (\d){■} size: 2 holes: 2 time: 1.300791ms
longest: #mn#(\d){■}#mn# size: #ms#2#ms# holes: #mh#2#mh# time: #mt#1.300791#mt#ms

Computed in:

  #c#244#c#ms

timeSATSolver time:

  #s#13#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  0    (\d){10}

All done

last template: #t#(\d){■}#t#
#num#2#num#
#dep#1#dep#
#t1#0#t1#
#t2#1#t2#
#t3#0#t3#
#p#0#p#
#n#9#n#
solution is #sol#(\d){10}#sol#
before exit

0.5134730339050293
success