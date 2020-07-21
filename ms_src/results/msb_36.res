
Given the regular expression:

  ([0-9a-z])*@metu\.edu

That that should match the strings:

  ✓ (0:18)   herp.derp@metu.edu

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((■)*@)m)e)t)u)\.)e)d)uget a solution: ((((((((([r\.dehp])*@)m)e)t)u)\.)e)d)u
add positive: d0@metu.edu
add negative: @metu.edu
  2      |  1     ((((((((([0-9a-z]){■}@)m)e)t)u)\.)e)d)ufail dotstar or empty
  3      |  1     ((((((((([0-9a-z])*■)m)e)t)u)\.)e)d)ufail dot
  4      |  1     ((((((((([0-9a-z])*@)■)e)t)u)\.)e)d)ufail dotstar or empty
  5      |  1     ((((((((([0-9a-z])*@)m)■)t)u)\.)e)d)ufail dotstar or empty
  6      |  1     ((((((((([0-9a-z])*@)m)e)■)u)\.)e)d)ufail dotstar or empty
  7      |  1     ((((((((([0-9a-z])*@)m)e)t)■)\.)e)d)ufail dotstar or empty
  8      |  1     ((((((((([0-9a-z])*@)m)e)t)u)■)e)d)ufail dotstar or empty
  9      |  1     ((((((((([0-9a-z])*@)m)e)t)u)\.)■)d)ufail dotstar or empty
  10     |  1     ((((((((([0-9a-z])*@)m)e)t)u)\.)e)■)ufail dotstar or empty
  11     |  1     ((((((((([0-9a-z])*@)m)e)t)u)\.)e)d)■fail dotstar or empty
  12     |  2     (((((((((■){■}@)m)e)t)u)\.)e)d)uget a solution: ((((((((([r\.deh0p]){1,9}@)m)e)t)u)\.)e)d)u
add positive: 10@metu.edu
add negative: .@metu.edu
get a solution: ((((((((([1r\.deh0p]){2,9}@)m)e)t)u)\.)e)d)u
add positive: 20@metu.edu
add negative: ..@metu.edu
  unsatisfiable SAT formula       
  13     |  2     (((((((((■)*■)m)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  14     |  2     (((((((((■)*@)■)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  15     |  2     (((((((((■)*@)m)■)t)u)\.)e)d)u  unsatisfiable SAT formula       
  16     |  2     (((((((((■)*@)m)e)■)u)\.)e)d)u  unsatisfiable SAT formula       
  17     |  2     (((((((((■)*@)m)e)t)■)\.)e)d)u  unsatisfiable SAT formula       
  18     |  2     (((((((((■)*@)m)e)t)u)■)e)d)u  unsatisfiable SAT formula       
  19     |  2     (((((((((■)*@)m)e)t)u)\.)■)d)u  unsatisfiable SAT formula       
  20     |  2     (((((((((■)*@)m)e)t)u)\.)e)■)u  unsatisfiable SAT formula       
  21     |  2     (((((((((■)*@)m)e)t)u)\.)e)d)■
1.0179247856140137
timeout