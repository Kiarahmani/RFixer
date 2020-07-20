
Given the regular expression:

  A(\w)+

That that should match the strings:

  ✓ (0:2)    My
  ✓ (2:5)    Yes
  ✓ (5:12)   Example
  ✓ (12:15)  How

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■(\w)+                  get a solution: [EHYM](\w)+
add positive: A
  2      |  1     A(■)+                   fail dotstar or empty
  3      |  1     A(\w){■}                fail dotstar or empty
  4      |  2     ■(■)+                   fail dot
  5      |  2     ■(\w){■}                get a solution: [AEHYM](\w){0,6}
add positive: B
get a solution: [ABEHYM](\w){0,6}
add positive: C
get a solution: [ABCEHYM](\w){0,6}
add positive: D
get a solution: [ABCDEHYM](\w){0,6}
add positive: F
get a solution: [ABCDEFHYM](\w){0,6}
add positive: G
get a solution: [ABCDEFGHYM](\w){0,6}
add positive: I
get a solution: [ABCDEFGHIYM](\w){0,6}
add positive: J
get a solution: [ABCDEFGHIJMY](\w){0,6}
add positive: K
get a solution: [ABCDEFGHIJKMY](\w){0,6}
add positive: L
get a solution: [ABCDEFGHIJKLMY](\w){0,6}
add positive: N
get a solution: [ABCDEFGHIJKLMNY](\w){0,6}
add positive: O
get a solution: [ABCDEFGHIJKLMNOY](\w){0,6}
add positive: P
get a solution: [ABCDEFGHIJKLMNOPY](\w){0,6}
add positive: Q
get a solution: [ABCDEFGHIJKLMNOPQY](\w){0,6}
add positive: R
get a solution: [ABCDEFGHIJKLMNOPQRY](\w){0,6}
add positive: S
get a solution: [ABCDEFGHIJKLMNOPQRSY](\w){0,6}
add positive: T
get a solution: [ABCDEFGHIJKLMNOPQRSTY](\w){0,6}
add positive: U
get a solution: [ABCDEFGHIJKLMNOPQRSTUY](\w){0,6}
add positive: V
get a solution: [ABCDEFGHIJKLMNOPQRSTUVY](\w){0,6}
add positive: W
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWY](\w){0,6}
add positive: X
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXY](\w){0,6}
add positive: Z
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,6}
add positive: A0000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,7}
add positive: A00000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,8}
add positive: A000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,9}
add positive: A0000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,10}
add positive: A00000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,11}
add positive: A000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,12}
add positive: A0000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,13}
add positive: A00000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,14}
add positive: A000000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,15}
add positive: A0000000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,16}
add positive: A00000000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,17}
add positive: A000000000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,18}
add positive: A0000000000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,19}
add positive: A00000000000000000000
get a solution: [ABCDEFGHIJKLMNOPQRSTUVWXYZ](\w){0,20}

1.0239999294281006
timeout