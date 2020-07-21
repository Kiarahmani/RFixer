
Given the regular expression:

  '(([aeuio])*[aeuio]){2,}'

That that should match the strings:

  ✓ (0:2)    io
  ✓ (2:4)    oi
  ✓ (4:6)    oe

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■(([aeuio])*[aeuio]){2,})'fail dotstar or empty
  2      |  1     ('((■)*[aeuio]){2,})'   fail dotstar or empty
  3      |  1     ('(([aeuio]){■}[aeuio]){2,})'fail dotstar or empty
  4      |  1     ('(([aeuio])*■){2,})'   fail dotstar or empty
  5      |  1     ('(([aeuio])*[aeuio]){■})'fail dotstar or empty
  6      |  1     ('(([aeuio])*[aeuio]){2,})■fail dotstar or empty
  7      |  2     (■((■)*[aeuio]){2,})'   fail dotstar or empty
  8      |  2     (■(([aeuio]){■}[aeuio]){2,})'fail dotstar or empty
  9      |  2     (■(([aeuio])*■){2,})'   fail dotstar or empty
  10     |  2     (■(([aeuio])*[aeuio]){■})'fail dotstar or empty
  11     |  2     (■(([aeuio])*[aeuio]){2,})■fail dot
  12     |  2     ('((■){■}[aeuio]){2,})' fail dotstar or empty
  13     |  2     ('((■)*■){2,})'         fail dotstar or empty
  14     |  2     ('((■)*[aeuio]){■})'    fail dotstar or empty
  15     |  2     ('((■)*[aeuio]){2,})■   fail dotstar or empty
  16     |  2     ('(([aeuio]){■}■){2,})' fail dotstar or empty
  17     |  2     ('(([aeuio]){■}[aeuio]){■})'fail dotstar or empty
  18     |  2     ('(([aeuio]){■}[aeuio]){2,})■fail dotstar or empty
  19     |  2     ('(■[aeuio]){2,})'      fail dotstar or empty
  20     |  2     ('(([aeuio])*■){■})'    fail dotstar or empty
  21     |  2     ('(([aeuio])*■){2,})■   fail dotstar or empty
  22     |  2     ('(([aeuio])*[aeuio]){■})■fail dotstar or empty
  23     |  2     ('■)'                   fail dotstar or empty
  24     |  3     (■((■){■}[aeuio]){2,})' fail dotstar or empty
  25     |  3     (■((■)*■){2,})'         fail dotstar or empty
  26     |  3     (■((■)*[aeuio]){■})'    fail dotstar or empty
  27     |  3     (■((■)*[aeuio]){2,})■   fail dot
  28     |  3     (■(([aeuio]){■}■){2,})' fail dotstar or empty
  29     |  3     (■(([aeuio]){■}[aeuio]){■})'fail dotstar or empty
  30     |  3     (■(([aeuio]){■}[aeuio]){2,})■fail dot
  31     |  3     (■(■[aeuio]){2,})'      fail dotstar or empty
  32     |  3     (■(([aeuio])*■){■})'    fail dotstar or empty
  33     |  3     (■(([aeuio])*■){2,})■   fail dot
  34     |  3     (■(([aeuio])*[aeuio]){■})■get a solution: ([io](([aeuio])*[aeuio]){0})[eio]
add positive: aa
get a solution: ([aio](([aeuio])*[aeuio]){0})[aeio]
add positive: au
get a solution: ([aio](([aeuio])*[aeuio]){0})[aeuio]
add positive: ea
get a solution: ([aeio](([aeuio])*[aeuio]){0})[aeuio]
add positive: ua
get a solution: ([aeuio](([aeuio])*[aeuio]){0})[aeuio]
  ([aeuio](([aeuio])*[aeuio]){0})[aeuio]
template: (■(([aeuio])*[aeuio]){■})■ size: 4 holes: 4 time: 0.67264ms
longest: #mn#(■(([aeuio])*[aeuio]){■})■#mn# size: #ms#4#ms# holes: #mh#4#mh# time: #mt#0.67264#mt#ms

Computed in:

  #c#303#c#ms

timeSATSolver time:

  #s#8#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  10   ([aeuio](([aeuio])*[aeuio]){0})[aeuio]

All done

last template: #t#(■(([aeuio])*[aeuio]){■})■#t#
#num#34#num#
#dep#3#dep#
#t1#0#t1#
#t2#4#t2#
#t3#29#t3#
#p#4#p#
#n#0#n#
solution is #sol#([aeuio](([aeuio])*[aeuio]){0})[aeuio]#sol#
before exit

0.6600191593170166
success