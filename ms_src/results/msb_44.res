
Given the regular expression:

  regex = "(\[\[)((.)*)(\]\])"

That that should match the strings:

  ✓ (0:21)   [[" for start and "]]
  ✓ (21:31)  [[MyText]]
  ✓ (31:56)  [[ Something...[[MyText]]
  ✓ (56:71)  [[MyOtherText]]

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  2      |  1     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  3      |  1     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  4      |  1     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  5      |  1     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  6      |  1     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  7      |  1     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  8      |  1     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  9      |  1     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  10     |  1     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  11     |  1     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  12     |  1     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  13     |  1     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  14     |  1     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  15     |  1     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  16     |  1     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  17     |  2     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  18     |  2     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  19     |  2     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  20     |  2     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  21     |  2     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  22     |  2     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  23     |  2     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  24     |  2     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  25     |  2     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  26     |  2     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  27     |  2     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  28     |  2     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  29     |  2     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  30     |  2     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  31     |  2     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  32     |  2     (((((((((((r■)■)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  33     |  2     (((((((((((r■)g)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  34     |  2     (((((((((((r■)g)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  35     |  2     (((((((((((r■)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  36     |  2     (((((((((((r■)g)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  37     |  2     (((((((((((r■)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  38     |  2     (((((((((((r■)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  39     |  2     (((((((((((r■)g)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  40     |  2     (((((((((((r■)g)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  41     |  2     (((((((((((r■)g)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  42     |  2     (((((((((((r■)g)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  43     |  2     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  44     |  2     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  45     |  2     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  46     |  2     (((((((((((re)■)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  47     |  2     (((((((((((re)■)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  48     |  2     (((((((((((re)■)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  49     |  2     (((((((((((re)■)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  50     |  2     (((((((((((re)■)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  51     |  2     (((((((((((re)■)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  52     |  2     (((((((((((re)■)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  53     |  2     (((((((((((re)■)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  54     |  2     (((((((((((re)■)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  55     |  2     (((((((((((re)■)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  56     |  2     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  57     |  2     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  58     |  2     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  59     |  2     (((((((((((re)g)■)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  60     |  2     (((((((((((re)g)■)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  61     |  2     (((((((((((re)g)■)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  62     |  2     (((((((((((re)g)■)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  63     |  2     (((((((((((re)g)■)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  64     |  2     (((((((((((re)g)■)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  65     |  2     (((((((((((re)g)■)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  66     |  2     (((((((((((re)g)■)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  67     |  2     (((((((((((re)g)■)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  68     |  2     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  69     |  2     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  70     |  2     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  71     |  2     (((((((((((re)g)e)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  72     |  2     (((((((((((re)g)e)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  73     |  2     (((((((((((re)g)e)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  74     |  2     (((((((((((re)g)e)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  75     |  2     (((((((((((re)g)e)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  76     |  2     (((((((((((re)g)e)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  77     |  2     (((((((((((re)g)e)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  78     |  2     (((((((((((re)g)e)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  79     |  2     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  80     |  2     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  81     |  2     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  82     |  2     (((((((((((re)g)e)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  83     |  2     (((((((((((re)g)e)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  84     |  2     (((((((((((re)g)e)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  85     |  2     (((((((((((re)g)e)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  86     |  2     (((((((((((re)g)e)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  87     |  2     (((((((((((re)g)e)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  88     |  2     (((((((((((re)g)e)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  89     |  2     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  90     |  2     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  91     |  2     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  92     |  2     (((((((((((re)g)e)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  93     |  2     (((((((((((re)g)e)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  94     |  2     (((((((((((re)g)e)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  95     |  2     (((((((((((re)g)e)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  96     |  2     (((((((((((re)g)e)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  97     |  2     (((((((((((re)g)e)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  98     |  2     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  99     |  2     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  100    |  2     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  101    |  2     (((((((((((re)g)e)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  102    |  2     (((((((((((re)g)e)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  103    |  2     (((((((((((re)g)e)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  104    |  2     (((((((((((re)g)e)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  105    |  2     (((((((((((re)g)e)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  106    |  2     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  107    |  2     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  108    |  2     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  109    |  2     (((((((((((re)g)e)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  110    |  2     (((((((((((re)g)e)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  111    |  2     (((((((((((re)g)e)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  112    |  2     (((((((((((re)g)e)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  113    |  2     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  114    |  2     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  115    |  2     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  116    |  2     (((((((((((re)g)e)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  117    |  2     (((((((((((re)g)e)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  118    |  2     (((((((((((re)g)e)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  119    |  2     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  120    |  2     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  121    |  2     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  122    |  2     (((((((((((re)g)e)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  123    |  2     (((((((((((re)g)e)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  124    |  2     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  125    |  2     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  126    |  2     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  127    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  128    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  129    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  130    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  131    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  132    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  133    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  134    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  135    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  136    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  137    |  2     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  138    |  3     (((((((((((■■)■)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  139    |  3     (((((((((((■■)g)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  140    |  3     (((((((((((■■)g)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  141    |  3     (((((((((((■■)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  142    |  3     (((((((((((■■)g)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  143    |  3     (((((((((((■■)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  144    |  3     (((((((((((■■)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  145    |  3     (((((((((((■■)g)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  146    |  3     (((((((((((■■)g)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  147    |  3     (((((((((((■■)g)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  148    |  3     (((((((((((■■)g)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  149    |  3     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  150    |  3     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  151    |  3     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  152    |  3     (((((((((((■)g)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  153    |  3     (((((((((((■e)■)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  154    |  3     (((((((((((■e)■)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  155    |  3     (((((((((((■e)■)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  156    |  3     (((((((((((■e)■)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  157    |  3     (((((((((((■e)■)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  158    |  3     (((((((((((■e)■)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  159    |  3     (((((((((((■e)■)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  160    |  3     (((((((((((■e)■)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  161    |  3     (((((((((((■e)■)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  162    |  3     (((((((((((■e)■)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  163    |  3     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  164    |  3     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  165    |  3     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  166    |  3     (((((((((((■e)g)■)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  167    |  3     (((((((((((■e)g)■)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  168    |  3     (((((((((((■e)g)■)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  169    |  3     (((((((((((■e)g)■)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  170    |  3     (((((((((((■e)g)■)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  171    |  3     (((((((((((■e)g)■)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  172    |  3     (((((((((((■e)g)■)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  173    |  3     (((((((((((■e)g)■)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  174    |  3     (((((((((((■e)g)■)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  175    |  3     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  176    |  3     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  177    |  3     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  178    |  3     (((((((((((■e)g)e)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  179    |  3     (((((((((((■e)g)e)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  180    |  3     (((((((((((■e)g)e)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  181    |  3     (((((((((((■e)g)e)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  182    |  3     (((((((((((■e)g)e)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  183    |  3     (((((((((((■e)g)e)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  184    |  3     (((((((((((■e)g)e)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  185    |  3     (((((((((((■e)g)e)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  186    |  3     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  187    |  3     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  188    |  3     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  189    |  3     (((((((((((■e)g)e)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  190    |  3     (((((((((((■e)g)e)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  191    |  3     (((((((((((■e)g)e)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  192    |  3     (((((((((((■e)g)e)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  193    |  3     (((((((((((■e)g)e)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  194    |  3     (((((((((((■e)g)e)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  195    |  3     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  196    |  3     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  197    |  3     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  198    |  3     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  199    |  3     (((((((((((■e)g)e)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  200    |  3     (((((((((((■e)g)e)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  201    |  3     (((((((((((■e)g)e)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  202    |  3     (((((((((((■e)g)e)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  203    |  3     (((((((((((■e)g)e)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  204    |  3     (((((((((((■e)g)e)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  205    |  3     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  206    |  3     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  207    |  3     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  208    |  3     (((((((((((■e)g)e)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  209    |  3     (((((((((((■e)g)e)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  210    |  3     (((((((((((■e)g)e)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  211    |  3     (((((((((((■e)g)e)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  212    |  3     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  213    |  3     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  214    |  3     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  215    |  3     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  216    |  3     (((((((((((■e)g)e)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  217    |  3     (((((((((((■e)g)e)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  218    |  3     (((((((((((■e)g)e)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  219    |  3     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  220    |  3     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  221    |  3     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  222    |  3     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  223    |  3     (((((((((((■e)g)e)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  224    |  3     (((((((((((■e)g)e)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  225    |  3     (((((((((((■e)g)e)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  226    |  3     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  227    |  3     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  228    |  3     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  229    |  3     (((((((((((■e)g)e)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  230    |  3     (((((((((((■e)g)e)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  231    |  3     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  232    |  3     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  233    |  3     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  234    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  235    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  236    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  237    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  238    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  239    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  240    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  241    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  242    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  243    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  244    |  3     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  245    |  3     (((((((((((r■)■)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  246    |  3     (((((((((((r■)■)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  247    |  3     (((((((((((r■)■)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  248    |  3     (((((((((((r■)■)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  249    |  3     (((((((((((r■)■)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  250    |  3     (((((((((((r■)■)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  251    |  3     (((((((((((r■)■)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  252    |  3     (((((((((((r■)■)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  253    |  3     (((((((((((r■)■)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  254    |  3     (((((((((((r■)■)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  255    |  3     (((((((((((r■)■)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  256    |  3     (((((((((((r■)■)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  257    |  3     (((((((((((r■)■)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  258    |  3     (((((((((((r■)g)■)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  259    |  3     (((((((((((r■)g)■)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  260    |  3     (((((((((((r■)g)■)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  261    |  3     (((((((((((r■)g)■)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  262    |  3     (((((((((((r■)g)■)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  263    |  3     (((((((((((r■)g)■)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  264    |  3     (((((((((((r■)g)■)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  265    |  3     (((((((((((r■)g)■)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  266    |  3     (((((((((((r■)g)■)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  267    |  3     (((((((((((r■)g)■)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  268    |  3     (((((((((((r■)g)■)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  269    |  3     (((((((((((r■)g)■)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  270    |  3     (((((((((((r■)g)e)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  271    |  3     (((((((((((r■)g)e)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  272    |  3     (((((((((((r■)g)e)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  273    |  3     (((((((((((r■)g)e)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  274    |  3     (((((((((((r■)g)e)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  275    |  3     (((((((((((r■)g)e)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  276    |  3     (((((((((((r■)g)e)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  277    |  3     (((((((((((r■)g)e)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  278    |  3     (((((((((((r■)g)e)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  279    |  3     (((((((((((r■)g)e)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  280    |  3     (((((((((((r■)g)e)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  281    |  3     (((((((((((r■)g)e)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  282    |  3     (((((((((((r■)g)e)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  283    |  3     (((((((((((r■)g)e)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  284    |  3     (((((((((((r■)g)e)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  285    |  3     (((((((((((r■)g)e)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  286    |  3     (((((((((((r■)g)e)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  287    |  3     (((((((((((r■)g)e)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  288    |  3     (((((((((((r■)g)e)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  289    |  3     (((((((((((r■)g)e)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  290    |  3     (((((((((((r■)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  291    |  3     (((((((((((r■)g)e)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  292    |  3     (((((((((((r■)g)e)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  293    |  3     (((((((((((r■)g)e)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  294    |  3     (((((((((((r■)g)e)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  295    |  3     (((((((((((r■)g)e)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  296    |  3     (((((((((((r■)g)e)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  297    |  3     (((((((((((r■)g)e)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  298    |  3     (((((((((((r■)g)e)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  299    |  3     (((((((((((r■)g)e)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  300    |  3     (((((((((((r■)g)e)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  301    |  3     (((((((((((r■)g)e)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  302    |  3     (((((((((((r■)g)e)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  303    |  3     (((((((((((r■)g)e)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  304    |  3     (((((((((((r■)g)e)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  305    |  3     (((((((((((r■)g)e)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  306    |  3     (((((((((((r■)g)e)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  307    |  3     (((((((((((r■)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  308    |  3     (((((((((((r■)g)e)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  309    |  3     (((((((((((r■)g)e)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  310    |  3     (((((((((((r■)g)e)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  311    |  3     (((((((((((r■)g)e)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  312    |  3     (((((((((((r■)g)e)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  313    |  3     (((((((((((r■)g)e)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  314    |  3     (((((((((((r■)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  315    |  3     (((((((((((r■)g)e)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  316    |  3     (((((((((((r■)g)e)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  317    |  3     (((((((((((r■)g)e)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  318    |  3     (((((((((((r■)g)e)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  319    |  3     (((((((((((r■)g)e)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  320    |  3     (((((((((((r■)g)e)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  321    |  3     (((((((((((r■)g)e)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  322    |  3     (((((((((((r■)g)e)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  323    |  3     (((((((((((r■)g)e)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  324    |  3     (((((((((((r■)g)e)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  325    |  3     (((((((((((r■)g)e)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  326    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  327    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  328    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  329    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  330    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  331    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  332    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  333    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  334    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  335    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  336    |  3     (((((((((((r■)g)e)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  337    |  3     (((((((((((re)■)■)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  338    |  3     (((((((((((re)■)■)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  339    |  3     (((((((((((re)■)■)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  340    |  3     (((((((((((re)■)■)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  341    |  3     (((((((((((re)■)■)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  342    |  3     (((((((((((re)■)■)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  343    |  3     (((((((((((re)■)■)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  344    |  3     (((((((((((re)■)■)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  345    |  3     (((((((((((re)■)■)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  346    |  3     (((((((((((re)■)■)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  347    |  3     (((((((((((re)■)■)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  348    |  3     (((((((((((re)■)■)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  349    |  3     (((((((((((re)■)e)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  350    |  3     (((((((((((re)■)e)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  351    |  3     (((((((((((re)■)e)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  352    |  3     (((((((((((re)■)e)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  353    |  3     (((((((((((re)■)e)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  354    |  3     (((((((((((re)■)e)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  355    |  3     (((((((((((re)■)e)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  356    |  3     (((((((((((re)■)e)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  357    |  3     (((((((((((re)■)e)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  358    |  3     (((((((((((re)■)e)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  359    |  3     (((((((((((re)■)e)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  360    |  3     (((((((((((re)■)e)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  361    |  3     (((((((((((re)■)e)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  362    |  3     (((((((((((re)■)e)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  363    |  3     (((((((((((re)■)e)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  364    |  3     (((((((((((re)■)e)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  365    |  3     (((((((((((re)■)e)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  366    |  3     (((((((((((re)■)e)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  367    |  3     (((((((((((re)■)e)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  368    |  3     (((((((((((re)■)e)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  369    |  3     (((((((((((re)■)e)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  370    |  3     (((((((((((re)■)e)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  371    |  3     (((((((((((re)■)e)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  372    |  3     (((((((((((re)■)e)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  373    |  3     (((((((((((re)■)e)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  374    |  3     (((((((((((re)■)e)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  375    |  3     (((((((((((re)■)e)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  376    |  3     (((((((((((re)■)e)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  377    |  3     (((((((((((re)■)e)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  378    |  3     (((((((((((re)■)e)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  379    |  3     (((((((((((re)■)e)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  380    |  3     (((((((((((re)■)e)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  381    |  3     (((((((((((re)■)e)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  382    |  3     (((((((((((re)■)e)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  383    |  3     (((((((((((re)■)e)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  384    |  3     (((((((((((re)■)e)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  385    |  3     (((((((((((re)■)e)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  386    |  3     (((((((((((re)■)e)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  387    |  3     (((((((((((re)■)e)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  388    |  3     (((((((((((re)■)e)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  389    |  3     (((((((((((re)■)e)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  390    |  3     (((((((((((re)■)e)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  391    |  3     (((((((((((re)■)e)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  392    |  3     (((((((((((re)■)e)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  393    |  3     (((((((((((re)■)e)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  394    |  3     (((((((((((re)■)e)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  395    |  3     (((((((((((re)■)e)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  396    |  3     (((((((((((re)■)e)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  397    |  3     (((((((((((re)■)e)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  398    |  3     (((((((((((re)■)e)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  399    |  3     (((((((((((re)■)e)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  400    |  3     (((((((((((re)■)e)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  401    |  3     (((((((((((re)■)e)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  402    |  3     (((((((((((re)■)e)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  403    |  3     (((((((((((re)■)e)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  404    |  3     (((((((((((re)■)e)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  405    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  406    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  407    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  408    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  409    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  410    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  411    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  412    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  413    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  414    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  415    |  3     (((((((((((re)■)e)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  416    |  3     (((((((((((re)g)■)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  417    |  3     (((((((((((re)g)■)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  418    |  3     (((((((((((re)g)■)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  419    |  3     (((((((((((re)g)■)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  420    |  3     (((((((((((re)g)■)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  421    |  3     (((((((((((re)g)■)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  422    |  3     (((((((((((re)g)■)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  423    |  3     (((((((((((re)g)■)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  424    |  3     (((((((((((re)g)■)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  425    |  3     (((((((((((re)g)■)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  426    |  3     (((((((((((re)g)■)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  427    |  3     (((((((((((re)g)■)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  428    |  3     (((((((((((re)g)■)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  429    |  3     (((((((((((re)g)■)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  430    |  3     (((((((((((re)g)■)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  431    |  3     (((((((((((re)g)■)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  432    |  3     (((((((((((re)g)■)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  433    |  3     (((((((((((re)g)■)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  434    |  3     (((((((((((re)g)■)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  435    |  3     (((((((((((re)g)■)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  436    |  3     (((((((((((re)g)■)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  437    |  3     (((((((((((re)g)■)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  438    |  3     (((((((((((re)g)■)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  439    |  3     (((((((((((re)g)■)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  440    |  3     (((((((((((re)g)■)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  441    |  3     (((((((((((re)g)■)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  442    |  3     (((((((((((re)g)■)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  443    |  3     (((((((((((re)g)■)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  444    |  3     (((((((((((re)g)■)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  445    |  3     (((((((((((re)g)■)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  446    |  3     (((((((((((re)g)■)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  447    |  3     (((((((((((re)g)■)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  448    |  3     (((((((((((re)g)■)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  449    |  3     (((((((((((re)g)■)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  450    |  3     (((((((((((re)g)■)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  451    |  3     (((((((((((re)g)■)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  452    |  3     (((((((((((re)g)■)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  453    |  3     (((((((((((re)g)■)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  454    |  3     (((((((((((re)g)■)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  455    |  3     (((((((((((re)g)■)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  456    |  3     (((((((((((re)g)■)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  457    |  3     (((((((((((re)g)■)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  458    |  3     (((((((((((re)g)■)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  459    |  3     (((((((((((re)g)■)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  460    |  3     (((((((((((re)g)■)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  461    |  3     (((((((((((re)g)■)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  462    |  3     (((((((((((re)g)■)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  463    |  3     (((((((((((re)g)■)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  464    |  3     (((((((((((re)g)■)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  465    |  3     (((((((((((re)g)■)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  466    |  3     (((((((((((re)g)■)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  467    |  3     (((((((((((re)g)■)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  468    |  3     (((((((((((re)g)■)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  469    |  3     (((((((((((re)g)■)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  470    |  3     (((((((((((re)g)■)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  471    |  3     (((((((((((re)g)■)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  472    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  473    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  474    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  475    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  476    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  477    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  478    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  479    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  480    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  481    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  482    |  3     (((((((((((re)g)■)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  483    |  3     (((((((((((re)g)e)■)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  484    |  3     (((((((((((re)g)e)■)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  485    |  3     (((((((((((re)g)e)■)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  486    |  3     (((((((((((re)g)e)■)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  487    |  3     (((((((((((re)g)e)■)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  488    |  3     (((((((((((re)g)e)■)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  489    |  3     (((((((((((re)g)e)■)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  490    |  3     (((((((((((re)g)e)■)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  491    |  3     (((((((((((re)g)e)■)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  492    |  3     (((((((((((re)g)e)■)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  493    |  3     (((((((((((re)g)e)■) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  494    |  3     (((((((((((re)g)e)■) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  495    |  3     (((((((((((re)g)e)■) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  496    |  3     (((((((((((re)g)e)■) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  497    |  3     (((((((((((re)g)e)■) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  498    |  3     (((((((((((re)g)e)■) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  499    |  3     (((((((((((re)g)e)■) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  500    |  3     (((((((((((re)g)e)■) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  501    |  3     (((((((((((re)g)e)■) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  502    |  3     (((((((((((re)g)e)■) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  503    |  3     (((((((((((re)g)e)■) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  504    |  3     (((((((((((re)g)e)■) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  505    |  3     (((((((((((re)g)e)■) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  506    |  3     (((((((((((re)g)e)■) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  507    |  3     (((((((((((re)g)e)■) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  508    |  3     (((((((((((re)g)e)■) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  509    |  3     (((((((((((re)g)e)■) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  510    |  3     (((((((((((re)g)e)■) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  511    |  3     (((((((((((re)g)e)■) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  512    |  3     (((((((((((re)g)e)■) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  513    |  3     (((((((((((re)g)e)■) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  514    |  3     (((((((((((re)g)e)■) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  515    |  3     (((((((((((re)g)e)■) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  516    |  3     (((((((((((re)g)e)■) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  517    |  3     (((((((((((re)g)e)■) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  518    |  3     (((((((((((re)g)e)■) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  519    |  3     (((((((((((re)g)e)■) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  520    |  3     (((((((((((re)g)e)■) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  521    |  3     (((((((((((re)g)e)■) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  522    |  3     (((((((((((re)g)e)■) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  523    |  3     (((((((((((re)g)e)■) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  524    |  3     (((((((((((re)g)e)■) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  525    |  3     (((((((((((re)g)e)■) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  526    |  3     (((((((((((re)g)e)■) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  527    |  3     (((((((((((re)g)e)■) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  528    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  529    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  530    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  531    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  532    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  533    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  534    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  535    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  536    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  537    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  538    |  3     (((((((((((re)g)e)■) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  539    |  3     (((((((((((re)g)e)x)■)■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  540    |  3     (((((((((((re)g)e)x)■)■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  541    |  3     (((((((((((re)g)e)x)■)■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  542    |  3     (((((((((((re)g)e)x)■)■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  543    |  3     (((((((((((re)g)e)x)■)■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  544    |  3     (((((((((((re)g)e)x)■)■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  545    |  3     (((((((((((re)g)e)x)■)■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  546    |  3     (((((((((((re)g)e)x)■)■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  547    |  3     (((((((((((re)g)e)x)■)■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  548    |  3     (((((((((((re)g)e)x)■)=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  549    |  3     (((((((((((re)g)e)x)■)=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  550    |  3     (((((((((((re)g)e)x)■)=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  551    |  3     (((((((((((re)g)e)x)■)=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  552    |  3     (((((((((((re)g)e)x)■)=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  553    |  3     (((((((((((re)g)e)x)■)=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  554    |  3     (((((((((((re)g)e)x)■)=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  555    |  3     (((((((((((re)g)e)x)■)=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  556    |  3     (((((((((((re)g)e)x)■)=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  557    |  3     (((((((((((re)g)e)x)■)=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  558    |  3     (((((((((((re)g)e)x)■)=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  559    |  3     (((((((((((re)g)e)x)■)=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  560    |  3     (((((((((((re)g)e)x)■)=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  561    |  3     (((((((((((re)g)e)x)■)=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  562    |  3     (((((((((((re)g)e)x)■)=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  563    |  3     (((((((((((re)g)e)x)■)=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  564    |  3     (((((((((((re)g)e)x)■)=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  565    |  3     (((((((((((re)g)e)x)■)=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  566    |  3     (((((((((((re)g)e)x)■)=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  567    |  3     (((((((((((re)g)e)x)■)=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  568    |  3     (((((((((((re)g)e)x)■)=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  569    |  3     (((((((((((re)g)e)x)■)=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  570    |  3     (((((((((((re)g)e)x)■)=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  571    |  3     (((((((((((re)g)e)x)■)=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  572    |  3     (((((((((((re)g)e)x)■)=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  573    |  3     (((((((((((re)g)e)x)■)=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  574    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  575    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  576    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  577    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  578    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  579    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  580    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  581    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  582    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  583    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  584    |  3     (((((((((((re)g)e)x)■)=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  585    |  3     (((((((((((re)g)e)x) )■)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  586    |  3     (((((((((((re)g)e)x) )■)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  587    |  3     (((((((((((re)g)e)x) )■)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  588    |  3     (((((((((((re)g)e)x) )■)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  589    |  3     (((((((((((re)g)e)x) )■)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  590    |  3     (((((((((((re)g)e)x) )■)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  591    |  3     (((((((((((re)g)e)x) )■)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  592    |  3     (((((((((((re)g)e)x) )■)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  593    |  3     (((((((((((re)g)e)x) )■) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  594    |  3     (((((((((((re)g)e)x) )■) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  595    |  3     (((((((((((re)g)e)x) )■) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  596    |  3     (((((((((((re)g)e)x) )■) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  597    |  3     (((((((((((re)g)e)x) )■) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  598    |  3     (((((((((((re)g)e)x) )■) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  599    |  3     (((((((((((re)g)e)x) )■) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  600    |  3     (((((((((((re)g)e)x) )■) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  601    |  3     (((((((((((re)g)e)x) )■) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  602    |  3     (((((((((((re)g)e)x) )■) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  603    |  3     (((((((((((re)g)e)x) )■) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  604    |  3     (((((((((((re)g)e)x) )■) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  605    |  3     (((((((((((re)g)e)x) )■) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  606    |  3     (((((((((((re)g)e)x) )■) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  607    |  3     (((((((((((re)g)e)x) )■) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  608    |  3     (((((((((((re)g)e)x) )■) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  609    |  3     (((((((((((re)g)e)x) )■) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  610    |  3     (((((((((((re)g)e)x) )■) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  611    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  612    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  613    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  614    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  615    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  616    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  617    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  618    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))■)(\]\]))"fail dotstar or empty
  619    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  620    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  621    |  3     (((((((((((re)g)e)x) )■) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  622    |  3     (((((((((((re)g)e)x) )=)■)■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  623    |  3     (((((((((((re)g)e)x) )=)■)■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  624    |  3     (((((((((((re)g)e)x) )=)■)■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  625    |  3     (((((((((((re)g)e)x) )=)■)■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  626    |  3     (((((((((((re)g)e)x) )=)■)■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  627    |  3     (((((((((((re)g)e)x) )=)■)■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  628    |  3     (((((((((((re)g)e)x) )=)■)■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  629    |  3     (((((((((((re)g)e)x) )=)■)")(■■))(.)*)(\]\]))"fail dotstar or empty
  630    |  3     (((((((((((re)g)e)x) )=)■)")(■\[))(■)*)(\]\]))"fail dotstar or empty
  631    |  3     (((((((((((re)g)e)x) )=)■)")(■\[))(.){■})(\]\]))"fail dotstar or empty
  632    |  3     (((((((((((re)g)e)x) )=)■)")(■\[))(.)*)(■\]))"fail dotstar or empty
  633    |  3     (((((((((((re)g)e)x) )=)■)")(■\[))(.)*)(\]■))"fail dotstar or empty
  634    |  3     (((((((((((re)g)e)x) )=)■)")(■\[))(.)*)(\]\]))■fail dotstar or empty
  635    |  3     (((((((((((re)g)e)x) )=)■)")(\[■))(■)*)(\]\]))"fail dotstar or empty
  636    |  3     (((((((((((re)g)e)x) )=)■)")(\[■))(.){■})(\]\]))"fail dotstar or empty
  637    |  3     (((((((((((re)g)e)x) )=)■)")(\[■))(.)*)(■\]))"fail dotstar or empty
  638    |  3     (((((((((((re)g)e)x) )=)■)")(\[■))(.)*)(\]■))"fail dotstar or empty
  639    |  3     (((((((((((re)g)e)x) )=)■)")(\[■))(.)*)(\]\]))■fail dotstar or empty
  640    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  641    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(■)*)(■\]))"fail dotstar or empty
  642    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(■)*)(\]■))"fail dotstar or empty
  643    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  644    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(.){■})(■\]))"fail dotstar or empty
  645    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(.){■})(\]■))"fail dotstar or empty
  646    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  647    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))■)(\]\]))"fail dotstar or empty
  648    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(■■))"fail dotstar or empty
  649    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(■\]))■fail dotstar or empty
  650    |  3     (((((((((((re)g)e)x) )=)■)")(\[\[))(.)*)(\]■))■fail dotstar or empty
  651    |  3     (((((((((((re)g)e)x) )=) )■)(■■))(.)*)(\]\]))"fail dotstar or empty
  652    |  3     (((((((((((re)g)e)x) )=) )■)(■\[))(■)*)(\]\]))"fail dotstar or empty
  653    |  3     (((((((((((re)g)e)x) )=) )■)(■\[))(.){■})(\]\]))"fail dotstar or empty
  654    |  3     (((((((((((re)g)e)x) )=) )■)(■\[))(.)*)(■\]))"fail dotstar or empty
  655    |  3     (((((((((((re)g)e)x) )=) )■)(■\[))(.)*)(\]■))"fail dotstar or empty
  656    |  3     (((((((((((re)g)e)x) )=) )■)(■\[))(.)*)(\]\]))■fail dotstar or empty
  657    |  3     (((((((((((re)g)e)x) )=) )■)(\[■))(■)*)(\]\]))"fail dotstar or empty
  658    |  3     (((((((((((re)g)e)x) )=) )■)(\[■))(.){■})(\]\]))"fail dotstar or empty
  659    |  3     (((((((((((re)g)e)x) )=) )■)(\[■))(.)*)(■\]))"fail dotstar or empty
  660    |  3     (((((((((((re)g)e)x) )=) )■)(\[■))(.)*)(\]■))"fail dotstar or empty
  661    |  3     (((((((((((re)g)e)x) )=) )■)(\[■))(.)*)(\]\]))■fail dotstar or empty
  662    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(■){■})(\]\]))"fail dotstar or empty
  663    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(■)*)(■\]))"fail dotstar or empty
  664    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(■)*)(\]■))"fail dotstar or empty
  665    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(■)*)(\]\]))■fail dotstar or empty
  666    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(.){■})(■\]))"fail dotstar or empty
  667    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(.){■})(\]■))"fail dotstar or empty
  668    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(.){■})(\]\]))■fail dotstar or empty
  669    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))■)(\]\]))"fail dotstar or empty
  670    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(■■))"fail dotstar or empty
  671    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(■\]))■fail dotstar or empty
  672    |  3     (((((((((((re)g)e)x) )=) )■)(\[\[))(.)*)(\]■))■fail dotstar or empty
  673    |  3     (((((((((((re)g)e)x) )=) )")(■■))(■)*)(\]\]))"fail dotstar or empty
  674    |  3     (((((((((((re)g)e)x) )=) )")(■■))(.){■})(\]\]))"fail dotstar or empty
  675    |  3     (((((((((((re)g)e)x) )=) )")(■■))(.)*)(■\]))"fail dotstar or empty
  676    |  3     (((((((((((re)g)e)x) )=) )")(■■))(.)*)(\]■))"fail dotstar or empty
  677    |  3     (((((((((((re)g)e)x) )=) )")(■■))(.)*)(\]\]))■fail dotstar or empty
  678    |  3     (((((((((((re)g)e)x) )=) )")(■))(.)*)(\]\]))"fail dotstar or empty
  679    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(■){■})(\]\]))"fail dotstar or empty
  680    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(■)*)(■\]))"fail dotstar or empty
  681    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(■)*)(\]■))"fail dotstar or empty
  682    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(■)*)(\]\]))■fail dotstar or empty
  683    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(.){■})(■\]))"fail dotstar or empty
  684    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(.){■})(\]■))"fail dotstar or empty
  685    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(.){■})(\]\]))■fail dotstar or empty
  686    |  3     (((((((((((re)g)e)x) )=) )")(■\[))■)(\]\]))"fail dotstar or empty
  687    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(■■))"fail dotstar or empty
  688    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(■\]))■fail dotstar or empty
  689    |  3     (((((((((((re)g)e)x) )=) )")(■\[))(.)*)(\]■))■fail dotstar or empty
  690    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(■){■})(\]\]))"fail dotstar or empty
  691    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(■)*)(■\]))"fail dotstar or empty
  692    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(■)*)(\]■))"fail dotstar or empty
  693    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(■)*)(\]\]))■fail dotstar or empty
  694    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(.){■})(■\]))"fail dotstar or empty
  695    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(.){■})(\]■))"fail dotstar or empty
  696    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(.){■})(\]\]))■fail dotstar or empty
  697    |  3     (((((((((((re)g)e)x) )=) )")(\[■))■)(\]\]))"fail dotstar or empty
  698    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(■■))"fail dotstar or empty
  699    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(■\]))■fail dotstar or empty
  700    |  3     (((((((((((re)g)e)x) )=) )")(\[■))(.)*)(\]■))■fail dotstar or empty
  701    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(■){■})(■\]))"fail dotstar or empty
  702    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(■){■})(\]■))"fail dotstar or empty
  703    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(■){■})(\]\]))■fail dotstar or empty
  704    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(■■))"fail dotstar or empty
  705    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(■\]))■fail dotstar or empty
  706    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(■)*)(\]■))■fail dotstar or empty
  707    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(■■))"fail dotstar or empty
  708    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(■\]))■fail dotstar or empty
  709    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))■)(■\]))"fail dotstar or empty
  710    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(.){■})(\]■))■fail dotstar or empty
  711    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))■)(\]■))"fail dotstar or empty
  712    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))■)(\]\]))■fail dotstar or empty
  713    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(■■))■fail dotstar or empty
  714    |  3     (((((((((((re)g)e)x) )=) )")(\[\[))(.)*)(■))"fail dotstar or empty
  715    |  4     (((((((((((■■)■)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  716    |  4     (((((((((((■■)■)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  717    |  4     (((((((((((■■)■)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  718    |  4     (((((((((((■■)■)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  719    |  4     (((((((((((■■)■)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  720    |  4     (((((((((((■■)■)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  721    |  4     (((((((((((■■)■)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  722    |  4     (((((((((((■■)■)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  723    |  4     (((((((((((■■)■)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  724    |  4     (((((((((((■■)■)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  725    |  4     (((((((((((■■)■)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  726    |  4     (((((((((((■■)■)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  727    |  4     (((((((((((■■)■)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  728    |  4     (((((((((((■)■)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  729    |  4     (((((((((((■■)g)■)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  730    |  4     (((((((((((■■)g)■)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  731    |  4     (((((((((((■■)g)■)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  732    |  4     (((((((((((■■)g)■)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  733    |  4     (((((((((((■■)g)■)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  734    |  4     (((((((((((■■)g)■)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  735    |  4     (((((((((((■■)g)■)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  736    |  4     (((((((((((■■)g)■)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  737    |  4     (((((((((((■■)g)■)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  738    |  4     (((((((((((■■)g)■)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  739    |  4     (((((((((((■■)g)■)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  740    |  4     (((((((((((■■)g)■)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  741    |  4     (((((((((((■)g)■)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  742    |  4     (((((((((((■■)g)e)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  743    |  4     (((((((((((■■)g)e)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  744    |  4     (((((((((((■■)g)e)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  745    |  4     (((((((((((■■)g)e)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  746    |  4     (((((((((((■■)g)e)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  747    |  4     (((((((((((■■)g)e)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  748    |  4     (((((((((((■■)g)e)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  749    |  4     (((((((((((■■)g)e)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  750    |  4     (((((((((((■■)g)e)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  751    |  4     (((((((((((■■)g)e)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  752    |  4     (((((((((((■■)g)e)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  753    |  4     (((((((((((■)g)e)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  754    |  4     (((((((((((■■)g)e)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  755    |  4     (((((((((((■■)g)e)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  756    |  4     (((((((((((■■)g)e)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  757    |  4     (((((((((((■■)g)e)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  758    |  4     (((((((((((■■)g)e)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  759    |  4     (((((((((((■■)g)e)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  760    |  4     (((((((((((■■)g)e)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  761    |  4     (((((((((((■■)g)e)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  762    |  4     (((((((((((■■)g)e)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  763    |  4     (((((((((((■■)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  764    |  4     (((((((((((■)g)e)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  765    |  4     (((((((((((■■)g)e)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  766    |  4     (((((((((((■■)g)e)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  767    |  4     (((((((((((■■)g)e)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  768    |  4     (((((((((((■■)g)e)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  769    |  4     (((((((((((■■)g)e)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  770    |  4     (((((((((((■■)g)e)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  771    |  4     (((((((((((■■)g)e)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  772    |  4     (((((((((((■■)g)e)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  773    |  4     (((((((((((■■)g)e)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  774    |  4     (((((((((((■)g)e)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  775    |  4     (((((((((((■■)g)e)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  776    |  4     (((((((((((■■)g)e)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  777    |  4     (((((((((((■■)g)e)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  778    |  4     (((((((((((■■)g)e)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  779    |  4     (((((((((((■■)g)e)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  780    |  4     (((((((((((■■)g)e)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  781    |  4     (((((((((((■■)g)e)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  782    |  4     (((((((((((■■)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  783    |  4     (((((((((((■)g)e)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  784    |  4     (((((((((((■■)g)e)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  785    |  4     (((((((((((■■)g)e)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  786    |  4     (((((((((((■■)g)e)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  787    |  4     (((((((((((■■)g)e)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  788    |  4     (((((((((((■■)g)e)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  789    |  4     (((((((((((■■)g)e)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  790    |  4     (((((((((((■■)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  791    |  4     (((((((((((■)g)e)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  792    |  4     (((((((((((■■)g)e)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  793    |  4     (((((((((((■■)g)e)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  794    |  4     (((((((((((■■)g)e)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  795    |  4     (((((((((((■■)g)e)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  796    |  4     (((((((((((■■)g)e)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  797    |  4     (((((((((((■■)g)e)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  798    |  4     (((((((((((■)g)e)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  799    |  4     (((((((((((■■)g)e)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  800    |  4     (((((((((((■■)g)e)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  801    |  4     (((((((((((■■)g)e)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  802    |  4     (((((((((((■■)g)e)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  803    |  4     (((((((((((■■)g)e)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  804    |  4     (((((((((((■)g)e)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  805    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  806    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  807    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  808    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  809    |  4     (((((((((((■)g)e)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  810    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  811    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  812    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  813    |  4     (((((((((((■)g)e)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  814    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  815    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  816    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  817    |  4     (((((((((((■)g)e)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  818    |  4     (((((((((((■■)g)e)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  819    |  4     (((((((((((■)g)e)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  820    |  4     (((((((((((■)g)e)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  821    |  4     ((((((((((■g)e)x) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  822    |  4     (((((((((((■e)■)■)■) )=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  823    |  4     (((((((((((■e)■)■)x)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  824    |  4     (((((((((((■e)■)■)x) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  825    |  4     (((((((((((■e)■)■)x) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  826    |  4     (((((((((((■e)■)■)x) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  827    |  4     (((((((((((■e)■)■)x) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  828    |  4     (((((((((((■e)■)■)x) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  829    |  4     (((((((((((■e)■)■)x) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  830    |  4     (((((((((((■e)■)■)x) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  831    |  4     (((((((((((■e)■)■)x) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  832    |  4     (((((((((((■e)■)■)x) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  833    |  4     (((((((((((■e)■)■)x) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  834    |  4     (((((((((((■e)■)e)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  835    |  4     (((((((((((■e)■)e)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  836    |  4     (((((((((((■e)■)e)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  837    |  4     (((((((((((■e)■)e)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  838    |  4     (((((((((((■e)■)e)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  839    |  4     (((((((((((■e)■)e)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  840    |  4     (((((((((((■e)■)e)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  841    |  4     (((((((((((■e)■)e)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  842    |  4     (((((((((((■e)■)e)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  843    |  4     (((((((((((■e)■)e)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  844    |  4     (((((((((((■e)■)e)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  845    |  4     (((((((((((■e)■)e)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  846    |  4     (((((((((((■e)■)e)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  847    |  4     (((((((((((■e)■)e)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  848    |  4     (((((((((((■e)■)e)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  849    |  4     (((((((((((■e)■)e)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  850    |  4     (((((((((((■e)■)e)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  851    |  4     (((((((((((■e)■)e)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  852    |  4     (((((((((((■e)■)e)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  853    |  4     (((((((((((■e)■)e)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  854    |  4     (((((((((((■e)■)e)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  855    |  4     (((((((((((■e)■)e)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  856    |  4     (((((((((((■e)■)e)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  857    |  4     (((((((((((■e)■)e)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  858    |  4     (((((((((((■e)■)e)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  859    |  4     (((((((((((■e)■)e)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  860    |  4     (((((((((((■e)■)e)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  861    |  4     (((((((((((■e)■)e)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  862    |  4     (((((((((((■e)■)e)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  863    |  4     (((((((((((■e)■)e)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  864    |  4     (((((((((((■e)■)e)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  865    |  4     (((((((((((■e)■)e)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  866    |  4     (((((((((((■e)■)e)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  867    |  4     (((((((((((■e)■)e)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  868    |  4     (((((((((((■e)■)e)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  869    |  4     (((((((((((■e)■)e)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  870    |  4     (((((((((((■e)■)e)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  871    |  4     (((((((((((■e)■)e)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  872    |  4     (((((((((((■e)■)e)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  873    |  4     (((((((((((■e)■)e)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  874    |  4     (((((((((((■e)■)e)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  875    |  4     (((((((((((■e)■)e)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  876    |  4     (((((((((((■e)■)e)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  877    |  4     (((((((((((■e)■)e)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  878    |  4     (((((((((((■e)■)e)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  879    |  4     (((((((((((■e)■)e)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  880    |  4     (((((((((((■e)■)e)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  881    |  4     (((((((((((■e)■)e)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  882    |  4     (((((((((((■e)■)e)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  883    |  4     (((((((((((■e)■)e)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  884    |  4     (((((((((((■e)■)e)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  885    |  4     (((((((((((■e)■)e)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  886    |  4     (((((((((((■e)■)e)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  887    |  4     (((((((((((■e)■)e)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  888    |  4     (((((((((((■e)■)e)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  889    |  4     (((((((((((■e)■)e)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  890    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  891    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  892    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  893    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  894    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  895    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  896    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  897    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  898    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  899    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  900    |  4     (((((((((((■e)■)e)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  901    |  4     (((((((((((■e)g)■)■)■)=) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  902    |  4     (((((((((((■e)g)■)■) )■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  903    |  4     (((((((((((■e)g)■)■) )=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  904    |  4     (((((((((((■e)g)■)■) )=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  905    |  4     (((((((((((■e)g)■)■) )=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  906    |  4     (((((((((((■e)g)■)■) )=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  907    |  4     (((((((((((■e)g)■)■) )=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  908    |  4     (((((((((((■e)g)■)■) )=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  909    |  4     (((((((((((■e)g)■)■) )=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  910    |  4     (((((((((((■e)g)■)■) )=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  911    |  4     (((((((((((■e)g)■)■) )=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  912    |  4     (((((((((((■e)g)■)x)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  913    |  4     (((((((((((■e)g)■)x)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  914    |  4     (((((((((((■e)g)■)x)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  915    |  4     (((((((((((■e)g)■)x)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  916    |  4     (((((((((((■e)g)■)x)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  917    |  4     (((((((((((■e)g)■)x)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  918    |  4     (((((((((((■e)g)■)x)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  919    |  4     (((((((((((■e)g)■)x)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  920    |  4     (((((((((((■e)g)■)x)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  921    |  4     (((((((((((■e)g)■)x)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  922    |  4     (((((((((((■e)g)■)x) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  923    |  4     (((((((((((■e)g)■)x) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  924    |  4     (((((((((((■e)g)■)x) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  925    |  4     (((((((((((■e)g)■)x) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  926    |  4     (((((((((((■e)g)■)x) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  927    |  4     (((((((((((■e)g)■)x) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  928    |  4     (((((((((((■e)g)■)x) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  929    |  4     (((((((((((■e)g)■)x) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  930    |  4     (((((((((((■e)g)■)x) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  931    |  4     (((((((((((■e)g)■)x) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  932    |  4     (((((((((((■e)g)■)x) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  933    |  4     (((((((((((■e)g)■)x) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  934    |  4     (((((((((((■e)g)■)x) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  935    |  4     (((((((((((■e)g)■)x) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  936    |  4     (((((((((((■e)g)■)x) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  937    |  4     (((((((((((■e)g)■)x) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  938    |  4     (((((((((((■e)g)■)x) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  939    |  4     (((((((((((■e)g)■)x) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  940    |  4     (((((((((((■e)g)■)x) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  941    |  4     (((((((((((■e)g)■)x) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  942    |  4     (((((((((((■e)g)■)x) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  943    |  4     (((((((((((■e)g)■)x) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  944    |  4     (((((((((((■e)g)■)x) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  945    |  4     (((((((((((■e)g)■)x) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  946    |  4     (((((((((((■e)g)■)x) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  947    |  4     (((((((((((■e)g)■)x) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  948    |  4     (((((((((((■e)g)■)x) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  949    |  4     (((((((((((■e)g)■)x) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  950    |  4     (((((((((((■e)g)■)x) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  951    |  4     (((((((((((■e)g)■)x) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  952    |  4     (((((((((((■e)g)■)x) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  953    |  4     (((((((((((■e)g)■)x) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  954    |  4     (((((((((((■e)g)■)x) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  955    |  4     (((((((((((■e)g)■)x) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  956    |  4     (((((((((((■e)g)■)x) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  957    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  958    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  959    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  960    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  961    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  962    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  963    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  964    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  965    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  966    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  967    |  4     (((((((((((■e)g)■)x) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  968    |  4     (((((((((((■e)g)e)■)■)■) )")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  969    |  4     (((((((((((■e)g)e)■)■)=)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  970    |  4     (((((((((((■e)g)e)■)■)=) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  971    |  4     (((((((((((■e)g)e)■)■)=) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  972    |  4     (((((((((((■e)g)e)■)■)=) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  973    |  4     (((((((((((■e)g)e)■)■)=) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  974    |  4     (((((((((((■e)g)e)■)■)=) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  975    |  4     (((((((((((■e)g)e)■)■)=) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  976    |  4     (((((((((((■e)g)e)■)■)=) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  977    |  4     (((((((((((■e)g)e)■)■)=) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  978    |  4     (((((((((((■e)g)e)■) )■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  979    |  4     (((((((((((■e)g)e)■) )■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  980    |  4     (((((((((((■e)g)e)■) )■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  981    |  4     (((((((((((■e)g)e)■) )■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  982    |  4     (((((((((((■e)g)e)■) )■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  983    |  4     (((((((((((■e)g)e)■) )■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  984    |  4     (((((((((((■e)g)e)■) )■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  985    |  4     (((((((((((■e)g)e)■) )■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  986    |  4     (((((((((((■e)g)e)■) )■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  987    |  4     (((((((((((■e)g)e)■) )=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  988    |  4     (((((((((((■e)g)e)■) )=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  989    |  4     (((((((((((■e)g)e)■) )=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  990    |  4     (((((((((((■e)g)e)■) )=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  991    |  4     (((((((((((■e)g)e)■) )=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  992    |  4     (((((((((((■e)g)e)■) )=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  993    |  4     (((((((((((■e)g)e)■) )=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  994    |  4     (((((((((((■e)g)e)■) )=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  995    |  4     (((((((((((■e)g)e)■) )=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  996    |  4     (((((((((((■e)g)e)■) )=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  997    |  4     (((((((((((■e)g)e)■) )=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  998    |  4     (((((((((((■e)g)e)■) )=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  999    |  4     (((((((((((■e)g)e)■) )=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  1000   |  4     (((((((((((■e)g)e)■) )=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  1001   |  4     (((((((((((■e)g)e)■) )=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1002   |  4     (((((((((((■e)g)e)■) )=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  1003   |  4     (((((((((((■e)g)e)■) )=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  1004   |  4     (((((((((((■e)g)e)■) )=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  1005   |  4     (((((((((((■e)g)e)■) )=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  1006   |  4     (((((((((((■e)g)e)■) )=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  1007   |  4     (((((((((((■e)g)e)■) )=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  1008   |  4     (((((((((((■e)g)e)■) )=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  1009   |  4     (((((((((((■e)g)e)■) )=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  1010   |  4     (((((((((((■e)g)e)■) )=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  1011   |  4     (((((((((((■e)g)e)■) )=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  1012   |  4     (((((((((((■e)g)e)■) )=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  1013   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  1014   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  1015   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  1016   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  1017   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  1018   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  1019   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  1020   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  1021   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  1022   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  1023   |  4     (((((((((((■e)g)e)■) )=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  1024   |  4     (((((((((((■e)g)e)x)■)■)■)")(\[\[))(.)*)(\]\]))"fail dotstar or empty
  1025   |  4     (((((((((((■e)g)e)x)■)■) )■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  1026   |  4     (((((((((((■e)g)e)x)■)■) )")(■\[))(.)*)(\]\]))"fail dotstar or empty
  1027   |  4     (((((((((((■e)g)e)x)■)■) )")(\[■))(.)*)(\]\]))"fail dotstar or empty
  1028   |  4     (((((((((((■e)g)e)x)■)■) )")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  1029   |  4     (((((((((((■e)g)e)x)■)■) )")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  1030   |  4     (((((((((((■e)g)e)x)■)■) )")(\[\[))(.)*)(■\]))"fail dotstar or empty
  1031   |  4     (((((((((((■e)g)e)x)■)■) )")(\[\[))(.)*)(\]■))"fail dotstar or empty
  1032   |  4     (((((((((((■e)g)e)x)■)■) )")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1033   |  4     (((((((((((■e)g)e)x)■)=)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  1034   |  4     (((((((((((■e)g)e)x)■)=)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  1035   |  4     (((((((((((■e)g)e)x)■)=)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  1036   |  4     (((((((((((■e)g)e)x)■)=)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  1037   |  4     (((((((((((■e)g)e)x)■)=)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  1038   |  4     (((((((((((■e)g)e)x)■)=)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  1039   |  4     (((((((((((■e)g)e)x)■)=)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  1040   |  4     (((((((((((■e)g)e)x)■)=)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1041   |  4     (((((((((((■e)g)e)x)■)=) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  1042   |  4     (((((((((((■e)g)e)x)■)=) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  1043   |  4     (((((((((((■e)g)e)x)■)=) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  1044   |  4     (((((((((((■e)g)e)x)■)=) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  1045   |  4     (((((((((((■e)g)e)x)■)=) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  1046   |  4     (((((((((((■e)g)e)x)■)=) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  1047   |  4     (((((((((((■e)g)e)x)■)=) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1048   |  4     (((((((((((■e)g)e)x)■)=) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  1049   |  4     (((((((((((■e)g)e)x)■)=) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  1050   |  4     (((((((((((■e)g)e)x)■)=) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  1051   |  4     (((((((((((■e)g)e)x)■)=) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  1052   |  4     (((((((((((■e)g)e)x)■)=) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  1053   |  4     (((((((((((■e)g)e)x)■)=) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  1054   |  4     (((((((((((■e)g)e)x)■)=) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  1055   |  4     (((((((((((■e)g)e)x)■)=) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  1056   |  4     (((((((((((■e)g)e)x)■)=) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  1057   |  4     (((((((((((■e)g)e)x)■)=) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  1058   |  4     (((((((((((■e)g)e)x)■)=) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  1059   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  1060   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  1061   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  1062   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  1063   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  1064   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  1065   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  1066   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))■)(\]\]))"fail dotstar or empty
  1067   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  1068   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  1069   |  4     (((((((((((■e)g)e)x)■)=) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  1070   |  4     (((((((((((■e)g)e)x) )■)■)■)(\[\[))(.)*)(\]\]))"fail dotstar or empty
  1071   |  4     (((((((((((■e)g)e)x) )■)■)")(■\[))(.)*)(\]\]))"fail dotstar or empty
  1072   |  4     (((((((((((■e)g)e)x) )■)■)")(\[■))(.)*)(\]\]))"fail dotstar or empty
  1073   |  4     (((((((((((■e)g)e)x) )■)■)")(\[\[))(■)*)(\]\]))"fail dotstar or empty
  1074   |  4     (((((((((((■e)g)e)x) )■)■)")(\[\[))(.){■})(\]\]))"fail dotstar or empty
  1075   |  4     (((((((((((■e)g)e)x) )■)■)")(\[\[))(.)*)(■\]))"fail dotstar or empty
  1076   |  4     (((((((((((■e)g)e)x) )■)■)")(\[\[))(.)*)(\]■))"fail dotstar or empty
  1077   |  4     (((((((((((■e)g)e)x) )■)■)")(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1078   |  4     (((((((((((■e)g)e)x) )■) )■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  1079   |  4     (((((((((((■e)g)e)x) )■) )■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  1080   |  4     (((((((((((■e)g)e)x) )■) )■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  1081   |  4     (((((((((((■e)g)e)x) )■) )■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  1082   |  4     (((((((((((■e)g)e)x) )■) )■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  1083   |  4     (((((((((((■e)g)e)x) )■) )■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  1084   |  4     (((((((((((■e)g)e)x) )■) )■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1085   |  4     (((((((((((■e)g)e)x) )■) )")(■■))(.)*)(\]\]))"fail dotstar or empty
  1086   |  4     (((((((((((■e)g)e)x) )■) )")(■\[))(■)*)(\]\]))"fail dotstar or empty
  1087   |  4     (((((((((((■e)g)e)x) )■) )")(■\[))(.){■})(\]\]))"fail dotstar or empty
  1088   |  4     (((((((((((■e)g)e)x) )■) )")(■\[))(.)*)(■\]))"fail dotstar or empty
  1089   |  4     (((((((((((■e)g)e)x) )■) )")(■\[))(.)*)(\]■))"fail dotstar or empty
  1090   |  4     (((((((((((■e)g)e)x) )■) )")(■\[))(.)*)(\]\]))■fail dotstar or empty
  1091   |  4     (((((((((((■e)g)e)x) )■) )")(\[■))(■)*)(\]\]))"fail dotstar or empty
  1092   |  4     (((((((((((■e)g)e)x) )■) )")(\[■))(.){■})(\]\]))"fail dotstar or empty
  1093   |  4     (((((((((((■e)g)e)x) )■) )")(\[■))(.)*)(■\]))"fail dotstar or empty
  1094   |  4     (((((((((((■e)g)e)x) )■) )")(\[■))(.)*)(\]■))"fail dotstar or empty
  1095   |  4     (((((((((((■e)g)e)x) )■) )")(\[■))(.)*)(\]\]))■fail dotstar or empty
  1096   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  1097   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(■)*)(■\]))"fail dotstar or empty
  1098   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(■)*)(\]■))"fail dotstar or empty
  1099   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  1100   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(.){■})(■\]))"fail dotstar or empty
  1101   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(.){■})(\]■))"fail dotstar or empty
  1102   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  1103   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))■)(\]\]))"fail dotstar or empty
  1104   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(■■))"fail dotstar or empty
  1105   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(■\]))■fail dotstar or empty
  1106   |  4     (((((((((((■e)g)e)x) )■) )")(\[\[))(.)*)(\]■))■fail dotstar or empty
  1107   |  4     (((((((((((■e)g)e)x) )=)■)■)(■\[))(.)*)(\]\]))"fail dotstar or empty
  1108   |  4     (((((((((((■e)g)e)x) )=)■)■)(\[■))(.)*)(\]\]))"fail dotstar or empty
  1109   |  4     (((((((((((■e)g)e)x) )=)■)■)(\[\[))(■)*)(\]\]))"fail dotstar or empty
  1110   |  4     (((((((((((■e)g)e)x) )=)■)■)(\[\[))(.){■})(\]\]))"fail dotstar or empty
  1111   |  4     (((((((((((■e)g)e)x) )=)■)■)(\[\[))(.)*)(■\]))"fail dotstar or empty
  1112   |  4     (((((((((((■e)g)e)x) )=)■)■)(\[\[))(.)*)(\]■))"fail dotstar or empty
  1113   |  4     (((((((((((■e)g)e)x) )=)■)■)(\[\[))(.)*)(\]\]))■fail dotstar or empty
  1114   |  4     (((((((((((■e)g)e)x) )=)■)")(■■))(.)*)(\]\]))"fail dotstar or empty
  1115   |  4     (((((((((((■e)g)e)x) )=)■)")(■\[))(■)*)(\]\]))"fail dotstar or empty
  1116   |  4     (((((((((((■e)g)e)x) )=)■)")(■\[))(.){■})(\]\]))"fail dotstar or empty
  1117   |  4     (((((((((((■e)g)e)x) )=)■)")(■\[))(.)*)(■\]))"fail dotstar or empty
  1118   |  4     (((((((((((■e)g)e)x) )=)■)")(■\[))(.)*)(\]■))"fail dotstar or empty
  1119   |  4     (((((((((((■e)g)e)x) )=)■)")(■\[))(.)*)(\]\]))■fail dotstar or empty
  1120   |  4     (((((((((((■e)g)e)x) )=)■)")(\[■))(■)*)(\]\]))"fail dotstar or empty
  1121   |  4     (((((((((((■e)g)e)x) )=)■)")(\[■))(.){■})(\]\]))"fail dotstar or empty
  1122   |  4     (((((((((((■e)g)e)x) )=)■)")(\[■))(.)*)(■\]))"fail dotstar or empty
  1123   |  4     (((((((((((■e)g)e)x) )=)■)")(\[■))(.)*)(\]■))"fail dotstar or empty
  1124   |  4     (((((((((((■e)g)e)x) )=)■)")(\[■))(.)*)(\]\]))■fail dotstar or empty
  1125   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(■){■})(\]\]))"fail dotstar or empty
  1126   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(■)*)(■\]))"fail dotstar or empty
  1127   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(■)*)(\]■))"fail dotstar or empty
  1128   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(■)*)(\]\]))■fail dotstar or empty
  1129   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.){■})(■\]))"fail dotstar or empty
  1130   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.){■})(\]■))"fail dotstar or empty
  1131   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.){■})(\]\]))■fail dotstar or empty
  1132   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))■)(\]\]))"fail dotstar or empty
  1133   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(■■))"fail dotstar or empty
  1134   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(■\]))■fail dotstar or empty
  1135   |  4     (((((((((((■e)g)e)x) )=)■)")(\[\[))(.)*)(\]■))■fail dotstar or empty
  1136   |  4     (((((((((((■e)g)e)x) )=) )■)(■■))(.)*)(\]\]))"fail dotstar or empty
  1137   |  4     (((((((((((■e)g)e)x) )=) )■)(■\[))(■)*)(\]\]))"fail dotstar or empty
  1138   |  4     (((((((((((■e)g)e)x) )=) )■)(■\[))(.){■})(\]\]))"fail dotstar or empty
  1139   |  4     (((((((((((■e)g)e)x) )=) )■)(■\[))(.)*)(■\]))"fail dotstar or empty
  1140   |  4     (((((((((((■e)g)e)x) )=) )■)(■\[))(.)*)(\]■))"fail dotstar or empty
  1141   |  4     (((((((((((■e)g)e)x) )=) )■)(■\[))(.)*)(\]\]))■fail dotstar or empty
  1142   |  4     (((((((((((■e)g)e)x) )=) )■)(\[■))(■)*)(\]\]))"fail dotstar or empty
  1143   |  4     (((((((((((■e)g)e)x) )=) )■)(\[■))(.){■})(\]\]))"fail dotstar or empty
  1144   |  4     (((((((((((■e)g)e)x) )=) )■)(\[■))(.)*)(■\]))"fail dotstar or empty
  1145   |  4     (((((((((((■e)g)e)x) )=) )■)(\[■))(.)*)(\]■))"fail dotstar or empty
  1146   |  4     (((((((((((■e)g)e)x) )=) )■)(\[■))(.)*)(\]\]))■fail dotstar or empty
  1147   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(■){■})(\]\]))"fail dotstar or empty
  1148   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(■)*)(■\]))"fail dotstar or empty
  1149   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(■)*)(\]■))"fail dotstar or empty
  1150   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(■)*)(\]\]))■fail dotstar or empty
  1151   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.){■})(■\]))"fail dotstar or empty
  1152   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.){■})(\]■))"fail dotstar or empty
  1153   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.){■})(\]\]))■fail dotstar or empty
  1154   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))■)(\]\]))"fail dotstar or empty
  1155   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(■■))"fail dotstar or empty
  1156   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(■\]))■fail dotstar or empty
  1157   |  4     (((((((((((■e)g)e)x) )=) )■)(\[\[))(.)*)(\]■))■fail dotstar or empty
  1158   |  4     (((((((((((■e)g)e)x) )=) )")(■■))(■)*)(\]\]))"fail dotstar or empty
  1159   |  4     (((((((((((■e)g)e)x) )=) )")(■■))(.){■})(\]\]))"fail dotstar or empty
  1160   |  4     (((((((((((■e)g)e)x) )=) )")(■■))(.)*)(■\]))"fail dotstar or empty
  1161   |  4     (((((((((((■e)g)e)x) )=) )")(■■))(.)*)(\]■))"fail dotstar or empty
  1162   |  4     (((((((((((■e)g)e)x) )=) )")(■■))(.)*)(\]\]))■fail dotstar or empty
  1163   |  4     (((((((((((■e)g)e)x) )=) )")(■))(.)*)(\]\]))"fail dotstar or empty
  1164   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(■){■})(\]\]))"fail dotstar or empty
  1165   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(■)*)(■\]))"fail dotstar or empty
  1166   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(■)*)(\]■))"fail dotstar or empty
  1167   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(■)*)(\]\]))■fail dotstar or empty
  1168   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(.){■})(■\]))"fail dotstar or empty
  1169   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(.){■})(\]■))"fail dotstar or empty
  1170   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(.){■})(\]\]))■fail dotstar or empty
  1171   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))■)(\]\]))"fail dotstar or empty
  1172   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(■■))"fail dotstar or empty
  1173   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(■\]))■fail dotstar or empty
  1174   |  4     (((((((((((■e)g)e)x) )=) )")(■\[))(.)*)(\]■))■fail dotstar or empty
  1175   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(■){■})(\]\]))"fail dotstar or empty
  1176   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(■)*)(■\]))"fail dotstar or empty
  1177   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(■)*)(\]■))"fail dotstar or empty
  1178   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(■)*)(\]\]))■fail dotstar or empty
  1179   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(.){■})(■\]))"fail dotstar or empty
  1180   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(.){■})(\]■))"fail dotstar or empty
  1181   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(.){■})(\]\]))■fail dotstar or empty
  1182   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))■)(\]\]))"fail dotstar or empty
  1183   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(■■))"fail dotstar or empty
  1184   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(■\]))■fail dotstar or empty
  1185   |  4     (((((((((((■e)g)e)x) )=) )")(\[■))(.)*)(\]■))■fail dotstar or empty
  1186   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(■){■})(■\]))"fail dotstar or empty
  1187   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(■){■})(\]■))"fail dotstar or empty
  1188   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(■){■})(\]\]))■fail dotstar or empty
  1189   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(■■))"fail dotstar or empty
  1190   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(■\]))■fail dotstar or empty
  1191   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(■)*)(\]■))■fail dotstar or empty
  1192   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(■■))"fail dotstar or empty
  1193   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(■\]))■fail dotstar or empty
  1194   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))■)(■\]))"fail dotstar or empty
  1195   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(.){■})(\]■))■fail dotstar or empty
  1196   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))■)(\]■))"fail dotstar or empty
  1197   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))■)(\]\]))■fail dotstar or empty
  1198   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(■■))■fail dotstar or empty
  1199   |  4     (((((((((((■e)g)e)x) )=) )")(\[\[))(.)*)(■))"fail dotstar or empty
  1200   |  4     (((((((((((r■)■)■)■) )=) )")(\[\[))(.)*)(\]\]))"
2.049741268157959
timeout