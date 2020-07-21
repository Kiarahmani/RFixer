
Given the regular expression:

  (([\-0-9a-zA-Z])+)

That that should match the strings:

  ✓ (0:12)   product_name

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+                    get a solution: ([acdemnoprtu_])+
add positive: -
get a solution: ([acdemnop\-rtu_])+
add positive: 0
get a solution: ([acdemno0p\-rtu_])+
add positive: 1
get a solution: ([acdemno0p\-1rtu_])+
add positive: 2
get a solution: ([acdemno0p\-12rtu_])+
add positive: 3
get a solution: ([acdemno0p\-12r3tu_])+
add positive: 4
get a solution: ([acdemno0p\-12r34tu_])+
add positive: 5
get a solution: ([acdemno0p\-12r34t5u_])+
add positive: 6
get a solution: ([acdemno0p\-12r34t5u6_])+
add positive: 7
get a solution: ([acdemno0p\-12r34t5u67_])+
add positive: 8
get a solution: ([acdemno0p\-12r34t5u678_])+
add positive: 9
get a solution: ([acdemno0p\-12r34t5u6789_])+
add positive: A
get a solution: ([acdemno0p12r34t5u6789A\-_])+
add positive: B
get a solution: ([acdemno0p12r34t5u6789AB\-_])+
add positive: C
get a solution: ([acdemno0p12r34t5u6789ABC\-_])+
add positive: D
get a solution: ([acdemno0p12r34t5u6789ABCD\-_])+
add positive: E
get a solution: ([acdemno0p12r34t5u6789ABCDE\-_])+
add positive: F
get a solution: ([acdemno0p12r34t5u6789ABCDEF\-_])+
add positive: G
get a solution: ([acdemno0p12r34t5u6789ABCDEFG\-_])+
add positive: H
get a solution: ([acdemno0p12r34t5u6789ABCDEFGH\-_])+
add positive: I
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHI\-_])+
add positive: J
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJ\-_])+
add positive: K
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJK\-_])+
add positive: L
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKL\-_])+
add positive: M
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLM\-_])+
add positive: N
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMN\-_])+
add positive: O
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNO\-_])+
add positive: P
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-_])+
add positive: Q
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-Q_])+
add positive: R
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QR_])+
add positive: S
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QRS_])+
add positive: T
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QRST_])+
add positive: U
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QRSTU_])+
add positive: V
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QRSTUV_])+
add positive: W
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QRSTUVW_])+
add positive: X
get a solution: ([acdemno0p12r34t5u6789ABCDEFGHIJKLMNOP\-QRSTUVWX_])+
add positive: Y
get a solution: ([acdemnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXY_])+
add positive: Z
get a solution: ([acdemnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: b
get a solution: ([abcdemnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: f
get a solution: ([abcdefmnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: g
get a solution: ([abcdefgmnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: h
get a solution: ([abcdefghmnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: i
get a solution: ([abcdefghimnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: j
get a solution: ([abcdefghijmnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: k
get a solution: ([abcdefghijkmnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: l
get a solution: ([abcdefghijklmnoprtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: q
get a solution: ([abcdefghijklmnopqrtu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: s
get a solution: ([abcdefghijklmnopqrstu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: v
get a solution: ([abcdefghijklmnopqrstuv0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: w
get a solution: ([abcdefghijklmnopqrstuvw0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: x
get a solution: ([abcdefghijklmnopqrstuvwx0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: y
get a solution: ([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
add positive: z
get a solution: ([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
  ([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+
template: (■)+ size: 1 holes: 1 time: 1.174516ms
longest: #mn#(■)+#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#1.174516#mt#ms

Computed in:

  #c#620#c#ms

timeSATSolver time:

  #s#71#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  64   ([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+

All done

last template: #t#(■)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
#p#52#p#
#n#0#n#
solution is #sol#([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])+#sol#
before exit

0.903759241104126
success