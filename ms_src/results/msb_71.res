
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
  18     |  2     (((((((■)+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  19     |  2     (((((((■)+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  20     |  2     (((((((■)+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  21     |  2     (((((((■)+\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  22     |  2     (((((((■)+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  23     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  24     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  25     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dot
  26     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  27     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  28     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  29     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  30     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  31     |  2     (((((((■)+\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  32     |  2     ((((((([A-Z]){■}■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  33     |  2     ((((((([A-Z]){■}\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  34     |  2     ((((((([A-Z]){■}\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  35     |  2     ((((((([A-Z]){■}\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  36     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  37     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  38     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  39     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  40     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  41     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  42     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  43     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  44     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  45     |  2     ((((((([A-Z]){■}\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  46     |  2     ((((((■\b)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  47     |  2     ((((((([A-Z])+■)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  48     |  2     ((((((([A-Z])+■)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  49     |  2     ((((((([A-Z])+■)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  50     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  51     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  52     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  53     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dot
  54     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  55     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  56     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  57     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  58     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  59     |  2     ((((((([A-Z])+■)['',])\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  60     |  2     ((((((([A-Z])+\b)■)■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  61     |  2     ((((((([A-Z])+\b)■)\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  62     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  63     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  64     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  65     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dot
  66     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  67     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  68     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  69     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  70     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  71     |  2     ((((((([A-Z])+\b)■)\s)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  72     |  2     ((((((([A-Z])+\b)['',])■)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  73     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  74     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  75     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  76     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  77     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  78     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  79     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  80     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  81     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  82     |  2     ((((((([A-Z])+\b)['',])■)([A-Z]){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  83     |  2     ((((((([A-Z])+\b)['',])\s)(■){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  84     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  85     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  86     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  87     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  88     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  89     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  90     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  91     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  92     |  2     ((((((([A-Z])+\b)['',])\s)(■){1})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  93     |  2     ((((((([A-Z])+\b)['',])\s)■)([a-z])+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  94     |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})(■)+)\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  95     |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z]){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  96     |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  97     |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  98     |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  99     |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  100    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  101    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  102    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){■})([a-z])+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  103    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■){■})\b)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  104    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  105    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  106    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  107    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z](■)+)\b))?fail dotstar or empty
  108    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z]){■})\b))?fail dotstar or empty
  109    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)■))?fail dotstar or empty
  110    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})(■)+)\b)(\s(([A-Z]([a-z])+)\b)){■}fail dotstar or empty
  111    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z]){■})■)(\s(([A-Z]([a-z])+)\b))?fail dotstar or empty
  112    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z]){■})\b)(■(([A-Z]([a-z])+)\b))?fail dotstar or empty
  113    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z]){■})\b)(\s((■([a-z])+)\b))?fail dotstar or empty
  114    |  2     ((((((([A-Z])+\b)['',])\s)([A-Z]){1})([a-z]){■})\b)(\s(([A-Z](■)+)\b))?
3.0199320316314697
timeout