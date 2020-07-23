
Given the regular expression:

  ((\d){1,18})+(\.(\d){1})?

That that should match the strings:

  ? (0:5)    100.1
  ? (5:25)   123456789123456789.2
  ? (25:28)  1.0
  ? (28:46)  123456789123456789
  ? (46:48)  18

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((?){1,18})+(\.(\d){1})?
2.0190019607543945
timeout