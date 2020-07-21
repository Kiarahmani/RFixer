
Given the regular expression:

  \[Total execution Time: ((.)+) min

That that should match the strings:


And reject the strings:

  ✗ (0:32)   [Total execution Time: 11.05 min

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nget a solution: (((((((((((((((((((((((((([∅]T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)n
add positive: Total execution Time: .

[Step 1	
  2      |  1     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  3      |  1     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  4      |  1     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  5      |  1     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  6      |  1     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  7      |  1     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  8      |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  9      |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  10     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  11     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  12     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  13     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  14     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  15     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  16     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  17     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  18     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  19     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  20     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  21     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  22     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  23     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  24     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  25     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  26     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  27     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  28     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  29     |  1     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  30     |  2     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  31     |  2     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  32     |  2     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  33     |  2     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  34     |  2     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  35     |  2     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  36     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  37     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  38     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  39     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  40     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  41     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  42     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  43     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  44     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  45     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  46     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  47     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  48     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  49     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  50     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  51     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  52     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  53     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  54     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  55     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  56     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  57     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  58     |  2     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  59     |  2     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail solve
  60     |  2     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  61     |  2     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  62     |  2     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  63     |  2     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  64     |  2     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  65     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  66     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  67     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  68     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  69     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  70     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  71     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  72     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  73     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  74     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  75     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  76     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  77     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  78     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  79     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  80     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  81     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  82     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  83     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  84     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  85     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  86     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  87     |  2     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  88     |  2     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  89     |  2     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  90     |  2     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  91     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  92     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  93     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  94     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  95     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  96     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  97     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  98     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  99     |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  100    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  101    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  102    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  103    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  104    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  105    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  106    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  107    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  108    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  109    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  110    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  111    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  112    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  113    |  2     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  114    |  2     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  115    |  2     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  116    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  117    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  118    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  119    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  120    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  121    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  122    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  123    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  124    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  125    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  126    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  127    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  128    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  129    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  130    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  131    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  132    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  133    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  134    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  135    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  136    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  137    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  138    |  2     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  139    |  2     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  140    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  141    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  142    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  143    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  144    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  145    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  146    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  147    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  148    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  149    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  150    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  151    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  152    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  153    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  154    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  155    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  156    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  157    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  158    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  159    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  160    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  161    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  162    |  2     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  163    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  164    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  165    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  166    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  167    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  168    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  169    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  170    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  171    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  172    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  173    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  174    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  175    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  176    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  177    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  178    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  179    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  180    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  181    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  182    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  183    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  184    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  185    |  2     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  186    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  187    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  188    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  189    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  190    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  191    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  192    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  193    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  194    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  195    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  196    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  197    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  198    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  199    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  200    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  201    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  202    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  203    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  204    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  205    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  206    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  207    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  208    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  209    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  210    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  211    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  212    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  213    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  214    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  215    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  216    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  217    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  218    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  219    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  220    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  221    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  222    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  223    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  224    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  225    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  226    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  227    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  228    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  229    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  230    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  231    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  232    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  233    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  234    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  235    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  236    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  237    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  238    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  239    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  240    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  241    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  242    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  243    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  244    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  245    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  246    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  247    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)n
2.033686876296997
timeout