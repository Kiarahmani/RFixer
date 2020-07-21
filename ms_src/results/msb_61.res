
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

1.013242244720459
timeout