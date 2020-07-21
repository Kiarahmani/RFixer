
Given the regular expression:

  ((\d){1,18})+(\.(\d){1})?

That that should match the strings:

  ✓ (0:3)    1.0
  ✓ (3:8)    100.1
  ✓ (8:28)   123456789123456789.2

And reject the strings:

  ✗ (28:49)  1234567891234567891.0
  ✗ (49:53)  1.01
  ✗ (53:72)  1234567891234567891

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■){1,18})+(\.(\d){1})?
5.024828195571899
timeout