
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

1.0208449363708496
timeout