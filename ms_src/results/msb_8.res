
Given the regular expression:

  ([0-9a-zA-Z]){1,30}\.([a-z]){3}((\.)([a-z]){2})?

That that should match the strings:

  ✓ (0:14)   abc.abc.com.ae

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){1,30}\.)([a-z]){3})(\.([a-z]){2})?get a solution: ((([ab\.c]){1,30}\.)([a-z]){3})(\.([a-z]){2})?
1.018754005432129
timeout