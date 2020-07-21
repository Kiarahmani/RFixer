
Given the regular expression:

  [w\\][sww,\\\\\\\\]

That that should match the strings:

  ✓ (0:19)   lastname, firstname

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■[sww,\\\\\\\\]         fail dotstar or empty
  2      |  1     [w\\]■                  fail dotstar or empty
  3      |  2     ■■                      fail dot
  4      |  3     ■                       fail dot
  5      |  3     (■■)■                   fail dot
  6      |  3     (■|■)■                  fail dot
  7      |  3     (■){■}■                 get a solution: ([aefi,lmnrst ]){1,18}e
add positive: ,, ,
add negative: ,e
get a solution: ([aefi,lmnrst ]){2,18}[e,]
add positive:  ,  
add negative:   ,
get a solution: ([aefil,mnrst  ]){3,18}[e, ]

1.0267510414123535
timeout