
Given the regular expression:

  ([0-9a-zA-Z]){1,30}\.([a-z]){3}((\.)([a-z]){2})?

That that should match the strings:

  ? (0:10)   abc.com.ae
  ? (10:17)  abc.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------

0.2873499393463135
success