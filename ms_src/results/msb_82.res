
Given the regular expression:

  (#)(([aah::lp])+)

That that should match the strings:

  ✓ (0:11)   #_sample123
  ✓ (11:18)  #sample
  ✓ (18:29)  #123_sample
  ✓ (29:40)  #sample_123

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([aah::lp])+           fail dotstar or empty
  2      |  1     #(■)+                     #([a12s3elm_p])+                
template: #(■)+ size: 2 holes: 1 time: 2.902835ms
longest: #mn##(■)+#mn# size: #ms#2#ms# holes: #mh#1#mh# time: #mt#2.902835#mt#ms

Computed in:

  #c#99#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  10   #([a12s3elm_p])+

All done

last template: #t##(■)+#t#
#num#2#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#1#t3#
solution is #sol##([a12s3elm_p])+#sol#
before exit
