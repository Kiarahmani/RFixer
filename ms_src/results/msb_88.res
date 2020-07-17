
Given the regular expression:

  \d[0-9]([0-9]){1,3}[1-9]([\-](\d){4})?

That that should match the strings:

  ✓ (0:3)    979
  ✓ (3:8)    00970
  ✓ (8:11)   970
  ✓ (11:14)  907

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■[0-9])([0-9]){1,3})[1-9])([\-](\d){4})?fail dotstar or empty
  2      |  1     (((\d■)([0-9]){1,3})[1-9])([\-](\d){4})?fail dotstar or empty
  3      |  1     (((\d[0-9])(■){1,3})[1-9])([\-](\d){4})?fail dotstar or empty
  4      |  1     (((\d[0-9])([0-9]){■})[1-9])([\-](\d){4})?fail dotstar or empty
  5      |  1     (((\d[0-9])([0-9]){1,3})■)([\-](\d){4})?fail dot
  6      |  1     (((\d[0-9])([0-9]){1,3})[1-9])(■(\d){4})?fail dotstar or empty
  7      |  1     (((\d[0-9])([0-9]){1,3})[1-9])([\-](■){4})?fail dotstar or empty
  8      |  1     (((\d[0-9])([0-9]){1,3})[1-9])([\-](\d){■})?fail dotstar or empty
  9      |  1     (((\d[0-9])([0-9]){1,3})[1-9])([\-](\d){4}){■}fail dotstar or empty
  10     |  2     (((■■)([0-9]){1,3})[1-9])([\-](\d){4})?fail dotstar or empty
  11     |  2     (((■[0-9])(■){1,3})[1-9])([\-](\d){4})?fail dotstar or empty
  12     |  2     (((■[0-9])([0-9]){■})[1-9])([\-](\d){4})?fail dotstar or empty
  13     |  2     (((■[0-9])([0-9]){1,3})■)([\-](\d){4})?fail dot
  14     |  2     (((■[0-9])([0-9]){1,3})[1-9])(■(\d){4})?fail dotstar or empty
  15     |  2     (((■[0-9])([0-9]){1,3})[1-9])([\-](■){4})?fail dotstar or empty
  16     |  2     (((■[0-9])([0-9]){1,3})[1-9])([\-](\d){■})?fail dotstar or empty
  17     |  2     (((■[0-9])([0-9]){1,3})[1-9])([\-](\d){4}){■}fail dotstar or empty
  18     |  2     (((\d■)(■){1,3})[1-9])([\-](\d){4})?fail dotstar or empty
  19     |  2     (((\d■)([0-9]){■})[1-9])([\-](\d){4})?fail dotstar or empty
  20     |  2     (((\d■)([0-9]){1,3})■)([\-](\d){4})?fail dot
  21     |  2     (((\d■)([0-9]){1,3})[1-9])(■(\d){4})?fail dotstar or empty
  22     |  2     (((\d■)([0-9]){1,3})[1-9])([\-](■){4})?fail dotstar or empty
  23     |  2     (((\d■)([0-9]){1,3})[1-9])([\-](\d){■})?fail dotstar or empty
  24     |  2     (((\d■)([0-9]){1,3})[1-9])([\-](\d){4}){■}fail dotstar or empty
  25     |  2     (((\d[0-9])(■){■})[1-9])([\-](\d){4})?fail dotstar or empty
  26     |  2     (((\d[0-9])(■){1,3})■)([\-](\d){4})?fail dot
  27     |  2     (((\d[0-9])(■){1,3})[1-9])(■(\d){4})?fail dotstar or empty
  28     |  2     (((\d[0-9])(■){1,3})[1-9])([\-](■){4})?fail dotstar or empty
  29     |  2     (((\d[0-9])(■){1,3})[1-9])([\-](\d){■})?fail dotstar or empty
  30     |  2     (((\d[0-9])(■){1,3})[1-9])([\-](\d){4}){■}fail dotstar or empty
  31     |  2     (((\d[0-9])■)[1-9])([\-](\d){4})?fail dotstar or empty
  32     |  2     (((\d[0-9])([0-9]){■})■)([\-](\d){4})?  (((\d[0-9])([0-9]){0,2})[790])([\-](\d){4})?
template: (((\d[0-9])([0-9]){■})■)([\-](\d){4})? size: 8 holes: 3 time: 3.806633ms
longest: #mn#(((\d[0-9])([0-9]){■})■)([\-](\d){4})?#mn# size: #ms#8#ms# holes: #mh#3#mh# time: #mt#3.806633#mt#ms

Computed in:

  #c#237#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  3    (((\d[0-9])([0-9]){0,2})[790])([\-](\d){4})?

All done

last template: #t#(((\d[0-9])([0-9]){■})■)([\-](\d){4})?#t#
#num#32#num#
#dep#2#dep#
#t1#0#t1#
#t2#4#t2#
#t3#27#t3#
solution is #sol#(((\d[0-9])([0-9]){0,2})[790])([\-](\d){4})?#sol#
before exit
