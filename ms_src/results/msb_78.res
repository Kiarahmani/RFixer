
Given the regular expression:

  (\d){5,6}(\|)?((\d){5,6})?

That that should match the strings:

  ✓ (0:18)   34786|235652|12876

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){5,6}(\|)?)((\d){5,6})?fail dot
  2      |  1     ((\d){■}(\|)?)((\d){5,6})?fail dotstar or empty
  3      |  1     ((\d){5,6}(■)?)((\d){5,6})?fail dot
  4      |  1     ((\d){5,6}(\|){■})((\d){5,6})?fail dotstar or empty
  5      |  1     ((\d){5,6}(\|)?)((■){5,6})?fail dot
  6      |  1     ((\d){5,6}(\|)?)((\d){■})?fail dotstar or empty
  7      |  1     ((\d){5,6}(\|)?)((\d){5,6}){■}fail dotstar or empty
  8      |  2     ((■){■}(\|)?)((\d){5,6})?get a solution: (([12345678|]){14,18}(\|)?)((\d){5,6})?
add positive: 10000
add negative: 1|111111111111
get a solution: (([2345678|0]){0,18}(\|)?)((\d){5,6})?
add positive: 10000|00000
add negative: 
  unsatisfiable SAT formula       
  9      |  2     ((■){5,6}(■)?)((\d){5,6})?fail dot
  10     |  2     ((■){5,6}(\|){■})((\d){5,6})?fail dot
  11     |  2     ((■){5,6}(\|)?)((■){5,6})?fail dot
  12     |  2     ((■){5,6}(\|)?)((\d){■})?fail dot
  13     |  2     ((■){5,6}(\|)?)((\d){5,6}){■}fail dot
  14     |  2     (■(\|)?)((\d){5,6})?    fail dot
  15     |  2     ((■■){5,6}(\|)?)((\d){5,6})?fail dot
  16     |  2     (((■|■)){5,6}(\|)?)((\d){5,6})?fail dot
  17     |  2     (((■){■}){5,6}(\|)?)((\d){5,6})?10.01366400718689
timeout