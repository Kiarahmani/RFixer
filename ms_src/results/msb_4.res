
Given the regular expression:

  ((\bME\b|\bTR\b)|([0-9]){2})([0-9]){7}

That that should match the strings:

  ✓ (0:9)    ME3456789
  ✓ (9:18)   TR3456789

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■M)E)\b|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  2      |  1     ((((\b■)E)\b|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  3      |  1     ((((\bM)■)\b|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  4      |  1     ((((\bM)E)■|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  5      |  1     ((((\bM)E)\b|((■T)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  6      |  1     ((((\bM)E)\b|((\b■)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  7      |  1     ((((\bM)E)\b|((\bT)■)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  8      |  1     ((((\bM)E)\b|((\bT)R)■)|([0-9]){2})([0-9]){7}fail dotstar or empty
  9      |  1     ((((\bM)E)\b|((\bT)R)\b)|(■){2})([0-9]){7}