
Given the regular expression:

  (\d)+(\,\.(\d)+)?

That that should match the strings:

  ✓ (0:5)    23.45
  ✓ (5:10)   1,156
  ✓ (10:13)  1.1
  ✓ (13:17)  1.24
  ✓ (17:23)  12,523

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+((\,\.)(\d)+)?        ([12\.3456,])+((\,\.)(\d)+)?    
template: (■)+((\,\.)(\d)+)? size: 6 holes: 1 time: 2.706469ms
longest: #mn#(■)+((\,\.)(\d)+)?#mn# size: #ms#6#ms# holes: #mh#1#mh# time: #mt#2.706469#mt#ms

Computed in:

  #c#110#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  8    ([12\.3456,])+((\,\.)(\d)+)?

All done

last template: #t#(■)+((\,\.)(\d)+)?#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#([12\.3456,])+((\,\.)(\d)+)?#sol#
before exit
