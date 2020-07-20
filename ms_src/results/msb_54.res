
Given the regular expression:

  (\[\[)((.)*)(\]\])

That that should match the strings:

  ✓ (0:15)   [[MyOtherText]]
  ✓ (15:25)  [[MyText]]
  ✓ (25:50)  [[ Something...[[MyText]]
  ✓ (50:71)  [[" for start and "]]

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■\[)(.)*)(\]\])       get a solution: (([\[)(.)*)(\]\])
  (([\[)(.)*)(\]\])               
template: ((■\[)(.)*)(\]\]) size: 5 holes: 1 time: 2.963112ms
longest: #mn#((■\[)(.)*)(\]\])#mn# size: #ms#5#ms# holes: #mh#1#mh# time: #mt#2.963112#mt#ms

Computed in:

  #c#113#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  1    (([\[)(.)*)(\]\])

All done

last template: #t#((■\[)(.)*)(\]\])#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
#p#0#p#
#n#0#n#
exception while checking
before exit
0:0 ***ERROR*** Syntax error at end of file
Couldn't repair and continue parse

0.38614606857299805
error