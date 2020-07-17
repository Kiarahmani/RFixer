
Given the regular expression:

  iqn\.((\d){4}\-(\d){2})\.(([^:])+)

That that should match the strings:

  ✓ (0:36)   iqn.1998-01.com.vmware.iscsi:name999
  ✓ (36:69)  iqn.1991-05.com.microsoft:abc.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  2      |  1     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  3      |  1     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  4      |  1     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  5      |  1     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  6      |  1     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  7      |  1     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  8      |  1     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  9      |  1     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  10     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  11     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)([abcefimno\.rstvw9:])+
template: (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+ size: 11 holes: 1 time: 2.753251ms
longest: #mn#(((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+#mn# size: #ms#11#ms# holes: #mh#1#mh# time: #mt#2.753251#mt#ms

Computed in:

  #c#183#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  17   (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)([abcefimno\.rstvw9:])+

All done

last template: #t#(((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+#t#
#num#11#num#
#dep#1#dep#
#t1#0#t1#
#t2#1#t2#
#t3#9#t3#
solution is #sol#(((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)([abcefimno\.rstvw9:])+#sol#
before exit
