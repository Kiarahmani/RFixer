
Given the regular expression:

  \d:[0-5]\d

That that should match the strings:

  ✓ (0:5)    12:55

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■:)[0-5])\d           fail dot
  2      |  1     ((\d■)[0-5])\d          fail dot
  3      |  1     ((\d:)■)\d              fail dotstar or empty
  4      |  1     ((\d:)[0-5])■           fail dotstar or empty
  5      |  2     ((■■)[0-5])\d           fail dot
  6      |  2     ((■:)■)\d               fail dot
  7      |  2     ((■:)[0-5])■            fail dot
  8      |  2     (((■■):)[0-5])\d        get a solution: (((12):)[0-5])\d
add positive: 1:00
  9      |  2     (((■|■):)[0-5])\d       fail dot
  10     |  2     (((■){■}:)[0-5])\d      get a solution: ((([12]){1,2}:)[0-5])\d
add positive: 0:00
get a solution: ((([120]){1,2}:)[0-5])\d
add positive: 3:00
get a solution: ((([1230]){1,2}:)[0-5])\d
add positive: 4:00
get a solution: ((([12340]){1,2}:)[0-5])\d
add positive: 5:00
get a solution: ((([123450]){1,2}:)[0-5])\d
add positive: 6:00
get a solution: ((([1234560]){1,2}:)[0-5])\d
add positive: 7:00
add negative: 60:00
  unsatisfiable SAT formula       
  11     |  2     ((\d■)■)\d              fail dot
  12     |  2     ((\d■)[0-5])■           fail dot
  13     |  2     ((\d(■■))[0-5])\d       fail dot
  14     |  2     ((\d(■|■))[0-5])\d      fail dot
  15     |  2     ((\d(■){■})[0-5])\d     get a solution: ((\d([2:]){1,2})[0-5])\d
add positive: 00:00
add negative: 0200
  unsatisfiable SAT formula       
  16     |  2     ((\d:)■)■               fail dotstar or empty
  17     |  3     ((■■)■)\d               fail dot
  18     |  3     ((■■)[0-5])■            fail dot
  19     |  3     ((■)[0-5])\d            fail dot
  20     |  3     (((■■)■)[0-5])\d        fail dot
  21     |  3     (((■|■)■)[0-5])\d       fail dot
  22     |  3     (((■){■}■)[0-5])\d        unsatisfiable SAT formula       
  23     |  3     ((■:)■)■                fail dot
  24     |  3     (((■■):)■)\d            fail dot
  25     |  3     (((■|■):)■)\d           fail dot
  26     |  3     (((■){■}:)■)\d            unsatisfiable SAT formula       
  27     |  3     ((■:)(■■))\d            fail dot
  28     |  3     ((■:)(■|■))\d           fail dot
  29     |  3     ((■:)(■){■})\d          fail dot
  30     |  3     (((■■):)[0-5])■         fail dot
  31     |  3     (((■|■):)[0-5])■        fail dot
  32     |  3     (((■){■}:)[0-5])■         unsatisfiable SAT formula       
  33     |  3     ((■:)[0-5])(■■)         fail dot
  34     |  3     ((■:)[0-5])(■|■)        fail dot
  35     |  3     ((■:)[0-5])(■){■}       fail dot
  36     |  3     (((■):)[0-5])\d         fail dot
  37     |  3     ((((■■)■):)[0-5])\d     fail dot
  38     |  3     ((((■|■)■):)[0-5])\d    fail solve
  39     |  3     ((((■){■}■):)[0-5])\d   get a solution: (((([10]){0,1}[12345670]):)[0-5])\d
add positive: 8:00
get a solution: (((([10]){0,1}[123456780]):)[0-5])\d
add positive: 9:00
get a solution: (((([10]){0,1}[1234567890]):)[0-5])\d
add positive: 20:00
get a solution: (((([120]){0,1}[1234567890]):)[0-5])\d
add positive: 30:00
get a solution: (((([1230]){0,1}[1234567890]):)[0-5])\d
add positive: 40:00
get a solution: (((([12340]){0,1}[1234567890]):)[0-5])\d
add positive: 50:00
get a solution: (((([123450]){0,1}[1234567890]):)[0-5])\d
  (((([123450]){0,1}[1234567890]):)[0-5])\d
template: (((■){■}:)■)\d size: 3 holes: 4 time: 0.701008ms
template: ((\d(■){■})[0-5])\d size: 4 holes: 3 time: 0.927966ms
template: ((((■){■}■):)[0-5])\d size: 4 holes: 4 time: 0.969302ms
template: (((■){■}:)[0-5])\d size: 4 holes: 3 time: 0.614578ms
template: (((■■):)[0-5])\d size: 3 holes: 2 time: 3.375837ms
template: (((■){■}■)[0-5])\d size: 3 holes: 4 time: 1.015486ms
template: (((■){■}:)[0-5])■ size: 3 holes: 4 time: 1.018487ms
longest: #mn#(((■■):)[0-5])\d#mn# size: #ms#3#ms# holes: #mh#2#mh# time: #mt#3.375837#mt#ms

Computed in:

  #c#367#c#ms

timeSATSolver time:

  #s#20#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  16   (((([123450]){0,1}[1234567890]):)[0-5])\d

All done

last template: #t#((((■){■}■):)[0-5])\d#t#
#num#39#num#
#dep#3#dep#
#t1#1#t1#
#t2#28#t2#
#t3#3#t3#
#p#14#p#
#n#2#n#
solution is #sol#(((([123450]){0,1}[1234567890]):)[0-5])\d#sol#
before exit

0.6500170230865479
success