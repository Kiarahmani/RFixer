
Given the regular expression:

  [1-9]([0-9])*

That that should match the strings:

  ✓ (0:11)   +9089098909
  ✓ (11:24)  +919089098909

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([0-9])*               get a solution: +([0-9])*
add positive: 
add negative: +00000000000000
  2      |  1     [1-9](■)*               fail dotstar or empty
  3      |  1     [1-9]([0-9]){■}         fail dotstar or empty
  4      |  2     ■(■)*                   fail dot
  5      |  2     ■([0-9]){■}             fail dot
  6      |  2     (■■)([0-9])*            fail dot
  7      |  2     (■|■)([0-9])*           fail solve
  8      |  2     (■){■}([0-9])*            unsatisfiable SAT formula       
  9      |  2     [1-9](■){■}             fail dotstar or empty
  10     |  2     [1-9]■                  fail dotstar or empty
  11     |  3     (■■)(■)*                fail dot
  12     |  3     (■|■)(■)*               fail dot
  13     |  3     (■){■}(■)*              get a solution: ([189+0]){0,12}([189])*
add positive: 2
add negative: ++
  unsatisfiable SAT formula       
  14     |  3     ■(■■)*                  fail dot
  15     |  3     ■((■|■))*               fail dot
  16     |  3     ■((■){■})*              fail dot
  17     |  3     ■■                      fail dot
  18     |  3     (■■)([0-9]){■}          fail dot
  19     |  3     (■|■)([0-9]){■}         fail dot
  20     |  3     (■){■}([0-9]){■}        get a solution: ([1289+0]){0,1}([0-9]){0,12}
add positive: 3000000000000
get a solution: ([23+0]){0,1}([0-9]){0,12}
add positive: 1000000000000
get a solution: ([12+0]){0,1}([0-9]){0,13}
add negative: 00000000000000
get a solution: ([13+0]){0,1}([0-9]){0,12}
add positive: 2000000000000
get a solution: ([12389+0]){0,1}([0-9]){0,12}
add positive: 4000000000000
get a solution: ([1234+0]){0,1}([0-9]){0,12}
add positive: 5000000000000
get a solution: ([1234589+0]){0,1}([0-9]){0,12}
add positive: 6000000000000
get a solution: ([1234569+0]){0,1}([0-9]){0,12}
add positive: 7000000000000
get a solution: ([123456789+0]){0,1}([0-9]){0,12}
add positive: +0000000000000
get a solution: (+){0,1}([0-9]){0,13}
  (+){0,1}([0-9]){0,13}           
template: (■){■}(■)* size: 2 holes: 4 time: 1.422524ms
template: ■([0-9])* size: 2 holes: 1 time: 3.248755ms
template: (■){■}([0-9])* size: 3 holes: 3 time: 1.404024ms
template: (■){■}([0-9]){■} size: 3 holes: 5 time: 3.527579ms
longest: #mn#(■){■}([0-9]){■}#mn# size: #ms#3#ms# holes: #mh#5#mh# time: #mt#3.527579#mt#ms

Computed in:

  #c#705#c#ms

timeSATSolver time:

  #s#41#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  1    (+){0,1}([0-9]){0,13}

All done

last template: #t#(■){■}([0-9]){■}#t#
#num#20#num#
#dep#3#dep#
#t1#1#t1#
#t2#11#t2#
#t3#4#t3#
#p#10#p#
#n#3#n#
exception while checking
before exit
1:2 ***ERROR*** Syntax error
Couldn't repair and continue parse

0.9942290782928467
error