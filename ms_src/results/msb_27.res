
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
  205    |  2     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)■)r)m)S)u)b)m)i)t)1.0233948230743408
timeout