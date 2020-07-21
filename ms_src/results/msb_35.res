
Given the regular expression:

  ((([0-2]){1}W|([21-1]){2}M)|([1-2]){1}Y)

That that should match the strings:

  ✓ (0:2)    3W

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){1}W|([21-1]){2}M)|([1-2]){1}Y)get a solution: (((3){1}W|([21-1]){2}M)|([1-2]){1}Y)
add positive: 1W
add negative: 21M
  2      |  1     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  3      |  1     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  4      |  1     ((([0-2]){1}W|(■){2}M)|([1-2]){1}Y)fail dotstar or empty
  5      |  1     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  6      |  1     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  7      |  1     ((([0-2]){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  8      |  1     ((([0-2]){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  9      |  1     ((([0-2]){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  10     |  2     (((■){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  11     |  2     (((■){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  12     |  2     (((■){1}W|(■){2}M)|([1-2]){1}Y)get a solution: ((([13]){1}W|([∅]){2}M)|([1-2]){1}Y)
add positive: 2W
get a solution: ((([123]){1}W|([∅]){2}M)|([1-2]){1}Y)
add positive: 3M
  13     |  2     (((■){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  14     |  2     (((■){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  15     |  2     (((■){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  16     |  2     (((■){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  17     |  2     (((■){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  18     |  2     ((■W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  19     |  2     (((■■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  20     |  2     ((((■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail solve
  21     |  2     ((((■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  22     |  2     ((([0-2]){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  23     |  2     ((([0-2]){■}W|(■){2}M)|([1-2]){1}Y)fail dotstar or empty
  24     |  2     ((([0-2]){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  25     |  2     ((([0-2]){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  26     |  2     ((([0-2]){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  27     |  2     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  28     |  2     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  29     |  2     ((([0-2]){1}■|(■){2}M)|([1-2]){1}Y)fail dotstar or empty
  30     |  2     ((([0-2]){1}■|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  31     |  2     ((([0-2]){1}■|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  32     |  2     ((([0-2]){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  33     |  2     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  34     |  2     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  35     |  2     ((([0-2]){1}W|(■){■}M)|([1-2]){1}Y)fail dotstar or empty
  36     |  2     ((([0-2]){1}W|(■){2}■)|([1-2]){1}Y)fail dot
  37     |  2     ((([0-2]){1}W|(■){2}M)|(■){1}Y)fail dotstar or empty
  38     |  2     ((([0-2]){1}W|(■){2}M)|([1-2]){■}Y)fail dotstar or empty
  39     |  2     ((([0-2]){1}W|(■){2}M)|([1-2]){1}■)fail dotstar or empty
  40     |  2     ((([0-2]){1}W|■M)|([1-2]){1}Y)fail dotstar or empty
  41     |  2     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  42     |  2     ((([0-2]){1}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  43     |  2     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  44     |  2     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  45     |  2     ((([0-2]){1}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  46     |  2     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  47     |  2     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  48     |  2     ((([0-2]){1}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  49     |  2     ((([0-2]){1}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  50     |  2     ((([0-2]){1}W|([21-1]){2}M)|■Y)fail dotstar or empty
  51     |  2     ((([0-2]){1}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  52     |  3     (((■){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  53     |  3     (((■){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  54     |  3     (((■){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  55     |  3     (((■){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  56     |  3     (((■){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  57     |  3     (((■){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  58     |  3     (((■){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  59     |  3     (((■){1}■|(■){2}M)|([1-2]){1}Y)get a solution: ((([123]){1}[WM]|([∅]){2}M)|([1-2]){1}Y)
add positive: 4M
get a solution: ((([1234]){1}[WM]|([∅]){2}M)|([1-2]){1}Y)
add positive: 5M
add negative: 4W
  unsatisfiable SAT formula       
  60     |  3     (((■){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  61     |  3     (((■){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  62     |  3     (((■){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  63     |  3     (((■){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  64     |  3     (((■){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  65     |  3     ((■■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  66     |  3     (((■){1}W|(■){■}M)|([1-2]){1}Y)get a solution: ((([123]){1}W|([345]){1}M)|([1-2]){1}Y)
add positive: 6M
get a solution: ((([123]){1}W|([3456]){1}M)|([1-2]){1}Y)
add positive: 1M
get a solution: ((([123]){1}W|([13456]){1}M)|([1-2]){1}Y)
add positive: 2M
get a solution: ((([123]){1}W|([123456]){1}M)|([1-2]){1}Y)
add positive: 7M
get a solution: ((([123]){1}W|([1234567]){1}M)|([1-2]){1}Y)
add positive: 8M
get a solution: ((([123]){1}W|([12345678]){1}M)|([1-2]){1}Y)
add positive: 9M
get a solution: ((([123]){1}W|([123456789]){1}M)|([1-2]){1}Y)
add positive: 10M
  unsatisfiable SAT formula       
  67     |  3     (((■){1}W|(■){2}■)|([1-2]){1}Y)fail dot
  68     |  3     (((■){1}W|(■){2}M)|(■){1}Y)fail dot
  69     |  3     (((■){1}W|(■){2}M)|([1-2]){■}Y)fail dot
  70     |  3     (((■){1}W|(■){2}M)|([1-2]){1}■)fail dot
  71     |  3     ((■W|(■){2}M)|([1-2]){1}Y)fail dot
  72     |  3     (((■){1}W|■M)|([1-2]){1}Y)fail dot
  73     |  3     (((■■){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  74     |  3     ((((■|■)){1}W|(■){2}M)|([1-2]){1}Y)fail solve
  75     |  3     ((((■){■}){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  76     |  3     (((■){1}W|(■■){2}M)|([1-2]){1}Y)fail dot
  77     |  3     (((■){1}W|((■|■)){2}M)|([1-2]){1}Y)fail solve
  78     |  3     (((■){1}W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  79     |  3     (((■){1}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  80     |  3     (((■){1}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  81     |  3     (((■){1}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  82     |  3     (((■){1}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  83     |  3     ((■W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  84     |  3     (((■){1}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  85     |  3     (((■){1}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  86     |  3     (((■){1}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  87     |  3     ((■W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  88     |  3     (((■){1}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  89     |  3     (((■){1}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  90     |  3     ((■W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  91     |  3     (((■){1}W|([21-1]){2}M)|■Y)fail dotstar or empty
  92     |  3     (((■){1}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  93     |  3     ((■W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  94     |  3     ((■W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  95     |  3     (((■■){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  96     |  3     (((■■){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  97     |  3     (((■■){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  98     |  3     (((■■){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  99     |  3     (((■■){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  100    |  3     (((■■){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  101    |  3     (((■■){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  102    |  3     ((((■■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  103    |  3     ((((■|■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  104    |  3     ((((■){■}■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  105    |  3     ((((■|■)){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  106    |  3     ((((■|■)){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  107    |  3     ((((■|■)){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  108    |  3     ((((■|■)){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  109    |  3     ((((■|■)){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  110    |  3     ((((■|■)){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  111    |  3     ((((■|■)){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  112    |  3     ((((■■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  113    |  3     (((((■|■)|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail solve
  114    |  3     (((((■){■}|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  115    |  3     ((((■){■}){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  116    |  3     ((((■){■}){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  117    |  3     ((((■){■}){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  118    |  3     ((((■){■}){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  119    |  3     ((((■){■}){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  120    |  3     ((((■){■}){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  121    |  3     ((((■){■}){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  122    |  3     ((((■■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  123    |  3     (((((■|■)){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  124    |  3     (((((■){■}){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  125    |  3     ((([0-2]){■}■|(■){2}M)|([1-2]){1}Y)fail dot
  126    |  3     ((([0-2]){■}■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  127    |  3     ((([0-2]){■}■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  128    |  3     ((([0-2]){■}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  129    |  3     ((([0-2]){■}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  130    |  3     ((([0-2]){■}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  131    |  3     ((([0-2]){■}W|(■){■}M)|([1-2]){1}Y)fail dotstar or empty
  132    |  3     ((([0-2]){■}W|(■){2}■)|([1-2]){1}Y)fail dot
  133    |  3     ((([0-2]){■}W|(■){2}M)|(■){1}Y)fail dotstar or empty
  134    |  3     ((([0-2]){■}W|(■){2}M)|([1-2]){■}Y)fail dotstar or empty
  135    |  3     ((([0-2]){■}W|(■){2}M)|([1-2]){1}■)fail dotstar or empty
  136    |  3     ((([0-2]){■}W|■M)|([1-2]){1}Y)fail dotstar or empty
  137    |  3     ((([0-2]){■}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  138    |  3     ((([0-2]){■}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  139    |  3     ((([0-2]){■}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  140    |  3     ((([0-2]){■}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  141    |  3     ((([0-2]){■}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  142    |  3     ((([0-2]){■}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  143    |  3     ((([0-2]){■}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  144    |  3     ((([0-2]){■}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  145    |  3     ((([0-2]){■}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  146    |  3     ((([0-2]){■}W|([21-1]){2}M)|■Y)fail dotstar or empty
  147    |  3     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  148    |  3     ((([0-2]){1}■|(■){■}M)|([1-2]){1}Y)fail dotstar or empty
  149    |  3     ((([0-2]){1}■|(■){2}■)|([1-2]){1}Y)fail dot
  150    |  3     ((([0-2]){1}■|(■){2}M)|(■){1}Y)fail dotstar or empty
  151    |  3     ((([0-2]){1}■|(■){2}M)|([1-2]){■}Y)fail dotstar or empty
  152    |  3     ((([0-2]){1}■|(■){2}M)|([1-2]){1}■)fail dotstar or empty
  153    |  3     ((([0-2]){1}■|■M)|([1-2]){1}Y)fail dotstar or empty
  154    |  3     ((([0-2]){1}■|([21-1]){■}■)|([1-2]){1}Y)fail dot
  155    |  3     ((([0-2]){1}■|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  156    |  3     ((([0-2]){1}■|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  157    |  3     ((([0-2]){1}■|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  158    |  3     ((([0-2]){1}■|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  159    |  3     ((([0-2]){1}■|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  160    |  3     ((([0-2]){1}■|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  161    |  3     ((([0-2]){1}■|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  162    |  3     ((([0-2]){1}■|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  163    |  3     ((([0-2]){1}■|([21-1]){2}M)|■Y)fail dotstar or empty
  164    |  3     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  165    |  3     ((([0-2]){1}W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  166    |  3     ((([0-2]){1}W|(■){■}M)|(■){1}Y)fail dotstar or empty
  167    |  3     ((([0-2]){1}W|(■){■}M)|([1-2]){■}Y)fail dotstar or empty
  168    |  3     ((([0-2]){1}W|(■){■}M)|([1-2]){1}■)fail dotstar or empty
  169    |  3     ((([0-2]){1}W|(■){2}■)|(■){1}Y)fail dot
  170    |  3     ((([0-2]){1}W|(■){2}■)|([1-2]){■}Y)fail dot
  171    |  3     ((([0-2]){1}W|(■){2}■)|([1-2]){1}■)fail dot
  172    |  3     ((([0-2]){1}W|■■)|([1-2]){1}Y)fail dot
  173    |  3     ((([0-2]){1}W|(■■){2}■)|([1-2]){1}Y)fail dot
  174    |  3     ((([0-2]){1}W|((■|■)){2}■)|([1-2]){1}Y)fail dot
  175    |  3     ((([0-2]){1}W|((■){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  176    |  3     ((([0-2]){1}W|(■){2}(■■))|([1-2]){1}Y)fail dot
  177    |  3     ((([0-2]){1}W|(■){2}(■|■))|([1-2]){1}Y)fail dot
  178    |  3     ((([0-2]){1}W|(■){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  179    |  3     ((([0-2]){1}W|(■){2}M)|(■){■}Y)fail dotstar or empty
  180    |  3     ((([0-2]){1}W|(■){2}M)|(■){1}■)  unsatisfiable SAT formula       
  181    |  3     ((([0-2]){1}W|■M)|(■){1}Y)fail dotstar or empty
  182    |  3     ((([0-2]){1}W|(■){2}M)|■Y)fail dotstar or empty
  183    |  3     ((([0-2]){1}W|(■){2}M)|([1-2]){■}■)fail dot
  184    |  3     ((([0-2]){1}W|■M)|([1-2]){■}Y)fail dotstar or empty
  185    |  3     ((([0-2]){1}W|■M)|([1-2]){1}■)fail dotstar or empty
  186    |  3     ((([0-2]){1}W|([21-1]){■}■)|(■){1}Y)fail dot
  187    |  3     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){■}Y)fail dot
  188    |  3     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){1}■)fail dot
  189    |  3     ((([0-2]){1}W|([21-1]){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  190    |  3     ((([0-2]){1}W|([21-1]){■}(■|■))|([1-2]){1}Y)fail dot
  191    |  3     ((([0-2]){1}W|([21-1]){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  192    |  3     ((([0-2]){1}W|([21-1]){■}M)|(■){■}Y)fail dotstar or empty
  193    |  3     ((([0-2]){1}W|([21-1]){■}M)|(■){1}■)fail dot
  194    |  3     ((([0-2]){1}W|([21-1]){■}M)|■Y)fail dotstar or empty
  195    |  3     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}■)fail dot
  196    |  3     ((([0-2]){1}W|([21-1]){2}■)|(■){■}Y)fail dotstar or empty
  197    |  3     ((([0-2]){1}W|([21-1]){2}■)|(■){1}■)fail dot
  198    |  3     ((([0-2]){1}W|([21-1]){2}■)|■Y)fail dotstar or empty
  199    |  3     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}■)fail dot
  200    |  3     ((([0-2]){1}W|([21-1]){2}M)|(■){■}■)fail dotstar or empty
  201    |  3     ((([0-2]){1}W|([21-1]){2}M)|■■)fail dotstar or empty
  202    |  4     (((■){■}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  203    |  4     (((■){■}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  204    |  4     (((■){■}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  205    |  4     (((■){■}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  206    |  4     (((■){■}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  207    |  4     (((■){■}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  208    |  4     (((■){■}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  209    |  4     (((■){■}W|(■){2}■)|([1-2]){1}Y)fail dot
  210    |  4     (((■){■}W|(■){2}M)|(■){1}Y)fail dot
  211    |  4     (((■){■}W|(■){2}M)|([1-2]){■}Y)fail dot
  212    |  4     (((■){■}W|(■){2}M)|([1-2]){1}■)fail dot
  213    |  4     (((■){■}W|■M)|([1-2]){1}Y)fail dot
  214    |  4     (((■■){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  215    |  4     ((((■|■)){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  216    |  4     ((((■){■}){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  217    |  4     (((■){■}W|(■■){2}M)|([1-2]){1}Y)fail dot
  218    |  4     (((■){■}W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  219    |  4     (((■){■}W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  220    |  4     (((■){■}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  221    |  4     (((■){■}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  222    |  4     (((■){■}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  223    |  4     (((■){■}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  224    |  4     (((■){■}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  225    |  4     (((■){■}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  226    |  4     (((■){■}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  227    |  4     (((■){■}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  228    |  4     (((■){■}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  229    |  4     (((■){■}W|([21-1]){2}M)|■Y)fail dotstar or empty
  230    |  4     (((■){■}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  231    |  4     (((■){1}■|(■){■}M)|([1-2]){1}Y)get a solution: ((([12356789]){1}[WM]|([140]){1,2}M)|([1-2]){1}Y)
add positive: 12M
add negative: 5W
  unsatisfiable SAT formula       
  232    |  4     (((■){1}■|(■){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  233    |  4     (((■){1}■|(■){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  234    |  4     (((■){1}■|(■){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  235    |  4     (((■){1}■|(■){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  236    |  4     ((■■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  237    |  4     (((■){1}■|■M)|([1-2]){1}Y)fail dot
  238    |  4     (((■■){1}■|(■){2}M)|([1-2]){1}Y)fail dot
  239    |  4     ((((■|■)){1}■|(■){2}M)|([1-2]){1}Y)fail solve
  240    |  4     ((((■){■}){1}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  241    |  4     (((■){1}(■■)|(■){2}M)|([1-2]){1}Y)fail dot
  242    |  4     (((■){1}(■|■)|(■){2}M)|([1-2]){1}Y)fail solve
  243    |  4     (((■){1}(■){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  244    |  4     (((■){1}■|(■■){2}M)|([1-2]){1}Y)fail dot
  245    |  4     (((■){1}■|((■|■)){2}M)|([1-2]){1}Y)fail solve
  246    |  4     (((■){1}■|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  247    |  4     (((■){1}■|([21-1]){■}■)|([1-2]){1}Y)fail dot
  248    |  4     (((■){1}■|([21-1]){■}M)|(■){1}Y)fail dot
  249    |  4     (((■){1}■|([21-1]){■}M)|([1-2]){■}Y)fail dot
  250    |  4     (((■){1}■|([21-1]){■}M)|([1-2]){1}■)fail dot
  251    |  4     ((■■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  252    |  4     (((■■){1}■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  253    |  4     ((((■|■)){1}■|([21-1]){■}M)|([1-2]){1}Y)fail solve
  254    |  4     ((((■){■}){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  255    |  4     (((■){1}(■■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  256    |  4     (((■){1}(■|■)|([21-1]){■}M)|([1-2]){1}Y)fail solve
  257    |  4     (((■){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  258    |  4     (((■){1}■|([21-1]){2}■)|(■){1}Y)fail dot
  259    |  4     (((■){1}■|([21-1]){2}■)|([1-2]){■}Y)fail dot
  260    |  4     (((■){1}■|([21-1]){2}■)|([1-2]){1}■)fail dot
  261    |  4     ((■■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  262    |  4     (((■■){1}■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  263    |  4     ((((■|■)){1}■|([21-1]){2}■)|([1-2]){1}Y)fail solve
  264    |  4     ((((■){■}){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  265    |  4     (((■){1}(■■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  266    |  4     (((■){1}(■|■)|([21-1]){2}■)|([1-2]){1}Y)fail solve
  267    |  4     (((■){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  268    |  4     (((■){1}■|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  269    |  4     (((■){1}■|([21-1]){2}(■|■))|([1-2]){1}Y)fail solve
  270    |  4     (((■){1}■|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  271    |  4     (((■){1}■|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  272    |  4     (((■){1}■|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  273    |  4     ((■■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  274    |  4     (((■){1}■|([21-1]){2}M)|■Y)fail dotstar or empty
  275    |  4     (((■){1}■|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  276    |  4     ((■■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  277    |  4     ((■■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  278    |  4     ((■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  279    |  4     (((■){1}W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  280    |  4     (((■){1}W|(■){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  281    |  4     (((■){1}W|(■){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  282    |  4     (((■){1}W|(■){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  283    |  4     ((■W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  284    |  4     (((■■){1}W|(■){■}M)|([1-2]){1}Y)fail dot
  285    |  4     ((((■|■)){1}W|(■){■}M)|([1-2]){1}Y)fail solve
  286    |  4     ((((■){■}){1}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  287    |  4     (((■){1}W|(■■){■}M)|([1-2]){1}Y)fail dot
  288    |  4     (((■){1}W|((■|■)){■}M)|([1-2]){1}Y)fail solve
  289    |  4     (((■){1}W|((■){■}){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  290    |  4     (((■){1}W|(■){2}■)|(■){1}Y)fail dot
  291    |  4     (((■){1}W|(■){2}■)|([1-2]){■}Y)fail dot
  292    |  4     (((■){1}W|(■){2}■)|([1-2]){1}■)fail dot
  293    |  4     ((■W|(■){2}■)|([1-2]){1}Y)fail dot
  294    |  4     (((■){1}W|■■)|([1-2]){1}Y)fail dot
  295    |  4     (((■■){1}W|(■){2}■)|([1-2]){1}Y)fail dot
  296    |  4     ((((■|■)){1}W|(■){2}■)|([1-2]){1}Y)fail dot
  297    |  4     ((((■){■}){1}W|(■){2}■)|([1-2]){1}Y)fail dot
  298    |  4     (((■){1}W|(■■){2}■)|([1-2]){1}Y)fail dot
  299    |  4     (((■){1}W|((■|■)){2}■)|([1-2]){1}Y)fail dot
  300    |  4     (((■){1}W|((■){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  301    |  4     (((■){1}W|(■){2}(■■))|([1-2]){1}Y)fail dot
  302    |  4     (((■){1}W|(■){2}(■|■))|([1-2]){1}Y)fail dot
  303    |  4     (((■){1}W|(■){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  304    |  4     (((■){1}W|(■){2}M)|(■){■}Y)fail dot
  305    |  4     (((■){1}W|(■){2}M)|(■){1}■)  unsatisfiable SAT formula       
  306    |  4     ((■W|(■){2}M)|(■){1}Y)  fail dot
  307    |  4     (((■){1}W|■M)|(■){1}Y)  fail dot
  308    |  4     (((■){1}W|(■){2}M)|■Y)  fail dot
  309    |  4     (((■■){1}W|(■){2}M)|(■){1}Y)fail dot
  310    |  4     ((((■|■)){1}W|(■){2}M)|(■){1}Y)fail dot
  311    |  4     ((((■){■}){1}W|(■){2}M)|(■){1}Y)fail dot
  312    |  4     (((■){1}W|(■■){2}M)|(■){1}Y)fail dot
  313    |  4     (((■){1}W|((■|■)){2}M)|(■){1}Y)fail dot
  314    |  4     (((■){1}W|((■){■}){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  315    |  4     (((■){1}W|(■){2}M)|(■■){1}Y)fail dot
  316    |  4     (((■){1}W|(■){2}M)|((■|■)){1}Y)fail dot
  317    |  4     (((■){1}W|(■){2}M)|((■){■}){1}Y)fail dot
  318    |  4     (((■){1}W|(■){2}M)|([1-2]){■}■)fail dot
  319    |  4     ((■W|(■){2}M)|([1-2]){■}Y)fail dot
  320    |  4     (((■){1}W|■M)|([1-2]){■}Y)fail dot
  321    |  4     (((■■){1}W|(■){2}M)|([1-2]){■}Y)fail dot
  322    |  4     ((((■|■)){1}W|(■){2}M)|([1-2]){■}Y)fail dot
  323    |  4     ((((■){■}){1}W|(■){2}M)|([1-2]){■}Y)fail dot
  324    |  4     (((■){1}W|(■■){2}M)|([1-2]){■}Y)fail dot
  325    |  4     (((■){1}W|((■|■)){2}M)|([1-2]){■}Y)fail dot
  326    |  4     (((■){1}W|((■){■}){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  327    |  4     ((■W|(■){2}M)|([1-2]){1}■)fail dot
  328    |  4     (((■){1}W|■M)|([1-2]){1}■)fail dot
  329    |  4     (((■■){1}W|(■){2}M)|([1-2]){1}■)fail dot
  330    |  4     ((((■|■)){1}W|(■){2}M)|([1-2]){1}■)fail dot
  331    |  4     ((((■){■}){1}W|(■){2}M)|([1-2]){1}■)fail dot
  332    |  4     (((■){1}W|(■■){2}M)|([1-2]){1}■)fail dot
  333    |  4     (((■){1}W|((■|■)){2}M)|([1-2]){1}■)fail dot
  334    |  4     (((■){1}W|((■){■}){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  335    |  4     (((■){1}W|(■){2}M)|([1-2]){1}(■■))fail dot
  336    |  4     (((■){1}W|(■){2}M)|([1-2]){1}(■|■))fail dot
  337    |  4     (((■){1}W|(■){2}M)|([1-2]){1}(■){■})fail dot
  338    |  4     ((■W|■M)|([1-2]){1}Y)   fail dot
  339    |  4     (((■■)W|(■){2}M)|([1-2]){1}Y)fail dot
  340    |  4     (((■|■)W|(■){2}M)|([1-2]){1}Y)fail dot
  341    |  4     ((■W|(■■){2}M)|([1-2]){1}Y)fail dot
  342    |  4     ((■W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  343    |  4     ((■W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  344    |  4     (((■■){1}W|■M)|([1-2]){1}Y)fail dot
  345    |  4     ((((■|■)){1}W|■M)|([1-2]){1}Y)fail dot
  346    |  4     ((((■){■}){1}W|■M)|([1-2]){1}Y)fail dot
  347    |  4     (((■){1}W|(■■)M)|([1-2]){1}Y)fail dot
  348    |  4     (((■){1}W|(■|■)M)|([1-2]){1}Y)fail dot
  349    |  4     ((((■■)■){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  350    |  4     ((((■|■)■){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  351    |  4     ((((■){■}■){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  352    |  4     (((■■){1}W|(■■){2}M)|([1-2]){1}Y)fail dot
  353    |  4     (((■■){1}W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  354    |  4     (((■■){1}W|((■){■}){2}M)|([1-2]){1}Y)fail dot
  355    |  4     ((((■■|■)){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  356    |  4     (((((■|■)|■)){1}W|(■){2}M)|([1-2]){1}Y)fail solve
  357    |  4     (((((■){■}|■)){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  358    |  4     ((((■|■)){1}W|(■■){2}M)|([1-2]){1}Y)fail dot
  359    |  4     ((((■|■)){1}W|((■|■)){2}M)|([1-2]){1}Y)fail solve
  360    |  4     ((((■|■)){1}W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  361    |  4     ((((■■){■}){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  362    |  4     (((((■|■)){■}){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  363    |  4     (((((■){■}){■}){1}W|(■){2}M)|([1-2]){1}Y)fail dot
  364    |  4     ((((■){■}){1}W|(■■){2}M)|([1-2]){1}Y)fail dot
  365    |  4     ((((■){■}){1}W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  366    |  4     ((((■){■}){1}W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  367    |  4     (((■){1}W|((■■)■){2}M)|([1-2]){1}Y)fail dot
  368    |  4     (((■){1}W|((■|■)■){2}M)|([1-2]){1}Y)fail dot
  369    |  4     (((■){1}W|((■){■}■){2}M)|([1-2]){1}Y)fail dot
  370    |  4     (((■){1}W|((■■|■)){2}M)|([1-2]){1}Y)fail dot
  371    |  4     (((■){1}W|(((■|■)|■)){2}M)|([1-2]){1}Y)fail solve
  372    |  4     (((■){1}W|(((■){■}|■)){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  373    |  4     (((■){1}W|((■■){■}){2}M)|([1-2]){1}Y)fail dot
  374    |  4     (((■){1}W|(((■|■)){■}){2}M)|([1-2]){1}Y)fail solve
  375    |  4     (((■){1}W|(((■){■}){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  376    |  4     (((■){1}W|([21-1]){■}■)|(■){1}Y)fail dot
  377    |  4     (((■){1}W|([21-1]){■}■)|([1-2]){■}Y)fail dot
  378    |  4     (((■){1}W|([21-1]){■}■)|([1-2]){1}■)fail dot
  379    |  4     ((■W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  380    |  4     (((■■){1}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  381    |  4     ((((■|■)){1}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  382    |  4     ((((■){■}){1}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  383    |  4     (((■){1}W|([21-1]){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  384    |  4     (((■){1}W|([21-1]){■}(■|■))|([1-2]){1}Y)fail dot
  385    |  4     (((■){1}W|([21-1]){■}(■){■})|([1-2]){1}Y)get a solution: ((([123]){1}W|([21-1]){0,1}([23456789M0]){1,2})|([1-2]){1}Y)
add positive: 11M
add negative: 0
  unsatisfiable SAT formula       
  386    |  4     (((■){1}W|([21-1]){■}M)|(■){■}Y)fail dotstar or empty
  387    |  4     (((■){1}W|([21-1]){■}M)|(■){1}■)fail dot
  388    |  4     ((■W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  389    |  4     (((■){1}W|([21-1]){■}M)|■Y)fail dotstar or empty
  390    |  4     (((■){1}W|([21-1]){■}M)|([1-2]){■}■)fail dot
  391    |  4     ((■W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  392    |  4     ((■W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  393    |  4     (((■){1}W|([21-1]){2}■)|(■){■}Y)fail dotstar or empty
  394    |  4     (((■){1}W|([21-1]){2}■)|(■){1}■)fail dot
  395    |  4     ((■W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  396    |  4     (((■){1}W|([21-1]){2}■)|■Y)fail dotstar or empty
  397    |  4     (((■){1}W|([21-1]){2}■)|([1-2]){■}■)fail dot
  398    |  4     ((■W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  399    |  4     ((■W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  400    |  4     (((■){1}W|([21-1]){2}M)|(■){■}■)fail dotstar or empty
  401    |  4     ((■W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  402    |  4     ((■W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  403    |  4     (((■){1}W|([21-1]){2}M)|■■)fail dotstar or empty
  404    |  4     ((■W|([21-1]){2}M)|■Y)  fail dotstar or empty
  405    |  4     ((■W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  406    |  4     (((■■){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  407    |  4     (((■■){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  408    |  4     (((■■){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  409    |  4     (((■■){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  410    |  4     (((■■){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  411    |  4     (((■■){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  412    |  4     (((■■){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  413    |  4     (((■■){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  414    |  4     (((■■){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  415    |  4     (((■■){1}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  416    |  4     (((■■){1}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  417    |  4     (((■■){1}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  418    |  4     (((■■){1}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  419    |  4     (((■■){1}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  420    |  4     (((■■){1}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  421    |  4     (((■■){1}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  422    |  4     (((■■){1}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  423    |  4     (((■■){1}W|([21-1]){2}M)|■Y)fail dotstar or empty
  424    |  4     (((■■){1}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  425    |  4     ((((■■)■){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  426    |  4     ((((■■)■){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  427    |  4     ((((■■)■){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  428    |  4     ((((■■)■){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  429    |  4     ((((■■)■){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  430    |  4     ((((■■)■){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  431    |  4     ((((■■)■){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  432    |  4     ((((■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  433    |  4     (((((■■)■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  434    |  4     (((((■|■)■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  435    |  4     (((((■){■}■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  436    |  4     ((((■■)(■■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  437    |  4     ((((■■)(■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  438    |  4     ((((■■)(■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  439    |  4     ((((■|■)■){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  440    |  4     ((((■|■)■){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  441    |  4     ((((■|■)■){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  442    |  4     ((((■|■)■){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  443    |  4     ((((■|■)■){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  444    |  4     ((((■|■)■){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  445    |  4     ((((■|■)■){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  446    |  4     ((((■■|■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  447    |  4     (((((■|■)|■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  448    |  4     (((((■){■}|■)■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  449    |  4     ((((■|■)(■■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  450    |  4     ((((■|■)(■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  451    |  4     ((((■|■)(■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  452    |  4     ((((■){■}■){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  453    |  4     ((((■){■}■){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  454    |  4     ((((■){■}■){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  455    |  4     ((((■){■}■){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  456    |  4     ((((■){■}■){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  457    |  4     ((((■){■}■){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  458    |  4     ((((■){■}■){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  459    |  4     ((((■■){■}■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  460    |  4     (((((■|■)){■}■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  461    |  4     (((((■){■}){■}■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  462    |  4     ((((■){■}(■■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  463    |  4     ((((■){■}(■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  464    |  4     ((((■){■}(■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  465    |  4     ((((■|■)){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  466    |  4     ((((■|■)){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  467    |  4     ((((■|■)){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  468    |  4     ((((■|■)){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  469    |  4     ((((■|■)){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  470    |  4     ((((■|■)){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  471    |  4     ((((■|■)){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  472    |  4     ((((■|■)){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  473    |  4     ((((■|■)){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  474    |  4     ((((■|■)){1}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  475    |  4     ((((■|■)){1}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  476    |  4     ((((■|■)){1}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  477    |  4     ((((■|■)){1}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  478    |  4     ((((■|■)){1}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  479    |  4     ((((■|■)){1}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  480    |  4     ((((■|■)){1}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  481    |  4     ((((■|■)){1}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  482    |  4     ((((■|■)){1}W|([21-1]){2}M)|■Y)fail dotstar or empty
  483    |  4     ((((■|■)){1}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  484    |  4     ((((■■|■)){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  485    |  4     ((((■■|■)){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  486    |  4     ((((■■|■)){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  487    |  4     ((((■■|■)){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  488    |  4     ((((■■|■)){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  489    |  4     ((((■■|■)){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  490    |  4     ((((■■|■)){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  491    |  4     (((((■■)■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  492    |  4     (((((■|■)■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  493    |  4     (((((■){■}■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  494    |  4     ((((■■|■■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  495    |  4     ((((■■|(■|■))){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  496    |  4     ((((■■|(■){■})){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  497    |  4     (((((■|■)|■)){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  498    |  4     (((((■|■)|■)){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  499    |  4     (((((■|■)|■)){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  500    |  4     (((((■|■)|■)){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  501    |  4     (((((■|■)|■)){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  502    |  4     (((((■|■)|■)){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  503    |  4     (((((■|■)|■)){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  504    |  4     (((((■■|■)|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  505    |  4     ((((((■|■)|■)|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail solve
  506    |  4     ((((((■){■}|■)|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  507    |  4     (((((■|■)|■■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  508    |  4     (((((■|■)|(■|■))){1}W|([21-1]){2}M)|([1-2]){1}Y)fail solve
  509    |  4     (((((■|■)|(■){■})){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  510    |  4     (((((■){■}|■)){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  511    |  4     (((((■){■}|■)){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  512    |  4     (((((■){■}|■)){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  513    |  4     (((((■){■}|■)){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  514    |  4     (((((■){■}|■)){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  515    |  4     (((((■){■}|■)){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  516    |  4     (((((■){■}|■)){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  517    |  4     (((((■■){■}|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  518    |  4     ((((((■|■)){■}|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  519    |  4     ((((((■){■}){■}|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  520    |  4     (((((■){■}|■■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  521    |  4     (((((■){■}|(■|■))){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  522    |  4     (((((■){■}|(■){■})){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  523    |  4     ((((■){■}){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  524    |  4     ((((■){■}){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  525    |  4     ((((■){■}){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  526    |  4     ((((■){■}){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  527    |  4     ((((■){■}){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  528    |  4     ((((■){■}){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  529    |  4     ((((■){■}){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  530    |  4     ((((■){■}){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  531    |  4     ((((■){■}){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  532    |  4     ((((■){■}){1}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  533    |  4     ((((■){■}){1}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  534    |  4     ((((■){■}){1}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  535    |  4     ((((■){■}){1}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  536    |  4     ((((■){■}){1}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  537    |  4     ((((■){■}){1}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  538    |  4     ((((■){■}){1}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  539    |  4     ((((■){■}){1}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  540    |  4     ((((■){■}){1}W|([21-1]){2}M)|■Y)fail dotstar or empty
  541    |  4     ((((■){■}){1}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  542    |  4     ((((■■){■}){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  543    |  4     ((((■■){■}){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  544    |  4     ((((■■){■}){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  545    |  4     ((((■■){■}){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  546    |  4     ((((■■){■}){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  547    |  4     ((((■■){■}){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  548    |  4     ((((■■){■}){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  549    |  4     (((((■■)■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  550    |  4     (((((■|■)■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  551    |  4     (((((■){■}■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  552    |  4     (((((■|■)){■}){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  553    |  4     (((((■|■)){■}){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  554    |  4     (((((■|■)){■}){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  555    |  4     (((((■|■)){■}){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  556    |  4     (((((■|■)){■}){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  557    |  4     (((((■|■)){■}){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  558    |  4     (((((■|■)){■}){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  559    |  4     (((((■■|■)){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  560    |  4     ((((((■|■)|■)){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  561    |  4     ((((((■){■}|■)){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  562    |  4     (((((■){■}){■}){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  563    |  4     (((((■){■}){■}){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  564    |  4     (((((■){■}){■}){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  565    |  4     (((((■){■}){■}){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  566    |  4     (((((■){■}){■}){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  567    |  4     (((((■){■}){■}){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  568    |  4     (((((■){■}){■}){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  569    |  4     (((((■■){■}){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  570    |  4     ((((((■|■)){■}){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  571    |  4     ((((((■){■}){■}){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  572    |  4     ((([0-2]){■}■|(■){■}M)|([1-2]){1}Y)fail dot
  573    |  4     ((([0-2]){■}■|(■){2}■)|([1-2]){1}Y)fail dot
  574    |  4     ((([0-2]){■}■|(■){2}M)|(■){1}Y)fail dot
  575    |  4     ((([0-2]){■}■|(■){2}M)|([1-2]){■}Y)fail dot
  576    |  4     ((([0-2]){■}■|(■){2}M)|([1-2]){1}■)fail dot
  577    |  4     ((([0-2]){■}■|■M)|([1-2]){1}Y)fail dot
  578    |  4     ((([0-2]){■}(■■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  579    |  4     ((([0-2]){■}(■|■)|(■){2}M)|([1-2]){1}Y)fail dot
  580    |  4     ((([0-2]){■}(■){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  581    |  4     ((([0-2]){■}■|(■■){2}M)|([1-2]){1}Y)fail dot
  582    |  4     ((([0-2]){■}■|((■|■)){2}M)|([1-2]){1}Y)fail dot
  583    |  4     ((([0-2]){■}■|((■){■}){2}M)|([1-2]){1}Y)fail dot
  584    |  4     ((([0-2]){■}■|([21-1]){■}■)|([1-2]){1}Y)fail dot
  585    |  4     ((([0-2]){■}■|([21-1]){■}M)|(■){1}Y)fail dot
  586    |  4     ((([0-2]){■}■|([21-1]){■}M)|([1-2]){■}Y)fail dot
  587    |  4     ((([0-2]){■}■|([21-1]){■}M)|([1-2]){1}■)fail dot
  588    |  4     ((([0-2]){■}(■■)|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  589    |  4     ((([0-2]){■}(■|■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  590    |  4     ((([0-2]){■}(■){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  591    |  4     ((([0-2]){■}■|([21-1]){2}■)|(■){1}Y)fail dot
  592    |  4     ((([0-2]){■}■|([21-1]){2}■)|([1-2]){■}Y)fail dot
  593    |  4     ((([0-2]){■}■|([21-1]){2}■)|([1-2]){1}■)fail dot
  594    |  4     ((([0-2]){■}(■■)|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  595    |  4     ((([0-2]){■}(■|■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  596    |  4     ((([0-2]){■}(■){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  597    |  4     ((([0-2]){■}■|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  598    |  4     ((([0-2]){■}■|([21-1]){2}(■|■))|([1-2]){1}Y)fail dot
  599    |  4     ((([0-2]){■}■|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  600    |  4     ((([0-2]){■}■|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  601    |  4     ((([0-2]){■}■|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  602    |  4     ((([0-2]){■}■|([21-1]){2}M)|■Y)fail dotstar or empty
  603    |  4     ((([0-2]){■}■|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  604    |  4     ((([0-2]){■}W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  605    |  4     ((([0-2]){■}W|(■){■}M)|(■){1}Y)fail dotstar or empty
  606    |  4     ((([0-2]){■}W|(■){■}M)|([1-2]){■}Y)fail dotstar or empty
  607    |  4     ((([0-2]){■}W|(■){■}M)|([1-2]){1}■)fail dotstar or empty
  608    |  4     ((([0-2]){■}W|(■){2}■)|(■){1}Y)fail dot
  609    |  4     ((([0-2]){■}W|(■){2}■)|([1-2]){■}Y)fail dot
  610    |  4     ((([0-2]){■}W|(■){2}■)|([1-2]){1}■)fail dot
  611    |  4     ((([0-2]){■}W|■■)|([1-2]){1}Y)fail dot
  612    |  4     ((([0-2]){■}W|(■■){2}■)|([1-2]){1}Y)fail dot
  613    |  4     ((([0-2]){■}W|((■|■)){2}■)|([1-2]){1}Y)fail dot
  614    |  4     ((([0-2]){■}W|((■){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  615    |  4     ((([0-2]){■}W|(■){2}(■■))|([1-2]){1}Y)fail dot
  616    |  4     ((([0-2]){■}W|(■){2}(■|■))|([1-2]){1}Y)fail dot
  617    |  4     ((([0-2]){■}W|(■){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  618    |  4     ((([0-2]){■}W|(■){2}M)|(■){■}Y)fail dotstar or empty
  619    |  4     ((([0-2]){■}W|(■){2}M)|(■){1}■)  unsatisfiable SAT formula       
  620    |  4     ((([0-2]){■}W|■M)|(■){1}Y)fail dotstar or empty
  621    |  4     ((([0-2]){■}W|(■){2}M)|■Y)fail dotstar or empty
  622    |  4     ((([0-2]){■}W|(■){2}M)|([1-2]){■}■)fail dot
  623    |  4     ((([0-2]){■}W|■M)|([1-2]){■}Y)fail dotstar or empty
  624    |  4     ((([0-2]){■}W|■M)|([1-2]){1}■)fail dotstar or empty
  625    |  4     ((([0-2]){■}W|([21-1]){■}■)|(■){1}Y)fail dot
  626    |  4     ((([0-2]){■}W|([21-1]){■}■)|([1-2]){■}Y)fail dot
  627    |  4     ((([0-2]){■}W|([21-1]){■}■)|([1-2]){1}■)fail dot
  628    |  4     ((([0-2]){■}W|([21-1]){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  629    |  4     ((([0-2]){■}W|([21-1]){■}(■|■))|([1-2]){1}Y)fail dot
  630    |  4     ((([0-2]){■}W|([21-1]){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  631    |  4     ((([0-2]){■}W|([21-1]){■}M)|(■){■}Y)fail dotstar or empty
  632    |  4     ((([0-2]){■}W|([21-1]){■}M)|(■){1}■)fail dot
  633    |  4     ((([0-2]){■}W|([21-1]){■}M)|■Y)fail dotstar or empty
  634    |  4     ((([0-2]){■}W|([21-1]){■}M)|([1-2]){■}■)fail dot
  635    |  4     ((([0-2]){■}W|([21-1]){2}■)|(■){■}Y)fail dotstar or empty
  636    |  4     ((([0-2]){■}W|([21-1]){2}■)|(■){1}■)fail dot
  637    |  4     ((([0-2]){■}W|([21-1]){2}■)|■Y)fail dotstar or empty
  638    |  4     ((([0-2]){■}W|([21-1]){2}■)|([1-2]){■}■)fail dot
  639    |  4     ((([0-2]){■}W|([21-1]){2}M)|(■){■}■)fail dotstar or empty
  640    |  4     ((([0-2]){■}W|([21-1]){2}M)|■■)fail dotstar or empty
  641    |  4     ((([0-2]){1}■|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  642    |  4     ((([0-2]){1}■|(■){■}M)|(■){1}Y)fail dotstar or empty
  643    |  4     ((([0-2]){1}■|(■){■}M)|([1-2]){■}Y)fail dotstar or empty
  644    |  4     ((([0-2]){1}■|(■){■}M)|([1-2]){1}■)fail dotstar or empty
  645    |  4     ((([0-2]){1}■|(■){2}■)|(■){1}Y)fail dot
  646    |  4     ((([0-2]){1}■|(■){2}■)|([1-2]){■}Y)fail dot
  647    |  4     ((([0-2]){1}■|(■){2}■)|([1-2]){1}■)fail dot
  648    |  4     ((([0-2]){1}■|■■)|([1-2]){1}Y)fail dot
  649    |  4     ((([0-2]){1}(■■)|(■){2}■)|([1-2]){1}Y)fail dot
  650    |  4     ((([0-2]){1}(■|■)|(■){2}■)|([1-2]){1}Y)fail dot
  651    |  4     ((([0-2]){1}(■){■}|(■){2}■)|([1-2]){1}Y)fail dot
  652    |  4     ((([0-2]){1}■|(■■){2}■)|([1-2]){1}Y)fail dot
  653    |  4     ((([0-2]){1}■|((■|■)){2}■)|([1-2]){1}Y)fail dot
  654    |  4     ((([0-2]){1}■|((■){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  655    |  4     ((([0-2]){1}■|(■){2}(■■))|([1-2]){1}Y)fail dot
  656    |  4     ((([0-2]){1}■|(■){2}(■|■))|([1-2]){1}Y)fail dot
  657    |  4     ((([0-2]){1}■|(■){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  658    |  4     ((([0-2]){1}■|(■){2}M)|(■){■}Y)fail dotstar or empty
  659    |  4     ((([0-2]){1}■|(■){2}M)|(■){1}■)  unsatisfiable SAT formula       
  660    |  4     ((([0-2]){1}■|■M)|(■){1}Y)fail dotstar or empty
  661    |  4     ((([0-2]){1}■|(■){2}M)|■Y)fail dotstar or empty
  662    |  4     ((([0-2]){1}■|(■){2}M)|([1-2]){■}■)fail dot
  663    |  4     ((([0-2]){1}■|■M)|([1-2]){■}Y)fail dotstar or empty
  664    |  4     ((([0-2]){1}■|■M)|([1-2]){1}■)fail dotstar or empty
  665    |  4     ((([0-2]){1}■|([21-1]){■}■)|(■){1}Y)fail dot
  666    |  4     ((([0-2]){1}■|([21-1]){■}■)|([1-2]){■}Y)fail dot
  667    |  4     ((([0-2]){1}■|([21-1]){■}■)|([1-2]){1}■)fail dot
  668    |  4     ((([0-2]){1}(■■)|([21-1]){■}■)|([1-2]){1}Y)fail dot
  669    |  4     ((([0-2]){1}(■|■)|([21-1]){■}■)|([1-2]){1}Y)fail dot
  670    |  4     ((([0-2]){1}(■){■}|([21-1]){■}■)|([1-2]){1}Y)fail dot
  671    |  4     ((([0-2]){1}■|([21-1]){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  672    |  4     ((([0-2]){1}■|([21-1]){■}(■|■))|([1-2]){1}Y)fail dot
  673    |  4     ((([0-2]){1}■|([21-1]){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  674    |  4     ((([0-2]){1}■|([21-1]){■}M)|(■){■}Y)fail dotstar or empty
  675    |  4     ((([0-2]){1}■|([21-1]){■}M)|(■){1}■)fail dot
  676    |  4     ((([0-2]){1}■|([21-1]){■}M)|■Y)fail dotstar or empty
  677    |  4     ((([0-2]){1}■|([21-1]){■}M)|([1-2]){■}■)fail dot
  678    |  4     ((([0-2]){1}■|([21-1]){2}■)|(■){■}Y)fail dotstar or empty
  679    |  4     ((([0-2]){1}■|([21-1]){2}■)|(■){1}■)fail dot
  680    |  4     ((([0-2]){1}■|([21-1]){2}■)|■Y)fail dotstar or empty
  681    |  4     ((([0-2]){1}■|([21-1]){2}■)|([1-2]){■}■)fail dot
  682    |  4     ((([0-2]){1}■|([21-1]){2}M)|(■){■}■)fail dotstar or empty
  683    |  4     ((([0-2]){1}■|([21-1]){2}M)|■■)fail dotstar or empty
  684    |  4     ((([0-2]){1}W|(■){■}■)|(■){1}Y)  unsatisfiable SAT formula       
  685    |  4     ((([0-2]){1}W|(■){■}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  686    |  4     ((([0-2]){1}W|(■){■}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  687    |  4     ((([0-2]){1}W|(■■){■}■)|([1-2]){1}Y)fail dot
  688    |  4     ((([0-2]){1}W|((■|■)){■}■)|([1-2]){1}Y)fail solve
  689    |  4     ((([0-2]){1}W|((■){■}){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  690    |  4     ((([0-2]){1}W|(■){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  691    |  4     ((([0-2]){1}W|(■){■}(■|■))|([1-2]){1}Y)fail solve
  692    |  4     ((([0-2]){1}W|(■){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  693    |  4     ((([0-2]){1}W|(■){■}M)|(■){■}Y)fail dotstar or empty
  694    |  4     ((([0-2]){1}W|(■){■}M)|(■){1}■)  unsatisfiable SAT formula       
  695    |  4     ((([0-2]){1}W|(■){■}M)|■Y)fail dotstar or empty
  696    |  4     ((([0-2]){1}W|(■){■}M)|([1-2]){■}■)fail dot
  697    |  4     ((([0-2]){1}W|(■){2}■)|(■){■}Y)fail dot
  698    |  4     ((([0-2]){1}W|(■){2}■)|(■){1}■)  unsatisfiable SAT formula       
  699    |  4     ((([0-2]){1}W|■■)|(■){1}Y)fail dot
  700    |  4     ((([0-2]){1}W|(■){2}■)|■Y)fail dot
  701    |  4     ((([0-2]){1}W|(■■){2}■)|(■){1}Y)fail dot
  702    |  4     ((([0-2]){1}W|((■|■)){2}■)|(■){1}Y)fail dot
  703    |  4     ((([0-2]){1}W|((■){■}){2}■)|(■){1}Y)  unsatisfiable SAT formula       
  704    |  4     ((([0-2]){1}W|(■){2}(■■))|(■){1}Y)fail dot
  705    |  4     ((([0-2]){1}W|(■){2}(■|■))|(■){1}Y)fail dot
  706    |  4     ((([0-2]){1}W|(■){2}(■){■})|(■){1}Y)  unsatisfiable SAT formula       
  707    |  4     ((([0-2]){1}W|(■){2}■)|(■■){1}Y)fail dot
  708    |  4     ((([0-2]){1}W|(■){2}■)|((■|■)){1}Y)fail dot
  709    |  4     ((([0-2]){1}W|(■){2}■)|((■){■}){1}Y)fail dot
  710    |  4     ((([0-2]){1}W|(■){2}■)|([1-2]){■}■)fail dot
  711    |  4     ((([0-2]){1}W|■■)|([1-2]){■}Y)fail dot
  712    |  4     ((([0-2]){1}W|(■■){2}■)|([1-2]){■}Y)fail dot
  713    |  4     ((([0-2]){1}W|((■|■)){2}■)|([1-2]){■}Y)fail dot
  714    |  4     ((([0-2]){1}W|((■){■}){2}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  715    |  4     ((([0-2]){1}W|(■){2}(■■))|([1-2]){■}Y)fail dot
  716    |  4     ((([0-2]){1}W|(■){2}(■|■))|([1-2]){■}Y)fail dot
  717    |  4     ((([0-2]){1}W|(■){2}(■){■})|([1-2]){■}Y)  unsatisfiable SAT formula       
  718    |  4     ((([0-2]){1}W|■■)|([1-2]){1}■)fail dot
  719    |  4     ((([0-2]){1}W|(■■){2}■)|([1-2]){1}■)fail dot
  720    |  4     ((([0-2]){1}W|((■|■)){2}■)|([1-2]){1}■)fail dot
  721    |  4     ((([0-2]){1}W|((■){■}){2}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  722    |  4     ((([0-2]){1}W|(■){2}(■■))|([1-2]){1}■)fail dot
  723    |  4     ((([0-2]){1}W|(■){2}(■|■))|([1-2]){1}■)fail dot
  724    |  4     ((([0-2]){1}W|(■){2}(■){■})|([1-2]){1}■)  unsatisfiable SAT formula       
  725    |  4     ((([0-2]){1}W|(■){2}■)|([1-2]){1}(■■))fail dot
  726    |  4     ((([0-2]){1}W|(■){2}■)|([1-2]){1}(■|■))fail dot
  727    |  4     ((([0-2]){1}W|(■){2}■)|([1-2]){1}(■){■})fail dot
  728    |  4     ((([0-2]){1}W|■)|([1-2]){1}Y)fail dot
  729    |  4     ((([0-2]){1}W|(■■)■)|([1-2]){1}Y)fail dot
  730    |  4     ((([0-2]){1}W|(■|■)■)|([1-2]){1}Y)fail dot
  731    |  4     ((([0-2]){1}W|((■■)■){2}■)|([1-2]){1}Y)fail dot
  732    |  4     ((([0-2]){1}W|((■|■)■){2}■)|([1-2]){1}Y)fail dot
  733    |  4     ((([0-2]){1}W|((■){■}■){2}■)|([1-2]){1}Y)fail dot
  734    |  4     ((([0-2]){1}W|(■■){2}(■■))|([1-2]){1}Y)fail dot
  735    |  4     ((([0-2]){1}W|(■■){2}(■|■))|([1-2]){1}Y)fail dot
  736    |  4     ((([0-2]){1}W|(■■){2}(■){■})|([1-2]){1}Y)fail dot
  737    |  4     ((([0-2]){1}W|((■■|■)){2}■)|([1-2]){1}Y)fail dot
  738    |  4     ((([0-2]){1}W|(((■|■)|■)){2}■)|([1-2]){1}Y)fail dot
  739    |  4     ((([0-2]){1}W|(((■){■}|■)){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  740    |  4     ((([0-2]){1}W|((■|■)){2}(■■))|([1-2]){1}Y)fail dot
  741    |  4     ((([0-2]){1}W|((■|■)){2}(■|■))|([1-2]){1}Y)fail dot
  742    |  4     ((([0-2]){1}W|((■|■)){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  743    |  4     ((([0-2]){1}W|((■■){■}){2}■)|([1-2]){1}Y)fail dot
  744    |  4     ((([0-2]){1}W|(((■|■)){■}){2}■)|([1-2]){1}Y)fail solve
  745    |  4     ((([0-2]){1}W|(((■){■}){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  746    |  4     ((([0-2]){1}W|((■){■}){2}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  747    |  4     ((([0-2]){1}W|((■){■}){2}(■|■))|([1-2]){1}Y)fail solve
  748    |  4     ((([0-2]){1}W|((■){■}){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  749    |  4     ((([0-2]){1}W|(■){2}(■))|([1-2]){1}Y)fail dot
  750    |  4     ((([0-2]){1}W|(■){2}((■■)■))|([1-2]){1}Y)fail dot
  751    |  4     ((([0-2]){1}W|(■){2}((■|■)■))|([1-2]){1}Y)fail dot
  752    |  4     ((([0-2]){1}W|(■){2}((■){■}■))|([1-2]){1}Y)fail dot
  753    |  4     ((([0-2]){1}W|(■){2}(■■|■))|([1-2]){1}Y)fail dot
  754    |  4     ((([0-2]){1}W|(■){2}((■|■)|■))|([1-2]){1}Y)fail dot
  755    |  4     ((([0-2]){1}W|(■){2}((■){■}|■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  756    |  4     ((([0-2]){1}W|(■){2}(■■){■})|([1-2]){1}Y)fail dot
  757    |  4     ((([0-2]){1}W|(■){2}((■|■)){■})|([1-2]){1}Y)fail solve
  758    |  4     ((([0-2]){1}W|(■){2}((■){■}){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  759    |  4     ((([0-2]){1}W|(■){2}M)|(■){■}■)  unsatisfiable SAT formula       
  760    |  4     ((([0-2]){1}W|■M)|(■){■}Y)fail dotstar or empty
  761    |  4     ((([0-2]){1}W|■M)|(■){1}■)fail dot
  762    |  4     ((([0-2]){1}W|(■){2}M)|■■)  unsatisfiable SAT formula       
  763    |  4     ((([0-2]){1}W|(■■){2}M)|(■){1}■)fail dot
  764    |  4     ((([0-2]){1}W|((■|■)){2}M)|(■){1}■)fail solve
  765    |  4     ((([0-2]){1}W|((■){■}){2}M)|(■){1}■)  unsatisfiable SAT formula       
  766    |  4     ((([0-2]){1}W|(■){2}M)|(■■){1}■)fail dot
  767    |  4     ((([0-2]){1}W|(■){2}M)|((■|■)){1}■)fail solve
  768    |  4     ((([0-2]){1}W|(■){2}M)|((■){■}){1}■)  unsatisfiable SAT formula       
  769    |  4     ((([0-2]){1}W|(■){2}M)|(■){1}(■■))fail dot
  770    |  4     ((([0-2]){1}W|(■){2}M)|(■){1}(■|■))fail solve
  771    |  4     ((([0-2]){1}W|(■){2}M)|(■){1}(■){■})  unsatisfiable SAT formula       
  772    |  4     ((([0-2]){1}W|■M)|■Y)   fail dotstar or empty
  773    |  4     ((([0-2]){1}W|■M)|([1-2]){■}■)fail dot
  774    |  4     ((([0-2]){1}W|(■■){2}M)|([1-2]){■}■)fail dot
  775    |  4     ((([0-2]){1}W|((■|■)){2}M)|([1-2]){■}■)fail dot
  776    |  4     ((([0-2]){1}W|((■){■}){2}M)|([1-2]){■}■)fail dot
  777    |  4     ((([0-2]){1}W|(■){2}M)|([1-2]){■}(■■))  unsatisfiable SAT formula       
  778    |  4     ((([0-2]){1}W|(■){2}M)|([1-2]){■}(■|■))fail dot
  779    |  4     ((([0-2]){1}W|(■){2}M)|([1-2]){■}(■){■})  unsatisfiable SAT formula       
  780    |  4     ((([0-2]){1}W|([21-1]){■}■)|(■){■}Y)fail dot
  781    |  4     ((([0-2]){1}W|([21-1]){■}■)|(■){1}■)fail dot
  782    |  4     ((([0-2]){1}W|([21-1]){■}■)|■Y)fail dot
  783    |  4     ((([0-2]){1}W|([21-1]){■}(■■))|(■){1}Y)  unsatisfiable SAT formula       
  784    |  4     ((([0-2]){1}W|([21-1]){■}(■|■))|(■){1}Y)fail dot
  785    |  4     ((([0-2]){1}W|([21-1]){■}(■){■})|(■){1}Y)  unsatisfiable SAT formula       
  786    |  4     ((([0-2]){1}W|([21-1]){■}■)|(■■){1}Y)fail dot
  787    |  4     ((([0-2]){1}W|([21-1]){■}■)|((■|■)){1}Y)fail dot
  788    |  4     ((([0-2]){1}W|([21-1]){■}■)|((■){■}){1}Y)fail dot
  789    |  4     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){■}■)fail dot
  790    |  4     ((([0-2]){1}W|([21-1]){■}(■■))|([1-2]){■}Y)  unsatisfiable SAT formula       
  791    |  4     ((([0-2]){1}W|([21-1]){■}(■|■))|([1-2]){■}Y)fail dot
  792    |  4     ((([0-2]){1}W|([21-1]){■}(■){■})|([1-2]){■}Y)  unsatisfiable SAT formula       
  793    |  4     ((([0-2]){1}W|([21-1]){■}(■■))|([1-2]){1}■)  unsatisfiable SAT formula       
  794    |  4     ((([0-2]){1}W|([21-1]){■}(■|■))|([1-2]){1}■)fail dot
  795    |  4     ((([0-2]){1}W|([21-1]){■}(■){■})|([1-2]){1}■)  unsatisfiable SAT formula       
  796    |  4     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){1}(■■))fail dot
  797    |  4     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){1}(■|■))fail dot
  798    |  4     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){1}(■){■})fail dot
  799    |  4     ((([0-2]){1}W|([21-1]){■}(■))|([1-2]){1}Y)fail dot
  800    |  4     ((([0-2]){1}W|([21-1]){■}((■■)■))|([1-2]){1}Y)fail dot
  801    |  4     ((([0-2]){1}W|([21-1]){■}((■|■)■))|([1-2]){1}Y)fail solve
  802    |  4     ((([0-2]){1}W|([21-1]){■}((■){■}■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  803    |  4     ((([0-2]){1}W|([21-1]){■}(■■|■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  804    |  4     ((([0-2]){1}W|([21-1]){■}((■|■)|■))|([1-2]){1}Y)fail dot
  805    |  4     ((([0-2]){1}W|([21-1]){■}((■){■}|■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  806    |  4     ((([0-2]){1}W|([21-1]){■}(■■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  807    |  4     ((([0-2]){1}W|([21-1]){■}((■|■)){■})|([1-2]){1}Y)fail solve
  808    |  4     ((([0-2]){1}W|([21-1]){■}((■){■}){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  809    |  4     ((([0-2]){1}W|([21-1]){■}M)|(■){■}■)  unsatisfiable SAT formula       
  810    |  4     ((([0-2]){1}W|([21-1]){■}M)|■■)fail dot
  811    |  4     ((([0-2]){1}W|([21-1]){■}M)|(■■){1}■)fail dot
  812    |  4     ((([0-2]){1}W|([21-1]){■}M)|((■|■)){1}■)fail dot
  813    |  4     ((([0-2]){1}W|([21-1]){■}M)|((■){■}){1}■)  unsatisfiable SAT formula       
  814    |  4     ((([0-2]){1}W|([21-1]){■}M)|(■){1}(■■))fail dot
  815    |  4     ((([0-2]){1}W|([21-1]){■}M)|(■){1}(■|■))fail dot
  816    |  4     ((([0-2]){1}W|([21-1]){■}M)|(■){1}(■){■})  unsatisfiable SAT formula       
  817    |  4     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}(■■))  unsatisfiable SAT formula       
  818    |  4     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}(■|■))fail dot
  819    |  4     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}(■){■})  unsatisfiable SAT formula       
  820    |  4     ((([0-2]){1}W|([21-1]){2}■)|(■){■}■)  unsatisfiable SAT formula       
  821    |  4     ((([0-2]){1}W|([21-1]){2}■)|■■)fail dot
  822    |  4     ((([0-2]){1}W|([21-1]){2}(■■))|(■){1}■)fail dot
  823    |  4     ((([0-2]){1}W|([21-1]){2}(■|■))|(■){1}■)fail dot
  824    |  4     ((([0-2]){1}W|([21-1]){2}(■){■})|(■){1}■)fail dot
  825    |  4     ((([0-2]){1}W|([21-1]){2}■)|(■■){1}■)fail dot
  826    |  4     ((([0-2]){1}W|([21-1]){2}■)|((■|■)){1}■)fail dot
  827    |  4     ((([0-2]){1}W|([21-1]){2}■)|((■){■}){1}■)  unsatisfiable SAT formula       
  828    |  4     ((([0-2]){1}W|([21-1]){2}■)|(■){1}(■■))fail dot
  829    |  4     ((([0-2]){1}W|([21-1]){2}■)|(■){1}(■|■))fail dot
  830    |  4     ((([0-2]){1}W|([21-1]){2}■)|(■){1}(■){■})  unsatisfiable SAT formula       
  831    |  4     ((([0-2]){1}W|([21-1]){2}(■■))|([1-2]){■}■)fail dot
  832    |  4     ((([0-2]){1}W|([21-1]){2}(■|■))|([1-2]){■}■)fail dot
  833    |  4     ((([0-2]){1}W|([21-1]){2}(■){■})|([1-2]){■}■)fail dot
  834    |  4     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}(■■))  unsatisfiable SAT formula       
  835    |  4     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}(■|■))fail dot
  836    |  4     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}(■){■})  unsatisfiable SAT formula       
  837    |  4     ((([0-2]){1}W|([21-1]){2}M)|■)fail dotstar or empty
  838    |  5     (((■){■}■|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  839    |  5     (((■){■}■|(■){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  840    |  5     (((■){■}■|(■){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  841    |  5     (((■){■}■|(■){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  842    |  5     (((■){■}■|(■){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  843    |  5     (((■){■}■|■M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  844    |  5     (((■■){■}■|(■){2}M)|([1-2]){1}Y)fail dot
  845    |  5     ((((■|■)){■}■|(■){2}M)|([1-2]){1}Y)fail solve
  846    |  5     ((((■){■}){■}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  847    |  5     (((■){■}(■■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  848    |  5     (((■){■}(■|■)|(■){2}M)|([1-2]){1}Y)fail solve
  849    |  5     (((■){■}(■){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  850    |  5     (((■){■}■|(■■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  851    |  5     (((■){■}■|((■|■)){2}M)|([1-2]){1}Y)fail solve
  852    |  5     (((■){■}■|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  853    |  5     (((■){■}■|([21-1]){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  854    |  5     (((■){■}■|([21-1]){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  855    |  5     (((■){■}■|([21-1]){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  856    |  5     (((■){■}■|([21-1]){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  857    |  5     (((■■){■}■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  858    |  5     ((((■|■)){■}■|([21-1]){■}M)|([1-2]){1}Y)fail solve
  859    |  5     ((((■){■}){■}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  860    |  5     (((■){■}(■■)|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  861    |  5     (((■){■}(■|■)|([21-1]){■}M)|([1-2]){1}Y)fail solve
  862    |  5     (((■){■}(■){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  863    |  5     (((■){■}■|([21-1]){2}■)|(■){1}Y)  unsatisfiable SAT formula       
  864    |  5     (((■){■}■|([21-1]){2}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  865    |  5     (((■){■}■|([21-1]){2}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  866    |  5     (((■■){■}■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  867    |  5     ((((■|■)){■}■|([21-1]){2}■)|([1-2]){1}Y)fail solve
  868    |  5     ((((■){■}){■}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  869    |  5     (((■){■}(■■)|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  870    |  5     (((■){■}(■|■)|([21-1]){2}■)|([1-2]){1}Y)fail solve
  871    |  5     (((■){■}(■){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  872    |  5     (((■){■}■|([21-1]){2}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  873    |  5     (((■){■}■|([21-1]){2}(■|■))|([1-2]){1}Y)fail solve
  874    |  5     (((■){■}■|([21-1]){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  875    |  5     (((■){■}■|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  876    |  5     (((■){■}■|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  877    |  5     (((■){■}■|([21-1]){2}M)|■Y)fail dotstar or empty
  878    |  5     (((■){■}■|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  879    |  5     (((■){■}W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  880    |  5     (((■){■}W|(■){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  881    |  5     (((■){■}W|(■){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  882    |  5     (((■){■}W|(■){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  883    |  5     (((■■){■}W|(■){■}M)|([1-2]){1}Y)fail dot
  884    |  5     ((((■|■)){■}W|(■){■}M)|([1-2]){1}Y)fail solve
  885    |  5     ((((■){■}){■}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  886    |  5     (((■){■}W|(■■){■}M)|([1-2]){1}Y)fail dot
  887    |  5     (((■){■}W|((■|■)){■}M)|([1-2]){1}Y)fail solve
  888    |  5     (((■){■}W|((■){■}){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  889    |  5     (((■){■}W|(■){2}■)|(■){1}Y)fail dot
  890    |  5     (((■){■}W|(■){2}■)|([1-2]){■}Y)fail dot
  891    |  5     (((■){■}W|(■){2}■)|([1-2]){1}■)fail dot
  892    |  5     (((■){■}W|■■)|([1-2]){1}Y)fail dot
  893    |  5     (((■■){■}W|(■){2}■)|([1-2]){1}Y)fail dot
  894    |  5     ((((■|■)){■}W|(■){2}■)|([1-2]){1}Y)fail dot
  895    |  5     ((((■){■}){■}W|(■){2}■)|([1-2]){1}Y)fail dot
  896    |  5     (((■){■}W|(■■){2}■)|([1-2]){1}Y)fail dot
  897    |  5     (((■){■}W|((■|■)){2}■)|([1-2]){1}Y)fail dot
  898    |  5     (((■){■}W|((■){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  899    |  5     (((■){■}W|(■){2}(■■))|([1-2]){1}Y)fail dot
  900    |  5     (((■){■}W|(■){2}(■|■))|([1-2]){1}Y)fail dot
  901    |  5     (((■){■}W|(■){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  902    |  5     (((■){■}W|(■){2}M)|(■){■}Y)fail dot
  903    |  5     (((■){■}W|(■){2}M)|(■){1}■)  unsatisfiable SAT formula       
  904    |  5     (((■){■}W|■M)|(■){1}Y)  fail dot
  905    |  5     (((■){■}W|(■){2}M)|■Y)  fail dot
  906    |  5     (((■■){■}W|(■){2}M)|(■){1}Y)fail dot
  907    |  5     ((((■|■)){■}W|(■){2}M)|(■){1}Y)fail dot
  908    |  5     ((((■){■}){■}W|(■){2}M)|(■){1}Y)fail dot
  909    |  5     (((■){■}W|(■■){2}M)|(■){1}Y)fail dot
  910    |  5     (((■){■}W|((■|■)){2}M)|(■){1}Y)fail dot
  911    |  5     (((■){■}W|((■){■}){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  912    |  5     (((■){■}W|(■){2}M)|(■■){1}Y)fail dot
  913    |  5     (((■){■}W|(■){2}M)|((■|■)){1}Y)fail dot
  914    |  5     (((■){■}W|(■){2}M)|((■){■}){1}Y)fail dot
  915    |  5     (((■){■}W|(■){2}M)|([1-2]){■}■)fail dot
  916    |  5     (((■){■}W|■M)|([1-2]){■}Y)fail dot
  917    |  5     (((■■){■}W|(■){2}M)|([1-2]){■}Y)fail dot
  918    |  5     ((((■|■)){■}W|(■){2}M)|([1-2]){■}Y)fail dot
  919    |  5     ((((■){■}){■}W|(■){2}M)|([1-2]){■}Y)fail dot
  920    |  5     (((■){■}W|(■■){2}M)|([1-2]){■}Y)fail dot
  921    |  5     (((■){■}W|((■|■)){2}M)|([1-2]){■}Y)fail dot
  922    |  5     (((■){■}W|((■){■}){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  923    |  5     (((■){■}W|■M)|([1-2]){1}■)fail dot
  924    |  5     (((■■){■}W|(■){2}M)|([1-2]){1}■)fail dot
  925    |  5     ((((■|■)){■}W|(■){2}M)|([1-2]){1}■)fail dot
  926    |  5     ((((■){■}){■}W|(■){2}M)|([1-2]){1}■)fail dot
  927    |  5     (((■){■}W|(■■){2}M)|([1-2]){1}■)fail dot
  928    |  5     (((■){■}W|((■|■)){2}M)|([1-2]){1}■)fail dot
  929    |  5     (((■){■}W|((■){■}){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  930    |  5     (((■){■}W|(■){2}M)|([1-2]){1}(■■))fail dot
  931    |  5     (((■){■}W|(■){2}M)|([1-2]){1}(■|■))fail dot
  932    |  5     (((■){■}W|(■){2}M)|([1-2]){1}(■){■})fail dot
  933    |  5     (((■■){■}W|■M)|([1-2]){1}Y)fail dot
  934    |  5     ((((■|■)){■}W|■M)|([1-2]){1}Y)fail dot
  935    |  5     ((((■){■}){■}W|■M)|([1-2]){1}Y)fail dot
  936    |  5     (((■){■}W|(■■)M)|([1-2]){1}Y)fail dot
  937    |  5     (((■){■}W|(■|■)M)|([1-2]){1}Y)fail dot
  938    |  5     ((((■■)■){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  939    |  5     ((((■|■)■){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  940    |  5     ((((■){■}■){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  941    |  5     (((■■){■}W|(■■){2}M)|([1-2]){1}Y)fail dot
  942    |  5     (((■■){■}W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  943    |  5     (((■■){■}W|((■){■}){2}M)|([1-2]){1}Y)fail dot
  944    |  5     ((((■■|■)){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  945    |  5     (((((■|■)|■)){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  946    |  5     (((((■){■}|■)){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  947    |  5     ((((■|■)){■}W|(■■){2}M)|([1-2]){1}Y)fail dot
  948    |  5     ((((■|■)){■}W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  949    |  5     ((((■|■)){■}W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  950    |  5     ((((■■){■}){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  951    |  5     (((((■|■)){■}){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  952    |  5     (((((■){■}){■}){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  953    |  5     ((((■){■}){■}W|(■■){2}M)|([1-2]){1}Y)fail dot
  954    |  5     ((((■){■}){■}W|((■|■)){2}M)|([1-2]){1}Y)fail dot
  955    |  5     ((((■){■}){■}W|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  956    |  5     (((■){■}W|((■■)■){2}M)|([1-2]){1}Y)fail dot
  957    |  5     (((■){■}W|((■|■)■){2}M)|([1-2]){1}Y)fail dot
  958    |  5     (((■){■}W|((■){■}■){2}M)|([1-2]){1}Y)fail dot
  959    |  5     (((■){■}W|((■■|■)){2}M)|([1-2]){1}Y)fail dot
  960    |  5     (((■){■}W|(((■|■)|■)){2}M)|([1-2]){1}Y)fail dot
  961    |  5     (((■){■}W|(((■){■}|■)){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  962    |  5     (((■){■}W|((■■){■}){2}M)|([1-2]){1}Y)fail dot
  963    |  5     (((■){■}W|(((■|■)){■}){2}M)|([1-2]){1}Y)fail solve
  964    |  5     (((■){■}W|(((■){■}){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  965    |  5     (((■){■}W|([21-1]){■}■)|(■){1}Y)fail dot
  966    |  5     (((■){■}W|([21-1]){■}■)|([1-2]){■}Y)fail dot
  967    |  5     (((■){■}W|([21-1]){■}■)|([1-2]){1}■)fail dot
  968    |  5     (((■■){■}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  969    |  5     ((((■|■)){■}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  970    |  5     ((((■){■}){■}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  971    |  5     (((■){■}W|([21-1]){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  972    |  5     (((■){■}W|([21-1]){■}(■|■))|([1-2]){1}Y)fail dot
  973    |  5     (((■){■}W|([21-1]){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  974    |  5     (((■){■}W|([21-1]){■}M)|(■){■}Y)fail dotstar or empty
  975    |  5     (((■){■}W|([21-1]){■}M)|(■){1}■)fail dot
  976    |  5     (((■){■}W|([21-1]){■}M)|■Y)fail dotstar or empty
  977    |  5     (((■){■}W|([21-1]){■}M)|([1-2]){■}■)fail dot
  978    |  5     (((■){■}W|([21-1]){2}■)|(■){■}Y)fail dotstar or empty
  979    |  5     (((■){■}W|([21-1]){2}■)|(■){1}■)fail dot
  980    |  5     (((■){■}W|([21-1]){2}■)|■Y)fail dotstar or empty
  981    |  5     (((■){■}W|([21-1]){2}■)|([1-2]){■}■)fail dot
  982    |  5     (((■){■}W|([21-1]){2}M)|(■){■}■)fail dotstar or empty
  983    |  5     (((■){■}W|([21-1]){2}M)|■■)fail dotstar or empty
  984    |  5     (((■){1}■|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  985    |  5     (((■){1}■|(■){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  986    |  5     (((■){1}■|(■){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  987    |  5     (((■){1}■|(■){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  988    |  5     ((■■|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  989    |  5     (((■■){1}■|(■){■}M)|([1-2]){1}Y)fail dot
  990    |  5     ((((■|■)){1}■|(■){■}M)|([1-2]){1}Y)fail solve
  991    |  5     ((((■){■}){1}■|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  992    |  5     (((■){1}(■■)|(■){■}M)|([1-2]){1}Y)fail dot
  993    |  5     (((■){1}(■|■)|(■){■}M)|([1-2]){1}Y)fail solve
  994    |  5     (((■){1}(■){■}|(■){■}M)|([1-2]){1}Y)get a solution: ((([123678]){1}([2WM0]){1,2}|([1456789]){1,2}M)|([1-2]){1}Y)
add negative: 60
get a solution: ((([123678]){1}([2WM]){1,2}|([14567890]){1,2}M)|([1-2]){1}Y)
add negative: 62
get a solution: ((([12378]){1}([2WM]){1,2}|([14567890]){1,2}M)|([1-2]){1}Y)
add negative: 32
  unsatisfiable SAT formula       
  995    |  5     (((■){1}■|(■■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  996    |  5     (((■){1}■|((■|■)){■}M)|([1-2]){1}Y)fail solve
  997    |  5     (((■){1}■|((■){■}){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  998    |  5     (((■){1}■|(■){2}■)|(■){1}Y)  unsatisfiable SAT formula       
  999    |  5     (((■){1}■|(■){2}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1000   |  5     (((■){1}■|(■){2}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  1001   |  5     ((■■|(■){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1002   |  5     (((■){1}■|■■)|([1-2]){1}Y)fail dot
  1003   |  5     (((■■){1}■|(■){2}■)|([1-2]){1}Y)fail dot
  1004   |  5     ((((■|■)){1}■|(■){2}■)|([1-2]){1}Y)fail solve
  1005   |  5     ((((■){■}){1}■|(■){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1006   |  5     (((■){1}(■■)|(■){2}■)|([1-2]){1}Y)fail dot
  1007   |  5     (((■){1}(■|■)|(■){2}■)|([1-2]){1}Y)fail solve
  1008   |  5     (((■){1}(■){■}|(■){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1009   |  5     (((■){1}■|(■■){2}■)|([1-2]){1}Y)fail dot
  1010   |  5     (((■){1}■|((■|■)){2}■)|([1-2]){1}Y)fail solve
  1011   |  5     (((■){1}■|((■){■}){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1012   |  5     (((■){1}■|(■){2}(■■))|([1-2]){1}Y)fail dot
  1013   |  5     (((■){1}■|(■){2}(■|■))|([1-2]){1}Y)fail solve
  1014   |  5     (((■){1}■|(■){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  1015   |  5     (((■){1}■|(■){2}M)|(■){■}Y)  unsatisfiable SAT formula       
  1016   |  5     (((■){1}■|(■){2}M)|(■){1}■)  unsatisfiable SAT formula       
  1017   |  5     ((■■|(■){2}M)|(■){1}Y)    unsatisfiable SAT formula       
  1018   |  5     (((■){1}■|■M)|(■){1}Y)  fail dot
  1019   |  5     (((■){1}■|(■){2}M)|■Y)    unsatisfiable SAT formula       
  1020   |  5     (((■■){1}■|(■){2}M)|(■){1}Y)fail dot
  1021   |  5     ((((■|■)){1}■|(■){2}M)|(■){1}Y)fail solve
  1022   |  5     ((((■){■}){1}■|(■){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  1023   |  5     (((■){1}(■■)|(■){2}M)|(■){1}Y)fail dot
  1024   |  5     (((■){1}(■|■)|(■){2}M)|(■){1}Y)fail solve
  1025   |  5     (((■){1}(■){■}|(■){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  1026   |  5     (((■){1}■|(■■){2}M)|(■){1}Y)fail dot
  1027   |  5     (((■){1}■|((■|■)){2}M)|(■){1}Y)fail solve
  1028   |  5     (((■){1}■|((■){■}){2}M)|(■){1}Y)  unsatisfiable SAT formula       
  1029   |  5     (((■){1}■|(■){2}M)|(■■){1}Y)  unsatisfiable SAT formula       
  1030   |  5     (((■){1}■|(■){2}M)|((■|■)){1}Y)fail solve
  1031   |  5     (((■){1}■|(■){2}M)|((■){■}){1}Y)  unsatisfiable SAT formula       
  1032   |  5     (((■){1}■|(■){2}M)|([1-2]){■}■)  unsatisfiable SAT formula       
  1033   |  5     ((■■|(■){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1034   |  5     (((■){1}■|■M)|([1-2]){■}Y)fail dot
  1035   |  5     (((■■){1}■|(■){2}M)|([1-2]){■}Y)fail dot
  1036   |  5     ((((■|■)){1}■|(■){2}M)|([1-2]){■}Y)fail solve
  1037   |  5     ((((■){■}){1}■|(■){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1038   |  5     (((■){1}(■■)|(■){2}M)|([1-2]){■}Y)fail dot
  1039   |  5     (((■){1}(■|■)|(■){2}M)|([1-2]){■}Y)fail solve
  1040   |  5     (((■){1}(■){■}|(■){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1041   |  5     (((■){1}■|(■■){2}M)|([1-2]){■}Y)fail dot
  1042   |  5     (((■){1}■|((■|■)){2}M)|([1-2]){■}Y)fail solve
  1043   |  5     (((■){1}■|((■){■}){2}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1044   |  5     ((■■|(■){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1045   |  5     (((■){1}■|■M)|([1-2]){1}■)fail dot
  1046   |  5     (((■■){1}■|(■){2}M)|([1-2]){1}■)fail dot
  1047   |  5     ((((■|■)){1}■|(■){2}M)|([1-2]){1}■)fail solve
  1048   |  5     ((((■){■}){1}■|(■){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1049   |  5     (((■){1}(■■)|(■){2}M)|([1-2]){1}■)fail dot
  1050   |  5     (((■){1}(■|■)|(■){2}M)|([1-2]){1}■)fail solve
  1051   |  5     (((■){1}(■){■}|(■){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1052   |  5     (((■){1}■|(■■){2}M)|([1-2]){1}■)fail dot
  1053   |  5     (((■){1}■|((■|■)){2}M)|([1-2]){1}■)fail solve
  1054   |  5     (((■){1}■|((■){■}){2}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1055   |  5     (((■){1}■|(■){2}M)|([1-2]){1}(■■))  unsatisfiable SAT formula       
  1056   |  5     (((■){1}■|(■){2}M)|([1-2]){1}(■|■))fail solve
  1057   |  5     (((■){1}■|(■){2}M)|([1-2]){1}(■){■})  unsatisfiable SAT formula       
  1058   |  5     ((■|(■){2}M)|([1-2]){1}Y)fail dot
  1059   |  5     ((■■|■M)|([1-2]){1}Y)   fail dot
  1060   |  5     (((■■)■|(■){2}M)|([1-2]){1}Y)fail dot
  1061   |  5     (((■|■)■|(■){2}M)|([1-2]){1}Y)fail solve
  1062   |  5     ((■■|(■■){2}M)|([1-2]){1}Y)fail dot
  1063   |  5     ((■■|((■|■)){2}M)|([1-2]){1}Y)fail solve
  1064   |  5     ((■■|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1065   |  5     (((■■){1}■|■M)|([1-2]){1}Y)fail dot
  1066   |  5     ((((■|■)){1}■|■M)|([1-2]){1}Y)fail dot
  1067   |  5     ((((■){■}){1}■|■M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1068   |  5     (((■){1}(■■)|■M)|([1-2]){1}Y)fail dot
  1069   |  5     (((■){1}(■|■)|■M)|([1-2]){1}Y)fail dot
  1070   |  5     (((■){1}(■){■}|■M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1071   |  5     (((■){1}■|(■■)M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1072   |  5     (((■){1}■|(■|■)M)|([1-2]){1}Y)fail dot
  1073   |  5     ((((■■)■){1}■|(■){2}M)|([1-2]){1}Y)fail dot
  1074   |  5     ((((■|■)■){1}■|(■){2}M)|([1-2]){1}Y)fail dot
  1075   |  5     ((((■){■}■){1}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1076   |  5     (((■■){1}(■■)|(■){2}M)|([1-2]){1}Y)fail dot
  1077   |  5     (((■■){1}(■|■)|(■){2}M)|([1-2]){1}Y)fail dot
  1078   |  5     (((■■){1}(■){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1079   |  5     (((■■){1}■|(■■){2}M)|([1-2]){1}Y)fail dot
  1080   |  5     (((■■){1}■|((■|■)){2}M)|([1-2]){1}Y)fail dot
  1081   |  5     (((■■){1}■|((■){■}){2}M)|([1-2]){1}Y)fail dot
  1082   |  5     ((((■■|■)){1}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1083   |  5     (((((■|■)|■)){1}■|(■){2}M)|([1-2]){1}Y)fail solve
  1084   |  5     (((((■){■}|■)){1}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1085   |  5     ((((■|■)){1}(■■)|(■){2}M)|([1-2]){1}Y)fail dot
  1086   |  5     ((((■|■)){1}(■|■)|(■){2}M)|([1-2]){1}Y)fail solve
  1087   |  5     ((((■|■)){1}(■){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1088   |  5     ((((■|■)){1}■|(■■){2}M)|([1-2]){1}Y)fail dot
  1089   |  5     ((((■|■)){1}■|((■|■)){2}M)|([1-2]){1}Y)fail solve
  1090   |  5     ((((■|■)){1}■|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1091   |  5     ((((■■){■}){1}■|(■){2}M)|([1-2]){1}Y)fail dot
  1092   |  5     (((((■|■)){■}){1}■|(■){2}M)|([1-2]){1}Y)fail solve
  1093   |  5     (((((■){■}){■}){1}■|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1094   |  5     ((((■){■}){1}(■■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1095   |  5     ((((■){■}){1}(■|■)|(■){2}M)|([1-2]){1}Y)fail solve
  1096   |  5     ((((■){■}){1}(■){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1097   |  5     ((((■){■}){1}■|(■■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1098   |  5     ((((■){■}){1}■|((■|■)){2}M)|([1-2]){1}Y)fail solve
  1099   |  5     ((((■){■}){1}■|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1100   |  5     (((■){1}(■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1101   |  5     (((■){1}((■■)■)|(■){2}M)|([1-2]){1}Y)fail dot
  1102   |  5     (((■){1}((■|■)■)|(■){2}M)|([1-2]){1}Y)fail dot
  1103   |  5     (((■){1}((■){■}■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1104   |  5     (((■){1}(■■)|(■■){2}M)|([1-2]){1}Y)fail dot
  1105   |  5     (((■){1}(■■)|((■|■)){2}M)|([1-2]){1}Y)fail dot
  1106   |  5     (((■){1}(■■)|((■){■}){2}M)|([1-2]){1}Y)fail dot
  1107   |  5     (((■){1}(■■|■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1108   |  5     (((■){1}((■|■)|■)|(■){2}M)|([1-2]){1}Y)fail solve
  1109   |  5     (((■){1}((■){■}|■)|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1110   |  5     (((■){1}(■|■)|(■■){2}M)|([1-2]){1}Y)fail dot
  1111   |  5     (((■){1}(■|■)|((■|■)){2}M)|([1-2]){1}Y)fail solve
  1112   |  5     (((■){1}(■|■)|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1113   |  5     (((■){1}(■■){■}|(■){2}M)|([1-2]){1}Y)fail dot
  1114   |  5     (((■){1}((■|■)){■}|(■){2}M)|([1-2]){1}Y)fail solve
  1115   |  5     (((■){1}((■){■}){■}|(■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1116   |  5     (((■){1}(■){■}|(■■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1117   |  5     (((■){1}(■){■}|((■|■)){2}M)|([1-2]){1}Y)fail solve
  1118   |  5     (((■){1}(■){■}|((■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1119   |  5     (((■){1}■|((■■)■){2}M)|([1-2]){1}Y)fail dot
  1120   |  5     (((■){1}■|((■|■)■){2}M)|([1-2]){1}Y)fail dot
  1121   |  5     (((■){1}■|((■){■}■){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1122   |  5     (((■){1}■|((■■|■)){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1123   |  5     (((■){1}■|(((■|■)|■)){2}M)|([1-2]){1}Y)fail solve
  1124   |  5     (((■){1}■|(((■){■}|■)){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1125   |  5     (((■){1}■|((■■){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1126   |  5     (((■){1}■|(((■|■)){■}){2}M)|([1-2]){1}Y)fail solve
  1127   |  5     (((■){1}■|(((■){■}){■}){2}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1128   |  5     (((■){1}■|([21-1]){■}■)|(■){1}Y)fail dot
  1129   |  5     (((■){1}■|([21-1]){■}■)|([1-2]){■}Y)fail dot
  1130   |  5     (((■){1}■|([21-1]){■}■)|([1-2]){1}■)fail dot
  1131   |  5     ((■■|([21-1]){■}■)|([1-2]){1}Y)fail dot
  1132   |  5     (((■■){1}■|([21-1]){■}■)|([1-2]){1}Y)fail dot
  1133   |  5     ((((■|■)){1}■|([21-1]){■}■)|([1-2]){1}Y)fail dot
  1134   |  5     ((((■){■}){1}■|([21-1]){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1135   |  5     (((■){1}(■■)|([21-1]){■}■)|([1-2]){1}Y)fail dot
  1136   |  5     (((■){1}(■|■)|([21-1]){■}■)|([1-2]){1}Y)fail dot
  1137   |  5     (((■){1}(■){■}|([21-1]){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1138   |  5     (((■){1}■|([21-1]){■}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  1139   |  5     (((■){1}■|([21-1]){■}(■|■))|([1-2]){1}Y)fail dot
  1140   |  5     (((■){1}■|([21-1]){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  1141   |  5     (((■){1}■|([21-1]){■}M)|(■){■}Y)fail dot
  1142   |  5     (((■){1}■|([21-1]){■}M)|(■){1}■)fail dot
  1143   |  5     ((■■|([21-1]){■}M)|(■){1}Y)fail dot
  1144   |  5     (((■){1}■|([21-1]){■}M)|■Y)fail dot
  1145   |  5     (((■■){1}■|([21-1]){■}M)|(■){1}Y)fail dot
  1146   |  5     ((((■|■)){1}■|([21-1]){■}M)|(■){1}Y)fail dot
  1147   |  5     ((((■){■}){1}■|([21-1]){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  1148   |  5     (((■){1}(■■)|([21-1]){■}M)|(■){1}Y)fail dot
  1149   |  5     (((■){1}(■|■)|([21-1]){■}M)|(■){1}Y)fail dot
  1150   |  5     (((■){1}(■){■}|([21-1]){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  1151   |  5     (((■){1}■|([21-1]){■}M)|(■■){1}Y)fail dot
  1152   |  5     (((■){1}■|([21-1]){■}M)|((■|■)){1}Y)fail dot
  1153   |  5     (((■){1}■|([21-1]){■}M)|((■){■}){1}Y)fail dot
  1154   |  5     (((■){1}■|([21-1]){■}M)|([1-2]){■}■)fail dot
  1155   |  5     ((■■|([21-1]){■}M)|([1-2]){■}Y)fail dot
  1156   |  5     (((■■){1}■|([21-1]){■}M)|([1-2]){■}Y)fail dot
  1157   |  5     ((((■|■)){1}■|([21-1]){■}M)|([1-2]){■}Y)fail dot
  1158   |  5     ((((■){■}){1}■|([21-1]){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1159   |  5     (((■){1}(■■)|([21-1]){■}M)|([1-2]){■}Y)fail dot
  1160   |  5     (((■){1}(■|■)|([21-1]){■}M)|([1-2]){■}Y)fail dot
  1161   |  5     (((■){1}(■){■}|([21-1]){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1162   |  5     ((■■|([21-1]){■}M)|([1-2]){1}■)fail dot
  1163   |  5     (((■■){1}■|([21-1]){■}M)|([1-2]){1}■)fail dot
  1164   |  5     ((((■|■)){1}■|([21-1]){■}M)|([1-2]){1}■)fail dot
  1165   |  5     ((((■){■}){1}■|([21-1]){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1166   |  5     (((■){1}(■■)|([21-1]){■}M)|([1-2]){1}■)fail dot
  1167   |  5     (((■){1}(■|■)|([21-1]){■}M)|([1-2]){1}■)fail dot
  1168   |  5     (((■){1}(■){■}|([21-1]){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1169   |  5     (((■){1}■|([21-1]){■}M)|([1-2]){1}(■■))  unsatisfiable SAT formula       
  1170   |  5     (((■){1}■|([21-1]){■}M)|([1-2]){1}(■|■))fail dot
  1171   |  5     (((■){1}■|([21-1]){■}M)|([1-2]){1}(■){■})  unsatisfiable SAT formula       
  1172   |  5     ((■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1173   |  5     (((■■)■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1174   |  5     (((■|■)■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1175   |  5     ((((■■)■){1}■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1176   |  5     ((((■|■)■){1}■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1177   |  5     ((((■){■}■){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1178   |  5     (((■■){1}(■■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1179   |  5     (((■■){1}(■|■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1180   |  5     (((■■){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1181   |  5     ((((■■|■)){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1182   |  5     (((((■|■)|■)){1}■|([21-1]){■}M)|([1-2]){1}Y)fail solve
  1183   |  5     (((((■){■}|■)){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1184   |  5     ((((■|■)){1}(■■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1185   |  5     ((((■|■)){1}(■|■)|([21-1]){■}M)|([1-2]){1}Y)fail solve
  1186   |  5     ((((■|■)){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1187   |  5     ((((■■){■}){1}■|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1188   |  5     (((((■|■)){■}){1}■|([21-1]){■}M)|([1-2]){1}Y)fail solve
  1189   |  5     (((((■){■}){■}){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1190   |  5     ((((■){■}){1}(■■)|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1191   |  5     ((((■){■}){1}(■|■)|([21-1]){■}M)|([1-2]){1}Y)fail solve
  1192   |  5     ((((■){■}){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1193   |  5     (((■){1}(■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1194   |  5     (((■){1}((■■)■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1195   |  5     (((■){1}((■|■)■)|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1196   |  5     (((■){1}((■){■}■)|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1197   |  5     (((■){1}(■■|■)|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1198   |  5     (((■){1}((■|■)|■)|([21-1]){■}M)|([1-2]){1}Y)fail solve
  1199   |  5     (((■){1}((■){■}|■)|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1200   |  5     (((■){1}(■■){■}|([21-1]){■}M)|([1-2]){1}Y)fail dot
  1201   |  5     (((■){1}((■|■)){■}|([21-1]){■}M)|([1-2]){1}Y)fail solve
  1202   |  5     (((■){1}((■){■}){■}|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1203   |  5     (((■){1}■|([21-1]){2}■)|(■){■}Y)fail dot
  1204   |  5     (((■){1}■|([21-1]){2}■)|(■){1}■)fail dot
  1205   |  5     ((■■|([21-1]){2}■)|(■){1}Y)fail dot
  1206   |  5     (((■){1}■|([21-1]){2}■)|■Y)fail dot
  1207   |  5     (((■■){1}■|([21-1]){2}■)|(■){1}Y)fail dot
  1208   |  5     ((((■|■)){1}■|([21-1]){2}■)|(■){1}Y)fail dot
  1209   |  5     ((((■){■}){1}■|([21-1]){2}■)|(■){1}Y)  unsatisfiable SAT formula       
  1210   |  5     (((■){1}(■■)|([21-1]){2}■)|(■){1}Y)fail dot
  1211   |  5     (((■){1}(■|■)|([21-1]){2}■)|(■){1}Y)fail dot
  1212   |  5     (((■){1}(■){■}|([21-1]){2}■)|(■){1}Y)  unsatisfiable SAT formula       
  1213   |  5     (((■){1}■|([21-1]){2}(■■))|(■){1}Y)fail dot
  1214   |  5     (((■){1}■|([21-1]){2}(■|■))|(■){1}Y)fail dot
  1215   |  5     (((■){1}■|([21-1]){2}(■){■})|(■){1}Y)fail dot
  1216   |  5     (((■){1}■|([21-1]){2}■)|(■■){1}Y)fail dot
  1217   |  5     (((■){1}■|([21-1]){2}■)|((■|■)){1}Y)fail dot
  1218   |  5     (((■){1}■|([21-1]){2}■)|((■){■}){1}Y)fail dot
  1219   |  5     (((■){1}■|([21-1]){2}■)|([1-2]){■}■)fail dot
  1220   |  5     ((■■|([21-1]){2}■)|([1-2]){■}Y)fail dot
  1221   |  5     (((■■){1}■|([21-1]){2}■)|([1-2]){■}Y)fail dot
  1222   |  5     ((((■|■)){1}■|([21-1]){2}■)|([1-2]){■}Y)fail dot
  1223   |  5     ((((■){■}){1}■|([21-1]){2}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1224   |  5     (((■){1}(■■)|([21-1]){2}■)|([1-2]){■}Y)fail dot
  1225   |  5     (((■){1}(■|■)|([21-1]){2}■)|([1-2]){■}Y)fail dot
  1226   |  5     (((■){1}(■){■}|([21-1]){2}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1227   |  5     (((■){1}■|([21-1]){2}(■■))|([1-2]){■}Y)fail dot
  1228   |  5     (((■){1}■|([21-1]){2}(■|■))|([1-2]){■}Y)fail dot
  1229   |  5     (((■){1}■|([21-1]){2}(■){■})|([1-2]){■}Y)fail dot
  1230   |  5     ((■■|([21-1]){2}■)|([1-2]){1}■)fail dot
  1231   |  5     (((■■){1}■|([21-1]){2}■)|([1-2]){1}■)fail dot
  1232   |  5     ((((■|■)){1}■|([21-1]){2}■)|([1-2]){1}■)fail dot
  1233   |  5     ((((■){■}){1}■|([21-1]){2}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  1234   |  5     (((■){1}(■■)|([21-1]){2}■)|([1-2]){1}■)fail dot
  1235   |  5     (((■){1}(■|■)|([21-1]){2}■)|([1-2]){1}■)fail dot
  1236   |  5     (((■){1}(■){■}|([21-1]){2}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  1237   |  5     (((■){1}■|([21-1]){2}(■■))|([1-2]){1}■)fail dot
  1238   |  5     (((■){1}■|([21-1]){2}(■|■))|([1-2]){1}■)fail dot
  1239   |  5     (((■){1}■|([21-1]){2}(■){■})|([1-2]){1}■)fail dot
  1240   |  5     (((■){1}■|([21-1]){2}■)|([1-2]){1}(■■))  unsatisfiable SAT formula       
  1241   |  5     (((■){1}■|([21-1]){2}■)|([1-2]){1}(■|■))fail dot
  1242   |  5     (((■){1}■|([21-1]){2}■)|([1-2]){1}(■){■})  unsatisfiable SAT formula       
  1243   |  5     ((■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1244   |  5     (((■■)■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1245   |  5     (((■|■)■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1246   |  5     ((■■|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  1247   |  5     ((■■|([21-1]){2}(■|■))|([1-2]){1}Y)fail dot
  1248   |  5     ((■■|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  1249   |  5     ((((■■)■){1}■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1250   |  5     ((((■|■)■){1}■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1251   |  5     ((((■){■}■){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1252   |  5     (((■■){1}(■■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1253   |  5     (((■■){1}(■|■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1254   |  5     (((■■){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1255   |  5     (((■■){1}■|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  1256   |  5     (((■■){1}■|([21-1]){2}(■|■))|([1-2]){1}Y)fail dot
  1257   |  5     (((■■){1}■|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  1258   |  5     ((((■■|■)){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1259   |  5     (((((■|■)|■)){1}■|([21-1]){2}■)|([1-2]){1}Y)fail solve
  1260   |  5     (((((■){■}|■)){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1261   |  5     ((((■|■)){1}(■■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1262   |  5     ((((■|■)){1}(■|■)|([21-1]){2}■)|([1-2]){1}Y)fail solve
  1263   |  5     ((((■|■)){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1264   |  5     ((((■|■)){1}■|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  1265   |  5     ((((■|■)){1}■|([21-1]){2}(■|■))|([1-2]){1}Y)fail solve
  1266   |  5     ((((■|■)){1}■|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  1267   |  5     ((((■■){■}){1}■|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1268   |  5     (((((■|■)){■}){1}■|([21-1]){2}■)|([1-2]){1}Y)fail solve
  1269   |  5     (((((■){■}){■}){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1270   |  5     ((((■){■}){1}(■■)|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1271   |  5     ((((■){■}){1}(■|■)|([21-1]){2}■)|([1-2]){1}Y)fail solve
  1272   |  5     ((((■){■}){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1273   |  5     ((((■){■}){1}■|([21-1]){2}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  1274   |  5     ((((■){■}){1}■|([21-1]){2}(■|■))|([1-2]){1}Y)fail solve
  1275   |  5     ((((■){■}){1}■|([21-1]){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  1276   |  5     (((■){1}(■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1277   |  5     (((■){1}((■■)■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1278   |  5     (((■){1}((■|■)■)|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1279   |  5     (((■){1}((■){■}■)|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1280   |  5     (((■){1}(■■)|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  1281   |  5     (((■){1}(■■)|([21-1]){2}(■|■))|([1-2]){1}Y)fail dot
  1282   |  5     (((■){1}(■■)|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  1283   |  5     (((■){1}(■■|■)|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1284   |  5     (((■){1}((■|■)|■)|([21-1]){2}■)|([1-2]){1}Y)fail solve
  1285   |  5     (((■){1}((■){■}|■)|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1286   |  5     (((■){1}(■|■)|([21-1]){2}(■■))|([1-2]){1}Y)fail dot
  1287   |  5     (((■){1}(■|■)|([21-1]){2}(■|■))|([1-2]){1}Y)fail solve
  1288   |  5     (((■){1}(■|■)|([21-1]){2}(■){■})|([1-2]){1}Y)fail dot
  1289   |  5     (((■){1}(■■){■}|([21-1]){2}■)|([1-2]){1}Y)fail dot
  1290   |  5     (((■){1}((■|■)){■}|([21-1]){2}■)|([1-2]){1}Y)fail solve
  1291   |  5     (((■){1}((■){■}){■}|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1292   |  5     (((■){1}(■){■}|([21-1]){2}(■■))|([1-2]){1}Y)  unsatisfiable SAT formula       
  1293   |  5     (((■){1}(■){■}|([21-1]){2}(■|■))|([1-2]){1}Y)fail solve
  1294   |  5     (((■){1}(■){■}|([21-1]){2}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  1295   |  5     (((■){1}■|([21-1]){2}(■))|([1-2]){1}Y)fail dot
  1296   |  5     (((■){1}■|([21-1]){2}((■■)■))|([1-2]){1}Y)fail dot
  1297   |  5     (((■){1}■|([21-1]){2}((■|■)■))|([1-2]){1}Y)fail dot
  1298   |  5     (((■){1}■|([21-1]){2}((■){■}■))|([1-2]){1}Y)fail dot
  1299   |  5     (((■){1}■|([21-1]){2}(■■|■))|([1-2]){1}Y)fail dot
  1300   |  5     (((■){1}■|([21-1]){2}((■|■)|■))|([1-2]){1}Y)fail solve
  1301   |  5     (((■){1}■|([21-1]){2}((■){■}|■))|([1-2]){1}Y)fail dot
  1302   |  5     (((■){1}■|([21-1]){2}(■■){■})|([1-2]){1}Y)fail dot
  1303   |  5     (((■){1}■|([21-1]){2}((■|■)){■})|([1-2]){1}Y)fail dot
  1304   |  5     (((■){1}■|([21-1]){2}((■){■}){■})|([1-2]){1}Y)fail dot
  1305   |  5     (((■){1}■|([21-1]){2}M)|(■){■}■)fail dotstar or empty
  1306   |  5     ((■■|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  1307   |  5     ((■■|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  1308   |  5     (((■){1}■|([21-1]){2}M)|■■)fail dotstar or empty
  1309   |  5     ((■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  1310   |  5     ((■■|([21-1]){2}M)|■Y)  fail dotstar or empty
  1311   |  5     ((■■|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  1312   |  5     ((■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  1313   |  5     ((■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  1314   |  5     (((■){1}W|(■){■}■)|(■){1}Y)  unsatisfiable SAT formula       
  1315   |  5     (((■){1}W|(■){■}■)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1316   |  5     (((■){1}W|(■){■}■)|([1-2]){1}■)  unsatisfiable SAT formula       
  1317   |  5     ((■W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1318   |  5     (((■■){1}W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1319   |  5     ((((■|■)){1}W|(■){■}■)|([1-2]){1}Y)fail solve
  1320   |  5     ((((■){■}){1}W|(■){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1321   |  5     (((■){1}W|(■■){■}■)|([1-2]){1}Y)fail dot
  1322   |  5     (((■){1}W|((■|■)){■}■)|([1-2]){1}Y)fail solve
  1323   |  5     (((■){1}W|((■){■}){■}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1324   |  5     (((■){1}W|(■){■}(■■))|([1-2]){1}Y)get a solution: ((([123]){1}W|(1){0,1}([1234567890]M))|([1-2]){1}Y)
add negative: 0M
  unsatisfiable SAT formula       
  1325   |  5     (((■){1}W|(■){■}(■|■))|([1-2]){1}Y)fail solve
  1326   |  5     (((■){1}W|(■){■}(■){■})|([1-2]){1}Y)  unsatisfiable SAT formula       
  1327   |  5     (((■){1}W|(■){■}M)|(■){■}Y)  unsatisfiable SAT formula       
  1328   |  5     (((■){1}W|(■){■}M)|(■){1}■)  unsatisfiable SAT formula       
  1329   |  5     ((■W|(■){■}M)|(■){1}Y)    unsatisfiable SAT formula       
  1330   |  5     (((■){1}W|(■){■}M)|■Y)    unsatisfiable SAT formula       
  1331   |  5     (((■■){1}W|(■){■}M)|(■){1}Y)fail dot
  1332   |  5     ((((■|■)){1}W|(■){■}M)|(■){1}Y)fail solve
  1333   |  5     ((((■){■}){1}W|(■){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  1334   |  5     (((■){1}W|(■■){■}M)|(■){1}Y)fail dot
  1335   |  5     (((■){1}W|((■|■)){■}M)|(■){1}Y)fail solve
  1336   |  5     (((■){1}W|((■){■}){■}M)|(■){1}Y)  unsatisfiable SAT formula       
  1337   |  5     (((■){1}W|(■){■}M)|(■■){1}Y)  unsatisfiable SAT formula       
  1338   |  5     (((■){1}W|(■){■}M)|((■|■)){1}Y)fail solve
  1339   |  5     (((■){1}W|(■){■}M)|((■){■}){1}Y)  unsatisfiable SAT formula       
  1340   |  5     (((■){1}W|(■){■}M)|([1-2]){■}■)  unsatisfiable SAT formula       
  1341   |  5     ((■W|(■){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1342   |  5     (((■■){1}W|(■){■}M)|([1-2]){■}Y)fail dot
  1343   |  5     ((((■|■)){1}W|(■){■}M)|([1-2]){■}Y)fail solve
  1344   |  5     ((((■){■}){1}W|(■){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1345   |  5     (((■){1}W|(■■){■}M)|([1-2]){■}Y)fail dot
  1346   |  5     (((■){1}W|((■|■)){■}M)|([1-2]){■}Y)fail solve
  1347   |  5     (((■){1}W|((■){■}){■}M)|([1-2]){■}Y)  unsatisfiable SAT formula       
  1348   |  5     ((■W|(■){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1349   |  5     (((■■){1}W|(■){■}M)|([1-2]){1}■)fail dot
  1350   |  5     ((((■|■)){1}W|(■){■}M)|([1-2]){1}■)fail solve
  1351   |  5     ((((■){■}){1}W|(■){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1352   |  5     (((■){1}W|(■■){■}M)|([1-2]){1}■)fail dot
  1353   |  5     (((■){1}W|((■|■)){■}M)|([1-2]){1}■)fail solve
  1354   |  5     (((■){1}W|((■){■}){■}M)|([1-2]){1}■)  unsatisfiable SAT formula       
  1355   |  5     (((■){1}W|(■){■}M)|([1-2]){1}(■■))  unsatisfiable SAT formula       
  1356   |  5     (((■){1}W|(■){■}M)|([1-2]){1}(■|■))fail solve
  1357   |  5     (((■){1}W|(■){■}M)|([1-2]){1}(■){■})get a solution: (((3){1}W|([13456789]){1,2}M)|([1-2]){1}([2WM0]){1,2})
add positive: 1Y
add negative: 20
  unsatisfiable SAT formula       
  1358   |  5     (((■■)W|(■){■}M)|([1-2]){1}Y)fail dot
  1359   |  5     (((■|■)W|(■){■}M)|([1-2]){1}Y)fail solve
  1360   |  5     ((■W|(■■){■}M)|([1-2]){1}Y)fail dot
  1361   |  5     ((■W|((■|■)){■}M)|([1-2]){1}Y)fail solve
  1362   |  5     ((■W|((■){■}){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1363   |  5     ((((■■)■){1}W|(■){■}M)|([1-2]){1}Y)fail dot
  1364   |  5     ((((■|■)■){1}W|(■){■}M)|([1-2]){1}Y)fail dot
  1365   |  5     ((((■){■}■){1}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1366   |  5     (((■■){1}W|(■■){■}M)|([1-2]){1}Y)fail dot
  1367   |  5     (((■■){1}W|((■|■)){■}M)|([1-2]){1}Y)fail dot
  1368   |  5     (((■■){1}W|((■){■}){■}M)|([1-2]){1}Y)fail dot
  1369   |  5     ((((■■|■)){1}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1370   |  5     (((((■|■)|■)){1}W|(■){■}M)|([1-2]){1}Y)fail solve
  1371   |  5     (((((■){■}|■)){1}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1372   |  5     ((((■|■)){1}W|(■■){■}M)|([1-2]){1}Y)fail dot
  1373   |  5     ((((■|■)){1}W|((■|■)){■}M)|([1-2]){1}Y)fail solve
  1374   |  5     ((((■|■)){1}W|((■){■}){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1375   |  5     ((((■■){■}){1}W|(■){■}M)|([1-2]){1}Y)fail dot
  1376   |  5     (((((■|■)){■}){1}W|(■){■}M)|([1-2]){1}Y)fail solve
  1377   |  5     (((((■){■}){■}){1}W|(■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1378   |  5     ((((■){■}){1}W|(■■){■}M)|([1-2]){1}Y)fail dot
  1379   |  5     ((((■){■}){1}W|((■|■)){■}M)|([1-2]){1}Y)fail solve
  1380   |  5     ((((■){■}){1}W|((■){■}){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1381   |  5     (((■){1}W|((■■)■){■}M)|([1-2]){1}Y)fail dot
  1382   |  5     (((■){1}W|((■|■)■){■}M)|([1-2]){1}Y)fail dot
  1383   |  5     (((■){1}W|((■){■}■){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  1384   |  5     (((■){1}W|((■■|■)){■}M)|([1-2]){1}Y)get a solution: ((([123]){1}W|((1[120]|[123456789])){1}M)|([1-2]){1}Y)
  ((([123]){1}W|((1[120]|[123456789])){1}M)|([1-2]){1}Y)
template: ((([0-2]){1}W|(■){2}M)|((■){■}){1}■) size: 9 holes: 5 time: 1.371754ms
template: (((■){1}■|(■){2}■)|([1-2]){■}Y) size: 7 holes: 6 time: 0.939874ms
template: (((■){1}■|(■){2}M)|([1-2]){■}■) size: 7 holes: 6 time: 0.997834ms
template: ((([0-2]){1}W|(■){2}M)|(■){1}(■){■}) size: 9 holes: 5 time: 1.218719ms
template: ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}(■){■}) size: 10 holes: 6 time: 6.444856ms
template: ((((■){■}){1}■|([21-1]){2}(■){■})|([1-2]){1}Y) size: 10 holes: 7 time: 2.379644ms
template: (((■){1}W|((■){■}){2}M)|(■){1}Y) size: 9 holes: 5 time: 1.074513ms
template: ((((■){■}){1}■|([21-1]){■}M)|(■){1}Y) size: 9 holes: 7 time: 1.23157ms
template: (((■){1}W|(■){2}M)|([1-2]){1}Y) size: 9 holes: 2 time: 0.902301ms
template: ((([0-2]){1}W|(■){■}■)|([1-2]){1}Y) size: 9 holes: 4 time: 1.021975ms
template: ((([0-2]){1}W|(■){■}(■){■})|([1-2]){1}Y) size: 10 holes: 6 time: 7.639006ms
template: (((■){1}■|((■){■}){■}M)|([1-2]){1}Y) size: 9 holes: 7 time: 6.981642ms
template: ((([0-2]){1}W|([21-1]){2}■)|(■){1}(■){■}) size: 9 holes: 5 time: 1.343046ms
template: ((((■){■}){1}W|((■){■}){2}M)|([1-2]){1}Y) size: 11 holes: 6 time: 0.77749ms
template: ((([0-2]){1}W|(■){2}M)|(■){1}■) size: 8 holes: 3 time: 0.960361ms
template: ((■■|(■){2}M)|([1-2]){1}Y) size: 7 holes: 3 time: 0.707091ms
template: (((■){1}(■){■}|([21-1]){2}■)|([1-2]){■}Y) size: 9 holes: 7 time: 1.209554ms
template: ((([0-2]){■}W|(■){2}M)|(■){1}■) size: 8 holes: 5 time: 1.044599ms
template: ((([0-2]){■}(■■)|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 0.699955ms
template: ((([0-2]){1}W|([21-1]){■}(■){■})|(■){1}Y) size: 10 holes: 6 time: 1.709269ms
template: ((((■){■}){1}■|([21-1]){■}M)|([1-2]){■}Y) size: 10 holes: 8 time: 1.27843ms
template: ((((■){■}){1}(■){■}|(■){2}M)|([1-2]){1}Y) size: 10 holes: 7 time: 4.615962ms
template: ((([0-2]){1}W|((■){■}){2}(■){■})|([1-2]){1}Y) size: 11 holes: 6 time: 5.54729ms
template: ((([0-2]){■}(■■)|(■){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 0.813695ms
template: (((■){1}W|(■){■}M)|([1-2]){■}■) size: 8 holes: 7 time: 1.282533ms
template: (((■){■}W|((■){■}){2}■)|([1-2]){1}Y) size: 9 holes: 7 time: 0.990556ms
template: (((■){1}W|(■){■}■)|([1-2]){■}Y) size: 8 holes: 7 time: 0.918211ms
template: ((([0-2]){1}W|([21-1]){■}(■■))|(■){1}Y) size: 9 holes: 5 time: 4.097549ms
template: (((■){■}■|(■■){2}M)|([1-2]){1}Y) size: 8 holes: 6 time: 1.06811ms
template: ((([0-2]){1}W|(■){■}M)|(■){1}■) size: 8 holes: 5 time: 0.956395ms
template: ((([0-2]){1}W|(■){2}(■){■})|([1-2]){1}Y) size: 10 holes: 4 time: 1.166506ms
template: (((■){1}W|(■){2}(■){■})|([1-2]){1}Y) size: 9 holes: 5 time: 0.816895ms
template: ((([0-2]){■}W|([21-1]){■}(■■))|([1-2]){1}Y) size: 10 holes: 6 time: 1.141315ms
template: ((([0-2]){1}W|([21-1]){2}■)|((■){■}){1}■) size: 9 holes: 5 time: 1.248132ms
template: (((■){1}W|(■){■}M)|(■){1}Y) size: 8 holes: 5 time: 0.869697ms
template: ((([0-2]){1}W|((■){■}){2}M)|(■){1}■) size: 9 holes: 5 time: 1.523563ms
template: ((([0-2]){1}W|(■){■}■)|(■){1}Y) size: 8 holes: 5 time: 0.715116ms
template: (((■){■}W|((■){■}){■}M)|([1-2]){1}Y) size: 10 holes: 8 time: 1.088464ms
template: (((■){1}W|((■){■}){■}M)|([1-2]){1}■) size: 9 holes: 7 time: 1.115567ms
template: (((■){1}W|(■){■}M)|■Y) size: 7 holes: 5 time: 0.773789ms
template: (((■){1}W|(■){■}M)|(■■){1}Y) size: 8 holes: 6 time: 1.058061ms
template: (((■){1}■|(■■){■}M)|([1-2]){1}Y) size: 8 holes: 6 time: 1.136295ms
template: ((((■){■}){■}■|(■){2}M)|([1-2]){1}Y) size: 9 holes: 7 time: 1.18666ms
template: ((([0-2]){1}W|([21-1]){■}(■■))|([1-2]){■}Y) size: 10 holes: 6 time: 0.850964ms
template: (((■■){1}W|(■){■}■)|([1-2]){1}Y) size: 8 holes: 6 time: 3.854969ms
template: ((([0-2]){■}(■■)|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 6.502222ms
template: ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}(■■)) size: 9 holes: 5 time: 1.045075ms
template: ((([0-2]){1}W|([21-1]){■}((■){■}){■})|([1-2]){1}Y) size: 12 holes: 7 time: 2.37617ms
template: (((■){1}■|(((■){■}){■}){2}M)|([1-2]){1}Y) size: 10 holes: 7 time: 4.466286ms
template: (((■){1}(■){■}|([21-1]){■}M)|([1-2]){■}Y) size: 10 holes: 8 time: 1.485732ms
template: (((((■){■}|■)){1}■|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.755198ms
template: ((([0-2]){1}W|(■){2}(■){■})|([1-2]){1}■) size: 9 holes: 5 time: 1.129786ms
template: ((([0-2]){1}W|((■){■}){2}■)|(■){1}Y) size: 9 holes: 5 time: 1.092963ms
template: ((((■){■}){■}■|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 7 time: 1.650235ms
template: (((■){1}■|([21-1]){■}M)|([1-2]){1}Y) size: 9 holes: 4 time: 1.683132ms
template: (((■){1}W|((■){■}){■}M)|(■){1}Y) size: 9 holes: 7 time: 2.607755ms
template: (((■){■}W|((■){■}){2}M)|([1-2]){1}■) size: 9 holes: 7 time: 1.408753ms
template: (((■){1}■|(■){2}M)|(■){■}Y) size: 7 holes: 6 time: 0.696376ms
template: ((((■){■}){1}■|([21-1]){■}■)|([1-2]){1}Y) size: 9 holes: 7 time: 1.006973ms
template: ((((■){■}){1}■|([21-1]){■}M)|([1-2]){1}■) size: 9 holes: 7 time: 1.459187ms
template: ((■■|(■){2}M)|([1-2]){1}■) size: 6 holes: 4 time: 0.848969ms
template: (((■){1}(■■|■)|(■){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 2.37231ms
template: ((■■|(■){2}■)|([1-2]){1}Y) size: 6 holes: 4 time: 0.734373ms
template: (((■){1}(■){■}|([21-1]){2}(■■))|([1-2]){1}Y) size: 9 holes: 6 time: 1.22541ms
template: ((■W|(■){■}M)|([1-2]){1}Y) size: 8 holes: 4 time: 3.470969ms
template: ((([0-2]){1}■|([21-1]){■}(■){■})|([1-2]){1}Y) size: 10 holes: 6 time: 1.72392ms
template: (((((■){■}){■}){1}■|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 8 time: 1.698687ms
template: (((((■){■}|■)){1}■|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 6 time: 1.639999ms
template: ((((■){■}){■}■|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 8 time: 1.184949ms
template: (((((■){■}){■}){1}■|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 7 time: 2.432712ms
template: ((((■■|■)){1}W|(■){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 0.872917ms
template: ((([0-2]){1}W|((■){■}){2}■)|([1-2]){■}Y) size: 10 holes: 6 time: 1.055895ms
template: (((■){1}■|(■){■}M)|([1-2]){■}Y) size: 8 holes: 7 time: 0.948645ms
template: (((■){1}■|((■){■}){2}■)|([1-2]){1}Y) size: 8 holes: 6 time: 1.774924ms
template: (((■){■}■|((■){■}){2}M)|([1-2]){1}Y) size: 9 holes: 7 time: 2.111798ms
template: (((■){1}■|((■){■}){2}M)|([1-2]){1}■) size: 8 holes: 6 time: 3.181391ms
template: ((((■){■}■){1}■|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 6 time: 1.071195ms
template: ((([0-2]){1}W|([21-1]){2}■)|(■){■}■) size: 8 holes: 5 time: 3.962407ms
template: (((■){1}■|((■){■}■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 0.613938ms
template: ((([0-2]){1}■|(■){2}(■){■})|([1-2]){1}Y) size: 9 holes: 5 time: 1.116141ms
template: (((((■){■}){■}){1}■|(■){2}M)|([1-2]){1}Y) size: 10 holes: 7 time: 1.778044ms
template: ((([0-2]){1}W|(■){2}■)|(■){1}■) size: 7 holes: 4 time: 0.715271ms
template: ((([0-2]){1}W|(((■){■}|■)){2}■)|([1-2]){1}Y) size: 11 holes: 5 time: 1.746442ms
template: (((■){1}■|([21-1]){■}M)|([1-2]){1}(■){■}) size: 9 holes: 7 time: 0.869151ms
template: (((■){1}((■){■}■)|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 7 time: 0.889675ms
template: (((■){1}W|((■){■}■){■}M)|([1-2]){1}Y) size: 10 holes: 7 time: 2.810491ms
template: (((■){■}■|([21-1]){2}■)|(■){1}Y) size: 7 holes: 6 time: 0.846001ms
template: (((■){1}W|(■){2}M)|(■){1}■) size: 7 holes: 4 time: 0.9214ms
template: (((■){1}■|(■){2}M)|([1-2]){1}(■■)) size: 7 holes: 5 time: 1.06547ms
template: (((■){■}W|(■){2}M)|(■){1}■) size: 7 holes: 6 time: 5.668123ms
template: ((■■|((■){■}){2}M)|([1-2]){1}Y) size: 8 holes: 5 time: 1.165047ms
template: ((■W|((■){■}){■}M)|([1-2]){1}Y) size: 9 holes: 6 time: 1.019634ms
template: (((■){1}W|((■){■}){2}M)|([1-2]){■}Y) size: 10 holes: 6 time: 1.022166ms
template: (((■){1}W|(■){■}M)|([1-2]){■}Y) size: 9 holes: 6 time: 1.08371ms
template: (((■){1}(■){■}|(■){2}M)|([1-2]){■}Y) size: 9 holes: 7 time: 2.389135ms
template: ((((■){■}){1}W|(■){■}M)|(■){1}Y) size: 9 holes: 7 time: 1.364226ms
template: ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}(■){■}) size: 11 holes: 7 time: 1.191095ms
template: (((■){1}■|((■){■}){2}M)|(■){1}Y) size: 8 holes: 6 time: 1.644901ms
template: (((■){1}(■){■}|([21-1]){2}■)|(■){1}Y) size: 8 holes: 6 time: 1.23851ms
template: ((((■){■}){1}W|(■){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.049246ms
template: (((■){1}W|(■){■}M)|([1-2]){1}(■){■}) size: 9 holes: 7 time: 1.571339ms
template: ((([0-2]){1}W|(■){2}M)|([1-2]){■}(■){■}) size: 10 holes: 6 time: 2.756053ms
template: (((■){1}(■){■}|(■){2}M)|(■){1}Y) size: 8 holes: 6 time: 1.282103ms
template: ((((■){■}){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 7 time: 2.895234ms
template: (((■){■}(■■)|([21-1]){2}■)|([1-2]){1}Y) size: 8 holes: 6 time: 1.199551ms
template: ((([0-2]){1}W|([21-1]){■}(■■))|([1-2]){1}■) size: 9 holes: 5 time: 6.040276ms
template: ((([0-2]){1}W|((■){■}){■}■)|([1-2]){1}Y) size: 10 holes: 6 time: 1.792925ms
template: ((([0-2]){1}W|(■){■}(■■))|([1-2]){1}Y) size: 9 holes: 5 time: 1.127441ms
template: (((■){■}W|((■){■}){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.313325ms
template: ((([0-2]){1}W|(((■){■}){■}){2}■)|([1-2]){1}Y) size: 11 holes: 6 time: 1.911437ms
template: ((([0-2]){1}W|([21-1]){■}(■■){■})|([1-2]){1}Y) size: 11 holes: 6 time: 1.275252ms
template: ((((■){■}){1}■|(■){2}M)|(■){1}Y) size: 8 holes: 6 time: 1.343824ms
template: (((■){1}■|(■){■}M)|([1-2]){1}Y) size: 8 holes: 5 time: 1.375612ms
template: (((■){■}■|([21-1]){■}M)|([1-2]){1}Y) size: 9 holes: 6 time: 1.072168ms
template: (((■){■}(■■)|(■){2}M)|([1-2]){1}Y) size: 8 holes: 6 time: 0.82ms
template: (((■){■}(■){■}|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 7 time: 2.671036ms
template: (((■){1}((■){■}){■}|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 8 time: 2.691678ms
template: ((((■){■}){1}W|((■){■}){■}M)|([1-2]){1}Y) size: 11 holes: 8 time: 1.565708ms
template: (((■){1}W|(((■){■}|■)){2}M)|([1-2]){1}Y) size: 11 holes: 5 time: 1.919684ms
template: (((■){■}■|(■){2}■)|([1-2]){1}Y) size: 7 holes: 6 time: 1.511668ms
template: (((■){1}■|(■){■}M)|([1-2]){1}■) size: 7 holes: 6 time: 1.530609ms
template: (((■){1}W|((■){■}){■}M)|([1-2]){■}Y) size: 10 holes: 8 time: 1.595012ms
template: ((((■■|■)){1}■|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 0.976835ms
template: (((■){1}■|((■){■}){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 1.554646ms
template: ((■W|(■){■}■)|([1-2]){1}Y) size: 7 holes: 5 time: 0.875169ms
template: ((((■){■}){■}W|(■){■}M)|([1-2]){1}Y) size: 10 holes: 8 time: 1.005959ms
template: ((([0-2]){1}W|((■){■}){2}■)|([1-2]){1}■) size: 9 holes: 5 time: 1.29984ms
template: ((((■){■}){1}■|(■){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 1.192202ms
template: (((■){1}■|(■){■}M)|(■){1}Y) size: 7 holes: 6 time: 0.952084ms
template: ((([0-2]){1}W|(■){2}M)|■■) size: 7 holes: 3 time: 0.65071ms
template: (((■){■}■|([21-1]){2}(■){■})|([1-2]){1}Y) size: 9 holes: 7 time: 3.250814ms
template: ((((■){■}){1}(■■)|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 6 time: 1.206625ms
template: (((■){1}(■){■}|([21-1]){■}■)|([1-2]){1}Y) size: 9 holes: 7 time: 1.120615ms
template: (((■){1}(■){■}|(■){■}M)|([1-2]){1}Y) size: 9 holes: 7 time: 4.537839ms
template: ((([0-2]){■}(■){■}|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 6 time: 3.440067ms
template: ((([0-2]){1}W|([21-1]){■}(■■))|([1-2]){1}Y) size: 10 holes: 4 time: 0.979945ms
template: ((([0-2]){■}W|(■){■}■)|([1-2]){1}Y) size: 9 holes: 6 time: 1.148563ms
template: ((((■|■)){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.227546ms
template: (((■){1}W|((■■|■)){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.4929ms
template: (((■){1}W|(■){■}M)|([1-2]){1}■) size: 8 holes: 5 time: 1.149789ms
template: (((■){1}(■){■}|([21-1]){2}■)|([1-2]){1}■) size: 8 holes: 6 time: 1.197872ms
template: ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}(■■)) size: 10 holes: 6 time: 1.173252ms
template: (((■){1}(■){■}|(■){2}M)|([1-2]){1}■) size: 8 holes: 6 time: 1.070787ms
template: ((([0-2]){1}W|([21-1]){■}M)|(■){1}(■){■}) size: 10 holes: 6 time: 1.284839ms
template: (((■){1}■|(■){2}M)|([1-2]){■}Y) size: 8 holes: 5 time: 0.924358ms
template: (((■){1}■|([21-1]){■}(■■))|([1-2]){1}Y) size: 8 holes: 6 time: 1.347268ms
template: ((((■){■}){1}■|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 1.089748ms
template: ((([0-2]){1}W|(■){2}(■){■})|([1-2]){■}Y) size: 10 holes: 6 time: 1.03014ms
template: ((([0-2]){1}W|([21-1]){■}((■){■}|■))|([1-2]){1}Y) size: 12 holes: 6 time: 1.741501ms
template: (((■){1}■|([21-1]){2}■)|([1-2]){1}(■■)) size: 7 holes: 5 time: 0.63175ms
template: ((((■|■)){1}(■){■}|(■){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.76943ms
template: (((■){■}W|(((■){■}|■)){2}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.210677ms
template: (((■){1}■|([21-1]){2}■)|([1-2]){1}(■){■}) size: 8 holes: 6 time: 3.031771ms
template: (((■){■}■|([21-1]){■}■)|([1-2]){1}Y) size: 8 holes: 7 time: 1.514389ms
template: ((((■■|■)){1}■|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 0.980965ms
template: ((((■|■)){1}■|((■){■}){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.964564ms
template: ((((■){■}){1}(■■)|(■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 0.813885ms
template: ((([0-2]){1}W|(■){2}(■){■})|(■){1}Y) size: 9 holes: 5 time: 0.723752ms
template: (((■){1}■|(■){2}M)|(■■){1}Y) size: 7 holes: 5 time: 1.230864ms
template: ((((■){■}){1}■|(■){2}M)|([1-2]){1}■) size: 8 holes: 6 time: 1.427814ms
template: (((■){1}■|([21-1]){■}(■){■})|([1-2]){1}Y) size: 9 holes: 7 time: 1.552569ms
template: ((([0-2]){1}W|((■){■}){2}■)|([1-2]){1}Y) size: 10 holes: 4 time: 1.890294ms
template: (((■){1}((■){■}|■)|(■){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.643735ms
template: (((■){1}(■){■}|((■){■}){2}M)|([1-2]){1}Y) size: 10 holes: 7 time: 4.308316ms
template: ((((■){■}){1}■|(■■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 1.035327ms
template: (((■){■}■|([21-1]){■}M)|([1-2]){1}■) size: 8 holes: 7 time: 1.590344ms
template: (((■){1}W|(■){■}M)|([1-2]){1}(■■)) size: 8 holes: 6 time: 0.941195ms
template: ((([0-2]){1}W|(■){2}M)|(■){■}■) size: 8 holes: 5 time: 2.698696ms
template: (((■){1}W|((■){■}){2}M)|([1-2]){1}■) size: 9 holes: 5 time: 1.207672ms
template: ((((■){■}){1}■|■M)|([1-2]){1}Y) size: 8 holes: 5 time: 0.957239ms
template: (((■){1}(■){■}|([21-1]){■}M)|(■){1}Y) size: 9 holes: 7 time: 0.865482ms
template: (((■){1}W|((■){■}){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 1.196265ms
template: (((■){■}W|(■){■}M)|([1-2]){■}Y) size: 9 holes: 8 time: 1.35458ms
template: ((([0-2]){1}W|(■){2}((■){■}){■})|([1-2]){1}Y) size: 11 holes: 6 time: 1.732673ms
template: (((■){1}(■)|(■){2}M)|([1-2]){1}Y) size: 8 holes: 3 time: 0.64578ms
template: ((((■|■)){■}W|((■){■}){2}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.401678ms
template: ((((■){■}){1}W|(■){■}■)|([1-2]){1}Y) size: 9 holes: 7 time: 1.014795ms
template: (((■■){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 7 time: 1.239449ms
template: (((■){1}(■■|■)|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 0.986394ms
template: ((([0-2]){1}W|([21-1]){■}(■■|■))|([1-2]){1}Y) size: 11 holes: 5 time: 4.988627ms
template: (((■){1}■|(■){2}M)|(■){1}Y) size: 7 holes: 4 time: 0.906053ms
template: ((([0-2]){1}W|([21-1]){■}M)|((■){■}){1}■) size: 10 holes: 6 time: 1.718386ms
template: (((■){■}■|([21-1]){2}(■■))|([1-2]){1}Y) size: 8 holes: 6 time: 1.041055ms
template: ((((■|■)){1}W|((■){■}){■}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.89406ms
template: (((■){1}■|(■){2}M)|([1-2]){1}(■){■}) size: 8 holes: 6 time: 0.676642ms
template: (((■){■}■|(■){■}M)|([1-2]){1}Y) size: 8 holes: 7 time: 1.841318ms
template: (((■){1}(■|■)|((■){■}){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.970946ms
template: ((([0-2]){1}■|(■){■}■)|([1-2]){1}Y) size: 8 holes: 5 time: 1.304997ms
template: (((■■){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 6 time: 2.325205ms
template: ((((■){■}){1}W|(■){■}M)|([1-2]){1}■) size: 9 holes: 7 time: 1.418561ms
template: (((■){1}((■){■}|■)|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.264659ms
template: ((([0-2]){1}W|([21-1]){■}(■){■})|([1-2]){1}Y) size: 11 holes: 5 time: 1.747797ms
template: (((■){1}W|(■){■}M)|(■){■}Y) size: 8 holes: 7 time: 0.842906ms
template: (((((■){■}|■)){1}■|(■){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.225113ms
template: ((((■){■}){1}■|(■){■}M)|([1-2]){1}Y) size: 9 holes: 7 time: 1.214096ms
template: (((■){1}■|(((■){■}|■)){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.534942ms
template: (((■){1}(■){■}|(■){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 2.353647ms
template: (((■){■}W|(■){■}M)|([1-2]){1}■) size: 8 holes: 7 time: 1.312958ms
template: (((■){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 1.213238ms
template: (((■){1}((■){■}|■)|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 6 time: 2.559082ms
template: (((■){■}(■■)|([21-1]){■}M)|([1-2]){1}Y) size: 9 holes: 7 time: 3.429136ms
template: (((■){1}■|(■){2}■)|([1-2]){1}Y) size: 7 holes: 4 time: 1.526713ms
template: ((([0-2]){■}(■){■}|(■){2}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.677458ms
template: (((■){1}(■■|■)|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 0.924093ms
template: (((■){■}W|((■){■}){2}M)|(■){1}Y) size: 9 holes: 7 time: 1.198021ms
template: ((([0-2]){1}W|([21-1]){■}M)|(■){■}■) size: 9 holes: 6 time: 0.977251ms
template: ((([0-2]){1}W|(■){■}■)|([1-2]){■}Y) size: 9 holes: 6 time: 0.965597ms
template: (((■){1}W|([21-1]){2}M)|([1-2]){1}Y) size: 10 holes: 1 time: 2.674492ms
template: (((■){1}■|(■){2}M)|([1-2]){1}■) size: 7 holes: 4 time: 0.858537ms
template: ((((■){■}■){1}W|(■){■}M)|([1-2]){1}Y) size: 10 holes: 7 time: 0.850957ms
template: (((■){1}(■){■}|([21-1]){2}(■){■})|([1-2]){1}Y) size: 10 holes: 7 time: 1.485009ms
template: ((([0-2]){■}W|(■){2}(■){■})|([1-2]){1}Y) size: 10 holes: 6 time: 2.05023ms
template: (((■){1}■|(■■)M)|([1-2]){1}Y) size: 7 holes: 4 time: 2.20619ms
template: (((■){1}W|(((■){■}){■}){2}M)|([1-2]){1}Y) size: 11 holes: 6 time: 1.361515ms
template: ((((■){■}){1}■|([21-1]){2}■)|([1-2]){1}■) size: 8 holes: 6 time: 1.155208ms
template: ((■■|(■){■}M)|([1-2]){1}Y) size: 7 holes: 5 time: 1.261777ms
template: (((■){1}W|(■){■}M)|([1-2]){1}Y) size: 9 holes: 4 time: 1.120971ms
template: (((■){■}■|([21-1]){2}■)|([1-2]){■}Y) size: 8 holes: 7 time: 1.222197ms
template: (((■){■}W|(■){■}■)|([1-2]){1}Y) size: 8 holes: 7 time: 1.670447ms
template: (((■){■}■|([21-1]){■}M)|([1-2]){■}Y) size: 9 holes: 8 time: 1.673732ms
template: (((■){■}■|(■){2}M)|([1-2]){■}Y) size: 8 holes: 7 time: 3.821242ms
template: ((((■){■}){1}■|(■){2}■)|([1-2]){1}Y) size: 8 holes: 6 time: 3.737361ms
template: (((■){1}■|((■■){■}){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 0.93889ms
template: (((((■){■}){■}){1}W|(■){■}M)|([1-2]){1}Y) size: 11 holes: 8 time: 1.530865ms
template: (((■){■}(■){■}|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 8 time: 2.538446ms
template: (((■){■}(■){■}|(■){2}M)|([1-2]){1}Y) size: 9 holes: 7 time: 1.899273ms
template: (((■){1}■|(■){2}M)|■Y) size: 6 holes: 4 time: 0.937533ms
template: ((([0-2]){1}■|((■){■}){2}■)|([1-2]){1}Y) size: 9 holes: 5 time: 1.26046ms
template: ((([0-2]){1}W|([21-1]){■}((■){■}■))|([1-2]){1}Y) size: 11 holes: 6 time: 1.603376ms
template: ((((■){■}■){1}■|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 7 time: 1.128899ms
template: (((■){1}W|([21-1]){■}(■■))|([1-2]){1}Y) size: 9 holes: 5 time: 1.214206ms
template: (((■){1}((■){■}){■}|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 7 time: 1.779757ms
template: (((■■){1}(■){■}|(■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 1.002807ms
template: ((([0-2]){1}W|([21-1]){■}(■){■})|([1-2]){■}Y) size: 11 holes: 7 time: 1.571596ms
template: ((((■){■}){1}■|(■){2}M)|([1-2]){■}Y) size: 9 holes: 7 time: 1.72193ms
template: (((■){1}(■){■}|■M)|([1-2]){1}Y) size: 8 holes: 5 time: 0.969351ms
template: ((■■|(■){2}M)|(■){1}Y) size: 6 holes: 4 time: 3.077516ms
template: (((■){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.188439ms
template: (((■){1}W|(■){■}■)|([1-2]){1}■) size: 7 holes: 6 time: 1.404768ms
template: ((([0-2]){1}W|(■){2}M)|([1-2]){■}(■■)) size: 9 holes: 5 time: 1.154066ms
template: (((((■){■}|■)){1}W|(■){■}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.723021ms
template: (((■){1}■|([21-1]){2}■)|([1-2]){1}Y) size: 8 holes: 3 time: 0.902923ms
template: (((■){■}■|(■){2}M)|([1-2]){1}Y) size: 8 holes: 5 time: 3.202098ms
template: (((■){1}W|((■){■}){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 1.559431ms
template: (((■){■}W|([21-1]){■}(■){■})|([1-2]){1}Y) size: 10 holes: 8 time: 2.055939ms
template: (((■){1}■|([21-1]){■}M)|([1-2]){1}(■■)) size: 8 holes: 6 time: 0.653879ms
template: (((■){1}W|([21-1]){■}(■){■})|([1-2]){1}Y) size: 10 holes: 6 time: 2.427459ms
template: (((■){1}W|(■){■}M)|(■){1}■) size: 7 holes: 6 time: 1.388521ms
template: ((((■){■}){1}■|((■){■}){2}M)|([1-2]){1}Y) size: 10 holes: 7 time: 1.742035ms
template: ((■W|(■){■}M)|(■){1}Y) size: 7 holes: 5 time: 1.100405ms
template: (((■){■}■|([21-1]){2}■)|([1-2]){1}Y) size: 8 holes: 5 time: 1.297093ms
template: ((((■){■}){1}(■){■}|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 8 time: 3.75743ms
template: ((((■|■)){1}W|((■){■}){2}M)|([1-2]){1}Y) size: 11 holes: 5 time: 0.77233ms
template: ((■W|(■){■}M)|([1-2]){■}Y) size: 8 holes: 6 time: 0.899255ms
template: (((■){1}W|(■){■}(■■))|([1-2]){1}Y) size: 8 holes: 6 time: 1.135279ms
template: (((■){1}((■){■}■)|([21-1]){2}■)|([1-2]){1}Y) size: 9 holes: 6 time: 6.359821ms
template: (((■){1}W|(■){■}■)|(■){1}Y) size: 7 holes: 6 time: 0.911942ms
template: (((■){■}W|([21-1]){■}(■■))|([1-2]){1}Y) size: 9 holes: 7 time: 1.751414ms
template: ((([0-2]){1}W|((■|■)){2}(■){■})|([1-2]){1}Y) size: 11 holes: 5 time: 1.431797ms
template: (((■){1}((■){■}■)|(■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 1.198422ms
template: (((■){1}■|(■){2}M)|([1-2]){1}Y) size: 8 holes: 3 time: 0.910602ms
template: (((■){1}■|((■■|■)){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 3.815263ms
template: ((([0-2]){■}W|([21-1]){■}(■){■})|([1-2]){1}Y) size: 11 holes: 7 time: 5.367346ms
template: (((■){■}W|((■){■}){2}M)|([1-2]){■}Y) size: 10 holes: 8 time: 1.307308ms
template: (((■){1}W|((■){■}){■}■)|([1-2]){1}Y) size: 9 holes: 7 time: 1.174171ms
template: (((■){■}■|([21-1]){2}■)|([1-2]){1}■) size: 7 holes: 6 time: 1.368571ms
template: (((■){1}■|(■){2}M)|(■){1}■) size: 6 holes: 5 time: 0.664945ms
template: (((■){■}W|(■){■}M)|([1-2]){1}Y) size: 9 holes: 6 time: 2.259723ms
template: ((([0-2]){1}W|(■){2}((■){■}|■))|([1-2]){1}Y) size: 11 holes: 5 time: 0.936874ms
template: (((■){■}W|(■){2}(■){■})|([1-2]){1}Y) size: 9 holes: 7 time: 1.023139ms
template: ((((■){■}){1}■|([21-1]){2}■)|([1-2]){■}Y) size: 9 holes: 7 time: 0.887704ms
template: ((■W|(■){■}M)|([1-2]){1}■) size: 7 holes: 5 time: 1.176957ms
template: ((([0-2]){■}W|((■){■}){2}■)|([1-2]){1}Y) size: 10 holes: 6 time: 1.083064ms
template: (((■){■}■|(■){2}M)|([1-2]){1}■) size: 7 holes: 6 time: 1.326351ms
template: (((■){1}■|(■){■}■)|([1-2]){1}Y) size: 7 holes: 6 time: 1.593713ms
template: ((((■■|■)){1}■|(■){2}M)|([1-2]){1}Y) size: 9 holes: 5 time: 0.890752ms
template: ((([0-2]){1}■|([21-1]){■}(■■))|([1-2]){1}Y) size: 9 holes: 5 time: 1.100687ms
template: ((((■){■}){1}■|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 6 time: 2.598105ms
template: ((((■){■}){1}W|(■){■}M)|([1-2]){■}Y) size: 10 holes: 8 time: 0.883534ms
template: (((■){■}■|■M)|([1-2]){1}Y) size: 7 holes: 5 time: 1.320379ms
template: (((■){1}W|((■){■}){2}M)|([1-2]){1}Y) size: 10 holes: 4 time: 0.991809ms
template: ((([0-2]){1}■|(■){2}M)|(■){1}■) size: 7 holes: 4 time: 0.920729ms
template: (((■){1}■|(■){2}■)|(■){1}Y) size: 6 holes: 5 time: 1.015209ms
template: ((■■|(■){2}M)|([1-2]){■}Y) size: 7 holes: 5 time: 0.920078ms
template: ((([0-2]){■}(■){■}|([21-1]){■}M)|([1-2]){1}Y) size: 11 holes: 7 time: 1.750665ms
template: ((((■){■}■){1}■|(■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 1.264262ms
template: (((■){1}■|((■){■}){2}M)|([1-2]){■}Y) size: 9 holes: 7 time: 1.04872ms
template: ((((■){■}){1}(■■)|([21-1]){■}M)|([1-2]){1}Y) size: 10 holes: 7 time: 0.866517ms
template: ((((■){■}){1}■|([21-1]){2}(■■))|([1-2]){1}Y) size: 9 holes: 6 time: 1.104998ms
template: ((■W|((■){■}){2}M)|([1-2]){1}Y) size: 9 holes: 4 time: 1.104933ms
template: (((■){1}■|(■){2}(■){■})|([1-2]){1}Y) size: 8 holes: 6 time: 1.039289ms
template: (((■){■}W|(((■){■}){■}){2}M)|([1-2]){1}Y) size: 11 holes: 8 time: 2.53812ms
template: (((■){1}■|(■){2}■)|([1-2]){1}■) size: 6 holes: 5 time: 0.865285ms
template: ((((■){■}){1}■|([21-1]){2}■)|(■){1}Y) size: 8 holes: 6 time: 1.154561ms
template: ((([0-2]){1}W|([21-1]){■}(■){■})|([1-2]){1}■) size: 10 holes: 6 time: 1.566008ms
template: (((■){1}(■){■}|(■■){2}M)|([1-2]){1}Y) size: 9 holes: 6 time: 0.85614ms
template: ((([0-2]){1}W|((■){■}){2}(■■))|([1-2]){1}Y) size: 10 holes: 5 time: 1.236607ms
template: (((■){1}W|(■){■}■)|([1-2]){1}Y) size: 8 holes: 5 time: 1.156242ms
template: (((■){■}W|(■){■}M)|(■){1}Y) size: 8 holes: 7 time: 1.259603ms
template: ((([0-2]){1}W|(■){■}■)|([1-2]){1}■) size: 8 holes: 5 time: 1.328899ms
template: (((■){■}■|(■){2}M)|(■){1}Y) size: 7 holes: 6 time: 1.294139ms
template: ((((■){■}){■}W|((■){■}){2}M)|([1-2]){1}Y) size: 11 holes: 8 time: 1.779722ms
template: (((■){1}W|(■){■}(■){■})|([1-2]){1}Y) size: 9 holes: 7 time: 3.981917ms
template: (((■){1}(■){■}|([21-1]){■}M)|([1-2]){1}■) size: 9 holes: 7 time: 1.618151ms
template: (((■){1}((■){■}){■}|(■){2}M)|([1-2]){1}Y) size: 10 holes: 7 time: 3.341323ms
template: (((■){■}■|([21-1]){■}M)|(■){1}Y) size: 8 holes: 7 time: 3.463223ms
template: (((■){1}(■){■}|(■){2}■)|([1-2]){1}Y) size: 8 holes: 6 time: 1.987803ms
template: (((■){1}■|(■){2}M)|((■){■}){1}Y) size: 8 holes: 6 time: 0.740073ms
template: ((((■|■)){1}(■){■}|([21-1]){2}■)|([1-2]){1}Y) size: 10 holes: 6 time: 1.678654ms
template: (((■){1}W|(■){■}M)|((■){■}){1}Y) size: 9 holes: 7 time: 1.134063ms
longest: #mn#((([0-2]){1}W|(■){■}(■){■})|([1-2]){1}Y)#mn# size: #ms#10#ms# holes: #mh#6#mh# time: #mt#7.639006#mt#ms

Computed in:

  #c#4140#c#ms

timeSATSolver time:

  #s#542#s#ms

cost:

  #d#5#d#

Finds the following solutions (and the corresponding fitness):

  16   ((([123]){1}W|((1[120]|[123456789])){1}M)|([1-2]){1}Y)

All done

last template: #t#(((■){1}W|((■■|■)){■}M)|([1-2]){1}Y)#t#
#num#1384#num#
#dep#5#dep#
#t1#107#t1#
#t2#616#t2#
#t3#351#t3#
#p#15#p#
#n#9#n#
solution is #sol#((([123]){1}W|((1[120]|[123456789])){1}M)|([1-2]){1}Y)#sol#
before exit

4.5972020626068115
success