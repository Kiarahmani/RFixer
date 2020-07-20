
Given the regular expression:

  ([A-Z])+\b['',]\s([A-Z]){1}([a-z])+\b(\s([A-Z]([a-z])+\b))?

That that should match the strings:

  ✓ (0:13)   TRUMP, Donald
  ✓ (13:41)  ZETA-JONES, Catherine (Kate)
  ✓ (41:53)  BUSH, George
  ✓ (53:76)  CLINTON, William (Bill)
  ✓ (76:97)  CARTER, James (Jimmy)
  ✓ (97:114) SMITH-JONES, John

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  2      |  1     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  3      |  1     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  4      |  1     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  5      |  1     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  6      |  1     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  7      |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  8      |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  9      |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  10     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  11     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  12     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  13     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  14     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  15     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  16     |  1     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  17     |  2     (((((((■){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  18     |  2     (((((((■)+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?1.017547607421875
timeout