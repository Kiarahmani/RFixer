
Given the regular expression:

  ((\d){1,18})+(\.(\d){1})?

That that should match the strings:

  ✓ (0:3)    1.0
  ✓ (3:8)    100.1
  ✓ (8:28)   123456789123456789.2

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------

0.29675793647766113
success