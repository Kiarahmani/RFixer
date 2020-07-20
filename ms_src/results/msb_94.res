
Given the regular expression:

  ([0-9a-zA-Z])+

That that should match the strings:

  ✓ (0:4)    So I
  ✓ (4:43)   Example of a search that is not working
  ✓ (43:53)  I am using
  ✓ (53:67)  Summer holiday
  ✓ (67:87)  it fails to validate

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■)+                    get a solution: ([acdefghiklmnoprstuvwxyEIS ])+
add positive: 0
get a solution: ([acdefghiklmno0prstuvwxyEIS ])+
add positive: 1
get a solution: ([acdefghiklmno0p1rstuvwxyEIS ])+
add positive: 2
get a solution: ([acdefghiklmno0p12rstuvwxyEIS ])+
add positive: 3
get a solution: ([acdefghiklmno0p12r3stuvwxyEIS ])+
add positive: 4
get a solution: ([acdefghiklmno0p12r3s4tuvwxyEIS ])+
add positive: 5
get a solution: ([acdefghiklmno0p12r3s4t5uvwxyEIS ])+
add positive: 6
get a solution: ([acdefghiklmno0p12r3s4t5uv6wxyEIS ])+
add positive: 7
get a solution: ([acdefghiklmno0p12r3s4t5uv67wxyEIS ])+
add positive: 8
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8yEIS ])+
add positive: 9
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9EIS ])+
add positive: A
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9AEIS ])+
add positive: B
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABEIS ])+
add positive: C
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCEIS ])+
add positive: D
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEIS ])+
add positive: F
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFIS ])+
add positive: G
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFGIS ])+
add positive: H
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFGHIS ])+
add positive: J
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFGHIJS ])+
add positive: K
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFGHIJKS ])+
add positive: L
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFGHIJKLS ])+
add positive: M
get a solution: ([acdefghiklmno0p12r3s4t5uv67wx8y9ABCDEFGHIJKLMS ])+
add positive: N
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNS])+
add positive: O
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOS])+
add positive: P
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPS])+
add positive: Q
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQS])+
add positive: R
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRS])+
add positive: T
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRST])+
add positive: U
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTU])+
add positive: V
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUV])+
add positive: W
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVW])+
add positive: X
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVWX])+
add positive: Y
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVWXY])+
add positive: Z
get a solution: ([acdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+
add positive: b
get a solution: ([abcdefghiklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+
add positive: j
get a solution: ([abcdefghijklmnoprstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+
add positive: q
get a solution: ([abcdefghijklmnopqrstuvwxy 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+
add positive: z
get a solution: ([abcdefghijklmnopqrstuvwxyz 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+
  ([abcdefghijklmnopqrstuvwxyz 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+
template: (■)+ size: 1 holes: 1 time: 1.74426ms
longest: #mn#(■)+#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#1.74426#mt#ms

Computed in:

  #c#594#c#ms

timeSATSolver time:

  #s#54#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  63   ([abcdefghijklmnopqrstuvwxyz 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+

All done

last template: #t#(■)+#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
#p#37#p#
#n#0#n#
solution is #sol#([abcdefghijklmnopqrstuvwxyz 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ])+#sol#
before exit

0.8854241371154785
success