
Given the regular expression:

  (\S)*\s\{((.)*)?\}\S([^\s{])*

That that should match the strings:

  ✓ (0:16)   word {word} word

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■)*\s)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  2      |  1     ((((((\S){■}\s)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  3      |  1     ((((((\S)*■)\{)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  4      |  1     ((((((\S)*\s)■)((.)*)?)\})\S)([^\s{])*fail dotstar or empty
  5      |  1     ((((((\S)*\s)\{)((■)*)?)\})\S)([^\s{])*fail dotstar or empty
  6      |  1     ((((((\S)*\s)\{)((.){■})?)\})\S)([^\s{])*fail dotstar or empty
  7      |  1     ((((((\S)*\s)\{)((.)*){■})\})\S)([^\s{])*fail dotstar or empty
  8      |  1     ((((((\S)*\s)\{)((.)*)?)■)\S)([^\s{])*  ((((((\S)*\s)\{)((.)*)?)o)\S)([^\s{])*
template: ((((((\S)*\s)\{)((.)*)?)■)\S)([^\s{])* size: 10 holes: 1 time: 2.894022ms
longest: #mn#((((((\S)*\s)\{)((.)*)?)■)\S)([^\s{])*#mn# size: #ms#10#ms# holes: #mh#1#mh# time: #mt#2.894022#mt#ms

Computed in:

  #c#152#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    ((((((\S)*\s)\{)((.)*)?)o)\S)([^\s{])*

All done

last template: #t#((((((\S)*\s)\{)((.)*)?)■)\S)([^\s{])*#t#
#num#8#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#7#t3#
solution is #sol#((((((\S)*\s)\{)((.)*)?)o)\S)([^\s{])*#sol#
before exit
