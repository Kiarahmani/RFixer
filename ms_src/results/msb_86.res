
Given the regular expression:

  views/

That that should match the strings:

  ✓ (0:14)   views/register
  ✓ (14:37)  views/' upto the next '
  ✓ (37:69)  views/register'  something like:

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■i)e)w)s)/          fail dotstar or empty
  2      |  1     ((((v■)e)w)s)/          fail dotstar or empty
  3      |  1     ((((vi)■)w)s)/          fail dotstar or empty
  4      |  1     ((((vi)e)■)s)/          fail dotstar or empty
  5      |  1     ((((vi)e)w)■)/          fail dotstar or empty
  6      |  1     ((((vi)e)w)s)■          fail dot
  7      |  2     ((((■■)e)w)s)/          fail dotstar or empty
  8      |  2     ((((■i)■)w)s)/          fail dotstar or empty
  9      |  2     ((((■i)e)■)s)/          fail dotstar or empty
  10     |  2     ((((■i)e)w)■)/          fail dotstar or empty
  11     |  2     ((((■i)e)w)s)■          fail dot
  12     |  2     ((((v■)■)w)s)/          fail dotstar or empty
  13     |  2     ((((v■)e)■)s)/          fail dotstar or empty
  14     |  2     ((((v■)e)w)■)/          fail dotstar or empty
  15     |  2     ((((v■)e)w)s)■          fail dot
  16     |  2     ((((vi)■)■)s)/          fail dotstar or empty
  17     |  2     ((((vi)■)w)■)/          fail dotstar or empty
  18     |  2     ((((vi)■)w)s)■          fail dot
  19     |  2     ((((vi)e)■)■)/          fail dotstar or empty
  20     |  2     ((((vi)e)■)s)■          fail dot
  21     |  2     ((((vi)e)w)■)■          fail dot
  22     |  2     ((((vi)e)w)s)(■■)       fail dot
  23     |  2     ((((vi)e)w)s)(■|■)      fail dot
  24     |  2     ((((vi)e)w)s)(■){■}       ((((vi)e)w)s)([e'ghiklmno/prstux: ]){1,27}
template: ((((vi)e)w)s)(■){■} size: 6 holes: 3 time: 3.033797ms
longest: #mn#((((vi)e)w)s)(■){■}#mn# size: #ms#6#ms# holes: #mh#3#mh# time: #mt#3.033797#mt#ms

Computed in:

  #c#146#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  19   ((((vi)e)w)s)([e'ghiklmno/prstux: ]){1,27}

All done

last template: #t#((((vi)e)w)s)(■){■}#t#
#num#24#num#
#dep#2#dep#
#t1#0#t1#
#t2#8#t2#
#t3#15#t3#
solution is #sol#((((vi)e)w)s)([e'ghiklmno/prstux: ]){1,27}#sol#
before exit
