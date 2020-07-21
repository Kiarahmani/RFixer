
Given the regular expression:

  (grep abc_source|source2_201501.csv)

That that should match the strings:


And reject the strings:

  ✗ (0:18)   source2_201501.csv

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2      |  1     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3      |  1     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4      |  1     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5      |  1     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  6      |  1     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  7      |  1     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  8      |  1     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  9      |  1     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  10     |  1     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  11     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  12     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  13     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  14     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  15     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  16     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)get a solution: ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((([∅]o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)
add positive: grep -E abc_source_201501 csv
add negative: grep abc_source
  17     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  18     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  19     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  20     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  21     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  22     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  23     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  24     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  25     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  26     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  27     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  28     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  29     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  30     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  31     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  32     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  33     |  1     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  34     |  2     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  35     |  2     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  36     |  2     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  37     |  2     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  38     |  2     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  39     |  2     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  40     |  2     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  41     |  2     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  42     |  2     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  43     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  44     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  45     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  46     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  47     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  48     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  49     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  50     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  51     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  52     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  53     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  54     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  55     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  56     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  57     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  58     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  59     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  60     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  61     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  62     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  63     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  64     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  65     |  2     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  66     |  2     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  67     |  2     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  68     |  2     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  69     |  2     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  70     |  2     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  71     |  2     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  72     |  2     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  73     |  2     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  74     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  75     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  76     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  77     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  78     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  79     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  80     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  81     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  82     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  83     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  84     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  85     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  86     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  87     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  88     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  89     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  90     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  91     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  92     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  93     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  94     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  95     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  96     |  2     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  97     |  2     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  98     |  2     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  99     |  2     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  100    |  2     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  101    |  2     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  102    |  2     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  103    |  2     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  104    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  105    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  106    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  107    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  108    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  109    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  110    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  111    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  112    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  113    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  114    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  115    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  116    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  117    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  118    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  119    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  120    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  121    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  122    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  123    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  124    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  125    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  126    |  2     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  127    |  2     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  128    |  2     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  129    |  2     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  130    |  2     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  131    |  2     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  132    |  2     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  133    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  134    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  135    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  136    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  137    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  138    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  139    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  140    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  141    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  142    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  143    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  144    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  145    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  146    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  147    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  148    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  149    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  150    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  151    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  152    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  153    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  154    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  155    |  2     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  156    |  2     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  157    |  2     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  158    |  2     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  159    |  2     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  160    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  161    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  162    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  163    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  164    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  165    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  166    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  167    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  168    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  169    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  170    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  171    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  172    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  173    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  174    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  175    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  176    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  177    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  178    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  179    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  180    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  181    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  182    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  183    |  2     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  184    |  2     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  185    |  2     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  186    |  2     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  187    |  2     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  188    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  189    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  190    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  191    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  192    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  193    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  194    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  195    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  196    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  197    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  198    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  199    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  200    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  201    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  202    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  203    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  204    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  205    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)
2.035717010498047
timeout