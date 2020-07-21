
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
add positive: #L
get a solution: #([aelmp012s3456789ABCDEFGHIJKL_])+
add positive: #M
get a solution: #([aelmp012s3456789ABCDEFGHIJKLM_])+
add positive: #N
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMN_])+
add positive: #O
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNO_])+
add positive: #P
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOP_])+
add positive: #Q
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQ_])+
add positive: #R
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQR_])+
add positive: #S
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRS_])+
add positive: #T
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRST_])+
add positive: #U
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRSTU_])+
add positive: #V
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRSTUV_])+
add positive: #W
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVW_])+
add positive: #X
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWX_])+
add positive: #Y
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWXY_])+
add positive: #Z
get a solution: #([aelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #b
get a solution: #([abelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #c
get a solution: #([abcelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #d
get a solution: #([abcdelmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #f
get a solution: #([abcdeflmp012s3456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #g
get a solution: #([abcdefglmps0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #h
get a solution: #([abcdefghlmps0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #i
get a solution: #([abcdefghilmps0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #j
get a solution: #([abcdefghijlmps0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #k
get a solution: #([abcdefghijklmps0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #n
get a solution: #([abcdefghijklmnps0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #o
get a solution: #([abcdefghijklmnops0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #q
get a solution: #([abcdefghijklmnopqs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #r
get a solution: #([abcdefghijklmnopqrs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #t
get a solution: #([abcdefghijklmnopqrst0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #u
get a solution: #([abcdefghijklmnopqrstu0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #v
get a solution: #([abcdefghijklmnopqrstuv0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #w
get a solution: #([abcdefghijklmnopqrstuvw0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #x
get a solution: #([abcdefghijklmnopqrstuvwx0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #y
get a solution: #([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
add positive: #z
get a solution: #([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
  #([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+
template: #(■)+ size: 2 holes: 1 time: 1.710409ms
longest: #mn##(■)+#mn# size: #ms#2#ms# holes: #mh#1#mh# time: #mt#1.710409#mt#ms

Computed in:

  #c#1112#c#ms

timeSATSolver time:

  #s#104#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  63   #([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+

All done

last template: #t##(■)+#t#
#num#2#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#1#t3#
#p#53#p#
#n#0#n#
solution is #sol##([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])+#sol#
before exit

1.5111610889434814
success