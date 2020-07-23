
Given the regular expression:

  ((\d){1,18})+(\.(\d){1})?

That that should match the strings:


And reject the strings:

  ? (0:19)   1234567891234567891
  ? (19:40)  1234567891234567891.0

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((?){1,18})+(\.(\d){1})?
2.0180606842041016
timeout