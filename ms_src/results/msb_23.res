
Given the regular expression:

  (\d)+.(\d){0,2}

That that should match the strings:

  ✓ (0:5)    10.10

And reject the strings:

  ✗ (5:9)    12a3

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+.)(\d){0,2}        get a solution: (([1\.0])+.)(\d){0,2}
add positive: 0
add negative: 0 
  2      |  1     ((\d){■}.)(\d){0,2}       unsatisfiable SAT formula       
  3      |  1     ((\d)+■)(\d){0,2}       fail dot
  4      |  1     ((\d)+.)(■){0,2}        fail dotstar or empty
  5      |  1     ((\d)+.)(\d){■}         fail dotstar or empty
  6      |  2     ((■){■}.)(\d){0,2}        unsatisfiable SAT formula       
  7      |  2     ((■)+■)(\d){0,2}        fail dot
  8      |  2     ((■)+.)(■){0,2}         fail dot
  9      |  2     ((■)+.)(\d){■}          fail dot
  10     |  2     ((■■)+.)(\d){0,2}       fail dot
  11     |  2     (((■|■))+.)(\d){0,2}    fail solve
  12     |  2     (((■){■})+.)(\d){0,2}     unsatisfiable SAT formula       
  13     |  2     ((\d){■}■)(\d){0,2}     get a solution: ((\d){0,2}[\.0])(\d){0,2}
add positive: 1
add negative: .
  unsatisfiable SAT formula       
  14     |  2     ((\d){■}.)(■){0,2}        unsatisfiable SAT formula       
  15     |  2     ((\d){■}.)(\d){■}         unsatisfiable SAT formula       
  16     |  2     (■.)(\d){0,2}           fail dot
  17     |  2     ((\d)+■)(■){0,2}        fail dot
  18     |  2     ((\d)+■)(\d){■}         fail dot
  19     |  2     ((\d)+(■■))(\d){0,2}    fail dot
  20     |  2     ((\d)+(■|■))(\d){0,2}   fail dot
  21     |  2     ((\d)+(■){■})(\d){0,2}  get a solution: ((\d)+([1\.0]){0,4})(\d){0,2}
add negative: 0..
get a solution: ((\d)+([1\.]){0,1})(\d){0,2}
  ((\d)+([1\.]){0,1})(\d){0,2}    
template: ((\d)+(■){■})(\d){0,2} size: 5 holes: 3 time: 0.88472ms
template: ((\d){■}.)(\d){■} size: 5 holes: 4 time: 0.83021ms
template: ((\d){■}.)(\d){0,2} size: 5 holes: 2 time: 0.729705ms
template: ((\d){■}■)(\d){0,2} size: 4 holes: 3 time: 0.723754ms
template: ((\d){■}.)(■){0,2} size: 4 holes: 3 time: 0.835611ms
template: ((■){■}.)(\d){0,2} size: 4 holes: 3 time: 0.791318ms
template: ((■)+.)(\d){0,2} size: 4 holes: 1 time: 3.199871ms
template: (((■){■})+.)(\d){0,2} size: 5 holes: 3 time: 0.841398ms
longest: #mn#((■)+.)(\d){0,2}#mn# size: #ms#4#ms# holes: #mh#1#mh# time: #mt#3.199871#mt#ms

Computed in:

  #c#262#c#ms

timeSATSolver time:

  #s#11#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  2    ((\d)+([1\.]){0,1})(\d){0,2}

All done

last template: #t#((\d)+(■){■})(\d){0,2}#t#
#num#21#num#
#dep#2#dep#
#t1#1#t1#
#t2#10#t2#
#t3#2#t3#
#p#2#p#
#n#3#n#
solution is #sol#((\d)+([1\.]){0,1})(\d){0,2}#sol#
before exit

0.5361227989196777
success