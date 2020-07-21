
Given the regular expression:

  (([aeuio])*[aeuio]){2,}

That that should match the strings:

  ✓ (0:2)    oe
  ✓ (2:4)    oi
  ✓ (4:6)    io

And reject the strings:

  ✗ (6:9)    iii
  ✗ (9:13)   oiuo

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)*[aeuio]){2,}       fail dotstar or empty
  2      |  1     (([aeuio]){■}[aeuio]){2,}  unsatisfiable SAT formula       
  3      |  1     (([aeuio])*■){2,}         unsatisfiable SAT formula       
  4      |  1     (([aeuio])*[aeuio]){■}    unsatisfiable SAT formula       
  5      |  2     ((■){■}[aeuio]){2,}       unsatisfiable SAT formula       
  6      |  2     ((■)*■){2,}               unsatisfiable SAT formula       
  7      |  2     ((■)*[aeuio]){■}        get a solution: (([∅])*[aeuio]){2}
  (([∅])*[aeuio]){2}              
template: ((■)*[aeuio]){■} size: 3 holes: 3 time: 0.958089ms
template: ((■){■}[aeuio]){2,} size: 3 holes: 3 time: 0.968894ms
template: (([aeuio])*■){2,} size: 3 holes: 1 time: 0.932226ms
template: (([aeuio])*[aeuio]){■} size: 4 holes: 2 time: 0.716068ms
template: ((■)*■){2,} size: 2 holes: 2 time: 0.850145ms
template: (([aeuio]){■}[aeuio]){2,} size: 4 holes: 2 time: 2.193913ms
longest: #mn#(([aeuio]){■}[aeuio]){2,}#mn# size: #ms#4#ms# holes: #mh#2#mh# time: #mt#2.193913#mt#ms

Computed in:

  #c#163#c#ms

timeSATSolver time:

  #s#7#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  1    (([∅])*[aeuio]){2}

All done

last template: #t#((■)*[aeuio]){■}#t#
#num#7#num#
#dep#2#dep#
#t1#0#t1#
#t2#0#t2#
#t3#1#t3#
#p#0#p#
#n#0#n#
solution is #sol#(([∅])*[aeuio]){2}#sol#
before exit

0.43806004524230957
success