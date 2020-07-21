
Given the regular expression:

  snmp\-server community mytest\-01 RO

That that should match the strings:

  ✓ (0:9)    mytest-01

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  2      |  1     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  3      |  1     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  4      |  1     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  5      |  1     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  6      |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  7      |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  8      |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  9      |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  10     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  11     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  12     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  13     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  14     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  15     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  16     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  17     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  18     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  19     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  20     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  21     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  22     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  23     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  24     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  25     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  26     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  27     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  28     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  29     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  30     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  31     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  32     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  33     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)Ofail dotstar or empty
  34     |  1     ((((((((((((((((((((((((((((((((sn)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)■fail dotstar or empty
  35     |  2     ((((((((((((((((((((((((((((((((■■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  36     |  2     ((((((((((((((((((((((((((((((((■n)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  37     |  2     ((((((((((((((((((((((((((((((((■n)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  38     |  2     ((((((((((((((((((((((((((((((((■n)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  39     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  40     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  41     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  42     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  43     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  44     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  45     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  46     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  47     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  48     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  49     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  50     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  51     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  52     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  53     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  54     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  55     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  56     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  57     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  58     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  59     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  60     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  61     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  62     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  63     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  64     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  65     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  66     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)Ofail dotstar or empty
  67     |  2     ((((((((((((((((((((((((((((((((■n)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)■fail dotstar or empty
  68     |  2     ((((((((((((((((((((((((((((((((s■)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  69     |  2     ((((((((((((((((((((((((((((((((s■)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  70     |  2     ((((((((((((((((((((((((((((((((s■)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  71     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  72     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  73     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  74     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  75     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  76     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  77     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  78     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  79     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  80     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  81     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  82     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  83     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  84     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  85     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  86     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  87     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  88     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  89     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  90     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  91     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  92     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  93     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  94     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  95     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  96     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  97     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  98     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)Ofail dotstar or empty
  99     |  2     ((((((((((((((((((((((((((((((((s■)m)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)■fail dotstar or empty
  100    |  2     ((((((((((((((((((((((((((((((((sn)■)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  101    |  2     ((((((((((((((((((((((((((((((((sn)■)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  102    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  103    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  104    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  105    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  106    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  107    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  108    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  109    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  110    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  111    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  112    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  113    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  114    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  115    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  116    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  117    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  118    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  119    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  120    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  121    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  122    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  123    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  124    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  125    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  126    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  127    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  128    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  129    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)Ofail dotstar or empty
  130    |  2     ((((((((((((((((((((((((((((((((sn)■)p)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)■fail dotstar or empty
  131    |  2     ((((((((((((((((((((((((((((((((sn)m)■)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  132    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  133    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  134    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  135    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  136    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  137    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  138    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  139    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  140    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  141    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  142    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  143    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  144    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  145    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  146    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  147    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  148    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  149    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  150    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  151    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  152    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  153    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  154    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  155    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  156    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  157    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  158    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  159    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)Ofail dotstar or empty
  160    |  2     ((((((((((((((((((((((((((((((((sn)m)■)\-)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)■fail dotstar or empty
  161    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  162    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  163    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  164    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  165    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  166    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  167    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  168    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  169    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  170    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  171    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  172    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  173    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  174    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  175    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  176    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  177    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  178    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  179    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  180    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  181    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  182    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  183    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  184    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  185    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  186    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  187    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  188    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)Ofail dotstar or empty
  189    |  2     ((((((((((((((((((((((((((((((((sn)m)p)■)s)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)■fail dotstar or empty
  190    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)■)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  191    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)■)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  192    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)■)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  193    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)■)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  194    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)■) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  195    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r)■)c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  196    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )■)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  197    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)■)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  198    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)■)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  199    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)■)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  200    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)■)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  201    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)■)i)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  202    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)■)t)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  203    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)■)y) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  204    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)■) )m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  205    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y)■)m)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  206    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )■)y)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  207    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)■)t)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  208    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)■)e)s)t)\-)0)1) )R)Ofail dotstar or empty
  209    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)■)s)t)\-)0)1) )R)Ofail dotstar or empty
  210    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)■)t)\-)0)1) )R)Ofail dotstar or empty
  211    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)■)\-)0)1) )R)Ofail dotstar or empty
  212    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)■)0)1) )R)Ofail dotstar or empty
  213    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)■)1) )R)Ofail dotstar or empty
  214    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)■) )R)Ofail dotstar or empty
  215    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1)■)R)Ofail dotstar or empty
  216    |  2     ((((((((((((((((((((((((((((((((sn)m)p)\-)■)e)r)v)e)r) )c)o)m)m)u)n)i)t)y) )m)y)t)e)s)t)\-)0)1) )■)O
2.053611993789673
timeout