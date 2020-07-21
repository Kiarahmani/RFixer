
Given the regular expression:

  ([A-Z])+(["#(),a-zA-Z\.\t;0-9_ ])+[\.]

That that should match the strings:

  ✓ (0:24)   theres a little problem.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]get a solution: ((t)+(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]
add positive: A 
add negative: t	.
  2      |  1     (([A-Z]){■}(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]fail dotstar or empty
  3      |  1     (([A-Z])+(■)+)[\.]      fail dotstar or empty
  4      |  1     (([A-Z])+(["#(),a-zA-Z\.\t;0-9_ ]){■})[\.]fail dotstar or empty
  5      |  1     (([A-Z])+(["#(),a-zA-Z\.\t;0-9_ ])+)■fail dotstar or empty
  6      |  2     ((■){■}(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]fail dotstar or empty
  7      |  2     ((■)+(■)+)[\.]          fail dotstar or empty
  8      |  2     ((■)+(["#(),a-zA-Z\.\t;0-9_ ]){■})[\.]fail dotstar or empty
  9      |  2     ((■)+(["#(),a-zA-Z\.\t;0-9_ ])+)■fail dot
  10     |  2     ((■■)+(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]fail dot
  11     |  2     (((■|■))+(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]fail solve
  12     |  2     (((■){■})+(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]fail dot
  13     |  2     (([A-Z]){■}(■)+)[\.]    fail dotstar or empty
  14     |  2     (([A-Z]){■}(["#(),a-zA-Z\.\t;0-9_ ]){■})[\.]fail dotstar or empty
  15     |  2     (([A-Z]){■}(["#(),a-zA-Z\.\t;0-9_ ])+)■  unsatisfiable SAT formula       
  16     |  2     (■(["#(),a-zA-Z\.\t;0-9_ ])+)[\.]fail dotstar or empty
  17     |  2     (([A-Z])+(■){■})[\.]    fail dotstar or empty
  18     |  2     (([A-Z])+(■)+)■         fail dotstar or empty
  19     |  2     (([A-Z])+(["#(),a-zA-Z\.\t;0-9_ ]){■})■fail dotstar or empty
  20     |  2     (([A-Z])+■)[\.]         fail dotstar or empty
  21     |  3     ((■){■}(■)+)[\.]        fail dotstar or empty
  22     |  3     ((■){■}(["#(),a-zA-Z\.\t;0-9_ ]){■})[\.]fail dotstar or empty
  23     |  3     ((■){■}(["#(),a-zA-Z\.\t;0-9_ ])+)■  unsatisfiable SAT formula       
  24     |  3     ((■)+(■){■})[\.]        fail dotstar or empty
  25     |  3     ((■)+(■)+)■             fail dot
  26     |  3     ((■)+(["#(),a-zA-Z\.\t;0-9_ ]){■})■get a solution: (([Aabehilmoprst ])+(["#(),a-zA-Z\.\t;0-9_ ]){0})[\. ]
add positive: B 
add negative:   
  unsatisfiable SAT formula       
  27     |  3     ((■)+■)[\.]             fail dotstar or empty
  28     |  3     ((■■)+(["#(),a-zA-Z\.\t;0-9_ ])+)■fail dot
  29     |  3     (((■|■))+(["#(),a-zA-Z\.\t;0-9_ ])+)■fail dot
  30     |  3     (((■){■})+(["#(),a-zA-Z\.\t;0-9_ ])+)■
2.016716957092285
timeout