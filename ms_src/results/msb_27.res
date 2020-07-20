
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
  5292   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dot
  5293   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dot
  5294   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dot
  5295   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dot
  5296   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dot
  5297   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dot
  5298   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dot
  5299   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dot
  5300   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dot
  5301   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dot
  5302   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5303   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5304   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5305   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5306   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  5307   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5308   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  5309   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■|■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  5310   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)(■){■}).)f)o)r)m)S)u)b)m)i)t)fail dot
  5311   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dot
  5312   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dot
  5313   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dot
  5314   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dot
  5315   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dot
  5316   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dot
  5317   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dot
  5318   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dot
  5319   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dot
  5320   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dot
  5321   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5322   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5323   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5324   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5325   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  5326   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5327   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■■))f)o)r)m)S)u)b)m)i)t)fail dot
  5328   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■|■))f)o)r)m)S)u)b)m)i)t)fail dot
  5329   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■){■})f)o)r)m)S)u)b)m)i)t)fail dot
  5330   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dot
  5331   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dot
  5332   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dot
  5333   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dot
  5334   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dot
  5335   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dot
  5336   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dot
  5337   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dot
  5338   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dot
  5339   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5340   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5341   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5342   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5343   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  5344   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5345   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■■))o)r)m)S)u)b)m)i)t)fail dot
  5346   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■|■))o)r)m)S)u)b)m)i)t)fail dot
  5347   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■){■})o)r)m)S)u)b)m)i)t)fail dot
  5348   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dot
  5349   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dot
  5350   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dot
  5351   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dot
  5352   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dot
  5353   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dot
  5354   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dot
  5355   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dot
  5356   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5357   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5358   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5359   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5360   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  5361   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5362   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■■))r)m)S)u)b)m)i)t)fail dot
  5363   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■|■))r)m)S)u)b)m)i)t)fail dot
  5364   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■){■})r)m)S)u)b)m)i)t)fail dot
  5365   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dot
  5366   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dot
  5367   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dot
  5368   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dot
  5369   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dot
  5370   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dot
  5371   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dot
  5372   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5373   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5374   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5375   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5376   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  5377   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5378   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■■))m)S)u)b)m)i)t)fail dot
  5379   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■|■))m)S)u)b)m)i)t)fail dot
  5380   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■){■})m)S)u)b)m)i)t)fail dot
  5381   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dot
  5382   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dot
  5383   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dot
  5384   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dot
  5385   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dot
  5386   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dot
  5387   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5388   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5389   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5390   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5391   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  5392   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5393   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■■))S)u)b)m)i)t)fail dot
  5394   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■|■))S)u)b)m)i)t)fail dot
  5395   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■){■})S)u)b)m)i)t)fail dot
  5396   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dot
  5397   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dot
  5398   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dot
  5399   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dot
  5400   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dot
  5401   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5402   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5403   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5404   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5405   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  5406   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  5407   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■■))u)b)m)i)t)fail dot
  5408   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■|■))u)b)m)i)t)fail dot
  5409   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■){■})u)b)m)i)t)fail dot
  5410   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dot
  5411   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dot
  5412   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dot
  5413   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dot
  5414   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5415   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5416   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5417   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5418   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  5419   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  5420   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■■))b)m)i)t)fail dot
  5421   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■|■))b)m)i)t)fail dot
  5422   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■){■})b)m)i)t)fail dot
  5423   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dot
  5424   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dot
  5425   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dot
  5426   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5427   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5428   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5429   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5430   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  5431   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  5432   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■■))m)i)t)fail dot
  5433   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■|■))m)i)t)fail dot
  5434   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■){■})m)i)t)fail dot
  5435   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dot
  5436   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dot
  5437   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5438   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5439   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5440   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5441   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  5442   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  5443   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■■))i)t)fail dot
  5444   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■|■))i)t)fail dot
  5445   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■){■})i)t)fail dot
  5446   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dot
  5447   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5448   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5449   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5450   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5451   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  5452   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  5453   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■■))t)fail dot
  5454   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■|■))t)fail dot
  5455   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■){■})t)fail dot
  5456   |  4     ((((((((g(■■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5457   |  4     ((((((((g(■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5458   |  4     ((((((((g(■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5459   |  4     ((((((((g■)m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5460   |  4     ((((((((g■)m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  5461   |  4     ((((((((g■)m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  5462   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■■))fail dot
  5463   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■|■))fail dot
  5464   |  4     ((((((((g■)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■){■})fail dot
  5465   |  4     ((((((((g(■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5466   |  4     ((((((((g((■■)■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5467   |  4     ((((((((g((■|■)■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5468   |  4     ((((((((g((■){■}■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5469   |  4     ((((((((g(■■))m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5470   |  4     ((((((((g(■■))m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5471   |  4     ((((((((g(■■))m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5472   |  4     ((((((((g(■■|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5473   |  4     ((((((((g((■|■)|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5474   |  4     ((((((((g((■){■}|■))m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5475   |  4     ((((((((g(■|■))m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5476   |  4     ((((((((g(■|■))m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5477   |  4     ((((((((g(■|■))m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5478   |  4     ((((((((g(■■){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5479   |  4     ((((((((g((■|■)){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5480   |  4     ((((((((g((■){■}){■})m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5481   |  4     ((((((((g(■){■})m)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5482   |  4     ((((((((g(■){■})m)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5483   |  4     ((((((((g(■){■})m)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5484   |  4     ((((((((g■)m)(\.)*)(■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5485   |  4     ((((((((g■)m)(\.)*)((■■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5486   |  4     ((((((((g■)m)(\.)*)((■|■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5487   |  4     ((((((((g■)m)(\.)*)((■){■}■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5488   |  4     ((((((((g■)m)(\.)*)(■■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5489   |  4     ((((((((g■)m)(\.)*)((■|■)|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  5490   |  4     ((((((((g■)m)(\.)*)((■){■}|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5491   |  4     ((((((((g■)m)(\.)*)(■■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5492   |  4     ((((((((g■)m)(\.)*)((■|■)){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  5493   |  4     ((((((((g■)m)(\.)*)((■){■}){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  5494   |  4     ((((((((g■)m)(\.)*)c)■)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5495   |  4     ((((((((g■)m)(\.)*)c)■)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5496   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5497   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5498   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5499   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5500   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5501   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5502   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5503   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5504   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5505   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5506   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5507   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5508   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5509   |  4     ((((((((g■)m)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5510   |  4     ((((((((g■)m)(\.)*)c)■)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5511   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5512   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5513   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5514   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5515   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5516   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5517   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5518   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5519   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5520   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5521   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5522   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5523   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5524   |  4     ((((((((g■)m)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5525   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5526   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5527   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5528   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5529   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5530   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5531   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5532   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5533   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5534   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5535   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5536   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5537   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5538   |  4     ((((((((g■)m)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5539   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5540   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5541   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5542   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5543   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5544   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5545   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5546   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5547   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5548   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5549   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5550   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5551   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5552   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5553   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5554   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5555   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5556   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5557   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5558   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5559   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5560   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5561   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5562   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5563   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5564   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5565   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5566   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5567   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5568   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5569   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5570   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5571   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5572   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5573   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5574   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5575   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5576   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5577   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5578   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5579   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5580   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5581   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5582   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5583   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5584   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5585   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5586   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5587   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5588   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5589   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5590   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5591   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5592   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5593   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5594   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  5595   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  5596   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  5597   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  5598   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  5599   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  5600   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  5601   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  5602   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  5603   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  5604   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  5605   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  5606   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  5607   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  5608   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  5609   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  5610   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  5611   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  5612   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  5613   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  5614   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  5615   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  5616   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  5617   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  5618   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  5619   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  5620   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  5621   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  5622   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  5623   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  5624   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  5625   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  5626   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  5627   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  5628   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  5629   |  4     ((((((((g■)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  5630   |  4     ((((((((g■)m)(\.)*)c)l)■)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5631   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5632   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5633   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5634   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5635   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5636   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5637   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5638   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5639   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5640   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5641   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5642   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5643   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5644   |  4     ((((((((g■)m)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5645   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5646   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5647   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5648   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5649   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5650   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5651   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5652   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5653   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5654   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5655   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5656   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5657   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5658   |  4     ((((((((g■)m)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5659   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5660   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5661   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5662   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5663   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5664   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5665   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5666   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5667   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5668   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5669   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5670   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5671   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5672   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5673   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5674   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5675   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5676   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5677   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5678   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5679   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5680   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5681   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5682   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5683   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5684   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5685   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5686   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5687   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5688   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5689   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5690   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5691   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5692   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5693   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5694   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5695   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5696   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5697   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5698   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5699   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5700   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5701   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5702   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5703   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5704   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5705   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5706   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5707   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5708   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5709   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5710   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5711   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5712   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5713   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5714   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  5715   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  5716   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  5717   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  5718   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  5719   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  5720   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  5721   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  5722   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  5723   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  5724   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  5725   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  5726   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  5727   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  5728   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  5729   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  5730   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  5731   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  5732   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  5733   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  5734   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  5735   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  5736   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  5737   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  5738   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  5739   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  5740   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  5741   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  5742   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  5743   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  5744   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  5745   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  5746   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  5747   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  5748   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  5749   |  4     ((((((((g■)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  5750   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5751   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5752   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5753   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5754   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5755   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5756   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5757   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5758   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5759   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5760   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5761   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5762   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5763   |  4     ((((((((g■)m)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5764   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5765   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5766   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5767   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5768   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5769   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5770   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5771   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5772   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5773   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5774   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5775   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5776   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5777   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5778   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5779   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5780   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5781   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5782   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5783   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5784   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5785   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5786   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5787   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5788   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5789   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5790   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5791   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5792   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5793   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5794   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5795   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5796   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5797   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5798   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5799   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5800   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5801   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5802   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5803   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5804   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5805   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5806   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5807   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5808   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5809   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5810   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5811   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5812   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5813   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5814   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5815   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5816   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5817   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5818   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5819   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  5820   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  5821   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  5822   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  5823   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  5824   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  5825   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  5826   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  5827   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  5828   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  5829   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  5830   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  5831   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  5832   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  5833   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  5834   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  5835   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  5836   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  5837   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  5838   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  5839   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  5840   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  5841   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  5842   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  5843   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  5844   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  5845   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  5846   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  5847   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  5848   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  5849   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  5850   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  5851   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  5852   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  5853   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  5854   |  4     ((((((((g■)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  5855   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5856   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5857   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5858   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5859   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5860   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5861   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5862   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5863   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5864   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5865   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5866   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5867   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5868   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5869   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5870   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5871   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5872   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5873   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5874   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5875   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5876   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5877   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5878   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5879   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5880   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5881   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5882   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5883   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5884   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5885   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5886   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5887   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5888   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5889   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5890   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5891   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5892   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5893   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5894   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5895   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5896   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5897   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5898   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5899   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5900   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5901   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5902   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5903   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5904   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5905   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5906   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5907   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5908   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5909   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5910   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  5911   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  5912   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  5913   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  5914   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  5915   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  5916   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  5917   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  5918   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  5919   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  5920   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  5921   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  5922   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  5923   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  5924   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  5925   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  5926   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  5927   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  5928   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  5929   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  5930   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  5931   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  5932   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  5933   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  5934   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  5935   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  5936   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  5937   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  5938   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  5939   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  5940   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  5941   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  5942   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  5943   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  5944   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  5945   |  4     ((((((((g■)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  5946   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5947   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5948   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5949   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5950   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5951   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5952   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5953   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5954   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5955   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5956   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5957   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5958   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5959   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5960   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5961   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5962   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5963   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5964   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5965   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5966   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5967   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5968   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5969   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5970   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5971   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5972   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5973   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5974   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5975   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5976   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5977   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5978   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5979   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5980   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  5981   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  5982   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  5983   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  5984   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  5985   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  5986   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  5987   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  5988   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  5989   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  5990   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  5991   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  5992   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  5993   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  5994   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  5995   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  5996   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  5997   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  5998   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  5999   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6000   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6001   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6002   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6003   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6004   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6005   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6006   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6007   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6008   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6009   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6010   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6011   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6012   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6013   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6014   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6015   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6016   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6017   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6018   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6019   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6020   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6021   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6022   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6023   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6024   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6025   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6026   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6027   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6028   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6029   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6030   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6031   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6032   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6033   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6034   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6035   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6036   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6037   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6038   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6039   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6040   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6041   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6042   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6043   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6044   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6045   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6046   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6047   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6048   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6049   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6050   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6051   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6052   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6053   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6054   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6055   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  6056   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  6057   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  6058   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  6059   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  6060   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  6061   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  6062   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  6063   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  6064   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  6065   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6066   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6067   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6068   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6069   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6070   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6071   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6072   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6073   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6074   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6075   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6076   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6077   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6078   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6079   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6080   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6081   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6082   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6083   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6084   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6085   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6086   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6087   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6088   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6089   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6090   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6091   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6092   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6093   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6094   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6095   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6096   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6097   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6098   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6099   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6100   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6101   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6102   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6103   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6104   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6105   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6106   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6107   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6108   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6109   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6110   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  6111   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  6112   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  6113   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  6114   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  6115   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  6116   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  6117   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  6118   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  6119   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  6120   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6121   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6122   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6123   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6124   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6125   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6126   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6127   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6128   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6129   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6130   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6131   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6132   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6133   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6134   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6135   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6136   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6137   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6138   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6139   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6140   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6141   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6142   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6143   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6144   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6145   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6146   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6147   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6148   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6149   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6150   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6151   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6152   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6153   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6154   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6155   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  6156   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  6157   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  6158   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  6159   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  6160   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  6161   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  6162   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  6163   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  6164   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  6165   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6166   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6167   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6168   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6169   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6170   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6171   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6172   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6173   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6174   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6175   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6176   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6177   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6178   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6179   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6180   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6181   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6182   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6183   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6184   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6185   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6186   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6187   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6188   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6189   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6190   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6191   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  6192   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  6193   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  6194   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  6195   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  6196   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  6197   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  6198   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  6199   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  6200   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  6201   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6202   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6203   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6204   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6205   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6206   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6207   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6208   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6209   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6210   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6211   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6212   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6213   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6214   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6215   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6216   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6217   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6218   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6219   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6220   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6221   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6222   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6223   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6224   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6225   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6226   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6227   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)■)S)u)b)m)i)t)fail dotstar or empty
  6228   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)■)u)b)m)i)t)fail dotstar or empty
  6229   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)■)b)m)i)t)fail dotstar or empty
  6230   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)■)m)i)t)fail dotstar or empty
  6231   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)■)i)t)fail dotstar or empty
  6232   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)■)t)fail dotstar or empty
  6233   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)■)fail dotstar or empty
  6234   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)■)u)b)m)i)t)fail dotstar or empty
  6235   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)■)b)m)i)t)fail dotstar or empty
  6236   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)■)m)i)t)fail dotstar or empty
  6237   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)■)i)t)fail dotstar or empty
  6238   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)■)t)fail dotstar or empty
  6239   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)■)fail dotstar or empty
  6240   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)■)b)m)i)t)fail dotstar or empty
  6241   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)■)m)i)t)fail dotstar or empty
  6242   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)■)i)t)fail dotstar or empty
  6243   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)■)t)fail dotstar or empty
  6244   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)■)fail dotstar or empty
  6245   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)■)m)i)t)fail dotstar or empty
  6246   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)■)i)t)fail dotstar or empty
  6247   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)■)t)fail dotstar or empty
  6248   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)■)fail dotstar or empty
  6249   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)■)i)t)fail dotstar or empty
  6250   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)■)t)fail dotstar or empty
  6251   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)■)fail dotstar or empty
  6252   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)■)t)fail dotstar or empty
  6253   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)■)fail dotstar or empty
  6254   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)■)fail dotstar or empty
  6255   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)■)u)b)m)i)t)fail dotstar or empty
  6256   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)■)b)m)i)t)fail dotstar or empty
  6257   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)■)m)i)t)fail dotstar or empty
  6258   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)■)i)t)fail dotstar or empty
  6259   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)■)t)fail dotstar or empty
  6260   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)■)fail dotstar or empty
  6261   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)■)b)m)i)t)fail dotstar or empty
  6262   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)■)m)i)t)fail dotstar or empty
  6263   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)■)i)t)fail dotstar or empty
  6264   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)■)t)fail dotstar or empty
  6265   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)■)fail dotstar or empty
  6266   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)■)m)i)t)fail dotstar or empty
  6267   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)■)i)t)fail dotstar or empty
  6268   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)■)t)fail dotstar or empty
  6269   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)■)fail dotstar or empty
  6270   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)■)i)t)fail dotstar or empty
  6271   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)■)t)fail dotstar or empty
  6272   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)■)fail dotstar or empty
  6273   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)■)t)fail dotstar or empty
  6274   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)■)fail dotstar or empty
  6275   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)■)fail dotstar or empty
  6276   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)■)b)m)i)t)fail dotstar or empty
  6277   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)■)m)i)t)fail dotstar or empty
  6278   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)■)i)t)fail dotstar or empty
  6279   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)■)t)fail dotstar or empty
  6280   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)■)fail dotstar or empty
  6281   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)■)m)i)t)fail dotstar or empty
  6282   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)■)i)t)fail dotstar or empty
  6283   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)■)t)fail dotstar or empty
  6284   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)■)fail dotstar or empty
  6285   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)■)i)t)fail dotstar or empty
  6286   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)■)t)fail dotstar or empty
  6287   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)■)fail dotstar or empty
  6288   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)■)t)fail dotstar or empty
  6289   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)■)fail dotstar or empty
  6290   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)■)fail dotstar or empty
  6291   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)■)m)i)t)fail dotstar or empty
  6292   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)■)i)t)fail dotstar or empty
  6293   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)■)t)fail dotstar or empty
  6294   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)■)fail dotstar or empty
  6295   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)■)i)t)fail dotstar or empty
  6296   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)■)t)fail dotstar or empty
  6297   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)■)fail dotstar or empty
  6298   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)■)t)fail dotstar or empty
  6299   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)■)fail dotstar or empty
  6300   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)■)fail dotstar or empty
  6301   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)■)i)t)fail dotstar or empty
  6302   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)■)t)fail dotstar or empty
  6303   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)■)fail dotstar or empty
  6304   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)■)t)fail dotstar or empty
  6305   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)■)fail dotstar or empty
  6306   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)■)fail dotstar or empty
  6307   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)■)t)fail dotstar or empty
  6308   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)■)fail dotstar or empty
  6309   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)■)fail dotstar or empty
  6310   |  4     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)■)fail dotstar or empty
  6311   |  4     ((((((((gt)■)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6312   |  4     ((((((((gt)■)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6313   |  4     ((((((((gt)■)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6314   |  4     ((((((((gt)■)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6315   |  4     ((((((((gt)■)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6316   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6317   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6318   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6319   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6320   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6321   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6322   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6323   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6324   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6325   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6326   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6327   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6328   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6329   |  4     ((((((((gt)■)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6330   |  4     ((((((((gt)■)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6331   |  4     ((((((((gt)■)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6332   |  4     ((((((((gt)■)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6333   |  4     ((((((((gt)■)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6334   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6335   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6336   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6337   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6338   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6339   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6340   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6341   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6342   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  6343   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  6344   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  6345   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  6346   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  6347   |  4     ((((((((gt)■)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  6348   |  4     ((((((((gt)(■■))(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)get a solution: ((((((((gt)(m\.))([ikln])*)[Cc])l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)
add negative: gtm.Click
  unsatisfiable SAT formula       
  6349   |  4     ((((((((gt)(■|■))(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  6350   |  4     ((((((((gt)(■){■})(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6351   |  4     ((((((((gt)■)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6352   |  4     ((((((((gt)■)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  6353   |  4     ((((((((gt)■)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6354   |  4     ((((((((gt)■)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6355   |  4     ((((((((gt)■)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  6356   |  4     ((((((((gt)■)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6357   |  4     ((((((((gt)■)(■)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6358   |  4     ((((((((gt)■)(■)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6359   |  4     ((((((((gt)■)(■)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6360   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6361   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6362   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6363   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6364   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6365   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6366   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6367   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6368   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6369   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6370   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6371   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6372   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6373   |  4     ((((((((gt)■)(■)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6374   |  4     ((((((((gt)■)(■)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6375   |  4     ((((((((gt)■)(■)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6376   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6377   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6378   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6379   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6380   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6381   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6382   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6383   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6384   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6385   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6386   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6387   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6388   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6389   |  4     ((((((((gt)■)(■)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6390   |  4     ((((((((gt)■)(■)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6391   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6392   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6393   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6394   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6395   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6396   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6397   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6398   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6399   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6400   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6401   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6402   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6403   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6404   |  4     ((((((((gt)■)(■)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6405   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6406   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6407   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6408   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6409   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6410   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6411   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6412   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6413   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6414   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6415   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6416   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6417   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6418   |  4     ((((((((gt)■)(■)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6419   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6420   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6421   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6422   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6423   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6424   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6425   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6426   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6427   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6428   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6429   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6430   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6431   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6432   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6433   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6434   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6435   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6436   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6437   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6438   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6439   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6440   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6441   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6442   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6443   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6444   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6445   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6446   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6447   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6448   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6449   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6450   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6451   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6452   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6453   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6454   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6455   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6456   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6457   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6458   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6459   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6460   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6461   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6462   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6463   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6464   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6465   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6466   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6467   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6468   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6469   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6470   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6471   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6472   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6473   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6474   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  6475   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  6476   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  6477   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  6478   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  6479   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  6480   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  6481   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  6482   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  6483   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  6484   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6485   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6486   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6487   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6488   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6489   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6490   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6491   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6492   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6493   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6494   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6495   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6496   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6497   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6498   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6499   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6500   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6501   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6502   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6503   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6504   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6505   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6506   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6507   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6508   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6509   |  4     ((((((((gt)■)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6510   |  4     ((((((((gt)■)(\.){■})■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6511   |  4     ((((((((gt)■)(\.){■})■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6512   |  4     ((((((((gt)■)(\.){■})■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6513   |  4     ((((((((gt)■)(\.){■})■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6514   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6515   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6516   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6517   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6518   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6519   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6520   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6521   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6522   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6523   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6524   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6525   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6526   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6527   |  4     ((((((((gt)■)(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6528   |  4     ((((((((gt)■)■)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6529   |  4     ((((((((gt)(■■))(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6530   |  4     ((((((((gt)(■|■))(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6531   |  4     ((((((((gt)(■){■})(\.){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6532   |  4     ((((((((gt)■)(\.){■})(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6533   |  4     ((((((((gt)■)(\.){■})(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6534   |  4     ((((((((gt)■)(\.){■})(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6535   |  4     ((((((((gt)■)(\.){■})c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6536   |  4     ((((((((gt)■)(\.){■})c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6537   |  4     ((((((((gt)■)(\.){■})c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6538   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6539   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6540   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6541   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6542   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6543   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6544   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6545   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6546   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6547   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6548   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6549   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6550   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6551   |  4     ((((((((gt)■)(\.){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6552   |  4     ((((((((gt)■)■)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6553   |  4     ((((((((gt)■)(\.){■})c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6554   |  4     ((((((((gt)■)(\.){■})c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6555   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6556   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6557   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6558   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6559   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6560   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6561   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6562   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6563   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6564   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6565   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6566   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6567   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6568   |  4     ((((((((gt)■)(\.){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6569   |  4     ((((((((gt)■)■)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6570   |  4     ((((((((gt)■)(\.){■})c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6571   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6572   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6573   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6574   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6575   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6576   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6577   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6578   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6579   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6580   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6581   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6582   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6583   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6584   |  4     ((((((((gt)■)(\.){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6585   |  4     ((((((((gt)■)■)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6586   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6587   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6588   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6589   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6590   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6591   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6592   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6593   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6594   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6595   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6596   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6597   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6598   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6599   |  4     ((((((((gt)■)(\.){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6600   |  4     ((((((((gt)■)■)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6601   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6602   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6603   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6604   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6605   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6606   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6607   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6608   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6609   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6610   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6611   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6612   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6613   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6614   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6615   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6616   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6617   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6618   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6619   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6620   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6621   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6622   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6623   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6624   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6625   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6626   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6627   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6628   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6629   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6630   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6631   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6632   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6633   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6634   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6635   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6636   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6637   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6638   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6639   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6640   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6641   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6642   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6643   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6644   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6645   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6646   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6647   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6648   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6649   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6650   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6651   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6652   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6653   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6654   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6655   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6656   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6657   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6658   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6659   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6660   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6661   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  6662   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  6663   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  6664   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  6665   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  6666   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  6667   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  6668   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  6669   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  6670   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  6671   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  6672   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  6673   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  6674   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  6675   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  6676   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  6677   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  6678   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  6679   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  6680   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  6681   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  6682   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  6683   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  6684   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  6685   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  6686   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  6687   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  6688   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  6689   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  6690   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  6691   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  6692   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  6693   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  6694   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  6695   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  6696   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  6697   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  6698   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  6699   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  6700   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  6701   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  6702   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  6703   |  4     ((((((((gt)■)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  6704   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  6705   |  4     ((((((((gt)■)■)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  6706   |  4     ((((((((gt)■)(\.)*)■)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6707   |  4     ((((((((gt)■)(\.)*)■)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6708   |  4     ((((((((gt)■)(\.)*)■)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6709   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6710   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6711   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6712   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6713   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6714   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6715   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6716   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6717   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6718   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6719   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6720   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6721   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6722   |  4     ((((((((gt)■)(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6723   |  4     ((((((((gt)(■■))(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6724   |  4     ((((((((gt)(■|■))(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6725   |  4     ((((((((gt)(■){■})(\.)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6726   |  4     ((((((((gt)■)(\.)*)(■■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6727   |  4     ((((((((gt)■)(\.)*)(■|■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6728   |  4     ((((((((gt)■)(\.)*)(■){■})■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6729   |  4     ((((((((gt)■)(\.)*)■)(■■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6730   |  4     ((((((((gt)■)(\.)*)■)(■|■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6731   |  4     ((((((((gt)■)(\.)*)■)(■){■})i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6732   |  4     ((((((((gt)■)(\.)*)■)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6733   |  4     ((((((((gt)■)(\.)*)■)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6734   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6735   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6736   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6737   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6738   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6739   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6740   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6741   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6742   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6743   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6744   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6745   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6746   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6747   |  4     ((((((((gt)■)(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6748   |  4     ((((((((gt)(■■))(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6749   |  4     ((((((((gt)(■|■))(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6750   |  4     ((((((((gt)(■){■})(\.)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6751   |  4     ((((((((gt)■)(\.)*)(■■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6752   |  4     ((((((((gt)■)(\.)*)(■|■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6753   |  4     ((((((((gt)■)(\.)*)(■){■})l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6754   |  4     ((((((((gt)■)(\.)*)■)l)(■■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6755   |  4     ((((((((gt)■)(\.)*)■)l)(■|■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6756   |  4     ((((((((gt)■)(\.)*)■)l)(■){■})c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6757   |  4     ((((((((gt)■)(\.)*)■)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6758   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6759   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6760   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6761   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6762   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6763   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6764   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6765   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6766   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6767   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6768   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6769   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6770   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6771   |  4     ((((((((gt)■)(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6772   |  4     ((((((((gt)(■■))(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6773   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6774   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6775   |  4     ((((((((gt)■)(\.)*)(■■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6776   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6777   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6778   |  4     ((((((((gt)■)(\.)*)■)l)i)(■■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6779   |  4     ((((((((gt)■)(\.)*)■)l)i)(■|■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6780   |  4     ((((((((gt)■)(\.)*)■)l)i)(■){■})k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6781   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6782   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6783   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6784   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6785   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6786   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6787   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6788   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6789   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6790   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6791   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6792   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6793   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6794   |  4     ((((((((gt)■)(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6795   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6796   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6797   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6798   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6799   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6800   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6801   |  4     ((((((((gt)■)(\.)*)■)l)i)c)(■■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6802   |  4     ((((((((gt)■)(\.)*)■)l)i)c)(■|■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6803   |  4     ((((((((gt)■)(\.)*)■)l)i)c)(■){■}|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6804   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6805   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6806   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6807   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6808   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6809   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6810   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6811   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6812   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6813   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6814   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6815   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6816   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6817   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6818   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6819   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6820   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6821   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6822   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6823   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|(((((((((((((■■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6824   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|(((((((((((((■|■)t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6825   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|(((((((((((((■){■}t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6826   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6827   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6828   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6829   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6830   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6831   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6832   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6833   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6834   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6835   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6836   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  6837   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  6838   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6839   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6840   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6841   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6842   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6843   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6844   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g(■■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6845   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g(■|■))m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6846   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((g(■){■})m).)f)o)r)m)S)u)b)m)i)t)fail dot
  6847   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6848   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dot
  6849   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dot
  6850   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dot
  6851   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dot
  6852   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dot
  6853   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dot
  6854   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dot
  6855   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dot
  6856   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dot
  6857   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dot
  6858   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6859   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6860   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6861   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6862   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  6863   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6864   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)(■■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  6865   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)(■|■)).)f)o)r)m)S)u)b)m)i)t)fail dot
  6866   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)(■){■}).)f)o)r)m)S)u)b)m)i)t)fail dot
  6867   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dot
  6868   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dot
  6869   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dot
  6870   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dot
  6871   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dot
  6872   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dot
  6873   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dot
  6874   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dot
  6875   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dot
  6876   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dot
  6877   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6878   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6879   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6880   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6881   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  6882   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6883   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■■))f)o)r)m)S)u)b)m)i)t)fail dot
  6884   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■|■))f)o)r)m)S)u)b)m)i)t)fail dot
  6885   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m)(■){■})f)o)r)m)S)u)b)m)i)t)fail dot
  6886   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dot
  6887   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dot
  6888   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dot
  6889   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dot
  6890   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dot
  6891   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dot
  6892   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dot
  6893   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dot
  6894   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dot
  6895   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6896   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6897   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6898   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6899   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  6900   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6901   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■■))o)r)m)S)u)b)m)i)t)fail dot
  6902   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■|■))o)r)m)S)u)b)m)i)t)fail dot
  6903   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)(■){■})o)r)m)S)u)b)m)i)t)fail dot
  6904   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dot
  6905   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dot
  6906   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dot
  6907   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dot
  6908   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dot
  6909   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dot
  6910   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dot
  6911   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dot
  6912   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6913   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6914   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6915   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6916   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  6917   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6918   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■■))r)m)S)u)b)m)i)t)fail dot
  6919   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■|■))r)m)S)u)b)m)i)t)fail dot
  6920   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)(■){■})r)m)S)u)b)m)i)t)fail dot
  6921   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dot
  6922   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dot
  6923   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dot
  6924   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dot
  6925   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dot
  6926   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dot
  6927   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dot
  6928   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6929   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6930   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6931   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6932   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  6933   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6934   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■■))m)S)u)b)m)i)t)fail dot
  6935   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■|■))m)S)u)b)m)i)t)fail dot
  6936   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■){■})m)S)u)b)m)i)t)fail dot
  6937   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dot
  6938   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dot
  6939   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dot
  6940   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dot
  6941   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dot
  6942   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dot
  6943   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6944   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6945   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6946   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6947   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  6948   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  6949   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■■))S)u)b)m)i)t)fail dot
  6950   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■|■))S)u)b)m)i)t)fail dot
  6951   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■){■})S)u)b)m)i)t)fail dot
  6952   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dot
  6953   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dot
  6954   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dot
  6955   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dot
  6956   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dot
  6957   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6958   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6959   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  6960   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6961   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  6962   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  6963   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■■))u)b)m)i)t)fail dot
  6964   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■|■))u)b)m)i)t)fail dot
  6965   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■){■})u)b)m)i)t)fail dot
  6966   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dot
  6967   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dot
  6968   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dot
  6969   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dot
  6970   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6971   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6972   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  6973   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6974   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  6975   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  6976   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■■))b)m)i)t)fail dot
  6977   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■|■))b)m)i)t)fail dot
  6978   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■){■})b)m)i)t)fail dot
  6979   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dot
  6980   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dot
  6981   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dot
  6982   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6983   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6984   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  6985   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6986   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  6987   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  6988   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■■))m)i)t)fail dot
  6989   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■|■))m)i)t)fail dot
  6990   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■){■})m)i)t)fail dot
  6991   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dot
  6992   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dot
  6993   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6994   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6995   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  6996   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6997   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  6998   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  6999   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■■))i)t)fail dot
  7000   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■|■))i)t)fail dot
  7001   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)(■){■})i)t)fail dot
  7002   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dot
  7003   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  7004   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  7005   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  7006   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  7007   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dot
  7008   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  7009   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■■))t)fail dot
  7010   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■|■))t)fail dot
  7011   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)(■){■})t)fail dot
  7012   |  4     ((((((((gt)(■■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  7013   |  4     ((((((((gt)(■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  7014   |  4     ((((((((gt)(■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  7015   |  4     ((((((((gt)■)(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  7016   |  4     ((((((((gt)■)(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dot
  7017   |  4     ((((((((gt)■)(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  7018   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■■))fail dot
  7019   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■|■))fail dot
  7020   |  4     ((((((((gt)■)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)(■){■})fail dot
  7021   |  4     ((((((((gt)(■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7022   |  4     ((((((((gt)((■■)■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7023   |  4     ((((((((gt)((■|■)■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7024   |  4     ((((((((gt)((■){■}■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7025   |  4     ((((((((gt)(■■))(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7026   |  4     ((((((((gt)(■■))(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7027   |  4     ((((((((gt)(■■))(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7028   |  4     ((((((((gt)(■■|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7029   |  4     ((((((((gt)((■|■)|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7030   |  4     ((((((((gt)((■){■}|■))(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7031   |  4     ((((((((gt)(■|■))(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7032   |  4     ((((((((gt)(■|■))(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7033   |  4     ((((((((gt)(■|■))(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7034   |  4     ((((((((gt)(■■){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7035   |  4     ((((((((gt)((■|■)){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  7036   |  4     ((((((((gt)((■){■}){■})(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7037   |  4     ((((((((gt)(■){■})(\.)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7038   |  4     ((((((((gt)(■){■})(\.)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  7039   |  4     ((((((((gt)(■){■})(\.)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7040   |  4     ((((((((gt)■)(\.)*)(■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7041   |  4     ((((((((gt)■)(\.)*)((■■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7042   |  4     ((((((((gt)■)(\.)*)((■|■)■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7043   |  4     ((((((((gt)■)(\.)*)((■){■}■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7044   |  4     ((((((((gt)■)(\.)*)(■■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7045   |  4     ((((((((gt)■)(\.)*)((■|■)|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7046   |  4     ((((((((gt)■)(\.)*)((■){■}|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7047   |  4     ((((((((gt)■)(\.)*)(■■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7048   |  4     ((((((((gt)■)(\.)*)((■|■)){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  7049   |  4     ((((((((gt)■)(\.)*)((■){■}){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7050   |  4     ((((((((gt)■)(\.)*)c)■)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7051   |  4     ((((((((gt)■)(\.)*)c)■)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7052   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7053   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7054   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7055   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7056   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7057   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7058   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7059   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7060   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7061   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7062   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7063   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7064   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7065   |  4     ((((((((gt)■)(\.)*)c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7066   |  4     ((((((((gt)■)(\.)*)c)■)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7067   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7068   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7069   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7070   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7071   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7072   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7073   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7074   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7075   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7076   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7077   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7078   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7079   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7080   |  4     ((((((((gt)■)(\.)*)c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7081   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7082   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7083   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7084   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7085   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7086   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7087   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7088   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7089   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7090   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7091   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7092   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7093   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7094   |  4     ((((((((gt)■)(\.)*)c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7095   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7096   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7097   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7098   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7099   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7100   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7101   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7102   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7103   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7104   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7105   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7106   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7107   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7108   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7109   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7110   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7111   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7112   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7113   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7114   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7115   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7116   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7117   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7118   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7119   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7120   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7121   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7122   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7123   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7124   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7125   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7126   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7127   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7128   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7129   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7130   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7131   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7132   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7133   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7134   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7135   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7136   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7137   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7138   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7139   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7140   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7141   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7142   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7143   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7144   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7145   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7146   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7147   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7148   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7149   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7150   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7151   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7152   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7153   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7154   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7155   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7156   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7157   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7158   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7159   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7160   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7161   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7162   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7163   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7164   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7165   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7166   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7167   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7168   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7169   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7170   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7171   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7172   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7173   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7174   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7175   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7176   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7177   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7178   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7179   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7180   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7181   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7182   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7183   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7184   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7185   |  4     ((((((((gt)■)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7186   |  4     ((((((((gt)■)(\.)*)c)l)■)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7187   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7188   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7189   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7190   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7191   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7192   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7193   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7194   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7195   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7196   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7197   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7198   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7199   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7200   |  4     ((((((((gt)■)(\.)*)c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7201   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7202   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7203   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7204   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7205   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7206   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7207   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7208   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7209   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7210   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7211   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7212   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7213   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7214   |  4     ((((((((gt)■)(\.)*)c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7215   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7216   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7217   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7218   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7219   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7220   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7221   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7222   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7223   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7224   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7225   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7226   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7227   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7228   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7229   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7230   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7231   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7232   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7233   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7234   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7235   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7236   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7237   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7238   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7239   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7240   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7241   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7242   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7243   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7244   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7245   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7246   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7247   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7248   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7249   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7250   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7251   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7252   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7253   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7254   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7255   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7256   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7257   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7258   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7259   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7260   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7261   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7262   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7263   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7264   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7265   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7266   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7267   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7268   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7269   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7270   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7271   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7272   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7273   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7274   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7275   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7276   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7277   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7278   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7279   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7280   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7281   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7282   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7283   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7284   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7285   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7286   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7287   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7288   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7289   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7290   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7291   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7292   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7293   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7294   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7295   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7296   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7297   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7298   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7299   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7300   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7301   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7302   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7303   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7304   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7305   |  4     ((((((((gt)■)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7306   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7307   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7308   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7309   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7310   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7311   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7312   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7313   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7314   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7315   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7316   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7317   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7318   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7319   |  4     ((((((((gt)■)(\.)*)c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7320   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7321   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7322   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7323   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7324   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7325   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7326   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7327   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7328   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7329   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7330   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7331   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7332   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7333   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7334   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7335   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7336   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7337   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7338   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7339   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7340   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7341   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7342   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7343   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7344   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7345   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7346   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7347   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7348   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7349   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7350   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7351   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7352   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7353   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7354   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7355   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7356   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7357   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7358   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7359   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7360   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7361   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7362   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7363   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7364   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7365   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7366   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7367   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7368   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7369   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7370   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7371   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7372   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7373   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7374   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7375   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7376   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7377   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7378   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7379   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7380   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7381   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7382   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7383   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7384   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7385   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7386   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7387   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7388   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7389   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7390   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7391   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7392   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7393   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7394   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7395   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7396   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7397   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7398   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7399   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7400   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7401   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7402   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7403   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7404   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7405   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7406   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7407   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7408   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7409   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7410   |  4     ((((((((gt)■)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7411   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7412   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7413   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7414   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7415   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7416   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7417   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7418   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7419   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7420   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7421   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7422   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7423   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7424   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7425   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7426   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7427   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7428   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7429   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7430   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7431   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7432   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7433   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7434   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7435   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7436   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7437   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7438   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7439   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7440   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7441   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7442   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7443   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7444   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7445   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7446   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7447   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7448   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7449   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7450   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7451   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7452   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7453   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7454   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7455   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7456   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7457   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7458   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7459   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7460   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7461   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7462   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7463   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7464   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7465   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7466   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7467   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7468   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7469   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7470   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7471   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7472   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7473   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7474   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7475   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7476   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7477   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7478   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7479   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7480   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7481   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7482   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7483   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7484   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7485   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7486   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7487   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7488   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7489   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7490   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7491   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7492   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7493   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7494   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7495   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7496   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7497   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7498   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7499   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7500   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7501   |  4     ((((((((gt)■)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7502   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7503   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7504   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7505   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7506   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7507   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7508   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7509   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7510   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7511   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7512   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7513   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7514   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7515   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7516   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7517   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7518   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7519   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7520   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7521   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7522   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7523   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7524   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7525   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7526   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7527   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7528   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7529   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7530   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7531   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7532   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7533   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7534   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7535   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7536   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7537   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7538   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7539   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7540   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7541   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7542   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7543   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7544   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7545   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7546   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7547   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7548   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7549   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7550   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7551   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7552   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7553   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7554   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7555   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7556   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7557   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7558   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7559   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7560   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7561   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7562   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7563   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7564   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7565   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7566   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7567   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7568   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7569   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7570   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7571   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7572   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7573   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7574   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7575   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7576   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7577   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7578   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7579   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7580   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7581   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7582   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7583   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7584   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7585   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7586   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7587   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7588   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7589   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7590   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7591   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7592   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7593   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7594   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7595   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7596   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7597   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7598   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7599   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7600   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7601   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7602   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7603   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7604   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7605   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7606   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7607   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7608   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7609   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7610   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7611   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7612   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7613   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7614   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7615   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7616   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7617   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7618   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7619   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7620   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7621   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7622   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7623   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7624   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7625   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7626   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7627   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7628   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7629   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7630   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7631   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7632   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7633   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7634   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7635   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7636   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7637   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7638   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7639   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7640   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7641   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7642   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7643   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7644   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7645   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7646   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7647   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7648   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7649   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7650   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7651   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7652   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7653   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7654   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7655   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7656   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7657   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7658   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7659   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7660   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7661   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7662   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7663   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7664   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7665   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7666   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7667   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7668   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7669   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7670   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7671   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7672   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7673   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7674   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7675   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7676   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7677   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7678   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7679   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7680   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7681   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7682   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7683   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7684   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7685   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7686   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7687   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7688   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7689   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7690   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7691   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7692   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7693   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7694   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7695   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7696   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7697   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7698   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7699   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7700   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7701   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7702   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7703   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7704   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7705   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7706   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7707   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7708   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7709   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7710   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7711   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7712   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7713   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7714   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7715   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7716   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7717   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7718   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7719   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7720   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7721   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7722   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7723   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7724   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7725   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7726   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7727   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7728   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7729   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7730   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7731   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7732   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7733   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7734   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7735   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7736   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7737   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7738   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7739   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7740   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7741   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7742   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7743   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7744   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7745   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7746   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7747   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  7748   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  7749   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  7750   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  7751   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  7752   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  7753   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  7754   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  7755   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  7756   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  7757   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  7758   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  7759   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  7760   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  7761   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  7762   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  7763   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  7764   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  7765   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  7766   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  7767   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  7768   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  7769   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  7770   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  7771   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  7772   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  7773   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  7774   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  7775   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  7776   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  7777   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  7778   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  7779   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  7780   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  7781   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  7782   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  7783   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)■)S)u)b)m)i)t)fail dotstar or empty
  7784   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)■)u)b)m)i)t)fail dotstar or empty
  7785   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)■)b)m)i)t)fail dotstar or empty
  7786   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)■)m)i)t)fail dotstar or empty
  7787   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)■)i)t)fail dotstar or empty
  7788   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)■)t)fail dotstar or empty
  7789   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)■)fail dotstar or empty
  7790   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)■)u)b)m)i)t)fail dotstar or empty
  7791   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)■)b)m)i)t)fail dotstar or empty
  7792   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)■)m)i)t)fail dotstar or empty
  7793   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)■)i)t)fail dotstar or empty
  7794   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)■)t)fail dotstar or empty
  7795   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)■)fail dotstar or empty
  7796   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)■)b)m)i)t)fail dotstar or empty
  7797   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)■)m)i)t)fail dotstar or empty
  7798   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)■)i)t)fail dotstar or empty
  7799   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)■)t)fail dotstar or empty
  7800   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)■)fail dotstar or empty
  7801   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)■)m)i)t)fail dotstar or empty
  7802   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)■)i)t)fail dotstar or empty
  7803   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)■)t)fail dotstar or empty
  7804   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)■)fail dotstar or empty
  7805   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)■)i)t)fail dotstar or empty
  7806   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)■)t)fail dotstar or empty
  7807   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)■)fail dotstar or empty
  7808   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)■)t)fail dotstar or empty
  7809   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)■)fail dotstar or empty
  7810   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)■)fail dotstar or empty
  7811   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)■)u)b)m)i)t)fail dotstar or empty
  7812   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)■)b)m)i)t)fail dotstar or empty
  7813   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)■)m)i)t)fail dotstar or empty
  7814   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)■)i)t)fail dotstar or empty
  7815   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)■)t)fail dotstar or empty
  7816   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)■)fail dotstar or empty
  7817   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)■)b)m)i)t)fail dotstar or empty
  7818   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)■)m)i)t)fail dotstar or empty
  7819   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)■)i)t)fail dotstar or empty
  7820   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)■)t)fail dotstar or empty
  7821   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)■)fail dotstar or empty
  7822   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)■)m)i)t)fail dotstar or empty
  7823   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)■)i)t)fail dotstar or empty
  7824   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)■)t)fail dotstar or empty
  7825   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)■)fail dotstar or empty
  7826   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)■)i)t)fail dotstar or empty
  7827   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)■)t)fail dotstar or empty
  7828   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)■)fail dotstar or empty
  7829   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)■)t)fail dotstar or empty
  7830   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)■)fail dotstar or empty
  7831   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)■)fail dotstar or empty
  7832   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)■)b)m)i)t)fail dotstar or empty
  7833   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)■)m)i)t)fail dotstar or empty
  7834   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)■)i)t)fail dotstar or empty
  7835   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)■)t)fail dotstar or empty
  7836   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)■)fail dotstar or empty
  7837   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)■)m)i)t)fail dotstar or empty
  7838   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)■)i)t)fail dotstar or empty
  7839   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)■)t)fail dotstar or empty
  7840   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)■)fail dotstar or empty
  7841   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)■)i)t)fail dotstar or empty
  7842   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)■)t)fail dotstar or empty
  7843   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)■)fail dotstar or empty
  7844   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)■)t)fail dotstar or empty
  7845   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)■)fail dotstar or empty
  7846   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)■)fail dotstar or empty
  7847   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)■)m)i)t)fail dotstar or empty
  7848   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)■)i)t)fail dotstar or empty
  7849   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)■)t)fail dotstar or empty
  7850   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)■)fail dotstar or empty
  7851   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)■)i)t)fail dotstar or empty
  7852   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)■)t)fail dotstar or empty
  7853   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)■)fail dotstar or empty
  7854   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)■)t)fail dotstar or empty
  7855   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)■)fail dotstar or empty
  7856   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)■)fail dotstar or empty
  7857   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)■)i)t)fail dotstar or empty
  7858   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)■)t)fail dotstar or empty
  7859   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)■)fail dotstar or empty
  7860   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)■)t)fail dotstar or empty
  7861   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)■)fail dotstar or empty
  7862   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)■)fail dotstar or empty
  7863   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)■)t)fail dotstar or empty
  7864   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)■)fail dotstar or empty
  7865   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)■)fail dotstar or empty
  7866   |  4     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)■)fail dotstar or empty
  7867   |  4     ((((((((gt)m)(■){■})■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7868   |  4     ((((((((gt)m)(■){■})■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7869   |  4     ((((((((gt)m)(■){■})■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7870   |  4     ((((((((gt)m)(■){■})■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7871   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7872   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7873   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7874   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7875   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7876   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7877   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7878   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7879   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  7880   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  7881   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  7882   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  7883   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  7884   |  4     ((((((((gt)m)(■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  7885   |  4     ((((((((gt)m)(■■){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7886   |  4     ((((((((gt)m)((■|■)){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  7887   |  4     ((((((((gt)m)((■){■}){■})■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7888   |  4     ((((((((gt)m)(■){■})(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7889   |  4     ((((((((gt)m)(■){■})(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  7890   |  4     ((((((((gt)m)(■){■})(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  7891   |  4     ((((((((gt)m)(■){■})c)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7892   |  4     ((((((((gt)m)(■){■})c)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7893   |  4     ((((((((gt)m)(■){■})c)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7894   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7895   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7896   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7897   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7898   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7899   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7900   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7901   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7902   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7903   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7904   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7905   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7906   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7907   |  4     ((((((((gt)m)(■){■})c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7908   |  4     ((((((((gt)m)(■){■})c)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7909   |  4     ((((((((gt)m)(■){■})c)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7910   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7911   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7912   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7913   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7914   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7915   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7916   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7917   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7918   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7919   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7920   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7921   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7922   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7923   |  4     ((((((((gt)m)(■){■})c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7924   |  4     ((((((((gt)m)(■){■})c)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7925   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7926   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7927   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7928   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7929   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7930   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7931   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7932   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7933   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7934   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7935   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7936   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7937   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7938   |  4     ((((((((gt)m)(■){■})c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7939   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7940   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7941   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7942   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7943   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7944   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7945   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7946   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7947   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7948   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7949   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7950   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7951   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7952   |  4     ((((((((gt)m)(■){■})c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7953   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7954   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7955   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7956   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7957   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7958   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7959   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7960   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7961   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7962   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7963   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7964   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7965   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7966   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7967   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7968   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7969   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7970   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7971   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7972   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7973   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7974   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7975   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7976   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7977   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7978   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7979   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7980   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7981   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7982   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7983   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7984   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7985   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7986   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7987   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7988   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7989   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  7990   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  7991   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  7992   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  7993   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  7994   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  7995   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  7996   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  7997   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  7998   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  7999   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)fail dotstar or empty
  8000   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)fail dotstar or empty
  8001   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)fail dotstar or empty
  8002   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)fail dotstar or empty
  8003   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)fail dotstar or empty
  8004   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)fail dotstar or empty
  8005   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)fail dotstar or empty
  8006   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)fail dotstar or empty
  8007   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)fail dotstar or empty
  8008   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)fail dotstar or empty
  8009   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)fail dotstar or empty
  8010   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)fail dotstar or empty
  8011   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)fail dotstar or empty
  8012   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)fail dotstar or empty
  8013   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)fail dotstar or empty
  8014   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)fail dotstar or empty
  8015   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)fail dotstar or empty
  8016   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)fail dotstar or empty
  8017   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)fail dotstar or empty
  8018   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)fail dotstar or empty
  8019   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)fail dotstar or empty
  8020   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)fail dotstar or empty
  8021   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)fail dotstar or empty
  8022   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)fail dotstar or empty
  8023   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)fail dotstar or empty
  8024   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)fail dotstar or empty
  8025   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)fail dotstar or empty
  8026   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)fail dotstar or empty
  8027   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)fail dotstar or empty
  8028   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)fail dotstar or empty
  8029   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)fail dotstar or empty
  8030   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)fail dotstar or empty
  8031   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)fail dotstar or empty
  8032   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)fail dotstar or empty
  8033   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)fail dotstar or empty
  8034   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)fail dotstar or empty
  8035   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)fail dotstar or empty
  8036   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)fail dotstar or empty
  8037   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)fail dotstar or empty
  8038   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)fail dotstar or empty
  8039   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)fail dotstar or empty
  8040   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)fail dotstar or empty
  8041   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)fail dotstar or empty
  8042   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)fail dotstar or empty
  8043   |  4     ((((((((gt)m)(■){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)■)fail dotstar or empty
  8044   |  4     ((((((((gt)m)(■)*)■)■)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8045   |  4     ((((((((gt)m)(■)*)■)■)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8046   |  4     ((((((((gt)m)(■)*)■)■)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8047   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8048   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8049   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8050   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8051   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8052   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8053   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8054   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8055   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8056   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8057   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8058   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8059   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8060   |  4     ((((((((gt)m)(■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8061   |  4     ((((((((gt)m)(■■)*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8062   |  4     ((((((((gt)m)((■|■))*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8063   |  4     ((((((((gt)m)((■){■})*)■)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8064   |  4     ((((((((gt)m)(■)*)(■■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8065   |  4     ((((((((gt)m)(■)*)(■|■))■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8066   |  4     ((((((((gt)m)(■)*)(■){■})■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8067   |  4     ((((((((gt)m)(■)*)■)(■■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8068   |  4     ((((((((gt)m)(■)*)■)(■|■))i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8069   |  4     ((((((((gt)m)(■)*)■)(■){■})i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8070   |  4     ((((((((gt)m)(■)*)■)l)■)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8071   |  4     ((((((((gt)m)(■)*)■)l)■)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8072   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8073   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8074   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8075   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8076   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8077   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8078   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8079   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8080   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8081   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8082   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8083   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8084   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8085   |  4     ((((((((gt)m)(■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8086   |  4     ((((((((gt)m)(■■)*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8087   |  4     ((((((((gt)m)((■|■))*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8088   |  4     ((((((((gt)m)((■){■})*)■)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8089   |  4     ((((((((gt)m)(■)*)(■■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8090   |  4     ((((((((gt)m)(■)*)(■|■))l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8091   |  4     ((((((((gt)m)(■)*)(■){■})l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8092   |  4     ((((((((gt)m)(■)*)■)l)(■■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8093   |  4     ((((((((gt)m)(■)*)■)l)(■|■))c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8094   |  4     ((((((((gt)m)(■)*)■)l)(■){■})c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8095   |  4     ((((((((gt)m)(■)*)■)l)i)■)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8096   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8097   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8098   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8099   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8100   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8101   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8102   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8103   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8104   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8105   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8106   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8107   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8108   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8109   |  4     ((((((((gt)m)(■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8110   |  4     ((((((((gt)m)(■■)*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8111   |  4     ((((((((gt)m)((■|■))*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8112   |  4     ((((((((gt)m)((■){■})*)■)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8113   |  4     ((((((((gt)m)(■)*)(■■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8114   |  4     ((((((((gt)m)(■)*)(■|■))l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8115   |  4     ((((((((gt)m)(■)*)(■){■})l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8116   |  4     ((((((((gt)m)(■)*)■)l)i)(■■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8117   |  4     ((((((((gt)m)(■)*)■)l)i)(■|■))k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8118   |  4     ((((((((gt)m)(■)*)■)l)i)(■){■})k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8119   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8120   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8121   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8122   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8123   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8124   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8125   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8126   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8127   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8128   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8129   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8130   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8131   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8132   |  4     ((((((((gt)m)(■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8133   |  4     ((((((((gt)m)(■■)*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8134   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8135   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8136   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8137   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8138   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8139   |  4     ((((((((gt)m)(■)*)■)l)i)c)(■■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8140   |  4     ((((((((gt)m)(■)*)■)l)i)c)(■|■)|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8141   |  4     ((((((((gt)m)(■)*)■)l)i)c)(■){■}|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8142   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8143   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8144   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8145   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8146   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8147   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8148   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8149   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8150   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8151   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8152   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8153   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8154   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8155   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8156   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8157   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8158   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8159   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8160   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8161   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|(((((((((((((■■)t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8162   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|(((((((((((((■|■)t)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8163   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|(((((((((((((■){■}t)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8164   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8165   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8166   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8167   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8168   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8169   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8170   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8171   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8172   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8173   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8174   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8175   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8176   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  8177   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8178   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8179   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8180   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8181   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8182   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g(■■))m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8183   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g(■|■))m).)f)o)r)m)S)u)b)m)i)t)fail solve
  8184   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((g(■){■})m).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8185   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8186   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8187   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8188   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8189   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8190   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8191   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8192   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8193   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8194   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8195   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8196   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dot
  8197   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail solve
  8198   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8199   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8200   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail solve
  8201   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8202   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)(■■)).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8203   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)(■|■)).)f)o)r)m)S)u)b)m)i)t)fail solve
  8204   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)(■){■}).)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8205   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8206   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8207   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8208   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8209   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8210   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8211   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8212   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8213   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8214   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8215   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail dot
  8216   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail solve
  8217   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8218   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8219   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)fail solve
  8220   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8221   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)(■■))f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8222   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)(■|■))f)o)r)m)S)u)b)m)i)t)fail solve
  8223   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m)(■){■})f)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8224   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8225   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8226   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8227   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8228   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8229   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8230   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8231   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8232   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8233   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail dot
  8234   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail solve
  8235   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8236   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8237   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)fail solve
  8238   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)■)o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8239   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)(■■))o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8240   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)(■|■))o)r)m)S)u)b)m)i)t)fail solve
  8241   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)(■){■})o)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8242   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8243   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8244   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8245   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8246   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8247   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8248   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8249   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8250   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail dot
  8251   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail solve
  8252   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8253   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8254   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)fail solve
  8255   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8256   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)(■■))r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8257   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)(■|■))r)m)S)u)b)m)i)t)fail solve
  8258   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)(■){■})r)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8259   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8260   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8261   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8262   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8263   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8264   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8265   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8266   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail dot
  8267   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail solve
  8268   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8269   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8270   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)fail solve
  8271   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)■)m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8272   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■■))m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8273   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■|■))m)S)u)b)m)i)t)fail solve
  8274   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)(■){■})m)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8275   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8276   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8277   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8278   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8279   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)■)t)  unsatisfiable SAT formula       
  8280   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)■)  unsatisfiable SAT formula       
  8281   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail dot
  8282   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail solve
  8283   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8284   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8285   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)fail solve
  8286   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)■)S)u)b)m)i)t)  unsatisfiable SAT formula       
  8287   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■■))S)u)b)m)i)t)  unsatisfiable SAT formula       
  8288   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■|■))S)u)b)m)i)t)fail solve
  8289   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)(■){■})S)u)b)m)i)t)  unsatisfiable SAT formula       
  8290   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)■)b)m)i)t)  unsatisfiable SAT formula       
  8291   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)■)m)i)t)  unsatisfiable SAT formula       
  8292   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)■)i)t)  unsatisfiable SAT formula       
  8293   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)■)t)  unsatisfiable SAT formula       
  8294   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)■)  unsatisfiable SAT formula       
  8295   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail dot
  8296   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail solve
  8297   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8298   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8299   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)fail solve
  8300   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)■)u)b)m)i)t)  unsatisfiable SAT formula       
  8301   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■■))u)b)m)i)t)  unsatisfiable SAT formula       
  8302   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■|■))u)b)m)i)t)fail solve
  8303   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)(■){■})u)b)m)i)t)  unsatisfiable SAT formula       
  8304   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)■)m)i)t)  unsatisfiable SAT formula       
  8305   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)■)i)t)  unsatisfiable SAT formula       
  8306   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)■)t)  unsatisfiable SAT formula       
  8307   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)■)  unsatisfiable SAT formula       
  8308   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail dot
  8309   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail solve
  8310   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8311   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8312   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)fail solve
  8313   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)■)b)m)i)t)  unsatisfiable SAT formula       
  8314   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■■))b)m)i)t)  unsatisfiable SAT formula       
  8315   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■|■))b)m)i)t)fail solve
  8316   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)(■){■})b)m)i)t)  unsatisfiable SAT formula       
  8317   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)■)i)t)  unsatisfiable SAT formula       
  8318   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)■)t)  unsatisfiable SAT formula       
  8319   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)■)  unsatisfiable SAT formula       
  8320   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail dot
  8321   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail solve
  8322   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8323   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8324   |  4     ((((((((gt)m)(■)*)(■|■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)fail solve
  8325   |  4     ((((((((gt)m)(■)*)(■){■})l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)■)m)i)t)  unsatisfiable SAT formula       
  8326   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■■))m)i)t)  unsatisfiable SAT formula       
  8327   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■|■))m)i)t)fail solve
  8328   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)(■){■})m)i)t)  unsatisfiable SAT formula       
  8329   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)■)t)  unsatisfiable SAT formula       
  8330   |  4     ((((((((gt)m)(■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)■)  unsatisfiable SAT formula       
  8331   |  4     ((((((((gt)m)(■■)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail dot
  8332   |  4     ((((((((gt)m)((■|■))*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)fail solve
  8333   |  4     ((((((((gt)m)((■){■})*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)  unsatisfiable SAT formula       
  8334   |  4     ((((((((gt)m)(■)*)(■■))l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)■)i)t)10.129698753356934
timeout