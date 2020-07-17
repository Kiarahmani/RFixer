
Given the regular expression:

  (((\w)+([\-\.'+](\w)+)*@(\w)+([\-\.](\w)+)*\.(\w)+([\-\.](\w)+)*)*([,])*)*

That that should match the strings:

  ✓ (0:37)   email1@domain.com,  email2@domain.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((■)+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*  ((((((((([acdeil,mno1\.2@ ])+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*
template: (((((((((■)+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)* size: 23 holes: 1 time: 3.269457ms
longest: #mn#(((((((((■)+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*#mn# size: #ms#23#ms# holes: #mh#1#mh# time: #mt#3.269457#mt#ms

Computed in:

  #c#170#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  15   ((((((((([acdeil,mno1\.2@ ])+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*

All done

last template: #t#(((((((((■)+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
solution is #sol#((((((((([acdeil,mno1\.2@ ])+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*#sol#
before exit
