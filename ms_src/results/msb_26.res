
Given the regular expression:

  (gtm(\.)*click|gtm.formSubmit)

That that should match the strings:

  ✓ (0:13)   gtm.linkClick

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2      |  1     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3      |  1     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4      |  1     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5      |  1     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6      |  1     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7      |  1     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  8      |  1     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  9      |  1     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  10     |  1     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  11     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  12     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  13     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  14     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  15     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  16     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  17     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  18     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  19     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  20     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  21     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  22     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  23     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  24     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  25     |  2     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  26     |  2     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  27     |  2     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  28     |  2     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  29     |  2     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  30     |  2     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  31     |  2     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  32     |  2     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  33     |  2     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  34     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  35     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  36     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  37     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  38     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  39     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  40     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  41     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  42     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  43     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  44     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  45     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  46     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  47     |  2     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  48     |  2     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  49     |  2     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  50     |  2     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  51     |  2     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  52     |  2     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  53     |  2     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  54     |  2     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  55     |  2     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  56     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  57     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  58     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  59     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  60     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  61     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  62     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  63     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  64     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  65     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  66     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  67     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  68     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  69     |  2     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  70     |  2     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  71     |  2     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  72     |  2     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  73     |  2     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  74     |  2     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  75     |  2     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  76     |  2     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  77     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  78     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  79     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  80     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  81     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  82     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  83     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  84     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  85     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  86     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  87     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  88     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  89     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  90     |  2     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  91     |  2     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  92     |  2     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)m)([\.ikln])*)C)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add positive: gtm.click
add negative: gtmClick
  unsatisfiable SAT formula       
  93     |  2     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  94     |  2     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  95     |  2     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  96     |  2     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  97     |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  98     |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  99     |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  100    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  101    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  102    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  103    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  104    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  105    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  106    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  107    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  108    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  109    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  110    |  2     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  111    |  2     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  112    |  2     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  113    |  2     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  114    |  2     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  115    |  2     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  116    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  117    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  118    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  119    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  120    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  121    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  122    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  123    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  124    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  125    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  126    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  127    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  128    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  129    |  2     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  130    |  2     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  131    |  2     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  132    |  2     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  133    |  2     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  134    |  2     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  135    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  136    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  137    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  138    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  139    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  140    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  141    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  142    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  143    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  144    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  145    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  146    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  147    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  148    |  2     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  149    |  2     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  150    |  2     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  151    |  2     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)m)(\.)*)([\.cCikln]){2,6})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add negative: gtm.llick
  unsatisfiable SAT formula       
  152    |  2     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  153    |  2     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  154    |  2     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  155    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  156    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  157    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  158    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  159    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  160    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  161    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  162    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  163    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  164    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  165    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  166    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  167    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  168    |  2     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  169    |  2     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  170    |  2     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  171    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  172    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  173    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  174    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  175    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  176    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  177    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  178    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  179    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  180    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  181    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  182    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  183    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  184    |  2     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  185    |  2     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  186    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  187    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  188    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  189    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  190    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  191    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  192    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  193    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  194    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  195    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  196    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  197    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  198    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  199    |  2     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  200    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  201    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  202    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  203    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  204    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  205    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  206    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  207    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  208    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  209    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  210    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  211    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  212    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  213    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  214    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  215    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  216    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  217    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  218    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  219    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  220    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  221    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  222    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  223    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  224    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  225    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  226    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  227    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  228    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  229    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  230    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  231    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  232    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  233    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  234    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  235    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  236    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  237    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  238    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  239    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  240    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  241    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  242    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  243    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  244    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  245    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  246    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  247    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  248    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  249    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  250    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  251    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  252    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  253    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  254    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  255    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  256    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  257    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  258    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  259    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  260    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  261    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  262    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  263    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  264    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  265    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  266    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  267    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  268    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  269    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  270    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  271    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  272    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  273    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  274    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  275    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  276    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  277    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  278    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  279    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  280    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  281    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  282    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  283    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  284    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  285    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  286    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  287    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  288    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  289    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  290    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  291    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  292    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  293    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  294    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  295    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  296    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  297    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  298    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  299    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  300    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  301    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  302    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  303    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  304    |  2     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  305    |  3     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  306    |  3     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  307    |  3     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  308    |  3     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  309    |  3     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  310    |  3     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  311    |  3     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  312    |  3     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  313    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  314    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  315    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  316    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  317    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  318    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  319    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  320    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  321    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  322    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  323    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  324    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  325    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  326    |  3     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  327    |  3     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  328    |  3     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  329    |  3     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  330    |  3     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  331    |  3     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  332    |  3     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  333    |  3     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  334    |  3     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  335    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  336    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  337    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  338    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  339    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  340    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  341    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  342    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  343    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  344    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  345    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  346    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  347    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  348    |  3     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  349    |  3     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  350    |  3     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  351    |  3     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  352    |  3     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  353    |  3     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  354    |  3     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  355    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  356    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  357    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  358    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  359    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  360    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  361    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  362    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  363    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  364    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  365    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  366    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  367    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  368    |  3     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  369    |  3     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  370    |  3     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  371    |  3     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  372    |  3     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  373    |  3     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  374    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  375    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  376    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  377    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  378    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  379    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  380    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  381    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  382    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  383    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  384    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  385    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  386    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  387    |  3     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  388    |  3     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  389    |  3     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  390    |  3     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  391    |  3     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  392    |  3     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  393    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  394    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  395    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  396    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  397    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  398    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  399    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  400    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  401    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  402    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  403    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  404    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  405    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  406    |  3     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  407    |  3     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  408    |  3     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  409    |  3     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  410    |  3     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  411    |  3     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  412    |  3     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  413    |  3     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  414    |  3     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  415    |  3     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  416    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  417    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  418    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  419    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  420    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  421    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  422    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  423    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  424    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  425    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  426    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  427    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  428    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  429    |  3     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  430    |  3     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  431    |  3     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  432    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  433    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  434    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  435    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  436    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  437    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  438    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  439    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  440    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  441    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  442    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  443    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  444    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  445    |  3     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  446    |  3     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  447    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  448    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  449    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  450    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  451    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  452    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  453    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  454    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  455    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  456    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  457    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  458    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  459    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  460    |  3     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  461    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  462    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  463    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  464    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  465    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  466    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  467    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  468    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  469    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  470    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  471    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  472    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  473    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  474    |  3     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  475    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  476    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  477    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  478    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  479    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  480    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  481    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  482    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  483    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  484    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  485    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  486    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  487    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  488    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  489    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  490    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  491    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  492    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  493    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  494    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  495    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  496    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  497    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  498    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  499    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  500    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  501    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  502    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  503    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  504    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  505    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  506    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  507    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  508    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  509    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  510    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  511    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  512    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  513    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  514    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  515    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  516    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  517    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  518    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  519    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  520    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  521    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  522    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  523    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  524    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  525    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  526    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  527    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  528    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  529    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  530    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  531    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  532    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  533    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  534    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  535    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  536    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  537    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  538    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  539    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  540    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  541    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  542    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  543    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  544    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  545    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  546    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  547    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  548    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  549    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  550    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  551    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  552    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  553    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  554    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  555    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  556    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  557    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  558    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  559    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  560    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  561    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  562    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  563    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  564    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  565    |  3     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  566    |  3     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  567    |  3     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  568    |  3     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  569    |  3     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  570    |  3     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  571    |  3     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  572    |  3     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  573    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  574    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  575    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  576    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  577    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  578    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  579    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  580    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  581    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  582    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  583    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  584    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  585    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  586    |  3     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  587    |  3     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  588    |  3     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  589    |  3     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  590    |  3     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  591    |  3     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  592    |  3     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  593    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  594    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  595    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  596    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  597    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  598    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  599    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  600    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  601    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  602    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  603    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  604    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  605    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  606    |  3     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  607    |  3     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  608    |  3     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  609    |  3     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  610    |  3     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  611    |  3     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  612    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  613    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  614    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  615    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  616    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  617    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  618    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  619    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  620    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  621    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  622    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  623    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  624    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  625    |  3     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  626    |  3     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  627    |  3     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  628    |  3     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  629    |  3     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  630    |  3     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  631    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  632    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  633    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  634    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  635    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  636    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  637    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  638    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  639    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  640    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  641    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  642    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  643    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  644    |  3     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  645    |  3     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  646    |  3     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  647    |  3     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  648    |  3     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  649    |  3     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  650    |  3     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  651    |  3     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  652    |  3     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  653    |  3     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  654    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  655    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  656    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  657    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  658    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  659    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  660    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  661    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  662    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  663    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  664    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  665    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  666    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  667    |  3     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  668    |  3     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  669    |  3     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  670    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  671    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  672    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  673    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  674    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  675    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  676    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  677    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  678    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  679    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  680    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  681    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  682    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  683    |  3     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  684    |  3     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  685    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  686    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  687    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  688    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  689    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  690    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  691    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  692    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  693    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  694    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  695    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  696    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  697    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  698    |  3     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  699    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  700    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  701    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  702    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  703    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  704    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  705    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  706    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  707    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  708    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  709    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  710    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  711    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  712    |  3     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  713    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  714    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  715    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  716    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  717    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  718    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  719    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  720    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  721    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  722    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  723    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  724    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  725    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  726    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  727    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  728    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  729    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  730    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  731    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  732    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  733    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  734    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  735    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  736    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  737    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  738    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  739    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  740    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  741    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  742    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  743    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  744    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  745    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  746    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  747    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  748    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  749    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  750    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  751    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  752    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  753    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  754    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  755    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  756    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  757    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  758    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  759    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  760    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  761    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  762    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  763    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  764    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  765    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  766    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  767    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  768    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  769    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  770    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  771    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  772    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  773    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  774    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  775    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  776    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  777    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  778    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  779    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  780    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  781    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  782    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  783    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  784    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  785    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  786    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  787    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  788    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  789    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  790    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  791    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  792    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  793    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  794    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  795    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  796    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  797    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  798    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  799    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  800    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  801    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  802    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  803    |  3     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  804    |  3     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  805    |  3     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  806    |  3     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  807    |  3     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  808    |  3     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  809    |  3     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  810    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  811    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  812    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  813    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  814    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  815    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  816    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  817    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  818    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  819    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  820    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  821    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  822    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  823    |  3     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  824    |  3     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  825    |  3     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  826    |  3     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  827    |  3     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  828    |  3     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  829    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  830    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  831    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  832    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  833    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  834    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  835    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  836    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  837    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  838    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  839    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  840    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  841    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  842    |  3     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  843    |  3     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  844    |  3     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  845    |  3     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  846    |  3     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  847    |  3     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  848    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  849    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  850    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  851    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  852    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  853    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  854    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  855    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  856    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  857    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  858    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  859    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  860    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  861    |  3     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  862    |  3     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  863    |  3     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  864    |  3     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)([\.iklmn]){2,6})(\.)*)[cC])l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add negative: gtmiClick
  unsatisfiable SAT formula       
  865    |  3     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  866    |  3     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  867    |  3     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  868    |  3     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  869    |  3     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  870    |  3     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  871    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  872    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  873    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  874    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  875    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  876    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  877    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  878    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  879    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  880    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  881    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  882    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  883    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  884    |  3     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  885    |  3     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  886    |  3     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  887    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  888    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  889    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  890    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  891    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  892    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  893    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  894    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  895    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  896    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  897    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  898    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  899    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  900    |  3     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  901    |  3     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  902    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  903    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  904    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  905    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  906    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  907    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  908    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  909    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  910    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  911    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  912    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  913    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  914    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  915    |  3     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  916    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  917    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  918    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  919    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  920    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  921    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  922    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  923    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  924    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  925    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  926    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  927    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  928    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  929    |  3     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  930    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  931    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  932    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  933    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  934    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  935    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  936    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  937    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  938    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  939    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  940    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  941    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  942    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  943    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  944    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  945    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  946    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  947    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  948    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  949    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  950    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  951    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  952    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  953    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  954    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  955    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  956    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  957    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  958    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  959    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  960    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  961    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  962    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  963    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  964    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  965    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  966    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  967    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  968    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  969    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  970    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  971    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  972    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  973    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  974    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  975    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  976    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  977    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  978    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  979    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  980    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  981    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  982    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  983    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  984    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  985    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  986    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  987    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  988    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  989    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  990    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  991    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  992    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  993    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  994    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  995    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  996    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  997    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  998    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  999    |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  1000   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  1001   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  1002   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  1003   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  1004   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  1005   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  1006   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  1007   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  1008   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  1009   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  1010   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  1011   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  1012   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  1013   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  1014   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  1015   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  1016   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  1017   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  1018   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  1019   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  1020   |  3     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  1021   |  3     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1022   |  3     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1023   |  3     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1024   |  3     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1025   |  3     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1026   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1027   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1028   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1029   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1030   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1031   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1032   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1033   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1034   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1035   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1036   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1037   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1038   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1039   |  3     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1040   |  3     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1041   |  3     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1042   |  3     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1043   |  3     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1044   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1045   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1046   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1047   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1048   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1049   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1050   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1051   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1052   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  1053   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  1054   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  1055   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  1056   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  1057   |  3     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  1058   |  3     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1059   |  3     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  1060   |  3     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1061   |  3     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)m)([\.iln])*)([\.k][Cc]))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add negative: gtmkClick
  unsatisfiable SAT formula       
  1062   |  3     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  1063   |  3     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1064   |  3     ((((((((gt)m)(■)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1065   |  3     ((((((((gt)m)(■)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1066   |  3     ((((((((gt)m)(■)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1067   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1068   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1069   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1070   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1071   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1072   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1073   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1074   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1075   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1076   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1077   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1078   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1079   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1080   |  3     ((((((((gt)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1081   |  3     ((((((((gt)m)(■)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1082   |  3     ((((((((gt)m)(■)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1083   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1084   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1085   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1086   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1087   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1088   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1089   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1090   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1091   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1092   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1093   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1094   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1095   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1096   |  3     ((((((((gt)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1097   |  3     ((((((((gt)m)(■)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1098   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1099   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1100   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1101   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1102   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1103   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1104   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1105   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1106   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1107   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1108   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1109   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1110   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1111   |  3     ((((((((gt)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1112   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1113   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1114   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1115   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1116   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1117   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1118   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1119   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1120   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1121   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1122   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1123   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1124   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1125   |  3     ((((((((gt)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1126   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1127   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1128   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1129   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1130   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1131   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1132   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1133   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1134   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1135   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1136   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1137   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1138   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1139   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1140   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1141   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1142   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1143   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1144   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1145   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1146   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1147   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1148   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1149   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1150   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1151   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1152   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1153   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1154   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1155   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1156   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1157   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1158   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1159   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1160   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1161   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1162   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1163   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1164   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1165   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1166   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1167   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1168   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1169   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1170   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1171   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1172   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1173   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1174   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1175   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1176   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1177   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1178   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1179   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1180   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1181   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  1182   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  1183   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  1184   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  1185   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  1186   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  1187   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  1188   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  1189   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  1190   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  1191   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  1192   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  1193   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  1194   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  1195   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  1196   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  1197   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  1198   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  1199   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  1200   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  1201   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  1202   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  1203   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  1204   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  1205   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  1206   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  1207   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  1208   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  1209   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  1210   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  1211   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  1212   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  1213   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  1214   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  1215   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  1216   |  3     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  1217   |  3     ((((((((gt)m)(\.){■})■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1218   |  3     ((((((((gt)m)(\.){■})■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1219   |  3     ((((((((gt)m)(\.){■})■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1220   |  3     ((((((((gt)m)(\.){■})■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1221   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1222   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1223   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1224   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1225   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1226   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1227   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1228   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1229   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1230   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1231   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1232   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1233   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1234   |  3     ((((((((gt)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1235   |  3     ((((((((gt)m)■)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1236   |  3     ((((((((gt)m)(\.){■})(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1237   |  3     ((((((((gt)m)(\.){■})(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1238   |  3     ((((((((gt)m)(\.){■})(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1239   |  3     ((((((((gt)m)(\.){■})c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1240   |  3     ((((((((gt)m)(\.){■})c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1241   |  3     ((((((((gt)m)(\.){■})c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1242   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1243   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1244   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1245   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1246   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1247   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1248   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1249   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1250   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1251   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1252   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1253   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1254   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1255   |  3     ((((((((gt)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1256   |  3     ((((((((gt)m)■)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1257   |  3     ((((((((gt)m)(\.){■})c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1258   |  3     ((((((((gt)m)(\.){■})c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1259   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1260   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1261   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1262   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1263   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1264   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1265   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1266   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1267   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1268   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1269   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1270   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1271   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1272   |  3     ((((((((gt)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1273   |  3     ((((((((gt)m)■)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1274   |  3     ((((((((gt)m)(\.){■})c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1275   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1276   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1277   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1278   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1279   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1280   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1281   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1282   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1283   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1284   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1285   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1286   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1287   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1288   |  3     ((((((((gt)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1289   |  3     ((((((((gt)m)■)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1290   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1291   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1292   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1293   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1294   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1295   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1296   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1297   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1298   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1299   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1300   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1301   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1302   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1303   |  3     ((((((((gt)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1304   |  3     ((((((((gt)m)■)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1305   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1306   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1307   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1308   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1309   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1310   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1311   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1312   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1313   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1314   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1315   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1316   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1317   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1318   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1319   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1320   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1321   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1322   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1323   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1324   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1325   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1326   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1327   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1328   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1329   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1330   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1331   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1332   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1333   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1334   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1335   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1336   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1337   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1338   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1339   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1340   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1341   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1342   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1343   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1344   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1345   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1346   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1347   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1348   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1349   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1350   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1351   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1352   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1353   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1354   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1355   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1356   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1357   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1358   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1359   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1360   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1361   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1362   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1363   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1364   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1365   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  1366   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  1367   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  1368   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  1369   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  1370   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  1371   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  1372   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  1373   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1374   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  1375   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  1376   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  1377   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  1378   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  1379   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  1380   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  1381   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1382   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  1383   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  1384   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  1385   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  1386   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  1387   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  1388   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1389   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  1390   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  1391   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  1392   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  1393   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  1394   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1395   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  1396   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  1397   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  1398   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  1399   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1400   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  1401   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  1402   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  1403   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1404   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  1405   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  1406   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1407   |  3     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  1408   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1409   |  3     ((((((((gt)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1410   |  3     ((((((((gt)m)(\.)*)■)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1411   |  3     ((((((((gt)m)(\.)*)■)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1412   |  3     ((((((((gt)m)(\.)*)■)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1413   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1414   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1415   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1416   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1417   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1418   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1419   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1420   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1421   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1422   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1423   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1424   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1425   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1426   |  3     ((((((((gt)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1427   |  3     ((((((((gt)m)(\.)*)(■■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1428   |  3     ((((((((gt)m)(\.)*)(■|■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1429   |  3     ((((((((gt)m)(\.)*)(■){■})■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1430   |  3     ((((((((gt)m)(\.)*)■)(■■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1431   |  3     ((((((((gt)m)(\.)*)■)(■|■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1432   |  3     ((((((((gt)m)(\.)*)■)(■){■})i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1433   |  3     ((((((((gt)m)(\.)*)■)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1434   |  3     ((((((((gt)m)(\.)*)■)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1435   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1436   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1437   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1438   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1439   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1440   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1441   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1442   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1443   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1444   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1445   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1446   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1447   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1448   |  3     ((((((((gt)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1449   |  3     ((((((((gt)m)(\.)*)(■■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1450   |  3     ((((((((gt)m)(\.)*)(■|■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1451   |  3     ((((((((gt)m)(\.)*)(■){■})l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1452   |  3     ((((((((gt)m)(\.)*)■)l)(■■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1453   |  3     ((((((((gt)m)(\.)*)■)l)(■|■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1454   |  3     ((((((((gt)m)(\.)*)■)l)(■){■})c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1455   |  3     ((((((((gt)m)(\.)*)■)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1456   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1457   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1458   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1459   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1460   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1461   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1462   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1463   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1464   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1465   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1466   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1467   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1468   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1469   |  3     ((((((((gt)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1470   |  3     ((((((((gt)m)(\.)*)(■■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1471   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1472   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1473   |  3     ((((((((gt)m)(\.)*)■)l)i)(■■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1474   |  3     ((((((((gt)m)(\.)*)■)l)i)(■|■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1475   |  3     ((((((((gt)m)(\.)*)■)l)i)(■){■})k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)m)(\.)*)[\.c])l)i)([cCikln]){1,6})k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add negative: gtm.liCk
  unsatisfiable SAT formula       
  1476   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1477   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1478   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1479   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1480   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1481   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1482   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1483   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1484   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1485   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1486   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1487   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1488   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1489   |  3     ((((((((gt)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1490   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1491   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1492   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1493   |  3     ((((((((gt)m)(\.)*)■)l)i)c)(■■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1494   |  3     ((((((((gt)m)(\.)*)■)l)i)c)(■|■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1495   |  3     ((((((((gt)m)(\.)*)■)l)i)c)(■){■}|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1496   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1497   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1498   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1499   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1500   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1501   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1502   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1503   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1504   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1505   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1506   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1507   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1508   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1509   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1510   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1511   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1512   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|(((((((((((((■■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1513   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|(((((((((((((■|■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1514   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|(((((((((((((■){■}t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1515   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1516   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1517   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1518   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1519   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1520   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1521   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1522   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1523   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1524   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1525   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1526   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1527   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1528   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1529   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1530   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g(■■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1531   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g(■|■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1532   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((g(■){■})m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1533   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1534   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dot
  1535   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dot
  1536   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dot
  1537   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dot
  1538   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dot
  1539   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dot
  1540   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dot
  1541   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dot
  1542   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dot
  1543   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dot
  1544   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1545   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  1546   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1547   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  1548   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■|■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  1549   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■){■}).)f)o)r)m)S)u)b)m)i)t)fail dot
  1550   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dot
  1551   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dot
  1552   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dot
  1553   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dot
  1554   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dot
  1555   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dot
  1556   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dot
  1557   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dot
  1558   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dot
  1559   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dot
  1560   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1561   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  1562   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1563   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■■))f)o)r)m)S)u)b)m)i)t)fail dot
  1564   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■|■))f)o)r)m)S)u)b)m)i)t)fail dot
  1565   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■){■})f)o)r)m)S)u)b)m)i)t)fail dot
  1566   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dot
  1567   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dot
  1568   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dot
  1569   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dot
  1570   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dot
  1571   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dot
  1572   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dot
  1573   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dot
  1574   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dot
  1575   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1576   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  1577   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1578   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■■))o)r)m)S)u)b)m)i)t)fail dot
  1579   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■|■))o)r)m)S)u)b)m)i)t)fail dot
  1580   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■){■})o)r)m)S)u)b)m)i)t)fail dot
  1581   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dot
  1582   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dot
  1583   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dot
  1584   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dot
  1585   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dot
  1586   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dot
  1587   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dot
  1588   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dot
  1589   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1590   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  1591   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1592   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■■))r)m)S)u)b)m)i)t)fail dot
  1593   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■|■))r)m)S)u)b)m)i)t)fail dot
  1594   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■){■})r)m)S)u)b)m)i)t)fail dot
  1595   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dot
  1596   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dot
  1597   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dot
  1598   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dot
  1599   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dot
  1600   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dot
  1601   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dot
  1602   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1603   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  1604   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1605   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■■))m)S)u)b)m)i)t)fail dot
  1606   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■|■))m)S)u)b)m)i)t)fail dot
  1607   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■){■})m)S)u)b)m)i)t)fail dot
  1608   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dot
  1609   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dot
  1610   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dot
  1611   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dot
  1612   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dot
  1613   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dot
  1614   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1615   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  1616   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1617   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■■))S)u)b)m)i)t)fail dot
  1618   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■|■))S)u)b)m)i)t)fail dot
  1619   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■){■})S)u)b)m)i)t)fail dot
  1620   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dot
  1621   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dot
  1622   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dot
  1623   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dot
  1624   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dot
  1625   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1626   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  1627   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  1628   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■■))u)b)m)i)t)fail dot
  1629   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■|■))u)b)m)i)t)fail dot
  1630   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■){■})u)b)m)i)t)fail dot
  1631   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dot
  1632   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dot
  1633   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dot
  1634   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dot
  1635   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1636   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  1637   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  1638   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■■))b)m)i)t)fail dot
  1639   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■|■))b)m)i)t)fail dot
  1640   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■){■})b)m)i)t)fail dot
  1641   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dot
  1642   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dot
  1643   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dot
  1644   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1645   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  1646   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  1647   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■■))m)i)t)fail dot
  1648   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■|■))m)i)t)fail dot
  1649   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■){■})m)i)t)fail dot
  1650   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dot
  1651   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dot
  1652   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1653   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  1654   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  1655   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■■))i)t)fail dot
  1656   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■|■))i)t)fail dot
  1657   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■){■})i)t)fail dot
  1658   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dot
  1659   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1660   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  1661   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  1662   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■■))t)fail dot
  1663   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■|■))t)fail dot
  1664   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■){■})t)fail dot
  1665   |  3     ((((((((gt)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1666   |  3     ((((((((gt)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  1667   |  3     ((((((((gt)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  1668   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■■))fail dot
  1669   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■|■))fail dot
  1670   |  3     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■){■})fail dot
  1671   |  3     ((((((((gt)m)(\.)*)(■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1672   |  3     ((((((((gt)m)(\.)*)((■■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1673   |  3     ((((((((gt)m)(\.)*)((■|■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1674   |  3     ((((((((gt)m)(\.)*)((■){■}■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1675   |  3     ((((((((gt)m)(\.)*)(■■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1676   |  3     ((((((((gt)m)(\.)*)((■|■)|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  1677   |  3     ((((((((gt)m)(\.)*)((■){■}|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)m)(\.)*)(([Cikln]){3,5}|c))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add negative: gtmclick
  unsatisfiable SAT formula       
  1678   |  3     ((((((((gt)m)(\.)*)(■■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1679   |  3     ((((((((gt)m)(\.)*)((■|■)){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  1680   |  3     ((((((((gt)m)(\.)*)((■){■}){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  1681   |  3     ((((((((gt)m)(\.)*)c)■)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1682   |  3     ((((((((gt)m)(\.)*)c)■)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1683   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1684   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1685   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1686   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1687   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1688   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1689   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1690   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1691   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1692   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1693   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1694   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1695   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1696   |  3     ((((((((gt)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1697   |  3     ((((((((gt)m)(\.)*)c)■)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1698   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1699   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1700   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1701   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1702   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1703   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1704   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1705   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1706   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1707   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1708   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1709   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1710   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1711   |  3     ((((((((gt)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1712   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1713   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1714   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1715   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1716   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1717   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1718   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1719   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1720   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1721   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1722   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1723   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1724   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1725   |  3     ((((((((gt)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1726   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1727   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1728   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1729   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1730   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1731   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1732   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1733   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1734   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1735   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1736   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1737   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1738   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1739   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1740   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1741   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1742   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1743   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1744   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1745   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1746   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1747   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1748   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1749   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1750   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1751   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1752   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1753   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1754   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1755   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1756   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1757   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1758   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1759   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1760   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1761   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1762   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1763   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1764   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1765   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1766   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1767   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1768   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1769   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1770   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1771   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1772   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1773   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1774   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1775   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1776   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1777   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1778   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1779   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1780   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1781   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  1782   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  1783   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  1784   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  1785   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  1786   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  1787   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  1788   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  1789   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  1790   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  1791   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  1792   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  1793   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  1794   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  1795   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  1796   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  1797   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  1798   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  1799   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  1800   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  1801   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  1802   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  1803   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  1804   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  1805   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  1806   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  1807   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  1808   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  1809   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  1810   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  1811   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  1812   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  1813   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  1814   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  1815   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  1816   |  3     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  1817   |  3     ((((((((gt)m)(\.)*)c)l)■)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1818   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1819   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1820   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1821   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1822   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1823   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1824   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1825   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1826   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1827   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1828   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1829   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1830   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1831   |  3     ((((((((gt)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1832   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1833   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1834   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1835   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1836   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1837   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1838   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1839   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1840   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1841   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1842   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1843   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1844   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1845   |  3     ((((((((gt)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1846   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1847   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1848   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1849   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1850   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1851   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1852   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1853   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1854   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1855   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1856   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1857   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1858   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1859   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1860   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1861   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1862   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1863   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1864   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1865   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1866   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1867   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1868   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1869   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1870   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1871   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1872   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1873   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1874   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1875   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1876   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1877   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1878   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1879   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1880   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1881   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1882   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1883   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1884   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1885   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1886   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1887   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1888   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1889   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1890   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1891   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1892   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1893   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1894   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1895   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1896   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1897   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1898   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1899   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1900   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1901   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  1902   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  1903   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  1904   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  1905   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  1906   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  1907   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  1908   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  1909   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  1910   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  1911   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  1912   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  1913   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  1914   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  1915   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  1916   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  1917   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  1918   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  1919   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  1920   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  1921   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  1922   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  1923   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  1924   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  1925   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  1926   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  1927   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  1928   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  1929   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  1930   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  1931   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  1932   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  1933   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  1934   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  1935   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  1936   |  3     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  1937   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1938   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1939   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1940   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1941   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1942   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1943   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1944   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1945   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1946   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1947   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1948   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1949   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1950   |  3     ((((((((gt)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1951   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1952   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1953   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1954   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1955   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1956   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1957   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1958   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1959   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1960   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1961   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1962   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1963   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1964   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1965   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1966   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1967   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1968   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1969   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1970   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1971   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1972   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1973   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1974   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1975   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1976   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1977   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1978   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1979   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1980   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1981   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1982   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1983   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1984   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1985   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1986   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1987   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  1988   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1989   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1990   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  1991   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  1992   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  1993   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  1994   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  1995   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  1996   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  1997   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  1998   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  1999   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2000   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2001   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2002   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2003   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2004   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2005   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2006   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2007   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2008   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2009   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2010   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2011   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2012   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2013   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2014   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2015   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2016   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2017   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2018   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2019   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2020   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2021   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2022   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2023   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2024   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2025   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2026   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2027   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2028   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2029   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2030   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2031   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2032   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2033   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2034   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2035   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2036   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2037   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2038   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2039   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2040   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2041   |  3     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2042   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2043   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2044   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2045   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2046   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2047   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2048   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2049   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2050   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2051   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2052   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2053   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2054   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2055   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2056   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2057   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2058   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2059   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2060   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2061   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2062   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2063   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2064   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2065   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2066   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2067   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2068   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2069   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2070   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2071   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2072   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2073   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2074   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2075   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2076   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2077   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2078   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2079   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2080   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2081   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2082   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2083   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2084   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2085   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2086   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2087   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2088   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2089   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2090   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2091   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2092   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2093   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2094   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2095   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2096   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2097   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2098   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2099   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2100   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2101   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2102   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2103   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2104   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2105   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2106   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2107   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2108   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2109   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2110   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2111   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2112   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2113   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2114   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2115   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2116   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2117   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2118   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2119   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2120   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2121   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2122   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2123   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2124   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2125   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2126   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2127   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2128   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2129   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2130   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2131   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2132   |  3     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2133   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2134   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2135   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2136   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2137   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2138   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2139   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2140   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2141   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2142   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2143   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2144   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2145   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2146   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2147   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2148   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2149   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2150   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2151   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2152   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2153   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2154   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2155   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2156   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2157   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2158   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2159   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2160   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2161   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2162   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2163   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2164   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2165   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2166   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2167   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2168   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2169   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2170   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2171   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2172   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2173   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2174   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2175   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2176   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2177   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2178   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2179   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2180   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2181   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2182   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2183   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2184   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2185   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2186   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2187   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2188   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2189   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2190   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2191   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2192   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2193   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2194   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2195   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2196   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2197   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2198   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2199   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2200   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2201   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2202   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2203   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2204   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2205   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2206   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2207   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2208   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2209   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2210   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2211   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2212   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2213   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2214   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2215   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2216   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2217   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2218   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2219   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2220   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2221   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2222   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2223   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2224   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2225   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2226   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2227   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2228   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2229   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2230   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2231   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2232   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2233   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2234   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2235   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2236   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2237   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2238   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2239   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2240   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2241   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2242   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2243   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2244   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2245   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2246   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2247   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2248   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2249   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2250   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2251   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2252   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2253   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2254   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2255   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2256   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2257   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2258   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2259   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2260   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2261   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2262   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2263   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2264   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2265   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2266   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2267   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2268   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2269   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2270   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2271   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2272   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2273   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2274   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2275   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2276   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2277   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2278   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2279   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2280   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2281   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2282   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2283   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2284   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2285   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2286   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2287   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2288   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2289   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2290   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2291   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2292   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2293   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2294   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2295   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2296   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2297   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2298   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2299   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2300   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2301   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2302   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2303   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2304   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2305   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2306   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2307   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2308   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2309   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2310   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2311   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2312   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2313   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2314   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2315   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2316   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2317   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2318   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2319   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2320   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2321   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2322   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2323   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2324   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2325   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2326   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2327   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2328   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2329   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2330   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2331   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2332   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2333   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2334   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2335   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2336   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2337   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2338   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2339   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2340   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2341   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2342   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2343   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2344   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2345   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2346   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2347   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2348   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2349   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2350   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2351   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2352   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2353   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2354   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2355   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2356   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2357   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2358   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2359   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2360   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2361   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2362   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2363   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2364   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2365   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2366   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2367   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2368   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2369   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2370   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2371   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2372   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2373   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2374   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2375   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2376   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2377   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2378   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2379   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2380   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2381   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2382   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2383   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2384   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2385   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2386   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2387   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2388   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2389   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2390   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2391   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2392   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2393   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2394   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2395   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2396   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2397   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2398   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2399   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2400   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2401   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2402   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2403   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2404   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2405   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2406   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2407   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2408   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2409   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2410   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2411   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2412   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2413   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2414   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)■)S)u)b)m)i)t)fail dotstar or empty
  2415   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)■)u)b)m)i)t)fail dotstar or empty
  2416   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)■)b)m)i)t)fail dotstar or empty
  2417   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)■)m)i)t)fail dotstar or empty
  2418   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)■)i)t)fail dotstar or empty
  2419   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)■)t)fail dotstar or empty
  2420   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)■)fail dotstar or empty
  2421   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)■)u)b)m)i)t)fail dotstar or empty
  2422   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)■)b)m)i)t)fail dotstar or empty
  2423   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)■)m)i)t)fail dotstar or empty
  2424   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)■)i)t)fail dotstar or empty
  2425   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)■)t)fail dotstar or empty
  2426   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)■)fail dotstar or empty
  2427   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)■)b)m)i)t)fail dotstar or empty
  2428   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)■)m)i)t)fail dotstar or empty
  2429   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)■)i)t)fail dotstar or empty
  2430   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)■)t)fail dotstar or empty
  2431   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)■)fail dotstar or empty
  2432   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)■)m)i)t)fail dotstar or empty
  2433   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)■)i)t)fail dotstar or empty
  2434   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)■)t)fail dotstar or empty
  2435   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)■)fail dotstar or empty
  2436   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)■)i)t)fail dotstar or empty
  2437   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)■)t)fail dotstar or empty
  2438   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)■)fail dotstar or empty
  2439   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)■)t)fail dotstar or empty
  2440   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)■)fail dotstar or empty
  2441   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)■)fail dotstar or empty
  2442   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)■)u)b)m)i)t)fail dotstar or empty
  2443   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)■)b)m)i)t)fail dotstar or empty
  2444   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)■)m)i)t)fail dotstar or empty
  2445   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)■)i)t)fail dotstar or empty
  2446   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)■)t)fail dotstar or empty
  2447   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)■)fail dotstar or empty
  2448   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)■)b)m)i)t)fail dotstar or empty
  2449   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)■)m)i)t)fail dotstar or empty
  2450   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)■)i)t)fail dotstar or empty
  2451   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)■)t)fail dotstar or empty
  2452   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)■)fail dotstar or empty
  2453   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)■)m)i)t)fail dotstar or empty
  2454   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)■)i)t)fail dotstar or empty
  2455   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)■)t)fail dotstar or empty
  2456   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)■)fail dotstar or empty
  2457   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)■)i)t)fail dotstar or empty
  2458   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)■)t)fail dotstar or empty
  2459   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)■)fail dotstar or empty
  2460   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)■)t)fail dotstar or empty
  2461   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)■)fail dotstar or empty
  2462   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)■)fail dotstar or empty
  2463   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)■)b)m)i)t)fail dotstar or empty
  2464   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)■)m)i)t)fail dotstar or empty
  2465   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)■)i)t)fail dotstar or empty
  2466   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)■)t)fail dotstar or empty
  2467   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)■)fail dotstar or empty
  2468   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)■)m)i)t)fail dotstar or empty
  2469   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)■)i)t)fail dotstar or empty
  2470   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)■)t)fail dotstar or empty
  2471   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)■)fail dotstar or empty
  2472   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)■)i)t)fail dotstar or empty
  2473   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)■)t)fail dotstar or empty
  2474   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)■)fail dotstar or empty
  2475   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)■)t)fail dotstar or empty
  2476   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)■)fail dotstar or empty
  2477   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)■)fail dotstar or empty
  2478   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)■)m)i)t)fail dotstar or empty
  2479   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)■)i)t)fail dotstar or empty
  2480   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)■)t)fail dotstar or empty
  2481   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)■)fail dotstar or empty
  2482   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)■)i)t)fail dotstar or empty
  2483   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)■)t)fail dotstar or empty
  2484   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)■)fail dotstar or empty
  2485   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)■)t)fail dotstar or empty
  2486   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)■)fail dotstar or empty
  2487   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)■)fail dotstar or empty
  2488   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)■)i)t)fail dotstar or empty
  2489   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)■)t)fail dotstar or empty
  2490   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)■)fail dotstar or empty
  2491   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)■)t)fail dotstar or empty
  2492   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)■)fail dotstar or empty
  2493   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)■)fail dotstar or empty
  2494   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)■)t)fail dotstar or empty
  2495   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)■)fail dotstar or empty
  2496   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)■)fail dotstar or empty
  2497   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)■)fail dotstar or empty
  2498   |  4     ((((((((■■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2499   |  4     ((((((((■■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2500   |  4     ((((((((■■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2501   |  4     ((((((((■■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2502   |  4     ((((((((■■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2503   |  4     ((((((((■■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2504   |  4     ((((((((■■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2505   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2506   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2507   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2508   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2509   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2510   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2511   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2512   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2513   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2514   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2515   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2516   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2517   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2518   |  4     ((((((((■■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2519   |  4     ((((((((■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2520   |  4     ((((((((■■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2521   |  4     ((((((((■■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2522   |  4     ((((((((■■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2523   |  4     ((((((((■■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2524   |  4     ((((((((■■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2525   |  4     ((((((((■■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2526   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2527   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2528   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2529   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2530   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2531   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2532   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2533   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2534   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2535   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2536   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2537   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2538   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2539   |  4     ((((((((■■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2540   |  4     ((((((((■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2541   |  4     ((((((((■■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2542   |  4     ((((((((■■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2543   |  4     ((((((((■■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2544   |  4     ((((((((■■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2545   |  4     ((((((((■■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2546   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2547   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2548   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2549   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2550   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2551   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2552   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2553   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2554   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2555   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2556   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2557   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2558   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2559   |  4     ((((((((■■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2560   |  4     ((((((((■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2561   |  4     ((((((((■■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2562   |  4     ((((((((■■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2563   |  4     ((((((((■■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2564   |  4     ((((((((■■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2565   |  4     ((((((((■■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2566   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2567   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2568   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  2569   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  2570   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  2571   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  2572   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  2573   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  2574   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  2575   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  2576   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  2577   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  2578   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  2579   |  4     ((((((((■■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  2580   |  4     ((((((((■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2581   |  4     (((((((((■■)■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2582   |  4     (((((((((■|■)■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2583   |  4     (((((((((■){■}■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2584   |  4     ((((((((■■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2585   |  4     ((((((((■■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2586   |  4     ((((((((■■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2587   |  4     ((((((((■■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2588   |  4     ((((((((■■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2589   |  4     ((((((((■■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2590   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2591   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2592   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2593   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2594   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2595   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2596   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2597   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2598   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2599   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2600   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2601   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2602   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2603   |  4     ((((((((■■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2604   |  4     ((((((((■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2605   |  4     ((((((((■■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2606   |  4     ((((((((■■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2607   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2608   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2609   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2610   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2611   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2612   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2613   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2614   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2615   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2616   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2617   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2618   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2619   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2620   |  4     ((((((((■■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2621   |  4     ((((((((■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2622   |  4     ((((((((■■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2623   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2624   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2625   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2626   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2627   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2628   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2629   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2630   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2631   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2632   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2633   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2634   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2635   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2636   |  4     ((((((((■■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2637   |  4     ((((((((■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2638   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2639   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2640   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2641   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2642   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2643   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2644   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2645   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2646   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2647   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2648   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2649   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2650   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2651   |  4     ((((((((■■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2652   |  4     ((((((((■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2653   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2654   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2655   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2656   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2657   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2658   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2659   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2660   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2661   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2662   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2663   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2664   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2665   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2666   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2667   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2668   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2669   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2670   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2671   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2672   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2673   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2674   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2675   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2676   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2677   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2678   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2679   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2680   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2681   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2682   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2683   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2684   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2685   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2686   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2687   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2688   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2689   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2690   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2691   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2692   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2693   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2694   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2695   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2696   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2697   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2698   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2699   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2700   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2701   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2702   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2703   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2704   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2705   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2706   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2707   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2708   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2709   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2710   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2711   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2712   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2713   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2714   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2715   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2716   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2717   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2718   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2719   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2720   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2721   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2722   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2723   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2724   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2725   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2726   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2727   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2728   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2729   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2730   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2731   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2732   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2733   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2734   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2735   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2736   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2737   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2738   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2739   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2740   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2741   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2742   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2743   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2744   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2745   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2746   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2747   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2748   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2749   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2750   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2751   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2752   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2753   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2754   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2755   |  4     ((((((((■■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2756   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2757   |  4     ((((((((■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2758   |  4     (((((((■m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2759   |  4     ((((((((■t)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2760   |  4     ((((((((■t)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2761   |  4     ((((((((■t)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2762   |  4     ((((((((■t)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2763   |  4     ((((((((■t)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2764   |  4     ((((((((■t)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2765   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2766   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2767   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2768   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2769   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2770   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2771   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2772   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2773   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2774   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2775   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2776   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2777   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2778   |  4     ((((((((■t)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2779   |  4     ((((((((■t)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2780   |  4     ((((((((■t)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2781   |  4     ((((((((■t)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2782   |  4     ((((((((■t)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2783   |  4     ((((((((■t)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2784   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2785   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2786   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2787   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2788   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2789   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2790   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2791   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2792   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2793   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2794   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2795   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2796   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2797   |  4     ((((((((■t)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2798   |  4     ((((((((■t)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2799   |  4     ((((((((■t)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2800   |  4     ((((((((■t)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2801   |  4     ((((((((■t)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2802   |  4     ((((((((■t)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2803   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2804   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2805   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  2806   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  2807   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  2808   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  2809   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  2810   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  2811   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  2812   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  2813   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  2814   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  2815   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  2816   |  4     ((((((((■t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  2817   |  4     (((((((((■■)t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2818   |  4     (((((((((■|■)t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2819   |  4     (((((((((■){■}t)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2820   |  4     ((((((((■t)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2821   |  4     ((((((((■t)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2822   |  4     ((((((((■t)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2823   |  4     ((((((((■t)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2824   |  4     ((((((((■t)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  2825   |  4     ((((((((■t)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2826   |  4     ((((((((■t)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2827   |  4     ((((((((■t)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2828   |  4     ((((((((■t)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2829   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2830   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2831   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2832   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2833   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2834   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2835   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2836   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2837   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2838   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2839   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2840   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2841   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2842   |  4     ((((((((■t)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2843   |  4     ((((((((■t)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2844   |  4     ((((((((■t)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2845   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2846   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2847   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2848   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2849   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2850   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2851   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2852   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2853   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2854   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2855   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2856   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2857   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2858   |  4     ((((((((■t)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2859   |  4     ((((((((■t)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2860   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2861   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2862   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2863   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2864   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2865   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2866   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2867   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2868   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2869   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2870   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2871   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2872   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2873   |  4     ((((((((■t)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2874   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2875   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2876   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2877   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2878   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2879   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2880   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2881   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2882   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2883   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2884   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2885   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2886   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2887   |  4     ((((((((■t)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2888   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2889   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2890   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2891   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2892   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2893   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2894   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2895   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2896   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2897   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2898   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2899   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2900   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2901   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2902   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2903   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2904   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2905   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2906   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2907   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2908   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2909   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2910   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2911   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2912   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2913   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2914   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2915   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2916   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2917   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2918   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2919   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2920   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2921   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2922   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2923   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2924   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2925   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2926   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2927   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2928   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2929   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2930   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2931   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2932   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2933   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2934   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2935   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2936   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2937   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2938   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2939   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2940   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2941   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2942   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2943   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  2944   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  2945   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  2946   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  2947   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  2948   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  2949   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  2950   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  2951   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  2952   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  2953   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  2954   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  2955   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  2956   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  2957   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  2958   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  2959   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  2960   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  2961   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  2962   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  2963   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  2964   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  2965   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  2966   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  2967   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  2968   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  2969   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  2970   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  2971   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  2972   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  2973   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  2974   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  2975   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  2976   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  2977   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  2978   |  4     ((((((((■t)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  2979   |  4     ((((((((■t)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2980   |  4     ((((((((■t)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2981   |  4     ((((((((■t)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2982   |  4     ((((((((■t)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2983   |  4     ((((((((■t)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2984   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2985   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2986   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2987   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2988   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2989   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  2990   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  2991   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  2992   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  2993   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  2994   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  2995   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  2996   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  2997   |  4     ((((((((■t)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  2998   |  4     ((((((((■t)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  2999   |  4     ((((((((■t)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3000   |  4     ((((((((■t)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3001   |  4     ((((((((■t)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3002   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3003   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3004   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3005   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3006   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3007   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3008   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3009   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3010   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  3011   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  3012   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  3013   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  3014   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  3015   |  4     ((((((((■t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  3016   |  4     (((((((((■■)t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3017   |  4     (((((((((■|■)t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  3018   |  4     (((((((((■){■}t)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3019   |  4     ((((((((■t)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3020   |  4     ((((((((■t)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  3021   |  4     ((((((((■t)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3022   |  4     ((((((((■t)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3023   |  4     ((((((((■t)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  3024   |  4     ((((((((■t)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3025   |  4     ((((((((■t)m)(■)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3026   |  4     ((((((((■t)m)(■)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3027   |  4     ((((((((■t)m)(■)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3028   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3029   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3030   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3031   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3032   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3033   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3034   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3035   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3036   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3037   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3038   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3039   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3040   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3041   |  4     ((((((((■t)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3042   |  4     ((((((((■t)m)(■)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3043   |  4     ((((((((■t)m)(■)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3044   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3045   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3046   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3047   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3048   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3049   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3050   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3051   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3052   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3053   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3054   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3055   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3056   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3057   |  4     ((((((((■t)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3058   |  4     ((((((((■t)m)(■)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3059   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3060   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3061   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3062   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3063   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3064   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3065   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3066   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3067   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3068   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3069   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3070   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3071   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3072   |  4     ((((((((■t)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3073   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3074   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3075   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3076   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3077   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3078   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3079   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3080   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3081   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3082   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3083   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3084   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3085   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3086   |  4     ((((((((■t)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3087   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3088   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3089   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3090   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3091   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3092   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3093   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3094   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3095   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3096   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3097   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3098   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3099   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3100   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3101   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3102   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3103   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3104   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3105   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3106   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3107   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3108   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3109   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3110   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3111   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3112   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3113   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3114   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3115   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3116   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3117   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3118   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3119   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3120   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3121   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3122   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3123   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3124   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3125   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3126   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3127   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3128   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3129   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3130   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3131   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3132   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3133   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3134   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3135   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3136   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3137   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3138   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3139   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3140   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3141   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3142   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  3143   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  3144   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  3145   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  3146   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  3147   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  3148   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  3149   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  3150   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  3151   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  3152   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  3153   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  3154   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  3155   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  3156   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  3157   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  3158   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  3159   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  3160   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  3161   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  3162   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  3163   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  3164   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  3165   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  3166   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  3167   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  3168   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  3169   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  3170   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  3171   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  3172   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  3173   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  3174   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  3175   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  3176   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  3177   |  4     ((((((((■t)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  3178   |  4     ((((((((■t)m)(\.){■})■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3179   |  4     ((((((((■t)m)(\.){■})■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3180   |  4     ((((((((■t)m)(\.){■})■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3181   |  4     ((((((((■t)m)(\.){■})■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3182   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3183   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3184   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3185   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3186   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3187   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3188   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3189   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3190   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3191   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3192   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3193   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3194   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3195   |  4     ((((((((■t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3196   |  4     ((((((((■t)m)■)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3197   |  4     (((((((((■■)t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3198   |  4     (((((((((■|■)t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3199   |  4     (((((((((■){■}t)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3200   |  4     ((((((((■t)m)(\.){■})(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3201   |  4     ((((((((■t)m)(\.){■})(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3202   |  4     ((((((((■t)m)(\.){■})(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3203   |  4     ((((((((■t)m)(\.){■})c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3204   |  4     ((((((((■t)m)(\.){■})c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3205   |  4     ((((((((■t)m)(\.){■})c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3206   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3207   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3208   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3209   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3210   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3211   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3212   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3213   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3214   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3215   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3216   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3217   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3218   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3219   |  4     ((((((((■t)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3220   |  4     ((((((((■t)m)■)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3221   |  4     ((((((((■t)m)(\.){■})c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3222   |  4     ((((((((■t)m)(\.){■})c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3223   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3224   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3225   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3226   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3227   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3228   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3229   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3230   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3231   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3232   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3233   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3234   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3235   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3236   |  4     ((((((((■t)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3237   |  4     ((((((((■t)m)■)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3238   |  4     ((((((((■t)m)(\.){■})c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3239   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3240   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3241   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3242   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3243   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3244   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3245   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3246   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3247   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3248   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3249   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3250   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3251   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3252   |  4     ((((((((■t)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3253   |  4     ((((((((■t)m)■)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3254   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3255   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3256   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3257   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3258   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3259   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3260   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3261   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3262   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3263   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3264   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3265   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3266   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3267   |  4     ((((((((■t)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3268   |  4     ((((((((■t)m)■)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3269   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3270   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3271   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3272   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3273   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3274   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3275   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3276   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3277   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3278   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3279   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3280   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3281   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3282   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3283   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3284   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3285   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3286   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3287   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3288   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3289   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3290   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3291   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3292   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3293   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3294   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3295   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3296   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3297   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3298   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3299   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3300   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3301   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3302   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3303   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3304   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3305   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3306   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3307   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3308   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3309   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3310   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3311   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3312   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3313   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3314   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3315   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3316   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3317   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3318   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3319   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3320   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3321   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3322   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3323   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3324   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3325   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3326   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3327   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3328   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3329   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  3330   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  3331   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  3332   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  3333   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  3334   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  3335   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  3336   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  3337   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3338   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  3339   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  3340   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  3341   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  3342   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  3343   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  3344   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  3345   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3346   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  3347   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  3348   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  3349   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  3350   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  3351   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  3352   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3353   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  3354   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  3355   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  3356   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  3357   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  3358   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3359   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  3360   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  3361   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  3362   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  3363   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3364   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  3365   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  3366   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  3367   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3368   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  3369   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  3370   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3371   |  4     ((((((((■t)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  3372   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3373   |  4     ((((((((■t)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3374   |  4     ((((((((■t)m)(\.)*)■)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3375   |  4     ((((((((■t)m)(\.)*)■)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3376   |  4     ((((((((■t)m)(\.)*)■)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3377   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3378   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3379   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3380   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3381   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3382   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3383   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3384   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3385   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3386   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3387   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3388   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3389   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3390   |  4     ((((((((■t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3391   |  4     (((((((((■■)t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3392   |  4     (((((((((■|■)t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3393   |  4     (((((((((■){■}t)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3394   |  4     ((((((((■t)m)(\.)*)(■■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3395   |  4     ((((((((■t)m)(\.)*)(■|■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3396   |  4     ((((((((■t)m)(\.)*)(■){■})■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3397   |  4     ((((((((■t)m)(\.)*)■)(■■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3398   |  4     ((((((((■t)m)(\.)*)■)(■|■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3399   |  4     ((((((((■t)m)(\.)*)■)(■){■})i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3400   |  4     ((((((((■t)m)(\.)*)■)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3401   |  4     ((((((((■t)m)(\.)*)■)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3402   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3403   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3404   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3405   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3406   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3407   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3408   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3409   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3410   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3411   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3412   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3413   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3414   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3415   |  4     ((((((((■t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3416   |  4     (((((((((■■)t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3417   |  4     (((((((((■|■)t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3418   |  4     (((((((((■){■}t)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3419   |  4     ((((((((■t)m)(\.)*)(■■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3420   |  4     ((((((((■t)m)(\.)*)(■|■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3421   |  4     ((((((((■t)m)(\.)*)(■){■})l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3422   |  4     ((((((((■t)m)(\.)*)■)l)(■■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3423   |  4     ((((((((■t)m)(\.)*)■)l)(■|■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3424   |  4     ((((((((■t)m)(\.)*)■)l)(■){■})c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3425   |  4     ((((((((■t)m)(\.)*)■)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3426   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3427   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3428   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3429   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3430   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3431   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3432   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3433   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3434   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3435   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3436   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3437   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3438   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3439   |  4     ((((((((■t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3440   |  4     (((((((((■■)t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3441   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3442   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3443   |  4     ((((((((■t)m)(\.)*)(■■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3444   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3445   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3446   |  4     ((((((((■t)m)(\.)*)■)l)i)(■■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3447   |  4     ((((((((■t)m)(\.)*)■)l)i)(■|■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3448   |  4     ((((((((■t)m)(\.)*)■)l)i)(■){■})k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3449   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3450   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3451   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3452   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3453   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3454   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3455   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3456   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3457   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3458   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3459   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3460   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3461   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3462   |  4     ((((((((■t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3463   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3464   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3465   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3466   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3467   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3468   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3469   |  4     ((((((((■t)m)(\.)*)■)l)i)c)(■■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3470   |  4     ((((((((■t)m)(\.)*)■)l)i)c)(■|■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3471   |  4     ((((((((■t)m)(\.)*)■)l)i)c)(■){■}|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3472   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3473   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3474   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3475   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3476   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3477   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3478   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3479   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3480   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3481   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3482   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3483   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3484   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3485   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3486   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3487   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3488   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3489   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3490   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3491   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|(((((((((((((■■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3492   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|(((((((((((((■|■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3493   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|(((((((((((((■){■}t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3494   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3495   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3496   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3497   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3498   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3499   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3500   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3501   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3502   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3503   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3504   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3505   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3506   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3507   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3508   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3509   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3510   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3511   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3512   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g(■■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3513   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g(■|■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3514   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((g(■){■})m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3515   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3516   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dot
  3517   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dot
  3518   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dot
  3519   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dot
  3520   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dot
  3521   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dot
  3522   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dot
  3523   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dot
  3524   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dot
  3525   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dot
  3526   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3527   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3528   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3529   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3530   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  3531   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3532   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  3533   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■|■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  3534   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■){■}).)f)o)r)m)S)u)b)m)i)t)fail dot
  3535   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dot
  3536   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dot
  3537   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dot
  3538   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dot
  3539   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dot
  3540   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dot
  3541   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dot
  3542   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dot
  3543   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dot
  3544   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dot
  3545   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3546   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3547   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3548   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3549   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  3550   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3551   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■■))f)o)r)m)S)u)b)m)i)t)fail dot
  3552   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■|■))f)o)r)m)S)u)b)m)i)t)fail dot
  3553   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■){■})f)o)r)m)S)u)b)m)i)t)fail dot
  3554   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dot
  3555   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dot
  3556   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dot
  3557   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dot
  3558   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dot
  3559   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dot
  3560   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dot
  3561   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dot
  3562   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dot
  3563   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3564   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3565   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3566   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3567   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  3568   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3569   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■■))o)r)m)S)u)b)m)i)t)fail dot
  3570   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■|■))o)r)m)S)u)b)m)i)t)fail dot
  3571   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■){■})o)r)m)S)u)b)m)i)t)fail dot
  3572   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dot
  3573   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dot
  3574   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dot
  3575   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dot
  3576   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dot
  3577   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dot
  3578   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dot
  3579   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dot
  3580   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3581   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3582   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3583   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3584   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  3585   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3586   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■■))r)m)S)u)b)m)i)t)fail dot
  3587   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■|■))r)m)S)u)b)m)i)t)fail dot
  3588   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■){■})r)m)S)u)b)m)i)t)fail dot
  3589   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dot
  3590   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dot
  3591   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dot
  3592   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dot
  3593   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dot
  3594   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dot
  3595   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dot
  3596   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3597   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3598   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3599   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3600   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  3601   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3602   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■■))m)S)u)b)m)i)t)fail dot
  3603   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■|■))m)S)u)b)m)i)t)fail dot
  3604   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■){■})m)S)u)b)m)i)t)fail dot
  3605   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dot
  3606   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dot
  3607   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dot
  3608   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dot
  3609   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dot
  3610   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dot
  3611   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3612   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3613   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3614   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3615   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  3616   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3617   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■■))S)u)b)m)i)t)fail dot
  3618   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■|■))S)u)b)m)i)t)fail dot
  3619   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■){■})S)u)b)m)i)t)fail dot
  3620   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dot
  3621   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dot
  3622   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dot
  3623   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dot
  3624   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dot
  3625   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3626   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3627   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3628   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3629   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  3630   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  3631   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■■))u)b)m)i)t)fail dot
  3632   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■|■))u)b)m)i)t)fail dot
  3633   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■){■})u)b)m)i)t)fail dot
  3634   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dot
  3635   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dot
  3636   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dot
  3637   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dot
  3638   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3639   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3640   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3641   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3642   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  3643   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  3644   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■■))b)m)i)t)fail dot
  3645   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■|■))b)m)i)t)fail dot
  3646   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■){■})b)m)i)t)fail dot
  3647   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dot
  3648   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dot
  3649   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dot
  3650   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3651   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3652   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3653   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3654   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  3655   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  3656   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■■))m)i)t)fail dot
  3657   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■|■))m)i)t)fail dot
  3658   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■){■})m)i)t)fail dot
  3659   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dot
  3660   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dot
  3661   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3662   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3663   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3664   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3665   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  3666   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  3667   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■■))i)t)fail dot
  3668   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■|■))i)t)fail dot
  3669   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■){■})i)t)fail dot
  3670   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dot
  3671   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3672   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3673   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3674   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3675   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  3676   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  3677   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■■))t)fail dot
  3678   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■|■))t)fail dot
  3679   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■){■})t)fail dot
  3680   |  4     (((((((((■■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3681   |  4     (((((((((■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3682   |  4     (((((((((■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3683   |  4     ((((((((■t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3684   |  4     ((((((((■t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  3685   |  4     ((((((((■t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  3686   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■■))fail dot
  3687   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■|■))fail dot
  3688   |  4     ((((((((■t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■){■})fail dot
  3689   |  4     (((((((((■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3690   |  4     ((((((((((■■)■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3691   |  4     ((((((((((■|■)■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3692   |  4     ((((((((((■){■}■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3693   |  4     (((((((((■■)t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3694   |  4     (((((((((■■)t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3695   |  4     (((((((((■■)t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3696   |  4     (((((((((■■|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3697   |  4     ((((((((((■|■)|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3698   |  4     ((((((((((■){■}|■)t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3699   |  4     (((((((((■|■)t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3700   |  4     (((((((((■|■)t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3701   |  4     (((((((((■|■)t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3702   |  4     (((((((((■■){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3703   |  4     ((((((((((■|■)){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3704   |  4     ((((((((((■){■}){■}t)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3705   |  4     (((((((((■){■}t)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3706   |  4     (((((((((■){■}t)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3707   |  4     (((((((((■){■}t)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3708   |  4     ((((((((■t)m)(\.)*)(■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3709   |  4     ((((((((■t)m)(\.)*)((■■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3710   |  4     ((((((((■t)m)(\.)*)((■|■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3711   |  4     ((((((((■t)m)(\.)*)((■){■}■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3712   |  4     ((((((((■t)m)(\.)*)(■■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3713   |  4     ((((((((■t)m)(\.)*)((■|■)|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  3714   |  4     ((((((((■t)m)(\.)*)((■){■}|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3715   |  4     ((((((((■t)m)(\.)*)(■■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3716   |  4     ((((((((■t)m)(\.)*)((■|■)){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  3717   |  4     ((((((((■t)m)(\.)*)((■){■}){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  3718   |  4     ((((((((■t)m)(\.)*)c)■)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3719   |  4     ((((((((■t)m)(\.)*)c)■)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3720   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3721   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3722   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3723   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3724   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3725   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3726   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3727   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3728   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3729   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3730   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3731   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3732   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3733   |  4     ((((((((■t)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3734   |  4     ((((((((■t)m)(\.)*)c)■)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3735   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3736   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3737   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3738   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3739   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3740   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3741   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3742   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3743   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3744   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3745   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3746   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3747   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3748   |  4     ((((((((■t)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3749   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3750   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3751   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3752   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3753   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3754   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3755   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3756   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3757   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3758   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3759   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3760   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3761   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3762   |  4     ((((((((■t)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3763   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3764   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3765   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3766   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3767   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3768   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3769   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3770   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3771   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3772   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3773   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3774   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3775   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3776   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3777   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3778   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3779   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3780   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3781   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3782   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3783   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3784   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3785   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3786   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3787   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3788   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3789   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3790   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3791   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3792   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3793   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3794   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3795   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3796   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3797   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3798   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3799   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3800   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3801   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3802   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3803   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3804   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3805   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3806   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3807   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3808   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3809   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3810   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3811   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3812   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3813   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3814   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3815   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3816   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3817   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3818   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  3819   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  3820   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  3821   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  3822   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  3823   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  3824   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  3825   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  3826   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  3827   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  3828   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  3829   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  3830   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  3831   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  3832   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  3833   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  3834   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  3835   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  3836   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  3837   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  3838   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  3839   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  3840   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  3841   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  3842   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  3843   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  3844   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  3845   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  3846   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  3847   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  3848   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  3849   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  3850   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  3851   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  3852   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  3853   |  4     ((((((((■t)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  3854   |  4     ((((((((■t)m)(\.)*)c)l)■)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3855   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3856   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3857   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3858   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3859   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3860   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3861   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3862   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3863   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3864   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3865   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3866   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3867   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3868   |  4     ((((((((■t)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3869   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3870   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3871   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3872   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3873   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3874   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3875   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3876   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3877   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3878   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3879   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3880   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3881   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3882   |  4     ((((((((■t)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3883   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3884   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3885   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3886   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3887   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3888   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3889   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3890   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3891   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3892   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3893   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3894   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3895   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3896   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3897   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3898   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3899   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3900   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3901   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3902   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3903   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3904   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3905   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3906   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3907   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3908   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3909   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3910   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3911   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3912   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3913   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3914   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3915   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3916   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3917   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3918   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3919   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3920   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3921   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3922   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3923   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3924   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3925   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3926   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3927   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3928   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3929   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3930   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3931   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3932   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3933   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3934   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3935   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3936   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3937   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3938   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  3939   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  3940   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  3941   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  3942   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  3943   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  3944   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  3945   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  3946   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  3947   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  3948   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  3949   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  3950   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  3951   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  3952   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  3953   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  3954   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  3955   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  3956   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  3957   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  3958   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  3959   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  3960   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  3961   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  3962   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  3963   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  3964   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  3965   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  3966   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  3967   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  3968   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  3969   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  3970   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  3971   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  3972   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  3973   |  4     ((((((((■t)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  3974   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3975   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3976   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3977   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3978   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3979   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3980   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3981   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3982   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3983   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3984   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3985   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3986   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  3987   |  4     ((((((((■t)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  3988   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3989   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3990   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3991   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3992   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  3993   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  3994   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  3995   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  3996   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  3997   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  3998   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  3999   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4000   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4001   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4002   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4003   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4004   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4005   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4006   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4007   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4008   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4009   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4010   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4011   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4012   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4013   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4014   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4015   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4016   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4017   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4018   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4019   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4020   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4021   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4022   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4023   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4024   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4025   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4026   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4027   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4028   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4029   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4030   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4031   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4032   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4033   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4034   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4035   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4036   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4037   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4038   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4039   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4040   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4041   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4042   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4043   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4044   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4045   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4046   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4047   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4048   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4049   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4050   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4051   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4052   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4053   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4054   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4055   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4056   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4057   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4058   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4059   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4060   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4061   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4062   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4063   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4064   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4065   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4066   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4067   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4068   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4069   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4070   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4071   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4072   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4073   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4074   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4075   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4076   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4077   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4078   |  4     ((((((((■t)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4079   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4080   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4081   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4082   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4083   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4084   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4085   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4086   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4087   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4088   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4089   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4090   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4091   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4092   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4093   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4094   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4095   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4096   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4097   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4098   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4099   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4100   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4101   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4102   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4103   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4104   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4105   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4106   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4107   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4108   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4109   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4110   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4111   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4112   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4113   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4114   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4115   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4116   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4117   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4118   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4119   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4120   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4121   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4122   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4123   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4124   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4125   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4126   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4127   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4128   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4129   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4130   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4131   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4132   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4133   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4134   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4135   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4136   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4137   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4138   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4139   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4140   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4141   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4142   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4143   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4144   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4145   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4146   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4147   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4148   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4149   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4150   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4151   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4152   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4153   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4154   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4155   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4156   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4157   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4158   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4159   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4160   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4161   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4162   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4163   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4164   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4165   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4166   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4167   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4168   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4169   |  4     ((((((((■t)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4170   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4171   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4172   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4173   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4174   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4175   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4176   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4177   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4178   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4179   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4180   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4181   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4182   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4183   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4184   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4185   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4186   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4187   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4188   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4189   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4190   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4191   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4192   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4193   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4194   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4195   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4196   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4197   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4198   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4199   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4200   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4201   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4202   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4203   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4204   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4205   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4206   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4207   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4208   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4209   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4210   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4211   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4212   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4213   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4214   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4215   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4216   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4217   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4218   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4219   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4220   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4221   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4222   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4223   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4224   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4225   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4226   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4227   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4228   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4229   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4230   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4231   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4232   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4233   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4234   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4235   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4236   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4237   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4238   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4239   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4240   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4241   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4242   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4243   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4244   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4245   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4246   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4247   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4248   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4249   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4250   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4251   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4252   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4253   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4254   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4255   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4256   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4257   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4258   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4259   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4260   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4261   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4262   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4263   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4264   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4265   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4266   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4267   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4268   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4269   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4270   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4271   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4272   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4273   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4274   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4275   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4276   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4277   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4278   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4279   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4280   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4281   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4282   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4283   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4284   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4285   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4286   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4287   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4288   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4289   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4290   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4291   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4292   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4293   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4294   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4295   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4296   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4297   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4298   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4299   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4300   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4301   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4302   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4303   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4304   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4305   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4306   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4307   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4308   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4309   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4310   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4311   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4312   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4313   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4314   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4315   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4316   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4317   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4318   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4319   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4320   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4321   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4322   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4323   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4324   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4325   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4326   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4327   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4328   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4329   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4330   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4331   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4332   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4333   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4334   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4335   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4336   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4337   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4338   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4339   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4340   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4341   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4342   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4343   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4344   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4345   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4346   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4347   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4348   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4349   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4350   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4351   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4352   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4353   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4354   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4355   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4356   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4357   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4358   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4359   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4360   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4361   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4362   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4363   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4364   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4365   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4366   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4367   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4368   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4369   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4370   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4371   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4372   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4373   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4374   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4375   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4376   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4377   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4378   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4379   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4380   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4381   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4382   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4383   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4384   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4385   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4386   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4387   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4388   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4389   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4390   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4391   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4392   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4393   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4394   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4395   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4396   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4397   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4398   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4399   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4400   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4401   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4402   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4403   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4404   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4405   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4406   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4407   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4408   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4409   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4410   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4411   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4412   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4413   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4414   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4415   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4416   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4417   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4418   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4419   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4420   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4421   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4422   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4423   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4424   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4425   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4426   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4427   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4428   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4429   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4430   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4431   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4432   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4433   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4434   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4435   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4436   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4437   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4438   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4439   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4440   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4441   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4442   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4443   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4444   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4445   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4446   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4447   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4448   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4449   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4450   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4451   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)■)S)u)b)m)i)t)fail dotstar or empty
  4452   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)■)u)b)m)i)t)fail dotstar or empty
  4453   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)■)b)m)i)t)fail dotstar or empty
  4454   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)■)m)i)t)fail dotstar or empty
  4455   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)■)i)t)fail dotstar or empty
  4456   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)■)t)fail dotstar or empty
  4457   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)■)fail dotstar or empty
  4458   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)■)u)b)m)i)t)fail dotstar or empty
  4459   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)■)b)m)i)t)fail dotstar or empty
  4460   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)■)m)i)t)fail dotstar or empty
  4461   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)■)i)t)fail dotstar or empty
  4462   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)■)t)fail dotstar or empty
  4463   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)■)fail dotstar or empty
  4464   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)■)b)m)i)t)fail dotstar or empty
  4465   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)■)m)i)t)fail dotstar or empty
  4466   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)■)i)t)fail dotstar or empty
  4467   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)■)t)fail dotstar or empty
  4468   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)■)fail dotstar or empty
  4469   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)■)m)i)t)fail dotstar or empty
  4470   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)■)i)t)fail dotstar or empty
  4471   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)■)t)fail dotstar or empty
  4472   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)■)fail dotstar or empty
  4473   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)■)i)t)fail dotstar or empty
  4474   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)■)t)fail dotstar or empty
  4475   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)■)fail dotstar or empty
  4476   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)■)t)fail dotstar or empty
  4477   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)■)fail dotstar or empty
  4478   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)■)fail dotstar or empty
  4479   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)■)u)b)m)i)t)fail dotstar or empty
  4480   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)■)b)m)i)t)fail dotstar or empty
  4481   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)■)m)i)t)fail dotstar or empty
  4482   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)■)i)t)fail dotstar or empty
  4483   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)■)t)fail dotstar or empty
  4484   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)■)fail dotstar or empty
  4485   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)■)b)m)i)t)fail dotstar or empty
  4486   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)■)m)i)t)fail dotstar or empty
  4487   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)■)i)t)fail dotstar or empty
  4488   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)■)t)fail dotstar or empty
  4489   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)■)fail dotstar or empty
  4490   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)■)m)i)t)fail dotstar or empty
  4491   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)■)i)t)fail dotstar or empty
  4492   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)■)t)fail dotstar or empty
  4493   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)■)fail dotstar or empty
  4494   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)■)i)t)fail dotstar or empty
  4495   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)■)t)fail dotstar or empty
  4496   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)■)fail dotstar or empty
  4497   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)■)t)fail dotstar or empty
  4498   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)■)fail dotstar or empty
  4499   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)■)fail dotstar or empty
  4500   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)■)b)m)i)t)fail dotstar or empty
  4501   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)■)m)i)t)fail dotstar or empty
  4502   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)■)i)t)fail dotstar or empty
  4503   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)■)t)fail dotstar or empty
  4504   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)■)fail dotstar or empty
  4505   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)■)m)i)t)fail dotstar or empty
  4506   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)■)i)t)fail dotstar or empty
  4507   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)■)t)fail dotstar or empty
  4508   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)■)fail dotstar or empty
  4509   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)■)i)t)fail dotstar or empty
  4510   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)■)t)fail dotstar or empty
  4511   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)■)fail dotstar or empty
  4512   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)■)t)fail dotstar or empty
  4513   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)■)fail dotstar or empty
  4514   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)■)fail dotstar or empty
  4515   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)■)m)i)t)fail dotstar or empty
  4516   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)■)i)t)fail dotstar or empty
  4517   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)■)t)fail dotstar or empty
  4518   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)■)fail dotstar or empty
  4519   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)■)i)t)fail dotstar or empty
  4520   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)■)t)fail dotstar or empty
  4521   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)■)fail dotstar or empty
  4522   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)■)t)fail dotstar or empty
  4523   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)■)fail dotstar or empty
  4524   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)■)fail dotstar or empty
  4525   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)■)i)t)fail dotstar or empty
  4526   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)■)t)fail dotstar or empty
  4527   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)■)fail dotstar or empty
  4528   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)■)t)fail dotstar or empty
  4529   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)■)fail dotstar or empty
  4530   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)■)fail dotstar or empty
  4531   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)■)t)fail dotstar or empty
  4532   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)■)fail dotstar or empty
  4533   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)■)fail dotstar or empty
  4534   |  4     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)■)fail dotstar or empty
  4535   |  4     ((((((((g■)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4536   |  4     ((((((((g■)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4537   |  4     ((((((((g■)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4538   |  4     ((((((((g■)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4539   |  4     ((((((((g■)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4540   |  4     ((((((((g■)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4541   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4542   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4543   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4544   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4545   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4546   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4547   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4548   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4549   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4550   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4551   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4552   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4553   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4554   |  4     ((((((((g■)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4555   |  4     ((((((((g■)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4556   |  4     ((((((((g■)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4557   |  4     ((((((((g■)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4558   |  4     ((((((((g■)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4559   |  4     ((((((((g■)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4560   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4561   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4562   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4563   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4564   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4565   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4566   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4567   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4568   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4569   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4570   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4571   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4572   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4573   |  4     ((((((((g■)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4574   |  4     ((((((((g■)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4575   |  4     ((((((((g■)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4576   |  4     ((((((((g■)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4577   |  4     ((((((((g■)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4578   |  4     ((((((((g■)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4579   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4580   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4581   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  4582   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  4583   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  4584   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  4585   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  4586   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  4587   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  4588   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  4589   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  4590   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  4591   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  4592   |  4     ((((((((g■)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  4593   |  4     ((((((((g(■■))■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4594   |  4     ((((((((g(■|■))■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4595   |  4     ((((((((g(■){■})■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4596   |  4     ((((((((g■)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4597   |  4     ((((((((g■)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4598   |  4     ((((((((g■)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4599   |  4     ((((((((g■)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4600   |  4     ((((((((g■)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4601   |  4     ((((((((g■)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4602   |  4     ((((((((g■)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4603   |  4     ((((((((g■)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4604   |  4     ((((((((g■)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4605   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4606   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4607   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4608   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4609   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4610   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4611   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4612   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4613   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4614   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4615   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4616   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4617   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4618   |  4     ((((((((g■)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4619   |  4     ((((((((g■)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4620   |  4     ((((((((g■)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4621   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4622   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4623   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4624   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4625   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4626   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4627   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4628   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4629   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4630   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4631   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4632   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4633   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4634   |  4     ((((((((g■)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4635   |  4     ((((((((g■)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4636   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4637   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4638   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4639   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4640   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4641   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4642   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4643   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4644   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4645   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4646   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4647   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4648   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4649   |  4     ((((((((g■)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4650   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4651   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4652   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4653   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4654   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4655   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4656   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4657   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4658   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4659   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4660   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4661   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4662   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4663   |  4     ((((((((g■)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4664   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4665   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4666   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4667   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4668   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4669   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4670   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4671   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4672   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4673   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4674   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4675   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4676   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4677   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4678   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4679   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4680   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4681   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4682   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4683   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4684   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4685   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4686   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4687   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4688   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4689   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4690   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4691   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4692   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4693   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4694   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4695   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4696   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4697   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4698   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4699   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4700   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4701   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4702   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4703   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4704   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4705   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4706   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4707   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4708   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4709   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4710   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4711   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4712   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4713   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4714   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4715   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4716   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4717   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4718   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4719   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4720   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4721   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4722   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4723   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4724   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4725   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4726   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4727   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4728   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4729   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4730   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4731   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4732   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4733   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4734   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4735   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4736   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4737   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4738   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4739   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4740   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4741   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4742   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4743   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4744   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4745   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4746   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4747   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4748   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4749   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4750   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4751   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4752   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4753   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4754   |  4     ((((((((g■)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4755   |  4     ((((((((g■)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4756   |  4     ((((((((g■)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4757   |  4     ((((((((g■)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4758   |  4     ((((((((g■)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4759   |  4     ((((((((g■)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4760   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4761   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4762   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4763   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4764   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4765   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4766   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4767   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4768   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4769   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4770   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4771   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4772   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4773   |  4     ((((((((g■)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4774   |  4     ((((((((g■)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4775   |  4     ((((((((g■)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4776   |  4     ((((((((g■)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4777   |  4     ((((((((g■)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4778   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4779   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4780   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4781   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4782   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4783   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4784   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4785   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4786   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  4787   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  4788   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  4789   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  4790   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  4791   |  4     ((((((((g■)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  4792   |  4     ((((((((g(■■))m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4793   |  4     ((((((((g(■|■))m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  4794   |  4     ((((((((g(■){■})m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4795   |  4     ((((((((g■)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4796   |  4     ((((((((g■)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  4797   |  4     ((((((((g■)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4798   |  4     ((((((((g■)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4799   |  4     ((((((((g■)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  4800   |  4     ((((((((g■)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4801   |  4     ((((((((g■)m)(■)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4802   |  4     ((((((((g■)m)(■)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4803   |  4     ((((((((g■)m)(■)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4804   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4805   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4806   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4807   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4808   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4809   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4810   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4811   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4812   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4813   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4814   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4815   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4816   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4817   |  4     ((((((((g■)m)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4818   |  4     ((((((((g■)m)(■)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4819   |  4     ((((((((g■)m)(■)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4820   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4821   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4822   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4823   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4824   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4825   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4826   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4827   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4828   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4829   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4830   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4831   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4832   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4833   |  4     ((((((((g■)m)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4834   |  4     ((((((((g■)m)(■)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4835   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4836   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4837   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4838   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4839   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4840   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4841   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4842   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4843   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4844   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4845   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4846   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4847   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4848   |  4     ((((((((g■)m)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4849   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4850   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4851   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4852   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4853   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4854   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4855   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4856   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4857   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4858   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4859   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4860   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4861   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4862   |  4     ((((((((g■)m)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4863   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4864   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4865   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4866   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4867   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4868   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4869   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4870   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4871   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4872   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4873   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4874   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4875   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4876   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4877   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4878   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4879   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4880   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4881   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4882   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4883   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4884   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4885   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4886   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4887   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4888   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4889   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4890   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4891   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4892   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4893   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4894   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4895   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4896   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4897   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4898   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4899   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4900   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4901   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4902   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4903   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4904   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4905   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4906   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4907   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4908   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4909   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4910   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4911   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4912   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4913   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4914   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4915   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4916   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4917   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4918   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  4919   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  4920   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  4921   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  4922   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  4923   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  4924   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  4925   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  4926   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  4927   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  4928   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  4929   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  4930   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  4931   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  4932   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  4933   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  4934   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  4935   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  4936   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  4937   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  4938   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  4939   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  4940   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  4941   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  4942   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  4943   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  4944   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  4945   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  4946   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  4947   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  4948   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  4949   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  4950   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  4951   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  4952   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  4953   |  4     ((((((((g■)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  4954   |  4     ((((((((g■)m)(\.){■})■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4955   |  4     ((((((((g■)m)(\.){■})■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4956   |  4     ((((((((g■)m)(\.){■})■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4957   |  4     ((((((((g■)m)(\.){■})■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4958   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4959   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4960   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  4961   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  4962   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  4963   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  4964   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  4965   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  4966   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  4967   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  4968   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  4969   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  4970   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  4971   |  4     ((((((((g■)m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  4972   |  4     ((((((((g■)m)■)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4973   |  4     ((((((((g(■■))m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4974   |  4     ((((((((g(■|■))m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4975   |  4     ((((((((g(■){■})m)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4976   |  4     ((((((((g■)m)(\.){■})(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4977   |  4     ((((((((g■)m)(\.){■})(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  4978   |  4     ((((((((g■)m)(\.){■})(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  4979   |  4     ((((((((g■)m)(\.){■})c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4980   |  4     ((((((((g■)m)(\.){■})c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4981   |  4     ((((((((g■)m)(\.){■})c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4982   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4983   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4984   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4985   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4986   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4987   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  4988   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  4989   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  4990   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  4991   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  4992   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  4993   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  4994   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  4995   |  4     ((((((((g■)m)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  4996   |  4     ((((((((g■)m)■)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4997   |  4     ((((((((g■)m)(\.){■})c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4998   |  4     ((((((((g■)m)(\.){■})c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4999   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5000   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5001   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5002   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5003   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5004   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5005   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5006   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5007   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5008   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5009   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5010   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5011   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5012   |  4     ((((((((g■)m)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5013   |  4     ((((((((g■)m)■)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5014   |  4     ((((((((g■)m)(\.){■})c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5015   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5016   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5017   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5018   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5019   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5020   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5021   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5022   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5023   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5024   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5025   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5026   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5027   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5028   |  4     ((((((((g■)m)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5029   |  4     ((((((((g■)m)■)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5030   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5031   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5032   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5033   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5034   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5035   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5036   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5037   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5038   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5039   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5040   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5041   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5042   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5043   |  4     ((((((((g■)m)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5044   |  4     ((((((((g■)m)■)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5045   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5046   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5047   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5048   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5049   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5050   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5051   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5052   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5053   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5054   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5055   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5056   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5057   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5058   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5059   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5060   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5061   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5062   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5063   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5064   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5065   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5066   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5067   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5068   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5069   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5070   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5071   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5072   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5073   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5074   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5075   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5076   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5077   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5078   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5079   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5080   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5081   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5082   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5083   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5084   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5085   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5086   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5087   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5088   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5089   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5090   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5091   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5092   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5093   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5094   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5095   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5096   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5097   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5098   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5099   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5100   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5101   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5102   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5103   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5104   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5105   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  5106   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  5107   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  5108   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  5109   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  5110   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  5111   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  5112   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  5113   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5114   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  5115   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  5116   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  5117   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  5118   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  5119   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  5120   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  5121   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5122   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  5123   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  5124   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  5125   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  5126   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  5127   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  5128   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5129   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  5130   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  5131   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  5132   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  5133   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  5134   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5135   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  5136   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  5137   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  5138   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  5139   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5140   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  5141   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  5142   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  5143   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5144   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  5145   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  5146   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5147   |  4     ((((((((g■)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  5148   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5149   |  4     ((((((((g■)m)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5150   |  4     ((((((((g■)m)(\.)*)■)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5151   |  4     ((((((((g■)m)(\.)*)■)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5152   |  4     ((((((((g■)m)(\.)*)■)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5153   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5154   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5155   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5156   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5157   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5158   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5159   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5160   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5161   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5162   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5163   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5164   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5165   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5166   |  4     ((((((((g■)m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5167   |  4     ((((((((g(■■))m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5168   |  4     ((((((((g(■|■))m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5169   |  4     ((((((((g(■){■})m)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5170   |  4     ((((((((g■)m)(\.)*)(■■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5171   |  4     ((((((((g■)m)(\.)*)(■|■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5172   |  4     ((((((((g■)m)(\.)*)(■){■})■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5173   |  4     ((((((((g■)m)(\.)*)■)(■■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5174   |  4     ((((((((g■)m)(\.)*)■)(■|■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5175   |  4     ((((((((g■)m)(\.)*)■)(■){■})i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5176   |  4     ((((((((g■)m)(\.)*)■)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5177   |  4     ((((((((g■)m)(\.)*)■)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5178   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5179   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5180   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5181   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5182   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5183   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5184   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5185   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5186   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5187   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5188   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5189   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5190   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5191   |  4     ((((((((g■)m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5192   |  4     ((((((((g(■■))m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5193   |  4     ((((((((g(■|■))m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5194   |  4     ((((((((g(■){■})m)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5195   |  4     ((((((((g■)m)(\.)*)(■■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5196   |  4     ((((((((g■)m)(\.)*)(■|■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5197   |  4     ((((((((g■)m)(\.)*)(■){■})l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5198   |  4     ((((((((g■)m)(\.)*)■)l)(■■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5199   |  4     ((((((((g■)m)(\.)*)■)l)(■|■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5200   |  4     ((((((((g■)m)(\.)*)■)l)(■){■})c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5201   |  4     ((((((((g■)m)(\.)*)■)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5202   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5203   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5204   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5205   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5206   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5207   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5208   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5209   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5210   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5211   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5212   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5213   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5214   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5215   |  4     ((((((((g■)m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5216   |  4     ((((((((g(■■))m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5217   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5218   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5219   |  4     ((((((((g■)m)(\.)*)(■■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5220   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5221   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5222   |  4     ((((((((g■)m)(\.)*)■)l)i)(■■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5223   |  4     ((((((((g■)m)(\.)*)■)l)i)(■|■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5224   |  4     ((((((((g■)m)(\.)*)■)l)i)(■){■})k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5225   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5226   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5227   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5228   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5229   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5230   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5231   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5232   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5233   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5234   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5235   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5236   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5237   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5238   |  4     ((((((((g■)m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5239   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5240   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5241   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5242   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5243   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5244   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5245   |  4     ((((((((g■)m)(\.)*)■)l)i)c)(■■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5246   |  4     ((((((((g■)m)(\.)*)■)l)i)c)(■|■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5247   |  4     ((((((((g■)m)(\.)*)■)l)i)c)(■){■}|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5248   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5249   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5250   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5251   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5252   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5253   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5254   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5255   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5256   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5257   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5258   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5259   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5260   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5261   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5262   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5263   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5264   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5265   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5266   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5267   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|(((((((((((((■■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5268   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|(((((((((((((■|■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5269   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|(((((((((((((■){■}t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5270   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5271   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5272   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5273   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5274   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5275   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5276   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5277   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5278   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5279   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5280   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5281   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5282   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5283   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5284   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5285   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5286   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5287   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5288   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g(■■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5289   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g(■|■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5290   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((g(■){■})m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5291   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5292   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)
10.153582096099854
timeout