
Given the regular expression:

  ([A-Z])+['',]\s([A-Z]){1}([a-z])+(\s([A-Z]([a-z])+))?

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
  1      |  1     (((((■)+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  2      |  1     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  3      |  1     ((((([A-Z])+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  4      |  1     ((((([A-Z])+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  5      |  1     ((((([A-Z])+['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  6      |  1     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  7      |  1     ((((([A-Z])+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  8      |  1     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  9      |  1     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  10     |  1     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  11     |  1     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  12     |  1     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  13     |  1     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  14     |  2     (((((■){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  15     |  2     (((((■)+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  16     |  2     (((((■)+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  17     |  2     (((((■)+['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  18     |  2     (((((■)+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  19     |  2     (((((■)+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?get a solution: ((((([ABCEHIJLMNOP\-RSTUZ])+['',])\s)([A-Z]){1})([aBdegh()iJKlmnorsty ])+)(\s([A-Z]([a-z])+))?
add positive: A , Aa
add negative: A,	A 
  unsatisfiable SAT formula       
  20     |  2     (((((■)+['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  21     |  2     (((((■)+['',])\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  22     |  2     (((((■)+['',])\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  23     |  2     (((((■)+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  24     |  2     (((((■)+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  25     |  2     (((((■)+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  26     |  2     ((((([A-Z]){■}■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  27     |  2     ((((([A-Z]){■}['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  28     |  2     ((((([A-Z]){■}['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  29     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  30     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  31     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  32     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  33     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  34     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  35     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  36     |  2     ((((([A-Z]){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  37     |  2     ((((■['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  38     |  2     ((((([A-Z])+■)■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  39     |  2     ((((([A-Z])+■)\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  40     |  2     ((((([A-Z])+■)\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  41     |  2     ((((([A-Z])+■)\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?fail dot
  42     |  2     ((((([A-Z])+■)\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  43     |  2     ((((([A-Z])+■)\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  44     |  2     ((((([A-Z])+■)\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  45     |  2     ((((([A-Z])+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  46     |  2     ((((([A-Z])+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  47     |  2     ((((([A-Z])+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  48     |  2     ((((([A-Z])+['',])■)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  49     |  2     ((((([A-Z])+['',])■)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  50     |  2     ((((([A-Z])+['',])■)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  51     |  2     ((((([A-Z])+['',])■)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  52     |  2     ((((([A-Z])+['',])■)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  53     |  2     ((((([A-Z])+['',])■)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  54     |  2     ((((([A-Z])+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  55     |  2     ((((([A-Z])+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  56     |  2     ((((([A-Z])+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  57     |  2     ((((([A-Z])+['',])\s)(■){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  58     |  2     ((((([A-Z])+['',])\s)(■){1})(■)+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  59     |  2     ((((([A-Z])+['',])\s)(■){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  60     |  2     ((((([A-Z])+['',])\s)(■){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  61     |  2     ((((([A-Z])+['',])\s)(■){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  62     |  2     ((((([A-Z])+['',])\s)(■){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  63     |  2     ((((([A-Z])+['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  64     |  2     ((((([A-Z])+['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  65     |  2     ((((([A-Z])+['',])\s)■)([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  66     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})(■)+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  67     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  68     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  69     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  70     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  71     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  72     |  2     ((((([A-Z])+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  73     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})(■){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  74     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})(■)+)(■([A-Z]([a-z])+))?fail dotstar or empty
  75     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})(■)+)(\s(■([a-z])+))?fail dotstar or empty
  76     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})(■)+)(\s([A-Z](■)+))?fail dotstar or empty
  77     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  78     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  79     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z]){■})(■([A-Z]([a-z])+))?fail dotstar or empty
  80     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z]){■})(\s(■([a-z])+))?fail dotstar or empty
  81     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z](■)+))?fail dotstar or empty
  82     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  83     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  84     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})■)(\s([A-Z]([a-z])+))?fail dotstar or empty
  85     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(■(■([a-z])+))?fail dotstar or empty
  86     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(■([A-Z](■)+))?fail dotstar or empty
  87     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z]){■}))?fail dotstar or empty
  88     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+)){■}fail dotstar or empty
  89     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s(■(■)+))?fail dotstar or empty
  90     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s(■([a-z]){■}))?fail dotstar or empty
  91     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+)){■}fail dotstar or empty
  92     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z](■){■}))?fail dotstar or empty
  93     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+)){■}fail dotstar or empty
  94     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■})){■}fail dotstar or empty
  95     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]■))?fail dotstar or empty
  96     |  2     ((((([A-Z])+['',])\s)([A-Z]){1})([a-z])+)■fail dotstar or empty
  97     |  3     (((((■){■}■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  98     |  3     (((((■){■}['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  99     |  3     (((((■){■}['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  100    |  3     (((((■){■}['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  101    |  3     (((((■){■}['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?get a solution: ((((([ABCEHIJLMNOP\-RSTUZ ]){2,11}['',])\s)([A-Z]){1})([aBdegh(i)JKlmnorsty ])+)(\s([A-Z]([a-z])+))?
add positive: D , Aa
add negative:   '	A 
  unsatisfiable SAT formula       
  102    |  3     (((((■){■}['',])\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  103    |  3     (((((■){■}['',])\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  104    |  3     (((((■){■}['',])\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  105    |  3     (((((■){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  106    |  3     (((((■){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  107    |  3     (((((■){■}['',])\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  108    |  3     (((((■)+■)■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  109    |  3     (((((■)+■)\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  110    |  3     (((((■)+■)\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  111    |  3     (((((■)+■)\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?  unsatisfiable SAT formula       
  112    |  3     (((((■)+■)\s)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  113    |  3     (((((■)+■)\s)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  114    |  3     (((((■)+■)\s)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  115    |  3     (((((■)+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  116    |  3     (((((■)+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  117    |  3     (((((■)+■)\s)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  118    |  3     (((((■)+['',])■)(■){1})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  119    |  3     (((((■)+['',])■)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  120    |  3     (((((■)+['',])■)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?get a solution: ((((([ABCDEHIJLMNOP\-RSTUZ ])+['',]) )([A-Z]){1})([aBdegh(i)JKlmnorsty ])+)(\s([A-Z]([a-z])+))?
add positive: AF, Aa
add negative: A' A 
  unsatisfiable SAT formula       
  121    |  3     (((((■)+['',])■)([A-Z]){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  122    |  3     (((((■)+['',])■)([A-Z]){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  123    |  3     (((((■)+['',])■)([A-Z]){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  124    |  3     (((((■)+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  125    |  3     (((((■)+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  126    |  3     (((((■)+['',])■)([A-Z]){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  127    |  3     (((((■)+['',])\s)(■){■})([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  128    |  3     (((((■)+['',])\s)(■){1})(■)+)(\s([A-Z]([a-z])+))?  unsatisfiable SAT formula       
  129    |  3     (((((■)+['',])\s)(■){1})([a-z]){■})(\s([A-Z]([a-z])+))?fail dot
  130    |  3     (((((■)+['',])\s)(■){1})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  131    |  3     (((((■)+['',])\s)(■){1})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  132    |  3     (((((■)+['',])\s)(■){1})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  133    |  3     (((((■)+['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  134    |  3     (((((■)+['',])\s)(■){1})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  135    |  3     (((((■)+['',])\s)■)([a-z])+)(\s([A-Z]([a-z])+))?fail dotstar or empty
  136    |  3     (((((■)+['',])\s)([A-Z]){■})(■)+)(\s([A-Z]([a-z])+))?  unsatisfiable SAT formula       
  137    |  3     (((((■)+['',])\s)([A-Z]){■})([a-z]){■})(\s([A-Z]([a-z])+))?fail dotstar or empty
  138    |  3     (((((■)+['',])\s)([A-Z]){■})([a-z])+)(■([A-Z]([a-z])+))?fail dotstar or empty
  139    |  3     (((((■)+['',])\s)([A-Z]){■})([a-z])+)(\s(■([a-z])+))?fail dotstar or empty
  140    |  3     (((((■)+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z](■)+))?fail dotstar or empty
  141    |  3     (((((■)+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z]){■}))?fail dotstar or empty
  142    |  3     (((((■)+['',])\s)([A-Z]){■})([a-z])+)(\s([A-Z]([a-z])+)){■}fail dotstar or empty
  143    |  3     (((((■)+['',])\s)([A-Z]){1})(■){■})(\s([A-Z]([a-z])+))?  unsatisfiable SAT formula       
  144    |  3     (((((■)+['',])\s)([A-Z]){1})(■)+)(■([A-Z]([a-z])+))?  unsatisfiable SAT formula       
  145    |  3     (((((■)+['',])\s)([A-Z]){1})(■)+)(\s(■([a-z])+))?  unsatisfiable SAT formula       
  146    |  3     (((((■)+['',])\s)([A-Z]){1})(■)+)(\s([A-Z](■)+))?  unsatisfiable SAT formula       
  147    |  3     (((((■)+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z]){■}))?  unsatisfiable SAT formula       
  148    |  3     (((((■)+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+)){■}  unsatisfiable SAT formula       
  149    |  3     (((((■■)+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?fail dot
  150    |  3     ((((((■|■))+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?fail solve
  151    |  3     ((((((■){■})+['',])\s)([A-Z]){1})(■)+)(\s([A-Z]([a-z])+))?
10.018656969070435
timeout