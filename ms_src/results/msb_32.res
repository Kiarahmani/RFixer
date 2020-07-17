
Given the regular expression:

  \b([bc])*(a){3}([bc])*\b

That that should match the strings:

  ✓ (0:3)    cab
  ✓ (3:11)   caabaaac
  ✓ (11:21)  ababaccccc

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■([bc])*)(a){3})([bc])*)\bfail dotstar or empty
  2      |  1     (((\b(■)*)(a){3})([bc])*)\bfail dotstar or empty
  3      |  1     (((\b([bc]){■})(a){3})([bc])*)\bfail dotstar or empty
  4      |  1     (((\b([bc])*)(■){3})([bc])*)\bfail dot
  5      |  1     (((\b([bc])*)(a){■})([bc])*)\bfail dotstar or empty
  6      |  1     (((\b([bc])*)(a){3})(■)*)\bfail dotstar or empty
  7      |  1     (((\b([bc])*)(a){3})([bc]){■})\bfail dotstar or empty
  8      |  1     (((\b([bc])*)(a){3})([bc])*)■fail dotstar or empty
  9      |  2     (((■(■)*)(a){3})([bc])*)\bfail dotstar or empty
  10     |  2     (((■([bc]){■})(a){3})([bc])*)\bfail dotstar or empty
  11     |  2     (((■([bc])*)(■){3})([bc])*)\bfail dot
  12     |  2     (((■([bc])*)(a){■})([bc])*)\bfail dot
  13     |  2     (((■([bc])*)(a){3})(■)*)\bfail dotstar or empty
  14     |  2     (((■([bc])*)(a){3})([bc]){■})\bfail dotstar or empty
  15     |  2     (((■([bc])*)(a){3})([bc])*)■fail dotstar or empty
  16     |  2     (((\b(■){■})(a){3})([bc])*)\bfail dotstar or empty
  17     |  2     (((\b(■)*)(■){3})([bc])*)\b