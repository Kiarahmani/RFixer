
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
  2      |  1     #(■)+                   get a solution: #([a12s3elm_p])+
add positive: #0
get a solution: #([a12s3elm_0p])+
add positive: #4
get a solution: #([aelm0p12s34_])+
add positive: #5
get a solution: #([aelmp012s345_])+
add positive: #6
get a solution: #([aelmp012s3456_])+
add positive: #7
get a solution: #([aelmp012s34567_])+
add positive: #8
get a solution: #([aelmp012s345678_])+
add positive: #9
get a solution: #([aelmp012s3456789_])+
add positive: #A
get a solution: #([aAelmp012s3456789_])+
add positive: #B
get a solution: #([aABelmp012s3456789_])+
add positive: #C
get a solution: #([aABCelmp012s3456789_])+
add positive: #D
get a solution: #([aABCDelmp012s3456789_])+
add positive: #E
get a solution: #([aABCDEelmp012s3456789_])+
add positive: #F
get a solution: #([aABCDEeFlmp012s3456789_])+
add positive: #G
get a solution: #([aelmp012s3456789ABCDEFG_])+
add positive: #H
get a solution: #([aelmp012s3456789ABCDEFGH_])+
add positive: #I
get a solution: #([aelmp012s3456789ABCDEFGHI_])+
add positive: #J
get a solution: #([aelmp012s3456789ABCDEFGHIJ_])+
add positive: #K
get a solution: #([aelmp012s3456789ABCDEFGHIJK_])+
1.021578073501587
timeout