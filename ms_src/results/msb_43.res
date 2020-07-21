
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
  247    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  248    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  249    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  250    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  251    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  252    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  253    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  254    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  255    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  256    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  257    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  258    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  259    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  260    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  261    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  262    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  263    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  264    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  265    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  266    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  267    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  268    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  269    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  270    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  271    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  272    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  273    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  274    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  275    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  276    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  277    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  278    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  279    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  280    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  281    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  282    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  283    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  284    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  285    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  286    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  287    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  288    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  289    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  290    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  291    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  292    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  293    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  294    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  295    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  296    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  297    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  298    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  299    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  300    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  301    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  302    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  303    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  304    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  305    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  306    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  307    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  308    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  309    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  310    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  311    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  312    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  313    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  314    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  315    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  316    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  317    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  318    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  319    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  320    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  321    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  322    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  323    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  324    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  325    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  326    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  327    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  328    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  329    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  330    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  331    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  332    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  333    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  334    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  335    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  336    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  337    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  338    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  339    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  340    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  341    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  342    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  343    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  344    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  345    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  346    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  347    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  348    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  349    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  350    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  351    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  352    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  353    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  354    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  355    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  356    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  357    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  358    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  359    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  360    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  361    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  362    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  363    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  364    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  365    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  366    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  367    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  368    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  369    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  370    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  371    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  372    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  373    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  374    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  375    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  376    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  377    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  378    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  379    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  380    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  381    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  382    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  383    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  384    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  385    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  386    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  387    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  388    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  389    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  390    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  391    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  392    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  393    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  394    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  395    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  396    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  397    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  398    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  399    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  400    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  401    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  402    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  403    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  404    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  405    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  406    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  407    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  408    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  409    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  410    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  411    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  412    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  413    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  414    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  415    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  416    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  417    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  418    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  419    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  420    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  421    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  422    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  423    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  424    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  425    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  426    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  427    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  428    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  429    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  430    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  431    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  432    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  433    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  434    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  435    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  436    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  437    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  438    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  439    |  2     ((((((((((((((((((((((((((\[T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  440    |  3     ((((((((((((((((((((((((((■■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  441    |  3     ((((((((((((((((((((((((((■■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  442    |  3     ((((((((((((((((((((((((((■■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  443    |  3     ((((((((((((((((((((((((((■■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  444    |  3     ((((((((((((((((((((((((((■■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  445    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  446    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  447    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  448    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  449    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  450    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  451    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  452    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  453    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  454    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  455    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  456    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  457    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  458    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  459    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  460    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  461    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  462    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  463    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  464    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  465    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  466    |  3     ((((((((((((((((((((((((((■■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  467    |  3     ((((((((((((((((((((((((((■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  468    |  3     ((((((((((((((((((((((((((■T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  469    |  3     ((((((((((((((((((((((((((■T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  470    |  3     ((((((((((((((((((((((((((■T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  471    |  3     ((((((((((((((((((((((((((■T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  472    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  473    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  474    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  475    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  476    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  477    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  478    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  479    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  480    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  481    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  482    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  483    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  484    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  485    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  486    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  487    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  488    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  489    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  490    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  491    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  492    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  493    |  3     ((((((((((((((((((((((((((■T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  494    |  3     ((((((((((((((((((((((((((■T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  495    |  3     ((((((((((((((((((((((((((■T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  496    |  3     ((((((((((((((((((((((((((■T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  497    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  498    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  499    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  500    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  501    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  502    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  503    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  504    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  505    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  506    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  507    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  508    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  509    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  510    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  511    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  512    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  513    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  514    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  515    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  516    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  517    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  518    |  3     ((((((((((((((((((((((((((■T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  519    |  3     ((((((((((((((((((((((((((■T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  520    |  3     ((((((((((((((((((((((((((■T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  521    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  522    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  523    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  524    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  525    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  526    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  527    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  528    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  529    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  530    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  531    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  532    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  533    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  534    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  535    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  536    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  537    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  538    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  539    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  540    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  541    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  542    |  3     ((((((((((((((((((((((((((■T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  543    |  3     ((((((((((((((((((((((((((■T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  544    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  545    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  546    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  547    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  548    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  549    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  550    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  551    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  552    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  553    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  554    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  555    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  556    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  557    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  558    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  559    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  560    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  561    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  562    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  563    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  564    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  565    |  3     ((((((((((((((((((((((((((■T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  566    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  567    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  568    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  569    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  570    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  571    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  572    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  573    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  574    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  575    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  576    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  577    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  578    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  579    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  580    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  581    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  582    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  583    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  584    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  585    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  586    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  587    |  3     ((((((((((((((((((((((((((■T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  588    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  589    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  590    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  591    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  592    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  593    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  594    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  595    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  596    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  597    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  598    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  599    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  600    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  601    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  602    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  603    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  604    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  605    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  606    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  607    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  608    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  609    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  610    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  611    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  612    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  613    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  614    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  615    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  616    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  617    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  618    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  619    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  620    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  621    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  622    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  623    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  624    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  625    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  626    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  627    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  628    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  629    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  630    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  631    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  632    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  633    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  634    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  635    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  636    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  637    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  638    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  639    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  640    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  641    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  642    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  643    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  644    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  645    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  646    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  647    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  648    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  649    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  650    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  651    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  652    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  653    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  654    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  655    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  656    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  657    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  658    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  659    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  660    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  661    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  662    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  663    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  664    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  665    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  666    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  667    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  668    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  669    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  670    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  671    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  672    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  673    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  674    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  675    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  676    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  677    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  678    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  679    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  680    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  681    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  682    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  683    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  684    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  685    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  686    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  687    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  688    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  689    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  690    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  691    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  692    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  693    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  694    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  695    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  696    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  697    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  698    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  699    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  700    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  701    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  702    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  703    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  704    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  705    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  706    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  707    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  708    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  709    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  710    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  711    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  712    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  713    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  714    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  715    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  716    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  717    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  718    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  719    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  720    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  721    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  722    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  723    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  724    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  725    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  726    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  727    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  728    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  729    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  730    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  731    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  732    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  733    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  734    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  735    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  736    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  737    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  738    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  739    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  740    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  741    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  742    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  743    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  744    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  745    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  746    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  747    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  748    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  749    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  750    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  751    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  752    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  753    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  754    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  755    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  756    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  757    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  758    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  759    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  760    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  761    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  762    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  763    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  764    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  765    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  766    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  767    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  768    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  769    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  770    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  771    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  772    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  773    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  774    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  775    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  776    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  777    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  778    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  779    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  780    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  781    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  782    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  783    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  784    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  785    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  786    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  787    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  788    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  789    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  790    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  791    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  792    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  793    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  794    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  795    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  796    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  797    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  798    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  799    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  800    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  801    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  802    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  803    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  804    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  805    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  806    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  807    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  808    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  809    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  810    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  811    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  812    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  813    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  814    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  815    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  816    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  817    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  818    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  819    |  3     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  820    |  3     (((((((((((((((((((((((((((■■)■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  821    |  3     (((((((((((((((((((((((((((■■)T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  822    |  3     (((((((((((((((((((((((((((■■)T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  823    |  3     (((((((((((((((((((((((((((■■)T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  824    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  825    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  826    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  827    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  828    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  829    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  830    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  831    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  832    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  833    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  834    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  835    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  836    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  837    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  838    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  839    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  840    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  841    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  842    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  843    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  844    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  845    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  846    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  847    |  3     (((((((((((((((((((((((((((■■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  848    |  3     (((((((((((((((((((((((((((■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  849    |  3     ((((((((((((((((((((((((((((■■)■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  850    |  3     ((((((((((((((((((((((((((((■|■)■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  851    |  3     ((((((((((((((((((((((((((((■){■}■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  852    |  3     (((((((((((((((((((((((((((■|■)■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  853    |  3     (((((((((((((((((((((((((((■|■)T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  854    |  3     (((((((((((((((((((((((((((■|■)T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  855    |  3     (((((((((((((((((((((((((((■|■)T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  856    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  857    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  858    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  859    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  860    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  861    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  862    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  863    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  864    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  865    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  866    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  867    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  868    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  869    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  870    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  871    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  872    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  873    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  874    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  875    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  876    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  877    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  878    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  879    |  3     (((((((((((((((((((((((((((■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  880    |  3     (((((((((((((((((((((((((((■■|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  881    |  3     ((((((((((((((((((((((((((((■|■)|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail solve
  882    |  3     ((((((((((((((((((((((((((((■){■}|■)T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  883    |  3     (((((((((((((((((((((((((((■){■}■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  884    |  3     (((((((((((((((((((((((((((■){■}T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  885    |  3     (((((((((((((((((((((((((((■){■}T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  886    |  3     (((((((((((((((((((((((((((■){■}T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  887    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  888    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  889    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  890    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  891    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  892    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  893    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  894    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  895    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  896    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  897    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  898    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  899    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  900    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  901    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  902    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  903    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  904    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  905    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  906    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  907    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  908    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  909    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  910    |  3     (((((((((((((((((((((((((((■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  911    |  3     (((((((((((((((((((((((((((■■){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  912    |  3     ((((((((((((((((((((((((((((■|■)){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  913    |  3     ((((((((((((((((((((((((((((■){■}){■}T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dot
  914    |  3     ((((((((((((((((((((((((((\[■)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  915    |  3     ((((((((((((((((((((((((((\[■)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  916    |  3     ((((((((((((((((((((((((((\[■)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  917    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  918    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  919    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  920    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  921    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  922    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  923    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  924    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  925    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  926    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  927    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  928    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  929    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  930    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  931    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  932    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  933    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  934    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  935    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  936    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  937    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  938    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  939    |  3     ((((((((((((((((((((((((((\[■)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  940    |  3     ((((((((((((((((((((((((((\[■)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  941    |  3     ((((((((((((((((((((((((((\[■)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  942    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  943    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  944    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  945    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  946    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  947    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  948    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  949    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  950    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  951    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  952    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  953    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  954    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  955    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  956    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  957    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  958    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  959    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  960    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  961    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  962    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  963    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  964    |  3     ((((((((((((((((((((((((((\[■)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  965    |  3     ((((((((((((((((((((((((((\[■)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  966    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  967    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  968    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  969    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  970    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  971    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  972    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  973    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  974    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  975    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  976    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  977    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  978    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  979    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  980    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  981    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  982    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  983    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  984    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  985    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  986    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  987    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  988    |  3     ((((((((((((((((((((((((((\[■)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  989    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  990    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  991    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  992    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  993    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  994    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  995    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  996    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  997    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  998    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  999    |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1000   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1001   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1002   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1003   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1004   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1005   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1006   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1007   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1008   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1009   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1010   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1011   |  3     ((((((((((((((((((((((((((\[■)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1012   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1013   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1014   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1015   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1016   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1017   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1018   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1019   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1020   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1021   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1022   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1023   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1024   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1025   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1026   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1027   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1028   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1029   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1030   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1031   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1032   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1033   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1034   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1035   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1036   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1037   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1038   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1039   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1040   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1041   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1042   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1043   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1044   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1045   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1046   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1047   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1048   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1049   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1050   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1051   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1052   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1053   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1054   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1055   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1056   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1057   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1058   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1059   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1060   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1061   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1062   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1063   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1064   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1065   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1066   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1067   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1068   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1069   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1070   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1071   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1072   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1073   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1074   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1075   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1076   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1077   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1078   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1079   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1080   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1081   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1082   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1083   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1084   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1085   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1086   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1087   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1088   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1089   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1090   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1091   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1092   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1093   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1094   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1095   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1096   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1097   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1098   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1099   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1100   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1101   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1102   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1103   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1104   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1105   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1106   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1107   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1108   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1109   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1110   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1111   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1112   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1113   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1114   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1115   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1116   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1117   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1118   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1119   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1120   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1121   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1122   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1123   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1124   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1125   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1126   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1127   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1128   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1129   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1130   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1131   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1132   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1133   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1134   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1135   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1136   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1137   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1138   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1139   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1140   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1141   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1142   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1143   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1144   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1145   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1146   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1147   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1148   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1149   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1150   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1151   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1152   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1153   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1154   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1155   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1156   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1157   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1158   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1159   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1160   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1161   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1162   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1163   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1164   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1165   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1166   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1167   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1168   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1169   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1170   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1171   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1172   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1173   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1174   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1175   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1176   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1177   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1178   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1179   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1180   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1181   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1182   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1183   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1184   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1185   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1186   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1187   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1188   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1189   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1190   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1191   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1192   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1193   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1194   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1195   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1196   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1197   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1198   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1199   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1200   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1201   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1202   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1203   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1204   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1205   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1206   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1207   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1208   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1209   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1210   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1211   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1212   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1213   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1214   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1215   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1216   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1217   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1218   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1219   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1220   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  1221   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  1222   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  1223   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  1224   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  1225   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  1226   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  1227   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  1228   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  1229   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  1230   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  1231   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  1232   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  1233   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  1234   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  1235   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  1236   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  1237   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  1238   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  1239   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  1240   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  1241   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  1242   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  1243   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  1244   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  1245   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  1246   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  1247   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  1248   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  1249   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  1250   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  1251   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  1252   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  1253   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  1254   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  1255   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  1256   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  1257   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  1258   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  1259   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  1260   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  1261   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  1262   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  1263   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  1264   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  1265   |  3     ((((((((((((((((((((((((((\[■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  1266   |  3     ((((((((((((((((((((((((((\[T)■)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1267   |  3     ((((((((((((((((((((((((((\[T)■)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1268   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1269   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1270   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1271   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1272   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1273   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1274   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1275   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1276   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1277   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1278   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1279   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1280   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1281   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1282   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1283   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1284   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1285   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1286   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1287   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1288   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1289   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1290   |  3     ((((((((((((((((((((((((((\[T)■)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1291   |  3     ((((((((((((((((((((((((((\[T)■)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1292   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1293   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1294   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1295   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1296   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1297   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1298   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1299   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1300   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1301   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1302   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1303   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1304   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1305   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1306   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1307   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1308   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1309   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1310   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1311   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1312   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1313   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1314   |  3     ((((((((((((((((((((((((((\[T)■)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1315   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1316   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1317   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1318   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1319   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1320   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1321   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1322   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1323   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1324   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1325   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1326   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1327   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1328   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1329   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1330   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1331   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1332   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1333   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1334   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1335   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1336   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1337   |  3     ((((((((((((((((((((((((((\[T)■)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1338   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1339   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1340   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1341   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1342   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1343   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1344   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1345   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1346   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1347   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1348   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1349   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1350   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1351   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1352   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1353   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1354   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1355   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1356   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1357   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1358   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1359   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1360   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1361   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1362   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1363   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1364   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1365   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1366   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1367   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1368   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1369   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1370   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1371   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1372   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1373   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1374   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1375   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1376   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1377   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1378   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1379   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1380   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1381   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1382   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1383   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1384   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1385   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1386   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1387   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1388   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1389   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1390   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1391   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1392   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1393   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1394   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1395   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1396   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1397   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1398   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1399   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1400   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1401   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1402   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1403   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1404   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1405   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1406   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1407   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1408   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1409   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1410   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1411   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1412   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1413   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1414   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1415   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1416   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1417   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1418   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1419   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1420   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1421   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1422   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1423   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1424   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1425   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1426   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1427   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1428   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1429   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1430   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1431   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1432   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1433   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1434   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1435   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1436   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1437   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1438   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1439   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1440   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1441   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1442   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1443   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1444   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1445   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1446   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1447   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1448   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1449   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1450   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1451   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1452   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1453   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1454   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1455   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1456   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1457   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1458   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1459   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1460   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1461   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1462   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1463   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1464   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1465   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1466   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1467   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1468   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1469   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1470   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1471   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1472   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1473   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1474   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1475   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1476   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1477   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1478   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1479   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1480   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1481   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1482   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1483   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1484   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1485   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1486   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1487   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1488   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1489   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1490   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1491   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1492   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1493   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1494   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1495   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1496   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1497   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1498   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1499   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1500   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1501   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1502   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1503   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1504   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1505   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1506   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1507   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1508   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1509   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1510   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1511   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1512   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1513   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1514   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1515   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1516   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1517   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1518   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1519   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1520   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1521   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1522   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1523   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1524   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1525   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1526   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1527   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1528   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1529   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1530   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1531   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1532   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1533   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1534   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1535   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1536   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1537   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1538   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1539   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1540   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1541   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1542   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1543   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1544   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1545   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1546   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  1547   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  1548   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  1549   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  1550   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  1551   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  1552   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  1553   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  1554   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  1555   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  1556   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  1557   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  1558   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  1559   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  1560   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  1561   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  1562   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  1563   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  1564   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  1565   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  1566   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  1567   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  1568   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  1569   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  1570   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  1571   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  1572   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  1573   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  1574   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  1575   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  1576   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  1577   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  1578   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  1579   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  1580   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  1581   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  1582   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  1583   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  1584   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  1585   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  1586   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  1587   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  1588   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  1589   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  1590   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  1591   |  3     ((((((((((((((((((((((((((\[T)■)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  1592   |  3     ((((((((((((((((((((((((((\[T)o)■)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1593   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1594   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1595   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1596   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1597   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1598   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1599   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1600   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1601   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1602   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1603   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1604   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1605   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1606   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1607   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1608   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1609   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1610   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1611   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1612   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1613   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1614   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1615   |  3     ((((((((((((((((((((((((((\[T)o)■)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1616   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1617   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1618   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1619   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1620   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1621   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1622   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1623   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1624   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1625   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1626   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1627   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1628   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1629   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1630   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1631   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1632   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1633   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1634   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1635   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1636   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1637   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1638   |  3     ((((((((((((((((((((((((((\[T)o)■)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1639   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1640   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1641   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1642   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1643   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1644   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1645   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1646   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1647   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1648   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1649   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1650   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1651   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1652   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1653   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1654   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1655   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1656   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1657   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1658   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1659   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1660   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1661   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1662   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1663   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1664   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1665   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1666   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1667   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1668   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1669   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1670   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1671   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1672   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1673   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1674   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1675   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1676   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1677   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1678   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1679   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1680   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1681   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1682   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1683   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1684   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1685   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1686   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1687   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1688   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1689   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1690   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1691   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1692   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1693   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1694   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1695   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1696   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1697   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1698   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1699   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1700   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1701   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1702   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1703   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1704   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1705   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1706   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1707   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1708   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1709   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1710   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1711   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1712   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1713   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1714   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1715   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1716   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1717   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1718   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1719   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1720   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1721   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1722   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1723   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1724   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1725   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1726   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1727   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1728   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1729   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1730   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1731   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1732   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1733   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1734   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1735   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1736   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1737   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1738   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1739   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1740   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1741   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1742   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1743   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1744   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1745   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1746   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1747   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1748   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1749   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1750   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1751   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1752   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1753   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1754   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1755   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1756   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1757   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1758   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1759   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1760   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1761   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1762   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1763   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1764   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1765   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1766   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1767   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1768   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1769   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1770   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1771   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1772   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1773   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1774   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1775   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1776   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1777   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1778   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1779   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1780   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1781   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1782   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1783   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1784   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1785   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1786   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1787   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1788   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1789   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1790   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1791   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1792   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1793   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1794   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1795   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1796   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1797   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1798   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1799   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1800   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1801   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1802   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1803   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1804   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1805   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1806   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1807   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1808   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1809   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1810   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1811   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1812   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1813   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1814   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1815   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1816   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1817   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1818   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1819   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1820   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1821   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1822   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1823   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1824   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1825   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1826   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1827   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1828   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1829   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1830   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1831   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1832   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1833   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1834   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1835   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1836   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1837   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1838   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1839   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1840   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1841   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1842   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1843   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1844   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1845   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1846   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1847   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  1848   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  1849   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  1850   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  1851   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  1852   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  1853   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  1854   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  1855   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  1856   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  1857   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  1858   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  1859   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  1860   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  1861   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  1862   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  1863   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  1864   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  1865   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  1866   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  1867   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  1868   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  1869   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  1870   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  1871   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  1872   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  1873   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  1874   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  1875   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  1876   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  1877   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  1878   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  1879   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  1880   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  1881   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  1882   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  1883   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  1884   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  1885   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  1886   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  1887   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  1888   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  1889   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  1890   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  1891   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  1892   |  3     ((((((((((((((((((((((((((\[T)o)■)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  1893   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1894   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1895   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1896   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1897   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1898   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1899   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1900   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1901   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1902   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1903   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1904   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1905   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1906   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1907   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1908   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1909   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1910   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1911   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1912   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1913   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1914   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1915   |  3     ((((((((((((((((((((((((((\[T)o)t)■)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1916   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1917   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1918   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1919   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1920   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1921   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1922   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1923   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1924   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1925   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1926   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1927   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1928   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1929   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1930   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1931   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1932   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1933   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1934   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1935   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1936   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1937   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1938   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1939   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1940   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1941   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1942   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1943   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1944   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1945   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1946   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1947   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1948   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1949   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1950   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1951   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1952   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1953   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1954   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1955   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1956   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1957   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1958   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1959   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1960   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1961   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1962   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1963   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1964   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1965   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1966   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1967   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1968   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1969   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1970   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1971   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1972   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1973   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1974   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1975   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1976   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1977   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1978   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1979   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1980   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1981   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1982   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1983   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1984   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1985   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1986   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1987   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1988   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  1989   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  1990   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  1991   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  1992   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  1993   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  1994   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  1995   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  1996   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  1997   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  1998   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  1999   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2000   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2001   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2002   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2003   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2004   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2005   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2006   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2007   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2008   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2009   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2010   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2011   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2012   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2013   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2014   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2015   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2016   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2017   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2018   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2019   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2020   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2021   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2022   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2023   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2024   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2025   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2026   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2027   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2028   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2029   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2030   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2031   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2032   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2033   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2034   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2035   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2036   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2037   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2038   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2039   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2040   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2041   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2042   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2043   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2044   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2045   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2046   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2047   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2048   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2049   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2050   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2051   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2052   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2053   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2054   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2055   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2056   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2057   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2058   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2059   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2060   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2061   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2062   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2063   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2064   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2065   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2066   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2067   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2068   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2069   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2070   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2071   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2072   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2073   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2074   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2075   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2076   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2077   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2078   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2079   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2080   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2081   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2082   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2083   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2084   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2085   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2086   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2087   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2088   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2089   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2090   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2091   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2092   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2093   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2094   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2095   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2096   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2097   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2098   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2099   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2100   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2101   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2102   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2103   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2104   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2105   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2106   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2107   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2108   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2109   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2110   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2111   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2112   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2113   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2114   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2115   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2116   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2117   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2118   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2119   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2120   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2121   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2122   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2123   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2124   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  2125   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  2126   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  2127   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  2128   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  2129   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  2130   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  2131   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  2132   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  2133   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  2134   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  2135   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  2136   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  2137   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  2138   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  2139   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  2140   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  2141   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  2142   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  2143   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  2144   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  2145   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  2146   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  2147   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  2148   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  2149   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  2150   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  2151   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  2152   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  2153   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  2154   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  2155   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  2156   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  2157   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  2158   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  2159   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  2160   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  2161   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  2162   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  2163   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  2164   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  2165   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  2166   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  2167   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  2168   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  2169   |  3     ((((((((((((((((((((((((((\[T)o)t)■)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  2170   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2171   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2172   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2173   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2174   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2175   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2176   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2177   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2178   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2179   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2180   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2181   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2182   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2183   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2184   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2185   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2186   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2187   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2188   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2189   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2190   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2191   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■)■)e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2192   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2193   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2194   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2195   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2196   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2197   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2198   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2199   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2200   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2201   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2202   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2203   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2204   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2205   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2206   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2207   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2208   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2209   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2210   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2211   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2212   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2213   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2214   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2215   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2216   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2217   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2218   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2219   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2220   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2221   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2222   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2223   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2224   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2225   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2226   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2227   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2228   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2229   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2230   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2231   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2232   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2233   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2234   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2235   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2236   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2237   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2238   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2239   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2240   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2241   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2242   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2243   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2244   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2245   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2246   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2247   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2248   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2249   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2250   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2251   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2252   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2253   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2254   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2255   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2256   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2257   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2258   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2259   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2260   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2261   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2262   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2263   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2264   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2265   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2266   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2267   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2268   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2269   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2270   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2271   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2272   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2273   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2274   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2275   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2276   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2277   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2278   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2279   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2280   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2281   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2282   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2283   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2284   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2285   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2286   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2287   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2288   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2289   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2290   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2291   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2292   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2293   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2294   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2295   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2296   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2297   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2298   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2299   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2300   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2301   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2302   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2303   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2304   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2305   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2306   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2307   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2308   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2309   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2310   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2311   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2312   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2313   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2314   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2315   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2316   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2317   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2318   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2319   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2320   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2321   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2322   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2323   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2324   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2325   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2326   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2327   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2328   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2329   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2330   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2331   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2332   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2333   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2334   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2335   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2336   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2337   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2338   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2339   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2340   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2341   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2342   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2343   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2344   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2345   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2346   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2347   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2348   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2349   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2350   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2351   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2352   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2353   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2354   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2355   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2356   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2357   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2358   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2359   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2360   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2361   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2362   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2363   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2364   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2365   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2366   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2367   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2368   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2369   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2370   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2371   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2372   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2373   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2374   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2375   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2376   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2377   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2378   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  2379   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  2380   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  2381   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  2382   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  2383   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  2384   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  2385   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  2386   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  2387   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  2388   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  2389   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  2390   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty
  2391   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+)■)m)i)nfail dotstar or empty
  2392   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )■)i)nfail dotstar or empty
  2393   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)■)nfail dotstar or empty
  2394   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)■fail dotstar or empty
  2395   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■)■)(.)+) )m)i)nfail dotstar or empty
  2396   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(■)+) )m)i)nfail dotstar or empty
  2397   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.){■}) )m)i)nfail dotstar or empty
  2398   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+)■)m)i)nfail dotstar or empty
  2399   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )■)i)nfail dotstar or empty
  2400   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)■)nfail dotstar or empty
  2401   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)■fail dotstar or empty
  2402   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(■)+) )m)i)nfail dotstar or empty
  2403   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.){■}) )m)i)nfail dotstar or empty
  2404   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+)■)m)i)nfail dotstar or empty
  2405   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )■)i)nfail dotstar or empty
  2406   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)■)nfail dotstar or empty
  2407   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)■fail dotstar or empty
  2408   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■){■}) )m)i)nfail dotstar or empty
  2409   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+)■)m)i)nfail dotstar or empty
  2410   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )■)i)nfail dotstar or empty
  2411   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)■)nfail dotstar or empty
  2412   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)■fail dotstar or empty
  2413   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■})■)m)i)nfail dotstar or empty
  2414   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )■)i)nfail dotstar or empty
  2415   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)■)nfail dotstar or empty
  2416   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)■fail dotstar or empty
  2417   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )■) )m)i)nfail dotstar or empty
  2418   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)■)i)nfail dotstar or empty
  2419   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)■)nfail dotstar or empty
  2420   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)■fail dotstar or empty
  2421   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)■)nfail dotstar or empty
  2422   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)■fail dotstar or empty
  2423   |  3     ((((((((((((((((((((((((((\[T)o)t)a)■) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)■fail dotstar or empty
  2424   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2425   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2426   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2427   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2428   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2429   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2430   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2431   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2432   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2433   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2434   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2435   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2436   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2437   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2438   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2439   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2440   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2441   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2442   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2443   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2444   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)■)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2445   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2446   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2447   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2448   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2449   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2450   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2451   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2452   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2453   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2454   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2455   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2456   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2457   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2458   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2459   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2460   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2461   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2462   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2463   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2464   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)■)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2465   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2466   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2467   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2468   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2469   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2470   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2471   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2472   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2473   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2474   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2475   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2476   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2477   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2478   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2479   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2480   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2481   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2482   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2483   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)■)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2484   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2485   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2486   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2487   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2488   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2489   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2490   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2491   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2492   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2493   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2494   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2495   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2496   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2497   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2498   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2499   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2500   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2501   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)■)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2502   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2503   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2504   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2505   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2506   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2507   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2508   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2509   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2510   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2511   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2512   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2513   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2514   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2515   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2516   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2517   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2518   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)■)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2519   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)■)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2520   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2521   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2522   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2523   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2524   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2525   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2526   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2527   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2528   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2529   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2530   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2531   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2532   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2533   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2534   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)■)i)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2535   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)■)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2536   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2537   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2538   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2539   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2540   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2541   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2542   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2543   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2544   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2545   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2546   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2547   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2548   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2549   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)■)o)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2550   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)■) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2551   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2552   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2553   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2554   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2555   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2556   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2557   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2558   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2559   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2560   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2561   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2562   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2563   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)■)n) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2564   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■)■)T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2565   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2566   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2567   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2568   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2569   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2570   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2571   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2572   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2573   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2574   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2575   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2576   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)■) )T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2577   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)■)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2578   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2579   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2580   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2581   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2582   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2583   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2584   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2585   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2586   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2587   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2588   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n)■)T)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2589   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)■)m)e):) )(.)+) )m)i)nfail dotstar or empty
  2590   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2591   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2592   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2593   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2594   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2595   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2596   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2597   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2598   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2599   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )■)i)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2600   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)■)e):) )(.)+) )m)i)nfail dotstar or empty
  2601   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)■):) )(.)+) )m)i)nfail dotstar or empty
  2602   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e)■) )(.)+) )m)i)nfail dotstar or empty
  2603   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):)■)(.)+) )m)i)nfail dotstar or empty
  2604   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(■)+) )m)i)nfail dotstar or empty
  2605   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.){■}) )m)i)nfail dotstar or empty
  2606   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+)■)m)i)nfail dotstar or empty
  2607   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )■)i)nfail dotstar or empty
  2608   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)■)nfail dotstar or empty
  2609   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)■)m)e):) )(.)+) )m)i)■fail dotstar or empty
  2610   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)■):) )(.)+) )m)i)nfail dotstar or empty
  2611   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e)■) )(.)+) )m)i)nfail dotstar or empty
  2612   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):)■)(.)+) )m)i)nfail dotstar or empty
  2613   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(■)+) )m)i)nfail dotstar or empty
  2614   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.){■}) )m)i)nfail dotstar or empty
  2615   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+)■)m)i)nfail dotstar or empty
  2616   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )■)i)nfail dotstar or empty
  2617   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)■)nfail dotstar or empty
  2618   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)■)e):) )(.)+) )m)i)■fail dotstar or empty
  2619   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■)■) )(.)+) )m)i)nfail dotstar or empty
  2620   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):)■)(.)+) )m)i)nfail dotstar or empty
  2621   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(■)+) )m)i)nfail dotstar or empty
  2622   |  3     ((((((((((((((((((((((((((\[T)o)t)a)l)■)e)x)e)c)u)t)i)o)n) )T)i)m)■):) )(.){■}) )m)i)nfail dotstar or empty

20.14104390144348
timeout