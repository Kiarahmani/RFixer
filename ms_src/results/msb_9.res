
Given the regular expression:

  ([0-9]) ((0[1-9]|[12][0-9])|3[10])[\-\./ ](0[1-9]|1[120])[\-\./ ](19|20)\d\d

That that should match the strings:

  ✓ (0:21)   1513592758 18/12/2017

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  2      |  1     ((((((([0-9]■)((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  3      |  1     ((((((([0-9] )((■[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  4      |  1     ((((((([0-9] )((0■|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  5      |  1     ((((((([0-9] )((0[1-9]|■[0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  6      |  1     ((((((([0-9] )((0[1-9]|[12]■)|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  7      |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|■[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  8      |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3■))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  9      |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))■)(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  10     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(■[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  11     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0■|1[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  12     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|■[120]))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  13     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1■))[\-\./ ])(19|20))\d)\dfail dotstar or empty
  14     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))■)(19|20))\d)\dfail dotstar or empty
  15     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(■9|20))\d)\dfail dotstar or empty
  16     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(1■|20))\d)\dfail dotstar or empty
  17     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|■0))\d)\dfail dotstar or empty
  18     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|2■))\d)\dfail dotstar or empty
  19     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))■)\dfail dotstar or empty
  20     |  1     ((((((([0-9] )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)■fail dotstar or empty
  21     |  2     (((((((■■)((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  22     |  2     (((((((■ )((■[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  23     |  2     (((((((■ )((0■|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  24     |  2     (((((((■ )((0[1-9]|■[0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  25     |  2     (((((((■ )((0[1-9]|[12]■)|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  26     |  2     (((((((■ )((0[1-9]|[12][0-9])|■[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  27     |  2     (((((((■ )((0[1-9]|[12][0-9])|3■))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  28     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))■)(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  29     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(■[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  30     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0■|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  31     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|■[120]))[\-\./ ])(19|20))\d)\dfail dot
  32     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1■))[\-\./ ])(19|20))\d)\dfail dot
  33     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))■)(19|20))\d)\dfail dot
  34     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(■9|20))\d)\dfail dot
  35     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(1■|20))\d)\dfail dot
  36     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|■0))\d)\dfail dot
  37     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|2■))\d)\dfail dot
  38     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))■)\dfail dot
  39     |  2     (((((((■ )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)■fail dot
  40     |  2     ((((((((■■) )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  41     |  2     ((((((((■|■) )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dfail dot
  42     |  2     ((((((((■){■} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\dget a solution: (((((((([1235789]){1,10} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 0 30 01 1900
get a solution: (((((((([12357890]){1,10} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 4 30 01 1900
get a solution: (((((((([123457890]){1,10} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 6 30 01 1900
get a solution: (((((((([1234567890]){1,10} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 00000000000 30 01 1900
get a solution: (((((((([1234567890]){1,11} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 000000000000 30 01 1900
get a solution: (((((((([1234567890]){1,12} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 0000000000000 30 01 1900
get a solution: (((((((([1234567890]){1,13} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
add positive: 00000000000000 30 01 2000
get a solution: (((((((([1234567890]){1,14} )((0[1-9]|[12][0-9])|3[10]))[\-\./ ])(0[1-9]|1[120]))[\-\./ ])(19|20))\d)\d
1.0235369205474854
timeout