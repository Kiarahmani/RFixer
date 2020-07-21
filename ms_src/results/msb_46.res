
Given the regular expression:

  (([aeuio])*[aeuio]){2,}

That that should match the strings:

  ✓ (0:2)    oe
  ✓ (2:4)    oi
  ✓ (4:6)    io

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)*[aeuio]){2,}       get a solution: (([∅])*[aeuio]){2,}
add negative: aaa
  2      |  1     (([aeuio]){■}[aeuio]){2,}  unsatisfiable SAT formula       
  3      |  1     (([aeuio])*■){2,}       get a solution: (([aeuio])*[eio]){2,}
add positive: ae
add negative: aee
  unsatisfiable SAT formula       
  4      |  1     (([aeuio])*[aeuio]){■}    unsatisfiable SAT formula       
  5      |  2     ((■){■}[aeuio]){2,}       unsatisfiable SAT formula       
  6      |  2     ((■)*■){2,}               unsatisfiable SAT formula       
  7      |  2     ((■)*[aeuio]){■}        get a solution: (([io])*[aeuio]){0,2}
add negative: 
get a solution: (([io])*[aeuio]){1,2}
add negative: a
get a solution: (([∅])*[aeuio]){2}
  (([∅])*[aeuio]){2}              
template: ((■)*[aeuio]){2,} size: 3 holes: 1 time: 2.895761ms
template: ((■)*[aeuio]){■} size: 3 holes: 3 time: 0.959593ms
template: ((■){■}[aeuio]){2,} size: 3 holes: 3 time: 2.279647ms
template: (([aeuio])*■){2,} size: 3 holes: 1 time: 0.950916ms
template: (([aeuio])*[aeuio]){■} size: 4 holes: 2 time: 0.84355ms
template: ((■)*■){2,} size: 2 holes: 2 time: 0.793441ms
template: (([aeuio]){■}[aeuio]){2,} size: 4 holes: 2 time: 0.741505ms
longest: #mn#((■)*[aeuio]){2,}#mn# size: #ms#3#ms# holes: #mh#1#mh# time: #mt#2.895761#mt#ms

Computed in:

  #c#277#c#ms

timeSATSolver time:

  #s#12#s#ms

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
#t3#0#t3#
#p#1#p#
#n#4#n#
solution is #sol#(([∅])*[aeuio]){2}#sol#
before exit

0.6550819873809814
success