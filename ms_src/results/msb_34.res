
Given the regular expression:

  ((\-)?(\d)+(\.(\d)+)?),(\s)*((\-)?(\d)+(\.(\d)+)?)

That that should match the strings:

  ✓ (0:10)   101.711125
  ✓ (10:18)  3.156831

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  2      |  1     (((((\-){■}(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  3      |  1     (((((\-)?(■)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  4      |  1     (((((\-)?(\d){■})(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  5      |  1     (((((\-)?(\d)+)(■(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  6      |  1     (((((\-)?(\d)+)(\.(■)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  7      |  1     (((((\-)?(\d)+)(\.(\d){■})?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  8      |  1     (((((\-)?(\d)+)(\.(\d)+){■}),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  9      |  1     (((((\-)?(\d)+)(\.(\d)+)?)■)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)  (((((\-)?(\d)+)(\.(\d)+)?)\.)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)
template: (((((\-)?(\d)+)(\.(\d)+)?)■)(\s)*)(((\-)?(\d)+)(\.(\d)+)?) size: 18 holes: 1 time: 3.842638ms
longest: #mn#(((((\-)?(\d)+)(\.(\d)+)?)■)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)#mn# size: #ms#18#ms# holes: #mh#1#mh# time: #mt#3.842638#mt#ms

Computed in:

  #c#162#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (((((\-)?(\d)+)(\.(\d)+)?)\.)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)

All done

last template: #t#(((((\-)?(\d)+)(\.(\d)+)?)■)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)#t#
#num#9#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#8#t3#
solution is #sol#(((((\-)?(\d)+)(\.(\d)+)?)\.)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)#sol#
before exit
