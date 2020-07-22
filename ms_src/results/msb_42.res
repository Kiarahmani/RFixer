
Given the regular expression:

  \[Total execution Time: ((.)+) min

That that should match the strings:

  ✓ (0:227)  Total execution Time: 11.05 minute(s)] [administrator] [(null)] [14] 02/19 00:48:46:762 [INFO ] [MigrationWizard] [Total number of error(s): 0] [administrator] [(null)] [14] 02/19 00:48:46:762 [INFO ] [MigrationWizard] [Step 1 

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(.)+) )m)i)nfail dotstar or empty
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
  52     |  2     ((((((((((((((((((((((((((■T)o)t)a)l) )e)x)e)c)u)t)i)o)n) )T)i)m)e):) )(■)+) )m)i)n
3.0172410011291504
timeout