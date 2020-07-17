
Given the regular expression:

  ((([0-9])+)(\s)+(\bseconds\b)|(\bminutes\b))

That that should match the strings:

  ✓ (0:9)    5 minutes

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  2      |  1     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  3      |  1     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  4      |  1     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  5      |  1     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  6      |  1     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  7      |  1     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  8      |  1     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  9      |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  10     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  11     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  12     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  13     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  14     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  15     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  16     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  17     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  18     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  19     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  20     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  21     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  22     |  1     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  23     |  2     (((■){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  24     |  2     (((■)+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  25     |  2     (((■)+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  26     |  2     (((■)+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  27     |  2     (((■)+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  28     |  2     (((■)+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  29     |  2     (((■)+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  30     |  2     (((■)+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  31     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  32     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  33     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  34     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  35     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  36     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  37     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  38     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  39     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  40     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  41     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  42     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  43     |  2     (((■)+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  44     |  2     ((([0-9]){■}(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  45     |  2     ((([0-9]){■}(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  46     |  2     ((([0-9]){■}(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  47     |  2     ((([0-9]){■}(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  48     |  2     ((([0-9]){■}(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  49     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  50     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  51     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  52     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  53     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  54     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  55     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  56     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  57     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  58     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  59     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  60     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  61     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  62     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  63     |  2     ((([0-9]){■}(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  64     |  2     ((■(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  65     |  2     ((([0-9])+(■){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  66     |  2     ((([0-9])+(■)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  67     |  2     ((([0-9])+(■)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  68     |  2     ((([0-9])+(■)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  69     |  2     ((([0-9])+(■)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  70     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  71     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  72     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  73     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  74     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  75     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  76     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  77     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  78     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  79     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  80     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  81     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  82     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  83     |  2     ((([0-9])+(■)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  84     |  2     ((([0-9])+(\s){■})((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  85     |  2     ((([0-9])+(\s){■})((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  86     |  2     ((([0-9])+(\s){■})((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  87     |  2     ((([0-9])+(\s){■})((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  88     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  89     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  90     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  91     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  92     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  93     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  94     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  95     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  96     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  97     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  98     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  99     |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  100    |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  101    |  2     ((([0-9])+(\s){■})((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  102    |  2     ((([0-9])+■)((((((((\bs)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  103    |  2     ((([0-9])+(\s)+)((((((((■■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  104    |  2     ((([0-9])+(\s)+)((((((((■s)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  105    |  2     ((([0-9])+(\s)+)((((((((■s)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  106    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  107    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  108    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  109    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  110    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  111    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  112    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  113    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  114    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  115    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  116    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  117    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  118    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  119    |  2     ((([0-9])+(\s)+)((((((((■s)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  120    |  2     ((([0-9])+(\s)+)((((((((\b■)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  121    |  2     ((([0-9])+(\s)+)((((((((\b■)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  122    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  123    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  124    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  125    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  126    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  127    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  128    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  129    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  130    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  131    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  132    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  133    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  134    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  135    |  2     ((([0-9])+(\s)+)((((((((\b■)e)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  136    |  2     ((([0-9])+(\s)+)((((((((\bs)■)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  137    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  138    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  139    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  140    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  141    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  142    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  143    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  144    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  145    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  146    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  147    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  148    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  149    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  150    |  2     ((([0-9])+(\s)+)((((((((\bs)■)c)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  151    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  152    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  153    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  154    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  155    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  156    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  157    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  158    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  159    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  160    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  161    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  162    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  163    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  164    |  2     ((([0-9])+(\s)+)((((((((\bs)e)■)o)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  165    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  166    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  167    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  168    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  169    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  170    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  171    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  172    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  173    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  174    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  175    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  176    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  177    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)■)n)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  178    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)■)s)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  179    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  180    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  181    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  182    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  183    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  184    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  185    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  186    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  187    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  188    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  189    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)■)d)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  190    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)■)\b)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  191    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  192    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  193    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  194    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  195    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  196    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  197    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  198    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  199    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  200    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)■)s)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  201    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)■)|(((((((\bm)i)n)u)t)e)s)\b)fail dotstar or empty
  202    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  203    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  204    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  205    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  206    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  207    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  208    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  209    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  210    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)■)\b)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  211    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((■m)i)n)u)t)e)s)\b)fail dot
  212    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\b■)i)n)u)t)e)s)\b)fail dot
  213    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)■)n)u)t)e)s)\b)fail dotstar or empty
  214    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)■)u)t)e)s)\b)fail dotstar or empty
  215    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)■)t)e)s)\b)fail dotstar or empty
  216    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)■)e)s)\b)fail dotstar or empty
  217    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)■)s)\b)fail dotstar or empty
  218    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)■)\b)fail dotstar or empty
  219    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)■)|(((((((\bm)i)n)u)t)e)s)■)fail dotstar or empty
  220    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■■)i)n)u)t)e)s)\b)fail dot
  221    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)■)n)u)t)e)s)\b)fail dot
  222    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)■)u)t)e)s)\b)fail dot
  223    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)■)t)e)s)\b)fail dot
  224    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)■)e)s)\b)fail dot
  225    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)■)s)\b)fail dot
  226    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)■)\b)fail dot
  227    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|(((((((■m)i)n)u)t)e)s)■)fail dot
  228    |  2     ((([0-9])+(\s)+)((((((((\bs)e)c)o)n)d)s)\b)|((((((((■■)m)i)n)u)t)e)s)\b)