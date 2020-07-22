
Given the regular expression:

  ([0-9A-Z])+

That that should match the strings:

  ✓ (0:5)    A-59#
  ✓ (5:10)   A453#

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+                    get a solution: ([A\-3#459])+
add positive: 0
get a solution: ([A\-3#4590])+
add positive: 1
get a solution: ([A1\-3#4590])+
add positive: 2
get a solution: ([A1\-23#4590])+
add positive: 6
get a solution: ([A1\-23#45690])+
add positive: 7
get a solution: ([A#01\-2345679])+
add positive: 8
get a solution: ([A#0\-123456789])+
add positive: B
get a solution: ([AB#0\-123456789])+
add positive: C
get a solution: ([AB#C0\-123456789])+
add positive: D
get a solution: ([AB#CD0\-123456789])+
add positive: E
get a solution: ([AB#CDE0\-123456789])+
add positive: F
get a solution: ([AB#CDEF0\-123456789])+
add positive: G
get a solution: ([AB#CDEFG0\-123456789])+
add positive: H
get a solution: ([AB#CDEFGH0\-123456789])+
add positive: I
get a solution: ([AB#CDEFGHI0\-123456789])+
add positive: J
get a solution: ([AB#CDEFGHIJ0\-123456789])+
add positive: K
get a solution: ([AB#CDEFGHIJK0\-123456789])+
add positive: L
get a solution: ([#0123456789ABCDEFGHIJKL\-])+
add positive: M
get a solution: ([#0123456789ABCDEFGHIJKLM\-])+
add positive: N
get a solution: ([#0123456789ABCDEFGHIJKLMN\-])+
add positive: O
get a solution: ([#0123456789ABCDEFGHIJKLMNO\-])+
add positive: P
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-])+
add positive: Q
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-Q])+
add positive: R
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QR])+
add positive: S
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRS])+
add positive: T
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRST])+
add positive: U
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRSTU])+
add positive: V
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUV])+
add positive: W
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVW])+
add positive: X
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVWX])+
add positive: Y
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXY])+
add positive: Z
get a solution: ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ])+
  ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ])+
template: (■)+ size: 1 holes: 1 time: 1.362931ms
longest: #mn#(■)+#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#1.362931#mt#ms

Computed in:

  #c#400#c#ms

timeSATSolver time:

  #s#39#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  38   ([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ])+

All done

last template: #t#(■)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
#p#31#p#
#n#0#n#
solution is #sol#([#0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ])+#sol#
before exit

0.666856050491333
success