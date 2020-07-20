
Given the regular expression:

  (19|20)\d\d[\-\./ ](0[1-9]|1[120])[\-\./ ]((0[1-9]|[12][0-9])|3[10])

That that should match the strings:

  ✓ (0:10)   3000-01-01
  ✓ (10:20)  5000-01-01

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■9|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  2      |  1     ((((((1■|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  3      |  1     ((((((19|■0)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])get a solution: ((((((19|[35]0)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 3100 10 30
  4      |  1     ((((((19|2■)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  5      |  1     ((((((19|20)■)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  6      |  1     ((((((19|20)\d)■)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  7      |  1     ((((((19|20)\d)\d)■)(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  8      |  1     ((((((19|20)\d)\d)[\-\./ ])(■[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  9      |  1     ((((((19|20)\d)\d)[\-\./ ])(0■|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  10     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|■[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  11     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1■))[\-\./ ])((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  12     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))■)((0[1-9]|[12][0-9])|3[10])fail dotstar or empty
  13     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((■[1-9]|[12][0-9])|3[10])fail dotstar or empty
  14     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0■|[12][0-9])|3[10])fail dotstar or empty
  15     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|■[0-9])|3[10])fail dotstar or empty
  16     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12]■)|3[10])fail dotstar or empty
  17     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|■[10])fail dotstar or empty
  18     |  1     ((((((19|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3■)fail dotstar or empty
  19     |  2     ((((((■■|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])get a solution: (((((([35][10]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 3200 10 30
get a solution: (((((([35][120]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 0000 01 30
get a solution: (((((([350][120]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 0300 10 30
get a solution: (((((([350][1230]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 2100 10 30
get a solution: (((((([2350][1230]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 2400 10 30
get a solution: (((((([2350][12340]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 1000 01 30
get a solution: (((((([12350][12340]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 0500 10 30
get a solution: (((((([12350][123450]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 0600 01 30
get a solution: (((((([12350][1234560]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 2700 10 30
get a solution: (((((([12350][12345670]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 4000 01 30
get a solution: (((((([123450][12345670]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 2800 01 30
get a solution: (((((([123450][123456780]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 6000 01 30
get a solution: (((((([1234560][123456780]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 2900 10 30
get a solution: (((((([1234560][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 7000 10 30
get a solution: (((((([12345670][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 8000 01 30
get a solution: (((((([123456780][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
add positive: 9000 10 30
get a solution: (((((([1234567890][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
  (((((([1234567890][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])
template: ((((((■■|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10]) size: 20 holes: 2 time: 7.794499ms
template: ((((((19|■0)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10]) size: 21 holes: 1 time: 2.765066ms
longest: #mn#((((((■■|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])#mn# size: #ms#20#ms# holes: #mh#2#mh# time: #mt#7.794499#mt#ms

Computed in:

  #c#591#c#ms

timeSATSolver time:

  #s#29#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  20   (((((([1234567890][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])

All done

last template: #t#((((((■■|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])#t#
#num#19#num#
#dep#2#dep#
#t1#0#t1#
#t2#0#t2#
#t3#17#t3#
#p#17#p#
#n#0#n#
solution is #sol#(((((([1234567890][1234567890]|20)\d)\d)[\-\./ ])(0[1-9]|1[120]))[\-\./ ])((0[1-9]|[12][0-9])|3[10])#sol#
before exit
1.0172061920166016
timeout