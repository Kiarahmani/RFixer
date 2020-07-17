
Given the regular expression:

  ([0-9a-z])*@metu\.edu

That that should match the strings:

  ✓ (0:18)   herp.derp@metu.edu

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((■)*@)m)e)t)u)\.)e)d)u  ((((((((([r\.dehp])*@)m)e)t)u)\.)e)d)u
template: (((((((((■)*@)m)e)t)u)\.)e)d)u size: 10 holes: 1 time: 2.910176ms
longest: #mn#(((((((((■)*@)m)e)t)u)\.)e)d)u#mn# size: #ms#10#ms# holes: #mh#1#mh# time: #mt#2.910176#mt#ms

Computed in:

  #c#114#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  6    ((((((((([r\.dehp])*@)m)e)t)u)\.)e)d)u

All done

last template: #t#(((((((((■)*@)m)e)t)u)\.)e)d)u#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#((((((((([r\.dehp])*@)m)e)t)u)\.)e)d)u#sol#
before exit
