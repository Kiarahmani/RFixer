
Given the regular expression:

  ([A-Z]){4}([0-9]){2}

That that should match the strings:

  ✓ (0:34)   Regular expression - how to negate

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){4}([0-9]){2}        fail dotstar or empty
  2      |  1     ([A-Z]){■}([0-9]){2}    fail dotstar or empty
  3      |  1     ([A-Z]){4}(■){2}        fail dotstar or empty
  4      |  1     ([A-Z]){4}([0-9]){■}    fail dotstar or empty
  5      |  2     (■){■}([0-9]){2}        