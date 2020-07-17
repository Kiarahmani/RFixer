
Given the regular expression:

  ((([4-9])+(\d)*(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?))

That that should match the strings:

  ✓ (0:3)    6.1
  ✓ (3:6)    5.1

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)  ((([1\.56])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)
template: (((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?) size: 15 holes: 1 time: 3.210456ms
longest: #mn#(((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)#mn# size: #ms#15#ms# holes: #mh#1#mh# time: #mt#3.210456#mt#ms

Computed in:

  #c#128#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  4    ((([1\.56])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)

All done

last template: #t#(((■)+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#((([1\.56])+(\d)*)(\.((\*)|(([2-9])+(\.((\*)|(([0-9])+)))?)))?)#sol#
before exit
