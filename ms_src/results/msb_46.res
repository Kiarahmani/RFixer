
Given the regular expression:

  expr "abc aac bbcx" : '(.)*\([^ ]\+x\)(.)*'

That that should match the strings:

  ✓ (0:25)   ". It should return "bbcx

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  30     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  31     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  32     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  33     |  1     (((((((((((((((((((((((((((((ex)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  34     |  2     (((((((((((((((((((((((((((((■■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  35     |  2     (((((((((((((((((((((((((((((■x)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  36     |  2     (((((((((((((((((((((((((((((■x)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  37     |  2     (((((((((((((((((((((((((((((■x)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  38     |  2     (((((((((((((((((((((((((((((■x)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  39     |  2     (((((((((((((((((((((((((((((■x)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  40     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  41     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  42     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  43     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  44     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  45     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  46     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  47     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  48     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  49     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  50     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  51     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  52     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  53     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  54     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  55     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  56     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  57     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  58     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  59     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  60     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  61     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  62     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  63     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  64     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  65     |  2     (((((((((((((((((((((((((((((■x)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  66     |  2     (((((((((((((((((((((((((((((e■)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  67     |  2     (((((((((((((((((((((((((((((e■)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  68     |  2     (((((((((((((((((((((((((((((e■)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  69     |  2     (((((((((((((((((((((((((((((e■)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  70     |  2     (((((((((((((((((((((((((((((e■)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  71     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  72     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  73     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  74     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  75     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  76     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  77     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  78     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  79     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  80     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  81     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  82     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  83     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  84     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  85     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  86     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  87     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  88     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  89     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  90     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  91     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  92     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  93     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  94     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  95     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  96     |  2     (((((((((((((((((((((((((((((e■)p)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  97     |  2     (((((((((((((((((((((((((((((ex)■)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  98     |  2     (((((((((((((((((((((((((((((ex)■)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  99     |  2     (((((((((((((((((((((((((((((ex)■)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  100    |  2     (((((((((((((((((((((((((((((ex)■)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  101    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  102    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  103    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  104    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  105    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  106    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  107    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  108    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  109    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  110    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  111    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  112    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  113    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  114    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  115    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  116    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  117    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  118    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  119    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  120    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  121    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  122    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  123    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  124    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  125    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  126    |  2     (((((((((((((((((((((((((((((ex)■)r) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  127    |  2     (((((((((((((((((((((((((((((ex)p)■)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  128    |  2     (((((((((((((((((((((((((((((ex)p)■) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  129    |  2     (((((((((((((((((((((((((((((ex)p)■) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  130    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  131    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  132    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  133    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  134    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  135    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  136    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  137    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  138    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  139    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  140    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  141    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  142    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  143    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  144    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  145    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  146    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  147    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  148    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  149    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  150    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  151    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  152    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  153    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  154    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  155    |  2     (((((((((((((((((((((((((((((ex)p)■) )")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  156    |  2     (((((((((((((((((((((((((((((ex)p)r)■)■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  157    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  158    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  159    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  160    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  161    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  162    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  163    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  164    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  165    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  166    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  167    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  168    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  169    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  170    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  171    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  172    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  173    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  174    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  175    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  176    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  177    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  178    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  179    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  180    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  181    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  182    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  183    |  2     (((((((((((((((((((((((((((((ex)p)r)■)")a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  184    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  185    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  186    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  187    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  188    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  189    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  190    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  191    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  192    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  193    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  194    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  195    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  196    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  197    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  198    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  199    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  200    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  201    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  202    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  203    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  204    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  205    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  206    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  207    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  208    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  209    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  210    |  2     (((((((((((((((((((((((((((((ex)p)r) )■)a)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  211    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  212    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  213    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  214    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  215    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  216    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  217    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  218    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  219    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  220    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  221    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  222    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  223    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  224    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  225    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  226    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  227    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  228    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  229    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  230    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  231    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  232    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  233    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  234    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  235    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  236    |  2     (((((((((((((((((((((((((((((ex)p)r) )")■)b)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  237    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)■) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  238    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  239    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  240    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  241    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  242    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  243    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  244    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)■)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  245    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)■)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  246    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)■)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  247    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)■) ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  248    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)")■):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  249    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") )■) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  250    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):)■)')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  251    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )■)(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  252    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(■)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  253    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.){■})\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  254    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)■)[^ ])\+)x)\))(.)*)'fail dotstar or empty
  255    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()■)\+)x)\))(.)*)'fail dotstar or empty
  256    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])■)x)\))(.)*)'fail dotstar or empty
  257    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)■)\))(.)*)'fail dotstar or empty
  258    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)■)(.)*)'fail dotstar or empty
  259    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(■)*)'fail dotstar or empty
  260    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.){■})'fail dotstar or empty
  261    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)■)c) )a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)■fail dotstar or empty
  262    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■)■)a)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  263    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■) )■)a)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  264    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■) )a)■)c) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  265    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■) )a)a)■) )b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  266    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■) )a)a)c)■)b)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'fail dotstar or empty
  267    |  2     (((((((((((((((((((((((((((((ex)p)r) )")a)b)■) )a)a)c) )■)b)c)x)") ):) )')(.)*)\()[^ ])\+)x)\))(.)*)'
2.054140090942383
timeout