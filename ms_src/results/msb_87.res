
Given the regular expression:

  views/

That that should match the strings:

  ✓ (0:14)   views/register
  ✓ (14:37)  views/' upto the next '
  ✓ (37:69)  views/register'  something like:

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■i)e)w)s)/          fail dotstar or empty
  2      |  1     ((((v■)e)w)s)/          fail dotstar or empty
  3      |  1     ((((vi)■)w)s)/          fail dotstar or empty
  4      |  1     ((((vi)e)■)s)/          fail dotstar or empty
  5      |  1     ((((vi)e)w)■)/          fail dotstar or empty
  6      |  1     ((((vi)e)w)s)■          fail dot
  7      |  2     ((((■■)e)w)s)/          fail dotstar or empty
  8      |  2     ((((■i)■)w)s)/          fail dotstar or empty
  9      |  2     ((((■i)e)■)s)/          fail dotstar or empty
  10     |  2     ((((■i)e)w)■)/          fail dotstar or empty
  11     |  2     ((((■i)e)w)s)■          fail dot
  12     |  2     ((((v■)■)w)s)/          fail dotstar or empty
  13     |  2     ((((v■)e)■)s)/          fail dotstar or empty
  14     |  2     ((((v■)e)w)■)/          fail dotstar or empty
  15     |  2     ((((v■)e)w)s)■          fail dot
  16     |  2     ((((vi)■)■)s)/          fail dotstar or empty
  17     |  2     ((((vi)■)w)■)/          fail dotstar or empty
  18     |  2     ((((vi)■)w)s)■          fail dot
  19     |  2     ((((vi)e)■)■)/          fail dotstar or empty
  20     |  2     ((((vi)e)■)s)■          fail dot
  21     |  2     ((((vi)e)w)■)■          fail dot
  22     |  2     ((((vi)e)w)s)(■■)       fail dot
  23     |  2     ((((vi)e)w)s)(■|■)      fail dot
  24     |  2     ((((vi)e)w)s)(■){■}     get a solution: ((((vi)e)w)s)([e'ghiklmno/prstux: ]){1,27}
add positive: views/ 
add negative: views 
get a solution: ((((vi)e)w)s)([e'ghiklmno/prstux:  ]){2,27}
add positive: views/
add negative: views//
  unsatisfiable SAT formula       
  25     |  3     ((((■■)■)w)s)/          fail dotstar or empty

1.0275630950927734
timeout