
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
  2275   |  3     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)■)t)
5.085409879684448
timeout