
Given the regular expression:

  (([A-z])+)([0-1])+.png

That that should match the strings:

  ✓ (0:9)    main2.png

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■)+([0-1])+).)p)n)gfail dotstar or empty
  2      |  1     ((((([A-z]){■}([0-1])+).)p)n)gfail dotstar or empty
  3      |  1     ((((([A-z])+(■)+).)p)n)gget a solution: ((((([A-z])+(2)+).)p)n)g
add positive: A0 png
add negative: [2 png
  unsatisfiable SAT formula       
  4      |  1     ((((([A-z])+([0-1]){■}).)p)n)gfail dotstar or empty
  5      |  1     ((((([A-z])+([0-1])+)■)p)n)gfail dotstar or empty
  6      |  1     ((((([A-z])+([0-1])+).)■)n)gfail dotstar or empty
  7      |  1     ((((([A-z])+([0-1])+).)p)■)gfail dotstar or empty
  8      |  1     ((((([A-z])+([0-1])+).)p)n)■fail dotstar or empty
  9      |  2     (((((■){■}([0-1])+).)p)n)gfail dotstar or empty
  10     |  2     (((((■)+(■)+).)p)n)g    get a solution: ((((([Aam])+([2in0])+).)p)n)g
add positive: A1 png
add negative: Ai0png
get a solution: ((((([Aaimn])+([120])+).)p)n)g
add positive: B0 png
add negative: A00 png
  unsatisfiable SAT formula       
  11     |  2     (((((■)+([0-1]){■}).)p)n)g  unsatisfiable SAT formula       
  12     |  2     (((((■)+([0-1])+)■)p)n)gfail dotstar or empty
  13     |  2     (((((■)+([0-1])+).)■)n)gfail dotstar or empty
  14     |  2     (((((■)+([0-1])+).)p)■)gfail dotstar or empty
  15     |  2     (((((■)+([0-1])+).)p)n)■fail dotstar or empty
  16     |  2     ((((([A-z]){■}(■)+).)p)n)g  unsatisfiable SAT formula       
  17     |  2     ((((([A-z]){■}([0-1]){■}).)p)n)gfail dotstar or empty
  18     |  2     ((((([A-z]){■}([0-1])+)■)p)n)gfail dotstar or empty
  19     |  2     ((((([A-z]){■}([0-1])+).)■)n)gfail dotstar or empty
  20     |  2     ((((([A-z]){■}([0-1])+).)p)■)gfail dotstar or empty
  21     |  2     ((((([A-z]){■}([0-1])+).)p)n)■fail dotstar or empty
  22     |  2     ((((■([0-1])+).)p)n)g   fail dotstar or empty
  23     |  2     ((((([A-z])+(■){■}).)p)n)g  unsatisfiable SAT formula       
  24     |  2     ((((([A-z])+(■)+)■)p)n)g  unsatisfiable SAT formula       
  25     |  2     ((((([A-z])+(■)+).)■)n)g  unsatisfiable SAT formula       
  26     |  2     ((((([A-z])+(■)+).)p)■)g  unsatisfiable SAT formula       
  27     |  2     ((((([A-z])+(■)+).)p)n)■  unsatisfiable SAT formula       
  28     |  2     ((((([A-z])+(■■)+).)p)n)gfail dot
  29     |  2     ((((([A-z])+((■|■))+).)p)n)gfail solve
  30     |  2     ((((([A-z])+((■){■})+).)p)n)g  unsatisfiable SAT formula       
  31     |  2     ((((([A-z])+([0-1]){■})■)p)n)gfail dot
  32     |  2     ((((([A-z])+([0-1]){■}).)■)n)gfail dot
  33     |  2     ((((([A-z])+([0-1]){■}).)p)■)gfail dotstar or empty
  34     |  2     ((((([A-z])+([0-1]){■}).)p)n)■fail dotstar or empty
  35     |  2     ((((([A-z])+■).)p)n)g     unsatisfiable SAT formula       
  36     |  2     ((((([A-z])+([0-1])+)■)■)n)gfail dotstar or empty
  37     |  2     ((((([A-z])+([0-1])+)■)p)■)gfail dotstar or empty
  38     |  2     ((((([A-z])+([0-1])+)■)p)n)■fail dotstar or empty
  39     |  2     ((((([A-z])+([0-1])+).)■)■)gfail dotstar or empty
  40     |  2     ((((([A-z])+([0-1])+).)■)n)■fail dotstar or empty
  41     |  2     ((((([A-z])+([0-1])+).)p)■)■fail dotstar or empty
  42     |  3     (((((■){■}(■)+).)p)n)g    unsatisfiable SAT formula       
  43     |  3     (((((■){■}([0-1]){■}).)p)n)g  unsatisfiable SAT formula       
  44     |  3     (((((■){■}([0-1])+)■)p)n)gfail dotstar or empty
  45     |  3     (((((■){■}([0-1])+).)■)n)gfail dotstar or empty
  46     |  3     (((((■){■}([0-1])+).)p)■)gfail dotstar or empty
  47     |  3     (((((■){■}([0-1])+).)p)n)■fail dotstar or empty
  48     |  3     (((((■)+(■){■}).)p)n)g  get a solution: ((((([A1aBimn])+([12n0]){1}).)p)n)g
add positive: C0 png
add negative: AnApng
get a solution: ((((([AaBCimn])+([120]){1}).)p)n)g
add positive: A3 png
get a solution: ((((([Aa2BCimn])+([1230]){1}).)p)n)g
add positive: D0 png
add negative: 20 png
get a solution: ((((([AaB3CDimn])+([1230]){1}).)p)n)g
add positive: A4 png
add negative: 30 png
get a solution: ((((([AaBCD4imn])+([12340]){1}).)p)n)g
add positive: A5 png
add negative: 40 png
get a solution: ((((([AaBCD5imn])+([123450]){1}).)p)n)g
add positive: A6 png
add negative: 50 png
get a solution: ((((([AaBCDimn])+([1234560]){1}).)p)n)g
add positive: E0 png
get a solution: ((((([AaBCDE6imn])+([1234560]){1}).)p)n)g
add positive: A7 png
add negative: 60 png
get a solution: ((((([A1aBCDEimn])+([12345670]){1}).)p)n)g
add positive: F0 png
add negative: 10 png
get a solution: ((((([AaBCDEFimn])+([12345670]){1}).)p)n)g
add positive: G0 png
get a solution: ((((([AaBCDEFGimn])+([12345670]){1}).)p)n)g
add positive: A8 png
get a solution: ((((([AaBCDEFGimn])+([123456780]){1}).)p)n)g
add positive: H0 png
get a solution: ((((([AaBCDEFGHimn])+([123456780]){1}).)p)n)g
add positive: I0 png
get a solution: ((((([AaBCDEFGHIimn])+([123456780]){1}).)p)n)g
add positive: A9 png
get a solution: ((((([AaBCDEFGHIimn])+([1234567890]){1}).)p)n)g
add positive: J0 png
get a solution: ((((([AaBCDEFGHIiJmn])+([1234567890]){1}).)p)n)g
add positive: K0 png
get a solution: ((((([AaBCDEFGHIiJKmn])+([1234567890]){1}).)p)n)g
add positive: L0 png
get a solution: ((((([AaBCDEFGHIiJKLmn])+([1234567890]){1}).)p)n)g
add positive: M0 png
get a solution: ((((([AaBCDEFGHIiJKLMmn])+([1234567890]){1}).)p)n)g
add positive: N0 png
get a solution: ((((([AaBCDEFGHIiJKLMmnN])+([1234567890]){1}).)p)n)g
add positive: O0 png
get a solution: ((((([AaBCDEFGHIiJKLMmnNO])+([1234567890]){1}).)p)n)g
add positive: P0 png
get a solution: ((((([AaBCDEFGHIiJKLMmnNOP])+([1234567890]){1}).)p)n)g
add positive: Q0 png
get a solution: ((((([AaBCDEFGHIiJKLMmnNOPQ])+([1234567890]){1}).)p)n)g
add positive: R0 png
get a solution: ((((([AaBCDEFGHIiJKLMmnNOPQR])+([1234567890]){1}).)p)n)g
add positive: S0 png
get a solution: ((((([aimn7ABCDEFGHIJKLMNOPQRS])+([1234567890]){1}).)p)n)g
add positive: T0 png
add negative: 70 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRST])+([1234567890]){1}).)p)n)g
add positive: U0 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRSTU])+([1234567890]){1}).)p)n)g
add positive: V0 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRSTUV])+([1234567890]){1}).)p)n)g
add positive: W0 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRSTUVW])+([1234567890]){1}).)p)n)g
add positive: X0 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRSTUVWX])+([1234567890]){1}).)p)n)g
add positive: Y0 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRSTUVWXY])+([1234567890]){1}).)p)n)g
add positive: Z0 png
get a solution: ((((([aimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: b0 png
get a solution: ((((([abimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: c0 png
get a solution: ((((([abcimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: d0 png
get a solution: ((((([abcdimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: e0 png
get a solution: ((((([abcdeimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: f0 png
get a solution: ((((([abcdefimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: g0 png
get a solution: ((((([abcdefgimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: h0 png
get a solution: ((((([abcdefghimnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: j0 png
get a solution: ((((([abcdefghijmn8ABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: k0 png
add negative: 80 png
get a solution: ((((([abcdefghijkmnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: l0 png
get a solution: ((((([abcdefghijklmnABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: o0 png
get a solution: ((((([abcdefghijklmnoABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1a234567890]){1}).)p)n)g
add positive: p0 png
add negative: AaApng
get a solution: ((((([abcdefghijklmnopABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: q0 png
get a solution: ((((([abcdefghijklmnopqABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: r0 png
get a solution: ((((([abcdefghijklmnopqrABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: s0 png
get a solution: ((((([abcdefghijklmnopqrsABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: t0 png
get a solution: ((((([abcdefghijklmnopqrstABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: u0 png
get a solution: ((((([abcdefghijklmnopqrstuABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: v0 png
get a solution: ((((([abcdefghijklmnopqrstuvABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: w0 png
get a solution: ((((([abcdefghijklmnopqrstuvwABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: x0 png
get a solution: ((((([abcdefghijklmnopqrstuvwxABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: y0 png
get a solution: ((((([abcdefghijklmnopqrstuvwxyABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
add positive: z0 png
get a solution: ((((([abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
  ((((([abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g
template: ((((([A-z]){■}(■)+).)p)n)g size: 7 holes: 3 time: 1.367348ms
template: ((((([A-z])+((■){■})+).)p)n)g size: 8 holes: 3 time: 1.769857ms
template: (((((■){■}(■)+).)p)n)g size: 6 holes: 4 time: 0.993265ms
template: (((((■)+(■){■}).)p)n)g size: 6 holes: 4 time: 3.52418ms
template: ((((([A-z])+(■)+)■)p)n)g size: 6 holes: 2 time: 1.334033ms
template: ((((([A-z])+(■)+).)p)n)g size: 7 holes: 1 time: 1.241979ms
template: (((((■)+(■)+).)p)n)g size: 6 holes: 2 time: 1.001175ms
template: (((((■)+([0-1]){■}).)p)n)g size: 7 holes: 3 time: 3.280376ms
template: ((((([A-z])+(■){■}).)p)n)g size: 7 holes: 3 time: 0.962601ms
template: ((((([A-z])+(■)+).)p)■)g size: 6 holes: 2 time: 0.745886ms
template: ((((([A-z])+■).)p)n)g size: 6 holes: 1 time: 0.777351ms
template: ((((([A-z])+(■)+).)p)n)■ size: 6 holes: 2 time: 0.926263ms
template: ((((([A-z])+(■)+).)■)n)g size: 6 holes: 2 time: 0.938526ms
template: (((((■){■}([0-1]){■}).)p)n)g size: 7 holes: 5 time: 0.930869ms
longest: #mn#(((((■)+(■){■}).)p)n)g#mn# size: #ms#6#ms# holes: #mh#4#mh# time: #mt#3.52418#mt#ms

Computed in:

  #c#1686#c#ms

timeSATSolver time:

  #s#204#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  62   ((((([abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g

All done

last template: #t#(((((■)+(■){■}).)p)n)g#t#
#num#48#num#
#dep#3#dep#
#t1#1#t1#
#t2#3#t2#
#t3#30#t3#
#p#56#p#
#n#13#n#
solution is #sol#((((([abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ])+([1234567890]){1}).)p)n)g#sol#
before exit

2.12870192527771
success