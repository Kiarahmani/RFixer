
Given the regular expression:

  (\d){5,6}(\|)?((\d){5,6})?

That that should match the strings:

  ✓ (0:18)   34786|235652|12876

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){5,6}(\|)?)((\d){5,6})?fail dot
  2      |  1     ((\d){■}(\|)?)((\d){5,6})?fail dotstar or empty
  3      |  1     ((\d){5,6}(■)?)((\d){5,6})?fail dot
  4      |  1     ((\d){5,6}(\|){■})((\d){5,6})?fail dotstar or empty
  5      |  1     ((\d){5,6}(\|)?)((■){5,6})?fail dot
  6      |  1     ((\d){5,6}(\|)?)((\d){■})?fail dotstar or empty
  7      |  1     ((\d){5,6}(\|)?)((\d){5,6}){■}fail dotstar or empty
  8      |  2     ((■){■}(\|)?)((\d){5,6})?  (([12345678|]){14,18}(\|)?)((\d){5,6})?
template: ((■){■}(\|)?)((\d){5,6})? size: 6 holes: 3 time: 3.165254ms
longest: #mn#((■){■}(\|)?)((\d){5,6})?#mn# size: #ms#6#ms# holes: #mh#3#mh# time: #mt#3.165254#mt#ms

Computed in:

  #c#146#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  9    (([12345678|]){14,18}(\|)?)((\d){5,6})?

All done

last template: #t#((■){■}(\|)?)((\d){5,6})?#t#
#num#8#num#
#dep#2#dep#
#t1#0#t1#
#t2#3#t2#
#t3#4#t3#
solution is #sol#(([12345678|]){14,18}(\|)?)((\d){5,6})?#sol#
before exit
