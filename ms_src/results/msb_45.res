
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
  883    |  3     (((((((((((((((((((((((((((■){■}■)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)n
2.0573160648345947
timeout