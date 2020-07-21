
Given the regular expression:

  HeLlo HEllo HELLo HELLO heLLO

That that should match the strings:

  ✓ (0:12)   ]{2}   But I

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  30     |  2     (((((((((((((((((((((((((((■■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  31     |  2     (((((((((((((((((((((((((((■e)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  32     |  2     (((((((((((((((((((((((((((■e)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  33     |  2     (((((((((((((((((((((((((((■e)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  34     |  2     (((((((((((((((((((((((((((■e)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  35     |  2     (((((((((((((((((((((((((((■e)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  36     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  37     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  38     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  39     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  40     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  41     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  42     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  43     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  44     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  45     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  46     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  47     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  48     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  49     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  50     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  51     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  52     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  53     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  54     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  55     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  56     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  57     |  2     (((((((((((((((((((((((((((■e)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  58     |  2     (((((((((((((((((((((((((((H■)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  59     |  2     (((((((((((((((((((((((((((H■)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  60     |  2     (((((((((((((((((((((((((((H■)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  61     |  2     (((((((((((((((((((((((((((H■)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  62     |  2     (((((((((((((((((((((((((((H■)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  63     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  64     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  65     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  66     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  67     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  68     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  69     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  70     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  71     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  72     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  73     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  74     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  75     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  76     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  77     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  78     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  79     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  80     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  81     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  82     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  83     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  84     |  2     (((((((((((((((((((((((((((H■)L)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  85     |  2     (((((((((((((((((((((((((((He)■)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  86     |  2     (((((((((((((((((((((((((((He)■)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  87     |  2     (((((((((((((((((((((((((((He)■)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  88     |  2     (((((((((((((((((((((((((((He)■)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  89     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  90     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  91     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  92     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  93     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  94     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  95     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  96     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  97     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  98     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  99     |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  100    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  101    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  102    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  103    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  104    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  105    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  106    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  107    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  108    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  109    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  110    |  2     (((((((((((((((((((((((((((He)■)l)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  111    |  2     (((((((((((((((((((((((((((He)L)■)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  112    |  2     (((((((((((((((((((((((((((He)L)■)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  113    |  2     (((((((((((((((((((((((((((He)L)■)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  114    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  115    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  116    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  117    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  118    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  119    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  120    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  121    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  122    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  123    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  124    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  125    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  126    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  127    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  128    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  129    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  130    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  131    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  132    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  133    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  134    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  135    |  2     (((((((((((((((((((((((((((He)L)■)o) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  136    |  2     (((((((((((((((((((((((((((He)L)l)■)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  137    |  2     (((((((((((((((((((((((((((He)L)l)■) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  138    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  139    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  140    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  141    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  142    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  143    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  144    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  145    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  146    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  147    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  148    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  149    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  150    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  151    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  152    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  153    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  154    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  155    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  156    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  157    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  158    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  159    |  2     (((((((((((((((((((((((((((He)L)l)■) )H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  160    |  2     (((((((((((((((((((((((((((He)L)l)o)■)■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  161    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  162    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  163    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  164    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  165    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  166    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  167    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  168    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  169    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  170    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  171    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  172    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  173    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  174    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  175    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  176    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  177    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  178    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  179    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  180    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  181    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  182    |  2     (((((((((((((((((((((((((((He)L)l)o)■)H)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  183    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  184    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  185    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  186    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  187    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  188    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  189    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  190    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  191    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  192    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  193    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  194    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  195    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  196    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  197    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  198    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  199    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  200    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  201    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  202    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  203    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  204    |  2     (((((((((((((((((((((((((((He)L)l)o) )■)E)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  205    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  206    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  207    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  208    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  209    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  210    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  211    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  212    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  213    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  214    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  215    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  216    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  217    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  218    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  219    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  220    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  221    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  222    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  223    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  224    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  225    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)■)l)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  226    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  227    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  228    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  229    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  230    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  231    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  232    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  233    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  234    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  235    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  236    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  237    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  238    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  239    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  240    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  241    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  242    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  243    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  244    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  245    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)■)l)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  246    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  247    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  248    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  249    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  250    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  251    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  252    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  253    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  254    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  255    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  256    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  257    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  258    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  259    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  260    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  261    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  262    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  263    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  264    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)■)o) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  265    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  266    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  267    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  268    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  269    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  270    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  271    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  272    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  273    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  274    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  275    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  276    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  277    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  278    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  279    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  280    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  281    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  282    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)■) )H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  283    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  284    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  285    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  286    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  287    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  288    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  289    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  290    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  291    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  292    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  293    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  294    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  295    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  296    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  297    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  298    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  299    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o)■)H)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  300    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)■)L)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  301    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  302    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  303    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  304    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  305    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  306    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  307    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  308    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  309    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  310    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  311    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  312    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty
  313    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)■)L)Ofail dotstar or empty
  314    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)■)Ofail dotstar or empty
  315    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )■)E)L)L)o) )H)E)L)L)O) )h)e)L)L)■fail dotstar or empty
  316    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)■)L)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  317    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)■)o) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  318    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)■) )H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  319    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o)■)H)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  320    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )■)E)L)L)O) )h)e)L)L)Ofail dotstar or empty
  321    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)■)L)L)O) )h)e)L)L)Ofail dotstar or empty
  322    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)■)L)O) )h)e)L)L)Ofail dotstar or empty
  323    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)■)O) )h)e)L)L)Ofail dotstar or empty
  324    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)■) )h)e)L)L)Ofail dotstar or empty
  325    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O)■)h)e)L)L)Ofail dotstar or empty
  326    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )■)e)L)L)Ofail dotstar or empty
  327    |  2     (((((((((((((((((((((((((((He)L)l)o) )H)E)l)l)o) )H)■)L)L)o) )H)E)L)L)O) )h)■)L)L)Ofail dotstar or empty

2.048989772796631
timeout