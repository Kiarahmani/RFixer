
Given the regular expression:

  [^\-\s].{8,20}

That that should match the strings:

  ✓ (0:8)    avail...
  ✓ (8:16)   allowed.
  ✓ (16:24)  password

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■.){)8),)2)0)}    