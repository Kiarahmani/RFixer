
Given the regular expression:

  (((([10])?[8-9]|20):[0-5][0-9])|21:00)

That that should match the strings:

  ✓ (0:5)    16:19
  ✓ (5:10)   10:00
  ✓ (10:15)  12:47

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■)?[8-9]|20):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  2      |  1     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  3      |  1     ((((([10])?■|20):)[0-5])[0-9]|(((21):)0)0)  ((((([10])?[260]|20):)[0-5])[0-9]|(((21):)0)0)
template: ((((([10])?■|20):)[0-5])[0-9]|(((21):)0)0) size: 14 holes: 1 time: 3.093568ms
longest: #mn#((((([10])?■|20):)[0-5])[0-9]|(((21):)0)0)#mn# size: #ms#14#ms# holes: #mh#1#mh# time: #mt#3.093568#mt#ms

Computed in:

  #c#137#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  3    ((((([10])?[260]|20):)[0-5])[0-9]|(((21):)0)0)

All done

last template: #t#((((([10])?■|20):)[0-5])[0-9]|(((21):)0)0)#t#
#num#3#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#2#t3#
solution is #sol#((((([10])?[260]|20):)[0-5])[0-9]|(((21):)0)0)#sol#
before exit
