
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
  205    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  206    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  207    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  208    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  209    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  210    |  2     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  211    |  2     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  212    |  2     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  213    |  2     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  214    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  215    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  216    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  217    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  218    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  219    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  220    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  221    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  222    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  223    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  224    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  225    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  226    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  227    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  228    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  229    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  230    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  231    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  232    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  233    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  234    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  235    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  236    |  2     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  237    |  2     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  238    |  2     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  239    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  240    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  241    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  242    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  243    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  244    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  245    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  246    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  247    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  248    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  249    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  250    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  251    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  252    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  253    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  254    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  255    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  256    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  257    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  258    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  259    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  260    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  261    |  2     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  262    |  2     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  263    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  264    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  265    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  266    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  267    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  268    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  269    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  270    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  271    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  272    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  273    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  274    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  275    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  276    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  277    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  278    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  279    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  280    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  281    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  282    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  283    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  284    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  285    |  2     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  286    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  287    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  288    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  289    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  290    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  291    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  292    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  293    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  294    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  295    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  296    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  297    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  298    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  299    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  300    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  301    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  302    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  303    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  304    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  305    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  306    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  307    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  308    |  2     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  309    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  310    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  311    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  312    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  313    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  314    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  315    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  316    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  317    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  318    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  319    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  320    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  321    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  322    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  323    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  324    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  325    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  326    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  327    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  328    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  329    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  330    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  331    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  332    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  333    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  334    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  335    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  336    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  337    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  338    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  339    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  340    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  341    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  342    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  343    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  344    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  345    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  346    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  347    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  348    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  349    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  350    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  351    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  352    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  353    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  354    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  355    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  356    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  357    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  358    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  359    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  360    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  361    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  362    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  363    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  364    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  365    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  366    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  367    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  368    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  369    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  370    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  371    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  372    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  373    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  374    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  375    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  376    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  377    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  378    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  379    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  380    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  381    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  382    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  383    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  384    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  385    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  386    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  387    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  388    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  389    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  390    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  391    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  392    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  393    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  394    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  395    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  396    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  397    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  398    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  399    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  400    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  401    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  402    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  403    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  404    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  405    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  406    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  407    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  408    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  409    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  410    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  411    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  412    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  413    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  414    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  415    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  416    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  417    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  418    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  419    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  420    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  421    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  422    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  423    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  424    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  425    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  426    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  427    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail solve
  428    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■){■}o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  429    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  430    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  431    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  432    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  433    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  434    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  435    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  436    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  437    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  438    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  439    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  440    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  441    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  442    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  443    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  444    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  445    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  446    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  447    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  448    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  449    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  450    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  451    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  452    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  453    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  454    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  455    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  456    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  457    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  458    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  459    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  460    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  461    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  462    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  463    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  464    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  465    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  466    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  467    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  468    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  469    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  470    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  471    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  472    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  473    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  474    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  475    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  476    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  477    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  478    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  479    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  480    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  481    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  482    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  483    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  484    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  485    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  486    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  487    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  488    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  489    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  490    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  491    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  492    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  493    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  494    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  495    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  496    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  497    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  498    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  499    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  500    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  501    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  502    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  503    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  504    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  505    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  506    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  507    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  508    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  509    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  510    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  511    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  512    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  513    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  514    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  515    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  516    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  517    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  518    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  519    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  520    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  521    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  522    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  523    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  524    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  525    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  526    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  527    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  528    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  529    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  530    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  531    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  532    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  533    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  534    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  535    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  536    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  537    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  538    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  539    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  540    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  541    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  542    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  543    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  544    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  545    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  546    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  547    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  548    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  549    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  550    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  551    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  552    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  553    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  554    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  555    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  556    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  557    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  558    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  559    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  560    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  561    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  562    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  563    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  564    |  2     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  565    |  3     ((((((((((((((■■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  566    |  3     ((((((((((((((■■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  567    |  3     ((((((((((((((■■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  568    |  3     ((((((((((((((■■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  569    |  3     ((((((((((((((■■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  570    |  3     ((((((((((((((■■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  571    |  3     ((((((((((((((■■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  572    |  3     ((((((((((((((■■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  573    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  574    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  575    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  576    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  577    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  578    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  579    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  580    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  581    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  582    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  583    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  584    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  585    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  586    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  587    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  588    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  589    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  590    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  591    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  592    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  593    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  594    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  595    |  3     ((((((((((((((■■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  596    |  3     ((((((((((((((■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  597    |  3     ((((((((((((((■r)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  598    |  3     ((((((((((((((■r)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  599    |  3     ((((((((((((((■r)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  600    |  3     ((((((((((((((■r)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  601    |  3     ((((((((((((((■r)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  602    |  3     ((((((((((((((■r)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  603    |  3     ((((((((((((((■r)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  604    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  605    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  606    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  607    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  608    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  609    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  610    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  611    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  612    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  613    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  614    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  615    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  616    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  617    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  618    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  619    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  620    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  621    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  622    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  623    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  624    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  625    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  626    |  3     ((((((((((((((■r)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  627    |  3     ((((((((((((((■r)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  628    |  3     ((((((((((((((■r)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  629    |  3     ((((((((((((((■r)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  630    |  3     ((((((((((((((■r)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  631    |  3     ((((((((((((((■r)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  632    |  3     ((((((((((((((■r)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  633    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  634    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  635    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  636    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  637    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  638    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  639    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  640    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  641    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  642    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  643    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  644    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  645    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  646    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  647    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  648    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  649    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  650    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  651    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  652    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  653    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  654    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  655    |  3     ((((((((((((((■r)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  656    |  3     ((((((((((((((■r)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  657    |  3     ((((((((((((((■r)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  658    |  3     ((((((((((((((■r)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  659    |  3     ((((((((((((((■r)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  660    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  661    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  662    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  663    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  664    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  665    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  666    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  667    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  668    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  669    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  670    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  671    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  672    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  673    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  674    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  675    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  676    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  677    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  678    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  679    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  680    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  681    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  682    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  683    |  3     ((((((((((((((■r)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  684    |  3     ((((((((((((((■r)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  685    |  3     ((((((((((((((■r)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  686    |  3     ((((((((((((((■r)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  687    |  3     ((((((((((((((■r)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  688    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  689    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  690    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  691    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  692    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  693    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  694    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  695    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  696    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  697    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  698    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  699    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  700    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  701    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  702    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  703    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  704    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  705    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  706    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  707    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  708    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  709    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  710    |  3     ((((((((((((((■r)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  711    |  3     ((((((((((((((■r)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  712    |  3     ((((((((((((((■r)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  713    |  3     ((((((((((((((■r)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  714    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  715    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  716    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  717    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  718    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  719    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  720    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  721    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  722    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  723    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  724    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  725    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  726    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  727    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  728    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  729    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  730    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  731    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  732    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  733    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  734    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  735    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  736    |  3     ((((((((((((((■r)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  737    |  3     ((((((((((((((■r)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  738    |  3     ((((((((((((((■r)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  739    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  740    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  741    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  742    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  743    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  744    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  745    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  746    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  747    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  748    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  749    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  750    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  751    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  752    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  753    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  754    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  755    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  756    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  757    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  758    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  759    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  760    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  761    |  3     ((((((((((((((■r)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  762    |  3     ((((((((((((((■r)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  763    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  764    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  765    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  766    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  767    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  768    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  769    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  770    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  771    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  772    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  773    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  774    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  775    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  776    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  777    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  778    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  779    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  780    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  781    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  782    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  783    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  784    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  785    |  3     ((((((((((((((■r)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  786    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  787    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  788    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  789    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  790    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  791    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  792    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  793    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  794    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  795    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  796    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  797    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  798    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  799    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  800    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  801    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  802    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  803    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  804    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  805    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  806    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  807    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  808    |  3     ((((((((((((((■r)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  809    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  810    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  811    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  812    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  813    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  814    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  815    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  816    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  817    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  818    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  819    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  820    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  821    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  822    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  823    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  824    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  825    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  826    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  827    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  828    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  829    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  830    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  831    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  832    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  833    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  834    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  835    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  836    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  837    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  838    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  839    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  840    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  841    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  842    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  843    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  844    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  845    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  846    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  847    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  848    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  849    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  850    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  851    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  852    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  853    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  854    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  855    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  856    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  857    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  858    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  859    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  860    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  861    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  862    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  863    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  864    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  865    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  866    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  867    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  868    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  869    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  870    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  871    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  872    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  873    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  874    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  875    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  876    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  877    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  878    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  879    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  880    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  881    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  882    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  883    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  884    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  885    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  886    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  887    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  888    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  889    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  890    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  891    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  892    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  893    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  894    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  895    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  896    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  897    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  898    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  899    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  900    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  901    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  902    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  903    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  904    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  905    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  906    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  907    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  908    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  909    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  910    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  911    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  912    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  913    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  914    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  915    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  916    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  917    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  918    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  919    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  920    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  921    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  922    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  923    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  924    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  925    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  926    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  927    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  928    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  929    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  930    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  931    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  932    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  933    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  934    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  935    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  936    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  937    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  938    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  939    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  940    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  941    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  942    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  943    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  944    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  945    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  946    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  947    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  948    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  949    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  950    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  951    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  952    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  953    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  954    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  955    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  956    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  957    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  958    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  959    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  960    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  961    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  962    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  963    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  964    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  965    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  966    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  967    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  968    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  969    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  970    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  971    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  972    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  973    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  974    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  975    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  976    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  977    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  978    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  979    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  980    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  981    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  982    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  983    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  984    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  985    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  986    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  987    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  988    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  989    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  990    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  991    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  992    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  993    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  994    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  995    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  996    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  997    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  998    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  999    |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1000   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1001   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1002   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1003   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1004   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1005   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1006   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1007   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1008   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1009   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1010   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1011   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1012   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1013   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1014   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1015   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1016   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1017   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1018   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1019   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1020   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1021   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1022   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1023   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1024   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1025   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1026   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  1027   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  1028   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  1029   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  1030   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  1031   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  1032   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  1033   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  1034   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  1035   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  1036   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  1037   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  1038   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  1039   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  1040   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  1041   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  1042   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  1043   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  1044   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  1045   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  1046   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  1047   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  1048   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  1049   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  1050   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  1051   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  1052   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  1053   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  1054   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  1055   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  1056   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  1057   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  1058   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  1059   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  1060   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  1061   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  1062   |  3     ((((((((((((((g■)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1063   |  3     ((((((((((((((g■)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1064   |  3     ((((((((((((((g■)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1065   |  3     ((((((((((((((g■)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1066   |  3     ((((((((((((((g■)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1067   |  3     ((((((((((((((g■)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1068   |  3     ((((((((((((((g■)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1069   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1070   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1071   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1072   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1073   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1074   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1075   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1076   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1077   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1078   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1079   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1080   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1081   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1082   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1083   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1084   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1085   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1086   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1087   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1088   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1089   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1090   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1091   |  3     ((((((((((((((g■)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1092   |  3     ((((((((((((((g■)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1093   |  3     ((((((((((((((g■)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1094   |  3     ((((((((((((((g■)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1095   |  3     ((((((((((((((g■)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1096   |  3     ((((((((((((((g■)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1097   |  3     ((((((((((((((g■)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1098   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1099   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1100   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1101   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1102   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1103   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1104   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1105   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1106   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1107   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1108   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1109   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1110   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1111   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1112   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1113   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1114   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1115   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1116   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1117   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1118   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1119   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1120   |  3     ((((((((((((((g■)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1121   |  3     ((((((((((((((g■)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1122   |  3     ((((((((((((((g■)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1123   |  3     ((((((((((((((g■)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1124   |  3     ((((((((((((((g■)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1125   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1126   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1127   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1128   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1129   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1130   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1131   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1132   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1133   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1134   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1135   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1136   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1137   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1138   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1139   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1140   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1141   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1142   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1143   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1144   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1145   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1146   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1147   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1148   |  3     ((((((((((((((g■)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1149   |  3     ((((((((((((((g■)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1150   |  3     ((((((((((((((g■)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1151   |  3     ((((((((((((((g■)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1152   |  3     ((((((((((((((g■)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1153   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1154   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1155   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1156   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1157   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1158   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1159   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1160   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1161   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1162   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1163   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1164   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1165   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1166   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1167   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1168   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1169   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1170   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1171   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1172   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1173   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1174   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1175   |  3     ((((((((((((((g■)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1176   |  3     ((((((((((((((g■)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1177   |  3     ((((((((((((((g■)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1178   |  3     ((((((((((((((g■)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1179   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1180   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1181   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1182   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1183   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1184   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1185   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1186   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1187   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1188   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1189   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1190   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1191   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1192   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1193   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1194   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1195   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1196   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1197   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1198   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1199   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1200   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1201   |  3     ((((((((((((((g■)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1202   |  3     ((((((((((((((g■)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1203   |  3     ((((((((((((((g■)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1204   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1205   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1206   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1207   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1208   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1209   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1210   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1211   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1212   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1213   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1214   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1215   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1216   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1217   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1218   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1219   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1220   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1221   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1222   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1223   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1224   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1225   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1226   |  3     ((((((((((((((g■)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1227   |  3     ((((((((((((((g■)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1228   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1229   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1230   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1231   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1232   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1233   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1234   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1235   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1236   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1237   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1238   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1239   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1240   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1241   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1242   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1243   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1244   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1245   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1246   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1247   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1248   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1249   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1250   |  3     ((((((((((((((g■)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1251   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1252   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1253   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1254   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1255   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1256   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1257   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1258   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1259   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1260   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1261   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1262   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1263   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1264   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1265   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1266   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1267   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1268   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1269   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1270   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1271   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1272   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1273   |  3     ((((((((((((((g■)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1274   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1275   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1276   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1277   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1278   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1279   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1280   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1281   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1282   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1283   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1284   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1285   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1286   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1287   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1288   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1289   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1290   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1291   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1292   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1293   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1294   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1295   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1296   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1297   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1298   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1299   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1300   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1301   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1302   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1303   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1304   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1305   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1306   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1307   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1308   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1309   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1310   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1311   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1312   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1313   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1314   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1315   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1316   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1317   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1318   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1319   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1320   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1321   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1322   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1323   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1324   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1325   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1326   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1327   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1328   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1329   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1330   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1331   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1332   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1333   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1334   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1335   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1336   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1337   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1338   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1339   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1340   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1341   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1342   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1343   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1344   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1345   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1346   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1347   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1348   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1349   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1350   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1351   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1352   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1353   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1354   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1355   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1356   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1357   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1358   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1359   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1360   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1361   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1362   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1363   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1364   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1365   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1366   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1367   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1368   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1369   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1370   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1371   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1372   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1373   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1374   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1375   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1376   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1377   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1378   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1379   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  1380   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1381   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1382   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1383   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1384   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1385   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1386   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1387   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1388   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1389   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1390   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1391   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1392   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1393   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1394   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1395   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1396   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1397   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1398   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1399   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1400   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1401   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1402   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1403   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1404   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1405   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1406   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1407   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1408   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1409   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1410   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1411   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1412   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1413   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1414   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1415   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1416   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1417   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1418   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1419   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1420   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1421   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1422   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1423   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1424   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1425   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1426   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1427   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1428   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1429   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1430   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1431   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1432   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1433   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1434   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1435   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1436   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1437   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1438   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1439   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1440   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1441   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1442   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1443   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1444   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1445   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1446   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1447   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1448   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1449   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1450   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1451   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1452   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1453   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1454   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1455   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1456   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1457   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1458   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1459   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1460   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1461   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1462   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1463   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1464   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1465   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1466   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1467   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1468   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1469   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1470   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1471   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1472   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1473   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1474   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1475   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1476   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1477   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1478   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1479   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1480   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1481   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1482   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1483   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1484   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1485   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1486   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1487   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1488   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1489   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1490   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1491   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  1492   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  1493   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  1494   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  1495   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  1496   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  1497   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  1498   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  1499   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  1500   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  1501   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  1502   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  1503   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  1504   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  1505   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  1506   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  1507   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  1508   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  1509   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  1510   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  1511   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  1512   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  1513   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  1514   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  1515   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  1516   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  1517   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  1518   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  1519   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  1520   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  1521   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  1522   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  1523   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  1524   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  1525   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  1526   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  1527   |  3     ((((((((((((((gr)■)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1528   |  3     ((((((((((((((gr)■)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1529   |  3     ((((((((((((((gr)■)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1530   |  3     ((((((((((((((gr)■)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1531   |  3     ((((((((((((((gr)■)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1532   |  3     ((((((((((((((gr)■)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1533   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1534   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1535   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1536   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1537   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1538   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1539   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1540   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1541   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1542   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1543   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1544   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1545   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1546   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1547   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1548   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1549   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1550   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1551   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1552   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1553   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1554   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1555   |  3     ((((((((((((((gr)■)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1556   |  3     ((((((((((((((gr)■)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1557   |  3     ((((((((((((((gr)■)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1558   |  3     ((((((((((((((gr)■)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1559   |  3     ((((((((((((((gr)■)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1560   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1561   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1562   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1563   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1564   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1565   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1566   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1567   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1568   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1569   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1570   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1571   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1572   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1573   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1574   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1575   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1576   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1577   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1578   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1579   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1580   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1581   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1582   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1583   |  3     ((((((((((((((gr)■)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1584   |  3     ((((((((((((((gr)■)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1585   |  3     ((((((((((((((gr)■)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1586   |  3     ((((((((((((((gr)■)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1587   |  3     ((((((((((((((gr)■)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1588   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1589   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1590   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1591   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1592   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1593   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1594   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1595   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1596   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1597   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1598   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1599   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1600   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1601   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1602   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1603   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1604   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1605   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1606   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1607   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1608   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1609   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1610   |  3     ((((((((((((((gr)■)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1611   |  3     ((((((((((((((gr)■)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1612   |  3     ((((((((((((((gr)■)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1613   |  3     ((((((((((((((gr)■)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1614   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1615   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1616   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1617   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1618   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1619   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1620   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1621   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1622   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1623   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1624   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1625   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1626   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1627   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1628   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1629   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1630   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1631   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1632   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1633   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1634   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1635   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1636   |  3     ((((((((((((((gr)■)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1637   |  3     ((((((((((((((gr)■)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1638   |  3     ((((((((((((((gr)■)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1639   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1640   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1641   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1642   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1643   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1644   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1645   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1646   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1647   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1648   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1649   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1650   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1651   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1652   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1653   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1654   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1655   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1656   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1657   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1658   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1659   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1660   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1661   |  3     ((((((((((((((gr)■)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1662   |  3     ((((((((((((((gr)■)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1663   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1664   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1665   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1666   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1667   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1668   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1669   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1670   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1671   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1672   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1673   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1674   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1675   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1676   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1677   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1678   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1679   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1680   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1681   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1682   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1683   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1684   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1685   |  3     ((((((((((((((gr)■)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1686   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1687   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1688   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1689   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1690   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1691   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1692   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1693   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1694   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1695   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1696   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1697   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1698   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1699   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1700   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1701   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1702   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1703   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1704   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1705   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1706   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1707   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1708   |  3     ((((((((((((((gr)■)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1709   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1710   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1711   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1712   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1713   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1714   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1715   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1716   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1717   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1718   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1719   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1720   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1721   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1722   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1723   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1724   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1725   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1726   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1727   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1728   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1729   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1730   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1731   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1732   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1733   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1734   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1735   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1736   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1737   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1738   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1739   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1740   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1741   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1742   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1743   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1744   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1745   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1746   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1747   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1748   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1749   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1750   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1751   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1752   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1753   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1754   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1755   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1756   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1757   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1758   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1759   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1760   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1761   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1762   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1763   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1764   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1765   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1766   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1767   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1768   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1769   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1770   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1771   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1772   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1773   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1774   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1775   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1776   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1777   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1778   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1779   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1780   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1781   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1782   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1783   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1784   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1785   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1786   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1787   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1788   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1789   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1790   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1791   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1792   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1793   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1794   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1795   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1796   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1797   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1798   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1799   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1800   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1801   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1802   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1803   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1804   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1805   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1806   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1807   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1808   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1809   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1810   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1811   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1812   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1813   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1814   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  1815   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1816   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1817   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1818   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1819   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1820   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1821   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1822   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1823   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1824   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1825   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1826   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1827   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1828   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1829   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1830   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1831   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1832   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1833   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1834   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1835   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1836   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1837   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1838   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1839   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1840   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1841   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1842   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1843   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1844   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1845   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1846   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1847   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1848   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1849   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1850   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1851   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1852   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1853   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1854   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1855   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1856   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1857   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1858   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1859   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1860   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1861   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1862   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1863   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1864   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1865   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1866   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1867   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1868   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1869   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1870   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1871   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1872   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1873   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1874   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1875   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1876   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1877   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1878   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1879   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1880   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1881   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1882   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1883   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1884   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1885   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1886   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1887   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1888   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1889   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1890   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1891   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1892   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1893   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1894   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1895   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1896   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1897   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1898   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1899   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1900   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1901   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1902   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1903   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1904   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1905   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1906   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1907   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1908   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1909   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1910   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1911   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1912   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1913   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1914   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1915   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1916   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1917   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1918   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1919   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1920   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1921   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1922   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1923   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1924   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1925   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1926   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  1927   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  1928   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  1929   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  1930   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  1931   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  1932   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  1933   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  1934   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  1935   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  1936   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  1937   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  1938   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  1939   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  1940   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  1941   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  1942   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  1943   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  1944   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  1945   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  1946   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  1947   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  1948   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  1949   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  1950   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  1951   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  1952   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  1953   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  1954   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  1955   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  1956   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  1957   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  1958   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  1959   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  1960   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  1961   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  1962   |  3     ((((((((((((((gr)e)■)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1963   |  3     ((((((((((((((gr)e)■)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1964   |  3     ((((((((((((((gr)e)■)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1965   |  3     ((((((((((((((gr)e)■)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1966   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1967   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1968   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1969   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1970   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1971   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1972   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1973   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1974   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1975   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1976   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1977   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1978   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1979   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1980   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1981   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  1982   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  1983   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  1984   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  1985   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  1986   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  1987   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  1988   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  1989   |  3     ((((((((((((((gr)e)■)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  1990   |  3     ((((((((((((((gr)e)■) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1991   |  3     ((((((((((((((gr)e)■) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1992   |  3     ((((((((((((((gr)e)■) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1993   |  3     ((((((((((((((gr)e)■) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1994   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1995   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1996   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1997   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1998   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  1999   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2000   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2001   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2002   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2003   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2004   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2005   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2006   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2007   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2008   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2009   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2010   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2011   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2012   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2013   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2014   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2015   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2016   |  3     ((((((((((((((gr)e)■) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2017   |  3     ((((((((((((((gr)e)■) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2018   |  3     ((((((((((((((gr)e)■) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2019   |  3     ((((((((((((((gr)e)■) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2020   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2021   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2022   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2023   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2024   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2025   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2026   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2027   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2028   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2029   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2030   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2031   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2032   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2033   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2034   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2035   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2036   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2037   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2038   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2039   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2040   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2041   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2042   |  3     ((((((((((((((gr)e)■) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2043   |  3     ((((((((((((((gr)e)■) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2044   |  3     ((((((((((((((gr)e)■) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2045   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2046   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2047   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2048   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2049   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2050   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2051   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2052   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2053   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2054   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2055   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2056   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2057   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2058   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2059   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2060   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2061   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2062   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2063   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2064   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2065   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2066   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2067   |  3     ((((((((((((((gr)e)■) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2068   |  3     ((((((((((((((gr)e)■) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2069   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2070   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2071   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2072   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2073   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2074   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2075   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2076   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2077   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2078   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2079   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2080   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2081   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2082   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2083   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2084   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2085   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2086   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2087   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2088   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2089   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2090   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2091   |  3     ((((((((((((((gr)e)■) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2092   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2093   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2094   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2095   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2096   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2097   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2098   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2099   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2100   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2101   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2102   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2103   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2104   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2105   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2106   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2107   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2108   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2109   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2110   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2111   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2112   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2113   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2114   |  3     ((((((((((((((gr)e)■) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2115   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2116   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2117   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2118   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2119   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2120   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2121   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2122   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2123   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2124   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2125   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2126   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2127   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2128   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2129   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2130   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2131   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2132   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2133   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2134   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2135   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2136   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2137   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2138   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2139   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2140   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2141   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2142   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2143   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2144   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2145   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2146   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2147   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2148   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2149   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2150   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2151   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2152   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2153   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2154   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2155   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2156   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2157   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2158   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2159   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2160   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2161   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2162   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2163   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2164   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2165   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2166   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2167   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2168   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2169   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2170   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2171   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2172   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2173   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2174   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2175   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2176   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2177   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2178   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2179   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2180   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2181   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2182   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2183   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2184   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2185   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2186   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2187   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2188   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2189   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2190   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2191   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2192   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2193   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2194   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2195   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2196   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2197   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2198   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2199   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2200   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2201   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2202   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2203   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  2204   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dot
  2205   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dot
  2206   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dot
  2207   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dot
  2208   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dot
  2209   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dot
  2210   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dot
  2211   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dot
  2212   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dot
  2213   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dot
  2214   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dot
  2215   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2216   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2217   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2218   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2219   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2220   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  2221   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2222   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2223   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2224   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2225   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2226   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2227   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2228   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2229   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2230   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2231   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2232   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2233   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2234   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2235   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2236   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2237   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2238   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2239   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2240   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2241   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2242   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2243   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2244   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2245   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2246   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2247   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2248   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2249   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2250   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2251   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2252   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2253   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2254   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2255   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2256   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2257   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2258   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2259   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2260   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2261   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2262   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2263   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2264   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2265   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2266   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2267   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2268   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2269   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2270   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2271   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2272   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2273   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2274   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2275   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2276   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2277   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2278   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2279   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2280   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2281   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2282   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2283   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2284   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2285   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2286   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2287   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2288   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2289   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2290   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2291   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2292   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2293   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2294   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2295   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2296   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2297   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2298   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2299   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2300   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2301   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2302   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2303   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2304   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2305   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2306   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2307   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2308   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2309   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2310   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2311   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2312   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2313   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2314   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2315   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2316   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2317   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2318   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2319   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2320   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2321   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2322   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2323   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2324   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2325   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2326   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2327   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2328   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2329   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2330   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2331   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2332   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  2333   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  2334   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  2335   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  2336   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  2337   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  2338   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  2339   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  2340   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  2341   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  2342   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  2343   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  2344   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  2345   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  2346   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  2347   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  2348   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  2349   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  2350   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  2351   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  2352   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  2353   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  2354   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  2355   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  2356   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  2357   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  2358   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  2359   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  2360   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  2361   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  2362   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  2363   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  2364   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  2365   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  2366   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  2367   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  2368   |  3     ((((((((((((((gr)e)p)■)■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2369   |  3     ((((((((((((((gr)e)p)■)■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2370   |  3     ((((((((((((((gr)e)p)■)■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2371   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2372   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2373   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2374   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2375   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2376   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2377   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2378   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2379   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2380   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2381   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2382   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2383   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2384   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2385   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2386   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2387   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2388   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2389   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2390   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2391   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2392   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2393   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2394   |  3     ((((((((((((((gr)e)p)■)■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2395   |  3     ((((((((((((((gr)e)p)■)a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2396   |  3     ((((((((((((((gr)e)p)■)a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2397   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2398   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2399   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2400   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2401   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2402   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2403   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2404   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2405   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2406   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2407   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2408   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2409   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2410   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2411   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2412   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2413   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2414   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2415   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2416   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2417   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2418   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2419   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2420   |  3     ((((((((((((((gr)e)p)■)a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2421   |  3     ((((((((((((((gr)e)p)■)a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2422   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2423   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2424   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2425   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2426   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2427   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2428   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2429   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2430   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2431   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2432   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2433   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2434   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2435   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2436   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2437   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2438   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2439   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2440   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2441   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2442   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2443   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2444   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2445   |  3     ((((((((((((((gr)e)p)■)a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2446   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2447   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2448   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2449   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2450   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2451   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2452   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2453   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2454   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2455   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2456   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2457   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2458   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2459   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2460   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2461   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2462   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2463   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2464   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2465   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2466   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2467   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2468   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2469   |  3     ((((((((((((((gr)e)p)■)a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2470   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2471   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2472   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2473   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2474   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2475   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2476   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2477   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2478   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2479   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2480   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2481   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2482   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2483   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2484   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2485   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2486   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2487   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2488   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2489   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2490   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2491   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2492   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2493   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2494   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2495   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2496   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2497   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2498   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2499   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2500   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2501   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2502   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2503   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2504   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2505   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2506   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2507   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2508   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2509   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2510   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2511   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2512   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2513   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2514   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2515   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2516   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2517   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2518   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2519   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2520   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2521   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2522   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2523   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2524   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2525   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2526   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2527   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2528   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2529   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2530   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2531   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2532   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2533   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2534   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2535   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2536   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2537   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2538   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2539   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2540   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2541   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2542   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2543   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2544   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2545   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2546   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2547   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2548   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2549   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2550   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2551   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2552   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2553   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2554   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2555   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2556   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2557   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2558   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2559   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2560   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2561   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2562   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2563   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2564   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2565   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2566   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2567   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2568   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2569   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2570   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2571   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2572   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2573   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2574   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2575   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2576   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2577   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2578   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2579   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2580   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2581   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  2582   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dot
  2583   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dot
  2584   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dot
  2585   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dot
  2586   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dot
  2587   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dot
  2588   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dot
  2589   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dot
  2590   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dot
  2591   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dot
  2592   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dot
  2593   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2594   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2595   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2596   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2597   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2598   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  2599   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2600   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2601   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2602   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2603   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2604   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2605   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2606   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2607   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2608   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2609   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2610   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2611   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2612   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2613   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2614   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2615   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2616   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2617   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2618   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2619   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2620   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2621   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2622   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2623   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2624   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2625   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2626   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2627   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2628   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2629   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2630   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2631   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2632   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2633   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2634   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2635   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2636   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2637   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2638   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2639   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2640   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2641   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2642   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2643   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2644   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2645   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2646   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2647   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2648   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2649   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2650   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2651   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2652   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2653   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2654   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2655   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2656   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2657   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2658   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2659   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2660   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2661   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2662   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2663   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2664   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2665   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2666   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2667   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2668   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2669   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2670   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2671   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2672   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2673   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2674   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2675   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2676   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2677   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2678   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2679   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2680   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2681   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2682   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2683   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2684   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2685   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2686   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2687   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2688   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2689   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2690   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2691   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2692   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2693   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2694   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2695   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2696   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2697   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2698   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2699   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2700   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2701   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2702   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2703   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2704   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2705   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2706   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2707   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2708   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2709   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2710   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  2711   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  2712   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  2713   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  2714   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  2715   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  2716   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  2717   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  2718   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  2719   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  2720   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  2721   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  2722   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  2723   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  2724   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  2725   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  2726   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  2727   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  2728   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  2729   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  2730   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  2731   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  2732   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  2733   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  2734   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  2735   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  2736   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  2737   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  2738   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  2739   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  2740   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  2741   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  2742   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  2743   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  2744   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  2745   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  2746   |  3     ((((((((((((((gr)e)p) )■)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2747   |  3     ((((((((((((((gr)e)p) )■)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2748   |  3     ((((((((((((((gr)e)p) )■)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2749   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2750   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2751   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2752   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2753   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2754   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2755   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2756   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2757   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2758   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2759   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2760   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2761   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2762   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2763   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2764   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2765   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2766   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2767   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2768   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2769   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2770   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2771   |  3     ((((((((((((((gr)e)p) )■)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2772   |  3     ((((((((((((((gr)e)p) )■)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2773   |  3     ((((((((((((((gr)e)p) )■)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2774   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2775   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2776   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2777   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2778   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2779   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2780   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2781   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2782   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2783   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2784   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2785   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2786   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2787   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2788   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2789   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2790   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2791   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2792   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2793   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2794   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2795   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2796   |  3     ((((((((((((((gr)e)p) )■)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2797   |  3     ((((((((((((((gr)e)p) )■)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2798   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2799   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2800   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2801   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2802   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2803   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2804   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2805   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2806   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2807   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2808   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2809   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2810   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2811   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2812   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2813   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2814   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2815   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2816   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2817   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2818   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2819   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2820   |  3     ((((((((((((((gr)e)p) )■)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2821   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2822   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2823   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2824   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2825   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2826   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2827   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2828   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2829   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2830   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2831   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2832   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2833   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2834   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2835   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2836   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2837   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2838   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2839   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2840   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2841   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2842   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2843   |  3     ((((((((((((((gr)e)p) )■)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2844   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2845   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2846   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2847   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2848   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2849   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2850   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2851   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2852   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2853   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2854   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2855   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2856   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2857   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2858   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2859   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2860   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2861   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2862   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2863   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2864   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2865   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2866   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2867   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2868   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2869   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2870   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2871   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2872   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2873   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2874   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2875   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2876   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2877   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2878   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2879   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2880   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2881   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2882   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2883   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2884   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2885   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2886   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2887   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2888   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2889   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2890   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2891   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2892   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2893   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2894   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2895   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2896   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2897   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2898   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2899   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2900   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2901   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2902   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2903   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2904   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2905   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2906   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2907   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2908   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2909   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2910   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2911   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2912   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2913   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2914   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2915   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2916   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2917   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2918   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2919   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2920   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2921   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2922   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2923   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2924   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2925   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2926   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2927   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2928   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2929   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2930   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2931   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  2932   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  2933   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dot
  2934   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dot
  2935   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dot
  2936   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dot
  2937   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dot
  2938   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dot
  2939   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dot
  2940   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dot
  2941   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dot
  2942   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dot
  2943   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dot
  2944   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2945   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2946   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2947   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2948   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2949   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  2950   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2951   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2952   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2953   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2954   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2955   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2956   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2957   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2958   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2959   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2960   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2961   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2962   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2963   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2964   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2965   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2966   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2967   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2968   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2969   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2970   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2971   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2972   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2973   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2974   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2975   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2976   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2977   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2978   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2979   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2980   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2981   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2982   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2983   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2984   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2985   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  2986   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  2987   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  2988   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  2989   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  2990   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  2991   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  2992   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2993   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2994   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2995   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2996   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  2997   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  2998   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  2999   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3000   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3001   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3002   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3003   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3004   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3005   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3006   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3007   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3008   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3009   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3010   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3011   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3012   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3013   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3014   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3015   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3016   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3017   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3018   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3019   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3020   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3021   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3022   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3023   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3024   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3025   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3026   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3027   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3028   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3029   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3030   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3031   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3032   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3033   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3034   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3035   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3036   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3037   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3038   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3039   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3040   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3041   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3042   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3043   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3044   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3045   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3046   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3047   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3048   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3049   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3050   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3051   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3052   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3053   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3054   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3055   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3056   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3057   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3058   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3059   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3060   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3061   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  3062   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  3063   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  3064   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  3065   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  3066   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  3067   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  3068   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  3069   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  3070   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  3071   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  3072   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  3073   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  3074   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  3075   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  3076   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  3077   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  3078   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  3079   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  3080   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  3081   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  3082   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  3083   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  3084   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  3085   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  3086   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  3087   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  3088   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  3089   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  3090   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  3091   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  3092   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  3093   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  3094   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  3095   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  3096   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  3097   |  3     ((((((((((((((gr)e)p) )a)■)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3098   |  3     ((((((((((((((gr)e)p) )a)■)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3099   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3100   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3101   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3102   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3103   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3104   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3105   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3106   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3107   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3108   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3109   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3110   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3111   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3112   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3113   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3114   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3115   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3116   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3117   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3118   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3119   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3120   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3121   |  3     ((((((((((((((gr)e)p) )a)■)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3122   |  3     ((((((((((((((gr)e)p) )a)■)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3123   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3124   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3125   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3126   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3127   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3128   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3129   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3130   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3131   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3132   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3133   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3134   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3135   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3136   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3137   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3138   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3139   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3140   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3141   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3142   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3143   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3144   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3145   |  3     ((((((((((((((gr)e)p) )a)■)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3146   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3147   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3148   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3149   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3150   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3151   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3152   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3153   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3154   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3155   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3156   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3157   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3158   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3159   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3160   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3161   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3162   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3163   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3164   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3165   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3166   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3167   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3168   |  3     ((((((((((((((gr)e)p) )a)■)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3169   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3170   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3171   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3172   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3173   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3174   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3175   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3176   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3177   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3178   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3179   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3180   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3181   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3182   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3183   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3184   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3185   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3186   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3187   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3188   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3189   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3190   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3191   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3192   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3193   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3194   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3195   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3196   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3197   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3198   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3199   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3200   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3201   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3202   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3203   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3204   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3205   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3206   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3207   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3208   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3209   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3210   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3211   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3212   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3213   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3214   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3215   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3216   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3217   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3218   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3219   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3220   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3221   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3222   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3223   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3224   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3225   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3226   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3227   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3228   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3229   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3230   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3231   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3232   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3233   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3234   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3235   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3236   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3237   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3238   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3239   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3240   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3241   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3242   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3243   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3244   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3245   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3246   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3247   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3248   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3249   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3250   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3251   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3252   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3253   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3254   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3255   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3256   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3257   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3258   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3259   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3260   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3261   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3262   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3263   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3264   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3265   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3266   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3267   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3268   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3269   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3270   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3271   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3272   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3273   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3274   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  3275   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3276   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3277   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3278   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3279   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3280   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3281   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3282   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3283   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3284   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3285   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3286   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3287   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3288   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3289   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3290   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3291   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3292   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3293   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3294   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3295   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3296   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3297   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3298   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3299   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3300   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3301   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3302   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3303   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3304   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3305   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3306   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3307   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3308   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3309   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3310   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3311   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3312   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3313   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3314   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3315   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3316   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3317   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3318   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3319   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3320   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3321   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3322   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3323   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3324   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3325   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3326   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3327   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3328   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3329   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3330   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3331   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3332   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3333   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3334   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3335   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3336   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3337   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3338   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3339   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3340   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3341   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3342   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3343   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3344   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3345   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3346   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3347   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3348   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3349   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3350   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3351   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3352   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3353   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3354   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3355   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3356   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3357   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3358   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3359   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3360   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3361   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3362   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3363   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3364   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3365   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3366   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3367   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3368   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3369   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3370   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3371   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3372   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3373   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3374   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3375   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3376   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3377   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3378   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3379   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3380   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3381   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3382   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3383   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3384   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3385   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3386   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  3387   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  3388   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  3389   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  3390   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  3391   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  3392   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  3393   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  3394   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  3395   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  3396   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  3397   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  3398   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  3399   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  3400   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  3401   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  3402   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  3403   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  3404   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  3405   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  3406   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  3407   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  3408   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  3409   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  3410   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  3411   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  3412   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  3413   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  3414   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  3415   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  3416   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  3417   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  3418   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  3419   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  3420   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  3421   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  3422   |  3     ((((((((((((((gr)e)p) )a)b)■)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3423   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3424   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3425   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3426   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3427   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3428   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3429   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3430   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3431   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3432   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3433   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3434   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3435   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3436   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3437   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3438   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3439   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3440   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3441   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3442   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3443   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3444   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3445   |  3     ((((((((((((((gr)e)p) )a)b)■)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3446   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3447   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3448   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3449   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3450   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3451   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3452   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3453   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3454   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3455   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3456   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3457   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3458   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3459   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3460   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3461   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3462   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3463   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3464   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3465   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3466   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3467   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3468   |  3     ((((((((((((((gr)e)p) )a)b)■)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3469   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3470   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3471   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3472   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3473   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3474   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3475   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3476   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3477   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3478   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3479   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3480   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3481   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3482   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3483   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3484   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3485   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3486   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3487   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3488   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3489   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3490   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3491   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3492   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3493   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3494   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3495   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3496   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3497   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3498   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3499   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3500   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3501   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3502   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3503   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3504   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3505   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3506   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3507   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3508   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3509   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3510   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3511   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3512   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3513   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3514   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3515   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3516   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3517   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3518   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3519   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3520   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3521   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3522   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3523   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3524   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3525   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3526   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3527   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3528   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3529   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3530   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3531   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3532   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3533   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3534   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3535   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3536   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3537   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3538   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3539   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3540   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3541   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3542   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3543   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3544   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3545   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3546   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3547   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3548   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3549   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3550   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3551   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3552   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3553   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3554   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3555   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3556   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3557   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3558   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3559   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3560   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3561   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3562   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3563   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3564   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3565   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3566   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3567   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3568   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3569   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3570   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3571   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3572   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3573   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3574   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  3575   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3576   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3577   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3578   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3579   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3580   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3581   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3582   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3583   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3584   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3585   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3586   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3587   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3588   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3589   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3590   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3591   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3592   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3593   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3594   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3595   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3596   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3597   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3598   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3599   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3600   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3601   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3602   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3603   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3604   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3605   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3606   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3607   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3608   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3609   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3610   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3611   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3612   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3613   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3614   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3615   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3616   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3617   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3618   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3619   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3620   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3621   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3622   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3623   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3624   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3625   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3626   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3627   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3628   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3629   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3630   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3631   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3632   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3633   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3634   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3635   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3636   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3637   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3638   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3639   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3640   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3641   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3642   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3643   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3644   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3645   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3646   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3647   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3648   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3649   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3650   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3651   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3652   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3653   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3654   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3655   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3656   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3657   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3658   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3659   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3660   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3661   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3662   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3663   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3664   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3665   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3666   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3667   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3668   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3669   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3670   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3671   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3672   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3673   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3674   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3675   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3676   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3677   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3678   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3679   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3680   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3681   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3682   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3683   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3684   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3685   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3686   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  3687   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  3688   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  3689   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  3690   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  3691   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  3692   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  3693   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  3694   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  3695   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  3696   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  3697   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  3698   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  3699   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  3700   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  3701   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  3702   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  3703   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  3704   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  3705   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  3706   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  3707   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  3708   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  3709   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  3710   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  3711   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  3712   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  3713   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  3714   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  3715   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  3716   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  3717   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  3718   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  3719   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  3720   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  3721   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  3722   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3723   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3724   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3725   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3726   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3727   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3728   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3729   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3730   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3731   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3732   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3733   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3734   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3735   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3736   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3737   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3738   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3739   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3740   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3741   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3742   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3743   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3744   |  3     ((((((((((((((gr)e)p) )a)b)c)■)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3745   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3746   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3747   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3748   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3749   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3750   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3751   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3752   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3753   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3754   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3755   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3756   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3757   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3758   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3759   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3760   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3761   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3762   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3763   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3764   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3765   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3766   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3767   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3768   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3769   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3770   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3771   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3772   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3773   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3774   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3775   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3776   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3777   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3778   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3779   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3780   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3781   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3782   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3783   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3784   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3785   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3786   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3787   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3788   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3789   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3790   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3791   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3792   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3793   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3794   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3795   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3796   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3797   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3798   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3799   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3800   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3801   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3802   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3803   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3804   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3805   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3806   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3807   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3808   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3809   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3810   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3811   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3812   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3813   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3814   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3815   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3816   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3817   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3818   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3819   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3820   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3821   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3822   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3823   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3824   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3825   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3826   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3827   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3828   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3829   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3830   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3831   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3832   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3833   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3834   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3835   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3836   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3837   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3838   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3839   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3840   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3841   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3842   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3843   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3844   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3845   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3846   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3847   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3848   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3849   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3850   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  3851   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3852   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3853   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3854   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3855   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3856   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3857   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3858   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3859   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3860   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3861   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3862   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3863   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3864   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3865   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3866   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3867   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3868   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3869   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3870   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3871   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3872   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3873   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3874   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3875   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3876   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3877   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3878   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3879   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3880   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3881   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3882   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3883   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3884   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3885   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3886   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3887   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3888   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3889   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3890   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3891   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3892   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3893   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3894   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3895   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3896   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3897   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3898   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3899   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3900   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3901   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3902   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3903   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3904   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3905   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3906   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3907   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3908   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3909   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3910   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3911   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3912   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3913   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3914   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3915   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3916   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3917   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3918   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3919   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3920   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3921   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3922   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3923   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3924   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3925   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3926   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3927   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3928   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3929   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3930   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3931   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3932   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3933   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3934   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3935   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3936   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3937   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3938   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3939   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3940   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3941   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3942   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3943   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3944   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3945   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3946   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3947   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3948   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3949   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3950   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3951   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3952   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3953   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  3954   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  3955   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  3956   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  3957   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  3958   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  3959   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  3960   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  3961   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  3962   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  3963   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  3964   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  3965   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  3966   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  3967   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  3968   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  3969   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  3970   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  3971   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  3972   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  3973   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  3974   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  3975   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  3976   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  3977   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  3978   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  3979   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  3980   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  3981   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  3982   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  3983   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  3984   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  3985   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  3986   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  3987   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  3988   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  3989   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  3990   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  3991   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  3992   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  3993   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  3994   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  3995   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  3996   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  3997   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  3998   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  3999   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4000   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4001   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4002   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4003   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4004   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4005   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4006   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4007   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4008   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4009   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4010   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4011   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4012   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4013   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4014   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4015   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4016   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4017   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4018   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4019   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4020   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4021   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4022   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4023   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4024   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4025   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4026   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4027   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4028   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4029   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4030   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4031   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4032   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4033   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4034   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4035   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4036   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4037   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4038   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4039   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4040   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4041   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4042   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4043   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4044   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4045   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4046   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4047   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4048   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4049   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4050   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4051   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4052   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4053   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4054   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4055   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4056   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4057   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4058   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4059   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4060   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4061   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4062   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4063   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4064   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4065   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4066   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4067   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4068   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4069   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4070   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4071   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4072   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4073   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4074   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4075   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4076   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4077   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4078   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4079   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4080   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4081   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4082   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4083   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4084   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4085   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4086   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4087   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4088   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4089   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4090   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4091   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4092   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4093   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4094   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4095   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4096   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4097   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4098   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4099   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4100   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4101   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4102   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4103   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  4104   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4105   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4106   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4107   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4108   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4109   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4110   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4111   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4112   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4113   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4114   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4115   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4116   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4117   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4118   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4119   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4120   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4121   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4122   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4123   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4124   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4125   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4126   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4127   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4128   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4129   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4130   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4131   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4132   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4133   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4134   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4135   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4136   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4137   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4138   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4139   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4140   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4141   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4142   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4143   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4144   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4145   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4146   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4147   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4148   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4149   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4150   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4151   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4152   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4153   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4154   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4155   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4156   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4157   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4158   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4159   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4160   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4161   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4162   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4163   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4164   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4165   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4166   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4167   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4168   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4169   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4170   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4171   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4172   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4173   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4174   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4175   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4176   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4177   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4178   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4179   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4180   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4181   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4182   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4183   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4184   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4185   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4186   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4187   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4188   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4189   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4190   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4191   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4192   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4193   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4194   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4195   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4196   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4197   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4198   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4199   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4200   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4201   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4202   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4203   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4204   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4205   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4206   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4207   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4208   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4209   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4210   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4211   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4212   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4213   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4214   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4215   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  4216   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  4217   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  4218   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  4219   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  4220   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  4221   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  4222   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  4223   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  4224   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  4225   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  4226   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  4227   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  4228   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  4229   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  4230   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  4231   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  4232   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  4233   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  4234   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  4235   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  4236   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  4237   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  4238   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  4239   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  4240   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  4241   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  4242   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  4243   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  4244   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  4245   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  4246   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  4247   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  4248   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  4249   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  4250   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  4251   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4252   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4253   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4254   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4255   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4256   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4257   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4258   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4259   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4260   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4261   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4262   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4263   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4264   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4265   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4266   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4267   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4268   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4269   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4270   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4271   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4272   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4273   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4274   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4275   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4276   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4277   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4278   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4279   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4280   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4281   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4282   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4283   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4284   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4285   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4286   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4287   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4288   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4289   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4290   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4291   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4292   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4293   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4294   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4295   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4296   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4297   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4298   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4299   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4300   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4301   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4302   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4303   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4304   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4305   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4306   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4307   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4308   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4309   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4310   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4311   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4312   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4313   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4314   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4315   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4316   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4317   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4318   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4319   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4320   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4321   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4322   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4323   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4324   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4325   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4326   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4327   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4328   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4329   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4330   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4331   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4332   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4333   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4334   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  4335   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4336   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4337   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4338   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4339   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4340   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4341   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4342   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4343   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4344   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4345   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4346   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4347   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4348   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4349   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4350   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4351   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4352   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4353   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4354   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4355   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4356   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4357   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4358   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4359   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4360   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4361   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4362   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4363   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4364   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4365   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4366   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4367   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4368   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4369   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4370   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4371   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4372   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4373   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4374   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4375   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4376   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4377   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4378   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4379   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4380   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4381   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4382   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4383   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4384   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4385   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4386   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4387   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4388   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4389   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4390   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4391   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4392   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4393   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4394   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4395   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4396   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4397   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4398   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4399   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4400   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4401   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4402   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4403   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4404   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4405   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4406   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4407   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4408   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4409   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4410   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4411   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4412   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4413   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4414   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4415   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4416   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4417   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4418   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4419   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4420   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4421   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4422   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4423   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4424   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4425   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4426   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4427   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4428   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4429   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4430   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4431   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4432   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4433   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4434   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4435   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4436   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4437   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4438   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4439   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4440   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4441   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4442   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4443   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4444   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4445   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4446   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  4447   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  4448   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  4449   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  4450   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  4451   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  4452   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  4453   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  4454   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  4455   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  4456   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  4457   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  4458   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  4459   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  4460   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  4461   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  4462   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  4463   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  4464   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  4465   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  4466   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  4467   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  4468   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  4469   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  4470   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  4471   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  4472   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  4473   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  4474   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  4475   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  4476   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  4477   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  4478   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  4479   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  4480   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  4481   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  4482   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4483   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4484   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4485   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4486   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4487   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4488   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4489   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4490   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4491   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4492   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4493   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4494   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4495   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4496   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4497   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4498   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4499   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4500   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4501   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4502   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4503   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4504   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4505   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4506   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4507   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4508   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4509   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4510   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4511   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4512   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4513   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4514   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4515   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4516   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4517   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4518   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4519   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4520   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4521   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4522   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4523   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4524   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4525   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4526   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4527   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4528   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4529   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4530   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4531   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4532   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4533   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4534   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4535   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4536   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4537   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4538   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4539   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4540   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4541   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4542   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4543   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4544   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  4545   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4546   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4547   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4548   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4549   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4550   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4551   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4552   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4553   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4554   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4555   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4556   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4557   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4558   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4559   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4560   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4561   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4562   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4563   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4564   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4565   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4566   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4567   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4568   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4569   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4570   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4571   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4572   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4573   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4574   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4575   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4576   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4577   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4578   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4579   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4580   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4581   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4582   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4583   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4584   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4585   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4586   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4587   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4588   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4589   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4590   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4591   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4592   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4593   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4594   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4595   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4596   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4597   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4598   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4599   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4600   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4601   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4602   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4603   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4604   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4605   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4606   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4607   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4608   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4609   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4610   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4611   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4612   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4613   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4614   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4615   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4616   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4617   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4618   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4619   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4620   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4621   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4622   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4623   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4624   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4625   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4626   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4627   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4628   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4629   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4630   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4631   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4632   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4633   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4634   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4635   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4636   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4637   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4638   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4639   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4640   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4641   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4642   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4643   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4644   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4645   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4646   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4647   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4648   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4649   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4650   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4651   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4652   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4653   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4654   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4655   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4656   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  4657   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  4658   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  4659   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  4660   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  4661   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  4662   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  4663   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  4664   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  4665   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  4666   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  4667   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  4668   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  4669   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  4670   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  4671   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  4672   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  4673   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  4674   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  4675   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  4676   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  4677   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  4678   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  4679   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  4680   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  4681   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  4682   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  4683   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  4684   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  4685   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  4686   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  4687   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  4688   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  4689   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  4690   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  4691   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  4692   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4693   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4694   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4695   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4696   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4697   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4698   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4699   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4700   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4701   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4702   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4703   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4704   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4705   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4706   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4707   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4708   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4709   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4710   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4711   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4712   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4713   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4714   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4715   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4716   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4717   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4718   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4719   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4720   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4721   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4722   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4723   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4724   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4725   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4726   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4727   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4728   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4729   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4730   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4731   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4732   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4733   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4734   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  4735   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4736   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4737   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4738   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4739   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4740   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4741   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4742   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4743   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4744   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4745   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4746   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4747   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4748   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4749   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4750   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4751   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4752   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4753   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4754   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4755   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4756   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4757   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4758   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4759   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4760   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4761   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4762   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4763   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4764   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4765   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4766   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4767   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4768   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4769   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4770   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4771   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4772   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4773   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4774   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4775   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4776   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4777   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4778   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4779   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4780   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4781   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4782   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4783   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4784   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4785   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4786   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4787   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4788   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4789   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4790   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4791   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4792   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4793   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4794   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4795   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4796   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4797   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4798   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4799   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4800   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4801   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4802   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4803   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4804   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4805   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4806   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4807   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4808   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4809   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4810   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4811   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4812   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4813   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4814   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4815   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4816   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4817   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4818   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4819   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4820   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4821   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4822   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4823   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4824   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4825   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4826   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4827   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4828   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4829   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4830   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4831   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4832   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4833   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4834   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4835   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4836   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4837   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4838   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4839   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4840   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4841   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4842   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4843   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4844   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4845   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4846   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  4847   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  4848   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  4849   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  4850   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  4851   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  4852   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  4853   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  4854   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  4855   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  4856   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  4857   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  4858   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  4859   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  4860   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  4861   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  4862   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  4863   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  4864   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  4865   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  4866   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  4867   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  4868   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  4869   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  4870   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  4871   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  4872   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  4873   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  4874   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  4875   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  4876   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  4877   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  4878   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  4879   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  4880   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  4881   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  4882   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4883   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4884   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4885   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4886   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4887   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4888   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4889   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4890   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4891   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4892   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4893   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4894   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4895   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4896   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4897   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4898   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4899   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4900   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4901   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4902   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4903   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4904   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4905   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  4906   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4907   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4908   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4909   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4910   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4911   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4912   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4913   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4914   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4915   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4916   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4917   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4918   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4919   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4920   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4921   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4922   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4923   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4924   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4925   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4926   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4927   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4928   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4929   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4930   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4931   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4932   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4933   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4934   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4935   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4936   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4937   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4938   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4939   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4940   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4941   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4942   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4943   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4944   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4945   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4946   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4947   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4948   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4949   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4950   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4951   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4952   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4953   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4954   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4955   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4956   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4957   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4958   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4959   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4960   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4961   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4962   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4963   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4964   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4965   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4966   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4967   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4968   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4969   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4970   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4971   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4972   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4973   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4974   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4975   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4976   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4977   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4978   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4979   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4980   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4981   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4982   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4983   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4984   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4985   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4986   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4987   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4988   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4989   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  4990   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  4991   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  4992   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  4993   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  4994   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  4995   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  4996   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  4997   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  4998   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  4999   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5000   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5001   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5002   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5003   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5004   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5005   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5006   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5007   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5008   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5009   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5010   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5011   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5012   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5013   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5014   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5015   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5016   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5017   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  5018   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  5019   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  5020   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  5021   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  5022   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  5023   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  5024   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  5025   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  5026   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  5027   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  5028   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  5029   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  5030   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  5031   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  5032   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  5033   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  5034   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  5035   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  5036   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  5037   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  5038   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  5039   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  5040   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  5041   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  5042   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  5043   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  5044   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  5045   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  5046   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  5047   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  5048   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  5049   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  5050   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  5051   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  5052   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  5053   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5054   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5055   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5056   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5057   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5058   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dot
  5059   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5060   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5061   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5062   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5063   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5064   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5065   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5066   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5067   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5068   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5069   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5070   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5071   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5072   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5073   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5074   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5075   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5076   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5077   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5078   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5079   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5080   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5081   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5082   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5083   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5084   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5085   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((s■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5086   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5087   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5088   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5089   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5090   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5091   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5092   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5093   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5094   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5095   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5096   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5097   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5098   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5099   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5100   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5101   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5102   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5103   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5104   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5105   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5106   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5107   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5108   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5109   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5110   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5111   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5112   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5113   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5114   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5115   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5116   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5117   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5118   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5119   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5120   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5121   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5122   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5123   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5124   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5125   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5126   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5127   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5128   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5129   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5130   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5131   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5132   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5133   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5134   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5135   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5136   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5137   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5138   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5139   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5140   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5141   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5142   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5143   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5144   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5145   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5146   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5147   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5148   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5149   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5150   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5151   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5152   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5153   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5154   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5155   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5156   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5157   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5158   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5159   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5160   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5161   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5162   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5163   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5164   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5165   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5166   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5167   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5168   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5169   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5170   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  5171   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  5172   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  5173   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  5174   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  5175   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  5176   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  5177   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  5178   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  5179   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  5180   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  5181   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  5182   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  5183   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  5184   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  5185   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  5186   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  5187   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  5188   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  5189   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  5190   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  5191   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  5192   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  5193   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  5194   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  5195   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  5196   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  5197   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  5198   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  5199   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  5200   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  5201   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  5202   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  5203   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  5204   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  5205   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|((((((((((((((((so)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  5206   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5207   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5208   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5209   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5210   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5211   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5212   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5213   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5214   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5215   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5216   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5217   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5218   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5219   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5220   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5221   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5222   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5223   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5224   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5225   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5226   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5227   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5228   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5229   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5230   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5231   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5232   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5233   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5234   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5235   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5236   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5237   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5238   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5239   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5240   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5241   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5242   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5243   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5244   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5245   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5246   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5247   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5248   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5249   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5250   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5251   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5252   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5253   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5254   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5255   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5256   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5257   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5258   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5259   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5260   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5261   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5262   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5263   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5264   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5265   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5266   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5267   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5268   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5269   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5270   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5271   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5272   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5273   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5274   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5275   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5276   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5277   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5278   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5279   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5280   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5281   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5282   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5283   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5284   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5285   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5286   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5287   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5288   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5289   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5290   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5291   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5292   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5293   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5294   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5295   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5296   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5297   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5298   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5299   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5300   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5301   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5302   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5303   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5304   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5305   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5306   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5307   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)■)5)0)1).)c)s)v)fail dotstar or empty
  5308   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)■)0)1).)c)s)v)fail dotstar or empty
  5309   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)■)1).)c)s)v)fail dotstar or empty
  5310   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)■).)c)s)v)fail dotstar or empty
  5311   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1)■)c)s)v)fail dotstar or empty
  5312   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)■)s)v)fail dotstar or empty
  5313   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)■)v)fail dotstar or empty
  5314   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)■)fail dotstar or empty
  5315   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)■)0)1).)c)s)v)fail dotstar or empty
  5316   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)■)1).)c)s)v)fail dotstar or empty
  5317   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)■).)c)s)v)fail dotstar or empty
  5318   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1)■)c)s)v)fail dotstar or empty
  5319   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)■)s)v)fail dotstar or empty
  5320   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)■)v)fail dotstar or empty
  5321   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)■)fail dotstar or empty
  5322   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)■)1).)c)s)v)fail dotstar or empty
  5323   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)■).)c)s)v)fail dotstar or empty
  5324   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1)■)c)s)v)fail dotstar or empty
  5325   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)■)s)v)fail dotstar or empty
  5326   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)■)v)fail dotstar or empty
  5327   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)■)fail dotstar or empty
  5328   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)■).)c)s)v)fail dotstar or empty
  5329   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1)■)c)s)v)fail dotstar or empty
  5330   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)■)s)v)fail dotstar or empty
  5331   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)■)v)fail dotstar or empty
  5332   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)■)fail dotstar or empty
  5333   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■)■)c)s)v)fail dotstar or empty
  5334   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)■)s)v)fail dotstar or empty
  5335   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)■)v)fail dotstar or empty
  5336   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)■)fail dotstar or empty
  5337   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)■)s)v)fail dotstar or empty
  5338   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)■)v)fail dotstar or empty
  5339   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)■)fail dotstar or empty
  5340   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)■)v)fail dotstar or empty
  5341   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)■)fail dotstar or empty
  5342   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((■o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)■)fail dotstar or empty
  5343   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5344   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5345   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5346   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5347   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5348   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5349   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5350   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5351   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5352   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5353   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5354   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5355   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5356   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5357   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5358   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5359   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5360   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5361   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5362   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5363   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5364   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5365   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5366   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5367   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5368   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5369   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5370   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5371   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5372   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5373   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5374   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5375   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5376   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((((■■)■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  5377   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((((■|■)■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  5378   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((((■){■}■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  5379   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5380   |  3     ((((((((((((((g■)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5381   |  3     ((((((((((((((gr)■)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5382   |  3     ((((((((((((((gr)e)■) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5383   |  3     ((((((((((((((gr)e)p)■)a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5384   |  3     ((((((((((((((gr)e)p) )■)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5385   |  3     ((((((((((((((gr)e)p) )a)■)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5386   |  3     ((((((((((((((gr)e)p) )a)b)■)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5387   |  3     ((((((((((((((gr)e)p) )a)b)c)■)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5388   |  3     ((((((((((((((gr)e)p) )a)b)c)_)■)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5389   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)■)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5390   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)■)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5391   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)■)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5392   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)■)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5393   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)■|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5394   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)■)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5395   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)■)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5396   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)■)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5397   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)■)e)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5398   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)■)2)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5399   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)■)_)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5400   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)■)2)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5401   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)■)0)1)5)0)1).)c)s)v)fail dotstar or empty
  5402   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)■)1)5)0)1).)c)s)v)fail dotstar or empty
  5403   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)■)5)0)1).)c)s)v)fail dotstar or empty
  5404   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)■)0)1).)c)s)v)fail dotstar or empty
  5405   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)■)1).)c)s)v)fail dotstar or empty
  5406   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)■).)c)s)v)fail dotstar or empty
  5407   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1)■)c)s)v)fail dotstar or empty
  5408   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)■)s)v)fail dotstar or empty
  5409   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)■)v)fail dotstar or empty
  5410   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)■)fail dotstar or empty
  5411   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■■|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  5412   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((((■|■)|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail solve
  5413   |  3     ((((((((((((((gr)e)p) )a)b)c)_)s)o)u)r)c)e|((((((((((((((((((■){■}|■)o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)fail dot
  5414   |  3     ((((((((((((((■r)e)p) )a)b)c)_)s)o)u)r)c)e|(((((((((((((((((■){■}o)u)r)c)e)2)_)2)0)1)5)0)1).)c)s)v)
20.157411813735962
timeout