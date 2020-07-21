
Given the regular expression:

  someword !!anotherword someotherword

That that should match the strings:

  ✓ (0:13)   !!anotherword

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  2      |  1     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  3      |  1     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  4      |  1     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  5      |  1     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  6      |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)■)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  7      |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)■)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  8      |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)■) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  9      |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d)■)!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  10     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )■)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  11     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)■)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  12     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)■)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  13     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)■)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  14     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)■)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  15     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)■)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  16     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)■)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  17     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)■)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  18     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)■)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  19     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)■)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  20     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)■)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  21     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)■)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  22     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)■) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  23     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d)■)s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  24     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )■)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  25     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)■)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  26     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)■)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  27     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)■)o)t)h)e)r)w)o)r)dfail dotstar or empty
  28     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)■)t)h)e)r)w)o)r)dfail dotstar or empty
  29     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)■)h)e)r)w)o)r)dfail dotstar or empty
  30     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)■)e)r)w)o)r)dfail dotstar or empty
  31     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)■)r)w)o)r)dfail dotstar or empty
  32     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)■)w)o)r)dfail dotstar or empty
  33     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)■)o)r)dfail dotstar or empty
  34     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)■)r)dfail dotstar or empty
  35     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)■)dfail dotstar or empty
  36     |  1     ((((((((((((((((((((((((((((((((((so)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)■fail dotstar or empty
  37     |  2     ((((((((((((((((((((((((((((((((((■■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  38     |  2     ((((((((((((((((((((((((((((((((((■o)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  39     |  2     ((((((((((((((((((((((((((((((((((■o)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  40     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  41     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)■)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  42     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)■)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  43     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)■) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  44     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d)■)!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  45     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )■)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  46     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)■)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  47     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)■)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  48     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)■)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  49     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)■)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  50     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)■)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  51     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)■)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  52     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)■)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  53     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)■)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  54     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)■)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  55     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)■)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  56     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)■)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  57     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)■) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  58     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d)■)s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  59     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )■)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  60     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)■)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  61     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)■)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  62     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)■)o)t)h)e)r)w)o)r)dfail dotstar or empty
  63     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)■)t)h)e)r)w)o)r)dfail dotstar or empty
  64     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)■)h)e)r)w)o)r)dfail dotstar or empty
  65     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)■)e)r)w)o)r)dfail dotstar or empty
  66     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)■)r)w)o)r)dfail dotstar or empty
  67     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)■)w)o)r)dfail dotstar or empty
  68     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)■)o)r)dfail dotstar or empty
  69     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)■)r)dfail dotstar or empty
  70     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)■)dfail dotstar or empty
  71     |  2     ((((((((((((((((((((((((((((((((((■o)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)■fail dotstar or empty
  72     |  2     ((((((((((((((((((((((((((((((((((s■)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  73     |  2     ((((((((((((((((((((((((((((((((((s■)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  74     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  75     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)■)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  76     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)■)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  77     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)■) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  78     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d)■)!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  79     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )■)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  80     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)■)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  81     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)■)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  82     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)■)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  83     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)■)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  84     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)■)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  85     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)■)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  86     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)■)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  87     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)■)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  88     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)■)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  89     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)■)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  90     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)■)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  91     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)■) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  92     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d)■)s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  93     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )■)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  94     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)■)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  95     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)■)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  96     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)■)o)t)h)e)r)w)o)r)dfail dotstar or empty
  97     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)■)t)h)e)r)w)o)r)dfail dotstar or empty
  98     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)■)h)e)r)w)o)r)dfail dotstar or empty
  99     |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)■)e)r)w)o)r)dfail dotstar or empty
  100    |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)■)r)w)o)r)dfail dotstar or empty
  101    |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)■)w)o)r)dfail dotstar or empty
  102    |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)■)o)r)dfail dotstar or empty
  103    |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)■)r)dfail dotstar or empty
  104    |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)■)dfail dotstar or empty
  105    |  2     ((((((((((((((((((((((((((((((((((s■)m)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)■fail dotstar or empty
  106    |  2     ((((((((((((((((((((((((((((((((((so)■)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  107    |  2     ((((((((((((((((((((((((((((((((((so)■)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  108    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)■)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  109    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)■)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  110    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)■) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  111    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d)■)!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  112    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )■)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  113    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)■)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  114    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)■)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  115    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)■)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  116    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)■)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  117    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)■)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  118    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)■)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  119    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)■)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  120    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)■)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  121    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)■)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  122    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)■)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  123    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)■)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  124    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)■) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  125    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d)■)s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  126    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )■)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  127    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)■)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  128    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)■)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  129    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)■)o)t)h)e)r)w)o)r)dfail dotstar or empty
  130    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)■)t)h)e)r)w)o)r)dfail dotstar or empty
  131    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)■)h)e)r)w)o)r)dfail dotstar or empty
  132    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)■)e)r)w)o)r)dfail dotstar or empty
  133    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)■)r)w)o)r)dfail dotstar or empty
  134    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)■)w)o)r)dfail dotstar or empty
  135    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)■)o)r)dfail dotstar or empty
  136    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)■)r)dfail dotstar or empty
  137    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)■)dfail dotstar or empty
  138    |  2     ((((((((((((((((((((((((((((((((((so)■)e)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)■fail dotstar or empty
  139    |  2     ((((((((((((((((((((((((((((((((((so)m)■)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  140    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)■)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  141    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)■)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  142    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)■) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  143    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d)■)!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  144    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )■)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  145    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)■)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  146    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)■)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  147    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)■)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  148    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)■)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  149    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)■)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  150    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)■)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  151    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)■)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  152    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)■)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  153    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)■)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  154    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)■)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  155    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)■)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  156    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)■) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  157    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d)■)s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  158    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )■)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  159    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)■)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  160    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)■)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  161    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)■)o)t)h)e)r)w)o)r)dfail dotstar or empty
  162    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)■)t)h)e)r)w)o)r)dfail dotstar or empty
  163    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)■)h)e)r)w)o)r)dfail dotstar or empty
  164    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)■)e)r)w)o)r)dfail dotstar or empty
  165    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)■)r)w)o)r)dfail dotstar or empty
  166    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)■)w)o)r)dfail dotstar or empty
  167    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)■)o)r)dfail dotstar or empty
  168    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)■)r)dfail dotstar or empty
  169    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)■)dfail dotstar or empty
  170    |  2     ((((((((((((((((((((((((((((((((((so)m)■)w)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)■fail dotstar or empty
  171    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)■)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  172    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)■)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  173    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)■) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  174    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d)■)!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  175    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )■)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  176    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)■)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  177    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)■)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  178    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)■)o)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  179    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)■)t)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  180    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)■)h)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  181    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)■)e)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  182    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)■)r)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  183    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)■)w)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  184    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)■)o)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  185    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)■)r)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  186    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)■)d) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  187    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)■) )s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  188    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d)■)s)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  189    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )■)o)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  190    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)■)m)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  191    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)■)e)o)t)h)e)r)w)o)r)dfail dotstar or empty
  192    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)■)o)t)h)e)r)w)o)r)dfail dotstar or empty
  193    |  2     ((((((((((((((((((((((((((((((((((so)m)e)■)o)r)d) )!)!)a)n)o)t)h)e)r)w)o)r)d) )s)o)m)e)■)t)h)e)r)w)o)r)d
2.056298017501831
timeout