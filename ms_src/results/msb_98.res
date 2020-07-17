
Given the regular expression:

  (\d([\-\s])*){5,}[\W]

That that should match the strings:

  ✓ (0:12)   123-4567-890
  ✓ (12:29)  12345-67890-11121
  ✓ (29:46)  12345 6789 123232
  ✓ (46:63)  12345 67890 11121
  ✓ (63:81)  12345-62436-223434

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■([\-\s])*){5,}[\W]    fail dotstar or empty
  2      |  1     (\d(■)*){5,}[\W]        fail dotstar or empty
  3      |  1     (\d([\-\s]){■}){5,}[\W] fail dotstar or empty
  4      |  1     (\d([\-\s])*){■}[\W]    fail dotstar or empty
  5      |  1     (\d([\-\s])*){5,}■        (\d([\-\s])*){5,}[1240]         
template: (\d([\-\s])*){5,}■ size: 4 holes: 1 time: 4.441695ms
longest: #mn#(\d([\-\s])*){5,}■#mn# size: #ms#4#ms# holes: #mh#1#mh# time: #mt#4.441695#mt#ms

Computed in:

  #c#226#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  4    (\d([\-\s])*){5,}[1240]

All done

last template: #t#(\d([\-\s])*){5,}■#t#
#num#5#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#4#t3#
solution is #sol#(\d([\-\s])*){5,}[1240]#sol#
before exit
