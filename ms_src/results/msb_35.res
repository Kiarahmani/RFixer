
Given the regular expression:

  ((\-)?(\d)+(\.(\d)+)?),(\s)*((\-)?(\d)+(\.(\d)+)?)

That that should match the strings:

  ✓ (0:10)   101.711125
  ✓ (10:18)  3.156831

And reject the strings:

  ✗ (18:38)  3.156831, 101.711125

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  2      |  1     (((((\-){■}(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  3      |  1     (((((\-)?(■)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  4      |  1     (((((\-)?(\d){■})(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  5      |  1     (((((\-)?(\d)+)(■(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  6      |  1     (((((\-)?(\d)+)(\.(■)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  7      |  1     (((((\-)?(\d)+)(\.(\d){■})?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  8      |  1     (((((\-)?(\d)+)(\.(\d)+){■}),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  9      |  1     (((((\-)?(\d)+)(\.(\d)+)?)■)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)get a solution: (((((\-)?(\d)+)(\.(\d)+)?)\.)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)
add negative: -0.0
get a solution: (((((\-)?(\d)+)(\.(\d)+)?)[15])(\s)*)(((\-)?(\d)+)(\.(\d)+)?)
add positive: 0.0
add negative: 010
  unsatisfiable SAT formula       
  10     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(■)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  11     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s){■})(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  12     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((■)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  13     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-){■}(\d)+)(\.(\d)+)?)fail dotstar or empty
  14     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(■)+)(\.(\d)+)?)fail dotstar or empty
  15     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d){■})(\.(\d)+)?)fail dotstar or empty
  16     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(■(\d)+)?)fail dotstar or empty
  17     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(■)+)?)fail dotstar or empty
  18     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d){■})?)fail dotstar or empty
  19     |  1     (((((\-)?(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+){■})fail dotstar or empty
  20     |  2     (((((■){■}(\d)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  21     |  2     (((((■)?(■)+)(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  22     |  2     (((((■)?(\d){■})(\.(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  23     |  2     (((((■)?(\d)+)(■(\d)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  24     |  2     (((((■)?(\d)+)(\.(■)+)?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  25     |  2     (((((■)?(\d)+)(\.(\d){■})?),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  26     |  2     (((((■)?(\d)+)(\.(\d)+){■}),)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)fail dotstar or empty
  27     |  2     (((((■)?(\d)+)(\.(\d)+)?)■)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)get a solution: ((((([∅])?(\d)+)(\.(\d)+)?)\.)(\s)*)(((\-)?(\d)+)(\.(\d)+)?)
add negative: 0.	0

1.0127007961273193
timeout