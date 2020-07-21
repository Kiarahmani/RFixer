
Given the regular expression:

  11(\d){8}

That that should match the strings:

  ✓ (0:12)   t1128647953t

And reject the strings:

  ✗ (12:22)  1128647953

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■1)(\d){8}             fail dotstar or empty
  2      |  1     (1■)(\d){8}             fail dotstar or empty
  3      |  1     (11)(■){8}              fail dotstar or empty
  4      |  1     (11)(\d){■}             fail dotstar or empty
  5      |  2     (■■)(\d){8}             fail dotstar or empty
  6      |  2     (■1)(■){8}              fail dot
  7      |  2     (■1)(\d){■}             fail dotstar or empty
  8      |  2     (1■)(■){8}              fail dotstar or empty
  9      |  2     (1■)(\d){■}             fail dotstar or empty
  10     |  2     (11)(■){■}              fail dotstar or empty
  11     |  2     (11)■                   fail dotstar or empty
  12     |  3     (■■)(■){8}              fail dot
  13     |  3     (■■)(\d){■}             fail dot
  14     |  3     (■)(\d){8}              fail dotstar or empty
  15     |  3     (■1)(■){■}              get a solution: (t1)([1234t56789]){9,10}
add positive:  1100000000 
add negative: t111t111111
get a solution: ([t ]1)([01234t56789 ]){10}
add positive: 1100000000 
add negative:  11         
  unsatisfiable SAT formula       
  16     |  3     (■1)■                   fail dot
  17     |  3     ((■■)1)(■){8}           fail dot
  18     |  3     ((■|■)1)(■){8}          fail dot
  19     |  3     ((■){■}1)(■){8}         fail dot
  20     |  3     (■1)(■■){8}             fail dot
  21     |  3     (■1)((■|■)){8}          fail dot
  22     |  3     (■1)((■){■}){8}         
20.015788793563843
timeout