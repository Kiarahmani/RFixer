
Given the regular expression:

  http(s)?:\/\/\S.flickr.net

That that should match the strings:

  ✓ (0:23)   https://blog.flickr.net
  ✓ (23:45)  https://www.flickr.net
  ✓ (45:63)  https://flickr.net

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  2      |  1     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  3      |  1     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  4      |  1     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  5      |  1     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  6      |  1     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  7      |  1     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  8      |  1     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  9      |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  10     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  11     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  12     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  13     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  14     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  15     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  16     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  17     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  18     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  19     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  20     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  21     |  1     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  22     |  2     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  23     |  2     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  24     |  2     ((((((((((((((((((■t)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  25     |  2     ((((((((((((((((((■t)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  26     |  2     ((((((((((((((((((■t)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  27     |  2     ((((((((((((((((((■t)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  28     |  2     ((((((((((((((((((■t)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  29     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  30     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  31     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  32     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  33     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  34     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  35     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  36     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  37     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  38     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  39     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  40     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  41     |  2     ((((((((((((((((((■t)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  42     |  2     ((((((((((((((((((h■)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  43     |  2     ((((((((((((((((((h■)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  44     |  2     ((((((((((((((((((h■)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  45     |  2     ((((((((((((((((((h■)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  46     |  2     ((((((((((((((((((h■)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  47     |  2     ((((((((((((((((((h■)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  48     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  49     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  50     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  51     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  52     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  53     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  54     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  55     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  56     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  57     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  58     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  59     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  60     |  2     ((((((((((((((((((h■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  61     |  2     ((((((((((((((((((ht)■)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  62     |  2     ((((((((((((((((((ht)■)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  63     |  2     ((((((((((((((((((ht)■)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  64     |  2     ((((((((((((((((((ht)■)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  65     |  2     ((((((((((((((((((ht)■)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  66     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  67     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  68     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  69     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  70     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  71     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  72     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  73     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  74     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  75     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  76     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  77     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  78     |  2     ((((((((((((((((((ht)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  79     |  2     ((((((((((((((((((ht)t)■)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  80     |  2     ((((((((((((((((((ht)t)■)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  81     |  2     ((((((((((((((((((ht)t)■)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  82     |  2     ((((((((((((((((((ht)t)■)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  83     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  84     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  85     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  86     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  87     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  88     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  89     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  90     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  91     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  92     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  93     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  94     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  95     |  2     ((((((((((((((((((ht)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  96     |  2     ((((((((((((((((((ht)t)p)(■){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  97     |  2     ((((((((((((((((((ht)t)p)(■)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  98     |  2     ((((((((((((((((((ht)t)p)(■)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  99     |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  100    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  101    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  102    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  103    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  104    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  105    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  106    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  107    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  108    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  109    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  110    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  111    |  2     ((((((((((((((((((ht)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  112    |  2     ((((((((((((((((((ht)t)p)(s){■})■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  113    |  2     ((((((((((((((((((ht)t)p)(s){■}):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  114    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  115    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  116    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  117    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  118    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  119    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  120    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  121    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  122    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  123    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  124    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  125    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  126    |  2     ((((((((((((((((((ht)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  127    |  2     ((((((((((((((((((ht)t)p)■):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  128    |  2     ((((((((((((((((((ht)t)p)(s)?)■)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  129    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  130    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  131    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  132    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  133    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  134    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  135    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  136    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  137    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  138    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  139    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  140    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  141    |  2     ((((((((((((((((((ht)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  142    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)■)\S).)f)l)i)c)k)r).)n)e)tfail dot
  143    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)■).)f)l)i)c)k)r).)n)e)tfail dot
  144    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dot
  145    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)■)l)i)c)k)r).)n)e)tfail dot
  146    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  147    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  148    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  149    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  150    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  151    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  152    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  153    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  154    |  2     ((((((((((((((((((ht)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  155    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)■).)f)l)i)c)k)r).)n)e)tfail dot
  156    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S)■)f)l)i)c)k)r).)n)e)tfail dot
  157    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)■)l)i)c)k)r).)n)e)tfail dot
  158    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  159    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  160    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  161    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  162    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  163    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  164    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  165    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  166    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  167    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■)■)f)l)i)c)k)r).)n)e)tfail dot
  168    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)■)l)i)c)k)r).)n)e)tfail dot
  169    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  170    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  171    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  172    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  173    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  174    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  175    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  176    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  177    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  178    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)■)l)i)c)k)r).)n)e)tfail dot
  179    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  180    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  181    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  182    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  183    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  184    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  185    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  186    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  187    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  188    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)■)i)c)k)r).)n)e)tfail dot
  189    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)■)c)k)r).)n)e)tfail dotstar or empty
  190    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)■)k)r).)n)e)tfail dotstar or empty
  191    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)■)r).)n)e)tfail dotstar or empty
  192    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)■).)n)e)tfail dotstar or empty
  193    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r)■)n)e)tfail dotstar or empty
  194    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)■)e)tfail dotstar or empty
  195    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)■)tfail dotstar or empty
  196    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)■fail dotstar or empty
  197    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)■)c)k)r).)n)e)tfail dotstar or empty
  198    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)■)k)r).)n)e)tfail dotstar or empty
  199    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)■)r).)n)e)tfail dotstar or empty
  200    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)■).)n)e)tfail dotstar or empty
  201    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r)■)n)e)tfail dotstar or empty
  202    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)■)e)tfail dotstar or empty
  203    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)■)tfail dotstar or empty
  204    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)■fail dotstar or empty
  205    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)■)k)r).)n)e)tfail dotstar or empty
  206    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)■)r).)n)e)tfail dotstar or empty
  207    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)■).)n)e)tfail dotstar or empty
  208    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r)■)n)e)tfail dotstar or empty
  209    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)■)e)tfail dotstar or empty
  210    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)■)tfail dotstar or empty
  211    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)■fail dotstar or empty
  212    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)■)r).)n)e)tfail dotstar or empty
  213    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)■).)n)e)tfail dotstar or empty
  214    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r)■)n)e)tfail dotstar or empty
  215    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)■)e)tfail dotstar or empty
  216    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)■)tfail dotstar or empty
  217    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)■fail dotstar or empty
  218    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)■).)n)e)tfail dotstar or empty
  219    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r)■)n)e)tfail dotstar or empty
  220    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)■)e)tfail dotstar or empty
  221    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)■)tfail dotstar or empty
  222    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)■fail dotstar or empty
  223    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■)■)n)e)tfail dotstar or empty
  224    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)■)e)tfail dotstar or empty
  225    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)■)tfail dotstar or empty
  226    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)■fail dotstar or empty
  227    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)■)e)tfail dotstar or empty
  228    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)■)tfail dotstar or empty
  229    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)■fail dotstar or empty
  230    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)■)tfail dotstar or empty
  231    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)■fail dotstar or empty
  232    |  2     ((((((((((((((((((ht)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)■fail dotstar or empty
  233    |  3     ((((((((((((((((((■■)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  234    |  3     ((((((((((((((((((■■)t)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  235    |  3     ((((((((((((((((((■■)t)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  236    |  3     ((((((((((((((((((■■)t)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  237    |  3     ((((((((((((((((((■■)t)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  238    |  3     ((((((((((((((((((■■)t)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  239    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  240    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  241    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  242    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  243    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  244    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  245    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  246    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  247    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  248    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  249    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  250    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  251    |  3     ((((((((((((((((((■■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  252    |  3     ((((((((((((((((((■)t)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  253    |  3     ((((((((((((((((((■t)■)■)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  254    |  3     ((((((((((((((((((■t)■)p)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  255    |  3     ((((((((((((((((((■t)■)p)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  256    |  3     ((((((((((((((((((■t)■)p)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  257    |  3     ((((((((((((((((((■t)■)p)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  258    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  259    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)■).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  260    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S)■)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  261    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)■)l)i)c)k)r).)n)e)tfail dotstar or empty
  262    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)■)i)c)k)r).)n)e)tfail dotstar or empty
  263    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)■)c)k)r).)n)e)tfail dotstar or empty
  264    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)■)k)r).)n)e)tfail dotstar or empty
  265    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)■)r).)n)e)tfail dotstar or empty
  266    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)■).)n)e)tfail dotstar or empty
  267    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r)■)n)e)tfail dotstar or empty
  268    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)■)e)tfail dotstar or empty
  269    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)■)tfail dotstar or empty
  270    |  3     ((((((((((((((((((■t)■)p)(s)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)■fail dotstar or empty
  271    |  3     ((((((((((((((((((■t)t)■)(■)?):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  272    |  3     ((((((((((((((((((■t)t)■)(s){■}):)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  273    |  3     ((((((((((((((((((■t)t)■)(s)?)■)\/)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  274    |  3     ((((((((((((((((((■t)t)■)(s)?):)■)\/)\S).)f)l)i)c)k)r).)n)e)tfail dotstar or empty
  275    |  3     ((((((((((((((((((■t)t)■)(s)?):)\/)■)\S).)f)l)i)c)k)r).)n)e)t
1.0228328704833984
timeout