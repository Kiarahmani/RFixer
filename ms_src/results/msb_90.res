
Given the regular expression:

  (\\(w)*)\\(2){3,}(\\(w)*)

That that should match the strings:

  ✓ (0:3)    sss

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■(w)*)\\)(2){3,})(\\(w)*)fail dotstar or empty
  2      |  1     (((\\(■)*)\\)(2){3,})(\\(w)*)fail dotstar or empty
  3      |  1     (((\\(w){■})\\)(2){3,})(\\(w)*)fail dotstar or empty
  4      |  1     (((\\(w)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  5      |  1     (((\\(w)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  6      |  1     (((\\(w)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  7      |  1     (((\\(w)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  8      |  1     (((\\(w)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  9      |  1     (((\\(w)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  10     |  2     (((■(■)*)\\)(2){3,})(\\(w)*)fail dotstar or empty
  11     |  2     (((■(w){■})\\)(2){3,})(\\(w)*)fail dotstar or empty
  12     |  2     (((■(w)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  13     |  2     (((■(w)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  14     |  2     (((■(w)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  15     |  2     (((■(w)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  16     |  2     (((■(w)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  17     |  2     (((■(w)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  18     |  2     (((\\(■){■})\\)(2){3,})(\\(w)*)fail dotstar or empty
  19     |  2     (((\\(■)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  20     |  2     (((\\(■)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  21     |  2     (((\\(■)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  22     |  2     (((\\(■)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  23     |  2     (((\\(■)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  24     |  2     (((\\(■)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  25     |  2     (((\\(w){■})■)(2){3,})(\\(w)*)fail dotstar or empty
  26     |  2     (((\\(w){■})\\)(■){3,})(\\(w)*)fail dotstar or empty
  27     |  2     (((\\(w){■})\\)(2){■})(\\(w)*)fail dotstar or empty
  28     |  2     (((\\(w){■})\\)(2){3,})(■(w)*)fail dotstar or empty
  29     |  2     (((\\(w){■})\\)(2){3,})(\\(■)*)fail dotstar or empty
  30     |  2     (((\\(w){■})\\)(2){3,})(\\(w){■})fail dotstar or empty
  31     |  2     (((\\■)\\)(2){3,})(\\(w)*)fail dotstar or empty
  32     |  2     (((\\(w)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  33     |  2     (((\\(w)*)■)(2){■})(\\(w)*)fail dotstar or empty
  34     |  2     (((\\(w)*)■)(2){3,})(■(w)*)fail dotstar or empty
  35     |  2     (((\\(w)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  36     |  2     (((\\(w)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  37     |  2     (((\\(w)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  38     |  2     (((\\(w)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  39     |  2     (((\\(w)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  40     |  2     (((\\(w)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  41     |  2     (((\\(w)*)\\)■)(\\(w)*) fail dotstar or empty
  42     |  2     (((\\(w)*)\\)(2){■})(■(w)*)fail dotstar or empty
  43     |  2     (((\\(w)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  44     |  2     (((\\(w)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  45     |  2     (((\\(w)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  46     |  2     (((\\(w)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  47     |  2     (((\\(w)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  48     |  2     (((\\(w)*)\\)(2){3,})(\\■)fail dotstar or empty
  49     |  3     (((■(■)*)■)(2){3,})(\\(w)*)fail dotstar or empty
  50     |  3     (((■(■)*)\\)(■){3,})(\\(w)*)fail dotstar or empty
  51     |  3     (((■(■)*)\\)(2){■})(\\(w)*)fail dotstar or empty
  52     |  3     (((■(■)*)\\)(2){3,})(■(w)*)fail dotstar or empty
  53     |  3     (((■(■)*)\\)(2){3,})(\\(■)*)fail dotstar or empty
  54     |  3     (((■(■)*)\\)(2){3,})(\\(w){■})fail dotstar or empty
  55     |  3     (((■(w){■})■)(2){3,})(\\(w)*)fail dotstar or empty
  56     |  3     (((■(w){■})\\)(■){3,})(\\(w)*)fail dotstar or empty
  57     |  3     (((■(w){■})\\)(2){■})(\\(w)*)fail dotstar or empty
  58     |  3     (((■(w){■})\\)(2){3,})(■(w)*)fail dotstar or empty
  59     |  3     (((■(w){■})\\)(2){3,})(\\(■)*)fail dotstar or empty
  60     |  3     (((■(w){■})\\)(2){3,})(\\(w){■})fail dotstar or empty
  61     |  3     (((■■)\\)(2){3,})(\\(w)*)fail dotstar or empty
  62     |  3     (((■(w)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  63     |  3     (((■(w)*)■)(2){■})(\\(w)*)fail dotstar or empty
  64     |  3     (((■(w)*)■)(2){3,})(■(w)*)fail dotstar or empty
  65     |  3     (((■(w)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  66     |  3     (((■(w)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  67     |  3     (((■(w)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  68     |  3     (((■(w)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  69     |  3     (((■(w)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  70     |  3     (((■(w)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  71     |  3     (((■(w)*)\\)■)(\\(w)*)  fail dotstar or empty
  72     |  3     (((■(w)*)\\)(2){■})(■(w)*)fail dotstar or empty
  73     |  3     (((■(w)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  74     |  3     (((■(w)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  75     |  3     (((■(w)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  76     |  3     (((■(w)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  77     |  3     (((■(w)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  78     |  3     (((■(w)*)\\)(2){3,})(\\■)fail dotstar or empty
  79     |  3     (((\\(■){■})■)(2){3,})(\\(w)*)fail dotstar or empty
  80     |  3     (((\\(■){■})\\)(■){3,})(\\(w)*)fail dotstar or empty
  81     |  3     (((\\(■){■})\\)(2){■})(\\(w)*)fail dotstar or empty
  82     |  3     (((\\(■){■})\\)(2){3,})(■(w)*)fail dotstar or empty
  83     |  3     (((\\(■){■})\\)(2){3,})(\\(■)*)fail dotstar or empty
  84     |  3     (((\\(■){■})\\)(2){3,})(\\(w){■})fail dotstar or empty
  85     |  3     (((\\(■)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  86     |  3     (((\\(■)*)■)(2){■})(\\(w)*)fail dotstar or empty
  87     |  3     (((\\(■)*)■)(2){3,})(■(w)*)fail dotstar or empty
  88     |  3     (((\\(■)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  89     |  3     (((\\(■)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  90     |  3     (((\\(■)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  91     |  3     (((\\(■)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  92     |  3     (((\\(■)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  93     |  3     (((\\(■)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  94     |  3     (((\\(■)*)\\)■)(\\(w)*) fail dotstar or empty
  95     |  3     (((\\(■)*)\\)(2){■})(■(w)*)fail dotstar or empty
  96     |  3     (((\\(■)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  97     |  3     (((\\(■)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  98     |  3     (((\\(■)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  99     |  3     (((\\(■)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  100    |  3     (((\\(■)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  101    |  3     (((\\(■)*)\\)(2){3,})(\\■)fail dotstar or empty
  102    |  3     (((\\(w){■})■)(■){3,})(\\(w)*)fail dotstar or empty
  103    |  3     (((\\(w){■})■)(2){■})(\\(w)*)fail dotstar or empty
  104    |  3     (((\\(w){■})■)(2){3,})(■(w)*)fail dotstar or empty
  105    |  3     (((\\(w){■})■)(2){3,})(\\(■)*)fail dotstar or empty
  106    |  3     (((\\(w){■})■)(2){3,})(\\(w){■})fail dotstar or empty
  107    |  3     (((\\■)■)(2){3,})(\\(w)*)fail dotstar or empty
  108    |  3     (((\\(w){■})\\)(■){■})(\\(w)*)fail dotstar or empty
  109    |  3     (((\\(w){■})\\)(■){3,})(■(w)*)fail dotstar or empty
  110    |  3     (((\\(w){■})\\)(■){3,})(\\(■)*)fail dotstar or empty
  111    |  3     (((\\(w){■})\\)(■){3,})(\\(w){■})fail dotstar or empty
  112    |  3     (((\\■)\\)(■){3,})(\\(w)*)fail dotstar or empty
  113    |  3     (((\\(w){■})\\)■)(\\(w)*)fail dotstar or empty
  114    |  3     (((\\(w){■})\\)(2){■})(■(w)*)fail dotstar or empty
  115    |  3     (((\\(w){■})\\)(2){■})(\\(■)*)fail dotstar or empty
  116    |  3     (((\\(w){■})\\)(2){■})(\\(w){■})fail dotstar or empty
  117    |  3     (((\\■)\\)(2){■})(\\(w)*)fail dotstar or empty
  118    |  3     (((\\(w){■})\\)(2){3,})(■(■)*)fail dotstar or empty
  119    |  3     (((\\(w){■})\\)(2){3,})(■(w){■})fail dotstar or empty
  120    |  3     (((\\■)\\)(2){3,})(■(w)*)fail dotstar or empty
  121    |  3     (((\\(w){■})\\)(2){3,})(\\(■){■})fail dotstar or empty
  122    |  3     (((\\■)\\)(2){3,})(\\(■)*)fail dotstar or empty
  123    |  3     (((\\■)\\)(2){3,})(\\(w){■})fail dotstar or empty
  124    |  3     (((\\(w){■})\\)(2){3,})(\\■)fail dotstar or empty
  125    |  3     (((\\(w)*)■)(■){■})(\\(w)*)fail dotstar or empty
  126    |  3     (((\\(w)*)■)(■){3,})(■(w)*)fail dotstar or empty
  127    |  3     (((\\(w)*)■)(■){3,})(\\(■)*)fail dotstar or empty
  128    |  3     (((\\(w)*)■)(■){3,})(\\(w){■})fail dotstar or empty
  129    |  3     (((\\(w)*)■)■)(\\(w)*)  fail dotstar or empty
  130    |  3     (((\\(w)*)■)(2){■})(■(w)*)fail dotstar or empty
  131    |  3     (((\\(w)*)■)(2){■})(\\(■)*)fail dotstar or empty
  132    |  3     (((\\(w)*)■)(2){■})(\\(w){■})fail dotstar or empty
  133    |  3     (((\\(w)*)■)(2){3,})(■(■)*)fail dotstar or empty
  134    |  3     (((\\(w)*)■)(2){3,})(■(w){■})fail dotstar or empty
  135    |  3     (((\\(w)*)■)(2){3,})(\\(■){■})fail dotstar or empty
  136    |  3     (((\\(w)*)■)(2){3,})(\\■)fail dotstar or empty
  137    |  3     (((\\(w)*)\\)(■){■})(■(w)*)fail dotstar or empty
  138    |  3     (((\\(w)*)\\)(■){■})(\\(■)*)fail dotstar or empty
  139    |  3     (((\\(w)*)\\)(■){■})(\\(w){■})fail dotstar or empty
  140    |  3     (((\\(w)*)\\)(■){3,})(■(■)*)fail dotstar or empty
  141    |  3     (((\\(w)*)\\)(■){3,})(■(w){■})fail dotstar or empty
  142    |  3     (((\\(w)*)\\)■)(■(w)*)  fail dotstar or empty
  143    |  3     (((\\(w)*)\\)(■){3,})(\\(■){■})fail dotstar or empty
  144    |  3     (((\\(w)*)\\)■)(\\(■)*) fail dotstar or empty
  145    |  3     (((\\(w)*)\\)■)(\\(w){■})fail dotstar or empty
  146    |  3     (((\\(w)*)\\)(■){3,})(\\■)fail dotstar or empty
  147    |  3     (((\\(w)*)\\)(2){■})(■(■)*)fail dotstar or empty
  148    |  3     (((\\(w)*)\\)(2){■})(■(w){■})fail dotstar or empty
  149    |  3     (((\\(w)*)\\)(2){■})(\\(■){■})fail dotstar or empty
  150    |  3     (((\\(w)*)\\)(2){■})(\\■)fail dotstar or empty
  151    |  3     (((\\(w)*)\\)(2){3,})(■■)fail dotstar or empty
  152    |  4     (((■(■)*)■)(■){3,})(\\(w)*)fail dotstar or empty
  153    |  4     (((■(■)*)■)(2){■})(\\(w)*)fail dotstar or empty
  154    |  4     (((■(■)*)■)(2){3,})(■(w)*)fail dotstar or empty
  155    |  4     (((■(■)*)■)(2){3,})(\\(■)*)fail dotstar or empty
  156    |  4     (((■(■)*)■)(2){3,})(\\(w){■})fail dotstar or empty
  157    |  4     (((■(■)*)\\)(■){■})(\\(w)*)fail dotstar or empty
  158    |  4     (((■(■)*)\\)(■){3,})(■(w)*)fail dotstar or empty
  159    |  4     (((■(■)*)\\)(■){3,})(\\(■)*)fail dotstar or empty
  160    |  4     (((■(■)*)\\)(■){3,})(\\(w){■})fail dotstar or empty
  161    |  4     (((■(■)*)\\)■)(\\(w)*)  fail dotstar or empty
  162    |  4     (((■(■)*)\\)(2){■})(■(w)*)fail dotstar or empty
  163    |  4     (((■(■)*)\\)(2){■})(\\(■)*)fail dotstar or empty
  164    |  4     (((■(■)*)\\)(2){■})(\\(w){■})fail dotstar or empty
  165    |  4     (((■(■)*)\\)(2){3,})(■(■)*)fail dotstar or empty
  166    |  4     (((■(■)*)\\)(2){3,})(■(w){■})fail dotstar or empty
  167    |  4     (((■(■)*)\\)(2){3,})(\\(■){■})fail dotstar or empty
  168    |  4     (((■(■)*)\\)(2){3,})(\\■)fail dotstar or empty
  169    |  4     (((■(w){■})■)(■){3,})(\\(w)*)fail dotstar or empty
  170    |  4     (((■(w){■})■)(2){■})(\\(w)*)fail dotstar or empty
  171    |  4     (((■(w){■})■)(2){3,})(■(w)*)fail dotstar or empty
  172    |  4     (((■(w){■})■)(2){3,})(\\(■)*)fail dotstar or empty
  173    |  4     (((■(w){■})■)(2){3,})(\\(w){■})fail dotstar or empty
  174    |  4     (((■■)■)(2){3,})(\\(w)*)fail dotstar or empty
  175    |  4     (((■(w){■})\\)(■){■})(\\(w)*)fail dotstar or empty
  176    |  4     (((■(w){■})\\)(■){3,})(■(w)*)fail dotstar or empty
  177    |  4     (((■(w){■})\\)(■){3,})(\\(■)*)fail dotstar or empty
  178    |  4     (((■(w){■})\\)(■){3,})(\\(w){■})fail dotstar or empty
  179    |  4     (((■■)\\)(■){3,})(\\(w)*)fail dotstar or empty
  180    |  4     (((■(w){■})\\)■)(\\(w)*)fail dotstar or empty
  181    |  4     (((■(w){■})\\)(2){■})(■(w)*)fail dotstar or empty
  182    |  4     (((■(w){■})\\)(2){■})(\\(■)*)fail dotstar or empty
  183    |  4     (((■(w){■})\\)(2){■})(\\(w){■})fail dotstar or empty
  184    |  4     (((■■)\\)(2){■})(\\(w)*)fail dotstar or empty
  185    |  4     (((■(w){■})\\)(2){3,})(■(■)*)fail dotstar or empty
  186    |  4     (((■(w){■})\\)(2){3,})(■(w){■})fail dotstar or empty
  187    |  4     (((■■)\\)(2){3,})(■(w)*)fail dotstar or empty
  188    |  4     (((■(w){■})\\)(2){3,})(\\(■){■})fail dotstar or empty
  189    |  4     (((■■)\\)(2){3,})(\\(■)*)fail dotstar or empty
  190    |  4     (((■■)\\)(2){3,})(\\(w){■})fail dotstar or empty
  191    |  4     (((■(w){■})\\)(2){3,})(\\■)fail dotstar or empty
  192    |  4     (((■)\\)(2){3,})(\\(w)*)fail dotstar or empty
  193    |  4     (((■(w)*)■)(■){■})(\\(w)*)fail dotstar or empty
  194    |  4     (((■(w)*)■)(■){3,})(■(w)*)fail dot
  195    |  4     (((■(w)*)■)(■){3,})(\\(■)*)fail dotstar or empty
  196    |  4     (((■(w)*)■)(■){3,})(\\(w){■})fail dotstar or empty
  197    |  4     (((■(w)*)■)■)(\\(w)*)   fail dotstar or empty
  198    |  4     (((■(w)*)■)(2){■})(■(w)*)  (((s(w)*)s)(2){0})(s(w)*)       
template: (((■(w)*)■)(2){■})(■(w)*) size: 6 holes: 5 time: 3.838404ms
longest: #mn#(((■(w)*)■)(2){■})(■(w)*)#mn# size: #ms#6#ms# holes: #mh#5#mh# time: #mt#3.838404#mt#ms

Computed in:

  #c#351#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#4#d#

Finds the following solutions (and the corresponding fitness):

  3    (((s(w)*)s)(2){0})(s(w)*)

All done

last template: #t#(((■(w)*)■)(2){■})(■(w)*)#t#
#num#198#num#
#dep#4#dep#
#t1#0#t1#
#t2#1#t2#
#t3#196#t3#
solution is #sol#(((s(w)*)s)(2){0})(s(w)*)#sol#
before exit
