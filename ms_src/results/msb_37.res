
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
  202    |  4     (((■){■}■|(■){2}M)|([1-2]){1}Y)1.0210018157958984
timeout