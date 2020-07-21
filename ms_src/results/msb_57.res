
Given the regular expression:

  ([a-zA-Z])*

That that should match the strings:

  ✓ (0:37)   but with spaces allowed between words
  ✓ (37:51)  t allow spaces
  ✓ (51:90)  can i change it to make it allow spaces
  ✓ (90:129) i have tried the following but it doesn
  ✓ (129:135) t work

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)*                    get a solution: ([abcdefghiklmnoprstuvw ])*
add positive: A
get a solution: ([Aabcdefghiklmnoprstuvw ])*
add positive: B
get a solution: ([abcdefghiklmnoprstuvwAB ])*
add positive: C
get a solution: ([abcdefghiklmnoprstuvwABC ])*
add positive: D
get a solution: ([abcdefghiklmnoprstuvwABCD ])*
add positive: E
get a solution: ([abcdefghiklmnoprstuvwABCDE ])*
add positive: F
get a solution: ([abcdefghiklmnoprstuvwABCDEF ])*
add positive: G
get a solution: ([abcdefghiklmnoprstuvwABCDEFG ])*
add positive: H
get a solution: ([abcdefghiklmnoprstuvwABCDEFGH ])*
add positive: I
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHI ])*
add positive: J
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJ ])*
add positive: K
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJK ])*
add positive: L
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKL ])*
add positive: M
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLM ])*
add positive: N
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMN ])*
add positive: O
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNO ])*
add positive: P
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOP ])*
add positive: Q
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQ ])*
add positive: R
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQR ])*
add positive: S
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRS ])*
add positive: T
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRST ])*
add positive: U
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRSTU ])*
add positive: V
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRSTUV ])*
add positive: W
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRSTUVW ])*
add positive: X
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRSTUVWX ])*
add positive: Y
get a solution: ([abcdefghiklmnoprstuvwABCDEFGHIJKLMNOPQRSTUVWXY ])*
add positive: Z
get a solution: ([abcdefghiklmnoprstuvw ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
add positive: j
get a solution: ([abcdefghijklmnoprstuvw ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
add positive: q
get a solution: ([abcdefghijklmnopqrstuvw ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
add positive: x
get a solution: ([abcdefghijklmnopqrstuvwx ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
add positive: y
get a solution: ([abcdefghijklmnopqrstuvwxy ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
add positive: z
get a solution: ([abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
  ([abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ])*
template: (■)* size: 1 holes: 1 time: 1.313565ms
longest: #mn#(■)*#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#1.313565#mt#ms

Computed in:

  #c#728#c#ms

timeSATSolver time:

  #s#56#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  53   ([abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ])*

All done

last template: #t#(■)*#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
#p#31#p#
#n#0#n#
solution is #sol#([abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ])*#sol#
before exit

1.1290690898895264
success