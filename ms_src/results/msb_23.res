
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

1.0126049518585205
timeout