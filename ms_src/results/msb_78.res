
Given the regular expression:

  (\d([\-\s])*){5,}[\W]

That that should match the strings:

  ✓ (0:12)   123-4567-890
  ✓ (12:29)  12345-67890-11121
  ✓ (29:46)  12345 6789 123232
  ✓ (46:63)  12345 67890 11121
  ✓ (63:81)  12345-62436-223434

And reject the strings:

  ✗ (81:99)  12345 67890 11121"
  ✗ (99:117) 12345-67890-11121"
  ✗ (117:130) 123-4567-890"
  ✗ (130:148) 12345 6789 123232"
  ✗ (148:167) 12345-62436-223434"

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■([\-\s])*){5,}[\W]    fail dotstar or empty
  2      |  1     (\d(■)*){5,}[\W]        fail dotstar or empty
  3      |  1     (\d([\-\s]){■}){5,}[\W] fail dotstar or empty
  4      |  1     (\d([\-\s])*){■}[\W]    fail dotstar or empty
  5      |  1     (\d([\-\s])*){5,}■      get a solution: (\d([\-\s])*){5,}[1240]
add positive: 00000
add negative: 0	00000
  6      |  2     (■(■)*){5,}[\W]         fail dotstar or empty
  7      |  2     (■([\-\s]){■}){5,}[\W]  fail dotstar or empty
  8      |  2     (■([\-\s])*){■}[\W]     fail dotstar or empty
  9      |  2     (■([\-\s])*){5,}■       fail dot
  10     |  2     (\d(■){■}){5,}[\W]      fail dotstar or empty
  11     |  2     (\d(■)*){■}[\W]         fail dotstar or empty
  12     |  2     (\d(■)*){5,}■           fail dot
  13     |  2     (\d([\-\s]){■}){■}[\W]  fail dotstar or empty
  14     |  2     (\d([\-\s]){■}){5,}■    fail dot
  15     |  2     (\d■){5,}[\W]           fail dotstar or empty
  16     |  2     (\d([\-\s])*){■}■         unsatisfiable SAT formula       
  17     |  2     ■[\W]                   fail dotstar or empty
  18     |  2     (\d([\-\s])*){5,}(■■)   fail dot
  19     |  2     (\d([\-\s])*){5,}(■|■)  fail solve
  20     |  2     (\d([\-\s])*){5,}(■){■}   unsatisfiable SAT formula       
  21     |  3     (■(■)*){■}[\W]          fail dotstar or empty
  22     |  3     (■(■)*){5,}■            fail dot
  23     |  3     (■([\-\s]){■}){■}[\W]   fail dotstar or empty
  24     |  3     (■([\-\s]){■}){5,}■     fail dot
  25     |  3     (■■){5,}[\W]            fail dotstar or empty
  26     |  3     (■([\-\s])*){■}■          unsatisfiable SAT formula       
  27     |  3     ((■■)([\-\s])*){5,}■    fail dot
  28     |  3     ((■|■)([\-\s])*){5,}■   fail dot
  29     |  3     ((■){■}([\-\s])*){5,}■  
2.0135109424591064
timeout