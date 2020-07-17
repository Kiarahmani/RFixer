
Given the regular expression:

  (([A-z])+)([0-1])+.png

That that should match the strings:

  ✓ (0:9)    main2.png

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■)+([0-1])+).)p)n)gfail dotstar or empty
  2      |  1     ((((([A-z]){■}([0-1])+).)p)n)gfail dotstar or empty
  3      |  1     ((((([A-z])+(■)+).)p)n)g  ((((([A-z])+(2)+).)p)n)g        
template: ((((([A-z])+(■)+).)p)n)g size: 7 holes: 1 time: 3.019702ms
longest: #mn#((((([A-z])+(■)+).)p)n)g#mn# size: #ms#7#ms# holes: #mh#1#mh# time: #mt#3.019702#mt#ms

Computed in:

  #c#111#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    ((((([A-z])+(2)+).)p)n)g

All done

last template: #t#((((([A-z])+(■)+).)p)n)g#t#
#num#3#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#2#t3#
solution is #sol#((((([A-z])+(2)+).)p)n)g#sol#
before exit
