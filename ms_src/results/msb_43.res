
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
template: ((■)*[aeuio]){2,} size: 3 holes: 1 time: 2.77255ms
template: ((■)*[aeuio]){■} size: 3 holes: 3 time: 1.205004ms
template: ((■){■}[aeuio]){2,} size: 3 holes: 3 time: 0.854374ms
template: (([aeuio])*■){2,} size: 3 holes: 1 time: 0.889165ms
template: (([aeuio])*[aeuio]){■} size: 4 holes: 2 time: 0.702983ms
template: ((■)*■){2,} size: 2 holes: 2 time: 0.575398ms
template: (([aeuio]){■}[aeuio]){2,} size: 4 holes: 2 time: 0.777842ms
longest: #mn#((■)*[aeuio]){2,}#mn# size: #ms#3#ms# holes: #mh#1#mh# time: #mt#2.77255#mt#ms

Computed in:

  #c#214#c#ms

timeSATSolver time:

  #s#11#s#ms

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

0.5009479522705078
success