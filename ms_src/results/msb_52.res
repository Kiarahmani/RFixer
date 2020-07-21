
Given the regular expression:

  iqn\.((\d){4}\-(\d){2})\.(([^:])+)

That that should match the strings:


And reject the strings:

  ✗ (0:25)   iqn.2002-07.com.microsoft
  ✗ (25:53)  iqn.1998-01.com.vmware.iscsi
  ✗ (53:78)  iqn.1991-05.com.microsoft

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+get a solution: ((((([∅]q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+
add positive: /iqn.0000-00. : /g
  2      |  1     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  3      |  1     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  4      |  1     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  5      |  1     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  6      |  1     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  7      |  1     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  8      |  1     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  9      |  1     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  10     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  11     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  12     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  13     |  2     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  14     |  2     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  15     |  2     (((((■q)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  16     |  2     (((((■q)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  17     |  2     (((((■q)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  18     |  2     (((((■q)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  19     |  2     (((((■q)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  20     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  21     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  22     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  23     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  24     |  2     ((((((■■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  25     |  2     ((((((■|■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail solve
  26     |  2     ((((((■){■}q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  27     |  2     (((((i■)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  28     |  2     (((((i■)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  29     |  2     (((((i■)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  30     |  2     (((((i■)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  31     |  2     (((((i■)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  32     |  2     (((((i■)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  33     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  34     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  35     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  36     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  37     |  2     (((((iq)■)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  38     |  2     (((((iq)■)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  39     |  2     (((((iq)■)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  40     |  2     (((((iq)■)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  41     |  2     (((((iq)■)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  42     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  43     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  44     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  45     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  46     |  2     (((((iq)n)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  47     |  2     (((((iq)n)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  48     |  2     (((((iq)n)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  49     |  2     (((((iq)n)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  50     |  2     (((((iq)n)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  51     |  2     (((((iq)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  52     |  2     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  53     |  2     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  54     |  2     (((((iq)n)\.)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  55     |  2     (((((iq)n)\.)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  56     |  2     (((((iq)n)\.)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  57     |  2     (((((iq)n)\.)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  58     |  2     (((((iq)n)\.)(((■){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  59     |  2     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  60     |  2     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  61     |  2     (((((iq)n)\.)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  62     |  2     (((((iq)n)\.)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  63     |  2     (((((iq)n)\.)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  64     |  2     (((((iq)n)\.)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  65     |  2     (((((iq)n)\.)(((\d){■}\-)(\d){2}))■)([^:])+fail dotstar or empty
  66     |  2     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)(■)+fail dotstar or empty
  67     |  2     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  68     |  2     (((((iq)n)\.)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  69     |  2     (((((iq)n)\.)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  70     |  2     (((((iq)n)\.)(((\d){4}■)(\d){2}))■)([^:])+fail dotstar or empty
  71     |  2     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)(■)+fail dotstar or empty
  72     |  2     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  73     |  2     (((((iq)n)\.)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  74     |  2     (((((iq)n)\.)(((\d){4}\-)(■){2}))■)([^:])+fail dotstar or empty
  75     |  2     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)(■)+fail dotstar or empty
  76     |  2     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  77     |  2     (((((iq)n)\.)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  78     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){■}))■)([^:])+fail dotstar or empty
  79     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)(■)+fail dotstar or empty
  80     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  81     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)(■)+fail dotstar or empty
  82     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dotstar or empty
  83     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■){■}fail dotstar or empty
  84     |  2     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)■fail dotstar or empty
  85     |  3     (((((■■)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  86     |  3     (((((■■)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  87     |  3     (((((■■)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  88     |  3     (((((■■)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  89     |  3     (((((■■)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  90     |  3     (((((■■)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  91     |  3     (((((■■)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  92     |  3     (((((■■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  93     |  3     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  94     |  3     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  95     |  3     (((((■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  96     |  3     (((((■q)■)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  97     |  3     (((((■q)■)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  98     |  3     (((((■q)■)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  99     |  3     (((((■q)■)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  100    |  3     (((((■q)■)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  101    |  3     (((((■q)■)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  102    |  3     (((((■q)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  103    |  3     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  104    |  3     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  105    |  3     (((((■q)n)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  106    |  3     (((((■q)n)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  107    |  3     (((((■q)n)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  108    |  3     (((((■q)n)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  109    |  3     (((((■q)n)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  110    |  3     (((((■q)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  111    |  3     (((((■q)n)■)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  112    |  3     (((((■q)n)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  113    |  3     (((((■q)n)\.)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  114    |  3     (((((■q)n)\.)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  115    |  3     (((((■q)n)\.)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  116    |  3     (((((■q)n)\.)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  117    |  3     (((((■q)n)\.)(((■){4}\-)(\d){2}))■)([^:])+fail dot
  118    |  3     (((((■q)n)\.)(((■){4}\-)(\d){2}))\.)(■)+fail dot
  119    |  3     (((((■q)n)\.)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  120    |  3     (((((■q)n)\.)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  121    |  3     (((((■q)n)\.)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  122    |  3     (((((■q)n)\.)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  123    |  3     (((((■q)n)\.)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  124    |  3     (((((■q)n)\.)(((\d){■}\-)(\d){2}))■)([^:])+fail dot
  125    |  3     (((((■q)n)\.)(((\d){■}\-)(\d){2}))\.)(■)+fail dot
  126    |  3     (((((■q)n)\.)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  127    |  3     (((((■q)n)\.)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  128    |  3     (((((■q)n)\.)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  129    |  3     (((((■q)n)\.)(((\d){4}■)(\d){2}))■)([^:])+fail dot
  130    |  3     (((((■q)n)\.)(((\d){4}■)(\d){2}))\.)(■)+fail dot
  131    |  3     (((((■q)n)\.)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  132    |  3     (((((■q)n)\.)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  133    |  3     (((((■q)n)\.)(((\d){4}\-)(■){2}))■)([^:])+fail dot
  134    |  3     (((((■q)n)\.)(((\d){4}\-)(■){2}))\.)(■)+fail dot
  135    |  3     (((((■q)n)\.)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  136    |  3     (((((■q)n)\.)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  137    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){■}))■)([^:])+fail dot
  138    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){■}))\.)(■)+fail dot
  139    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  140    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))■)(■)+fail dot
  141    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dot
  142    |  3     ((((((■■)q)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  143    |  3     ((((((■|■)q)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  144    |  3     ((((((■){■}q)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  145    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))(■■))([^:])+fail dot
  146    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))(■|■))([^:])+fail dot
  147    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))(■){■})([^:])+fail dot
  148    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)(■){■}fail dot
  149    |  3     ((((((■■)q)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+get a solution: ((((((/i)q)n)\.)(((\d){4}\-)(\d){2}))\.)([g:/ ])+
add positive: /iqn.0000-00.: /g
add negative: /iqn.0000-00.:
  unsatisfiable SAT formula       
  150    |  3     ((((((■|■)q)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  151    |  3     ((((((■){■}q)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  152    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)(■■)+fail dot
  153    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)((■|■))+fail dot
  154    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)((■){■})+fail dot
  155    |  3     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)■fail dot
  156    |  3     ((((((■■)■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  157    |  3     ((((((■■)q)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  158    |  3     ((((((■■)q)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  159    |  3     ((((((■■)q)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  160    |  3     ((((((■■)q)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  161    |  3     ((((((■■)q)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  162    |  3     ((((((■■)q)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  163    |  3     ((((((■■)q)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  164    |  3     ((((((■■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  165    |  3     ((((((■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  166    |  3     (((((((■■)■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  167    |  3     (((((((■|■)■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  168    |  3     (((((((■){■}■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  169    |  3     ((((((■|■)■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  170    |  3     ((((((■|■)q)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  171    |  3     ((((((■|■)q)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  172    |  3     ((((((■|■)q)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  173    |  3     ((((((■|■)q)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  174    |  3     ((((((■|■)q)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  175    |  3     ((((((■|■)q)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  176    |  3     ((((((■|■)q)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  177    |  3     ((((((■|■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  178    |  3     ((((((■■|■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  179    |  3     (((((((■|■)|■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail solve
  180    |  3     (((((((■){■}|■)q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  181    |  3     ((((((■){■}■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  182    |  3     ((((((■){■}q)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  183    |  3     ((((((■){■}q)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  184    |  3     ((((((■){■}q)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  185    |  3     ((((((■){■}q)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  186    |  3     ((((((■){■}q)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  187    |  3     ((((((■){■}q)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  188    |  3     ((((((■){■}q)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  189    |  3     ((((((■){■}q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  190    |  3     ((((((■■){■}q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  191    |  3     (((((((■|■)){■}q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  192    |  3     (((((((■){■}){■}q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dot
  193    |  3     (((((i■)■)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  194    |  3     (((((i■)■)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  195    |  3     (((((i■)■)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  196    |  3     (((((i■)■)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  197    |  3     (((((i■)■)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  198    |  3     (((((i■)■)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  199    |  3     (((((i■)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  200    |  3     (((((i■)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  201    |  3     (((((i■)■)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  202    |  3     (((((i■)n)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  203    |  3     (((((i■)n)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  204    |  3     (((((i■)n)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  205    |  3     (((((i■)n)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  206    |  3     (((((i■)n)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  207    |  3     (((((i■)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  208    |  3     (((((i■)n)■)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  209    |  3     (((((i■)n)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  210    |  3     (((((i■)n)\.)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  211    |  3     (((((i■)n)\.)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  212    |  3     (((((i■)n)\.)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  213    |  3     (((((i■)n)\.)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  214    |  3     (((((i■)n)\.)(((■){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  215    |  3     (((((i■)n)\.)(((■){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  216    |  3     (((((i■)n)\.)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  217    |  3     (((((i■)n)\.)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  218    |  3     (((((i■)n)\.)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  219    |  3     (((((i■)n)\.)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  220    |  3     (((((i■)n)\.)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  221    |  3     (((((i■)n)\.)(((\d){■}\-)(\d){2}))■)([^:])+fail dotstar or empty
  222    |  3     (((((i■)n)\.)(((\d){■}\-)(\d){2}))\.)(■)+fail dotstar or empty
  223    |  3     (((((i■)n)\.)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  224    |  3     (((((i■)n)\.)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  225    |  3     (((((i■)n)\.)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  226    |  3     (((((i■)n)\.)(((\d){4}■)(\d){2}))■)([^:])+fail dotstar or empty
  227    |  3     (((((i■)n)\.)(((\d){4}■)(\d){2}))\.)(■)+fail dotstar or empty
  228    |  3     (((((i■)n)\.)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  229    |  3     (((((i■)n)\.)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  230    |  3     (((((i■)n)\.)(((\d){4}\-)(■){2}))■)([^:])+fail dotstar or empty
  231    |  3     (((((i■)n)\.)(((\d){4}\-)(■){2}))\.)(■)+fail dotstar or empty
  232    |  3     (((((i■)n)\.)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  233    |  3     (((((i■)n)\.)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  234    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){■}))■)([^:])+fail dotstar or empty
  235    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){■}))\.)(■)+fail dotstar or empty
  236    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  237    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){2}))■)(■)+fail dotstar or empty
  238    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dotstar or empty
  239    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)(■){■}fail dotstar or empty
  240    |  3     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)■fail dotstar or empty
  241    |  3     (((((iq)■)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  242    |  3     (((((iq)■)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  243    |  3     (((((iq)■)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  244    |  3     (((((iq)■)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  245    |  3     (((((iq)■)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  246    |  3     (((((iq)■)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  247    |  3     (((((iq)■)■)(((\d){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  248    |  3     (((((iq)■)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  249    |  3     (((((iq)■)\.)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  250    |  3     (((((iq)■)\.)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  251    |  3     (((((iq)■)\.)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  252    |  3     (((((iq)■)\.)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  253    |  3     (((((iq)■)\.)(((■){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  254    |  3     (((((iq)■)\.)(((■){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  255    |  3     (((((iq)■)\.)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  256    |  3     (((((iq)■)\.)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  257    |  3     (((((iq)■)\.)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  258    |  3     (((((iq)■)\.)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  259    |  3     (((((iq)■)\.)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  260    |  3     (((((iq)■)\.)(((\d){■}\-)(\d){2}))■)([^:])+fail dotstar or empty
  261    |  3     (((((iq)■)\.)(((\d){■}\-)(\d){2}))\.)(■)+fail dotstar or empty
  262    |  3     (((((iq)■)\.)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  263    |  3     (((((iq)■)\.)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  264    |  3     (((((iq)■)\.)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  265    |  3     (((((iq)■)\.)(((\d){4}■)(\d){2}))■)([^:])+fail dotstar or empty
  266    |  3     (((((iq)■)\.)(((\d){4}■)(\d){2}))\.)(■)+fail dotstar or empty
  267    |  3     (((((iq)■)\.)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  268    |  3     (((((iq)■)\.)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  269    |  3     (((((iq)■)\.)(((\d){4}\-)(■){2}))■)([^:])+fail dotstar or empty
  270    |  3     (((((iq)■)\.)(((\d){4}\-)(■){2}))\.)(■)+fail dotstar or empty
  271    |  3     (((((iq)■)\.)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  272    |  3     (((((iq)■)\.)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  273    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){■}))■)([^:])+fail dotstar or empty
  274    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){■}))\.)(■)+fail dotstar or empty
  275    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  276    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){2}))■)(■)+fail dotstar or empty
  277    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dotstar or empty
  278    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)(■){■}fail dotstar or empty
  279    |  3     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)■fail dotstar or empty
  280    |  3     (((((iq)n)■)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  281    |  3     (((((iq)n)■)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  282    |  3     (((((iq)n)■)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  283    |  3     (((((iq)n)■)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  284    |  3     (((((iq)n)■)(((■){4}\-)(\d){2}))■)([^:])+fail dotstar or empty
  285    |  3     (((((iq)n)■)(((■){4}\-)(\d){2}))\.)(■)+fail dotstar or empty
  286    |  3     (((((iq)n)■)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  287    |  3     (((((iq)n)■)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  288    |  3     (((((iq)n)■)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  289    |  3     (((((iq)n)■)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  290    |  3     (((((iq)n)■)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  291    |  3     (((((iq)n)■)(((\d){■}\-)(\d){2}))■)([^:])+fail dotstar or empty
  292    |  3     (((((iq)n)■)(((\d){■}\-)(\d){2}))\.)(■)+fail dotstar or empty
  293    |  3     (((((iq)n)■)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  294    |  3     (((((iq)n)■)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  295    |  3     (((((iq)n)■)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  296    |  3     (((((iq)n)■)(((\d){4}■)(\d){2}))■)([^:])+fail dotstar or empty
  297    |  3     (((((iq)n)■)(((\d){4}■)(\d){2}))\.)(■)+fail dotstar or empty
  298    |  3     (((((iq)n)■)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  299    |  3     (((((iq)n)■)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  300    |  3     (((((iq)n)■)(((\d){4}\-)(■){2}))■)([^:])+fail dotstar or empty
  301    |  3     (((((iq)n)■)(((\d){4}\-)(■){2}))\.)(■)+fail dotstar or empty
  302    |  3     (((((iq)n)■)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  303    |  3     (((((iq)n)■)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  304    |  3     (((((iq)n)■)(((\d){4}\-)(\d){■}))■)([^:])+fail dotstar or empty
  305    |  3     (((((iq)n)■)(((\d){4}\-)(\d){■}))\.)(■)+fail dotstar or empty
  306    |  3     (((((iq)n)■)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  307    |  3     (((((iq)n)■)(((\d){4}\-)(\d){2}))■)(■)+fail dotstar or empty
  308    |  3     (((((iq)n)■)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dotstar or empty
  309    |  3     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)(■){■}fail dotstar or empty
  310    |  3     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)■fail dotstar or empty
  311    |  3     (((((iq)n)\.)(((■){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  312    |  3     (((((iq)n)\.)(((■){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  313    |  3     (((((iq)n)\.)(((■){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  314    |  3     (((((iq)n)\.)(((■){■}\-)(\d){2}))■)([^:])+fail dotstar or empty
  315    |  3     (((((iq)n)\.)(((■){■}\-)(\d){2}))\.)(■)+fail dotstar or empty
  316    |  3     (((((iq)n)\.)(((■){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  317    |  3     (((((iq)n)\.)(((■){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  318    |  3     (((((iq)n)\.)(((■){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  319    |  3     (((((iq)n)\.)(((■){4}■)(\d){2}))■)([^:])+fail dotstar or empty
  320    |  3     (((((iq)n)\.)(((■){4}■)(\d){2}))\.)(■)+fail dotstar or empty
  321    |  3     (((((iq)n)\.)(((■){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  322    |  3     (((((iq)n)\.)((■■)(\d){2}))\.)([^:])+fail dotstar or empty
  323    |  3     (((((iq)n)\.)(((■){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  324    |  3     (((((iq)n)\.)(((■){4}\-)(■){2}))■)([^:])+fail dotstar or empty
  325    |  3     (((((iq)n)\.)(((■){4}\-)(■){2}))\.)(■)+fail dotstar or empty
  326    |  3     (((((iq)n)\.)(((■){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  327    |  3     (((((iq)n)\.)((■\-)(■){2}))\.)([^:])+fail dotstar or empty
  328    |  3     (((((iq)n)\.)(((■){4}\-)■))\.)([^:])+fail dotstar or empty
  329    |  3     (((((iq)n)\.)(((■){4}\-)(\d){■}))■)([^:])+fail dotstar or empty
  330    |  3     (((((iq)n)\.)(((■){4}\-)(\d){■}))\.)(■)+fail dotstar or empty
  331    |  3     (((((iq)n)\.)(((■){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  332    |  3     (((((iq)n)\.)((■\-)(\d){■}))\.)([^:])+fail dotstar or empty
  333    |  3     (((((iq)n)\.)(((■){4}\-)(\d){2}))■)(■)+fail dotstar or empty
  334    |  3     (((((iq)n)\.)(((■){4}\-)(\d){2}))■)([^:]){■}fail dotstar or empty
  335    |  3     (((((iq)n)\.)((■\-)(\d){2}))■)([^:])+fail dotstar or empty
  336    |  3     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)(■){■}fail dotstar or empty
  337    |  3     (((((iq)n)\.)((■\-)(\d){2}))\.)(■)+fail dotstar or empty
  338    |  3     (((((iq)n)\.)((■\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  339    |  3     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)■fail dotstar or empty
  340    |  3     (((((iq)n)\.)(((\d){■}■)(■){2}))\.)([^:])+fail dotstar or empty
  341    |  3     (((((iq)n)\.)(((\d){■}■)(\d){■}))\.)([^:])+fail dotstar or empty
  342    |  3     (((((iq)n)\.)(((\d){■}■)(\d){2}))■)([^:])+fail dotstar or empty
  343    |  3     (((((iq)n)\.)(((\d){■}■)(\d){2}))\.)(■)+fail dotstar or empty
  344    |  3     (((((iq)n)\.)(((\d){■}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  345    |  3     (((((iq)n)\.)(((\d){■}\-)(■){■}))\.)([^:])+fail dotstar or empty
  346    |  3     (((((iq)n)\.)(((\d){■}\-)(■){2}))■)([^:])+fail dotstar or empty
  347    |  3     (((((iq)n)\.)(((\d){■}\-)(■){2}))\.)(■)+fail dotstar or empty
  348    |  3     (((((iq)n)\.)(((\d){■}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  349    |  3     (((((iq)n)\.)(((\d){■}\-)■))\.)([^:])+fail dotstar or empty
  350    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){■}))■)([^:])+fail dotstar or empty
  351    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){■}))\.)(■)+fail dotstar or empty
  352    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  353    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){2}))■)(■)+fail dotstar or empty
  354    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){2}))■)([^:]){■}fail dotstar or empty
  355    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)(■){■}fail dotstar or empty
  356    |  3     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)■fail dotstar or empty
  357    |  3     (((((iq)n)\.)(((\d){4}■)(■){■}))\.)([^:])+fail dotstar or empty
  358    |  3     (((((iq)n)\.)(((\d){4}■)(■){2}))■)([^:])+fail dotstar or empty
  359    |  3     (((((iq)n)\.)(((\d){4}■)(■){2}))\.)(■)+fail dotstar or empty
  360    |  3     (((((iq)n)\.)(((\d){4}■)(■){2}))\.)([^:]){■}fail dotstar or empty
  361    |  3     (((((iq)n)\.)(((\d){4}■)■))\.)([^:])+fail dotstar or empty
  362    |  3     (((((iq)n)\.)(((\d){4}■)(\d){■}))■)([^:])+fail dotstar or empty
  363    |  3     (((((iq)n)\.)(((\d){4}■)(\d){■}))\.)(■)+fail dotstar or empty
  364    |  3     (((((iq)n)\.)(((\d){4}■)(\d){■}))\.)([^:]){■}fail dotstar or empty
  365    |  3     (((((iq)n)\.)(((\d){4}■)(\d){2}))■)(■)+fail dotstar or empty
  366    |  3     (((((iq)n)\.)(((\d){4}■)(\d){2}))■)([^:]){■}fail dotstar or empty
  367    |  3     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)(■){■}fail dotstar or empty
  368    |  3     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)■fail dotstar or empty
  369    |  3     (((((iq)n)\.)(((\d){4}\-)(■){■}))■)([^:])+fail dotstar or empty
  370    |  3     (((((iq)n)\.)(((\d){4}\-)(■){■}))\.)(■)+fail dotstar or empty
  371    |  3     (((((iq)n)\.)(((\d){4}\-)(■){■}))\.)([^:]){■}fail dotstar or empty
  372    |  3     (((((iq)n)\.)(((\d){4}\-)(■){2}))■)(■)+fail dotstar or empty
  373    |  3     (((((iq)n)\.)(((\d){4}\-)(■){2}))■)([^:]){■}fail dotstar or empty
  374    |  3     (((((iq)n)\.)(((\d){4}\-)■))■)([^:])+fail dotstar or empty
  375    |  3     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)(■){■}fail dotstar or empty
  376    |  3     (((((iq)n)\.)(((\d){4}\-)■))\.)(■)+fail dotstar or empty
  377    |  3     (((((iq)n)\.)(((\d){4}\-)■))\.)([^:]){■}fail dotstar or empty
  378    |  3     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)■fail dotstar or empty
  379    |  3     (((((iq)n)\.)(((\d){4}\-)(\d){■}))■)(■)+fail dotstar or empty
  380    |  3     (((((iq)n)\.)(((\d){4}\-)(\d){■}))■)([^:]){■}fail dotstar or empty
  381    |  3     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)(■){■}fail dotstar or empty
  382    |  3     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)■fail dotstar or empty
  383    |  3     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)(■){■}fail dotstar or empty
  384    |  3     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)■fail dotstar or empty
  385    |  4     (((((■■)■)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  386    |  4     (((((■■)■)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  387    |  4     (((((■■)■)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  388    |  4     (((((■■)■)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  389    |  4     (((((■■)■)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  390    |  4     (((((■■)■)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  391    |  4     (((((■■)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  392    |  4     (((((■■)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  393    |  4     (((((■■)■)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  394    |  4     (((((■)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  395    |  4     (((((■■)n)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  396    |  4     (((((■■)n)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  397    |  4     (((((■■)n)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  398    |  4     (((((■■)n)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  399    |  4     (((((■■)n)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  400    |  4     (((((■■)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  401    |  4     (((((■■)n)■)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  402    |  4     (((((■■)n)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  403    |  4     (((((■)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  404    |  4     (((((■■)n)\.)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  405    |  4     (((((■■)n)\.)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  406    |  4     (((((■■)n)\.)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  407    |  4     (((((■■)n)\.)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  408    |  4     (((((■■)n)\.)(((■){4}\-)(\d){2}))■)([^:])+fail dot
  409    |  4     (((((■■)n)\.)(((■){4}\-)(\d){2}))\.)(■)+fail dot
  410    |  4     (((((■■)n)\.)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  411    |  4     (((((■)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  412    |  4     (((((■■)n)\.)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  413    |  4     (((((■■)n)\.)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  414    |  4     (((((■■)n)\.)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  415    |  4     (((((■■)n)\.)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  416    |  4     (((((■■)n)\.)(((\d){■}\-)(\d){2}))■)([^:])+fail dot
  417    |  4     (((((■■)n)\.)(((\d){■}\-)(\d){2}))\.)(■)+fail dot
  418    |  4     (((((■■)n)\.)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  419    |  4     (((((■)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  420    |  4     (((((■■)n)\.)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  421    |  4     (((((■■)n)\.)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  422    |  4     (((((■■)n)\.)(((\d){4}■)(\d){2}))■)([^:])+fail dot
  423    |  4     (((((■■)n)\.)(((\d){4}■)(\d){2}))\.)(■)+fail dot
  424    |  4     (((((■■)n)\.)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  425    |  4     (((((■)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  426    |  4     (((((■■)n)\.)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  427    |  4     (((((■■)n)\.)(((\d){4}\-)(■){2}))■)([^:])+fail dot
  428    |  4     (((((■■)n)\.)(((\d){4}\-)(■){2}))\.)(■)+fail dot
  429    |  4     (((((■■)n)\.)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  430    |  4     (((((■)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  431    |  4     (((((■■)n)\.)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  432    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){■}))■)([^:])+fail dot
  433    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){■}))\.)(■)+fail dot
  434    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  435    |  4     (((((■)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  436    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))■)(■)+fail dot
  437    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dot
  438    |  4     (((((■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  439    |  4     ((((((■■)■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  440    |  4     ((((((■|■)■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  441    |  4     ((((((■){■}■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  442    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))(■■))([^:])+fail dot
  443    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))(■|■))([^:])+fail dot
  444    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))(■){■})([^:])+fail dot
  445    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)(■){■}fail dot
  446    |  4     (((((■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  447    |  4     ((((((■■)■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  448    |  4     ((((((■|■)■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  449    |  4     ((((((■){■}■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  450    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)(■■)+fail dot
  451    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)((■|■))+fail dot
  452    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)((■){■})+fail dot
  453    |  4     (((((■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  454    |  4     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)■fail dot
  455    |  4     ((((■n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  456    |  4     (((((■q)■)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  457    |  4     (((((■q)■)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  458    |  4     (((((■q)■)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  459    |  4     (((((■q)■)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  460    |  4     (((((■q)■)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  461    |  4     (((((■q)■)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  462    |  4     (((((■q)■)■)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  463    |  4     (((((■q)■)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  464    |  4     (((((■q)■)\.)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  465    |  4     (((((■q)■)\.)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  466    |  4     (((((■q)■)\.)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  467    |  4     (((((■q)■)\.)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  468    |  4     (((((■q)■)\.)(((■){4}\-)(\d){2}))■)([^:])+fail dot
  469    |  4     (((((■q)■)\.)(((■){4}\-)(\d){2}))\.)(■)+fail dot
  470    |  4     (((((■q)■)\.)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  471    |  4     (((((■q)■)\.)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  472    |  4     (((((■q)■)\.)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  473    |  4     (((((■q)■)\.)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  474    |  4     (((((■q)■)\.)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  475    |  4     (((((■q)■)\.)(((\d){■}\-)(\d){2}))■)([^:])+fail dot
  476    |  4     (((((■q)■)\.)(((\d){■}\-)(\d){2}))\.)(■)+fail dot
  477    |  4     (((((■q)■)\.)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  478    |  4     (((((■q)■)\.)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  479    |  4     (((((■q)■)\.)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  480    |  4     (((((■q)■)\.)(((\d){4}■)(\d){2}))■)([^:])+fail dot
  481    |  4     (((((■q)■)\.)(((\d){4}■)(\d){2}))\.)(■)+fail dot
  482    |  4     (((((■q)■)\.)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  483    |  4     (((((■q)■)\.)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  484    |  4     (((((■q)■)\.)(((\d){4}\-)(■){2}))■)([^:])+fail dot
  485    |  4     (((((■q)■)\.)(((\d){4}\-)(■){2}))\.)(■)+fail dot
  486    |  4     (((((■q)■)\.)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  487    |  4     (((((■q)■)\.)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  488    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){■}))■)([^:])+fail dot
  489    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){■}))\.)(■)+fail dot
  490    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  491    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))■)(■)+fail dot
  492    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dot
  493    |  4     ((((((■■)q)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  494    |  4     ((((((■|■)q)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  495    |  4     ((((((■){■}q)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  496    |  4     (((((■q)(■■))\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  497    |  4     (((((■q)(■|■))\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  498    |  4     (((((■q)(■){■})\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  499    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))(■■))([^:])+fail dot
  500    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))(■|■))([^:])+fail dot
  501    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))(■){■})([^:])+fail dot
  502    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)(■){■}fail dot
  503    |  4     ((((((■■)q)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  504    |  4     ((((((■|■)q)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  505    |  4     ((((((■){■}q)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  506    |  4     (((((■q)(■■))\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  507    |  4     (((((■q)(■|■))\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  508    |  4     (((((■q)(■){■})\.)(((\d){4}\-)(\d){2}))\.)(■)+fail dot
  509    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)(■■)+fail dot
  510    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)((■|■))+fail dot
  511    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)((■){■})+fail dot
  512    |  4     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)■fail dot
  513    |  4     (((((■q)n)■)(((■){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  514    |  4     (((((■q)n)■)(((■){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  515    |  4     (((((■q)n)■)(((■){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  516    |  4     (((((■q)n)■)(((■){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  517    |  4     (((((■q)n)■)(((■){4}\-)(\d){2}))■)([^:])+fail dot
  518    |  4     (((((■q)n)■)(((■){4}\-)(\d){2}))\.)(■)+fail dot
  519    |  4     (((((■q)n)■)(((■){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  520    |  4     (((((■q)n)■)((■\-)(\d){2}))\.)([^:])+fail dotstar or empty
  521    |  4     (((((■q)n)■)(((\d){■}■)(\d){2}))\.)([^:])+fail dotstar or empty
  522    |  4     (((((■q)n)■)(((\d){■}\-)(■){2}))\.)([^:])+fail dotstar or empty
  523    |  4     (((((■q)n)■)(((\d){■}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  524    |  4     (((((■q)n)■)(((\d){■}\-)(\d){2}))■)([^:])+fail dot
  525    |  4     (((((■q)n)■)(((\d){■}\-)(\d){2}))\.)(■)+fail dot
  526    |  4     (((((■q)n)■)(((\d){■}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  527    |  4     (((((■q)n)■)(((\d){4}■)(■){2}))\.)([^:])+fail dotstar or empty
  528    |  4     (((((■q)n)■)(((\d){4}■)(\d){■}))\.)([^:])+fail dotstar or empty
  529    |  4     (((((■q)n)■)(((\d){4}■)(\d){2}))■)([^:])+fail dot
  530    |  4     (((((■q)n)■)(((\d){4}■)(\d){2}))\.)(■)+fail dot
  531    |  4     (((((■q)n)■)(((\d){4}■)(\d){2}))\.)([^:]){■}fail dotstar or empty
  532    |  4     (((((■q)n)■)(((\d){4}\-)(■){■}))\.)([^:])+fail dotstar or empty
  533    |  4     (((((■q)n)■)(((\d){4}\-)(■){2}))■)([^:])+fail dot
  534    |  4     (((((■q)n)■)(((\d){4}\-)(■){2}))\.)(■)+fail dot
  535    |  4     (((((■q)n)■)(((\d){4}\-)(■){2}))\.)([^:]){■}fail dotstar or empty
  536    |  4     (((((■q)n)■)(((\d){4}\-)■))\.)([^:])+fail dotstar or empty
  537    |  4     (((((■q)n)■)(((\d){4}\-)(\d){■}))■)([^:])+fail dot
  538    |  4     (((((■q)n)■)(((\d){4}\-)(\d){■}))\.)(■)+fail dot
  539    |  4     (((((■q)n)■)(((\d){4}\-)(\d){■}))\.)([^:]){■}fail dotstar or empty
  540    |  4     (((((■q)n)■)(((\d){4}\-)(\d){2}))■)(■)+fail dot
  541    |  4     (((((■q)n)■)(((\d){4}\-)(\d){2}))■)([^:]){■}fail dot
  542    |  4     ((((((■■)q)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  543    |  4     ((((((■|■)q)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  544    |  4     ((((((■){■}q)n)■)(((\d){4}\-)(\d){2}))■)([^:])+
2.0209569931030273
timeout