
Given the regular expression:

  'admin((.)*)'

That that should match the strings:

  ✓ (0:5)    admin

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■a)d)m)i)n)(.)*)' fail dotstar or empty
  2      |  1     (((((('■)d)m)i)n)(.)*)' fail dotstar or empty
  3      |  1     (((((('a)■)m)i)n)(.)*)' fail dotstar or empty
  4      |  1     (((((('a)d)■)i)n)(.)*)' fail dotstar or empty
  5      |  1     (((((('a)d)m)■)n)(.)*)' fail dotstar or empty
  6      |  1     (((((('a)d)m)i)■)(.)*)' fail dotstar or empty
  7      |  1     (((((('a)d)m)i)n)(■)*)' fail dotstar or empty
  8      |  1     (((((('a)d)m)i)n)(.){■})'fail dotstar or empty
  9      |  1     (((((('a)d)m)i)n)(.)*)■ fail dotstar or empty
  10     |  2     ((((((■■)d)m)i)n)(.)*)' fail dotstar or empty
  11     |  2     ((((((■a)■)m)i)n)(.)*)' fail dotstar or empty
  12     |  2     ((((((■a)d)■)i)n)(.)*)' fail dotstar or empty
  13     |  2     ((((((■a)d)m)■)n)(.)*)' fail dotstar or empty
  14     |  2     ((((((■a)d)m)i)■)(.)*)' fail dotstar or empty
  15     |  2     ((((((■a)d)m)i)n)(■)*)' fail dotstar or empty
  16     |  2     ((((((■a)d)m)i)n)(.){■})'fail dotstar or empty
  17     |  2     ((((((■a)d)m)i)n)(.)*)■ fail dot
  18     |  2     (((((('■)■)m)i)n)(.)*)' fail dotstar or empty
  19     |  2     (((((('■)d)■)i)n)(.)*)' fail dotstar or empty
  20     |  2     (((((('■)d)m)■)n)(.)*)' fail dotstar or empty
  21     |  2     (((((('■)d)m)i)■)(.)*)' fail dotstar or empty
  22     |  2     (((((('■)d)m)i)n)(■)*)' fail dotstar or empty
  23     |  2     (((((('■)d)m)i)n)(.){■})'fail dotstar or empty
  24     |  2     (((((('■)d)m)i)n)(.)*)■ fail dotstar or empty
  25     |  2     (((((('a)■)■)i)n)(.)*)' fail dotstar or empty
  26     |  2     (((((('a)■)m)■)n)(.)*)' fail dotstar or empty
  27     |  2     (((((('a)■)m)i)■)(.)*)' fail dotstar or empty
  28     |  2     (((((('a)■)m)i)n)(■)*)' fail dotstar or empty
  29     |  2     (((((('a)■)m)i)n)(.){■})'fail dotstar or empty
  30     |  2     (((((('a)■)m)i)n)(.)*)■ fail dotstar or empty
  31     |  2     (((((('a)d)■)■)n)(.)*)' fail dotstar or empty
  32     |  2     (((((('a)d)■)i)■)(.)*)' fail dotstar or empty
  33     |  2     (((((('a)d)■)i)n)(■)*)' fail dotstar or empty
  34     |  2     (((((('a)d)■)i)n)(.){■})'fail dotstar or empty
  35     |  2     (((((('a)d)■)i)n)(.)*)■ fail dotstar or empty
  36     |  2     (((((('a)d)m)■)■)(.)*)' fail dotstar or empty
  37     |  2     (((((('a)d)m)■)n)(■)*)' fail dotstar or empty
  38     |  2     (((((('a)d)m)■)n)(.){■})'fail dotstar or empty
  39     |  2     (((((('a)d)m)■)n)(.)*)■ fail dotstar or empty
  40     |  2     (((((('a)d)m)i)■)(■)*)' fail dotstar or empty
  41     |  2     (((((('a)d)m)i)■)(.){■})'fail dotstar or empty
  42     |  2     (((((('a)d)m)i)■)(.)*)■ fail dotstar or empty
  43     |  2     (((((('a)d)m)i)n)(■){■})'fail dotstar or empty
  44     |  2     (((((('a)d)m)i)n)(■)*)■ fail dotstar or empty
  45     |  2     (((((('a)d)m)i)n)(.){■})■fail dotstar or empty
  46     |  2     (((((('a)d)m)i)n)■)'    fail dotstar or empty
  47     |  3     ((((((■■)■)m)i)n)(.)*)' fail dotstar or empty
  48     |  3     ((((((■■)d)■)i)n)(.)*)' fail dotstar or empty
  49     |  3     ((((((■■)d)m)■)n)(.)*)' fail dotstar or empty
  50     |  3     ((((((■■)d)m)i)■)(.)*)' fail dotstar or empty
  51     |  3     ((((((■■)d)m)i)n)(■)*)' fail dotstar or empty
  52     |  3     ((((((■■)d)m)i)n)(.){■})'fail dotstar or empty
  53     |  3     ((((((■■)d)m)i)n)(.)*)■ fail dot
  54     |  3     ((((((■)d)m)i)n)(.)*)'  fail dotstar or empty
  55     |  3     ((((((■a)■)■)i)n)(.)*)' fail dotstar or empty
  56     |  3     ((((((■a)■)m)■)n)(.)*)' fail dotstar or empty
  57     |  3     ((((((■a)■)m)i)■)(.)*)' fail dotstar or empty
  58     |  3     ((((((■a)■)m)i)n)(■)*)' fail dotstar or empty
  59     |  3     ((((((■a)■)m)i)n)(.){■})'fail dotstar or empty
  60     |  3     ((((((■a)■)m)i)n)(.)*)■ fail dot
  61     |  3     ((((((■a)d)■)■)n)(.)*)' fail dotstar or empty
  62     |  3     ((((((■a)d)■)i)■)(.)*)' fail dotstar or empty
  63     |  3     ((((((■a)d)■)i)n)(■)*)' fail dotstar or empty
  64     |  3     ((((((■a)d)■)i)n)(.){■})'fail dotstar or empty
  65     |  3     ((((((■a)d)■)i)n)(.)*)■ fail dot
  66     |  3     ((((((■a)d)m)■)■)(.)*)' fail dotstar or empty
  67     |  3     ((((((■a)d)m)■)n)(■)*)' fail dotstar or empty
  68     |  3     ((((((■a)d)m)■)n)(.){■})'fail dotstar or empty
  69     |  3     ((((((■a)d)m)■)n)(.)*)■ fail dot
  70     |  3     ((((((■a)d)m)i)■)(■)*)' fail dotstar or empty
  71     |  3     ((((((■a)d)m)i)■)(.){■})'fail dotstar or empty
  72     |  3     ((((((■a)d)m)i)■)(.)*)■ fail dot
  73     |  3     ((((((■a)d)m)i)n)(■){■})'fail dotstar or empty
  74     |  3     ((((((■a)d)m)i)n)(■)*)■ fail dot
  75     |  3     ((((((■a)d)m)i)n)(.){■})■fail dot
  76     |  3     ((((((■a)d)m)i)n)■)'    fail dotstar or empty
  77     |  3     (((((((■■)a)d)m)i)n)(.)*)■fail dot
  78     |  3     (((((((■|■)a)d)m)i)n)(.)*)■fail dot
  79     |  3     (((((((■){■}a)d)m)i)n)(.)*)■fail dot
  80     |  3     ((((((■a)d)m)i)n)(.)*)(■■)fail dot
  81     |  3     ((((((■a)d)m)i)n)(.)*)(■|■)fail dot
  82     |  3     ((((((■a)d)m)i)n)(.)*)(■){■}fail dot
  83     |  3     (((((('■)■)■)i)n)(.)*)' fail dotstar or empty
  84     |  3     (((((('■)■)m)■)n)(.)*)' fail dotstar or empty
  85     |  3     (((((('■)■)m)i)■)(.)*)' fail dotstar or empty
  86     |  3     (((((('■)■)m)i)n)(■)*)' fail dotstar or empty
  87     |  3     (((((('■)■)m)i)n)(.){■})'fail dotstar or empty
  88     |  3     (((((('■)■)m)i)n)(.)*)■ fail dotstar or empty
  89     |  3     (((((('■)d)■)■)n)(.)*)' fail dotstar or empty
  90     |  3     (((((('■)d)■)i)■)(.)*)' fail dotstar or empty
  91     |  3     (((((('■)d)■)i)n)(■)*)' fail dotstar or empty
  92     |  3     (((((('■)d)■)i)n)(.){■})'fail dotstar or empty
  93     |  3     (((((('■)d)■)i)n)(.)*)■ fail dotstar or empty
  94     |  3     (((((('■)d)m)■)■)(.)*)' fail dotstar or empty
  95     |  3     (((((('■)d)m)■)n)(■)*)' fail dotstar or empty
  96     |  3     (((((('■)d)m)■)n)(.){■})'fail dotstar or empty
  97     |  3     (((((('■)d)m)■)n)(.)*)■ fail dotstar or empty
  98     |  3     (((((('■)d)m)i)■)(■)*)' fail dotstar or empty
  99     |  3     (((((('■)d)m)i)■)(.){■})'fail dotstar or empty
  100    |  3     (((((('■)d)m)i)■)(.)*)■ fail dotstar or empty
  101    |  3     (((((('■)d)m)i)n)(■){■})'fail dotstar or empty
  102    |  3     (((((('■)d)m)i)n)(■)*)■ fail dotstar or empty
  103    |  3     (((((('■)d)m)i)n)(.){■})■fail dotstar or empty
  104    |  3     (((((('■)d)m)i)n)■)'    fail dotstar or empty
  105    |  3     (((((('a)■)■)■)n)(.)*)' fail dotstar or empty
  106    |  3     (((((('a)■)■)i)■)(.)*)' fail dotstar or empty
  107    |  3     (((((('a)■)■)i)n)(■)*)' fail dotstar or empty
  108    |  3     (((((('a)■)■)i)n)(.){■})'fail dotstar or empty
  109    |  3     (((((('a)■)■)i)n)(.)*)■ fail dotstar or empty
  110    |  3     (((((('a)■)m)■)■)(.)*)' fail dotstar or empty
  111    |  3     (((((('a)■)m)■)n)(■)*)' fail dotstar or empty
  112    |  3     (((((('a)■)m)■)n)(.){■})'fail dotstar or empty
  113    |  3     (((((('a)■)m)■)n)(.)*)■ fail dotstar or empty
  114    |  3     (((((('a)■)m)i)■)(■)*)' fail dotstar or empty
  115    |  3     (((((('a)■)m)i)■)(.){■})'fail dotstar or empty
  116    |  3     (((((('a)■)m)i)■)(.)*)■ fail dotstar or empty
  117    |  3     (((((('a)■)m)i)n)(■){■})'fail dotstar or empty
  118    |  3     (((((('a)■)m)i)n)(■)*)■ fail dotstar or empty
  119    |  3     (((((('a)■)m)i)n)(.){■})■fail dotstar or empty
  120    |  3     (((((('a)■)m)i)n)■)'    fail dotstar or empty
  121    |  3     (((((('a)d)■)■)■)(.)*)' fail dotstar or empty
  122    |  3     (((((('a)d)■)■)n)(■)*)' fail dotstar or empty
  123    |  3     (((((('a)d)■)■)n)(.){■})'fail dotstar or empty
  124    |  3     (((((('a)d)■)■)n)(.)*)■ fail dotstar or empty
  125    |  3     (((((('a)d)■)i)■)(■)*)' fail dotstar or empty
  126    |  3     (((((('a)d)■)i)■)(.){■})'fail dotstar or empty
  127    |  3     (((((('a)d)■)i)■)(.)*)■ fail dotstar or empty
  128    |  3     (((((('a)d)■)i)n)(■){■})'fail dotstar or empty
  129    |  3     (((((('a)d)■)i)n)(■)*)■ fail dotstar or empty
  130    |  3     (((((('a)d)■)i)n)(.){■})■fail dotstar or empty
  131    |  3     (((((('a)d)■)i)n)■)'    fail dotstar or empty
  132    |  3     (((((('a)d)m)■)■)(■)*)' fail dotstar or empty
  133    |  3     (((((('a)d)m)■)■)(.){■})'fail dotstar or empty
  134    |  3     (((((('a)d)m)■)■)(.)*)■ fail dotstar or empty
  135    |  3     (((((('a)d)m)■)n)(■){■})'fail dotstar or empty
  136    |  3     (((((('a)d)m)■)n)(■)*)■ fail dotstar or empty
  137    |  3     (((((('a)d)m)■)n)(.){■})■fail dotstar or empty
  138    |  3     (((((('a)d)m)■)n)■)'    fail dotstar or empty
  139    |  3     (((((('a)d)m)i)■)(■){■})'fail dotstar or empty
  140    |  3     (((((('a)d)m)i)■)(■)*)■ fail dotstar or empty
  141    |  3     (((((('a)d)m)i)■)(.){■})■fail dotstar or empty
  142    |  3     (((((('a)d)m)i)■)■)'    fail dotstar or empty
  143    |  3     (((((('a)d)m)i)n)(■){■})■fail dotstar or empty
  144    |  3     (((((('a)d)m)i)n)■)■    fail dotstar or empty
  145    |  4     ((((((■■)■)■)i)n)(.)*)' fail dotstar or empty
  146    |  4     ((((((■■)■)m)■)n)(.)*)' fail dotstar or empty
  147    |  4     ((((((■■)■)m)i)■)(.)*)' fail dotstar or empty
  148    |  4     ((((((■■)■)m)i)n)(■)*)' fail dotstar or empty
  149    |  4     ((((((■■)■)m)i)n)(.){■})'fail dotstar or empty
  150    |  4     ((((((■■)■)m)i)n)(.)*)■ fail dot
  151    |  4     ((((((■)■)m)i)n)(.)*)'  fail dotstar or empty
  152    |  4     ((((((■■)d)■)■)n)(.)*)' fail dotstar or empty
  153    |  4     ((((((■■)d)■)i)■)(.)*)' fail dotstar or empty
  154    |  4     ((((((■■)d)■)i)n)(■)*)' fail dotstar or empty
  155    |  4     ((((((■■)d)■)i)n)(.){■})'fail dotstar or empty
  156    |  4     ((((((■■)d)■)i)n)(.)*)■ fail dot
  157    |  4     ((((((■)d)■)i)n)(.)*)'  fail dotstar or empty
  158    |  4     ((((((■■)d)m)■)■)(.)*)' fail dotstar or empty
  159    |  4     ((((((■■)d)m)■)n)(■)*)' fail dotstar or empty
  160    |  4     ((((((■■)d)m)■)n)(.){■})'fail dotstar or empty
  161    |  4     ((((((■■)d)m)■)n)(.)*)■ fail dot
  162    |  4     ((((((■)d)m)■)n)(.)*)'  fail dotstar or empty
  163    |  4     ((((((■■)d)m)i)■)(■)*)' fail dotstar or empty
  164    |  4     ((((((■■)d)m)i)■)(.){■})'fail dotstar or empty
  165    |  4     ((((((■■)d)m)i)■)(.)*)■ fail dot
  166    |  4     ((((((■)d)m)i)■)(.)*)'  fail dotstar or empty
  167    |  4     ((((((■■)d)m)i)n)(■){■})'fail dotstar or empty
  168    |  4     ((((((■■)d)m)i)n)(■)*)■ fail dot
  169    |  4     ((((((■)d)m)i)n)(■)*)'  fail dotstar or empty
  170    |  4     ((((((■■)d)m)i)n)(.){■})■fail dot
  171    |  4     ((((((■)d)m)i)n)(.){■})'fail dotstar or empty
  172    |  4     ((((((■■)d)m)i)n)■)'    fail dotstar or empty
  173    |  4     ((((((■)d)m)i)n)(.)*)■  fail dot
  174    |  4     (((((((■■)■)d)m)i)n)(.)*)■fail dot
  175    |  4     (((((((■|■)■)d)m)i)n)(.)*)■fail dot
  176    |  4     (((((((■){■}■)d)m)i)n)(.)*)■fail dot
  177    |  4     ((((((■■)d)m)i)n)(.)*)(■■)fail dot
  178    |  4     ((((((■■)d)m)i)n)(.)*)(■|■)fail dot
  179    |  4     ((((((■■)d)m)i)n)(.)*)(■){■}fail dot
  180    |  4     (((((■d)m)i)n)(.)*)'    fail dotstar or empty
  181    |  4     ((((((■a)■)■)■)n)(.)*)' fail dotstar or empty
  182    |  4     ((((((■a)■)■)i)■)(.)*)' fail dotstar or empty
  183    |  4     ((((((■a)■)■)i)n)(■)*)' fail dotstar or empty
  184    |  4     ((((((■a)■)■)i)n)(.){■})'fail dotstar or empty
  185    |  4     ((((((■a)■)■)i)n)(.)*)■ fail dot
  186    |  4     ((((((■a)■)m)■)■)(.)*)' fail dotstar or empty
  187    |  4     ((((((■a)■)m)■)n)(■)*)' fail dotstar or empty
  188    |  4     ((((((■a)■)m)■)n)(.){■})'fail dotstar or empty
  189    |  4     ((((((■a)■)m)■)n)(.)*)■ fail dot
  190    |  4     ((((((■a)■)m)i)■)(■)*)' fail dotstar or empty
  191    |  4     ((((((■a)■)m)i)■)(.){■})'fail dotstar or empty
  192    |  4     ((((((■a)■)m)i)■)(.)*)■ fail dot
  193    |  4     ((((((■a)■)m)i)n)(■){■})'fail dotstar or empty
  194    |  4     ((((((■a)■)m)i)n)(■)*)■ fail dot
  195    |  4     ((((((■a)■)m)i)n)(.){■})■fail dot
  196    |  4     ((((((■a)■)m)i)n)■)'    fail dotstar or empty
  197    |  4     (((((((■■)a)■)m)i)n)(.)*)■fail dot
  198    |  4     (((((((■|■)a)■)m)i)n)(.)*)■fail dot
  199    |  4     (((((((■){■}a)■)m)i)n)(.)*)■fail dot
  200    |  4     ((((((■a)(■■))m)i)n)(.)*)■fail dot
  201    |  4     ((((((■a)(■|■))m)i)n)(.)*)■fail dot
  202    |  4     ((((((■a)(■){■})m)i)n)(.)*)■fail dot
  203    |  4     ((((((■a)■)m)i)n)(.)*)(■■)fail dot
  204    |  4     ((((((■a)■)m)i)n)(.)*)(■|■)fail dot
  205    |  4     ((((((■a)■)m)i)n)(.)*)(■){■}fail dot
  206    |  4     ((((((■a)d)■)■)■)(.)*)' fail dotstar or empty
  207    |  4     ((((((■a)d)■)■)n)(■)*)' fail dotstar or empty
  208    |  4     ((((((■a)d)■)■)n)(.){■})'fail dotstar or empty
  209    |  4     ((((((■a)d)■)■)n)(.)*)■ fail dot
  210    |  4     ((((((■a)d)■)i)■)(■)*)' fail dotstar or empty
  211    |  4     ((((((■a)d)■)i)■)(.){■})'fail dotstar or empty
  212    |  4     ((((((■a)d)■)i)■)(.)*)■ fail dot
  213    |  4     ((((((■a)d)■)i)n)(■){■})'fail dotstar or empty
  214    |  4     ((((((■a)d)■)i)n)(■)*)■ fail dot
  215    |  4     ((((((■a)d)■)i)n)(.){■})■fail dot
  216    |  4     ((((((■a)d)■)i)n)■)'    fail dotstar or empty
  217    |  4     (((((((■■)a)d)■)i)n)(.)*)■fail dot
  218    |  4     (((((((■|■)a)d)■)i)n)(.)*)■fail dot
  219    |  4     (((((((■){■}a)d)■)i)n)(.)*)■fail dot
  220    |  4     ((((((■a)d)(■■))i)n)(.)*)■fail dot
  221    |  4     ((((((■a)d)(■|■))i)n)(.)*)■fail dot
  222    |  4     ((((((■a)d)(■){■})i)n)(.)*)■fail dot
  223    |  4     ((((((■a)d)■)i)n)(.)*)(■■)fail dot
  224    |  4     ((((((■a)d)■)i)n)(.)*)(■|■)fail dot
  225    |  4     ((((((■a)d)■)i)n)(.)*)(■){■}fail dot
  226    |  4     ((((((■a)d)m)■)■)(■)*)' fail dotstar or empty
  227    |  4     ((((((■a)d)m)■)■)(.){■})'fail dotstar or empty
  228    |  4     ((((((■a)d)m)■)■)(.)*)■ fail dot
  229    |  4     ((((((■a)d)m)■)n)(■){■})'fail dotstar or empty
  230    |  4     ((((((■a)d)m)■)n)(■)*)■ fail dot
  231    |  4     ((((((■a)d)m)■)n)(.){■})■fail dot
  232    |  4     ((((((■a)d)m)■)n)■)'    fail dotstar or empty
  233    |  4     (((((((■■)a)d)m)■)n)(.)*)■fail dot
  234    |  4     (((((((■|■)a)d)m)■)n)(.)*)■fail dot
  235    |  4     (((((((■){■}a)d)m)■)n)(.)*)■fail dot
  236    |  4     ((((((■a)d)m)(■■))n)(.)*)■fail dot
  237    |  4     ((((((■a)d)m)(■|■))n)(.)*)■fail dot
  238    |  4     ((((((■a)d)m)(■){■})n)(.)*)■fail dot
  239    |  4     ((((((■a)d)m)■)n)(.)*)(■■)fail dot
  240    |  4     ((((((■a)d)m)■)n)(.)*)(■|■)fail dot
  241    |  4     ((((((■a)d)m)■)n)(.)*)(■){■}fail dot
  242    |  4     ((((((■a)d)m)i)■)(■){■})'fail dotstar or empty
  243    |  4     ((((((■a)d)m)i)■)(■)*)■ fail dot
  244    |  4     ((((((■a)d)m)i)■)(.){■})■fail dot
  245    |  4     ((((((■a)d)m)i)■)■)'    fail dotstar or empty
  246    |  4     (((((((■■)a)d)m)i)■)(.)*)■fail dot
  247    |  4     (((((((■|■)a)d)m)i)■)(.)*)■fail dot
  248    |  4     (((((((■){■}a)d)m)i)■)(.)*)■fail dot
  249    |  4     ((((((■a)d)m)i)(■■))(.)*)■fail dot
  250    |  4     ((((((■a)d)m)i)(■|■))(.)*)■fail dot
  251    |  4     ((((((■a)d)m)i)(■){■})(.)*)■fail dot
  252    |  4     ((((((■a)d)m)i)■)(.)*)(■■)fail dot
  253    |  4     ((((((■a)d)m)i)■)(.)*)(■|■)fail dot
  254    |  4     ((((((■a)d)m)i)■)(.)*)(■){■}fail dot
  255    |  4     ((((((■a)d)m)i)n)(■){■})■fail dot
  256    |  4     (((((((■■)a)d)m)i)n)(■)*)■fail dot
  257    |  4     (((((((■|■)a)d)m)i)n)(■)*)■fail dot
  258    |  4     (((((((■){■}a)d)m)i)n)(■)*)■fail dot
  259    |  4     ((((((■a)d)m)i)n)(■■)*)■fail dot
  260    |  4     ((((((■a)d)m)i)n)((■|■))*)■fail dot
  261    |  4     ((((((■a)d)m)i)n)((■){■})*)■fail dot
  262    |  4     ((((((■a)d)m)i)n)(■)*)(■■)fail dot
  263    |  4     ((((((■a)d)m)i)n)(■)*)(■|■)fail dot
  264    |  4     ((((((■a)d)m)i)n)(■)*)(■){■}fail dot
  265    |  4     ((((((■a)d)m)i)n)■)■    fail dot
  266    |  4     (((((((■■)a)d)m)i)n)(.){■})■fail dot
  267    |  4     (((((((■|■)a)d)m)i)n)(.){■})■fail dot
  268    |  4     (((((((■){■}a)d)m)i)n)(.){■})■fail dot
  269    |  4     ((((((■a)d)m)i)n)(.){■})(■■)fail dot
  270    |  4     ((((((■a)d)m)i)n)(.){■})(■|■)fail dot
  271    |  4     ((((((■a)d)m)i)n)(.){■})(■){■}fail dot
  272    |  4     (((((((■)a)d)m)i)n)(.)*)■fail dot
  273    |  4     ((((((((■■)■)a)d)m)i)n)(.)*)■fail dot
  274    |  4     ((((((((■|■)■)a)d)m)i)n)(.)*)■fail dot
  275    |  4     ((((((((■){■}■)a)d)m)i)n)(.)*)■fail dot
  276    |  4     (((((((■■)a)d)m)i)n)(.)*)(■■)fail dot
  277    |  4     (((((((■■)a)d)m)i)n)(.)*)(■|■)fail dot
  278    |  4     (((((((■■)a)d)m)i)n)(.)*)(■){■}fail dot
  279    |  4     (((((((■■|■)a)d)m)i)n)(.)*)■fail dot
  280    |  4     ((((((((■|■)|■)a)d)m)i)n)(.)*)■fail dot
  281    |  4     ((((((((■){■}|■)a)d)m)i)n)(.)*)■fail dot
  282    |  4     (((((((■|■)a)d)m)i)n)(.)*)(■■)fail dot
  283    |  4     (((((((■|■)a)d)m)i)n)(.)*)(■|■)fail dot
  284    |  4     (((((((■|■)a)d)m)i)n)(.)*)(■){■}fail dot
  285    |  4     (((((((■■){■}a)d)m)i)n)(.)*)■fail dot
  286    |  4     ((((((((■|■)){■}a)d)m)i)n)(.)*)■fail dot
  287    |  4     ((((((((■){■}){■}a)d)m)i)n)(.)*)■fail dot
  288    |  4     (((((((■){■}a)d)m)i)n)(.)*)(■■)fail dot
  289    |  4     (((((((■){■}a)d)m)i)n)(.)*)(■|■)fail dot
  290    |  4     (((((((■){■}a)d)m)i)n)(.)*)(■){■}get a solution: ((((((([∅]){0}a)d)m)i)n)(.)*)([∅]){0}
add negative: admin 
  unsatisfiable SAT formula       
  291    |  4     ((((((■a)d)m)i)n)(.)*)(■)fail dot
  292    |  4     ((((((■a)d)m)i)n)(.)*)((■■)■)fail dot
  293    |  4     ((((((■a)d)m)i)n)(.)*)((■|■)■)fail dot
  294    |  4     ((((((■a)d)m)i)n)(.)*)((■){■}■)fail dot
  295    |  4     ((((((■a)d)m)i)n)(.)*)(■■|■)fail dot
  296    |  4     ((((((■a)d)m)i)n)(.)*)((■|■)|■)fail dot
  297    |  4     ((((((■a)d)m)i)n)(.)*)((■){■}|■)fail dot
  298    |  4     ((((((■a)d)m)i)n)(.)*)(■■){■}fail dot
  299    |  4     ((((((■a)d)m)i)n)(.)*)((■|■)){■}fail dot
  300    |  4     ((((((■a)d)m)i)n)(.)*)((■){■}){■}fail dot
  301    |  4     (((((('■)■)■)■)n)(.)*)' fail dotstar or empty
  302    |  4     (((((('■)■)■)i)■)(.)*)' fail dotstar or empty
  303    |  4     (((((('■)■)■)i)n)(■)*)' fail dotstar or empty
  304    |  4     (((((('■)■)■)i)n)(.){■})'fail dotstar or empty
  305    |  4     (((((('■)■)■)i)n)(.)*)■ fail dotstar or empty
  306    |  4     (((((('■)■)m)■)■)(.)*)' fail dotstar or empty
  307    |  4     (((((('■)■)m)■)n)(■)*)' fail dotstar or empty
  308    |  4     (((((('■)■)m)■)n)(.){■})'fail dotstar or empty
  309    |  4     (((((('■)■)m)■)n)(.)*)■ fail dotstar or empty
  310    |  4     (((((('■)■)m)i)■)(■)*)' fail dotstar or empty
  311    |  4     (((((('■)■)m)i)■)(.){■})'fail dotstar or empty
  312    |  4     (((((('■)■)m)i)■)(.)*)■ fail dotstar or empty
  313    |  4     (((((('■)■)m)i)n)(■){■})'fail dotstar or empty
  314    |  4     (((((('■)■)m)i)n)(■)*)■ fail dotstar or empty
  315    |  4     (((((('■)■)m)i)n)(.){■})■fail dotstar or empty
  316    |  4     (((((('■)■)m)i)n)■)'    fail dotstar or empty
  317    |  4     (((((('■)d)■)■)■)(.)*)' fail dotstar or empty
  318    |  4     (((((('■)d)■)■)n)(■)*)' fail dotstar or empty
  319    |  4     (((((('■)d)■)■)n)(.){■})'fail dotstar or empty
  320    |  4     (((((('■)d)■)■)n)(.)*)■ fail dotstar or empty
  321    |  4     (((((('■)d)■)i)■)(■)*)' fail dotstar or empty
  322    |  4     (((((('■)d)■)i)■)(.){■})'fail dotstar or empty
  323    |  4     (((((('■)d)■)i)■)(.)*)■ fail dotstar or empty
  324    |  4     (((((('■)d)■)i)n)(■){■})'fail dotstar or empty
  325    |  4     (((((('■)d)■)i)n)(■)*)■ fail dotstar or empty
  326    |  4     (((((('■)d)■)i)n)(.){■})■fail dotstar or empty
  327    |  4     (((((('■)d)■)i)n)■)'    fail dotstar or empty
  328    |  4     (((((('■)d)m)■)■)(■)*)' fail dotstar or empty
  329    |  4     (((((('■)d)m)■)■)(.){■})'fail dotstar or empty
  330    |  4     (((((('■)d)m)■)■)(.)*)■ fail dotstar or empty
  331    |  4     (((((('■)d)m)■)n)(■){■})'fail dotstar or empty
  332    |  4     (((((('■)d)m)■)n)(■)*)■ fail dotstar or empty
  333    |  4     (((((('■)d)m)■)n)(.){■})■fail dotstar or empty
  334    |  4     (((((('■)d)m)■)n)■)'    fail dotstar or empty
  335    |  4     (((((('■)d)m)i)■)(■){■})'fail dotstar or empty
  336    |  4     (((((('■)d)m)i)■)(■)*)■ fail dotstar or empty
  337    |  4     (((((('■)d)m)i)■)(.){■})■fail dotstar or empty
  338    |  4     (((((('■)d)m)i)■)■)'    fail dotstar or empty
  339    |  4     (((((('■)d)m)i)n)(■){■})■fail dotstar or empty
  340    |  4     (((((('■)d)m)i)n)■)■    fail dotstar or empty
  341    |  4     (((((('a)■)■)■)■)(.)*)' fail dotstar or empty
  342    |  4     (((((('a)■)■)■)n)(■)*)' fail dotstar or empty
  343    |  4     (((((('a)■)■)■)n)(.){■})'fail dotstar or empty
  344    |  4     (((((('a)■)■)■)n)(.)*)■ fail dotstar or empty
  345    |  4     (((((('a)■)■)i)■)(■)*)' fail dotstar or empty
  346    |  4     (((((('a)■)■)i)■)(.){■})'fail dotstar or empty
  347    |  4     (((((('a)■)■)i)■)(.)*)■ fail dotstar or empty
  348    |  4     (((((('a)■)■)i)n)(■){■})'fail dotstar or empty
  349    |  4     (((((('a)■)■)i)n)(■)*)■ fail dotstar or empty
  350    |  4     (((((('a)■)■)i)n)(.){■})■fail dotstar or empty
  351    |  4     (((((('a)■)■)i)n)■)'    fail dotstar or empty
  352    |  4     (((((('a)■)m)■)■)(■)*)' fail dotstar or empty
  353    |  4     (((((('a)■)m)■)■)(.){■})'fail dotstar or empty
  354    |  4     (((((('a)■)m)■)■)(.)*)■ fail dotstar or empty
  355    |  4     (((((('a)■)m)■)n)(■){■})'fail dotstar or empty
  356    |  4     (((((('a)■)m)■)n)(■)*)■ fail dotstar or empty
  357    |  4     (((((('a)■)m)■)n)(.){■})■fail dotstar or empty
  358    |  4     (((((('a)■)m)■)n)■)'    fail dotstar or empty
  359    |  4     (((((('a)■)m)i)■)(■){■})'fail dotstar or empty
  360    |  4     (((((('a)■)m)i)■)(■)*)■ fail dotstar or empty
  361    |  4     (((((('a)■)m)i)■)(.){■})■fail dotstar or empty
  362    |  4     (((((('a)■)m)i)■)■)'    fail dotstar or empty
  363    |  4     (((((('a)■)m)i)n)(■){■})■fail dotstar or empty
  364    |  4     (((((('a)■)m)i)n)■)■    fail dotstar or empty
  365    |  4     (((((('a)d)■)■)■)(■)*)' fail dotstar or empty
  366    |  4     (((((('a)d)■)■)■)(.){■})'fail dotstar or empty
  367    |  4     (((((('a)d)■)■)■)(.)*)■ fail dotstar or empty
  368    |  4     (((((('a)d)■)■)n)(■){■})'fail dotstar or empty
  369    |  4     (((((('a)d)■)■)n)(■)*)■ fail dotstar or empty
  370    |  4     (((((('a)d)■)■)n)(.){■})■fail dotstar or empty
  371    |  4     (((((('a)d)■)■)n)■)'    fail dotstar or empty
  372    |  4     (((((('a)d)■)i)■)(■){■})'fail dotstar or empty
  373    |  4     (((((('a)d)■)i)■)(■)*)■ fail dotstar or empty
  374    |  4     (((((('a)d)■)i)■)(.){■})■fail dotstar or empty
  375    |  4     (((((('a)d)■)i)■)■)'    fail dotstar or empty
  376    |  4     (((((('a)d)■)i)n)(■){■})■fail dotstar or empty
  377    |  4     (((((('a)d)■)i)n)■)■    fail dotstar or empty
  378    |  4     (((((('a)d)m)■)■)(■){■})'fail dotstar or empty
  379    |  4     (((((('a)d)m)■)■)(■)*)■ fail dotstar or empty
  380    |  4     (((((('a)d)m)■)■)(.){■})■fail dotstar or empty
  381    |  4     (((((('a)d)m)■)■)■)'    fail dotstar or empty
  382    |  4     (((((('a)d)m)■)n)(■){■})■fail dotstar or empty
  383    |  4     (((((('a)d)m)■)n)■)■    fail dotstar or empty
  384    |  4     (((((('a)d)m)i)■)(■){■})■fail dotstar or empty
  385    |  4     (((((('a)d)m)i)■)■)■    fail dotstar or empty
  386    |  5     ((((((■■)■)■)■)n)(.)*)' fail dotstar or empty
  387    |  5     ((((((■■)■)■)i)■)(.)*)' fail dotstar or empty
  388    |  5     ((((((■■)■)■)i)n)(■)*)' fail dotstar or empty
  389    |  5     ((((((■■)■)■)i)n)(.){■})'fail dotstar or empty
  390    |  5     ((((((■■)■)■)i)n)(.)*)■ fail dot
  391    |  5     ((((((■)■)■)i)n)(.)*)'  fail dotstar or empty
  392    |  5     ((((((■■)■)m)■)■)(.)*)' fail dotstar or empty
  393    |  5     ((((((■■)■)m)■)n)(■)*)' fail dotstar or empty
  394    |  5     ((((((■■)■)m)■)n)(.){■})'fail dotstar or empty
  395    |  5     ((((((■■)■)m)■)n)(.)*)■ fail dot
  396    |  5     ((((((■)■)m)■)n)(.)*)'  fail dotstar or empty
  397    |  5     ((((((■■)■)m)i)■)(■)*)' fail dotstar or empty
  398    |  5     ((((((■■)■)m)i)■)(.){■})'fail dotstar or empty
  399    |  5     ((((((■■)■)m)i)■)(.)*)■ fail dot
  400    |  5     ((((((■)■)m)i)■)(.)*)'  fail dotstar or empty
  401    |  5     ((((((■■)■)m)i)n)(■){■})'fail dotstar or empty
  402    |  5     ((((((■■)■)m)i)n)(■)*)■ fail dot
  403    |  5     ((((((■)■)m)i)n)(■)*)'  fail dotstar or empty
  404    |  5     ((((((■■)■)m)i)n)(.){■})■fail dot
  405    |  5     ((((((■)■)m)i)n)(.){■})'fail dotstar or empty
  406    |  5     ((((((■■)■)m)i)n)■)'    fail dotstar or empty
  407    |  5     ((((((■)■)m)i)n)(.)*)■  fail dot
  408    |  5     (((((((■■)■)■)m)i)n)(.)*)■fail dot
  409    |  5     (((((((■|■)■)■)m)i)n)(.)*)■fail dot
  410    |  5     (((((((■){■}■)■)m)i)n)(.)*)■fail dot
  411    |  5     ((((((■■)(■■))m)i)n)(.)*)■fail dot
  412    |  5     ((((((■■)(■|■))m)i)n)(.)*)■fail dot
  413    |  5     ((((((■■)(■){■})m)i)n)(.)*)■fail dot
  414    |  5     ((((((■■)■)m)i)n)(.)*)(■■)fail dot
  415    |  5     ((((((■■)■)m)i)n)(.)*)(■|■)fail dot
  416    |  5     ((((((■■)■)m)i)n)(.)*)(■){■}fail dot
  417    |  5     (((((■■)m)i)n)(.)*)'    fail dotstar or empty
  418    |  5     ((((((■■)d)■)■)■)(.)*)' fail dotstar or empty
  419    |  5     ((((((■■)d)■)■)n)(■)*)' fail dotstar or empty
  420    |  5     ((((((■■)d)■)■)n)(.){■})'fail dotstar or empty
  421    |  5     ((((((■■)d)■)■)n)(.)*)■ fail dot
  422    |  5     ((((((■)d)■)■)n)(.)*)'  fail dotstar or empty
  423    |  5     ((((((■■)d)■)i)■)(■)*)' fail dotstar or empty
  424    |  5     ((((((■■)d)■)i)■)(.){■})'fail dotstar or empty
  425    |  5     ((((((■■)d)■)i)■)(.)*)■ fail dot
  426    |  5     ((((((■)d)■)i)■)(.)*)'  fail dotstar or empty
  427    |  5     ((((((■■)d)■)i)n)(■){■})'fail dotstar or empty
  428    |  5     ((((((■■)d)■)i)n)(■)*)■ fail dot
  429    |  5     ((((((■)d)■)i)n)(■)*)'  fail dotstar or empty
  430    |  5     ((((((■■)d)■)i)n)(.){■})■fail dot
  431    |  5     ((((((■)d)■)i)n)(.){■})'fail dotstar or empty
  432    |  5     ((((((■■)d)■)i)n)■)'    fail dotstar or empty
  433    |  5     ((((((■)d)■)i)n)(.)*)■  fail dot
  434    |  5     (((((((■■)■)d)■)i)n)(.)*)■fail dot
  435    |  5     (((((((■|■)■)d)■)i)n)(.)*)■fail dot
  436    |  5     (((((((■){■}■)d)■)i)n)(.)*)■fail dot
  437    |  5     ((((((■■)d)(■■))i)n)(.)*)■fail dot
  438    |  5     ((((((■■)d)(■|■))i)n)(.)*)■fail dot
  439    |  5     ((((((■■)d)(■){■})i)n)(.)*)■fail dot
  440    |  5     ((((((■■)d)■)i)n)(.)*)(■■)fail dot
  441    |  5     ((((((■■)d)■)i)n)(.)*)(■|■)fail dot
  442    |  5     ((((((■■)d)■)i)n)(.)*)(■){■}fail dot
  443    |  5     (((((■d)■)i)n)(.)*)'    fail dotstar or empty
  444    |  5     ((((((■■)d)m)■)■)(■)*)' fail dotstar or empty
  445    |  5     ((((((■■)d)m)■)■)(.){■})'fail dotstar or empty
  446    |  5     ((((((■■)d)m)■)■)(.)*)■ fail dot
  447    |  5     ((((((■)d)m)■)■)(.)*)'  fail dotstar or empty
  448    |  5     ((((((■■)d)m)■)n)(■){■})'fail dotstar or empty
  449    |  5     ((((((■■)d)m)■)n)(■)*)■ fail dot
  450    |  5     ((((((■)d)m)■)n)(■)*)'  fail dotstar or empty
  451    |  5     ((((((■■)d)m)■)n)(.){■})■fail dot
  452    |  5     ((((((■)d)m)■)n)(.){■})'fail dotstar or empty
  453    |  5     ((((((■■)d)m)■)n)■)'    fail dotstar or empty
  454    |  5     ((((((■)d)m)■)n)(.)*)■  fail dot
  455    |  5     (((((((■■)■)d)m)■)n)(.)*)■fail dot
  456    |  5     (((((((■|■)■)d)m)■)n)(.)*)■fail dot
  457    |  5     (((((((■){■}■)d)m)■)n)(.)*)■fail dot
  458    |  5     ((((((■■)d)m)(■■))n)(.)*)■fail dot
  459    |  5     ((((((■■)d)m)(■|■))n)(.)*)■fail dot
  460    |  5     ((((((■■)d)m)(■){■})n)(.)*)■fail dot
  461    |  5     ((((((■■)d)m)■)n)(.)*)(■■)fail dot
  462    |  5     ((((((■■)d)m)■)n)(.)*)(■|■)fail dot
  463    |  5     ((((((■■)d)m)■)n)(.)*)(■){■}fail dot
  464    |  5     (((((■d)m)■)n)(.)*)'    fail dotstar or empty
  465    |  5     ((((((■■)d)m)i)■)(■){■})'fail dotstar or empty
  466    |  5     ((((((■■)d)m)i)■)(■)*)■ fail dot
  467    |  5     ((((((■)d)m)i)■)(■)*)'  fail dotstar or empty
  468    |  5     ((((((■■)d)m)i)■)(.){■})■fail dot
  469    |  5     ((((((■)d)m)i)■)(.){■})'fail dotstar or empty
  470    |  5     ((((((■■)d)m)i)■)■)'    fail dotstar or empty
  471    |  5     ((((((■)d)m)i)■)(.)*)■  fail dot
  472    |  5     (((((((■■)■)d)m)i)■)(.)*)■fail dot
  473    |  5     (((((((■|■)■)d)m)i)■)(.)*)■fail dot
  474    |  5     (((((((■){■}■)d)m)i)■)(.)*)■fail dot
  475    |  5     ((((((■■)d)m)i)(■■))(.)*)■fail dot
  476    |  5     ((((((■■)d)m)i)(■|■))(.)*)■fail dot
  477    |  5     ((((((■■)d)m)i)(■){■})(.)*)■fail dot
  478    |  5     ((((((■■)d)m)i)■)(.)*)(■■)fail dot
  479    |  5     ((((((■■)d)m)i)■)(.)*)(■|■)fail dot
  480    |  5     ((((((■■)d)m)i)■)(.)*)(■){■}fail dot
  481    |  5     (((((■d)m)i)■)(.)*)'    fail dotstar or empty
  482    |  5     ((((((■■)d)m)i)n)(■){■})■fail dot
  483    |  5     ((((((■)d)m)i)n)(■){■})'fail dotstar or empty
  484    |  5     ((((((■)d)m)i)n)(■)*)■  fail dot
  485    |  5     (((((((■■)■)d)m)i)n)(■)*)■fail dot
  486    |  5     (((((((■|■)■)d)m)i)n)(■)*)■fail dot
  487    |  5     (((((((■){■}■)d)m)i)n)(■)*)■fail dot
  488    |  5     ((((((■■)d)m)i)n)(■■)*)■fail dot
  489    |  5     ((((((■■)d)m)i)n)((■|■))*)■fail dot
  490    |  5     ((((((■■)d)m)i)n)((■){■})*)■fail dot
  491    |  5     ((((((■■)d)m)i)n)(■)*)(■■)fail dot
  492    |  5     ((((((■■)d)m)i)n)(■)*)(■|■)fail dot
  493    |  5     ((((((■■)d)m)i)n)(■)*)(■){■}fail dot
  494    |  5     (((((■d)m)i)n)(■)*)'    fail dotstar or empty
  495    |  5     ((((((■)d)m)i)n)(.){■})■fail dot
  496    |  5     ((((((■■)d)m)i)n)■)■    fail dot
  497    |  5     (((((((■■)■)d)m)i)n)(.){■})■fail dot
  498    |  5     (((((((■|■)■)d)m)i)n)(.){■})■fail dot
  499    |  5     (((((((■){■}■)d)m)i)n)(.){■})■fail dot
  500    |  5     ((((((■■)d)m)i)n)(.){■})(■■)fail dot
  501    |  5     ((((((■■)d)m)i)n)(.){■})(■|■)fail dot
  502    |  5     ((((((■■)d)m)i)n)(.){■})(■){■}fail dot
  503    |  5     (((((■d)m)i)n)(.){■})'  fail dotstar or empty
  504    |  5     ((((((■)d)m)i)n)■)'     fail dotstar or empty
  505    |  5     (((((■d)m)i)n)(.)*)■    fail dot
  506    |  5     (((((((■■))d)m)i)n)(.)*)■fail dot
  507    |  5     (((((((■|■))d)m)i)n)(.)*)■fail dot
  508    |  5     (((((((■){■})d)m)i)n)(.)*)■fail dot
  509    |  5     ((((((■)d)m)i)n)(.)*)(■■)fail dot
  510    |  5     ((((((■)d)m)i)n)(.)*)(■|■)fail dot
  511    |  5     ((((((■)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  512    |  5     (((((((■)■)d)m)i)n)(.)*)■fail dot
  513    |  5     ((((((((■■)■)■)d)m)i)n)(.)*)■fail dot
  514    |  5     ((((((((■|■)■)■)d)m)i)n)(.)*)■fail dot
  515    |  5     ((((((((■){■}■)■)d)m)i)n)(.)*)■fail dot
  516    |  5     (((((((■■)(■■))d)m)i)n)(.)*)■fail dot
  517    |  5     (((((((■■)(■|■))d)m)i)n)(.)*)■fail dot
  518    |  5     (((((((■■)(■){■})d)m)i)n)(.)*)■fail dot
  519    |  5     (((((((■■)■)d)m)i)n)(.)*)(■■)fail dot
  520    |  5     (((((((■■)■)d)m)i)n)(.)*)(■|■)fail dot
  521    |  5     (((((((■■)■)d)m)i)n)(.)*)(■){■}fail dot
  522    |  5     (((((((■■|■)■)d)m)i)n)(.)*)■fail dot
  523    |  5     ((((((((■|■)|■)■)d)m)i)n)(.)*)■fail dot
  524    |  5     ((((((((■){■}|■)■)d)m)i)n)(.)*)■fail dot
  525    |  5     (((((((■|■)(■■))d)m)i)n)(.)*)■fail dot
  526    |  5     (((((((■|■)(■|■))d)m)i)n)(.)*)■fail dot
  527    |  5     (((((((■|■)(■){■})d)m)i)n)(.)*)■fail dot
  528    |  5     (((((((■|■)■)d)m)i)n)(.)*)(■■)fail dot
  529    |  5     (((((((■|■)■)d)m)i)n)(.)*)(■|■)fail dot
  530    |  5     (((((((■|■)■)d)m)i)n)(.)*)(■){■}fail dot
  531    |  5     (((((((■■){■}■)d)m)i)n)(.)*)■fail dot
  532    |  5     ((((((((■|■)){■}■)d)m)i)n)(.)*)■fail dot
  533    |  5     ((((((((■){■}){■}■)d)m)i)n)(.)*)■fail dot
  534    |  5     (((((((■){■}(■■))d)m)i)n)(.)*)■fail dot
  535    |  5     (((((((■){■}(■|■))d)m)i)n)(.)*)■fail dot
  536    |  5     (((((((■){■}(■){■})d)m)i)n)(.)*)■fail dot
  537    |  5     (((((((■){■}■)d)m)i)n)(.)*)(■■)fail dot
  538    |  5     (((((((■){■}■)d)m)i)n)(.)*)(■|■)fail dot
  539    |  5     (((((((■){■}■)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  540    |  5     ((((((■■)d)m)i)n)(.)*)(■)fail dot
  541    |  5     ((((((■■)d)m)i)n)(.)*)((■■)■)fail dot
  542    |  5     ((((((■■)d)m)i)n)(.)*)((■|■)■)fail dot
  543    |  5     ((((((■■)d)m)i)n)(.)*)((■){■}■)fail dot
  544    |  5     ((((((■■)d)m)i)n)(.)*)(■■|■)fail dot
  545    |  5     ((((((■■)d)m)i)n)(.)*)((■|■)|■)fail dot
  546    |  5     ((((((■■)d)m)i)n)(.)*)((■){■}|■)fail dot
  547    |  5     ((((((■■)d)m)i)n)(.)*)(■■){■}fail dot
  548    |  5     ((((((■■)d)m)i)n)(.)*)((■|■)){■}fail dot
  549    |  5     ((((((■■)d)m)i)n)(.)*)((■){■}){■}fail dot
  550    |  5     ((((((■a)■)■)■)■)(.)*)' fail dotstar or empty
  551    |  5     ((((((■a)■)■)■)n)(■)*)' fail dotstar or empty
  552    |  5     ((((((■a)■)■)■)n)(.){■})'fail dotstar or empty
  553    |  5     ((((((■a)■)■)■)n)(.)*)■ fail dot
  554    |  5     ((((((■a)■)■)i)■)(■)*)' fail dotstar or empty
  555    |  5     ((((((■a)■)■)i)■)(.){■})'fail dotstar or empty
  556    |  5     ((((((■a)■)■)i)■)(.)*)■ fail dot
  557    |  5     ((((((■a)■)■)i)n)(■){■})'fail dotstar or empty
  558    |  5     ((((((■a)■)■)i)n)(■)*)■ fail dot
  559    |  5     ((((((■a)■)■)i)n)(.){■})■fail dot
  560    |  5     ((((((■a)■)■)i)n)■)'    fail dotstar or empty
  561    |  5     (((((((■■)a)■)■)i)n)(.)*)■fail dot
  562    |  5     (((((((■|■)a)■)■)i)n)(.)*)■fail dot
  563    |  5     (((((((■){■}a)■)■)i)n)(.)*)■fail dot
  564    |  5     ((((((■a)(■■))■)i)n)(.)*)■fail dot
  565    |  5     ((((((■a)(■|■))■)i)n)(.)*)■fail dot
  566    |  5     ((((((■a)(■){■})■)i)n)(.)*)■fail dot
  567    |  5     ((((((■a)■)(■■))i)n)(.)*)■fail dot
  568    |  5     ((((((■a)■)(■|■))i)n)(.)*)■fail dot
  569    |  5     ((((((■a)■)(■){■})i)n)(.)*)■fail dot
  570    |  5     ((((((■a)■)■)i)n)(.)*)(■■)fail dot
  571    |  5     ((((((■a)■)■)i)n)(.)*)(■|■)fail dot
  572    |  5     ((((((■a)■)■)i)n)(.)*)(■){■}fail dot
  573    |  5     ((((((■a)■)m)■)■)(■)*)' fail dotstar or empty
  574    |  5     ((((((■a)■)m)■)■)(.){■})'fail dotstar or empty
  575    |  5     ((((((■a)■)m)■)■)(.)*)■ fail dot
  576    |  5     ((((((■a)■)m)■)n)(■){■})'fail dotstar or empty
  577    |  5     ((((((■a)■)m)■)n)(■)*)■ fail dot
  578    |  5     ((((((■a)■)m)■)n)(.){■})■fail dot
  579    |  5     ((((((■a)■)m)■)n)■)'    fail dotstar or empty
  580    |  5     (((((((■■)a)■)m)■)n)(.)*)■fail dot
  581    |  5     (((((((■|■)a)■)m)■)n)(.)*)■fail dot
  582    |  5     (((((((■){■}a)■)m)■)n)(.)*)■fail dot
  583    |  5     ((((((■a)(■■))m)■)n)(.)*)■fail dot
  584    |  5     ((((((■a)(■|■))m)■)n)(.)*)■fail dot
  585    |  5     ((((((■a)(■){■})m)■)n)(.)*)■fail dot
  586    |  5     ((((((■a)■)m)(■■))n)(.)*)■fail dot
  587    |  5     ((((((■a)■)m)(■|■))n)(.)*)■fail dot
  588    |  5     ((((((■a)■)m)(■){■})n)(.)*)■fail dot
  589    |  5     ((((((■a)■)m)■)n)(.)*)(■■)fail dot
  590    |  5     ((((((■a)■)m)■)n)(.)*)(■|■)fail dot
  591    |  5     ((((((■a)■)m)■)n)(.)*)(■){■}fail dot
  592    |  5     ((((((■a)■)m)i)■)(■){■})'fail dotstar or empty
  593    |  5     ((((((■a)■)m)i)■)(■)*)■ fail dot
  594    |  5     ((((((■a)■)m)i)■)(.){■})■fail dot
  595    |  5     ((((((■a)■)m)i)■)■)'    fail dotstar or empty
  596    |  5     (((((((■■)a)■)m)i)■)(.)*)■fail dot
  597    |  5     (((((((■|■)a)■)m)i)■)(.)*)■fail dot
  598    |  5     (((((((■){■}a)■)m)i)■)(.)*)■fail dot
  599    |  5     ((((((■a)(■■))m)i)■)(.)*)■fail dot
  600    |  5     ((((((■a)(■|■))m)i)■)(.)*)■fail dot
  601    |  5     ((((((■a)(■){■})m)i)■)(.)*)■fail dot
  602    |  5     ((((((■a)■)m)i)(■■))(.)*)■fail dot
  603    |  5     ((((((■a)■)m)i)(■|■))(.)*)■fail dot
  604    |  5     ((((((■a)■)m)i)(■){■})(.)*)■fail dot
  605    |  5     ((((((■a)■)m)i)■)(.)*)(■■)fail dot
  606    |  5     ((((((■a)■)m)i)■)(.)*)(■|■)fail dot
  607    |  5     ((((((■a)■)m)i)■)(.)*)(■){■}fail dot
  608    |  5     ((((((■a)■)m)i)n)(■){■})■fail dot
  609    |  5     (((((((■■)a)■)m)i)n)(■)*)■fail dot
  610    |  5     (((((((■|■)a)■)m)i)n)(■)*)■fail dot
  611    |  5     (((((((■){■}a)■)m)i)n)(■)*)■fail dot
  612    |  5     ((((((■a)(■■))m)i)n)(■)*)■fail dot
  613    |  5     ((((((■a)(■|■))m)i)n)(■)*)■fail dot
  614    |  5     ((((((■a)(■){■})m)i)n)(■)*)■fail dot
  615    |  5     ((((((■a)■)m)i)n)(■■)*)■fail dot
  616    |  5     ((((((■a)■)m)i)n)((■|■))*)■fail dot
  617    |  5     ((((((■a)■)m)i)n)((■){■})*)■fail dot
  618    |  5     ((((((■a)■)m)i)n)(■)*)(■■)fail dot
  619    |  5     ((((((■a)■)m)i)n)(■)*)(■|■)fail dot
  620    |  5     ((((((■a)■)m)i)n)(■)*)(■){■}fail dot
  621    |  5     ((((((■a)■)m)i)n)■)■    fail dot
  622    |  5     (((((((■■)a)■)m)i)n)(.){■})■fail dot
  623    |  5     (((((((■|■)a)■)m)i)n)(.){■})■fail dot
  624    |  5     (((((((■){■}a)■)m)i)n)(.){■})■fail dot
  625    |  5     ((((((■a)(■■))m)i)n)(.){■})■fail dot
  626    |  5     ((((((■a)(■|■))m)i)n)(.){■})■fail dot
  627    |  5     ((((((■a)(■){■})m)i)n)(.){■})■fail dot
  628    |  5     ((((((■a)■)m)i)n)(.){■})(■■)fail dot
  629    |  5     ((((((■a)■)m)i)n)(.){■})(■|■)fail dot
  630    |  5     ((((((■a)■)m)i)n)(.){■})(■){■}fail dot
  631    |  5     (((((((■)a)■)m)i)n)(.)*)■fail dot
  632    |  5     ((((((((■■)■)a)■)m)i)n)(.)*)■fail dot
  633    |  5     ((((((((■|■)■)a)■)m)i)n)(.)*)■fail dot
  634    |  5     ((((((((■){■}■)a)■)m)i)n)(.)*)■fail dot
  635    |  5     (((((((■■)a)(■■))m)i)n)(.)*)■fail dot
  636    |  5     (((((((■■)a)(■|■))m)i)n)(.)*)■fail dot
  637    |  5     (((((((■■)a)(■){■})m)i)n)(.)*)■fail dot
  638    |  5     (((((((■■)a)■)m)i)n)(.)*)(■■)fail dot
  639    |  5     (((((((■■)a)■)m)i)n)(.)*)(■|■)fail dot
  640    |  5     (((((((■■)a)■)m)i)n)(.)*)(■){■}fail dot
  641    |  5     (((((((■■|■)a)■)m)i)n)(.)*)■fail dot
  642    |  5     ((((((((■|■)|■)a)■)m)i)n)(.)*)■fail dot
  643    |  5     ((((((((■){■}|■)a)■)m)i)n)(.)*)■fail dot
  644    |  5     (((((((■|■)a)(■■))m)i)n)(.)*)■fail dot
  645    |  5     (((((((■|■)a)(■|■))m)i)n)(.)*)■fail dot
  646    |  5     (((((((■|■)a)(■){■})m)i)n)(.)*)■fail dot
  647    |  5     (((((((■|■)a)■)m)i)n)(.)*)(■■)fail dot
  648    |  5     (((((((■|■)a)■)m)i)n)(.)*)(■|■)fail dot
  649    |  5     (((((((■|■)a)■)m)i)n)(.)*)(■){■}fail dot
  650    |  5     (((((((■■){■}a)■)m)i)n)(.)*)■fail dot
  651    |  5     ((((((((■|■)){■}a)■)m)i)n)(.)*)■fail dot
  652    |  5     ((((((((■){■}){■}a)■)m)i)n)(.)*)■fail dot
  653    |  5     (((((((■){■}a)(■■))m)i)n)(.)*)■fail dot
  654    |  5     (((((((■){■}a)(■|■))m)i)n)(.)*)■fail dot
  655    |  5     (((((((■){■}a)(■){■})m)i)n)(.)*)■fail dot
  656    |  5     (((((((■){■}a)■)m)i)n)(.)*)(■■)fail dot
  657    |  5     (((((((■){■}a)■)m)i)n)(.)*)(■|■)fail dot
  658    |  5     (((((((■){■}a)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  659    |  5     ((((((■a)(■))m)i)n)(.)*)■fail dot
  660    |  5     ((((((■a)((■■)■))m)i)n)(.)*)■fail dot
  661    |  5     ((((((■a)((■|■)■))m)i)n)(.)*)■fail dot
  662    |  5     ((((((■a)((■){■}■))m)i)n)(.)*)■fail dot
  663    |  5     ((((((■a)(■■))m)i)n)(.)*)(■■)fail dot
  664    |  5     ((((((■a)(■■))m)i)n)(.)*)(■|■)fail dot
  665    |  5     ((((((■a)(■■))m)i)n)(.)*)(■){■}fail dot
  666    |  5     ((((((■a)(■■|■))m)i)n)(.)*)■fail dot
  667    |  5     ((((((■a)((■|■)|■))m)i)n)(.)*)■fail dot
  668    |  5     ((((((■a)((■){■}|■))m)i)n)(.)*)■fail dot
  669    |  5     ((((((■a)(■|■))m)i)n)(.)*)(■■)fail dot
  670    |  5     ((((((■a)(■|■))m)i)n)(.)*)(■|■)fail dot
  671    |  5     ((((((■a)(■|■))m)i)n)(.)*)(■){■}fail dot
  672    |  5     ((((((■a)(■■){■})m)i)n)(.)*)■fail dot
  673    |  5     ((((((■a)((■|■)){■})m)i)n)(.)*)■fail dot
  674    |  5     ((((((■a)((■){■}){■})m)i)n)(.)*)■fail dot
  675    |  5     ((((((■a)(■){■})m)i)n)(.)*)(■■)fail dot
  676    |  5     ((((((■a)(■){■})m)i)n)(.)*)(■|■)fail dot
  677    |  5     ((((((■a)(■){■})m)i)n)(.)*)(■){■}fail dot
  678    |  5     ((((((■a)■)m)i)n)(.)*)(■)fail dot
  679    |  5     ((((((■a)■)m)i)n)(.)*)((■■)■)fail dot
  680    |  5     ((((((■a)■)m)i)n)(.)*)((■|■)■)fail dot
  681    |  5     ((((((■a)■)m)i)n)(.)*)((■){■}■)fail dot
  682    |  5     ((((((■a)■)m)i)n)(.)*)(■■|■)fail dot
  683    |  5     ((((((■a)■)m)i)n)(.)*)((■|■)|■)fail dot
  684    |  5     ((((((■a)■)m)i)n)(.)*)((■){■}|■)fail dot
  685    |  5     ((((((■a)■)m)i)n)(.)*)(■■){■}fail dot
  686    |  5     ((((((■a)■)m)i)n)(.)*)((■|■)){■}fail dot
  687    |  5     ((((((■a)■)m)i)n)(.)*)((■){■}){■}fail dot
  688    |  5     ((((((■a)d)■)■)■)(■)*)' fail dotstar or empty
  689    |  5     ((((((■a)d)■)■)■)(.){■})'fail dotstar or empty
  690    |  5     ((((((■a)d)■)■)■)(.)*)■ fail dot
  691    |  5     ((((((■a)d)■)■)n)(■){■})'fail dotstar or empty
  692    |  5     ((((((■a)d)■)■)n)(■)*)■ fail dot
  693    |  5     ((((((■a)d)■)■)n)(.){■})■fail dot
  694    |  5     ((((((■a)d)■)■)n)■)'    fail dotstar or empty
  695    |  5     (((((((■■)a)d)■)■)n)(.)*)■fail dot
  696    |  5     (((((((■|■)a)d)■)■)n)(.)*)■fail dot
  697    |  5     (((((((■){■}a)d)■)■)n)(.)*)■fail dot
  698    |  5     ((((((■a)d)(■■))■)n)(.)*)■fail dot
  699    |  5     ((((((■a)d)(■|■))■)n)(.)*)■fail dot
  700    |  5     ((((((■a)d)(■){■})■)n)(.)*)■fail dot
  701    |  5     ((((((■a)d)■)(■■))n)(.)*)■fail dot
  702    |  5     ((((((■a)d)■)(■|■))n)(.)*)■fail dot
  703    |  5     ((((((■a)d)■)(■){■})n)(.)*)■fail dot
  704    |  5     ((((((■a)d)■)■)n)(.)*)(■■)fail dot
  705    |  5     ((((((■a)d)■)■)n)(.)*)(■|■)fail dot
  706    |  5     ((((((■a)d)■)■)n)(.)*)(■){■}fail dot
  707    |  5     ((((((■a)d)■)i)■)(■){■})'fail dotstar or empty
  708    |  5     ((((((■a)d)■)i)■)(■)*)■ fail dot
  709    |  5     ((((((■a)d)■)i)■)(.){■})■fail dot
  710    |  5     ((((((■a)d)■)i)■)■)'    fail dotstar or empty
  711    |  5     (((((((■■)a)d)■)i)■)(.)*)■fail dot
  712    |  5     (((((((■|■)a)d)■)i)■)(.)*)■fail dot
  713    |  5     (((((((■){■}a)d)■)i)■)(.)*)■fail dot
  714    |  5     ((((((■a)d)(■■))i)■)(.)*)■fail dot
  715    |  5     ((((((■a)d)(■|■))i)■)(.)*)■fail dot
  716    |  5     ((((((■a)d)(■){■})i)■)(.)*)■fail dot
  717    |  5     ((((((■a)d)■)i)(■■))(.)*)■fail dot
  718    |  5     ((((((■a)d)■)i)(■|■))(.)*)■fail dot
  719    |  5     ((((((■a)d)■)i)(■){■})(.)*)■fail dot
  720    |  5     ((((((■a)d)■)i)■)(.)*)(■■)fail dot
  721    |  5     ((((((■a)d)■)i)■)(.)*)(■|■)fail dot
  722    |  5     ((((((■a)d)■)i)■)(.)*)(■){■}fail dot
  723    |  5     ((((((■a)d)■)i)n)(■){■})■fail dot
  724    |  5     (((((((■■)a)d)■)i)n)(■)*)■fail dot
  725    |  5     (((((((■|■)a)d)■)i)n)(■)*)■fail dot
  726    |  5     (((((((■){■}a)d)■)i)n)(■)*)■fail dot
  727    |  5     ((((((■a)d)(■■))i)n)(■)*)■fail dot
  728    |  5     ((((((■a)d)(■|■))i)n)(■)*)■fail dot
  729    |  5     ((((((■a)d)(■){■})i)n)(■)*)■fail dot
  730    |  5     ((((((■a)d)■)i)n)(■■)*)■fail dot
  731    |  5     ((((((■a)d)■)i)n)((■|■))*)■fail dot
  732    |  5     ((((((■a)d)■)i)n)((■){■})*)■fail dot
  733    |  5     ((((((■a)d)■)i)n)(■)*)(■■)fail dot
  734    |  5     ((((((■a)d)■)i)n)(■)*)(■|■)fail dot
  735    |  5     ((((((■a)d)■)i)n)(■)*)(■){■}fail dot
  736    |  5     ((((((■a)d)■)i)n)■)■    fail dot
  737    |  5     (((((((■■)a)d)■)i)n)(.){■})■fail dot
  738    |  5     (((((((■|■)a)d)■)i)n)(.){■})■fail dot
  739    |  5     (((((((■){■}a)d)■)i)n)(.){■})■fail dot
  740    |  5     ((((((■a)d)(■■))i)n)(.){■})■fail dot
  741    |  5     ((((((■a)d)(■|■))i)n)(.){■})■fail dot
  742    |  5     ((((((■a)d)(■){■})i)n)(.){■})■fail dot
  743    |  5     ((((((■a)d)■)i)n)(.){■})(■■)fail dot
  744    |  5     ((((((■a)d)■)i)n)(.){■})(■|■)fail dot
  745    |  5     ((((((■a)d)■)i)n)(.){■})(■){■}fail dot
  746    |  5     (((((((■)a)d)■)i)n)(.)*)■fail dot
  747    |  5     ((((((((■■)■)a)d)■)i)n)(.)*)■fail dot
  748    |  5     ((((((((■|■)■)a)d)■)i)n)(.)*)■fail dot
  749    |  5     ((((((((■){■}■)a)d)■)i)n)(.)*)■fail dot
  750    |  5     (((((((■■)a)d)(■■))i)n)(.)*)■fail dot
  751    |  5     (((((((■■)a)d)(■|■))i)n)(.)*)■fail dot
  752    |  5     (((((((■■)a)d)(■){■})i)n)(.)*)■fail dot
  753    |  5     (((((((■■)a)d)■)i)n)(.)*)(■■)fail dot
  754    |  5     (((((((■■)a)d)■)i)n)(.)*)(■|■)fail dot
  755    |  5     (((((((■■)a)d)■)i)n)(.)*)(■){■}fail dot
  756    |  5     (((((((■■|■)a)d)■)i)n)(.)*)■fail dot
  757    |  5     ((((((((■|■)|■)a)d)■)i)n)(.)*)■fail dot
  758    |  5     ((((((((■){■}|■)a)d)■)i)n)(.)*)■fail dot
  759    |  5     (((((((■|■)a)d)(■■))i)n)(.)*)■fail dot
  760    |  5     (((((((■|■)a)d)(■|■))i)n)(.)*)■fail dot
  761    |  5     (((((((■|■)a)d)(■){■})i)n)(.)*)■fail dot
  762    |  5     (((((((■|■)a)d)■)i)n)(.)*)(■■)fail dot
  763    |  5     (((((((■|■)a)d)■)i)n)(.)*)(■|■)fail dot
  764    |  5     (((((((■|■)a)d)■)i)n)(.)*)(■){■}fail dot
  765    |  5     (((((((■■){■}a)d)■)i)n)(.)*)■fail dot
  766    |  5     ((((((((■|■)){■}a)d)■)i)n)(.)*)■fail dot
  767    |  5     ((((((((■){■}){■}a)d)■)i)n)(.)*)■fail dot
  768    |  5     (((((((■){■}a)d)(■■))i)n)(.)*)■fail dot
  769    |  5     (((((((■){■}a)d)(■|■))i)n)(.)*)■fail dot
  770    |  5     (((((((■){■}a)d)(■){■})i)n)(.)*)■fail dot
  771    |  5     (((((((■){■}a)d)■)i)n)(.)*)(■■)fail dot
  772    |  5     (((((((■){■}a)d)■)i)n)(.)*)(■|■)fail dot
  773    |  5     (((((((■){■}a)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  774    |  5     ((((((■a)d)(■))i)n)(.)*)■fail dot
  775    |  5     ((((((■a)d)((■■)■))i)n)(.)*)■fail dot
  776    |  5     ((((((■a)d)((■|■)■))i)n)(.)*)■fail dot
  777    |  5     ((((((■a)d)((■){■}■))i)n)(.)*)■fail dot
  778    |  5     ((((((■a)d)(■■))i)n)(.)*)(■■)fail dot
  779    |  5     ((((((■a)d)(■■))i)n)(.)*)(■|■)fail dot
  780    |  5     ((((((■a)d)(■■))i)n)(.)*)(■){■}fail dot
  781    |  5     ((((((■a)d)(■■|■))i)n)(.)*)■fail dot
  782    |  5     ((((((■a)d)((■|■)|■))i)n)(.)*)■fail dot
  783    |  5     ((((((■a)d)((■){■}|■))i)n)(.)*)■fail dot
  784    |  5     ((((((■a)d)(■|■))i)n)(.)*)(■■)fail dot
  785    |  5     ((((((■a)d)(■|■))i)n)(.)*)(■|■)fail dot
  786    |  5     ((((((■a)d)(■|■))i)n)(.)*)(■){■}fail dot
  787    |  5     ((((((■a)d)(■■){■})i)n)(.)*)■fail dot
  788    |  5     ((((((■a)d)((■|■)){■})i)n)(.)*)■fail dot
  789    |  5     ((((((■a)d)((■){■}){■})i)n)(.)*)■fail dot
  790    |  5     ((((((■a)d)(■){■})i)n)(.)*)(■■)fail dot
  791    |  5     ((((((■a)d)(■){■})i)n)(.)*)(■|■)fail dot
  792    |  5     ((((((■a)d)(■){■})i)n)(.)*)(■){■}fail dot
  793    |  5     ((((((■a)d)■)i)n)(.)*)(■)fail dot
  794    |  5     ((((((■a)d)■)i)n)(.)*)((■■)■)fail dot
  795    |  5     ((((((■a)d)■)i)n)(.)*)((■|■)■)fail dot
  796    |  5     ((((((■a)d)■)i)n)(.)*)((■){■}■)fail dot
  797    |  5     ((((((■a)d)■)i)n)(.)*)(■■|■)fail dot
  798    |  5     ((((((■a)d)■)i)n)(.)*)((■|■)|■)fail dot
  799    |  5     ((((((■a)d)■)i)n)(.)*)((■){■}|■)fail dot
  800    |  5     ((((((■a)d)■)i)n)(.)*)(■■){■}fail dot
  801    |  5     ((((((■a)d)■)i)n)(.)*)((■|■)){■}fail dot
  802    |  5     ((((((■a)d)■)i)n)(.)*)((■){■}){■}fail dot
  803    |  5     ((((((■a)d)m)■)■)(■){■})'fail dotstar or empty
  804    |  5     ((((((■a)d)m)■)■)(■)*)■ fail dot
  805    |  5     ((((((■a)d)m)■)■)(.){■})■fail dot
  806    |  5     ((((((■a)d)m)■)■)■)'    fail dotstar or empty
  807    |  5     (((((((■■)a)d)m)■)■)(.)*)■fail dot
  808    |  5     (((((((■|■)a)d)m)■)■)(.)*)■fail dot
  809    |  5     (((((((■){■}a)d)m)■)■)(.)*)■fail dot
  810    |  5     ((((((■a)d)m)(■■))■)(.)*)■fail dot
  811    |  5     ((((((■a)d)m)(■|■))■)(.)*)■fail dot
  812    |  5     ((((((■a)d)m)(■){■})■)(.)*)■fail dot
  813    |  5     ((((((■a)d)m)■)(■■))(.)*)■fail dot
  814    |  5     ((((((■a)d)m)■)(■|■))(.)*)■fail dot
  815    |  5     ((((((■a)d)m)■)(■){■})(.)*)■fail dot
  816    |  5     ((((((■a)d)m)■)■)(.)*)(■■)fail dot
  817    |  5     ((((((■a)d)m)■)■)(.)*)(■|■)fail dot
  818    |  5     ((((((■a)d)m)■)■)(.)*)(■){■}fail dot
  819    |  5     ((((((■a)d)m)■)n)(■){■})■fail dot
  820    |  5     (((((((■■)a)d)m)■)n)(■)*)■fail dot
  821    |  5     (((((((■|■)a)d)m)■)n)(■)*)■fail dot
  822    |  5     (((((((■){■}a)d)m)■)n)(■)*)■fail dot
  823    |  5     ((((((■a)d)m)(■■))n)(■)*)■fail dot
  824    |  5     ((((((■a)d)m)(■|■))n)(■)*)■fail dot
  825    |  5     ((((((■a)d)m)(■){■})n)(■)*)■fail dot
  826    |  5     ((((((■a)d)m)■)n)(■■)*)■fail dot
  827    |  5     ((((((■a)d)m)■)n)((■|■))*)■fail dot
  828    |  5     ((((((■a)d)m)■)n)((■){■})*)■fail dot
  829    |  5     ((((((■a)d)m)■)n)(■)*)(■■)fail dot
  830    |  5     ((((((■a)d)m)■)n)(■)*)(■|■)fail dot
  831    |  5     ((((((■a)d)m)■)n)(■)*)(■){■}fail dot
  832    |  5     ((((((■a)d)m)■)n)■)■    fail dot
  833    |  5     (((((((■■)a)d)m)■)n)(.){■})■fail dot
  834    |  5     (((((((■|■)a)d)m)■)n)(.){■})■fail dot
  835    |  5     (((((((■){■}a)d)m)■)n)(.){■})■fail dot
  836    |  5     ((((((■a)d)m)(■■))n)(.){■})■fail dot
  837    |  5     ((((((■a)d)m)(■|■))n)(.){■})■fail dot
  838    |  5     ((((((■a)d)m)(■){■})n)(.){■})■fail dot
  839    |  5     ((((((■a)d)m)■)n)(.){■})(■■)fail dot
  840    |  5     ((((((■a)d)m)■)n)(.){■})(■|■)fail dot
  841    |  5     ((((((■a)d)m)■)n)(.){■})(■){■}fail dot
  842    |  5     (((((((■)a)d)m)■)n)(.)*)■fail dot
  843    |  5     ((((((((■■)■)a)d)m)■)n)(.)*)■fail dot
  844    |  5     ((((((((■|■)■)a)d)m)■)n)(.)*)■fail dot
  845    |  5     ((((((((■){■}■)a)d)m)■)n)(.)*)■fail dot
  846    |  5     (((((((■■)a)d)m)(■■))n)(.)*)■fail dot
  847    |  5     (((((((■■)a)d)m)(■|■))n)(.)*)■fail dot
  848    |  5     (((((((■■)a)d)m)(■){■})n)(.)*)■fail dot
  849    |  5     (((((((■■)a)d)m)■)n)(.)*)(■■)fail dot
  850    |  5     (((((((■■)a)d)m)■)n)(.)*)(■|■)fail dot
  851    |  5     (((((((■■)a)d)m)■)n)(.)*)(■){■}fail dot
  852    |  5     (((((((■■|■)a)d)m)■)n)(.)*)■fail dot
  853    |  5     ((((((((■|■)|■)a)d)m)■)n)(.)*)■fail dot
  854    |  5     ((((((((■){■}|■)a)d)m)■)n)(.)*)■fail dot
  855    |  5     (((((((■|■)a)d)m)(■■))n)(.)*)■fail dot
  856    |  5     (((((((■|■)a)d)m)(■|■))n)(.)*)■fail dot
  857    |  5     (((((((■|■)a)d)m)(■){■})n)(.)*)■fail dot
  858    |  5     (((((((■|■)a)d)m)■)n)(.)*)(■■)fail dot
  859    |  5     (((((((■|■)a)d)m)■)n)(.)*)(■|■)fail dot
  860    |  5     (((((((■|■)a)d)m)■)n)(.)*)(■){■}fail dot
  861    |  5     (((((((■■){■}a)d)m)■)n)(.)*)■fail dot
  862    |  5     ((((((((■|■)){■}a)d)m)■)n)(.)*)■fail dot
  863    |  5     ((((((((■){■}){■}a)d)m)■)n)(.)*)■fail dot
  864    |  5     (((((((■){■}a)d)m)(■■))n)(.)*)■fail dot
  865    |  5     (((((((■){■}a)d)m)(■|■))n)(.)*)■fail dot
  866    |  5     (((((((■){■}a)d)m)(■){■})n)(.)*)■fail dot
  867    |  5     (((((((■){■}a)d)m)■)n)(.)*)(■■)fail dot
  868    |  5     (((((((■){■}a)d)m)■)n)(.)*)(■|■)fail dot
  869    |  5     (((((((■){■}a)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  870    |  5     ((((((■a)d)m)(■))n)(.)*)■fail dot
  871    |  5     ((((((■a)d)m)((■■)■))n)(.)*)■fail dot
  872    |  5     ((((((■a)d)m)((■|■)■))n)(.)*)■fail dot
  873    |  5     ((((((■a)d)m)((■){■}■))n)(.)*)■fail dot
  874    |  5     ((((((■a)d)m)(■■))n)(.)*)(■■)fail dot
  875    |  5     ((((((■a)d)m)(■■))n)(.)*)(■|■)fail dot
  876    |  5     ((((((■a)d)m)(■■))n)(.)*)(■){■}fail dot
  877    |  5     ((((((■a)d)m)(■■|■))n)(.)*)■fail dot
  878    |  5     ((((((■a)d)m)((■|■)|■))n)(.)*)■fail dot
  879    |  5     ((((((■a)d)m)((■){■}|■))n)(.)*)■fail dot
  880    |  5     ((((((■a)d)m)(■|■))n)(.)*)(■■)fail dot
  881    |  5     ((((((■a)d)m)(■|■))n)(.)*)(■|■)fail dot
  882    |  5     ((((((■a)d)m)(■|■))n)(.)*)(■){■}fail dot
  883    |  5     ((((((■a)d)m)(■■){■})n)(.)*)■fail dot
  884    |  5     ((((((■a)d)m)((■|■)){■})n)(.)*)■fail dot
  885    |  5     ((((((■a)d)m)((■){■}){■})n)(.)*)■fail dot
  886    |  5     ((((((■a)d)m)(■){■})n)(.)*)(■■)fail dot
  887    |  5     ((((((■a)d)m)(■){■})n)(.)*)(■|■)fail dot
  888    |  5     ((((((■a)d)m)(■){■})n)(.)*)(■){■}fail dot
  889    |  5     ((((((■a)d)m)■)n)(.)*)(■)fail dot
  890    |  5     ((((((■a)d)m)■)n)(.)*)((■■)■)fail dot
  891    |  5     ((((((■a)d)m)■)n)(.)*)((■|■)■)fail dot
  892    |  5     ((((((■a)d)m)■)n)(.)*)((■){■}■)fail dot
  893    |  5     ((((((■a)d)m)■)n)(.)*)(■■|■)fail dot
  894    |  5     ((((((■a)d)m)■)n)(.)*)((■|■)|■)fail dot
  895    |  5     ((((((■a)d)m)■)n)(.)*)((■){■}|■)fail dot
  896    |  5     ((((((■a)d)m)■)n)(.)*)(■■){■}fail dot
  897    |  5     ((((((■a)d)m)■)n)(.)*)((■|■)){■}fail dot
  898    |  5     ((((((■a)d)m)■)n)(.)*)((■){■}){■}fail dot
  899    |  5     ((((((■a)d)m)i)■)(■){■})■fail dot
  900    |  5     (((((((■■)a)d)m)i)■)(■)*)■fail dot
  901    |  5     (((((((■|■)a)d)m)i)■)(■)*)■fail dot
  902    |  5     (((((((■){■}a)d)m)i)■)(■)*)■fail dot
  903    |  5     ((((((■a)d)m)i)(■■))(■)*)■fail dot
  904    |  5     ((((((■a)d)m)i)(■|■))(■)*)■fail dot
  905    |  5     ((((((■a)d)m)i)(■){■})(■)*)■fail dot
  906    |  5     ((((((■a)d)m)i)■)(■■)*)■fail dot
  907    |  5     ((((((■a)d)m)i)■)((■|■))*)■fail dot
  908    |  5     ((((((■a)d)m)i)■)((■){■})*)■fail dot
  909    |  5     ((((((■a)d)m)i)■)(■)*)(■■)fail dot
  910    |  5     ((((((■a)d)m)i)■)(■)*)(■|■)fail dot
  911    |  5     ((((((■a)d)m)i)■)(■)*)(■){■}fail dot
  912    |  5     ((((((■a)d)m)i)■)■)■    fail dot
  913    |  5     (((((((■■)a)d)m)i)■)(.){■})■fail dot
  914    |  5     (((((((■|■)a)d)m)i)■)(.){■})■fail dot
  915    |  5     (((((((■){■}a)d)m)i)■)(.){■})■fail dot
  916    |  5     ((((((■a)d)m)i)(■■))(.){■})■fail dot
  917    |  5     ((((((■a)d)m)i)(■|■))(.){■})■fail dot
  918    |  5     ((((((■a)d)m)i)(■){■})(.){■})■fail dot
  919    |  5     ((((((■a)d)m)i)■)(.){■})(■■)fail dot
  920    |  5     ((((((■a)d)m)i)■)(.){■})(■|■)fail dot
  921    |  5     ((((((■a)d)m)i)■)(.){■})(■){■}fail dot
  922    |  5     (((((((■)a)d)m)i)■)(.)*)■fail dot
  923    |  5     ((((((((■■)■)a)d)m)i)■)(.)*)■fail dot
  924    |  5     ((((((((■|■)■)a)d)m)i)■)(.)*)■fail dot
  925    |  5     ((((((((■){■}■)a)d)m)i)■)(.)*)■fail dot
  926    |  5     (((((((■■)a)d)m)i)(■■))(.)*)■fail dot
  927    |  5     (((((((■■)a)d)m)i)(■|■))(.)*)■fail dot
  928    |  5     (((((((■■)a)d)m)i)(■){■})(.)*)■fail dot
  929    |  5     (((((((■■)a)d)m)i)■)(.)*)(■■)fail dot
  930    |  5     (((((((■■)a)d)m)i)■)(.)*)(■|■)fail dot
  931    |  5     (((((((■■)a)d)m)i)■)(.)*)(■){■}fail dot
  932    |  5     (((((((■■|■)a)d)m)i)■)(.)*)■fail dot
  933    |  5     ((((((((■|■)|■)a)d)m)i)■)(.)*)■fail dot
  934    |  5     ((((((((■){■}|■)a)d)m)i)■)(.)*)■fail dot
  935    |  5     (((((((■|■)a)d)m)i)(■■))(.)*)■fail dot
  936    |  5     (((((((■|■)a)d)m)i)(■|■))(.)*)■fail dot
  937    |  5     (((((((■|■)a)d)m)i)(■){■})(.)*)■fail dot
  938    |  5     (((((((■|■)a)d)m)i)■)(.)*)(■■)fail dot
  939    |  5     (((((((■|■)a)d)m)i)■)(.)*)(■|■)fail dot
  940    |  5     (((((((■|■)a)d)m)i)■)(.)*)(■){■}fail dot
  941    |  5     (((((((■■){■}a)d)m)i)■)(.)*)■fail dot
  942    |  5     ((((((((■|■)){■}a)d)m)i)■)(.)*)■fail dot
  943    |  5     ((((((((■){■}){■}a)d)m)i)■)(.)*)■fail dot
  944    |  5     (((((((■){■}a)d)m)i)(■■))(.)*)■fail dot
  945    |  5     (((((((■){■}a)d)m)i)(■|■))(.)*)■fail dot
  946    |  5     (((((((■){■}a)d)m)i)(■){■})(.)*)■get a solution: ((((((([∅]){0}a)d)m)i)([∅]){0})(.)*)n
add positive: admin/
add negative: admi n
  unsatisfiable SAT formula       
  947    |  5     (((((((■){■}a)d)m)i)■)(.)*)(■■)fail dot
  948    |  5     (((((((■){■}a)d)m)i)■)(.)*)(■|■)fail dot
  949    |  5     (((((((■){■}a)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  950    |  5     ((((((■a)d)m)i)(■))(.)*)■fail dot
  951    |  5     ((((((■a)d)m)i)((■■)■))(.)*)■fail dot
  952    |  5     ((((((■a)d)m)i)((■|■)■))(.)*)■fail dot
  953    |  5     ((((((■a)d)m)i)((■){■}■))(.)*)■fail dot
  954    |  5     ((((((■a)d)m)i)(■■))(.)*)(■■)fail dot
  955    |  5     ((((((■a)d)m)i)(■■))(.)*)(■|■)fail dot
  956    |  5     ((((((■a)d)m)i)(■■))(.)*)(■){■}fail dot
  957    |  5     ((((((■a)d)m)i)(■■|■))(.)*)■fail dot
  958    |  5     ((((((■a)d)m)i)((■|■)|■))(.)*)■fail dot
  959    |  5     ((((((■a)d)m)i)((■){■}|■))(.)*)■fail dot
  960    |  5     ((((((■a)d)m)i)(■|■))(.)*)(■■)fail dot
  961    |  5     ((((((■a)d)m)i)(■|■))(.)*)(■|■)fail dot
  962    |  5     ((((((■a)d)m)i)(■|■))(.)*)(■){■}fail dot
  963    |  5     ((((((■a)d)m)i)(■■){■})(.)*)■fail dot
  964    |  5     ((((((■a)d)m)i)((■|■)){■})(.)*)■fail dot
  965    |  5     ((((((■a)d)m)i)((■){■}){■})(.)*)■fail dot
  966    |  5     ((((((■a)d)m)i)(■){■})(.)*)(■■)fail dot
  967    |  5     ((((((■a)d)m)i)(■){■})(.)*)(■|■)fail dot
  968    |  5     ((((((■a)d)m)i)(■){■})(.)*)(■){■}fail dot
  969    |  5     ((((((■a)d)m)i)■)(.)*)(■)fail dot
  970    |  5     ((((((■a)d)m)i)■)(.)*)((■■)■)fail dot
  971    |  5     ((((((■a)d)m)i)■)(.)*)((■|■)■)fail dot
  972    |  5     ((((((■a)d)m)i)■)(.)*)((■){■}■)fail dot
  973    |  5     ((((((■a)d)m)i)■)(.)*)(■■|■)fail dot
  974    |  5     ((((((■a)d)m)i)■)(.)*)((■|■)|■)fail dot
  975    |  5     ((((((■a)d)m)i)■)(.)*)((■){■}|■)fail dot
  976    |  5     ((((((■a)d)m)i)■)(.)*)(■■){■}fail dot
  977    |  5     ((((((■a)d)m)i)■)(.)*)((■|■)){■}fail dot
  978    |  5     ((((((■a)d)m)i)■)(.)*)((■){■}){■}fail dot
  979    |  5     (((((((■■)a)d)m)i)n)(■){■})■fail dot
  980    |  5     (((((((■|■)a)d)m)i)n)(■){■})■fail dot
  981    |  5     (((((((■){■}a)d)m)i)n)(■){■})■fail dot
  982    |  5     ((((((■a)d)m)i)n)(■■){■})■fail dot
  983    |  5     ((((((■a)d)m)i)n)((■|■)){■})■fail dot
  984    |  5     ((((((■a)d)m)i)n)((■){■}){■})■fail dot
  985    |  5     ((((((■a)d)m)i)n)(■){■})(■■)fail dot
  986    |  5     ((((((■a)d)m)i)n)(■){■})(■|■)fail dot
  987    |  5     ((((((■a)d)m)i)n)(■){■})(■){■}fail dot
  988    |  5     (((((((■)a)d)m)i)n)(■)*)■fail dot
  989    |  5     ((((((((■■)■)a)d)m)i)n)(■)*)■fail dot
  990    |  5     ((((((((■|■)■)a)d)m)i)n)(■)*)■fail dot
  991    |  5     ((((((((■){■}■)a)d)m)i)n)(■)*)■fail dot
  992    |  5     (((((((■■)a)d)m)i)n)(■■)*)■fail dot
  993    |  5     (((((((■■)a)d)m)i)n)((■|■))*)■fail dot
  994    |  5     (((((((■■)a)d)m)i)n)((■){■})*)■fail dot
  995    |  5     (((((((■■)a)d)m)i)n)(■)*)(■■)fail dot
  996    |  5     (((((((■■)a)d)m)i)n)(■)*)(■|■)fail dot
  997    |  5     (((((((■■)a)d)m)i)n)(■)*)(■){■}fail dot
  998    |  5     (((((((■■|■)a)d)m)i)n)(■)*)■fail dot
  999    |  5     ((((((((■|■)|■)a)d)m)i)n)(■)*)■fail dot
  1000   |  5     ((((((((■){■}|■)a)d)m)i)n)(■)*)■fail dot
  1001   |  5     (((((((■|■)a)d)m)i)n)(■■)*)■fail dot
  1002   |  5     (((((((■|■)a)d)m)i)n)((■|■))*)■fail dot
  1003   |  5     (((((((■|■)a)d)m)i)n)((■){■})*)■fail dot
  1004   |  5     (((((((■|■)a)d)m)i)n)(■)*)(■■)fail dot
  1005   |  5     (((((((■|■)a)d)m)i)n)(■)*)(■|■)fail dot
  1006   |  5     (((((((■|■)a)d)m)i)n)(■)*)(■){■}fail dot
  1007   |  5     (((((((■■){■}a)d)m)i)n)(■)*)■fail dot
  1008   |  5     ((((((((■|■)){■}a)d)m)i)n)(■)*)■fail dot
  1009   |  5     ((((((((■){■}){■}a)d)m)i)n)(■)*)■fail dot
  1010   |  5     (((((((■){■}a)d)m)i)n)(■■)*)■fail dot
  1011   |  5     (((((((■){■}a)d)m)i)n)((■|■))*)■fail dot
  1012   |  5     (((((((■){■}a)d)m)i)n)((■){■})*)■fail dot
  1013   |  5     (((((((■){■}a)d)m)i)n)(■)*)(■■)fail dot
  1014   |  5     (((((((■){■}a)d)m)i)n)(■)*)(■|■)fail dot
  1015   |  5     (((((((■){■}a)d)m)i)n)(■)*)(■){■}get a solution: ((((((([∅]){0}a)d)m)i)n)([∅])*)(/){0,1}
add positive: admin/ 
  unsatisfiable SAT formula       
  1016   |  5     ((((((■a)d)m)i)n)((■■)■)*)■fail dot
  1017   |  5     ((((((■a)d)m)i)n)((■|■)■)*)■fail dot
  1018   |  5     ((((((■a)d)m)i)n)((■){■}■)*)■fail dot
  1019   |  5     ((((((■a)d)m)i)n)(■(■■))*)■fail dot
  1020   |  5     ((((((■a)d)m)i)n)(■(■|■))*)■fail dot
  1021   |  5     ((((((■a)d)m)i)n)(■(■){■})*)■fail dot
  1022   |  5     ((((((■a)d)m)i)n)(■■)*)(■■)fail dot
  1023   |  5     ((((((■a)d)m)i)n)(■■)*)(■|■)fail dot
  1024   |  5     ((((((■a)d)m)i)n)(■■)*)(■){■}fail dot
  1025   |  5     ((((((■a)d)m)i)n)((■■|■))*)■fail dot
  1026   |  5     ((((((■a)d)m)i)n)(((■|■)|■))*)■fail dot
  1027   |  5     ((((((■a)d)m)i)n)(((■){■}|■))*)■fail dot
  1028   |  5     ((((((■a)d)m)i)n)((■|■■))*)■fail dot
  1029   |  5     ((((((■a)d)m)i)n)((■|(■|■)))*)■fail dot
  1030   |  5     ((((((■a)d)m)i)n)((■|(■){■}))*)■fail dot
  1031   |  5     ((((((■a)d)m)i)n)((■|■))*)(■■)fail dot
  1032   |  5     ((((((■a)d)m)i)n)((■|■))*)(■|■)fail dot
  1033   |  5     ((((((■a)d)m)i)n)((■|■))*)(■){■}fail dot
  1034   |  5     ((((((■a)d)m)i)n)((■■){■})*)■fail dot
  1035   |  5     ((((((■a)d)m)i)n)(((■|■)){■})*)■fail dot
  1036   |  5     ((((((■a)d)m)i)n)(((■){■}){■})*)■fail dot
  1037   |  5     ((((((■a)d)m)i)n)((■){■})*)(■■)fail dot
  1038   |  5     ((((((■a)d)m)i)n)((■){■})*)(■|■)fail dot
  1039   |  5     ((((((■a)d)m)i)n)((■){■})*)(■){■}fail dot
  1040   |  5     ((((((■a)d)m)i)n)(■)*)(■)fail dot
  1041   |  5     ((((((■a)d)m)i)n)(■)*)((■■)■)fail dot
  1042   |  5     ((((((■a)d)m)i)n)(■)*)((■|■)■)fail dot
  1043   |  5     ((((((■a)d)m)i)n)(■)*)((■){■}■)fail dot
  1044   |  5     ((((((■a)d)m)i)n)(■)*)(■■|■)fail dot
  1045   |  5     ((((((■a)d)m)i)n)(■)*)((■|■)|■)fail dot
  1046   |  5     ((((((■a)d)m)i)n)(■)*)((■){■}|■)fail dot
  1047   |  5     ((((((■a)d)m)i)n)(■)*)(■■){■}fail dot
  1048   |  5     ((((((■a)d)m)i)n)(■)*)((■|■)){■}fail dot
  1049   |  5     ((((((■a)d)m)i)n)(■)*)((■){■}){■}fail dot
  1050   |  5     (((((((■■)a)d)m)i)n)■)■ fail dot
  1051   |  5     (((((((■|■)a)d)m)i)n)■)■fail dot
  1052   |  5     (((((((■){■}a)d)m)i)n)■)■fail dot
  1053   |  5     ((((((■a)d)m)i)n)(■■))■ fail dot
  1054   |  5     ((((((■a)d)m)i)n)(■|■))■fail dot
  1055   |  5     ((((((■a)d)m)i)n)■)(■■) fail dot
  1056   |  5     ((((((■a)d)m)i)n)■)(■|■)fail dot
  1057   |  5     ((((((■a)d)m)i)n)■)(■){■}fail dot
  1058   |  5     (((((((■)a)d)m)i)n)(.){■})■fail dot
  1059   |  5     ((((((((■■)■)a)d)m)i)n)(.){■})■fail dot
  1060   |  5     ((((((((■|■)■)a)d)m)i)n)(.){■})■fail dot
  1061   |  5     ((((((((■){■}■)a)d)m)i)n)(.){■})■fail dot
  1062   |  5     (((((((■■)a)d)m)i)n)(.){■})(■■)fail dot
  1063   |  5     (((((((■■)a)d)m)i)n)(.){■})(■|■)fail dot
  1064   |  5     (((((((■■)a)d)m)i)n)(.){■})(■){■}fail dot
  1065   |  5     (((((((■■|■)a)d)m)i)n)(.){■})■fail dot
  1066   |  5     ((((((((■|■)|■)a)d)m)i)n)(.){■})■fail dot
  1067   |  5     ((((((((■){■}|■)a)d)m)i)n)(.){■})■fail dot
  1068   |  5     (((((((■|■)a)d)m)i)n)(.){■})(■■)fail dot
  1069   |  5     (((((((■|■)a)d)m)i)n)(.){■})(■|■)fail dot
  1070   |  5     (((((((■|■)a)d)m)i)n)(.){■})(■){■}fail dot
  1071   |  5     (((((((■■){■}a)d)m)i)n)(.){■})■fail dot
  1072   |  5     ((((((((■|■)){■}a)d)m)i)n)(.){■})■fail dot
  1073   |  5     ((((((((■){■}){■}a)d)m)i)n)(.){■})■fail dot
  1074   |  5     (((((((■){■}a)d)m)i)n)(.){■})(■■)fail dot
  1075   |  5     (((((((■){■}a)d)m)i)n)(.){■})(■|■)fail dot
  1076   |  5     (((((((■){■}a)d)m)i)n)(.){■})(■){■}  unsatisfiable SAT formula       
  1077   |  5     ((((((■a)d)m)i)n)(.){■})(■)fail dot
  1078   |  5     ((((((■a)d)m)i)n)(.){■})((■■)■)fail dot
  1079   |  5     ((((((■a)d)m)i)n)(.){■})((■|■)■)fail dot
  1080   |  5     ((((((■a)d)m)i)n)(.){■})((■){■}■)fail dot
  1081   |  5     ((((((■a)d)m)i)n)(.){■})(■■|■)fail dot
  1082   |  5     ((((((■a)d)m)i)n)(.){■})((■|■)|■)fail dot
  1083   |  5     ((((((■a)d)m)i)n)(.){■})((■){■}|■)fail dot
  1084   |  5     ((((((■a)d)m)i)n)(.){■})(■■){■}fail dot
  1085   |  5     ((((((■a)d)m)i)n)(.){■})((■|■)){■}fail dot
  1086   |  5     ((((((■a)d)m)i)n)(.){■})((■){■}){■}fail dot
  1087   |  5     ((((((((■■))a)d)m)i)n)(.)*)■fail dot
  1088   |  5     ((((((((■|■))a)d)m)i)n)(.)*)■fail dot
  1089   |  5     ((((((((■){■})a)d)m)i)n)(.)*)■fail dot
  1090   |  5     (((((((■)a)d)m)i)n)(.)*)(■■)fail dot
  1091   |  5     (((((((■)a)d)m)i)n)(.)*)(■|■)fail dot
  1092   |  5     (((((((■)a)d)m)i)n)(.)*)(■){■}fail dot
  1093   |  5     ((((((((■)■)a)d)m)i)n)(.)*)■fail dot
  1094   |  5     (((((((((■■)■)■)a)d)m)i)n)(.)*)■fail dot
  1095   |  5     (((((((((■|■)■)■)a)d)m)i)n)(.)*)■fail dot
  1096   |  5     (((((((((■){■}■)■)a)d)m)i)n)(.)*)■fail dot
  1097   |  5     ((((((((■■)(■■))a)d)m)i)n)(.)*)■fail dot
  1098   |  5     ((((((((■■)(■|■))a)d)m)i)n)(.)*)■fail dot
  1099   |  5     ((((((((■■)(■){■})a)d)m)i)n)(.)*)■fail dot
  1100   |  5     ((((((((■■)■)a)d)m)i)n)(.)*)(■■)fail dot
  1101   |  5     ((((((((■■)■)a)d)m)i)n)(.)*)(■|■)fail dot
  1102   |  5     ((((((((■■)■)a)d)m)i)n)(.)*)(■){■}fail dot
  1103   |  5     ((((((((■■|■)■)a)d)m)i)n)(.)*)■fail dot
  1104   |  5     (((((((((■|■)|■)■)a)d)m)i)n)(.)*)■fail dot
  1105   |  5     (((((((((■){■}|■)■)a)d)m)i)n)(.)*)■fail dot
  1106   |  5     ((((((((■|■)(■■))a)d)m)i)n)(.)*)■fail dot
  1107   |  5     ((((((((■|■)(■|■))a)d)m)i)n)(.)*)■fail dot
  1108   |  5     ((((((((■|■)(■){■})a)d)m)i)n)(.)*)■fail dot
  1109   |  5     ((((((((■|■)■)a)d)m)i)n)(.)*)(■■)fail dot
  1110   |  5     ((((((((■|■)■)a)d)m)i)n)(.)*)(■|■)fail dot
  1111   |  5     ((((((((■|■)■)a)d)m)i)n)(.)*)(■){■}fail dot
  1112   |  5     ((((((((■■){■}■)a)d)m)i)n)(.)*)■fail dot
  1113   |  5     (((((((((■|■)){■}■)a)d)m)i)n)(.)*)■fail dot
  1114   |  5     (((((((((■){■}){■}■)a)d)m)i)n)(.)*)■fail dot
  1115   |  5     ((((((((■){■}(■■))a)d)m)i)n)(.)*)■fail dot
  1116   |  5     ((((((((■){■}(■|■))a)d)m)i)n)(.)*)■fail dot
  1117   |  5     ((((((((■){■}(■){■})a)d)m)i)n)(.)*)■fail dot
  1118   |  5     ((((((((■){■}■)a)d)m)i)n)(.)*)(■■)fail dot
  1119   |  5     ((((((((■){■}■)a)d)m)i)n)(.)*)(■|■)fail dot
  1120   |  5     ((((((((■){■}■)a)d)m)i)n)(.)*)(■){■}fail dot
  1121   |  5     (((((((■■)a)d)m)i)n)(.)*)(■)fail dot
  1122   |  5     (((((((■■)a)d)m)i)n)(.)*)((■■)■)fail dot
  1123   |  5     (((((((■■)a)d)m)i)n)(.)*)((■|■)■)fail dot
  1124   |  5     (((((((■■)a)d)m)i)n)(.)*)((■){■}■)fail dot
  1125   |  5     (((((((■■)a)d)m)i)n)(.)*)(■■|■)fail dot
  1126   |  5     (((((((■■)a)d)m)i)n)(.)*)((■|■)|■)fail dot
  1127   |  5     (((((((■■)a)d)m)i)n)(.)*)((■){■}|■)fail dot
  1128   |  5     (((((((■■)a)d)m)i)n)(.)*)(■■){■}fail dot
  1129   |  5     (((((((■■)a)d)m)i)n)(.)*)((■|■)){■}fail dot
  1130   |  5     (((((((■■)a)d)m)i)n)(.)*)((■){■}){■}fail dot
  1131   |  5     ((((((((■■)■|■)a)d)m)i)n)(.)*)■fail dot
  1132   |  5     ((((((((■|■)■|■)a)d)m)i)n)(.)*)■fail dot
  1133   |  5     ((((((((■){■}■|■)a)d)m)i)n)(.)*)■fail dot
  1134   |  5     (((((((■■|■■)a)d)m)i)n)(.)*)■fail dot
  1135   |  5     (((((((■■|(■|■))a)d)m)i)n)(.)*)■fail dot
  1136   |  5     (((((((■■|(■){■})a)d)m)i)n)(.)*)■fail dot
  1137   |  5     (((((((■■|■)a)d)m)i)n)(.)*)(■■)fail dot
  1138   |  5     (((((((■■|■)a)d)m)i)n)(.)*)(■|■)fail dot
  1139   |  5     (((((((■■|■)a)d)m)i)n)(.)*)(■){■}fail dot
  1140   |  5     ((((((((■■|■)|■)a)d)m)i)n)(.)*)■fail dot
  1141   |  5     (((((((((■|■)|■)|■)a)d)m)i)n)(.)*)■fail dot
  1142   |  5     (((((((((■){■}|■)|■)a)d)m)i)n)(.)*)■fail dot
  1143   |  5     ((((((((■|■)|■■)a)d)m)i)n)(.)*)■fail dot
  1144   |  5     ((((((((■|■)|(■|■))a)d)m)i)n)(.)*)■fail dot
  1145   |  5     ((((((((■|■)|(■){■})a)d)m)i)n)(.)*)■fail dot
  1146   |  5     ((((((((■|■)|■)a)d)m)i)n)(.)*)(■■)fail dot
  1147   |  5     ((((((((■|■)|■)a)d)m)i)n)(.)*)(■|■)fail dot
  1148   |  5     ((((((((■|■)|■)a)d)m)i)n)(.)*)(■){■}fail dot
  1149   |  5     ((((((((■■){■}|■)a)d)m)i)n)(.)*)■fail dot
  1150   |  5     (((((((((■|■)){■}|■)a)d)m)i)n)(.)*)■fail dot
  1151   |  5     (((((((((■){■}){■}|■)a)d)m)i)n)(.)*)■fail dot
  1152   |  5     ((((((((■){■}|■■)a)d)m)i)n)(.)*)■fail dot
  1153   |  5     ((((((((■){■}|(■|■))a)d)m)i)n)(.)*)■fail dot
  1154   |  5     ((((((((■){■}|(■){■})a)d)m)i)n)(.)*)■fail dot
  1155   |  5     ((((((((■){■}|■)a)d)m)i)n)(.)*)(■■)fail dot
  1156   |  5     ((((((((■){■}|■)a)d)m)i)n)(.)*)(■|■)fail dot
  1157   |  5     ((((((((■){■}|■)a)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1158   |  5     (((((((■|■)a)d)m)i)n)(.)*)(■)fail dot
  1159   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■■)■)fail dot
  1160   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■|■)■)fail dot
  1161   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■){■}■)fail dot
  1162   |  5     (((((((■|■)a)d)m)i)n)(.)*)(■■|■)fail dot
  1163   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■|■)|■)fail dot
  1164   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■){■}|■)fail dot
  1165   |  5     (((((((■|■)a)d)m)i)n)(.)*)(■■){■}fail dot
  1166   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■|■)){■}fail dot
  1167   |  5     (((((((■|■)a)d)m)i)n)(.)*)((■){■}){■}fail dot
  1168   |  5     ((((((((■■)■){■}a)d)m)i)n)(.)*)■fail dot
  1169   |  5     ((((((((■|■)■){■}a)d)m)i)n)(.)*)■fail dot
  1170   |  5     ((((((((■){■}■){■}a)d)m)i)n)(.)*)■fail dot
  1171   |  5     (((((((■■){■}a)d)m)i)n)(.)*)(■■)fail dot
  1172   |  5     (((((((■■){■}a)d)m)i)n)(.)*)(■|■)fail dot
  1173   |  5     (((((((■■){■}a)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1174   |  5     ((((((((■■|■)){■}a)d)m)i)n)(.)*)■fail dot
  1175   |  5     (((((((((■|■)|■)){■}a)d)m)i)n)(.)*)■fail dot
  1176   |  5     (((((((((■){■}|■)){■}a)d)m)i)n)(.)*)■fail dot
  1177   |  5     ((((((((■|■)){■}a)d)m)i)n)(.)*)(■■)fail dot
  1178   |  5     ((((((((■|■)){■}a)d)m)i)n)(.)*)(■|■)fail dot
  1179   |  5     ((((((((■|■)){■}a)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1180   |  5     ((((((((■■){■}){■}a)d)m)i)n)(.)*)■fail dot
  1181   |  5     (((((((((■|■)){■}){■}a)d)m)i)n)(.)*)■fail dot
  1182   |  5     (((((((((■){■}){■}){■}a)d)m)i)n)(.)*)■fail dot
  1183   |  5     ((((((((■){■}){■}a)d)m)i)n)(.)*)(■■)fail dot
  1184   |  5     ((((((((■){■}){■}a)d)m)i)n)(.)*)(■|■)fail dot
  1185   |  5     ((((((((■){■}){■}a)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1186   |  5     (((((((■){■}a)d)m)i)n)(.)*)(■)fail dot
  1187   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■■)■)fail dot
  1188   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■|■)■)fail dot
  1189   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■){■}■)fail dot
  1190   |  5     (((((((■){■}a)d)m)i)n)(.)*)(■■|■)fail dot
  1191   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■|■)|■)fail dot
  1192   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  1193   |  5     (((((((■){■}a)d)m)i)n)(.)*)(■■){■}  unsatisfiable SAT formula       
  1194   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■|■)){■}fail solve
  1195   |  5     (((((((■){■}a)d)m)i)n)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  1196   |  5     ((((((■a)d)m)i)n)(.)*)((■■))fail dot
  1197   |  5     ((((((■a)d)m)i)n)(.)*)((■|■))fail dot
  1198   |  5     ((((((■a)d)m)i)n)(.)*)((■){■})fail dot
  1199   |  5     ((((((■a)d)m)i)n)(.)*)((■)■)fail dot
  1200   |  5     ((((((■a)d)m)i)n)(.)*)(((■■)■)■)fail dot
  1201   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)■)■)fail dot
  1202   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}■)■)fail dot
  1203   |  5     ((((((■a)d)m)i)n)(.)*)((■■)(■■))fail dot
  1204   |  5     ((((((■a)d)m)i)n)(.)*)((■■)(■|■))fail dot
  1205   |  5     ((((((■a)d)m)i)n)(.)*)((■■)(■){■})fail dot
  1206   |  5     ((((((■a)d)m)i)n)(.)*)((■■|■)■)fail dot
  1207   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)|■)■)fail dot
  1208   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}|■)■)fail dot
  1209   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)(■■))fail dot
  1210   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)(■|■))fail dot
  1211   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)(■){■})fail dot
  1212   |  5     ((((((■a)d)m)i)n)(.)*)((■■){■}■)fail dot
  1213   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)){■}■)fail dot
  1214   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}){■}■)fail dot
  1215   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}(■■))fail dot
  1216   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}(■|■))fail dot
  1217   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}(■){■})fail dot
  1218   |  5     ((((((■a)d)m)i)n)(.)*)((■■)■|■)fail dot
  1219   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)■|■)fail dot
  1220   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}■|■)fail dot
  1221   |  5     ((((((■a)d)m)i)n)(.)*)(■■|■■)fail dot
  1222   |  5     ((((((■a)d)m)i)n)(.)*)(■■|(■|■))fail dot
  1223   |  5     ((((((■a)d)m)i)n)(.)*)(■■|(■){■})fail dot
  1224   |  5     ((((((■a)d)m)i)n)(.)*)((■■|■)|■)fail dot
  1225   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)|■)|■)fail dot
  1226   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}|■)|■)fail dot
  1227   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)|■■)fail dot
  1228   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)|(■|■))fail dot
  1229   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)|(■){■})fail dot
  1230   |  5     ((((((■a)d)m)i)n)(.)*)((■■){■}|■)fail dot
  1231   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)){■}|■)fail dot
  1232   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}){■}|■)fail dot
  1233   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}|■■)fail dot
  1234   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}|(■|■))fail dot
  1235   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}|(■){■})fail dot
  1236   |  5     ((((((■a)d)m)i)n)(.)*)((■■)■){■}fail dot
  1237   |  5     ((((((■a)d)m)i)n)(.)*)((■|■)■){■}fail dot
  1238   |  5     ((((((■a)d)m)i)n)(.)*)((■){■}■){■}fail dot
  1239   |  5     ((((((■a)d)m)i)n)(.)*)((■■|■)){■}fail dot
  1240   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)|■)){■}fail dot
  1241   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}|■)){■}fail dot
  1242   |  5     ((((((■a)d)m)i)n)(.)*)((■■){■}){■}fail dot
  1243   |  5     ((((((■a)d)m)i)n)(.)*)(((■|■)){■}){■}fail dot
  1244   |  5     ((((((■a)d)m)i)n)(.)*)(((■){■}){■}){■}fail dot
  1245   |  5     (((((('■)■)■)■)■)(.)*)' fail dotstar or empty
  1246   |  5     (((((('■)■)■)■)n)(■)*)' fail dotstar or empty
  1247   |  5     (((((('■)■)■)■)n)(.){■})'fail dotstar or empty
  1248   |  5     (((((('■)■)■)■)n)(.)*)■ fail dotstar or empty
  1249   |  5     (((((('■)■)■)i)■)(■)*)' fail dotstar or empty
  1250   |  5     (((((('■)■)■)i)■)(.){■})'fail dotstar or empty
  1251   |  5     (((((('■)■)■)i)■)(.)*)■ fail dotstar or empty
  1252   |  5     (((((('■)■)■)i)n)(■){■})'fail dotstar or empty
  1253   |  5     (((((('■)■)■)i)n)(■)*)■ fail dotstar or empty
  1254   |  5     (((((('■)■)■)i)n)(.){■})■fail dotstar or empty
  1255   |  5     (((((('■)■)■)i)n)■)'    fail dotstar or empty
  1256   |  5     (((((('■)■)m)■)■)(■)*)' fail dotstar or empty
  1257   |  5     (((((('■)■)m)■)■)(.){■})'fail dotstar or empty
  1258   |  5     (((((('■)■)m)■)■)(.)*)■ fail dotstar or empty
  1259   |  5     (((((('■)■)m)■)n)(■){■})'fail dotstar or empty
  1260   |  5     (((((('■)■)m)■)n)(■)*)■ fail dotstar or empty
  1261   |  5     (((((('■)■)m)■)n)(.){■})■fail dotstar or empty
  1262   |  5     (((((('■)■)m)■)n)■)'    fail dotstar or empty
  1263   |  5     (((((('■)■)m)i)■)(■){■})'fail dotstar or empty
  1264   |  5     (((((('■)■)m)i)■)(■)*)■ fail dotstar or empty
  1265   |  5     (((((('■)■)m)i)■)(.){■})■fail dotstar or empty
  1266   |  5     (((((('■)■)m)i)■)■)'    fail dotstar or empty
  1267   |  5     (((((('■)■)m)i)n)(■){■})■fail dotstar or empty
  1268   |  5     (((((('■)■)m)i)n)■)■    fail dotstar or empty
  1269   |  5     (((((('■)d)■)■)■)(■)*)' fail dotstar or empty
  1270   |  5     (((((('■)d)■)■)■)(.){■})'fail dotstar or empty
  1271   |  5     (((((('■)d)■)■)■)(.)*)■ fail dotstar or empty
  1272   |  5     (((((('■)d)■)■)n)(■){■})'fail dotstar or empty
  1273   |  5     (((((('■)d)■)■)n)(■)*)■ fail dotstar or empty
  1274   |  5     (((((('■)d)■)■)n)(.){■})■fail dotstar or empty
  1275   |  5     (((((('■)d)■)■)n)■)'    fail dotstar or empty
  1276   |  5     (((((('■)d)■)i)■)(■){■})'fail dotstar or empty
  1277   |  5     (((((('■)d)■)i)■)(■)*)■ fail dotstar or empty
  1278   |  5     (((((('■)d)■)i)■)(.){■})■fail dotstar or empty
  1279   |  5     (((((('■)d)■)i)■)■)'    fail dotstar or empty
  1280   |  5     (((((('■)d)■)i)n)(■){■})■fail dotstar or empty
  1281   |  5     (((((('■)d)■)i)n)■)■    fail dotstar or empty
  1282   |  5     (((((('■)d)m)■)■)(■){■})'fail dotstar or empty
  1283   |  5     (((((('■)d)m)■)■)(■)*)■ fail dotstar or empty
  1284   |  5     (((((('■)d)m)■)■)(.){■})■fail dotstar or empty
  1285   |  5     (((((('■)d)m)■)■)■)'    fail dotstar or empty
  1286   |  5     (((((('■)d)m)■)n)(■){■})■fail dotstar or empty
  1287   |  5     (((((('■)d)m)■)n)■)■    fail dotstar or empty
  1288   |  5     (((((('■)d)m)i)■)(■){■})■fail dotstar or empty
  1289   |  5     (((((('■)d)m)i)■)■)■    fail dotstar or empty
  1290   |  5     (((((('a)■)■)■)■)(■)*)' fail dotstar or empty
  1291   |  5     (((((('a)■)■)■)■)(.){■})'fail dotstar or empty
  1292   |  5     (((((('a)■)■)■)■)(.)*)■ fail dotstar or empty
  1293   |  5     (((((('a)■)■)■)n)(■){■})'fail dotstar or empty
  1294   |  5     (((((('a)■)■)■)n)(■)*)■ fail dotstar or empty
  1295   |  5     (((((('a)■)■)■)n)(.){■})■fail dotstar or empty
  1296   |  5     (((((('a)■)■)■)n)■)'    fail dotstar or empty
  1297   |  5     (((((('a)■)■)i)■)(■){■})'fail dotstar or empty
  1298   |  5     (((((('a)■)■)i)■)(■)*)■ fail dotstar or empty
  1299   |  5     (((((('a)■)■)i)■)(.){■})■fail dotstar or empty
  1300   |  5     (((((('a)■)■)i)■)■)'    fail dotstar or empty
  1301   |  5     (((((('a)■)■)i)n)(■){■})■fail dotstar or empty
  1302   |  5     (((((('a)■)■)i)n)■)■    fail dotstar or empty
  1303   |  5     (((((('a)■)m)■)■)(■){■})'fail dotstar or empty
  1304   |  5     (((((('a)■)m)■)■)(■)*)■ fail dotstar or empty
  1305   |  5     (((((('a)■)m)■)■)(.){■})■fail dotstar or empty
  1306   |  5     (((((('a)■)m)■)■)■)'    fail dotstar or empty
  1307   |  5     (((((('a)■)m)■)n)(■){■})■fail dotstar or empty
  1308   |  5     (((((('a)■)m)■)n)■)■    fail dotstar or empty
  1309   |  5     (((((('a)■)m)i)■)(■){■})■fail dotstar or empty
  1310   |  5     (((((('a)■)m)i)■)■)■    fail dotstar or empty
  1311   |  5     (((((('a)d)■)■)■)(■){■})'fail dotstar or empty
  1312   |  5     (((((('a)d)■)■)■)(■)*)■ fail dotstar or empty
  1313   |  5     (((((('a)d)■)■)■)(.){■})■fail dotstar or empty
  1314   |  5     (((((('a)d)■)■)■)■)'    fail dotstar or empty
  1315   |  5     (((((('a)d)■)■)n)(■){■})■fail dotstar or empty
  1316   |  5     (((((('a)d)■)■)n)■)■    fail dotstar or empty
  1317   |  5     (((((('a)d)■)i)■)(■){■})■fail dotstar or empty
  1318   |  5     (((((('a)d)■)i)■)■)■    fail dotstar or empty
  1319   |  5     (((((('a)d)m)■)■)(■){■})■fail dotstar or empty
  1320   |  5     (((((('a)d)m)■)■)■)■    fail dotstar or empty
  1321   |  6     ((((((■■)■)■)■)■)(.)*)' fail dotstar or empty
  1322   |  6     ((((((■■)■)■)■)n)(■)*)' fail dotstar or empty
  1323   |  6     ((((((■■)■)■)■)n)(.){■})'fail dotstar or empty
  1324   |  6     ((((((■■)■)■)■)n)(.)*)■ fail dot
  1325   |  6     ((((((■)■)■)■)n)(.)*)'  fail dotstar or empty
  1326   |  6     ((((((■■)■)■)i)■)(■)*)' fail dotstar or empty
  1327   |  6     ((((((■■)■)■)i)■)(.){■})'fail dotstar or empty
  1328   |  6     ((((((■■)■)■)i)■)(.)*)■ fail dot
  1329   |  6     ((((((■)■)■)i)■)(.)*)'  fail dotstar or empty
  1330   |  6     ((((((■■)■)■)i)n)(■){■})'fail dotstar or empty
  1331   |  6     ((((((■■)■)■)i)n)(■)*)■ fail dot
  1332   |  6     ((((((■)■)■)i)n)(■)*)'  fail dotstar or empty
  1333   |  6     ((((((■■)■)■)i)n)(.){■})■fail dot
  1334   |  6     ((((((■)■)■)i)n)(.){■})'fail dotstar or empty
  1335   |  6     ((((((■■)■)■)i)n)■)'    fail dotstar or empty
  1336   |  6     ((((((■)■)■)i)n)(.)*)■  fail dot
  1337   |  6     (((((((■■)■)■)■)i)n)(.)*)■fail dot
  1338   |  6     (((((((■|■)■)■)■)i)n)(.)*)■fail dot
  1339   |  6     (((((((■){■}■)■)■)i)n)(.)*)■fail dot
  1340   |  6     ((((((■■)(■■))■)i)n)(.)*)■fail dot
  1341   |  6     ((((((■■)(■|■))■)i)n)(.)*)■fail dot
  1342   |  6     ((((((■■)(■){■})■)i)n)(.)*)■fail dot
  1343   |  6     ((((((■■)■)(■■))i)n)(.)*)■fail dot
  1344   |  6     ((((((■■)■)(■|■))i)n)(.)*)■fail dot
  1345   |  6     ((((((■■)■)(■){■})i)n)(.)*)■fail dot
  1346   |  6     ((((((■■)■)■)i)n)(.)*)(■■)fail dot
  1347   |  6     ((((((■■)■)■)i)n)(.)*)(■|■)fail dot
  1348   |  6     ((((((■■)■)■)i)n)(.)*)(■){■}fail dot
  1349   |  6     (((((■■)■)i)n)(.)*)'    fail dotstar or empty
  1350   |  6     ((((((■■)■)m)■)■)(■)*)' fail dotstar or empty
  1351   |  6     ((((((■■)■)m)■)■)(.){■})'fail dotstar or empty
  1352   |  6     ((((((■■)■)m)■)■)(.)*)■ fail dot
  1353   |  6     ((((((■)■)m)■)■)(.)*)'  fail dotstar or empty
  1354   |  6     ((((((■■)■)m)■)n)(■){■})'fail dotstar or empty
  1355   |  6     ((((((■■)■)m)■)n)(■)*)■ fail dot
  1356   |  6     ((((((■)■)m)■)n)(■)*)'  fail dotstar or empty
  1357   |  6     ((((((■■)■)m)■)n)(.){■})■fail dot
  1358   |  6     ((((((■)■)m)■)n)(.){■})'fail dotstar or empty
  1359   |  6     ((((((■■)■)m)■)n)■)'    fail dotstar or empty
  1360   |  6     ((((((■)■)m)■)n)(.)*)■  fail dot
  1361   |  6     (((((((■■)■)■)m)■)n)(.)*)■fail dot
  1362   |  6     (((((((■|■)■)■)m)■)n)(.)*)■fail dot
  1363   |  6     (((((((■){■}■)■)m)■)n)(.)*)■fail dot
  1364   |  6     ((((((■■)(■■))m)■)n)(.)*)■fail dot
  1365   |  6     ((((((■■)(■|■))m)■)n)(.)*)■fail dot
  1366   |  6     ((((((■■)(■){■})m)■)n)(.)*)■fail dot
  1367   |  6     ((((((■■)■)m)(■■))n)(.)*)■fail dot
  1368   |  6     ((((((■■)■)m)(■|■))n)(.)*)■fail dot
  1369   |  6     ((((((■■)■)m)(■){■})n)(.)*)■fail dot
  1370   |  6     ((((((■■)■)m)■)n)(.)*)(■■)fail dot
  1371   |  6     ((((((■■)■)m)■)n)(.)*)(■|■)fail dot
  1372   |  6     ((((((■■)■)m)■)n)(.)*)(■){■}fail dot
  1373   |  6     (((((■■)m)■)n)(.)*)'    fail dotstar or empty
  1374   |  6     ((((((■■)■)m)i)■)(■){■})'fail dotstar or empty
  1375   |  6     ((((((■■)■)m)i)■)(■)*)■ fail dot
  1376   |  6     ((((((■)■)m)i)■)(■)*)'  fail dotstar or empty
  1377   |  6     ((((((■■)■)m)i)■)(.){■})■fail dot
  1378   |  6     ((((((■)■)m)i)■)(.){■})'fail dotstar or empty
  1379   |  6     ((((((■■)■)m)i)■)■)'    fail dotstar or empty
  1380   |  6     ((((((■)■)m)i)■)(.)*)■  fail dot
  1381   |  6     (((((((■■)■)■)m)i)■)(.)*)■fail dot
  1382   |  6     (((((((■|■)■)■)m)i)■)(.)*)■fail dot
  1383   |  6     (((((((■){■}■)■)m)i)■)(.)*)■fail dot
  1384   |  6     ((((((■■)(■■))m)i)■)(.)*)■fail dot
  1385   |  6     ((((((■■)(■|■))m)i)■)(.)*)■fail dot
  1386   |  6     ((((((■■)(■){■})m)i)■)(.)*)■fail dot
  1387   |  6     ((((((■■)■)m)i)(■■))(.)*)■fail dot
  1388   |  6     ((((((■■)■)m)i)(■|■))(.)*)■fail dot
  1389   |  6     ((((((■■)■)m)i)(■){■})(.)*)■fail dot
  1390   |  6     ((((((■■)■)m)i)■)(.)*)(■■)fail dot
  1391   |  6     ((((((■■)■)m)i)■)(.)*)(■|■)fail dot
  1392   |  6     ((((((■■)■)m)i)■)(.)*)(■){■}fail dot
  1393   |  6     (((((■■)m)i)■)(.)*)'    fail dotstar or empty
  1394   |  6     ((((((■■)■)m)i)n)(■){■})■fail dot
  1395   |  6     ((((((■)■)m)i)n)(■){■})'fail dotstar or empty
  1396   |  6     ((((((■)■)m)i)n)(■)*)■  fail dot
  1397   |  6     (((((((■■)■)■)m)i)n)(■)*)■fail dot
  1398   |  6     (((((((■|■)■)■)m)i)n)(■)*)■fail dot
  1399   |  6     (((((((■){■}■)■)m)i)n)(■)*)■fail dot
  1400   |  6     ((((((■■)(■■))m)i)n)(■)*)■fail dot
  1401   |  6     ((((((■■)(■|■))m)i)n)(■)*)■fail dot
  1402   |  6     ((((((■■)(■){■})m)i)n)(■)*)■fail dot
  1403   |  6     ((((((■■)■)m)i)n)(■■)*)■fail dot
  1404   |  6     ((((((■■)■)m)i)n)((■|■))*)■fail dot
  1405   |  6     ((((((■■)■)m)i)n)((■){■})*)■fail dot
  1406   |  6     ((((((■■)■)m)i)n)(■)*)(■■)fail dot
  1407   |  6     ((((((■■)■)m)i)n)(■)*)(■|■)fail dot
  1408   |  6     ((((((■■)■)m)i)n)(■)*)(■){■}fail dot
  1409   |  6     (((((■■)m)i)n)(■)*)'    fail dotstar or empty
  1410   |  6     ((((((■)■)m)i)n)(.){■})■fail dot
  1411   |  6     ((((((■■)■)m)i)n)■)■    fail dot
  1412   |  6     (((((((■■)■)■)m)i)n)(.){■})■fail dot
  1413   |  6     (((((((■|■)■)■)m)i)n)(.){■})■fail dot
  1414   |  6     (((((((■){■}■)■)m)i)n)(.){■})■fail dot
  1415   |  6     ((((((■■)(■■))m)i)n)(.){■})■fail dot
  1416   |  6     ((((((■■)(■|■))m)i)n)(.){■})■fail dot
  1417   |  6     ((((((■■)(■){■})m)i)n)(.){■})■fail dot
  1418   |  6     ((((((■■)■)m)i)n)(.){■})(■■)fail dot
  1419   |  6     ((((((■■)■)m)i)n)(.){■})(■|■)fail dot
  1420   |  6     ((((((■■)■)m)i)n)(.){■})(■){■}fail dot
  1421   |  6     (((((■■)m)i)n)(.){■})'  fail dotstar or empty
  1422   |  6     ((((((■)■)m)i)n)■)'     fail dotstar or empty
  1423   |  6     (((((■■)m)i)n)(.)*)■    fail dot
  1424   |  6     (((((((■■))■)m)i)n)(.)*)■fail dot
  1425   |  6     (((((((■|■))■)m)i)n)(.)*)■fail dot
  1426   |  6     (((((((■){■})■)m)i)n)(.)*)■fail dot
  1427   |  6     ((((((■)■)m)i)n)(.)*)(■■)fail dot
  1428   |  6     ((((((■)■)m)i)n)(.)*)(■|■)fail dot
  1429   |  6     ((((((■)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1430   |  6     (((((((■)■)■)m)i)n)(.)*)■fail dot
  1431   |  6     ((((((((■■)■)■)■)m)i)n)(.)*)■fail dot
  1432   |  6     ((((((((■|■)■)■)■)m)i)n)(.)*)■fail dot
  1433   |  6     ((((((((■){■}■)■)■)m)i)n)(.)*)■fail dot
  1434   |  6     (((((((■■)(■■))■)m)i)n)(.)*)■fail dot
  1435   |  6     (((((((■■)(■|■))■)m)i)n)(.)*)■fail dot
  1436   |  6     (((((((■■)(■){■})■)m)i)n)(.)*)■fail dot
  1437   |  6     (((((((■■)■)(■■))m)i)n)(.)*)■fail dot
  1438   |  6     (((((((■■)■)(■|■))m)i)n)(.)*)■fail dot
  1439   |  6     (((((((■■)■)(■){■})m)i)n)(.)*)■fail dot
  1440   |  6     (((((((■■)■)■)m)i)n)(.)*)(■■)fail dot
  1441   |  6     (((((((■■)■)■)m)i)n)(.)*)(■|■)fail dot
  1442   |  6     (((((((■■)■)■)m)i)n)(.)*)(■){■}fail dot
  1443   |  6     (((((((■■|■)■)■)m)i)n)(.)*)■fail dot
  1444   |  6     ((((((((■|■)|■)■)■)m)i)n)(.)*)■fail dot
  1445   |  6     ((((((((■){■}|■)■)■)m)i)n)(.)*)■fail dot
  1446   |  6     (((((((■|■)(■■))■)m)i)n)(.)*)■fail dot
  1447   |  6     (((((((■|■)(■|■))■)m)i)n)(.)*)■fail dot
  1448   |  6     (((((((■|■)(■){■})■)m)i)n)(.)*)■fail dot
  1449   |  6     (((((((■|■)■)(■■))m)i)n)(.)*)■fail dot
  1450   |  6     (((((((■|■)■)(■|■))m)i)n)(.)*)■fail dot
  1451   |  6     (((((((■|■)■)(■){■})m)i)n)(.)*)■fail dot
  1452   |  6     (((((((■|■)■)■)m)i)n)(.)*)(■■)fail dot
  1453   |  6     (((((((■|■)■)■)m)i)n)(.)*)(■|■)fail dot
  1454   |  6     (((((((■|■)■)■)m)i)n)(.)*)(■){■}fail dot
  1455   |  6     (((((((■■){■}■)■)m)i)n)(.)*)■fail dot
  1456   |  6     ((((((((■|■)){■}■)■)m)i)n)(.)*)■fail dot
  1457   |  6     ((((((((■){■}){■}■)■)m)i)n)(.)*)■fail dot
  1458   |  6     (((((((■){■}(■■))■)m)i)n)(.)*)■fail dot
  1459   |  6     (((((((■){■}(■|■))■)m)i)n)(.)*)■fail dot
  1460   |  6     (((((((■){■}(■){■})■)m)i)n)(.)*)■fail dot
  1461   |  6     (((((((■){■}■)(■■))m)i)n)(.)*)■fail dot
  1462   |  6     (((((((■){■}■)(■|■))m)i)n)(.)*)■fail dot
  1463   |  6     (((((((■){■}■)(■){■})m)i)n)(.)*)■fail dot
  1464   |  6     (((((((■){■}■)■)m)i)n)(.)*)(■■)fail dot
  1465   |  6     (((((((■){■}■)■)m)i)n)(.)*)(■|■)fail dot
  1466   |  6     (((((((■){■}■)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1467   |  6     ((((((■■)(■))m)i)n)(.)*)■fail dot
  1468   |  6     ((((((■■)(■■))m)i)n)(.)*)(■■)fail dot
  1469   |  6     ((((((■■)(■■))m)i)n)(.)*)(■|■)fail dot
  1470   |  6     ((((((■■)(■■))m)i)n)(.)*)(■){■}fail dot
  1471   |  6     ((((((■■)(■|■))m)i)n)(.)*)(■■)fail dot
  1472   |  6     ((((((■■)(■|■))m)i)n)(.)*)(■|■)fail dot
  1473   |  6     ((((((■■)(■|■))m)i)n)(.)*)(■){■}fail dot
  1474   |  6     ((((((■■)(■){■})m)i)n)(.)*)(■■)fail dot
  1475   |  6     ((((((■■)(■){■})m)i)n)(.)*)(■|■)fail dot
  1476   |  6     ((((((■■)(■){■})m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1477   |  6     ((((((■■)■)m)i)n)(.)*)(■)fail dot
  1478   |  6     ((((((■■)■)m)i)n)(.)*)((■■)■)fail dot
  1479   |  6     ((((((■■)■)m)i)n)(.)*)((■|■)■)fail dot
  1480   |  6     ((((((■■)■)m)i)n)(.)*)((■){■}■)fail dot
  1481   |  6     ((((((■■)■)m)i)n)(.)*)(■■|■)fail dot
  1482   |  6     ((((((■■)■)m)i)n)(.)*)((■|■)|■)fail dot
  1483   |  6     ((((((■■)■)m)i)n)(.)*)((■){■}|■)fail dot
  1484   |  6     ((((((■■)■)m)i)n)(.)*)(■■){■}fail dot
  1485   |  6     ((((((■■)■)m)i)n)(.)*)((■|■)){■}fail dot
  1486   |  6     ((((((■■)■)m)i)n)(.)*)((■){■}){■}fail dot
  1487   |  6     (((((■)m)i)n)(.)*)'     fail dotstar or empty
  1488   |  6     ((((((■■)d)■)■)■)(■)*)' fail dotstar or empty
  1489   |  6     ((((((■■)d)■)■)■)(.){■})'fail dotstar or empty
  1490   |  6     ((((((■■)d)■)■)■)(.)*)■ fail dot
  1491   |  6     ((((((■)d)■)■)■)(.)*)'  fail dotstar or empty
  1492   |  6     ((((((■■)d)■)■)n)(■){■})'fail dotstar or empty
  1493   |  6     ((((((■■)d)■)■)n)(■)*)■ fail dot
  1494   |  6     ((((((■)d)■)■)n)(■)*)'  fail dotstar or empty
  1495   |  6     ((((((■■)d)■)■)n)(.){■})■fail dot
  1496   |  6     ((((((■)d)■)■)n)(.){■})'fail dotstar or empty
  1497   |  6     ((((((■■)d)■)■)n)■)'    fail dotstar or empty
  1498   |  6     ((((((■)d)■)■)n)(.)*)■  fail dot
  1499   |  6     (((((((■■)■)d)■)■)n)(.)*)■fail dot
  1500   |  6     (((((((■|■)■)d)■)■)n)(.)*)■fail dot
  1501   |  6     (((((((■){■}■)d)■)■)n)(.)*)■fail dot
  1502   |  6     ((((((■■)d)(■■))■)n)(.)*)■fail dot
  1503   |  6     ((((((■■)d)(■|■))■)n)(.)*)■fail dot
  1504   |  6     ((((((■■)d)(■){■})■)n)(.)*)■fail dot
  1505   |  6     ((((((■■)d)■)(■■))n)(.)*)■fail dot
  1506   |  6     ((((((■■)d)■)(■|■))n)(.)*)■fail dot
  1507   |  6     ((((((■■)d)■)(■){■})n)(.)*)■fail dot
  1508   |  6     ((((((■■)d)■)■)n)(.)*)(■■)fail dot
  1509   |  6     ((((((■■)d)■)■)n)(.)*)(■|■)fail dot
  1510   |  6     ((((((■■)d)■)■)n)(.)*)(■){■}fail dot
  1511   |  6     (((((■d)■)■)n)(.)*)'    fail dotstar or empty
  1512   |  6     ((((((■■)d)■)i)■)(■){■})'fail dotstar or empty
  1513   |  6     ((((((■■)d)■)i)■)(■)*)■ fail dot
  1514   |  6     ((((((■)d)■)i)■)(■)*)'  fail dotstar or empty
  1515   |  6     ((((((■■)d)■)i)■)(.){■})■fail dot
  1516   |  6     ((((((■)d)■)i)■)(.){■})'fail dotstar or empty
  1517   |  6     ((((((■■)d)■)i)■)■)'    fail dotstar or empty
  1518   |  6     ((((((■)d)■)i)■)(.)*)■  fail dot
  1519   |  6     (((((((■■)■)d)■)i)■)(.)*)■fail dot
  1520   |  6     (((((((■|■)■)d)■)i)■)(.)*)■fail dot
  1521   |  6     (((((((■){■}■)d)■)i)■)(.)*)■fail dot
  1522   |  6     ((((((■■)d)(■■))i)■)(.)*)■fail dot
  1523   |  6     ((((((■■)d)(■|■))i)■)(.)*)■fail dot
  1524   |  6     ((((((■■)d)(■){■})i)■)(.)*)■fail dot
  1525   |  6     ((((((■■)d)■)i)(■■))(.)*)■fail dot
  1526   |  6     ((((((■■)d)■)i)(■|■))(.)*)■fail dot
  1527   |  6     ((((((■■)d)■)i)(■){■})(.)*)■fail dot
  1528   |  6     ((((((■■)d)■)i)■)(.)*)(■■)fail dot
  1529   |  6     ((((((■■)d)■)i)■)(.)*)(■|■)fail dot
  1530   |  6     ((((((■■)d)■)i)■)(.)*)(■){■}fail dot
  1531   |  6     (((((■d)■)i)■)(.)*)'    fail dotstar or empty
  1532   |  6     ((((((■■)d)■)i)n)(■){■})■fail dot
  1533   |  6     ((((((■)d)■)i)n)(■){■})'fail dotstar or empty
  1534   |  6     ((((((■)d)■)i)n)(■)*)■  fail dot
  1535   |  6     (((((((■■)■)d)■)i)n)(■)*)■fail dot
  1536   |  6     (((((((■|■)■)d)■)i)n)(■)*)■fail dot
  1537   |  6     (((((((■){■}■)d)■)i)n)(■)*)■fail dot
  1538   |  6     ((((((■■)d)(■■))i)n)(■)*)■fail dot
  1539   |  6     ((((((■■)d)(■|■))i)n)(■)*)■fail dot
  1540   |  6     ((((((■■)d)(■){■})i)n)(■)*)■fail dot
  1541   |  6     ((((((■■)d)■)i)n)(■■)*)■fail dot
  1542   |  6     ((((((■■)d)■)i)n)((■|■))*)■fail dot
  1543   |  6     ((((((■■)d)■)i)n)((■){■})*)■fail dot
  1544   |  6     ((((((■■)d)■)i)n)(■)*)(■■)fail dot
  1545   |  6     ((((((■■)d)■)i)n)(■)*)(■|■)fail dot
  1546   |  6     ((((((■■)d)■)i)n)(■)*)(■){■}fail dot
  1547   |  6     (((((■d)■)i)n)(■)*)'    fail dotstar or empty
  1548   |  6     ((((((■)d)■)i)n)(.){■})■fail dot
  1549   |  6     ((((((■■)d)■)i)n)■)■    fail dot
  1550   |  6     (((((((■■)■)d)■)i)n)(.){■})■fail dot
  1551   |  6     (((((((■|■)■)d)■)i)n)(.){■})■fail dot
  1552   |  6     (((((((■){■}■)d)■)i)n)(.){■})■fail dot
  1553   |  6     ((((((■■)d)(■■))i)n)(.){■})■fail dot
  1554   |  6     ((((((■■)d)(■|■))i)n)(.){■})■fail dot
  1555   |  6     ((((((■■)d)(■){■})i)n)(.){■})■fail dot
  1556   |  6     ((((((■■)d)■)i)n)(.){■})(■■)fail dot
  1557   |  6     ((((((■■)d)■)i)n)(.){■})(■|■)fail dot
  1558   |  6     ((((((■■)d)■)i)n)(.){■})(■){■}fail dot
  1559   |  6     (((((■d)■)i)n)(.){■})'  fail dotstar or empty
  1560   |  6     ((((((■)d)■)i)n)■)'     fail dotstar or empty
  1561   |  6     (((((■d)■)i)n)(.)*)■    fail dot
  1562   |  6     (((((((■■))d)■)i)n)(.)*)■fail dot
  1563   |  6     (((((((■|■))d)■)i)n)(.)*)■fail dot
  1564   |  6     (((((((■){■})d)■)i)n)(.)*)■fail dot
  1565   |  6     ((((((■)d)(■■))i)n)(.)*)■fail dot
  1566   |  6     ((((((■)d)(■|■))i)n)(.)*)■fail dot
  1567   |  6     ((((((■)d)(■){■})i)n)(.)*)■fail dot
  1568   |  6     ((((((■)d)■)i)n)(.)*)(■■)fail dot
  1569   |  6     ((((((■)d)■)i)n)(.)*)(■|■)fail dot
  1570   |  6     ((((((■)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1571   |  6     (((((((■)■)d)■)i)n)(.)*)■fail dot
  1572   |  6     ((((((((■■)■)■)d)■)i)n)(.)*)■fail dot
  1573   |  6     ((((((((■|■)■)■)d)■)i)n)(.)*)■fail dot
  1574   |  6     ((((((((■){■}■)■)d)■)i)n)(.)*)■fail dot
  1575   |  6     (((((((■■)(■■))d)■)i)n)(.)*)■fail dot
  1576   |  6     (((((((■■)(■|■))d)■)i)n)(.)*)■fail dot
  1577   |  6     (((((((■■)(■){■})d)■)i)n)(.)*)■fail dot
  1578   |  6     (((((((■■)■)d)(■■))i)n)(.)*)■fail dot
  1579   |  6     (((((((■■)■)d)(■|■))i)n)(.)*)■fail dot
  1580   |  6     (((((((■■)■)d)(■){■})i)n)(.)*)■fail dot
  1581   |  6     (((((((■■)■)d)■)i)n)(.)*)(■■)fail dot
  1582   |  6     (((((((■■)■)d)■)i)n)(.)*)(■|■)fail dot
  1583   |  6     (((((((■■)■)d)■)i)n)(.)*)(■){■}fail dot
  1584   |  6     (((((((■■|■)■)d)■)i)n)(.)*)■fail dot
  1585   |  6     ((((((((■|■)|■)■)d)■)i)n)(.)*)■fail dot
  1586   |  6     ((((((((■){■}|■)■)d)■)i)n)(.)*)■fail dot
  1587   |  6     (((((((■|■)(■■))d)■)i)n)(.)*)■fail dot
  1588   |  6     (((((((■|■)(■|■))d)■)i)n)(.)*)■fail dot
  1589   |  6     (((((((■|■)(■){■})d)■)i)n)(.)*)■fail dot
  1590   |  6     (((((((■|■)■)d)(■■))i)n)(.)*)■fail dot
  1591   |  6     (((((((■|■)■)d)(■|■))i)n)(.)*)■fail dot
  1592   |  6     (((((((■|■)■)d)(■){■})i)n)(.)*)■fail dot
  1593   |  6     (((((((■|■)■)d)■)i)n)(.)*)(■■)fail dot
  1594   |  6     (((((((■|■)■)d)■)i)n)(.)*)(■|■)fail dot
  1595   |  6     (((((((■|■)■)d)■)i)n)(.)*)(■){■}fail dot
  1596   |  6     (((((((■■){■}■)d)■)i)n)(.)*)■fail dot
  1597   |  6     ((((((((■|■)){■}■)d)■)i)n)(.)*)■fail dot
  1598   |  6     ((((((((■){■}){■}■)d)■)i)n)(.)*)■fail dot
  1599   |  6     (((((((■){■}(■■))d)■)i)n)(.)*)■fail dot
  1600   |  6     (((((((■){■}(■|■))d)■)i)n)(.)*)■fail dot
  1601   |  6     (((((((■){■}(■){■})d)■)i)n)(.)*)■fail dot
  1602   |  6     (((((((■){■}■)d)(■■))i)n)(.)*)■fail dot
  1603   |  6     (((((((■){■}■)d)(■|■))i)n)(.)*)■fail dot
  1604   |  6     (((((((■){■}■)d)(■){■})i)n)(.)*)■fail dot
  1605   |  6     (((((((■){■}■)d)■)i)n)(.)*)(■■)fail dot
  1606   |  6     (((((((■){■}■)d)■)i)n)(.)*)(■|■)fail dot
  1607   |  6     (((((((■){■}■)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1608   |  6     ((((((■■)d)(■))i)n)(.)*)■fail dot
  1609   |  6     ((((((■■)d)((■■)■))i)n)(.)*)■fail dot
  1610   |  6     ((((((■■)d)((■|■)■))i)n)(.)*)■fail dot
  1611   |  6     ((((((■■)d)((■){■}■))i)n)(.)*)■fail dot
  1612   |  6     ((((((■■)d)(■■))i)n)(.)*)(■■)fail dot
  1613   |  6     ((((((■■)d)(■■))i)n)(.)*)(■|■)fail dot
  1614   |  6     ((((((■■)d)(■■))i)n)(.)*)(■){■}fail dot
  1615   |  6     ((((((■■)d)(■■|■))i)n)(.)*)■fail dot
  1616   |  6     ((((((■■)d)((■|■)|■))i)n)(.)*)■fail dot
  1617   |  6     ((((((■■)d)((■){■}|■))i)n)(.)*)■fail dot
  1618   |  6     ((((((■■)d)(■|■))i)n)(.)*)(■■)fail dot
  1619   |  6     ((((((■■)d)(■|■))i)n)(.)*)(■|■)fail dot
  1620   |  6     ((((((■■)d)(■|■))i)n)(.)*)(■){■}fail dot
  1621   |  6     ((((((■■)d)(■■){■})i)n)(.)*)■fail dot
  1622   |  6     ((((((■■)d)((■|■)){■})i)n)(.)*)■fail dot
  1623   |  6     ((((((■■)d)((■){■}){■})i)n)(.)*)■fail dot
  1624   |  6     ((((((■■)d)(■){■})i)n)(.)*)(■■)fail dot
  1625   |  6     ((((((■■)d)(■){■})i)n)(.)*)(■|■)fail dot
  1626   |  6     ((((((■■)d)(■){■})i)n)(.)*)(■){■}fail dot
  1627   |  6     ((((((■■)d)■)i)n)(.)*)(■)fail dot
  1628   |  6     ((((((■■)d)■)i)n)(.)*)((■■)■)fail dot
  1629   |  6     ((((((■■)d)■)i)n)(.)*)((■|■)■)fail dot
  1630   |  6     ((((((■■)d)■)i)n)(.)*)((■){■}■)fail dot
  1631   |  6     ((((((■■)d)■)i)n)(.)*)(■■|■)fail dot
  1632   |  6     ((((((■■)d)■)i)n)(.)*)((■|■)|■)fail dot
  1633   |  6     ((((((■■)d)■)i)n)(.)*)((■){■}|■)fail dot
  1634   |  6     ((((((■■)d)■)i)n)(.)*)(■■){■}fail dot
  1635   |  6     ((((((■■)d)■)i)n)(.)*)((■|■)){■}fail dot
  1636   |  6     ((((((■■)d)■)i)n)(.)*)((■){■}){■}fail dot
  1637   |  6     ((((((■■)d)m)■)■)(■){■})'fail dotstar or empty
  1638   |  6     ((((((■■)d)m)■)■)(■)*)■ fail dot
  1639   |  6     ((((((■)d)m)■)■)(■)*)'  fail dotstar or empty
  1640   |  6     ((((((■■)d)m)■)■)(.){■})■fail dot
  1641   |  6     ((((((■)d)m)■)■)(.){■})'fail dotstar or empty
  1642   |  6     ((((((■■)d)m)■)■)■)'    fail dotstar or empty
  1643   |  6     ((((((■)d)m)■)■)(.)*)■  fail dot
  1644   |  6     (((((((■■)■)d)m)■)■)(.)*)■fail dot
  1645   |  6     (((((((■|■)■)d)m)■)■)(.)*)■fail dot
  1646   |  6     (((((((■){■}■)d)m)■)■)(.)*)■fail dot
  1647   |  6     ((((((■■)d)m)(■■))■)(.)*)■fail dot
  1648   |  6     ((((((■■)d)m)(■|■))■)(.)*)■fail dot
  1649   |  6     ((((((■■)d)m)(■){■})■)(.)*)■fail dot
  1650   |  6     ((((((■■)d)m)■)(■■))(.)*)■fail dot
  1651   |  6     ((((((■■)d)m)■)(■|■))(.)*)■fail dot
  1652   |  6     ((((((■■)d)m)■)(■){■})(.)*)■fail dot
  1653   |  6     ((((((■■)d)m)■)■)(.)*)(■■)fail dot
  1654   |  6     ((((((■■)d)m)■)■)(.)*)(■|■)fail dot
  1655   |  6     ((((((■■)d)m)■)■)(.)*)(■){■}fail dot
  1656   |  6     (((((■d)m)■)■)(.)*)'    fail dotstar or empty
  1657   |  6     ((((((■■)d)m)■)n)(■){■})■fail dot
  1658   |  6     ((((((■)d)m)■)n)(■){■})'fail dotstar or empty
  1659   |  6     ((((((■)d)m)■)n)(■)*)■  fail dot
  1660   |  6     (((((((■■)■)d)m)■)n)(■)*)■fail dot
  1661   |  6     (((((((■|■)■)d)m)■)n)(■)*)■fail dot
  1662   |  6     (((((((■){■}■)d)m)■)n)(■)*)■fail dot
  1663   |  6     ((((((■■)d)m)(■■))n)(■)*)■fail dot
  1664   |  6     ((((((■■)d)m)(■|■))n)(■)*)■fail dot
  1665   |  6     ((((((■■)d)m)(■){■})n)(■)*)■fail dot
  1666   |  6     ((((((■■)d)m)■)n)(■■)*)■fail dot
  1667   |  6     ((((((■■)d)m)■)n)((■|■))*)■fail dot
  1668   |  6     ((((((■■)d)m)■)n)((■){■})*)■fail dot
  1669   |  6     ((((((■■)d)m)■)n)(■)*)(■■)fail dot
  1670   |  6     ((((((■■)d)m)■)n)(■)*)(■|■)fail dot
  1671   |  6     ((((((■■)d)m)■)n)(■)*)(■){■}fail dot
  1672   |  6     (((((■d)m)■)n)(■)*)'    fail dotstar or empty
  1673   |  6     ((((((■)d)m)■)n)(.){■})■fail dot
  1674   |  6     ((((((■■)d)m)■)n)■)■    fail dot
  1675   |  6     (((((((■■)■)d)m)■)n)(.){■})■fail dot
  1676   |  6     (((((((■|■)■)d)m)■)n)(.){■})■fail dot
  1677   |  6     (((((((■){■}■)d)m)■)n)(.){■})■fail dot
  1678   |  6     ((((((■■)d)m)(■■))n)(.){■})■fail dot
  1679   |  6     ((((((■■)d)m)(■|■))n)(.){■})■fail dot
  1680   |  6     ((((((■■)d)m)(■){■})n)(.){■})■fail dot
  1681   |  6     ((((((■■)d)m)■)n)(.){■})(■■)fail dot
  1682   |  6     ((((((■■)d)m)■)n)(.){■})(■|■)fail dot
  1683   |  6     ((((((■■)d)m)■)n)(.){■})(■){■}fail dot
  1684   |  6     (((((■d)m)■)n)(.){■})'  fail dotstar or empty
  1685   |  6     ((((((■)d)m)■)n)■)'     fail dotstar or empty
  1686   |  6     (((((■d)m)■)n)(.)*)■    fail dot
  1687   |  6     (((((((■■))d)m)■)n)(.)*)■fail dot
  1688   |  6     (((((((■|■))d)m)■)n)(.)*)■fail dot
  1689   |  6     (((((((■){■})d)m)■)n)(.)*)■fail dot
  1690   |  6     ((((((■)d)m)(■■))n)(.)*)■fail dot
  1691   |  6     ((((((■)d)m)(■|■))n)(.)*)■fail dot
  1692   |  6     ((((((■)d)m)(■){■})n)(.)*)■fail dot
  1693   |  6     ((((((■)d)m)■)n)(.)*)(■■)fail dot
  1694   |  6     ((((((■)d)m)■)n)(.)*)(■|■)fail dot
  1695   |  6     ((((((■)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1696   |  6     (((((((■)■)d)m)■)n)(.)*)■fail dot
  1697   |  6     ((((((((■■)■)■)d)m)■)n)(.)*)■fail dot
  1698   |  6     ((((((((■|■)■)■)d)m)■)n)(.)*)■fail dot
  1699   |  6     ((((((((■){■}■)■)d)m)■)n)(.)*)■fail dot
  1700   |  6     (((((((■■)(■■))d)m)■)n)(.)*)■fail dot
  1701   |  6     (((((((■■)(■|■))d)m)■)n)(.)*)■fail dot
  1702   |  6     (((((((■■)(■){■})d)m)■)n)(.)*)■fail dot
  1703   |  6     (((((((■■)■)d)m)(■■))n)(.)*)■fail dot
  1704   |  6     (((((((■■)■)d)m)(■|■))n)(.)*)■fail dot
  1705   |  6     (((((((■■)■)d)m)(■){■})n)(.)*)■fail dot
  1706   |  6     (((((((■■)■)d)m)■)n)(.)*)(■■)fail dot
  1707   |  6     (((((((■■)■)d)m)■)n)(.)*)(■|■)fail dot
  1708   |  6     (((((((■■)■)d)m)■)n)(.)*)(■){■}fail dot
  1709   |  6     (((((((■■|■)■)d)m)■)n)(.)*)■fail dot
  1710   |  6     ((((((((■|■)|■)■)d)m)■)n)(.)*)■fail dot
  1711   |  6     ((((((((■){■}|■)■)d)m)■)n)(.)*)■fail dot
  1712   |  6     (((((((■|■)(■■))d)m)■)n)(.)*)■fail dot
  1713   |  6     (((((((■|■)(■|■))d)m)■)n)(.)*)■fail dot
  1714   |  6     (((((((■|■)(■){■})d)m)■)n)(.)*)■fail dot
  1715   |  6     (((((((■|■)■)d)m)(■■))n)(.)*)■fail dot
  1716   |  6     (((((((■|■)■)d)m)(■|■))n)(.)*)■fail dot
  1717   |  6     (((((((■|■)■)d)m)(■){■})n)(.)*)■fail dot
  1718   |  6     (((((((■|■)■)d)m)■)n)(.)*)(■■)fail dot
  1719   |  6     (((((((■|■)■)d)m)■)n)(.)*)(■|■)fail dot
  1720   |  6     (((((((■|■)■)d)m)■)n)(.)*)(■){■}fail dot
  1721   |  6     (((((((■■){■}■)d)m)■)n)(.)*)■fail dot
  1722   |  6     ((((((((■|■)){■}■)d)m)■)n)(.)*)■fail dot
  1723   |  6     ((((((((■){■}){■}■)d)m)■)n)(.)*)■fail dot
  1724   |  6     (((((((■){■}(■■))d)m)■)n)(.)*)■fail dot
  1725   |  6     (((((((■){■}(■|■))d)m)■)n)(.)*)■fail dot
  1726   |  6     (((((((■){■}(■){■})d)m)■)n)(.)*)■fail dot
  1727   |  6     (((((((■){■}■)d)m)(■■))n)(.)*)■fail dot
  1728   |  6     (((((((■){■}■)d)m)(■|■))n)(.)*)■fail dot
  1729   |  6     (((((((■){■}■)d)m)(■){■})n)(.)*)■fail dot
  1730   |  6     (((((((■){■}■)d)m)■)n)(.)*)(■■)fail dot
  1731   |  6     (((((((■){■}■)d)m)■)n)(.)*)(■|■)fail dot
  1732   |  6     (((((((■){■}■)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  1733   |  6     ((((((■■)d)m)(■))n)(.)*)■fail dot
  1734   |  6     ((((((■■)d)m)((■■)■))n)(.)*)■fail dot
  1735   |  6     ((((((■■)d)m)((■|■)■))n)(.)*)■fail dot
  1736   |  6     ((((((■■)d)m)((■){■}■))n)(.)*)■fail dot
  1737   |  6     ((((((■■)d)m)(■■))n)(.)*)(■■)fail dot
  1738   |  6     ((((((■■)d)m)(■■))n)(.)*)(■|■)fail dot
  1739   |  6     ((((((■■)d)m)(■■))n)(.)*)(■){■}fail dot
  1740   |  6     ((((((■■)d)m)(■■|■))n)(.)*)■fail dot
  1741   |  6     ((((((■■)d)m)((■|■)|■))n)(.)*)■fail dot
  1742   |  6     ((((((■■)d)m)((■){■}|■))n)(.)*)■fail dot
  1743   |  6     ((((((■■)d)m)(■|■))n)(.)*)(■■)fail dot
  1744   |  6     ((((((■■)d)m)(■|■))n)(.)*)(■|■)fail dot
  1745   |  6     ((((((■■)d)m)(■|■))n)(.)*)(■){■}fail dot
  1746   |  6     ((((((■■)d)m)(■■){■})n)(.)*)■fail dot
  1747   |  6     ((((((■■)d)m)((■|■)){■})n)(.)*)■fail dot
  1748   |  6     ((((((■■)d)m)((■){■}){■})n)(.)*)■fail dot
  1749   |  6     ((((((■■)d)m)(■){■})n)(.)*)(■■)fail dot
  1750   |  6     ((((((■■)d)m)(■){■})n)(.)*)(■|■)fail dot
  1751   |  6     ((((((■■)d)m)(■){■})n)(.)*)(■){■}fail dot
  1752   |  6     ((((((■■)d)m)■)n)(.)*)(■)fail dot
  1753   |  6     ((((((■■)d)m)■)n)(.)*)((■■)■)fail dot
  1754   |  6     ((((((■■)d)m)■)n)(.)*)((■|■)■)fail dot
  1755   |  6     ((((((■■)d)m)■)n)(.)*)((■){■}■)fail dot
  1756   |  6     ((((((■■)d)m)■)n)(.)*)(■■|■)fail dot
  1757   |  6     ((((((■■)d)m)■)n)(.)*)((■|■)|■)fail dot
  1758   |  6     ((((((■■)d)m)■)n)(.)*)((■){■}|■)fail dot
  1759   |  6     ((((((■■)d)m)■)n)(.)*)(■■){■}fail dot
  1760   |  6     ((((((■■)d)m)■)n)(.)*)((■|■)){■}fail dot
  1761   |  6     ((((((■■)d)m)■)n)(.)*)((■){■}){■}fail dot
  1762   |  6     ((((((■■)d)m)i)■)(■){■})■fail dot
  1763   |  6     ((((((■)d)m)i)■)(■){■})'fail dotstar or empty
  1764   |  6     ((((((■)d)m)i)■)(■)*)■  fail dot
  1765   |  6     (((((((■■)■)d)m)i)■)(■)*)■fail dot
  1766   |  6     (((((((■|■)■)d)m)i)■)(■)*)■fail dot
  1767   |  6     (((((((■){■}■)d)m)i)■)(■)*)■fail dot
  1768   |  6     ((((((■■)d)m)i)(■■))(■)*)■fail dot
  1769   |  6     ((((((■■)d)m)i)(■|■))(■)*)■fail dot
  1770   |  6     ((((((■■)d)m)i)(■){■})(■)*)■fail dot
  1771   |  6     ((((((■■)d)m)i)■)(■■)*)■fail dot
  1772   |  6     ((((((■■)d)m)i)■)((■|■))*)■fail dot
  1773   |  6     ((((((■■)d)m)i)■)((■){■})*)■fail dot
  1774   |  6     ((((((■■)d)m)i)■)(■)*)(■■)fail dot
  1775   |  6     ((((((■■)d)m)i)■)(■)*)(■|■)fail dot
  1776   |  6     ((((((■■)d)m)i)■)(■)*)(■){■}fail dot
  1777   |  6     (((((■d)m)i)■)(■)*)'    fail dotstar or empty
  1778   |  6     ((((((■)d)m)i)■)(.){■})■fail dot
  1779   |  6     ((((((■■)d)m)i)■)■)■    fail dot
  1780   |  6     (((((((■■)■)d)m)i)■)(.){■})■fail dot
  1781   |  6     (((((((■|■)■)d)m)i)■)(.){■})■fail dot
  1782   |  6     (((((((■){■}■)d)m)i)■)(.){■})■fail dot
  1783   |  6     ((((((■■)d)m)i)(■■))(.){■})■fail dot
  1784   |  6     ((((((■■)d)m)i)(■|■))(.){■})■fail dot
  1785   |  6     ((((((■■)d)m)i)(■){■})(.){■})■fail dot
  1786   |  6     ((((((■■)d)m)i)■)(.){■})(■■)fail dot
  1787   |  6     ((((((■■)d)m)i)■)(.){■})(■|■)fail dot
  1788   |  6     ((((((■■)d)m)i)■)(.){■})(■){■}fail dot
  1789   |  6     (((((■d)m)i)■)(.){■})'  fail dotstar or empty
  1790   |  6     ((((((■)d)m)i)■)■)'     fail dotstar or empty
  1791   |  6     (((((■d)m)i)■)(.)*)■    fail dot
  1792   |  6     (((((((■■))d)m)i)■)(.)*)■fail dot
  1793   |  6     (((((((■|■))d)m)i)■)(.)*)■fail dot
  1794   |  6     (((((((■){■})d)m)i)■)(.)*)■fail dot
  1795   |  6     ((((((■)d)m)i)(■■))(.)*)■fail dot
  1796   |  6     ((((((■)d)m)i)(■|■))(.)*)■fail dot
  1797   |  6     ((((((■)d)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  1798   |  6     ((((((■)d)m)i)■)(.)*)(■■)fail dot
  1799   |  6     ((((((■)d)m)i)■)(.)*)(■|■)fail dot
  1800   |  6     ((((((■)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  1801   |  6     (((((((■)■)d)m)i)■)(.)*)■fail dot
  1802   |  6     ((((((((■■)■)■)d)m)i)■)(.)*)■fail dot
  1803   |  6     ((((((((■|■)■)■)d)m)i)■)(.)*)■fail dot
  1804   |  6     ((((((((■){■}■)■)d)m)i)■)(.)*)■fail dot
  1805   |  6     (((((((■■)(■■))d)m)i)■)(.)*)■fail dot
  1806   |  6     (((((((■■)(■|■))d)m)i)■)(.)*)■fail dot
  1807   |  6     (((((((■■)(■){■})d)m)i)■)(.)*)■fail dot
  1808   |  6     (((((((■■)■)d)m)i)(■■))(.)*)■fail dot
  1809   |  6     (((((((■■)■)d)m)i)(■|■))(.)*)■fail dot
  1810   |  6     (((((((■■)■)d)m)i)(■){■})(.)*)■fail dot
  1811   |  6     (((((((■■)■)d)m)i)■)(.)*)(■■)fail dot
  1812   |  6     (((((((■■)■)d)m)i)■)(.)*)(■|■)fail dot
  1813   |  6     (((((((■■)■)d)m)i)■)(.)*)(■){■}fail dot
  1814   |  6     (((((((■■|■)■)d)m)i)■)(.)*)■fail dot
  1815   |  6     ((((((((■|■)|■)■)d)m)i)■)(.)*)■fail dot
  1816   |  6     ((((((((■){■}|■)■)d)m)i)■)(.)*)■fail dot
  1817   |  6     (((((((■|■)(■■))d)m)i)■)(.)*)■fail dot
  1818   |  6     (((((((■|■)(■|■))d)m)i)■)(.)*)■fail dot
  1819   |  6     (((((((■|■)(■){■})d)m)i)■)(.)*)■fail dot
  1820   |  6     (((((((■|■)■)d)m)i)(■■))(.)*)■fail dot
  1821   |  6     (((((((■|■)■)d)m)i)(■|■))(.)*)■fail dot
  1822   |  6     (((((((■|■)■)d)m)i)(■){■})(.)*)■fail dot
  1823   |  6     (((((((■|■)■)d)m)i)■)(.)*)(■■)fail dot
  1824   |  6     (((((((■|■)■)d)m)i)■)(.)*)(■|■)fail dot
  1825   |  6     (((((((■|■)■)d)m)i)■)(.)*)(■){■}fail dot
  1826   |  6     (((((((■■){■}■)d)m)i)■)(.)*)■fail dot
  1827   |  6     ((((((((■|■)){■}■)d)m)i)■)(.)*)■fail dot
  1828   |  6     ((((((((■){■}){■}■)d)m)i)■)(.)*)■fail dot
  1829   |  6     (((((((■){■}(■■))d)m)i)■)(.)*)■fail dot
  1830   |  6     (((((((■){■}(■|■))d)m)i)■)(.)*)■fail dot
  1831   |  6     (((((((■){■}(■){■})d)m)i)■)(.)*)■fail dot
  1832   |  6     (((((((■){■}■)d)m)i)(■■))(.)*)■fail dot
  1833   |  6     (((((((■){■}■)d)m)i)(■|■))(.)*)■fail dot
  1834   |  6     (((((((■){■}■)d)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  1835   |  6     (((((((■){■}■)d)m)i)■)(.)*)(■■)fail dot
  1836   |  6     (((((((■){■}■)d)m)i)■)(.)*)(■|■)fail dot
  1837   |  6     (((((((■){■}■)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  1838   |  6     ((((((■■)d)m)i)(■))(.)*)■fail dot
  1839   |  6     ((((((■■)d)m)i)((■■)■))(.)*)■fail dot
  1840   |  6     ((((((■■)d)m)i)((■|■)■))(.)*)■fail dot
  1841   |  6     ((((((■■)d)m)i)((■){■}■))(.)*)■fail dot
  1842   |  6     ((((((■■)d)m)i)(■■))(.)*)(■■)fail dot
  1843   |  6     ((((((■■)d)m)i)(■■))(.)*)(■|■)fail dot
  1844   |  6     ((((((■■)d)m)i)(■■))(.)*)(■){■}fail dot
  1845   |  6     ((((((■■)d)m)i)(■■|■))(.)*)■fail dot
  1846   |  6     ((((((■■)d)m)i)((■|■)|■))(.)*)■fail dot
  1847   |  6     ((((((■■)d)m)i)((■){■}|■))(.)*)■fail dot
  1848   |  6     ((((((■■)d)m)i)(■|■))(.)*)(■■)fail dot
  1849   |  6     ((((((■■)d)m)i)(■|■))(.)*)(■|■)fail dot
  1850   |  6     ((((((■■)d)m)i)(■|■))(.)*)(■){■}fail dot
  1851   |  6     ((((((■■)d)m)i)(■■){■})(.)*)■fail dot
  1852   |  6     ((((((■■)d)m)i)((■|■)){■})(.)*)■fail dot
  1853   |  6     ((((((■■)d)m)i)((■){■}){■})(.)*)■fail dot
  1854   |  6     ((((((■■)d)m)i)(■){■})(.)*)(■■)fail dot
  1855   |  6     ((((((■■)d)m)i)(■){■})(.)*)(■|■)fail dot
  1856   |  6     ((((((■■)d)m)i)(■){■})(.)*)(■){■}fail dot
  1857   |  6     ((((((■■)d)m)i)■)(.)*)(■)fail dot
  1858   |  6     ((((((■■)d)m)i)■)(.)*)((■■)■)fail dot
  1859   |  6     ((((((■■)d)m)i)■)(.)*)((■|■)■)fail dot
  1860   |  6     ((((((■■)d)m)i)■)(.)*)((■){■}■)fail dot
  1861   |  6     ((((((■■)d)m)i)■)(.)*)(■■|■)fail dot
  1862   |  6     ((((((■■)d)m)i)■)(.)*)((■|■)|■)fail dot
  1863   |  6     ((((((■■)d)m)i)■)(.)*)((■){■}|■)fail dot
  1864   |  6     ((((((■■)d)m)i)■)(.)*)(■■){■}fail dot
  1865   |  6     ((((((■■)d)m)i)■)(.)*)((■|■)){■}fail dot
  1866   |  6     ((((((■■)d)m)i)■)(.)*)((■){■}){■}fail dot
  1867   |  6     ((((((■)d)m)i)n)(■){■})■fail dot
  1868   |  6     (((((((■■)■)d)m)i)n)(■){■})■fail dot
  1869   |  6     (((((((■|■)■)d)m)i)n)(■){■})■fail dot
  1870   |  6     (((((((■){■}■)d)m)i)n)(■){■})■fail dot
  1871   |  6     ((((((■■)d)m)i)n)(■■){■})■fail dot
  1872   |  6     ((((((■■)d)m)i)n)((■|■)){■})■fail dot
  1873   |  6     ((((((■■)d)m)i)n)((■){■}){■})■fail dot
  1874   |  6     ((((((■■)d)m)i)n)(■){■})(■■)fail dot
  1875   |  6     ((((((■■)d)m)i)n)(■){■})(■|■)fail dot
  1876   |  6     ((((((■■)d)m)i)n)(■){■})(■){■}fail dot
  1877   |  6     (((((■d)m)i)n)(■){■})'  fail dotstar or empty
  1878   |  6     (((((■d)m)i)n)(■)*)■    fail dot
  1879   |  6     (((((((■■))d)m)i)n)(■)*)■fail dot
  1880   |  6     (((((((■|■))d)m)i)n)(■)*)■fail dot
  1881   |  6     (((((((■){■})d)m)i)n)(■)*)■fail dot
  1882   |  6     ((((((■)d)m)i)n)(■■)*)■ fail dot
  1883   |  6     ((((((■)d)m)i)n)((■|■))*)■fail dot
  1884   |  6     ((((((■)d)m)i)n)((■){■})*)■fail dot
  1885   |  6     ((((((■)d)m)i)n)(■)*)(■■)fail dot
  1886   |  6     ((((((■)d)m)i)n)(■)*)(■|■)fail dot
  1887   |  6     ((((((■)d)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  1888   |  6     (((((((■)■)d)m)i)n)(■)*)■fail dot
  1889   |  6     ((((((((■■)■)■)d)m)i)n)(■)*)■fail dot
  1890   |  6     ((((((((■|■)■)■)d)m)i)n)(■)*)■fail dot
  1891   |  6     ((((((((■){■}■)■)d)m)i)n)(■)*)■fail dot
  1892   |  6     (((((((■■)(■■))d)m)i)n)(■)*)■fail dot
  1893   |  6     (((((((■■)(■|■))d)m)i)n)(■)*)■fail dot
  1894   |  6     (((((((■■)(■){■})d)m)i)n)(■)*)■fail dot
  1895   |  6     (((((((■■)■)d)m)i)n)(■■)*)■fail dot
  1896   |  6     (((((((■■)■)d)m)i)n)((■|■))*)■fail dot
  1897   |  6     (((((((■■)■)d)m)i)n)((■){■})*)■fail dot
  1898   |  6     (((((((■■)■)d)m)i)n)(■)*)(■■)fail dot
  1899   |  6     (((((((■■)■)d)m)i)n)(■)*)(■|■)fail dot
  1900   |  6     (((((((■■)■)d)m)i)n)(■)*)(■){■}fail dot
  1901   |  6     (((((((■■|■)■)d)m)i)n)(■)*)■fail dot
  1902   |  6     ((((((((■|■)|■)■)d)m)i)n)(■)*)■fail dot
  1903   |  6     ((((((((■){■}|■)■)d)m)i)n)(■)*)■fail dot
  1904   |  6     (((((((■|■)(■■))d)m)i)n)(■)*)■fail dot
  1905   |  6     (((((((■|■)(■|■))d)m)i)n)(■)*)■fail dot
  1906   |  6     (((((((■|■)(■){■})d)m)i)n)(■)*)■fail dot
  1907   |  6     (((((((■|■)■)d)m)i)n)(■■)*)■fail dot
  1908   |  6     (((((((■|■)■)d)m)i)n)((■|■))*)■fail dot
  1909   |  6     (((((((■|■)■)d)m)i)n)((■){■})*)■fail dot
  1910   |  6     (((((((■|■)■)d)m)i)n)(■)*)(■■)fail dot
  1911   |  6     (((((((■|■)■)d)m)i)n)(■)*)(■|■)fail dot
  1912   |  6     (((((((■|■)■)d)m)i)n)(■)*)(■){■}fail dot
  1913   |  6     (((((((■■){■}■)d)m)i)n)(■)*)■fail dot
  1914   |  6     ((((((((■|■)){■}■)d)m)i)n)(■)*)■fail dot
  1915   |  6     ((((((((■){■}){■}■)d)m)i)n)(■)*)■fail dot
  1916   |  6     (((((((■){■}(■■))d)m)i)n)(■)*)■fail dot
  1917   |  6     (((((((■){■}(■|■))d)m)i)n)(■)*)■fail dot
  1918   |  6     (((((((■){■}(■){■})d)m)i)n)(■)*)■fail dot
  1919   |  6     (((((((■){■}■)d)m)i)n)(■■)*)■fail dot
  1920   |  6     (((((((■){■}■)d)m)i)n)((■|■))*)■fail dot
  1921   |  6     (((((((■){■}■)d)m)i)n)((■){■})*)■fail dot
  1922   |  6     (((((((■){■}■)d)m)i)n)(■)*)(■■)fail dot
  1923   |  6     (((((((■){■}■)d)m)i)n)(■)*)(■|■)fail dot
  1924   |  6     (((((((■){■}■)d)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  1925   |  6     ((((((■■)d)m)i)n)((■■)■)*)■fail dot
  1926   |  6     ((((((■■)d)m)i)n)((■|■)■)*)■fail dot
  1927   |  6     ((((((■■)d)m)i)n)((■){■}■)*)■fail dot
  1928   |  6     ((((((■■)d)m)i)n)(■(■■))*)■fail dot
  1929   |  6     ((((((■■)d)m)i)n)(■(■|■))*)■fail dot
  1930   |  6     ((((((■■)d)m)i)n)(■(■){■})*)■fail dot
  1931   |  6     ((((((■■)d)m)i)n)(■■)*)(■■)fail dot
  1932   |  6     ((((((■■)d)m)i)n)(■■)*)(■|■)fail dot
  1933   |  6     ((((((■■)d)m)i)n)(■■)*)(■){■}fail dot
  1934   |  6     ((((((■■)d)m)i)n)((■■|■))*)■fail dot
  1935   |  6     ((((((■■)d)m)i)n)(((■|■)|■))*)■fail dot
  1936   |  6     ((((((■■)d)m)i)n)(((■){■}|■))*)■fail dot
  1937   |  6     ((((((■■)d)m)i)n)((■|■■))*)■fail dot
  1938   |  6     ((((((■■)d)m)i)n)((■|(■|■)))*)■fail dot
  1939   |  6     ((((((■■)d)m)i)n)((■|(■){■}))*)■fail dot
  1940   |  6     ((((((■■)d)m)i)n)((■|■))*)(■■)fail dot
  1941   |  6     ((((((■■)d)m)i)n)((■|■))*)(■|■)fail dot
  1942   |  6     ((((((■■)d)m)i)n)((■|■))*)(■){■}fail dot
  1943   |  6     ((((((■■)d)m)i)n)((■■){■})*)■fail dot
  1944   |  6     ((((((■■)d)m)i)n)(((■|■)){■})*)■fail dot
  1945   |  6     ((((((■■)d)m)i)n)(((■){■}){■})*)■fail dot
  1946   |  6     ((((((■■)d)m)i)n)((■){■})*)(■■)fail dot
  1947   |  6     ((((((■■)d)m)i)n)((■){■})*)(■|■)fail dot
  1948   |  6     ((((((■■)d)m)i)n)((■){■})*)(■){■}fail dot
  1949   |  6     ((((((■■)d)m)i)n)(■)*)(■)fail dot
  1950   |  6     ((((((■■)d)m)i)n)(■)*)((■■)■)fail dot
  1951   |  6     ((((((■■)d)m)i)n)(■)*)((■|■)■)fail dot
  1952   |  6     ((((((■■)d)m)i)n)(■)*)((■){■}■)fail dot
  1953   |  6     ((((((■■)d)m)i)n)(■)*)(■■|■)fail dot
  1954   |  6     ((((((■■)d)m)i)n)(■)*)((■|■)|■)fail dot
  1955   |  6     ((((((■■)d)m)i)n)(■)*)((■){■}|■)fail dot
  1956   |  6     ((((((■■)d)m)i)n)(■)*)(■■){■}fail dot
  1957   |  6     ((((((■■)d)m)i)n)(■)*)((■|■)){■}fail dot
  1958   |  6     ((((((■■)d)m)i)n)(■)*)((■){■}){■}fail dot
  1959   |  6     (((((■d)m)i)n)(.){■})■  fail dot
  1960   |  6     ((((((■)d)m)i)n)■)■     fail dot
  1961   |  6     (((((((■■))d)m)i)n)(.){■})■fail dot
  1962   |  6     (((((((■|■))d)m)i)n)(.){■})■fail dot
  1963   |  6     (((((((■){■})d)m)i)n)(.){■})■fail dot
  1964   |  6     ((((((■)d)m)i)n)(.){■})(■■)fail dot
  1965   |  6     ((((((■)d)m)i)n)(.){■})(■|■)fail dot
  1966   |  6     ((((((■)d)m)i)n)(.){■})(■){■}  unsatisfiable SAT formula       
  1967   |  6     (((((((■■)■)d)m)i)n)■)■ fail dot
  1968   |  6     (((((((■|■)■)d)m)i)n)■)■fail dot
  1969   |  6     (((((((■){■}■)d)m)i)n)■)■fail dot
  1970   |  6     ((((((■■)d)m)i)n)(■■))■ fail dot
  1971   |  6     ((((((■■)d)m)i)n)(■|■))■fail dot
  1972   |  6     ((((((■■)d)m)i)n)■)(■■) fail dot
  1973   |  6     ((((((■■)d)m)i)n)■)(■|■)fail dot
  1974   |  6     ((((((■■)d)m)i)n)■)(■){■}fail dot
  1975   |  6     (((((((■)■)d)m)i)n)(.){■})■fail dot
  1976   |  6     ((((((((■■)■)■)d)m)i)n)(.){■})■fail dot
  1977   |  6     ((((((((■|■)■)■)d)m)i)n)(.){■})■fail dot
  1978   |  6     ((((((((■){■}■)■)d)m)i)n)(.){■})■fail dot
  1979   |  6     (((((((■■)(■■))d)m)i)n)(.){■})■fail dot
  1980   |  6     (((((((■■)(■|■))d)m)i)n)(.){■})■fail dot
  1981   |  6     (((((((■■)(■){■})d)m)i)n)(.){■})■fail dot
  1982   |  6     (((((((■■)■)d)m)i)n)(.){■})(■■)fail dot
  1983   |  6     (((((((■■)■)d)m)i)n)(.){■})(■|■)fail dot
  1984   |  6     (((((((■■)■)d)m)i)n)(.){■})(■){■}fail dot
  1985   |  6     (((((((■■|■)■)d)m)i)n)(.){■})■fail dot
  1986   |  6     ((((((((■|■)|■)■)d)m)i)n)(.){■})■fail dot
  1987   |  6     ((((((((■){■}|■)■)d)m)i)n)(.){■})■fail dot
  1988   |  6     (((((((■|■)(■■))d)m)i)n)(.){■})■fail dot
  1989   |  6     (((((((■|■)(■|■))d)m)i)n)(.){■})■fail dot
  1990   |  6     (((((((■|■)(■){■})d)m)i)n)(.){■})■fail dot
  1991   |  6     (((((((■|■)■)d)m)i)n)(.){■})(■■)fail dot
  1992   |  6     (((((((■|■)■)d)m)i)n)(.){■})(■|■)fail dot
  1993   |  6     (((((((■|■)■)d)m)i)n)(.){■})(■){■}fail dot
  1994   |  6     (((((((■■){■}■)d)m)i)n)(.){■})■fail dot
  1995   |  6     ((((((((■|■)){■}■)d)m)i)n)(.){■})■fail dot
  1996   |  6     ((((((((■){■}){■}■)d)m)i)n)(.){■})■fail dot
  1997   |  6     (((((((■){■}(■■))d)m)i)n)(.){■})■fail dot
  1998   |  6     (((((((■){■}(■|■))d)m)i)n)(.){■})■fail dot
  1999   |  6     (((((((■){■}(■){■})d)m)i)n)(.){■})■fail dot
  2000   |  6     (((((((■){■}■)d)m)i)n)(.){■})(■■)fail dot
  2001   |  6     (((((((■){■}■)d)m)i)n)(.){■})(■|■)fail dot
  2002   |  6     (((((((■){■}■)d)m)i)n)(.){■})(■){■}  unsatisfiable SAT formula       
  2003   |  6     ((((((■■)d)m)i)n)(.){■})(■)fail dot
  2004   |  6     ((((((■■)d)m)i)n)(.){■})((■■)■)fail dot
  2005   |  6     ((((((■■)d)m)i)n)(.){■})((■|■)■)fail dot
  2006   |  6     ((((((■■)d)m)i)n)(.){■})((■){■}■)fail dot
  2007   |  6     ((((((■■)d)m)i)n)(.){■})(■■|■)fail dot
  2008   |  6     ((((((■■)d)m)i)n)(.){■})((■|■)|■)fail dot
  2009   |  6     ((((((■■)d)m)i)n)(.){■})((■){■}|■)fail dot
  2010   |  6     ((((((■■)d)m)i)n)(.){■})(■■){■}fail dot
  2011   |  6     ((((((■■)d)m)i)n)(.){■})((■|■)){■}fail dot
  2012   |  6     ((((((■■)d)m)i)n)(.){■})((■){■}){■}fail dot
  2013   |  6     (((((■d)m)i)n)■)'       fail dotstar or empty
  2014   |  6     ((((((■|■)d)m)i)n)(.)*)■fail dot
  2015   |  6     ((((((■){■}d)m)i)n)(.)*)■fail dot
  2016   |  6     (((((■d)m)i)n)(.)*)(■■) fail dot
  2017   |  6     (((((■d)m)i)n)(.)*)(■|■)fail dot
  2018   |  6     (((((■d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2019   |  6     ((((((((■■)■))d)m)i)n)(.)*)■fail dot
  2020   |  6     ((((((((■|■)■))d)m)i)n)(.)*)■fail dot
  2021   |  6     ((((((((■){■}■))d)m)i)n)(.)*)■fail dot
  2022   |  6     (((((((■■))d)m)i)n)(.)*)(■■)fail dot
  2023   |  6     (((((((■■))d)m)i)n)(.)*)(■|■)fail dot
  2024   |  6     (((((((■■))d)m)i)n)(.)*)(■){■}fail dot
  2025   |  6     (((((((■■|■))d)m)i)n)(.)*)■fail dot
  2026   |  6     ((((((((■|■)|■))d)m)i)n)(.)*)■fail dot
  2027   |  6     ((((((((■){■}|■))d)m)i)n)(.)*)■fail dot
  2028   |  6     (((((((■|■))d)m)i)n)(.)*)(■■)fail dot
  2029   |  6     (((((((■|■))d)m)i)n)(.)*)(■|■)fail dot
  2030   |  6     (((((((■|■))d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2031   |  6     (((((((■■){■})d)m)i)n)(.)*)■fail dot
  2032   |  6     ((((((((■|■)){■})d)m)i)n)(.)*)■fail dot
  2033   |  6     ((((((((■){■}){■})d)m)i)n)(.)*)■fail dot
  2034   |  6     (((((((■){■})d)m)i)n)(.)*)(■■)fail dot
  2035   |  6     (((((((■){■})d)m)i)n)(.)*)(■|■)fail dot
  2036   |  6     (((((((■){■})d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2037   |  6     ((((((■)d)m)i)n)(.)*)(■)fail dot
  2038   |  6     ((((((■)d)m)i)n)(.)*)((■■)■)fail dot
  2039   |  6     ((((((■)d)m)i)n)(.)*)((■|■)■)fail dot
  2040   |  6     ((((((■)d)m)i)n)(.)*)((■){■}■)fail dot
  2041   |  6     ((((((■)d)m)i)n)(.)*)(■■|■)fail dot
  2042   |  6     ((((((■)d)m)i)n)(.)*)((■|■)|■)fail dot
  2043   |  6     ((((((■)d)m)i)n)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  2044   |  6     ((((((■)d)m)i)n)(.)*)(■■){■}  unsatisfiable SAT formula       
  2045   |  6     ((((((■)d)m)i)n)(.)*)((■|■)){■}fail solve
  2046   |  6     ((((((■)d)m)i)n)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  2047   |  6     ((((((((■■))■)d)m)i)n)(.)*)■fail dot
  2048   |  6     ((((((((■|■))■)d)m)i)n)(.)*)■fail dot
  2049   |  6     ((((((((■){■})■)d)m)i)n)(.)*)■fail dot
  2050   |  6     (((((((■)■)d)m)i)n)(.)*)(■■)fail dot
  2051   |  6     (((((((■)■)d)m)i)n)(.)*)(■|■)fail dot
  2052   |  6     (((((((■)■)d)m)i)n)(.)*)(■){■}fail dot
  2053   |  6     ((((((((■)■)■)d)m)i)n)(.)*)■fail dot
  2054   |  6     (((((((((■■)■)■)■)d)m)i)n)(.)*)■fail dot
  2055   |  6     (((((((((■|■)■)■)■)d)m)i)n)(.)*)■fail dot
  2056   |  6     (((((((((■){■}■)■)■)d)m)i)n)(.)*)■fail dot
  2057   |  6     ((((((((■■)(■■))■)d)m)i)n)(.)*)■fail dot
  2058   |  6     ((((((((■■)(■|■))■)d)m)i)n)(.)*)■fail dot
  2059   |  6     ((((((((■■)(■){■})■)d)m)i)n)(.)*)■fail dot
  2060   |  6     ((((((((■■)■)(■■))d)m)i)n)(.)*)■fail dot
  2061   |  6     ((((((((■■)■)(■|■))d)m)i)n)(.)*)■fail dot
  2062   |  6     ((((((((■■)■)(■){■})d)m)i)n)(.)*)■fail dot
  2063   |  6     ((((((((■■)■)■)d)m)i)n)(.)*)(■■)fail dot
  2064   |  6     ((((((((■■)■)■)d)m)i)n)(.)*)(■|■)fail dot
  2065   |  6     ((((((((■■)■)■)d)m)i)n)(.)*)(■){■}fail dot
  2066   |  6     ((((((((■■|■)■)■)d)m)i)n)(.)*)■fail dot
  2067   |  6     (((((((((■|■)|■)■)■)d)m)i)n)(.)*)■fail dot
  2068   |  6     (((((((((■){■}|■)■)■)d)m)i)n)(.)*)■fail dot
  2069   |  6     ((((((((■|■)(■■))■)d)m)i)n)(.)*)■fail dot
  2070   |  6     ((((((((■|■)(■|■))■)d)m)i)n)(.)*)■fail dot
  2071   |  6     ((((((((■|■)(■){■})■)d)m)i)n)(.)*)■fail dot
  2072   |  6     ((((((((■|■)■)(■■))d)m)i)n)(.)*)■fail dot
  2073   |  6     ((((((((■|■)■)(■|■))d)m)i)n)(.)*)■fail dot
  2074   |  6     ((((((((■|■)■)(■){■})d)m)i)n)(.)*)■fail dot
  2075   |  6     ((((((((■|■)■)■)d)m)i)n)(.)*)(■■)fail dot
  2076   |  6     ((((((((■|■)■)■)d)m)i)n)(.)*)(■|■)fail dot
  2077   |  6     ((((((((■|■)■)■)d)m)i)n)(.)*)(■){■}fail dot
  2078   |  6     ((((((((■■){■}■)■)d)m)i)n)(.)*)■fail dot
  2079   |  6     (((((((((■|■)){■}■)■)d)m)i)n)(.)*)■fail dot
  2080   |  6     (((((((((■){■}){■}■)■)d)m)i)n)(.)*)■fail dot
  2081   |  6     ((((((((■){■}(■■))■)d)m)i)n)(.)*)■fail dot
  2082   |  6     ((((((((■){■}(■|■))■)d)m)i)n)(.)*)■fail dot
  2083   |  6     ((((((((■){■}(■){■})■)d)m)i)n)(.)*)■fail dot
  2084   |  6     ((((((((■){■}■)(■■))d)m)i)n)(.)*)■fail dot
  2085   |  6     ((((((((■){■}■)(■|■))d)m)i)n)(.)*)■fail dot
  2086   |  6     ((((((((■){■}■)(■){■})d)m)i)n)(.)*)■fail dot
  2087   |  6     ((((((((■){■}■)■)d)m)i)n)(.)*)(■■)fail dot
  2088   |  6     ((((((((■){■}■)■)d)m)i)n)(.)*)(■|■)fail dot
  2089   |  6     ((((((((■){■}■)■)d)m)i)n)(.)*)(■){■}fail dot
  2090   |  6     (((((((■■)(■))d)m)i)n)(.)*)■fail dot
  2091   |  6     (((((((■■)(■■))d)m)i)n)(.)*)(■■)fail dot
  2092   |  6     (((((((■■)(■■))d)m)i)n)(.)*)(■|■)fail dot
  2093   |  6     (((((((■■)(■■))d)m)i)n)(.)*)(■){■}fail dot
  2094   |  6     (((((((■■)(■|■))d)m)i)n)(.)*)(■■)fail dot
  2095   |  6     (((((((■■)(■|■))d)m)i)n)(.)*)(■|■)fail dot
  2096   |  6     (((((((■■)(■|■))d)m)i)n)(.)*)(■){■}fail dot
  2097   |  6     (((((((■■)(■){■})d)m)i)n)(.)*)(■■)fail dot
  2098   |  6     (((((((■■)(■){■})d)m)i)n)(.)*)(■|■)fail dot
  2099   |  6     (((((((■■)(■){■})d)m)i)n)(.)*)(■){■}fail dot
  2100   |  6     (((((((■■)■)d)m)i)n)(.)*)(■)fail dot
  2101   |  6     (((((((■■)■)d)m)i)n)(.)*)((■■)■)fail dot
  2102   |  6     (((((((■■)■)d)m)i)n)(.)*)((■|■)■)fail dot
  2103   |  6     (((((((■■)■)d)m)i)n)(.)*)((■){■}■)fail dot
  2104   |  6     (((((((■■)■)d)m)i)n)(.)*)(■■|■)fail dot
  2105   |  6     (((((((■■)■)d)m)i)n)(.)*)((■|■)|■)fail dot
  2106   |  6     (((((((■■)■)d)m)i)n)(.)*)((■){■}|■)fail dot
  2107   |  6     (((((((■■)■)d)m)i)n)(.)*)(■■){■}fail dot
  2108   |  6     (((((((■■)■)d)m)i)n)(.)*)((■|■)){■}fail dot
  2109   |  6     (((((((■■)■)d)m)i)n)(.)*)((■){■}){■}fail dot
  2110   |  6     ((((((((■■)■|■)■)d)m)i)n)(.)*)■fail dot
  2111   |  6     ((((((((■|■)■|■)■)d)m)i)n)(.)*)■fail dot
  2112   |  6     ((((((((■){■}■|■)■)d)m)i)n)(.)*)■fail dot
  2113   |  6     (((((((■■|■■)■)d)m)i)n)(.)*)■fail dot
  2114   |  6     (((((((■■|(■|■))■)d)m)i)n)(.)*)■fail dot
  2115   |  6     (((((((■■|(■){■})■)d)m)i)n)(.)*)■fail dot
  2116   |  6     (((((((■■|■)(■■))d)m)i)n)(.)*)■fail dot
  2117   |  6     (((((((■■|■)(■|■))d)m)i)n)(.)*)■fail dot
  2118   |  6     (((((((■■|■)(■){■})d)m)i)n)(.)*)■fail dot
  2119   |  6     (((((((■■|■)■)d)m)i)n)(.)*)(■■)fail dot
  2120   |  6     (((((((■■|■)■)d)m)i)n)(.)*)(■|■)fail dot
  2121   |  6     (((((((■■|■)■)d)m)i)n)(.)*)(■){■}fail dot
  2122   |  6     ((((((((■■|■)|■)■)d)m)i)n)(.)*)■fail dot
  2123   |  6     (((((((((■|■)|■)|■)■)d)m)i)n)(.)*)■fail dot
  2124   |  6     (((((((((■){■}|■)|■)■)d)m)i)n)(.)*)■fail dot
  2125   |  6     ((((((((■|■)|■■)■)d)m)i)n)(.)*)■fail dot
  2126   |  6     ((((((((■|■)|(■|■))■)d)m)i)n)(.)*)■fail dot
  2127   |  6     ((((((((■|■)|(■){■})■)d)m)i)n)(.)*)■fail dot
  2128   |  6     ((((((((■|■)|■)(■■))d)m)i)n)(.)*)■fail dot
  2129   |  6     ((((((((■|■)|■)(■|■))d)m)i)n)(.)*)■fail dot
  2130   |  6     ((((((((■|■)|■)(■){■})d)m)i)n)(.)*)■fail dot
  2131   |  6     ((((((((■|■)|■)■)d)m)i)n)(.)*)(■■)fail dot
  2132   |  6     ((((((((■|■)|■)■)d)m)i)n)(.)*)(■|■)fail dot
  2133   |  6     ((((((((■|■)|■)■)d)m)i)n)(.)*)(■){■}fail dot
  2134   |  6     ((((((((■■){■}|■)■)d)m)i)n)(.)*)■fail dot
  2135   |  6     (((((((((■|■)){■}|■)■)d)m)i)n)(.)*)■fail dot
  2136   |  6     (((((((((■){■}){■}|■)■)d)m)i)n)(.)*)■fail dot
  2137   |  6     ((((((((■){■}|■■)■)d)m)i)n)(.)*)■fail dot
  2138   |  6     ((((((((■){■}|(■|■))■)d)m)i)n)(.)*)■fail dot
  2139   |  6     ((((((((■){■}|(■){■})■)d)m)i)n)(.)*)■fail dot
  2140   |  6     ((((((((■){■}|■)(■■))d)m)i)n)(.)*)■fail dot
  2141   |  6     ((((((((■){■}|■)(■|■))d)m)i)n)(.)*)■fail dot
  2142   |  6     ((((((((■){■}|■)(■){■})d)m)i)n)(.)*)■fail dot
  2143   |  6     ((((((((■){■}|■)■)d)m)i)n)(.)*)(■■)fail dot
  2144   |  6     ((((((((■){■}|■)■)d)m)i)n)(.)*)(■|■)fail dot
  2145   |  6     ((((((((■){■}|■)■)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2146   |  6     (((((((■|■)(■))d)m)i)n)(.)*)■fail dot
  2147   |  6     (((((((■|■)(■■))d)m)i)n)(.)*)(■■)fail dot
  2148   |  6     (((((((■|■)(■■))d)m)i)n)(.)*)(■|■)fail dot
  2149   |  6     (((((((■|■)(■■))d)m)i)n)(.)*)(■){■}fail dot
  2150   |  6     (((((((■|■)(■|■))d)m)i)n)(.)*)(■■)fail dot
  2151   |  6     (((((((■|■)(■|■))d)m)i)n)(.)*)(■|■)fail dot
  2152   |  6     (((((((■|■)(■|■))d)m)i)n)(.)*)(■){■}fail dot
  2153   |  6     (((((((■|■)(■){■})d)m)i)n)(.)*)(■■)fail dot
  2154   |  6     (((((((■|■)(■){■})d)m)i)n)(.)*)(■|■)fail dot
  2155   |  6     (((((((■|■)(■){■})d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2156   |  6     (((((((■|■)■)d)m)i)n)(.)*)(■)fail dot
  2157   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■■)■)fail dot
  2158   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■|■)■)fail dot
  2159   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■){■}■)fail dot
  2160   |  6     (((((((■|■)■)d)m)i)n)(.)*)(■■|■)fail dot
  2161   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■|■)|■)fail dot
  2162   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■){■}|■)fail dot
  2163   |  6     (((((((■|■)■)d)m)i)n)(.)*)(■■){■}fail dot
  2164   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■|■)){■}fail dot
  2165   |  6     (((((((■|■)■)d)m)i)n)(.)*)((■){■}){■}fail dot
  2166   |  6     ((((((((■■)■){■}■)d)m)i)n)(.)*)■fail dot
  2167   |  6     ((((((((■|■)■){■}■)d)m)i)n)(.)*)■fail dot
  2168   |  6     ((((((((■){■}■){■}■)d)m)i)n)(.)*)■fail dot
  2169   |  6     (((((((■■){■}(■■))d)m)i)n)(.)*)■fail dot
  2170   |  6     (((((((■■){■}(■|■))d)m)i)n)(.)*)■fail dot
  2171   |  6     (((((((■■){■}(■){■})d)m)i)n)(.)*)■fail dot
  2172   |  6     (((((((■■){■}■)d)m)i)n)(.)*)(■■)fail dot
  2173   |  6     (((((((■■){■}■)d)m)i)n)(.)*)(■|■)fail dot
  2174   |  6     (((((((■■){■}■)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2175   |  6     ((((((((■■|■)){■}■)d)m)i)n)(.)*)■fail dot
  2176   |  6     (((((((((■|■)|■)){■}■)d)m)i)n)(.)*)■fail dot
  2177   |  6     (((((((((■){■}|■)){■}■)d)m)i)n)(.)*)■fail dot
  2178   |  6     ((((((((■|■)){■}(■■))d)m)i)n)(.)*)■fail dot
  2179   |  6     ((((((((■|■)){■}(■|■))d)m)i)n)(.)*)■fail dot
  2180   |  6     ((((((((■|■)){■}(■){■})d)m)i)n)(.)*)■fail dot
  2181   |  6     ((((((((■|■)){■}■)d)m)i)n)(.)*)(■■)fail dot
  2182   |  6     ((((((((■|■)){■}■)d)m)i)n)(.)*)(■|■)fail dot
  2183   |  6     ((((((((■|■)){■}■)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2184   |  6     ((((((((■■){■}){■}■)d)m)i)n)(.)*)■fail dot
  2185   |  6     (((((((((■|■)){■}){■}■)d)m)i)n)(.)*)■fail dot
  2186   |  6     (((((((((■){■}){■}){■}■)d)m)i)n)(.)*)■fail dot
  2187   |  6     ((((((((■){■}){■}(■■))d)m)i)n)(.)*)■fail dot
  2188   |  6     ((((((((■){■}){■}(■|■))d)m)i)n)(.)*)■fail dot
  2189   |  6     ((((((((■){■}){■}(■){■})d)m)i)n)(.)*)■fail dot
  2190   |  6     ((((((((■){■}){■}■)d)m)i)n)(.)*)(■■)fail dot
  2191   |  6     ((((((((■){■}){■}■)d)m)i)n)(.)*)(■|■)fail dot
  2192   |  6     ((((((((■){■}){■}■)d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2193   |  6     (((((((■){■}(■))d)m)i)n)(.)*)■fail dot
  2194   |  6     (((((((■){■}(■■))d)m)i)n)(.)*)(■■)fail dot
  2195   |  6     (((((((■){■}(■■))d)m)i)n)(.)*)(■|■)fail dot
  2196   |  6     (((((((■){■}(■■))d)m)i)n)(.)*)(■){■}fail dot
  2197   |  6     (((((((■){■}(■|■))d)m)i)n)(.)*)(■■)fail dot
  2198   |  6     (((((((■){■}(■|■))d)m)i)n)(.)*)(■|■)fail dot
  2199   |  6     (((((((■){■}(■|■))d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2200   |  6     (((((((■){■}(■){■})d)m)i)n)(.)*)(■■)fail dot
  2201   |  6     (((((((■){■}(■){■})d)m)i)n)(.)*)(■|■)fail dot
  2202   |  6     (((((((■){■}(■){■})d)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2203   |  6     (((((((■){■}■)d)m)i)n)(.)*)(■)fail dot
  2204   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■■)■)fail dot
  2205   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■|■)■)fail dot
  2206   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■){■}■)fail dot
  2207   |  6     (((((((■){■}■)d)m)i)n)(.)*)(■■|■)fail dot
  2208   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■|■)|■)fail dot
  2209   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  2210   |  6     (((((((■){■}■)d)m)i)n)(.)*)(■■){■}  unsatisfiable SAT formula       
  2211   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■|■)){■}fail solve
  2212   |  6     (((((((■){■}■)d)m)i)n)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  2213   |  6     ((((((■■)d)m)i)n)(.)*)((■■))fail dot
  2214   |  6     ((((((■■)d)m)i)n)(.)*)((■|■))fail dot
  2215   |  6     ((((((■■)d)m)i)n)(.)*)((■){■})fail dot
  2216   |  6     ((((((■■)d)m)i)n)(.)*)((■)■)fail dot
  2217   |  6     ((((((■■)d)m)i)n)(.)*)(((■■)■)■)fail dot
  2218   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)■)■)fail dot
  2219   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}■)■)fail dot
  2220   |  6     ((((((■■)d)m)i)n)(.)*)((■■)(■■))fail dot
  2221   |  6     ((((((■■)d)m)i)n)(.)*)((■■)(■|■))fail dot
  2222   |  6     ((((((■■)d)m)i)n)(.)*)((■■)(■){■})fail dot
  2223   |  6     ((((((■■)d)m)i)n)(.)*)((■■|■)■)fail dot
  2224   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)|■)■)fail dot
  2225   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}|■)■)fail dot
  2226   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)(■■))fail dot
  2227   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)(■|■))fail dot
  2228   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)(■){■})fail dot
  2229   |  6     ((((((■■)d)m)i)n)(.)*)((■■){■}■)fail dot
  2230   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)){■}■)fail dot
  2231   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}){■}■)fail dot
  2232   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}(■■))fail dot
  2233   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}(■|■))fail dot
  2234   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}(■){■})fail dot
  2235   |  6     ((((((■■)d)m)i)n)(.)*)((■■)■|■)fail dot
  2236   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)■|■)fail dot
  2237   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}■|■)fail dot
  2238   |  6     ((((((■■)d)m)i)n)(.)*)(■■|■■)fail dot
  2239   |  6     ((((((■■)d)m)i)n)(.)*)(■■|(■|■))fail dot
  2240   |  6     ((((((■■)d)m)i)n)(.)*)(■■|(■){■})fail dot
  2241   |  6     ((((((■■)d)m)i)n)(.)*)((■■|■)|■)fail dot
  2242   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)|■)|■)fail dot
  2243   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}|■)|■)fail dot
  2244   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)|■■)fail dot
  2245   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)|(■|■))fail dot
  2246   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)|(■){■})fail dot
  2247   |  6     ((((((■■)d)m)i)n)(.)*)((■■){■}|■)fail dot
  2248   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)){■}|■)fail dot
  2249   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}){■}|■)fail dot
  2250   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}|■■)fail dot
  2251   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}|(■|■))fail dot
  2252   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}|(■){■})fail dot
  2253   |  6     ((((((■■)d)m)i)n)(.)*)((■■)■){■}fail dot
  2254   |  6     ((((((■■)d)m)i)n)(.)*)((■|■)■){■}fail dot
  2255   |  6     ((((((■■)d)m)i)n)(.)*)((■){■}■){■}fail dot
  2256   |  6     ((((((■■)d)m)i)n)(.)*)((■■|■)){■}fail dot
  2257   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)|■)){■}fail dot
  2258   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}|■)){■}fail dot
  2259   |  6     ((((((■■)d)m)i)n)(.)*)((■■){■}){■}fail dot
  2260   |  6     ((((((■■)d)m)i)n)(.)*)(((■|■)){■}){■}fail dot
  2261   |  6     ((((((■■)d)m)i)n)(.)*)(((■){■}){■}){■}fail dot
  2262   |  6     ((((((■a)■)■)■)■)(■)*)' fail dotstar or empty
  2263   |  6     ((((((■a)■)■)■)■)(.){■})'fail dotstar or empty
  2264   |  6     ((((((■a)■)■)■)■)(.)*)■ fail dot
  2265   |  6     ((((((■a)■)■)■)n)(■){■})'fail dotstar or empty
  2266   |  6     ((((((■a)■)■)■)n)(■)*)■ fail dot
  2267   |  6     ((((((■a)■)■)■)n)(.){■})■fail dot
  2268   |  6     ((((((■a)■)■)■)n)■)'    fail dotstar or empty
  2269   |  6     (((((((■■)a)■)■)■)n)(.)*)■fail dot
  2270   |  6     (((((((■|■)a)■)■)■)n)(.)*)■fail dot
  2271   |  6     (((((((■){■}a)■)■)■)n)(.)*)■fail dot
  2272   |  6     ((((((■a)(■■))■)■)n)(.)*)■fail dot
  2273   |  6     ((((((■a)(■|■))■)■)n)(.)*)■fail dot
  2274   |  6     ((((((■a)(■){■})■)■)n)(.)*)■fail dot
  2275   |  6     ((((((■a)■)(■■))■)n)(.)*)■fail dot
  2276   |  6     ((((((■a)■)(■|■))■)n)(.)*)■fail dot
  2277   |  6     ((((((■a)■)(■){■})■)n)(.)*)■fail dot
  2278   |  6     ((((((■a)■)■)(■■))n)(.)*)■fail dot
  2279   |  6     ((((((■a)■)■)(■|■))n)(.)*)■fail dot
  2280   |  6     ((((((■a)■)■)(■){■})n)(.)*)■fail dot
  2281   |  6     ((((((■a)■)■)■)n)(.)*)(■■)fail dot
  2282   |  6     ((((((■a)■)■)■)n)(.)*)(■|■)fail dot
  2283   |  6     ((((((■a)■)■)■)n)(.)*)(■){■}fail dot
  2284   |  6     ((((((■a)■)■)i)■)(■){■})'fail dotstar or empty
  2285   |  6     ((((((■a)■)■)i)■)(■)*)■ fail dot
  2286   |  6     ((((((■a)■)■)i)■)(.){■})■fail dot
  2287   |  6     ((((((■a)■)■)i)■)■)'    fail dotstar or empty
  2288   |  6     (((((((■■)a)■)■)i)■)(.)*)■fail dot
  2289   |  6     (((((((■|■)a)■)■)i)■)(.)*)■fail dot
  2290   |  6     (((((((■){■}a)■)■)i)■)(.)*)■fail dot
  2291   |  6     ((((((■a)(■■))■)i)■)(.)*)■fail dot
  2292   |  6     ((((((■a)(■|■))■)i)■)(.)*)■fail dot
  2293   |  6     ((((((■a)(■){■})■)i)■)(.)*)■fail dot
  2294   |  6     ((((((■a)■)(■■))i)■)(.)*)■fail dot
  2295   |  6     ((((((■a)■)(■|■))i)■)(.)*)■fail dot
  2296   |  6     ((((((■a)■)(■){■})i)■)(.)*)■fail dot
  2297   |  6     ((((((■a)■)■)i)(■■))(.)*)■fail dot
  2298   |  6     ((((((■a)■)■)i)(■|■))(.)*)■fail dot
  2299   |  6     ((((((■a)■)■)i)(■){■})(.)*)■fail dot
  2300   |  6     ((((((■a)■)■)i)■)(.)*)(■■)fail dot
  2301   |  6     ((((((■a)■)■)i)■)(.)*)(■|■)fail dot
  2302   |  6     ((((((■a)■)■)i)■)(.)*)(■){■}fail dot
  2303   |  6     ((((((■a)■)■)i)n)(■){■})■fail dot
  2304   |  6     (((((((■■)a)■)■)i)n)(■)*)■fail dot
  2305   |  6     (((((((■|■)a)■)■)i)n)(■)*)■fail dot
  2306   |  6     (((((((■){■}a)■)■)i)n)(■)*)■fail dot
  2307   |  6     ((((((■a)(■■))■)i)n)(■)*)■fail dot
  2308   |  6     ((((((■a)(■|■))■)i)n)(■)*)■fail dot
  2309   |  6     ((((((■a)(■){■})■)i)n)(■)*)■fail dot
  2310   |  6     ((((((■a)■)(■■))i)n)(■)*)■fail dot
  2311   |  6     ((((((■a)■)(■|■))i)n)(■)*)■fail dot
  2312   |  6     ((((((■a)■)(■){■})i)n)(■)*)■fail dot
  2313   |  6     ((((((■a)■)■)i)n)(■■)*)■fail dot
  2314   |  6     ((((((■a)■)■)i)n)((■|■))*)■fail dot
  2315   |  6     ((((((■a)■)■)i)n)((■){■})*)■fail dot
  2316   |  6     ((((((■a)■)■)i)n)(■)*)(■■)fail dot
  2317   |  6     ((((((■a)■)■)i)n)(■)*)(■|■)fail dot
  2318   |  6     ((((((■a)■)■)i)n)(■)*)(■){■}fail dot
  2319   |  6     ((((((■a)■)■)i)n)■)■    fail dot
  2320   |  6     (((((((■■)a)■)■)i)n)(.){■})■fail dot
  2321   |  6     (((((((■|■)a)■)■)i)n)(.){■})■fail dot
  2322   |  6     (((((((■){■}a)■)■)i)n)(.){■})■fail dot
  2323   |  6     ((((((■a)(■■))■)i)n)(.){■})■fail dot
  2324   |  6     ((((((■a)(■|■))■)i)n)(.){■})■fail dot
  2325   |  6     ((((((■a)(■){■})■)i)n)(.){■})■fail dot
  2326   |  6     ((((((■a)■)(■■))i)n)(.){■})■fail dot
  2327   |  6     ((((((■a)■)(■|■))i)n)(.){■})■fail dot
  2328   |  6     ((((((■a)■)(■){■})i)n)(.){■})■fail dot
  2329   |  6     ((((((■a)■)■)i)n)(.){■})(■■)fail dot
  2330   |  6     ((((((■a)■)■)i)n)(.){■})(■|■)fail dot
  2331   |  6     ((((((■a)■)■)i)n)(.){■})(■){■}fail dot
  2332   |  6     (((((((■)a)■)■)i)n)(.)*)■fail dot
  2333   |  6     ((((((((■■)■)a)■)■)i)n)(.)*)■fail dot
  2334   |  6     ((((((((■|■)■)a)■)■)i)n)(.)*)■fail dot
  2335   |  6     ((((((((■){■}■)a)■)■)i)n)(.)*)■fail dot
  2336   |  6     (((((((■■)a)(■■))■)i)n)(.)*)■fail dot
  2337   |  6     (((((((■■)a)(■|■))■)i)n)(.)*)■fail dot
  2338   |  6     (((((((■■)a)(■){■})■)i)n)(.)*)■fail dot
  2339   |  6     (((((((■■)a)■)(■■))i)n)(.)*)■fail dot
  2340   |  6     (((((((■■)a)■)(■|■))i)n)(.)*)■fail dot
  2341   |  6     (((((((■■)a)■)(■){■})i)n)(.)*)■fail dot
  2342   |  6     (((((((■■)a)■)■)i)n)(.)*)(■■)fail dot
  2343   |  6     (((((((■■)a)■)■)i)n)(.)*)(■|■)fail dot
  2344   |  6     (((((((■■)a)■)■)i)n)(.)*)(■){■}fail dot
  2345   |  6     (((((((■■|■)a)■)■)i)n)(.)*)■fail dot
  2346   |  6     ((((((((■|■)|■)a)■)■)i)n)(.)*)■fail dot
  2347   |  6     ((((((((■){■}|■)a)■)■)i)n)(.)*)■fail dot
  2348   |  6     (((((((■|■)a)(■■))■)i)n)(.)*)■fail dot
  2349   |  6     (((((((■|■)a)(■|■))■)i)n)(.)*)■fail dot
  2350   |  6     (((((((■|■)a)(■){■})■)i)n)(.)*)■fail dot
  2351   |  6     (((((((■|■)a)■)(■■))i)n)(.)*)■fail dot
  2352   |  6     (((((((■|■)a)■)(■|■))i)n)(.)*)■fail dot
  2353   |  6     (((((((■|■)a)■)(■){■})i)n)(.)*)■fail dot
  2354   |  6     (((((((■|■)a)■)■)i)n)(.)*)(■■)fail dot
  2355   |  6     (((((((■|■)a)■)■)i)n)(.)*)(■|■)fail dot
  2356   |  6     (((((((■|■)a)■)■)i)n)(.)*)(■){■}fail dot
  2357   |  6     (((((((■■){■}a)■)■)i)n)(.)*)■fail dot
  2358   |  6     ((((((((■|■)){■}a)■)■)i)n)(.)*)■fail dot
  2359   |  6     ((((((((■){■}){■}a)■)■)i)n)(.)*)■fail dot
  2360   |  6     (((((((■){■}a)(■■))■)i)n)(.)*)■fail dot
  2361   |  6     (((((((■){■}a)(■|■))■)i)n)(.)*)■fail dot
  2362   |  6     (((((((■){■}a)(■){■})■)i)n)(.)*)■fail dot
  2363   |  6     (((((((■){■}a)■)(■■))i)n)(.)*)■fail dot
  2364   |  6     (((((((■){■}a)■)(■|■))i)n)(.)*)■fail dot
  2365   |  6     (((((((■){■}a)■)(■){■})i)n)(.)*)■fail dot
  2366   |  6     (((((((■){■}a)■)■)i)n)(.)*)(■■)fail dot
  2367   |  6     (((((((■){■}a)■)■)i)n)(.)*)(■|■)fail dot
  2368   |  6     (((((((■){■}a)■)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2369   |  6     ((((((■a)(■))■)i)n)(.)*)■fail dot
  2370   |  6     ((((((■a)((■■)■))■)i)n)(.)*)■fail dot
  2371   |  6     ((((((■a)((■|■)■))■)i)n)(.)*)■fail dot
  2372   |  6     ((((((■a)((■){■}■))■)i)n)(.)*)■fail dot
  2373   |  6     ((((((■a)(■■))(■■))i)n)(.)*)■fail dot
  2374   |  6     ((((((■a)(■■))(■|■))i)n)(.)*)■fail dot
  2375   |  6     ((((((■a)(■■))(■){■})i)n)(.)*)■fail dot
  2376   |  6     ((((((■a)(■■))■)i)n)(.)*)(■■)fail dot
  2377   |  6     ((((((■a)(■■))■)i)n)(.)*)(■|■)fail dot
  2378   |  6     ((((((■a)(■■))■)i)n)(.)*)(■){■}fail dot
  2379   |  6     ((((((■a)(■■|■))■)i)n)(.)*)■fail dot
  2380   |  6     ((((((■a)((■|■)|■))■)i)n)(.)*)■fail dot
  2381   |  6     ((((((■a)((■){■}|■))■)i)n)(.)*)■fail dot
  2382   |  6     ((((((■a)(■|■))(■■))i)n)(.)*)■fail dot
  2383   |  6     ((((((■a)(■|■))(■|■))i)n)(.)*)■fail dot
  2384   |  6     ((((((■a)(■|■))(■){■})i)n)(.)*)■fail dot
  2385   |  6     ((((((■a)(■|■))■)i)n)(.)*)(■■)fail dot
  2386   |  6     ((((((■a)(■|■))■)i)n)(.)*)(■|■)fail dot
  2387   |  6     ((((((■a)(■|■))■)i)n)(.)*)(■){■}fail dot
  2388   |  6     ((((((■a)(■■){■})■)i)n)(.)*)■fail dot
  2389   |  6     ((((((■a)((■|■)){■})■)i)n)(.)*)■fail dot
  2390   |  6     ((((((■a)((■){■}){■})■)i)n)(.)*)■fail dot
  2391   |  6     ((((((■a)(■){■})(■■))i)n)(.)*)■fail dot
  2392   |  6     ((((((■a)(■){■})(■|■))i)n)(.)*)■fail dot
  2393   |  6     ((((((■a)(■){■})(■){■})i)n)(.)*)■fail dot
  2394   |  6     ((((((■a)(■){■})■)i)n)(.)*)(■■)fail dot
  2395   |  6     ((((((■a)(■){■})■)i)n)(.)*)(■|■)fail dot
  2396   |  6     ((((((■a)(■){■})■)i)n)(.)*)(■){■}fail dot
  2397   |  6     ((((((■a)■)(■))i)n)(.)*)■fail dot
  2398   |  6     ((((((■a)■)((■■)■))i)n)(.)*)■fail dot
  2399   |  6     ((((((■a)■)((■|■)■))i)n)(.)*)■fail dot
  2400   |  6     ((((((■a)■)((■){■}■))i)n)(.)*)■fail dot
  2401   |  6     ((((((■a)■)(■■))i)n)(.)*)(■■)fail dot
  2402   |  6     ((((((■a)■)(■■))i)n)(.)*)(■|■)fail dot
  2403   |  6     ((((((■a)■)(■■))i)n)(.)*)(■){■}fail dot
  2404   |  6     ((((((■a)■)(■■|■))i)n)(.)*)■fail dot
  2405   |  6     ((((((■a)■)((■|■)|■))i)n)(.)*)■fail dot
  2406   |  6     ((((((■a)■)((■){■}|■))i)n)(.)*)■fail dot
  2407   |  6     ((((((■a)■)(■|■))i)n)(.)*)(■■)fail dot
  2408   |  6     ((((((■a)■)(■|■))i)n)(.)*)(■|■)fail dot
  2409   |  6     ((((((■a)■)(■|■))i)n)(.)*)(■){■}fail dot
  2410   |  6     ((((((■a)■)(■■){■})i)n)(.)*)■fail dot
  2411   |  6     ((((((■a)■)((■|■)){■})i)n)(.)*)■fail dot
  2412   |  6     ((((((■a)■)((■){■}){■})i)n)(.)*)■fail dot
  2413   |  6     ((((((■a)■)(■){■})i)n)(.)*)(■■)fail dot
  2414   |  6     ((((((■a)■)(■){■})i)n)(.)*)(■|■)fail dot
  2415   |  6     ((((((■a)■)(■){■})i)n)(.)*)(■){■}fail dot
  2416   |  6     ((((((■a)■)■)i)n)(.)*)(■)fail dot
  2417   |  6     ((((((■a)■)■)i)n)(.)*)((■■)■)fail dot
  2418   |  6     ((((((■a)■)■)i)n)(.)*)((■|■)■)fail dot
  2419   |  6     ((((((■a)■)■)i)n)(.)*)((■){■}■)fail dot
  2420   |  6     ((((((■a)■)■)i)n)(.)*)(■■|■)fail dot
  2421   |  6     ((((((■a)■)■)i)n)(.)*)((■|■)|■)fail dot
  2422   |  6     ((((((■a)■)■)i)n)(.)*)((■){■}|■)fail dot
  2423   |  6     ((((((■a)■)■)i)n)(.)*)(■■){■}fail dot
  2424   |  6     ((((((■a)■)■)i)n)(.)*)((■|■)){■}fail dot
  2425   |  6     ((((((■a)■)■)i)n)(.)*)((■){■}){■}fail dot
  2426   |  6     ((((((■a)■)m)■)■)(■){■})'fail dotstar or empty
  2427   |  6     ((((((■a)■)m)■)■)(■)*)■ fail dot
  2428   |  6     ((((((■a)■)m)■)■)(.){■})■fail dot
  2429   |  6     ((((((■a)■)m)■)■)■)'    fail dotstar or empty
  2430   |  6     (((((((■■)a)■)m)■)■)(.)*)■fail dot
  2431   |  6     (((((((■|■)a)■)m)■)■)(.)*)■fail dot
  2432   |  6     (((((((■){■}a)■)m)■)■)(.)*)■fail dot
  2433   |  6     ((((((■a)(■■))m)■)■)(.)*)■fail dot
  2434   |  6     ((((((■a)(■|■))m)■)■)(.)*)■fail dot
  2435   |  6     ((((((■a)(■){■})m)■)■)(.)*)■fail dot
  2436   |  6     ((((((■a)■)m)(■■))■)(.)*)■fail dot
  2437   |  6     ((((((■a)■)m)(■|■))■)(.)*)■fail dot
  2438   |  6     ((((((■a)■)m)(■){■})■)(.)*)■fail dot
  2439   |  6     ((((((■a)■)m)■)(■■))(.)*)■fail dot
  2440   |  6     ((((((■a)■)m)■)(■|■))(.)*)■fail dot
  2441   |  6     ((((((■a)■)m)■)(■){■})(.)*)■fail dot
  2442   |  6     ((((((■a)■)m)■)■)(.)*)(■■)fail dot
  2443   |  6     ((((((■a)■)m)■)■)(.)*)(■|■)fail dot
  2444   |  6     ((((((■a)■)m)■)■)(.)*)(■){■}fail dot
  2445   |  6     ((((((■a)■)m)■)n)(■){■})■fail dot
  2446   |  6     (((((((■■)a)■)m)■)n)(■)*)■fail dot
  2447   |  6     (((((((■|■)a)■)m)■)n)(■)*)■fail dot
  2448   |  6     (((((((■){■}a)■)m)■)n)(■)*)■fail dot
  2449   |  6     ((((((■a)(■■))m)■)n)(■)*)■fail dot
  2450   |  6     ((((((■a)(■|■))m)■)n)(■)*)■fail dot
  2451   |  6     ((((((■a)(■){■})m)■)n)(■)*)■fail dot
  2452   |  6     ((((((■a)■)m)(■■))n)(■)*)■fail dot
  2453   |  6     ((((((■a)■)m)(■|■))n)(■)*)■fail dot
  2454   |  6     ((((((■a)■)m)(■){■})n)(■)*)■fail dot
  2455   |  6     ((((((■a)■)m)■)n)(■■)*)■fail dot
  2456   |  6     ((((((■a)■)m)■)n)((■|■))*)■fail dot
  2457   |  6     ((((((■a)■)m)■)n)((■){■})*)■fail dot
  2458   |  6     ((((((■a)■)m)■)n)(■)*)(■■)fail dot
  2459   |  6     ((((((■a)■)m)■)n)(■)*)(■|■)fail dot
  2460   |  6     ((((((■a)■)m)■)n)(■)*)(■){■}fail dot
  2461   |  6     ((((((■a)■)m)■)n)■)■    fail dot
  2462   |  6     (((((((■■)a)■)m)■)n)(.){■})■fail dot
  2463   |  6     (((((((■|■)a)■)m)■)n)(.){■})■fail dot
  2464   |  6     (((((((■){■}a)■)m)■)n)(.){■})■fail dot
  2465   |  6     ((((((■a)(■■))m)■)n)(.){■})■fail dot
  2466   |  6     ((((((■a)(■|■))m)■)n)(.){■})■fail dot
  2467   |  6     ((((((■a)(■){■})m)■)n)(.){■})■fail dot
  2468   |  6     ((((((■a)■)m)(■■))n)(.){■})■fail dot
  2469   |  6     ((((((■a)■)m)(■|■))n)(.){■})■fail dot
  2470   |  6     ((((((■a)■)m)(■){■})n)(.){■})■fail dot
  2471   |  6     ((((((■a)■)m)■)n)(.){■})(■■)fail dot
  2472   |  6     ((((((■a)■)m)■)n)(.){■})(■|■)fail dot
  2473   |  6     ((((((■a)■)m)■)n)(.){■})(■){■}fail dot
  2474   |  6     (((((((■)a)■)m)■)n)(.)*)■fail dot
  2475   |  6     ((((((((■■)■)a)■)m)■)n)(.)*)■fail dot
  2476   |  6     ((((((((■|■)■)a)■)m)■)n)(.)*)■fail dot
  2477   |  6     ((((((((■){■}■)a)■)m)■)n)(.)*)■fail dot
  2478   |  6     (((((((■■)a)(■■))m)■)n)(.)*)■fail dot
  2479   |  6     (((((((■■)a)(■|■))m)■)n)(.)*)■fail dot
  2480   |  6     (((((((■■)a)(■){■})m)■)n)(.)*)■fail dot
  2481   |  6     (((((((■■)a)■)m)(■■))n)(.)*)■fail dot
  2482   |  6     (((((((■■)a)■)m)(■|■))n)(.)*)■fail dot
  2483   |  6     (((((((■■)a)■)m)(■){■})n)(.)*)■fail dot
  2484   |  6     (((((((■■)a)■)m)■)n)(.)*)(■■)fail dot
  2485   |  6     (((((((■■)a)■)m)■)n)(.)*)(■|■)fail dot
  2486   |  6     (((((((■■)a)■)m)■)n)(.)*)(■){■}fail dot
  2487   |  6     (((((((■■|■)a)■)m)■)n)(.)*)■fail dot
  2488   |  6     ((((((((■|■)|■)a)■)m)■)n)(.)*)■fail dot
  2489   |  6     ((((((((■){■}|■)a)■)m)■)n)(.)*)■fail dot
  2490   |  6     (((((((■|■)a)(■■))m)■)n)(.)*)■fail dot
  2491   |  6     (((((((■|■)a)(■|■))m)■)n)(.)*)■fail dot
  2492   |  6     (((((((■|■)a)(■){■})m)■)n)(.)*)■fail dot
  2493   |  6     (((((((■|■)a)■)m)(■■))n)(.)*)■fail dot
  2494   |  6     (((((((■|■)a)■)m)(■|■))n)(.)*)■fail dot
  2495   |  6     (((((((■|■)a)■)m)(■){■})n)(.)*)■fail dot
  2496   |  6     (((((((■|■)a)■)m)■)n)(.)*)(■■)fail dot
  2497   |  6     (((((((■|■)a)■)m)■)n)(.)*)(■|■)fail dot
  2498   |  6     (((((((■|■)a)■)m)■)n)(.)*)(■){■}fail dot
  2499   |  6     (((((((■■){■}a)■)m)■)n)(.)*)■fail dot
  2500   |  6     ((((((((■|■)){■}a)■)m)■)n)(.)*)■fail dot
  2501   |  6     ((((((((■){■}){■}a)■)m)■)n)(.)*)■fail dot
  2502   |  6     (((((((■){■}a)(■■))m)■)n)(.)*)■fail dot
  2503   |  6     (((((((■){■}a)(■|■))m)■)n)(.)*)■fail dot
  2504   |  6     (((((((■){■}a)(■){■})m)■)n)(.)*)■fail dot
  2505   |  6     (((((((■){■}a)■)m)(■■))n)(.)*)■fail dot
  2506   |  6     (((((((■){■}a)■)m)(■|■))n)(.)*)■fail dot
  2507   |  6     (((((((■){■}a)■)m)(■){■})n)(.)*)■fail dot
  2508   |  6     (((((((■){■}a)■)m)■)n)(.)*)(■■)fail dot
  2509   |  6     (((((((■){■}a)■)m)■)n)(.)*)(■|■)fail dot
  2510   |  6     (((((((■){■}a)■)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2511   |  6     ((((((■a)(■))m)■)n)(.)*)■fail dot
  2512   |  6     ((((((■a)((■■)■))m)■)n)(.)*)■fail dot
  2513   |  6     ((((((■a)((■|■)■))m)■)n)(.)*)■fail dot
  2514   |  6     ((((((■a)((■){■}■))m)■)n)(.)*)■fail dot
  2515   |  6     ((((((■a)(■■))m)(■■))n)(.)*)■fail dot
  2516   |  6     ((((((■a)(■■))m)(■|■))n)(.)*)■fail dot
  2517   |  6     ((((((■a)(■■))m)(■){■})n)(.)*)■fail dot
  2518   |  6     ((((((■a)(■■))m)■)n)(.)*)(■■)fail dot
  2519   |  6     ((((((■a)(■■))m)■)n)(.)*)(■|■)fail dot
  2520   |  6     ((((((■a)(■■))m)■)n)(.)*)(■){■}fail dot
  2521   |  6     ((((((■a)(■■|■))m)■)n)(.)*)■fail dot
  2522   |  6     ((((((■a)((■|■)|■))m)■)n)(.)*)■fail dot
  2523   |  6     ((((((■a)((■){■}|■))m)■)n)(.)*)■fail dot
  2524   |  6     ((((((■a)(■|■))m)(■■))n)(.)*)■fail dot
  2525   |  6     ((((((■a)(■|■))m)(■|■))n)(.)*)■fail dot
  2526   |  6     ((((((■a)(■|■))m)(■){■})n)(.)*)■fail dot
  2527   |  6     ((((((■a)(■|■))m)■)n)(.)*)(■■)fail dot
  2528   |  6     ((((((■a)(■|■))m)■)n)(.)*)(■|■)fail dot
  2529   |  6     ((((((■a)(■|■))m)■)n)(.)*)(■){■}fail dot
  2530   |  6     ((((((■a)(■■){■})m)■)n)(.)*)■fail dot
  2531   |  6     ((((((■a)((■|■)){■})m)■)n)(.)*)■fail dot
  2532   |  6     ((((((■a)((■){■}){■})m)■)n)(.)*)■fail dot
  2533   |  6     ((((((■a)(■){■})m)(■■))n)(.)*)■fail dot
  2534   |  6     ((((((■a)(■){■})m)(■|■))n)(.)*)■fail dot
  2535   |  6     ((((((■a)(■){■})m)(■){■})n)(.)*)■fail dot
  2536   |  6     ((((((■a)(■){■})m)■)n)(.)*)(■■)fail dot
  2537   |  6     ((((((■a)(■){■})m)■)n)(.)*)(■|■)fail dot
  2538   |  6     ((((((■a)(■){■})m)■)n)(.)*)(■){■}fail dot
  2539   |  6     ((((((■a)■)m)(■))n)(.)*)■fail dot
  2540   |  6     ((((((■a)■)m)((■■)■))n)(.)*)■fail dot
  2541   |  6     ((((((■a)■)m)((■|■)■))n)(.)*)■fail dot
  2542   |  6     ((((((■a)■)m)((■){■}■))n)(.)*)■fail dot
  2543   |  6     ((((((■a)■)m)(■■))n)(.)*)(■■)fail dot
  2544   |  6     ((((((■a)■)m)(■■))n)(.)*)(■|■)fail dot
  2545   |  6     ((((((■a)■)m)(■■))n)(.)*)(■){■}fail dot
  2546   |  6     ((((((■a)■)m)(■■|■))n)(.)*)■fail dot
  2547   |  6     ((((((■a)■)m)((■|■)|■))n)(.)*)■fail dot
  2548   |  6     ((((((■a)■)m)((■){■}|■))n)(.)*)■fail dot
  2549   |  6     ((((((■a)■)m)(■|■))n)(.)*)(■■)fail dot
  2550   |  6     ((((((■a)■)m)(■|■))n)(.)*)(■|■)fail dot
  2551   |  6     ((((((■a)■)m)(■|■))n)(.)*)(■){■}fail dot
  2552   |  6     ((((((■a)■)m)(■■){■})n)(.)*)■fail dot
  2553   |  6     ((((((■a)■)m)((■|■)){■})n)(.)*)■fail dot
  2554   |  6     ((((((■a)■)m)((■){■}){■})n)(.)*)■fail dot
  2555   |  6     ((((((■a)■)m)(■){■})n)(.)*)(■■)fail dot
  2556   |  6     ((((((■a)■)m)(■){■})n)(.)*)(■|■)fail dot
  2557   |  6     ((((((■a)■)m)(■){■})n)(.)*)(■){■}fail dot
  2558   |  6     ((((((■a)■)m)■)n)(.)*)(■)fail dot
  2559   |  6     ((((((■a)■)m)■)n)(.)*)((■■)■)fail dot
  2560   |  6     ((((((■a)■)m)■)n)(.)*)((■|■)■)fail dot
  2561   |  6     ((((((■a)■)m)■)n)(.)*)((■){■}■)fail dot
  2562   |  6     ((((((■a)■)m)■)n)(.)*)(■■|■)fail dot
  2563   |  6     ((((((■a)■)m)■)n)(.)*)((■|■)|■)fail dot
  2564   |  6     ((((((■a)■)m)■)n)(.)*)((■){■}|■)fail dot
  2565   |  6     ((((((■a)■)m)■)n)(.)*)(■■){■}fail dot
  2566   |  6     ((((((■a)■)m)■)n)(.)*)((■|■)){■}fail dot
  2567   |  6     ((((((■a)■)m)■)n)(.)*)((■){■}){■}fail dot
  2568   |  6     ((((((■a)■)m)i)■)(■){■})■fail dot
  2569   |  6     (((((((■■)a)■)m)i)■)(■)*)■fail dot
  2570   |  6     (((((((■|■)a)■)m)i)■)(■)*)■fail dot
  2571   |  6     (((((((■){■}a)■)m)i)■)(■)*)■fail dot
  2572   |  6     ((((((■a)(■■))m)i)■)(■)*)■fail dot
  2573   |  6     ((((((■a)(■|■))m)i)■)(■)*)■fail dot
  2574   |  6     ((((((■a)(■){■})m)i)■)(■)*)■fail dot
  2575   |  6     ((((((■a)■)m)i)(■■))(■)*)■fail dot
  2576   |  6     ((((((■a)■)m)i)(■|■))(■)*)■fail dot
  2577   |  6     ((((((■a)■)m)i)(■){■})(■)*)■fail dot
  2578   |  6     ((((((■a)■)m)i)■)(■■)*)■fail dot
  2579   |  6     ((((((■a)■)m)i)■)((■|■))*)■fail dot
  2580   |  6     ((((((■a)■)m)i)■)((■){■})*)■fail dot
  2581   |  6     ((((((■a)■)m)i)■)(■)*)(■■)fail dot
  2582   |  6     ((((((■a)■)m)i)■)(■)*)(■|■)fail dot
  2583   |  6     ((((((■a)■)m)i)■)(■)*)(■){■}fail dot
  2584   |  6     ((((((■a)■)m)i)■)■)■    fail dot
  2585   |  6     (((((((■■)a)■)m)i)■)(.){■})■fail dot
  2586   |  6     (((((((■|■)a)■)m)i)■)(.){■})■fail dot
  2587   |  6     (((((((■){■}a)■)m)i)■)(.){■})■fail dot
  2588   |  6     ((((((■a)(■■))m)i)■)(.){■})■fail dot
  2589   |  6     ((((((■a)(■|■))m)i)■)(.){■})■fail dot
  2590   |  6     ((((((■a)(■){■})m)i)■)(.){■})■fail dot
  2591   |  6     ((((((■a)■)m)i)(■■))(.){■})■fail dot
  2592   |  6     ((((((■a)■)m)i)(■|■))(.){■})■fail dot
  2593   |  6     ((((((■a)■)m)i)(■){■})(.){■})■fail dot
  2594   |  6     ((((((■a)■)m)i)■)(.){■})(■■)fail dot
  2595   |  6     ((((((■a)■)m)i)■)(.){■})(■|■)fail dot
  2596   |  6     ((((((■a)■)m)i)■)(.){■})(■){■}fail dot
  2597   |  6     (((((((■)a)■)m)i)■)(.)*)■fail dot
  2598   |  6     ((((((((■■)■)a)■)m)i)■)(.)*)■fail dot
  2599   |  6     ((((((((■|■)■)a)■)m)i)■)(.)*)■fail dot
  2600   |  6     ((((((((■){■}■)a)■)m)i)■)(.)*)■fail dot
  2601   |  6     (((((((■■)a)(■■))m)i)■)(.)*)■fail dot
  2602   |  6     (((((((■■)a)(■|■))m)i)■)(.)*)■fail dot
  2603   |  6     (((((((■■)a)(■){■})m)i)■)(.)*)■fail dot
  2604   |  6     (((((((■■)a)■)m)i)(■■))(.)*)■fail dot
  2605   |  6     (((((((■■)a)■)m)i)(■|■))(.)*)■fail dot
  2606   |  6     (((((((■■)a)■)m)i)(■){■})(.)*)■fail dot
  2607   |  6     (((((((■■)a)■)m)i)■)(.)*)(■■)fail dot
  2608   |  6     (((((((■■)a)■)m)i)■)(.)*)(■|■)fail dot
  2609   |  6     (((((((■■)a)■)m)i)■)(.)*)(■){■}fail dot
  2610   |  6     (((((((■■|■)a)■)m)i)■)(.)*)■fail dot
  2611   |  6     ((((((((■|■)|■)a)■)m)i)■)(.)*)■fail dot
  2612   |  6     ((((((((■){■}|■)a)■)m)i)■)(.)*)■fail dot
  2613   |  6     (((((((■|■)a)(■■))m)i)■)(.)*)■fail dot
  2614   |  6     (((((((■|■)a)(■|■))m)i)■)(.)*)■fail dot
  2615   |  6     (((((((■|■)a)(■){■})m)i)■)(.)*)■fail dot
  2616   |  6     (((((((■|■)a)■)m)i)(■■))(.)*)■fail dot
  2617   |  6     (((((((■|■)a)■)m)i)(■|■))(.)*)■fail dot
  2618   |  6     (((((((■|■)a)■)m)i)(■){■})(.)*)■fail dot
  2619   |  6     (((((((■|■)a)■)m)i)■)(.)*)(■■)fail dot
  2620   |  6     (((((((■|■)a)■)m)i)■)(.)*)(■|■)fail dot
  2621   |  6     (((((((■|■)a)■)m)i)■)(.)*)(■){■}fail dot
  2622   |  6     (((((((■■){■}a)■)m)i)■)(.)*)■fail dot
  2623   |  6     ((((((((■|■)){■}a)■)m)i)■)(.)*)■fail dot
  2624   |  6     ((((((((■){■}){■}a)■)m)i)■)(.)*)■fail dot
  2625   |  6     (((((((■){■}a)(■■))m)i)■)(.)*)■fail dot
  2626   |  6     (((((((■){■}a)(■|■))m)i)■)(.)*)■fail dot
  2627   |  6     (((((((■){■}a)(■){■})m)i)■)(.)*)■fail dot
  2628   |  6     (((((((■){■}a)■)m)i)(■■))(.)*)■fail dot
  2629   |  6     (((((((■){■}a)■)m)i)(■|■))(.)*)■fail dot
  2630   |  6     (((((((■){■}a)■)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  2631   |  6     (((((((■){■}a)■)m)i)■)(.)*)(■■)fail dot
  2632   |  6     (((((((■){■}a)■)m)i)■)(.)*)(■|■)fail dot
  2633   |  6     (((((((■){■}a)■)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  2634   |  6     ((((((■a)(■))m)i)■)(.)*)■fail dot
  2635   |  6     ((((((■a)((■■)■))m)i)■)(.)*)■fail dot
  2636   |  6     ((((((■a)((■|■)■))m)i)■)(.)*)■fail dot
  2637   |  6     ((((((■a)((■){■}■))m)i)■)(.)*)■fail dot
  2638   |  6     ((((((■a)(■■))m)i)(■■))(.)*)■fail dot
  2639   |  6     ((((((■a)(■■))m)i)(■|■))(.)*)■fail dot
  2640   |  6     ((((((■a)(■■))m)i)(■){■})(.)*)■fail dot
  2641   |  6     ((((((■a)(■■))m)i)■)(.)*)(■■)fail dot
  2642   |  6     ((((((■a)(■■))m)i)■)(.)*)(■|■)fail dot
  2643   |  6     ((((((■a)(■■))m)i)■)(.)*)(■){■}fail dot
  2644   |  6     ((((((■a)(■■|■))m)i)■)(.)*)■fail dot
  2645   |  6     ((((((■a)((■|■)|■))m)i)■)(.)*)■fail dot
  2646   |  6     ((((((■a)((■){■}|■))m)i)■)(.)*)■fail dot
  2647   |  6     ((((((■a)(■|■))m)i)(■■))(.)*)■fail dot
  2648   |  6     ((((((■a)(■|■))m)i)(■|■))(.)*)■fail dot
  2649   |  6     ((((((■a)(■|■))m)i)(■){■})(.)*)■fail dot
  2650   |  6     ((((((■a)(■|■))m)i)■)(.)*)(■■)fail dot
  2651   |  6     ((((((■a)(■|■))m)i)■)(.)*)(■|■)fail dot
  2652   |  6     ((((((■a)(■|■))m)i)■)(.)*)(■){■}fail dot
  2653   |  6     ((((((■a)(■■){■})m)i)■)(.)*)■fail dot
  2654   |  6     ((((((■a)((■|■)){■})m)i)■)(.)*)■fail dot
  2655   |  6     ((((((■a)((■){■}){■})m)i)■)(.)*)■fail dot
  2656   |  6     ((((((■a)(■){■})m)i)(■■))(.)*)■fail dot
  2657   |  6     ((((((■a)(■){■})m)i)(■|■))(.)*)■fail dot
  2658   |  6     ((((((■a)(■){■})m)i)(■){■})(.)*)■fail dot
  2659   |  6     ((((((■a)(■){■})m)i)■)(.)*)(■■)fail dot
  2660   |  6     ((((((■a)(■){■})m)i)■)(.)*)(■|■)fail dot
  2661   |  6     ((((((■a)(■){■})m)i)■)(.)*)(■){■}fail dot
  2662   |  6     ((((((■a)■)m)i)(■))(.)*)■fail dot
  2663   |  6     ((((((■a)■)m)i)((■■)■))(.)*)■fail dot
  2664   |  6     ((((((■a)■)m)i)((■|■)■))(.)*)■fail dot
  2665   |  6     ((((((■a)■)m)i)((■){■}■))(.)*)■fail dot
  2666   |  6     ((((((■a)■)m)i)(■■))(.)*)(■■)fail dot
  2667   |  6     ((((((■a)■)m)i)(■■))(.)*)(■|■)fail dot
  2668   |  6     ((((((■a)■)m)i)(■■))(.)*)(■){■}fail dot
  2669   |  6     ((((((■a)■)m)i)(■■|■))(.)*)■fail dot
  2670   |  6     ((((((■a)■)m)i)((■|■)|■))(.)*)■fail dot
  2671   |  6     ((((((■a)■)m)i)((■){■}|■))(.)*)■fail dot
  2672   |  6     ((((((■a)■)m)i)(■|■))(.)*)(■■)fail dot
  2673   |  6     ((((((■a)■)m)i)(■|■))(.)*)(■|■)fail dot
  2674   |  6     ((((((■a)■)m)i)(■|■))(.)*)(■){■}fail dot
  2675   |  6     ((((((■a)■)m)i)(■■){■})(.)*)■fail dot
  2676   |  6     ((((((■a)■)m)i)((■|■)){■})(.)*)■fail dot
  2677   |  6     ((((((■a)■)m)i)((■){■}){■})(.)*)■fail dot
  2678   |  6     ((((((■a)■)m)i)(■){■})(.)*)(■■)fail dot
  2679   |  6     ((((((■a)■)m)i)(■){■})(.)*)(■|■)fail dot
  2680   |  6     ((((((■a)■)m)i)(■){■})(.)*)(■){■}fail dot
  2681   |  6     ((((((■a)■)m)i)■)(.)*)(■)fail dot
  2682   |  6     ((((((■a)■)m)i)■)(.)*)((■■)■)fail dot
  2683   |  6     ((((((■a)■)m)i)■)(.)*)((■|■)■)fail dot
  2684   |  6     ((((((■a)■)m)i)■)(.)*)((■){■}■)fail dot
  2685   |  6     ((((((■a)■)m)i)■)(.)*)(■■|■)fail dot
  2686   |  6     ((((((■a)■)m)i)■)(.)*)((■|■)|■)fail dot
  2687   |  6     ((((((■a)■)m)i)■)(.)*)((■){■}|■)fail dot
  2688   |  6     ((((((■a)■)m)i)■)(.)*)(■■){■}fail dot
  2689   |  6     ((((((■a)■)m)i)■)(.)*)((■|■)){■}fail dot
  2690   |  6     ((((((■a)■)m)i)■)(.)*)((■){■}){■}fail dot
  2691   |  6     (((((((■■)a)■)m)i)n)(■){■})■fail dot
  2692   |  6     (((((((■|■)a)■)m)i)n)(■){■})■fail dot
  2693   |  6     (((((((■){■}a)■)m)i)n)(■){■})■fail dot
  2694   |  6     ((((((■a)(■■))m)i)n)(■){■})■fail dot
  2695   |  6     ((((((■a)(■|■))m)i)n)(■){■})■fail dot
  2696   |  6     ((((((■a)(■){■})m)i)n)(■){■})■fail dot
  2697   |  6     ((((((■a)■)m)i)n)(■■){■})■fail dot
  2698   |  6     ((((((■a)■)m)i)n)((■|■)){■})■fail dot
  2699   |  6     ((((((■a)■)m)i)n)((■){■}){■})■fail dot
  2700   |  6     ((((((■a)■)m)i)n)(■){■})(■■)fail dot
  2701   |  6     ((((((■a)■)m)i)n)(■){■})(■|■)fail dot
  2702   |  6     ((((((■a)■)m)i)n)(■){■})(■){■}fail dot
  2703   |  6     (((((((■)a)■)m)i)n)(■)*)■fail dot
  2704   |  6     ((((((((■■)■)a)■)m)i)n)(■)*)■fail dot
  2705   |  6     ((((((((■|■)■)a)■)m)i)n)(■)*)■fail dot
  2706   |  6     ((((((((■){■}■)a)■)m)i)n)(■)*)■fail dot
  2707   |  6     (((((((■■)a)(■■))m)i)n)(■)*)■fail dot
  2708   |  6     (((((((■■)a)(■|■))m)i)n)(■)*)■fail dot
  2709   |  6     (((((((■■)a)(■){■})m)i)n)(■)*)■fail dot
  2710   |  6     (((((((■■)a)■)m)i)n)(■■)*)■fail dot
  2711   |  6     (((((((■■)a)■)m)i)n)((■|■))*)■fail dot
  2712   |  6     (((((((■■)a)■)m)i)n)((■){■})*)■fail dot
  2713   |  6     (((((((■■)a)■)m)i)n)(■)*)(■■)fail dot
  2714   |  6     (((((((■■)a)■)m)i)n)(■)*)(■|■)fail dot
  2715   |  6     (((((((■■)a)■)m)i)n)(■)*)(■){■}fail dot
  2716   |  6     (((((((■■|■)a)■)m)i)n)(■)*)■fail dot
  2717   |  6     ((((((((■|■)|■)a)■)m)i)n)(■)*)■fail dot
  2718   |  6     ((((((((■){■}|■)a)■)m)i)n)(■)*)■fail dot
  2719   |  6     (((((((■|■)a)(■■))m)i)n)(■)*)■fail dot
  2720   |  6     (((((((■|■)a)(■|■))m)i)n)(■)*)■fail dot
  2721   |  6     (((((((■|■)a)(■){■})m)i)n)(■)*)■fail dot
  2722   |  6     (((((((■|■)a)■)m)i)n)(■■)*)■fail dot
  2723   |  6     (((((((■|■)a)■)m)i)n)((■|■))*)■fail dot
  2724   |  6     (((((((■|■)a)■)m)i)n)((■){■})*)■fail dot
  2725   |  6     (((((((■|■)a)■)m)i)n)(■)*)(■■)fail dot
  2726   |  6     (((((((■|■)a)■)m)i)n)(■)*)(■|■)fail dot
  2727   |  6     (((((((■|■)a)■)m)i)n)(■)*)(■){■}fail dot
  2728   |  6     (((((((■■){■}a)■)m)i)n)(■)*)■fail dot
  2729   |  6     ((((((((■|■)){■}a)■)m)i)n)(■)*)■fail dot
  2730   |  6     ((((((((■){■}){■}a)■)m)i)n)(■)*)■fail dot
  2731   |  6     (((((((■){■}a)(■■))m)i)n)(■)*)■fail dot
  2732   |  6     (((((((■){■}a)(■|■))m)i)n)(■)*)■fail dot
  2733   |  6     (((((((■){■}a)(■){■})m)i)n)(■)*)■fail dot
  2734   |  6     (((((((■){■}a)■)m)i)n)(■■)*)■fail dot
  2735   |  6     (((((((■){■}a)■)m)i)n)((■|■))*)■fail dot
  2736   |  6     (((((((■){■}a)■)m)i)n)((■){■})*)■fail dot
  2737   |  6     (((((((■){■}a)■)m)i)n)(■)*)(■■)fail dot
  2738   |  6     (((((((■){■}a)■)m)i)n)(■)*)(■|■)fail dot
  2739   |  6     (((((((■){■}a)■)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  2740   |  6     ((((((■a)(■))m)i)n)(■)*)■fail dot
  2741   |  6     ((((((■a)((■■)■))m)i)n)(■)*)■fail dot
  2742   |  6     ((((((■a)((■|■)■))m)i)n)(■)*)■fail dot
  2743   |  6     ((((((■a)((■){■}■))m)i)n)(■)*)■fail dot
  2744   |  6     ((((((■a)(■■))m)i)n)(■■)*)■fail dot
  2745   |  6     ((((((■a)(■■))m)i)n)((■|■))*)■fail dot
  2746   |  6     ((((((■a)(■■))m)i)n)((■){■})*)■fail dot
  2747   |  6     ((((((■a)(■■))m)i)n)(■)*)(■■)fail dot
  2748   |  6     ((((((■a)(■■))m)i)n)(■)*)(■|■)fail dot
  2749   |  6     ((((((■a)(■■))m)i)n)(■)*)(■){■}fail dot
  2750   |  6     ((((((■a)(■■|■))m)i)n)(■)*)■fail dot
  2751   |  6     ((((((■a)((■|■)|■))m)i)n)(■)*)■fail dot
  2752   |  6     ((((((■a)((■){■}|■))m)i)n)(■)*)■fail dot
  2753   |  6     ((((((■a)(■|■))m)i)n)(■■)*)■fail dot
  2754   |  6     ((((((■a)(■|■))m)i)n)((■|■))*)■fail dot
  2755   |  6     ((((((■a)(■|■))m)i)n)((■){■})*)■fail dot
  2756   |  6     ((((((■a)(■|■))m)i)n)(■)*)(■■)fail dot
  2757   |  6     ((((((■a)(■|■))m)i)n)(■)*)(■|■)fail dot
  2758   |  6     ((((((■a)(■|■))m)i)n)(■)*)(■){■}fail dot
  2759   |  6     ((((((■a)(■■){■})m)i)n)(■)*)■fail dot
  2760   |  6     ((((((■a)((■|■)){■})m)i)n)(■)*)■fail dot
  2761   |  6     ((((((■a)((■){■}){■})m)i)n)(■)*)■fail dot
  2762   |  6     ((((((■a)(■){■})m)i)n)(■■)*)■fail dot
  2763   |  6     ((((((■a)(■){■})m)i)n)((■|■))*)■fail dot
  2764   |  6     ((((((■a)(■){■})m)i)n)((■){■})*)■fail dot
  2765   |  6     ((((((■a)(■){■})m)i)n)(■)*)(■■)fail dot
  2766   |  6     ((((((■a)(■){■})m)i)n)(■)*)(■|■)fail dot
  2767   |  6     ((((((■a)(■){■})m)i)n)(■)*)(■){■}fail dot
  2768   |  6     ((((((■a)■)m)i)n)((■■)■)*)■fail dot
  2769   |  6     ((((((■a)■)m)i)n)((■|■)■)*)■fail dot
  2770   |  6     ((((((■a)■)m)i)n)((■){■}■)*)■fail dot
  2771   |  6     ((((((■a)■)m)i)n)(■(■■))*)■fail dot
  2772   |  6     ((((((■a)■)m)i)n)(■(■|■))*)■fail dot
  2773   |  6     ((((((■a)■)m)i)n)(■(■){■})*)■fail dot
  2774   |  6     ((((((■a)■)m)i)n)(■■)*)(■■)fail dot
  2775   |  6     ((((((■a)■)m)i)n)(■■)*)(■|■)fail dot
  2776   |  6     ((((((■a)■)m)i)n)(■■)*)(■){■}fail dot
  2777   |  6     ((((((■a)■)m)i)n)((■■|■))*)■fail dot
  2778   |  6     ((((((■a)■)m)i)n)(((■|■)|■))*)■fail dot
  2779   |  6     ((((((■a)■)m)i)n)(((■){■}|■))*)■fail dot
  2780   |  6     ((((((■a)■)m)i)n)((■|■■))*)■fail dot
  2781   |  6     ((((((■a)■)m)i)n)((■|(■|■)))*)■fail dot
  2782   |  6     ((((((■a)■)m)i)n)((■|(■){■}))*)■fail dot
  2783   |  6     ((((((■a)■)m)i)n)((■|■))*)(■■)fail dot
  2784   |  6     ((((((■a)■)m)i)n)((■|■))*)(■|■)fail dot
  2785   |  6     ((((((■a)■)m)i)n)((■|■))*)(■){■}fail dot
  2786   |  6     ((((((■a)■)m)i)n)((■■){■})*)■fail dot
  2787   |  6     ((((((■a)■)m)i)n)(((■|■)){■})*)■fail dot
  2788   |  6     ((((((■a)■)m)i)n)(((■){■}){■})*)■fail dot
  2789   |  6     ((((((■a)■)m)i)n)((■){■})*)(■■)fail dot
  2790   |  6     ((((((■a)■)m)i)n)((■){■})*)(■|■)fail dot
  2791   |  6     ((((((■a)■)m)i)n)((■){■})*)(■){■}fail dot
  2792   |  6     ((((((■a)■)m)i)n)(■)*)(■)fail dot
  2793   |  6     ((((((■a)■)m)i)n)(■)*)((■■)■)fail dot
  2794   |  6     ((((((■a)■)m)i)n)(■)*)((■|■)■)fail dot
  2795   |  6     ((((((■a)■)m)i)n)(■)*)((■){■}■)fail dot
  2796   |  6     ((((((■a)■)m)i)n)(■)*)(■■|■)fail dot
  2797   |  6     ((((((■a)■)m)i)n)(■)*)((■|■)|■)fail dot
  2798   |  6     ((((((■a)■)m)i)n)(■)*)((■){■}|■)fail dot
  2799   |  6     ((((((■a)■)m)i)n)(■)*)(■■){■}fail dot
  2800   |  6     ((((((■a)■)m)i)n)(■)*)((■|■)){■}fail dot
  2801   |  6     ((((((■a)■)m)i)n)(■)*)((■){■}){■}fail dot
  2802   |  6     (((((((■■)a)■)m)i)n)■)■ fail dot
  2803   |  6     (((((((■|■)a)■)m)i)n)■)■fail dot
  2804   |  6     (((((((■){■}a)■)m)i)n)■)■fail dot
  2805   |  6     ((((((■a)(■■))m)i)n)■)■ fail dot
  2806   |  6     ((((((■a)(■|■))m)i)n)■)■fail dot
  2807   |  6     ((((((■a)(■){■})m)i)n)■)■fail dot
  2808   |  6     ((((((■a)■)m)i)n)(■■))■ fail dot
  2809   |  6     ((((((■a)■)m)i)n)(■|■))■fail dot
  2810   |  6     ((((((■a)■)m)i)n)■)(■■) fail dot
  2811   |  6     ((((((■a)■)m)i)n)■)(■|■)fail dot
  2812   |  6     ((((((■a)■)m)i)n)■)(■){■}fail dot
  2813   |  6     (((((((■)a)■)m)i)n)(.){■})■fail dot
  2814   |  6     ((((((((■■)■)a)■)m)i)n)(.){■})■fail dot
  2815   |  6     ((((((((■|■)■)a)■)m)i)n)(.){■})■fail dot
  2816   |  6     ((((((((■){■}■)a)■)m)i)n)(.){■})■fail dot
  2817   |  6     (((((((■■)a)(■■))m)i)n)(.){■})■fail dot
  2818   |  6     (((((((■■)a)(■|■))m)i)n)(.){■})■fail dot
  2819   |  6     (((((((■■)a)(■){■})m)i)n)(.){■})■fail dot
  2820   |  6     (((((((■■)a)■)m)i)n)(.){■})(■■)fail dot
  2821   |  6     (((((((■■)a)■)m)i)n)(.){■})(■|■)fail dot
  2822   |  6     (((((((■■)a)■)m)i)n)(.){■})(■){■}fail dot
  2823   |  6     (((((((■■|■)a)■)m)i)n)(.){■})■fail dot
  2824   |  6     ((((((((■|■)|■)a)■)m)i)n)(.){■})■fail dot
  2825   |  6     ((((((((■){■}|■)a)■)m)i)n)(.){■})■fail dot
  2826   |  6     (((((((■|■)a)(■■))m)i)n)(.){■})■fail dot
  2827   |  6     (((((((■|■)a)(■|■))m)i)n)(.){■})■fail dot
  2828   |  6     (((((((■|■)a)(■){■})m)i)n)(.){■})■fail dot
  2829   |  6     (((((((■|■)a)■)m)i)n)(.){■})(■■)fail dot
  2830   |  6     (((((((■|■)a)■)m)i)n)(.){■})(■|■)fail dot
  2831   |  6     (((((((■|■)a)■)m)i)n)(.){■})(■){■}fail dot
  2832   |  6     (((((((■■){■}a)■)m)i)n)(.){■})■fail dot
  2833   |  6     ((((((((■|■)){■}a)■)m)i)n)(.){■})■fail dot
  2834   |  6     ((((((((■){■}){■}a)■)m)i)n)(.){■})■fail dot
  2835   |  6     (((((((■){■}a)(■■))m)i)n)(.){■})■fail dot
  2836   |  6     (((((((■){■}a)(■|■))m)i)n)(.){■})■fail dot
  2837   |  6     (((((((■){■}a)(■){■})m)i)n)(.){■})■fail dot
  2838   |  6     (((((((■){■}a)■)m)i)n)(.){■})(■■)fail dot
  2839   |  6     (((((((■){■}a)■)m)i)n)(.){■})(■|■)fail dot
  2840   |  6     (((((((■){■}a)■)m)i)n)(.){■})(■){■}  unsatisfiable SAT formula       
  2841   |  6     ((((((■a)(■))m)i)n)(.){■})■fail dot
  2842   |  6     ((((((■a)((■■)■))m)i)n)(.){■})■fail dot
  2843   |  6     ((((((■a)((■|■)■))m)i)n)(.){■})■fail dot
  2844   |  6     ((((((■a)((■){■}■))m)i)n)(.){■})■fail dot
  2845   |  6     ((((((■a)(■■))m)i)n)(.){■})(■■)fail dot
  2846   |  6     ((((((■a)(■■))m)i)n)(.){■})(■|■)fail dot
  2847   |  6     ((((((■a)(■■))m)i)n)(.){■})(■){■}fail dot
  2848   |  6     ((((((■a)(■■|■))m)i)n)(.){■})■fail dot
  2849   |  6     ((((((■a)((■|■)|■))m)i)n)(.){■})■fail dot
  2850   |  6     ((((((■a)((■){■}|■))m)i)n)(.){■})■fail dot
  2851   |  6     ((((((■a)(■|■))m)i)n)(.){■})(■■)fail dot
  2852   |  6     ((((((■a)(■|■))m)i)n)(.){■})(■|■)fail dot
  2853   |  6     ((((((■a)(■|■))m)i)n)(.){■})(■){■}fail dot
  2854   |  6     ((((((■a)(■■){■})m)i)n)(.){■})■fail dot
  2855   |  6     ((((((■a)((■|■)){■})m)i)n)(.){■})■fail dot
  2856   |  6     ((((((■a)((■){■}){■})m)i)n)(.){■})■fail dot
  2857   |  6     ((((((■a)(■){■})m)i)n)(.){■})(■■)fail dot
  2858   |  6     ((((((■a)(■){■})m)i)n)(.){■})(■|■)fail dot
  2859   |  6     ((((((■a)(■){■})m)i)n)(.){■})(■){■}fail dot
  2860   |  6     ((((((■a)■)m)i)n)(.){■})(■)fail dot
  2861   |  6     ((((((■a)■)m)i)n)(.){■})((■■)■)fail dot
  2862   |  6     ((((((■a)■)m)i)n)(.){■})((■|■)■)fail dot
  2863   |  6     ((((((■a)■)m)i)n)(.){■})((■){■}■)fail dot
  2864   |  6     ((((((■a)■)m)i)n)(.){■})(■■|■)fail dot
  2865   |  6     ((((((■a)■)m)i)n)(.){■})((■|■)|■)fail dot
  2866   |  6     ((((((■a)■)m)i)n)(.){■})((■){■}|■)fail dot
  2867   |  6     ((((((■a)■)m)i)n)(.){■})(■■){■}fail dot
  2868   |  6     ((((((■a)■)m)i)n)(.){■})((■|■)){■}fail dot
  2869   |  6     ((((((■a)■)m)i)n)(.){■})((■){■}){■}fail dot
  2870   |  6     ((((((((■■))a)■)m)i)n)(.)*)■fail dot
  2871   |  6     ((((((((■|■))a)■)m)i)n)(.)*)■fail dot
  2872   |  6     ((((((((■){■})a)■)m)i)n)(.)*)■fail dot
  2873   |  6     (((((((■)a)(■■))m)i)n)(.)*)■fail dot
  2874   |  6     (((((((■)a)(■|■))m)i)n)(.)*)■fail dot
  2875   |  6     (((((((■)a)(■){■})m)i)n)(.)*)■fail dot
  2876   |  6     (((((((■)a)■)m)i)n)(.)*)(■■)fail dot
  2877   |  6     (((((((■)a)■)m)i)n)(.)*)(■|■)fail dot
  2878   |  6     (((((((■)a)■)m)i)n)(.)*)(■){■}fail dot
  2879   |  6     ((((((((■)■)a)■)m)i)n)(.)*)■fail dot
  2880   |  6     (((((((((■■)■)■)a)■)m)i)n)(.)*)■fail dot
  2881   |  6     (((((((((■|■)■)■)a)■)m)i)n)(.)*)■fail dot
  2882   |  6     (((((((((■){■}■)■)a)■)m)i)n)(.)*)■fail dot
  2883   |  6     ((((((((■■)(■■))a)■)m)i)n)(.)*)■fail dot
  2884   |  6     ((((((((■■)(■|■))a)■)m)i)n)(.)*)■fail dot
  2885   |  6     ((((((((■■)(■){■})a)■)m)i)n)(.)*)■fail dot
  2886   |  6     ((((((((■■)■)a)(■■))m)i)n)(.)*)■fail dot
  2887   |  6     ((((((((■■)■)a)(■|■))m)i)n)(.)*)■fail dot
  2888   |  6     ((((((((■■)■)a)(■){■})m)i)n)(.)*)■fail dot
  2889   |  6     ((((((((■■)■)a)■)m)i)n)(.)*)(■■)fail dot
  2890   |  6     ((((((((■■)■)a)■)m)i)n)(.)*)(■|■)fail dot
  2891   |  6     ((((((((■■)■)a)■)m)i)n)(.)*)(■){■}fail dot
  2892   |  6     ((((((((■■|■)■)a)■)m)i)n)(.)*)■fail dot
  2893   |  6     (((((((((■|■)|■)■)a)■)m)i)n)(.)*)■fail dot
  2894   |  6     (((((((((■){■}|■)■)a)■)m)i)n)(.)*)■fail dot
  2895   |  6     ((((((((■|■)(■■))a)■)m)i)n)(.)*)■fail dot
  2896   |  6     ((((((((■|■)(■|■))a)■)m)i)n)(.)*)■fail dot
  2897   |  6     ((((((((■|■)(■){■})a)■)m)i)n)(.)*)■fail dot
  2898   |  6     ((((((((■|■)■)a)(■■))m)i)n)(.)*)■fail dot
  2899   |  6     ((((((((■|■)■)a)(■|■))m)i)n)(.)*)■fail dot
  2900   |  6     ((((((((■|■)■)a)(■){■})m)i)n)(.)*)■fail dot
  2901   |  6     ((((((((■|■)■)a)■)m)i)n)(.)*)(■■)fail dot
  2902   |  6     ((((((((■|■)■)a)■)m)i)n)(.)*)(■|■)fail dot
  2903   |  6     ((((((((■|■)■)a)■)m)i)n)(.)*)(■){■}fail dot
  2904   |  6     ((((((((■■){■}■)a)■)m)i)n)(.)*)■fail dot
  2905   |  6     (((((((((■|■)){■}■)a)■)m)i)n)(.)*)■fail dot
  2906   |  6     (((((((((■){■}){■}■)a)■)m)i)n)(.)*)■fail dot
  2907   |  6     ((((((((■){■}(■■))a)■)m)i)n)(.)*)■fail dot
  2908   |  6     ((((((((■){■}(■|■))a)■)m)i)n)(.)*)■fail dot
  2909   |  6     ((((((((■){■}(■){■})a)■)m)i)n)(.)*)■fail dot
  2910   |  6     ((((((((■){■}■)a)(■■))m)i)n)(.)*)■fail dot
  2911   |  6     ((((((((■){■}■)a)(■|■))m)i)n)(.)*)■fail dot
  2912   |  6     ((((((((■){■}■)a)(■){■})m)i)n)(.)*)■fail dot
  2913   |  6     ((((((((■){■}■)a)■)m)i)n)(.)*)(■■)fail dot
  2914   |  6     ((((((((■){■}■)a)■)m)i)n)(.)*)(■|■)fail dot
  2915   |  6     ((((((((■){■}■)a)■)m)i)n)(.)*)(■){■}fail dot
  2916   |  6     (((((((■■)a)(■))m)i)n)(.)*)■fail dot
  2917   |  6     (((((((■■)a)((■■)■))m)i)n)(.)*)■fail dot
  2918   |  6     (((((((■■)a)((■|■)■))m)i)n)(.)*)■fail dot
  2919   |  6     (((((((■■)a)((■){■}■))m)i)n)(.)*)■fail dot
  2920   |  6     (((((((■■)a)(■■))m)i)n)(.)*)(■■)fail dot
  2921   |  6     (((((((■■)a)(■■))m)i)n)(.)*)(■|■)fail dot
  2922   |  6     (((((((■■)a)(■■))m)i)n)(.)*)(■){■}fail dot
  2923   |  6     (((((((■■)a)(■■|■))m)i)n)(.)*)■fail dot
  2924   |  6     (((((((■■)a)((■|■)|■))m)i)n)(.)*)■fail dot
  2925   |  6     (((((((■■)a)((■){■}|■))m)i)n)(.)*)■fail dot
  2926   |  6     (((((((■■)a)(■|■))m)i)n)(.)*)(■■)fail dot
  2927   |  6     (((((((■■)a)(■|■))m)i)n)(.)*)(■|■)fail dot
  2928   |  6     (((((((■■)a)(■|■))m)i)n)(.)*)(■){■}fail dot
  2929   |  6     (((((((■■)a)(■■){■})m)i)n)(.)*)■fail dot
  2930   |  6     (((((((■■)a)((■|■)){■})m)i)n)(.)*)■fail dot
  2931   |  6     (((((((■■)a)((■){■}){■})m)i)n)(.)*)■fail dot
  2932   |  6     (((((((■■)a)(■){■})m)i)n)(.)*)(■■)fail dot
  2933   |  6     (((((((■■)a)(■){■})m)i)n)(.)*)(■|■)fail dot
  2934   |  6     (((((((■■)a)(■){■})m)i)n)(.)*)(■){■}fail dot
  2935   |  6     (((((((■■)a)■)m)i)n)(.)*)(■)fail dot
  2936   |  6     (((((((■■)a)■)m)i)n)(.)*)((■■)■)fail dot
  2937   |  6     (((((((■■)a)■)m)i)n)(.)*)((■|■)■)fail dot
  2938   |  6     (((((((■■)a)■)m)i)n)(.)*)((■){■}■)fail dot
  2939   |  6     (((((((■■)a)■)m)i)n)(.)*)(■■|■)fail dot
  2940   |  6     (((((((■■)a)■)m)i)n)(.)*)((■|■)|■)fail dot
  2941   |  6     (((((((■■)a)■)m)i)n)(.)*)((■){■}|■)fail dot
  2942   |  6     (((((((■■)a)■)m)i)n)(.)*)(■■){■}fail dot
  2943   |  6     (((((((■■)a)■)m)i)n)(.)*)((■|■)){■}fail dot
  2944   |  6     (((((((■■)a)■)m)i)n)(.)*)((■){■}){■}fail dot
  2945   |  6     ((((((((■■)■|■)a)■)m)i)n)(.)*)■fail dot
  2946   |  6     ((((((((■|■)■|■)a)■)m)i)n)(.)*)■fail dot
  2947   |  6     ((((((((■){■}■|■)a)■)m)i)n)(.)*)■fail dot
  2948   |  6     (((((((■■|■■)a)■)m)i)n)(.)*)■fail dot
  2949   |  6     (((((((■■|(■|■))a)■)m)i)n)(.)*)■fail dot
  2950   |  6     (((((((■■|(■){■})a)■)m)i)n)(.)*)■fail dot
  2951   |  6     (((((((■■|■)a)(■■))m)i)n)(.)*)■fail dot
  2952   |  6     (((((((■■|■)a)(■|■))m)i)n)(.)*)■fail dot
  2953   |  6     (((((((■■|■)a)(■){■})m)i)n)(.)*)■fail dot
  2954   |  6     (((((((■■|■)a)■)m)i)n)(.)*)(■■)fail dot
  2955   |  6     (((((((■■|■)a)■)m)i)n)(.)*)(■|■)fail dot
  2956   |  6     (((((((■■|■)a)■)m)i)n)(.)*)(■){■}fail dot
  2957   |  6     ((((((((■■|■)|■)a)■)m)i)n)(.)*)■fail dot
  2958   |  6     (((((((((■|■)|■)|■)a)■)m)i)n)(.)*)■fail dot
  2959   |  6     (((((((((■){■}|■)|■)a)■)m)i)n)(.)*)■fail dot
  2960   |  6     ((((((((■|■)|■■)a)■)m)i)n)(.)*)■fail dot
  2961   |  6     ((((((((■|■)|(■|■))a)■)m)i)n)(.)*)■fail dot
  2962   |  6     ((((((((■|■)|(■){■})a)■)m)i)n)(.)*)■fail dot
  2963   |  6     ((((((((■|■)|■)a)(■■))m)i)n)(.)*)■fail dot
  2964   |  6     ((((((((■|■)|■)a)(■|■))m)i)n)(.)*)■fail dot
  2965   |  6     ((((((((■|■)|■)a)(■){■})m)i)n)(.)*)■fail dot
  2966   |  6     ((((((((■|■)|■)a)■)m)i)n)(.)*)(■■)fail dot
  2967   |  6     ((((((((■|■)|■)a)■)m)i)n)(.)*)(■|■)fail dot
  2968   |  6     ((((((((■|■)|■)a)■)m)i)n)(.)*)(■){■}fail dot
  2969   |  6     ((((((((■■){■}|■)a)■)m)i)n)(.)*)■fail dot
  2970   |  6     (((((((((■|■)){■}|■)a)■)m)i)n)(.)*)■fail dot
  2971   |  6     (((((((((■){■}){■}|■)a)■)m)i)n)(.)*)■fail dot
  2972   |  6     ((((((((■){■}|■■)a)■)m)i)n)(.)*)■fail dot
  2973   |  6     ((((((((■){■}|(■|■))a)■)m)i)n)(.)*)■fail dot
  2974   |  6     ((((((((■){■}|(■){■})a)■)m)i)n)(.)*)■fail dot
  2975   |  6     ((((((((■){■}|■)a)(■■))m)i)n)(.)*)■fail dot
  2976   |  6     ((((((((■){■}|■)a)(■|■))m)i)n)(.)*)■fail dot
  2977   |  6     ((((((((■){■}|■)a)(■){■})m)i)n)(.)*)■fail dot
  2978   |  6     ((((((((■){■}|■)a)■)m)i)n)(.)*)(■■)fail dot
  2979   |  6     ((((((((■){■}|■)a)■)m)i)n)(.)*)(■|■)fail dot
  2980   |  6     ((((((((■){■}|■)a)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  2981   |  6     (((((((■|■)a)(■))m)i)n)(.)*)■fail dot
  2982   |  6     (((((((■|■)a)((■■)■))m)i)n)(.)*)■fail dot
  2983   |  6     (((((((■|■)a)((■|■)■))m)i)n)(.)*)■fail dot
  2984   |  6     (((((((■|■)a)((■){■}■))m)i)n)(.)*)■fail dot
  2985   |  6     (((((((■|■)a)(■■))m)i)n)(.)*)(■■)fail dot
  2986   |  6     (((((((■|■)a)(■■))m)i)n)(.)*)(■|■)fail dot
  2987   |  6     (((((((■|■)a)(■■))m)i)n)(.)*)(■){■}fail dot
  2988   |  6     (((((((■|■)a)(■■|■))m)i)n)(.)*)■fail dot
  2989   |  6     (((((((■|■)a)((■|■)|■))m)i)n)(.)*)■fail dot
  2990   |  6     (((((((■|■)a)((■){■}|■))m)i)n)(.)*)■fail dot
  2991   |  6     (((((((■|■)a)(■|■))m)i)n)(.)*)(■■)fail dot
  2992   |  6     (((((((■|■)a)(■|■))m)i)n)(.)*)(■|■)fail dot
  2993   |  6     (((((((■|■)a)(■|■))m)i)n)(.)*)(■){■}fail dot
  2994   |  6     (((((((■|■)a)(■■){■})m)i)n)(.)*)■fail dot
  2995   |  6     (((((((■|■)a)((■|■)){■})m)i)n)(.)*)■fail dot
  2996   |  6     (((((((■|■)a)((■){■}){■})m)i)n)(.)*)■fail dot
  2997   |  6     (((((((■|■)a)(■){■})m)i)n)(.)*)(■■)fail dot
  2998   |  6     (((((((■|■)a)(■){■})m)i)n)(.)*)(■|■)fail dot
  2999   |  6     (((((((■|■)a)(■){■})m)i)n)(.)*)(■){■}fail dot
  3000   |  6     (((((((■|■)a)■)m)i)n)(.)*)(■)fail dot
  3001   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■■)■)fail dot
  3002   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■|■)■)fail dot
  3003   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■){■}■)fail dot
  3004   |  6     (((((((■|■)a)■)m)i)n)(.)*)(■■|■)fail dot
  3005   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■|■)|■)fail dot
  3006   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■){■}|■)fail dot
  3007   |  6     (((((((■|■)a)■)m)i)n)(.)*)(■■){■}fail dot
  3008   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■|■)){■}fail dot
  3009   |  6     (((((((■|■)a)■)m)i)n)(.)*)((■){■}){■}fail dot
  3010   |  6     ((((((((■■)■){■}a)■)m)i)n)(.)*)■fail dot
  3011   |  6     ((((((((■|■)■){■}a)■)m)i)n)(.)*)■fail dot
  3012   |  6     ((((((((■){■}■){■}a)■)m)i)n)(.)*)■fail dot
  3013   |  6     (((((((■■){■}a)(■■))m)i)n)(.)*)■fail dot
  3014   |  6     (((((((■■){■}a)(■|■))m)i)n)(.)*)■fail dot
  3015   |  6     (((((((■■){■}a)(■){■})m)i)n)(.)*)■fail dot
  3016   |  6     (((((((■■){■}a)■)m)i)n)(.)*)(■■)fail dot
  3017   |  6     (((((((■■){■}a)■)m)i)n)(.)*)(■|■)fail dot
  3018   |  6     (((((((■■){■}a)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3019   |  6     ((((((((■■|■)){■}a)■)m)i)n)(.)*)■fail dot
  3020   |  6     (((((((((■|■)|■)){■}a)■)m)i)n)(.)*)■fail dot
  3021   |  6     (((((((((■){■}|■)){■}a)■)m)i)n)(.)*)■fail dot
  3022   |  6     ((((((((■|■)){■}a)(■■))m)i)n)(.)*)■fail dot
  3023   |  6     ((((((((■|■)){■}a)(■|■))m)i)n)(.)*)■fail dot
  3024   |  6     ((((((((■|■)){■}a)(■){■})m)i)n)(.)*)■fail dot
  3025   |  6     ((((((((■|■)){■}a)■)m)i)n)(.)*)(■■)fail dot
  3026   |  6     ((((((((■|■)){■}a)■)m)i)n)(.)*)(■|■)fail dot
  3027   |  6     ((((((((■|■)){■}a)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3028   |  6     ((((((((■■){■}){■}a)■)m)i)n)(.)*)■fail dot
  3029   |  6     (((((((((■|■)){■}){■}a)■)m)i)n)(.)*)■fail dot
  3030   |  6     (((((((((■){■}){■}){■}a)■)m)i)n)(.)*)■fail dot
  3031   |  6     ((((((((■){■}){■}a)(■■))m)i)n)(.)*)■fail dot
  3032   |  6     ((((((((■){■}){■}a)(■|■))m)i)n)(.)*)■fail dot
  3033   |  6     ((((((((■){■}){■}a)(■){■})m)i)n)(.)*)■fail dot
  3034   |  6     ((((((((■){■}){■}a)■)m)i)n)(.)*)(■■)fail dot
  3035   |  6     ((((((((■){■}){■}a)■)m)i)n)(.)*)(■|■)fail dot
  3036   |  6     ((((((((■){■}){■}a)■)m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3037   |  6     (((((((■){■}a)(■))m)i)n)(.)*)■fail dot
  3038   |  6     (((((((■){■}a)((■■)■))m)i)n)(.)*)■fail dot
  3039   |  6     (((((((■){■}a)((■|■)■))m)i)n)(.)*)■fail dot
  3040   |  6     (((((((■){■}a)((■){■}■))m)i)n)(.)*)■fail dot
  3041   |  6     (((((((■){■}a)(■■))m)i)n)(.)*)(■■)fail dot
  3042   |  6     (((((((■){■}a)(■■))m)i)n)(.)*)(■|■)fail dot
  3043   |  6     (((((((■){■}a)(■■))m)i)n)(.)*)(■){■}fail dot
  3044   |  6     (((((((■){■}a)(■■|■))m)i)n)(.)*)■fail dot
  3045   |  6     (((((((■){■}a)((■|■)|■))m)i)n)(.)*)■fail dot
  3046   |  6     (((((((■){■}a)((■){■}|■))m)i)n)(.)*)■fail dot
  3047   |  6     (((((((■){■}a)(■|■))m)i)n)(.)*)(■■)fail dot
  3048   |  6     (((((((■){■}a)(■|■))m)i)n)(.)*)(■|■)fail dot
  3049   |  6     (((((((■){■}a)(■|■))m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3050   |  6     (((((((■){■}a)(■■){■})m)i)n)(.)*)■fail dot
  3051   |  6     (((((((■){■}a)((■|■)){■})m)i)n)(.)*)■fail dot
  3052   |  6     (((((((■){■}a)((■){■}){■})m)i)n)(.)*)■fail dot
  3053   |  6     (((((((■){■}a)(■){■})m)i)n)(.)*)(■■)fail dot
  3054   |  6     (((((((■){■}a)(■){■})m)i)n)(.)*)(■|■)fail dot
  3055   |  6     (((((((■){■}a)(■){■})m)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3056   |  6     (((((((■){■}a)■)m)i)n)(.)*)(■)fail dot
  3057   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■■)■)fail dot
  3058   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■|■)■)fail dot
  3059   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■){■}■)fail dot
  3060   |  6     (((((((■){■}a)■)m)i)n)(.)*)(■■|■)fail dot
  3061   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■|■)|■)fail dot
  3062   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  3063   |  6     (((((((■){■}a)■)m)i)n)(.)*)(■■){■}  unsatisfiable SAT formula       
  3064   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■|■)){■}fail solve
  3065   |  6     (((((((■){■}a)■)m)i)n)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  3066   |  6     ((((((■a)((■■)))m)i)n)(.)*)■fail dot
  3067   |  6     ((((((■a)((■|■)))m)i)n)(.)*)■fail dot
  3068   |  6     ((((((■a)((■){■}))m)i)n)(.)*)■fail dot
  3069   |  6     ((((((■a)(■))m)i)n)(.)*)(■■)fail dot
  3070   |  6     ((((((■a)(■))m)i)n)(.)*)(■|■)fail dot
  3071   |  6     ((((((■a)(■))m)i)n)(.)*)(■){■}fail dot
  3072   |  6     ((((((■a)((■)■))m)i)n)(.)*)■fail dot
  3073   |  6     ((((((■a)(((■■)■)■))m)i)n)(.)*)■fail dot
  3074   |  6     ((((((■a)(((■|■)■)■))m)i)n)(.)*)■fail dot
  3075   |  6     ((((((■a)(((■){■}■)■))m)i)n)(.)*)■fail dot
  3076   |  6     ((((((■a)((■■)(■■)))m)i)n)(.)*)■fail dot
  3077   |  6     ((((((■a)((■■)(■|■)))m)i)n)(.)*)■fail dot
  3078   |  6     ((((((■a)((■■)(■){■}))m)i)n)(.)*)■fail dot
  3079   |  6     ((((((■a)((■■)■))m)i)n)(.)*)(■■)fail dot
  3080   |  6     ((((((■a)((■■)■))m)i)n)(.)*)(■|■)fail dot
  3081   |  6     ((((((■a)((■■)■))m)i)n)(.)*)(■){■}fail dot
  3082   |  6     ((((((■a)((■■|■)■))m)i)n)(.)*)■fail dot
  3083   |  6     ((((((■a)(((■|■)|■)■))m)i)n)(.)*)■fail dot
  3084   |  6     ((((((■a)(((■){■}|■)■))m)i)n)(.)*)■fail dot
  3085   |  6     ((((((■a)((■|■)(■■)))m)i)n)(.)*)■fail dot
  3086   |  6     ((((((■a)((■|■)(■|■)))m)i)n)(.)*)■fail dot
  3087   |  6     ((((((■a)((■|■)(■){■}))m)i)n)(.)*)■fail dot
  3088   |  6     ((((((■a)((■|■)■))m)i)n)(.)*)(■■)fail dot
  3089   |  6     ((((((■a)((■|■)■))m)i)n)(.)*)(■|■)fail dot
  3090   |  6     ((((((■a)((■|■)■))m)i)n)(.)*)(■){■}fail dot
  3091   |  6     ((((((■a)((■■){■}■))m)i)n)(.)*)■fail dot
  3092   |  6     ((((((■a)(((■|■)){■}■))m)i)n)(.)*)■fail dot
  3093   |  6     ((((((■a)(((■){■}){■}■))m)i)n)(.)*)■fail dot
  3094   |  6     ((((((■a)((■){■}(■■)))m)i)n)(.)*)■fail dot
  3095   |  6     ((((((■a)((■){■}(■|■)))m)i)n)(.)*)■fail dot
  3096   |  6     ((((((■a)((■){■}(■){■}))m)i)n)(.)*)■fail dot
  3097   |  6     ((((((■a)((■){■}■))m)i)n)(.)*)(■■)fail dot
  3098   |  6     ((((((■a)((■){■}■))m)i)n)(.)*)(■|■)fail dot
  3099   |  6     ((((((■a)((■){■}■))m)i)n)(.)*)(■){■}fail dot
  3100   |  6     ((((((■a)(■■))m)i)n)(.)*)(■)fail dot
  3101   |  6     ((((((■a)(■■))m)i)n)(.)*)((■■)■)fail dot
  3102   |  6     ((((((■a)(■■))m)i)n)(.)*)((■|■)■)fail dot
  3103   |  6     ((((((■a)(■■))m)i)n)(.)*)((■){■}■)fail dot
  3104   |  6     ((((((■a)(■■))m)i)n)(.)*)(■■|■)fail dot
  3105   |  6     ((((((■a)(■■))m)i)n)(.)*)((■|■)|■)fail dot
  3106   |  6     ((((((■a)(■■))m)i)n)(.)*)((■){■}|■)fail dot
  3107   |  6     ((((((■a)(■■))m)i)n)(.)*)(■■){■}fail dot
  3108   |  6     ((((((■a)(■■))m)i)n)(.)*)((■|■)){■}fail dot
  3109   |  6     ((((((■a)(■■))m)i)n)(.)*)((■){■}){■}fail dot
  3110   |  6     ((((((■a)((■■)■|■))m)i)n)(.)*)■fail dot
  3111   |  6     ((((((■a)((■|■)■|■))m)i)n)(.)*)■fail dot
  3112   |  6     ((((((■a)((■){■}■|■))m)i)n)(.)*)■fail dot
  3113   |  6     ((((((■a)(■■|■■))m)i)n)(.)*)■fail dot
  3114   |  6     ((((((■a)(■■|(■|■)))m)i)n)(.)*)■fail dot
  3115   |  6     ((((((■a)(■■|(■){■}))m)i)n)(.)*)■fail dot
  3116   |  6     ((((((■a)(■■|■))m)i)n)(.)*)(■■)fail dot
  3117   |  6     ((((((■a)(■■|■))m)i)n)(.)*)(■|■)fail dot
  3118   |  6     ((((((■a)(■■|■))m)i)n)(.)*)(■){■}fail dot
  3119   |  6     ((((((■a)((■■|■)|■))m)i)n)(.)*)■fail dot
  3120   |  6     ((((((■a)(((■|■)|■)|■))m)i)n)(.)*)■fail dot
  3121   |  6     ((((((■a)(((■){■}|■)|■))m)i)n)(.)*)■fail dot
  3122   |  6     ((((((■a)((■|■)|■■))m)i)n)(.)*)■fail dot
  3123   |  6     ((((((■a)((■|■)|(■|■)))m)i)n)(.)*)■fail dot
  3124   |  6     ((((((■a)((■|■)|(■){■}))m)i)n)(.)*)■fail dot
  3125   |  6     ((((((■a)((■|■)|■))m)i)n)(.)*)(■■)fail dot
  3126   |  6     ((((((■a)((■|■)|■))m)i)n)(.)*)(■|■)fail dot
  3127   |  6     ((((((■a)((■|■)|■))m)i)n)(.)*)(■){■}fail dot
  3128   |  6     ((((((■a)((■■){■}|■))m)i)n)(.)*)■fail dot
  3129   |  6     ((((((■a)(((■|■)){■}|■))m)i)n)(.)*)■fail dot
  3130   |  6     ((((((■a)(((■){■}){■}|■))m)i)n)(.)*)■fail dot
  3131   |  6     ((((((■a)((■){■}|■■))m)i)n)(.)*)■fail dot
  3132   |  6     ((((((■a)((■){■}|(■|■)))m)i)n)(.)*)■fail dot
  3133   |  6     ((((((■a)((■){■}|(■){■}))m)i)n)(.)*)■fail dot
  3134   |  6     ((((((■a)((■){■}|■))m)i)n)(.)*)(■■)fail dot
  3135   |  6     ((((((■a)((■){■}|■))m)i)n)(.)*)(■|■)fail dot
  3136   |  6     ((((((■a)((■){■}|■))m)i)n)(.)*)(■){■}fail dot
  3137   |  6     ((((((■a)(■|■))m)i)n)(.)*)(■)fail dot
  3138   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■■)■)fail dot
  3139   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■|■)■)fail dot
  3140   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■){■}■)fail dot
  3141   |  6     ((((((■a)(■|■))m)i)n)(.)*)(■■|■)fail dot
  3142   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■|■)|■)fail dot
  3143   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■){■}|■)fail dot
  3144   |  6     ((((((■a)(■|■))m)i)n)(.)*)(■■){■}fail dot
  3145   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■|■)){■}fail dot
  3146   |  6     ((((((■a)(■|■))m)i)n)(.)*)((■){■}){■}fail dot
  3147   |  6     ((((((■a)((■■)■){■})m)i)n)(.)*)■fail dot
  3148   |  6     ((((((■a)((■|■)■){■})m)i)n)(.)*)■fail dot
  3149   |  6     ((((((■a)((■){■}■){■})m)i)n)(.)*)■fail dot
  3150   |  6     ((((((■a)(■■){■})m)i)n)(.)*)(■■)fail dot
  3151   |  6     ((((((■a)(■■){■})m)i)n)(.)*)(■|■)fail dot
  3152   |  6     ((((((■a)(■■){■})m)i)n)(.)*)(■){■}fail dot
  3153   |  6     ((((((■a)((■■|■)){■})m)i)n)(.)*)■fail dot
  3154   |  6     ((((((■a)(((■|■)|■)){■})m)i)n)(.)*)■fail dot
  3155   |  6     ((((((■a)(((■){■}|■)){■})m)i)n)(.)*)■fail dot
  3156   |  6     ((((((■a)((■|■)){■})m)i)n)(.)*)(■■)fail dot
  3157   |  6     ((((((■a)((■|■)){■})m)i)n)(.)*)(■|■)fail dot
  3158   |  6     ((((((■a)((■|■)){■})m)i)n)(.)*)(■){■}fail dot
  3159   |  6     ((((((■a)((■■){■}){■})m)i)n)(.)*)■fail dot
  3160   |  6     ((((((■a)(((■|■)){■}){■})m)i)n)(.)*)■fail dot
  3161   |  6     ((((((■a)(((■){■}){■}){■})m)i)n)(.)*)■fail dot
  3162   |  6     ((((((■a)((■){■}){■})m)i)n)(.)*)(■■)fail dot
  3163   |  6     ((((((■a)((■){■}){■})m)i)n)(.)*)(■|■)fail dot
  3164   |  6     ((((((■a)((■){■}){■})m)i)n)(.)*)(■){■}fail dot
  3165   |  6     ((((((■a)(■){■})m)i)n)(.)*)(■)fail dot
  3166   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■■)■)fail dot
  3167   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■|■)■)fail dot
  3168   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■){■}■)fail dot
  3169   |  6     ((((((■a)(■){■})m)i)n)(.)*)(■■|■)fail dot
  3170   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■|■)|■)fail dot
  3171   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■){■}|■)fail dot
  3172   |  6     ((((((■a)(■){■})m)i)n)(.)*)(■■){■}fail dot
  3173   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■|■)){■}fail dot
  3174   |  6     ((((((■a)(■){■})m)i)n)(.)*)((■){■}){■}fail dot
  3175   |  6     ((((((■a)■)m)i)n)(.)*)((■■))fail dot
  3176   |  6     ((((((■a)■)m)i)n)(.)*)((■|■))fail dot
  3177   |  6     ((((((■a)■)m)i)n)(.)*)((■){■})fail dot
  3178   |  6     ((((((■a)■)m)i)n)(.)*)((■)■)fail dot
  3179   |  6     ((((((■a)■)m)i)n)(.)*)(((■■)■)■)fail dot
  3180   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)■)■)fail dot
  3181   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}■)■)fail dot
  3182   |  6     ((((((■a)■)m)i)n)(.)*)((■■)(■■))fail dot
  3183   |  6     ((((((■a)■)m)i)n)(.)*)((■■)(■|■))fail dot
  3184   |  6     ((((((■a)■)m)i)n)(.)*)((■■)(■){■})fail dot
  3185   |  6     ((((((■a)■)m)i)n)(.)*)((■■|■)■)fail dot
  3186   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)|■)■)fail dot
  3187   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}|■)■)fail dot
  3188   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)(■■))fail dot
  3189   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)(■|■))fail dot
  3190   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)(■){■})fail dot
  3191   |  6     ((((((■a)■)m)i)n)(.)*)((■■){■}■)fail dot
  3192   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)){■}■)fail dot
  3193   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}){■}■)fail dot
  3194   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}(■■))fail dot
  3195   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}(■|■))fail dot
  3196   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}(■){■})fail dot
  3197   |  6     ((((((■a)■)m)i)n)(.)*)((■■)■|■)fail dot
  3198   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)■|■)fail dot
  3199   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}■|■)fail dot
  3200   |  6     ((((((■a)■)m)i)n)(.)*)(■■|■■)fail dot
  3201   |  6     ((((((■a)■)m)i)n)(.)*)(■■|(■|■))fail dot
  3202   |  6     ((((((■a)■)m)i)n)(.)*)(■■|(■){■})fail dot
  3203   |  6     ((((((■a)■)m)i)n)(.)*)((■■|■)|■)fail dot
  3204   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)|■)|■)fail dot
  3205   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}|■)|■)fail dot
  3206   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)|■■)fail dot
  3207   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)|(■|■))fail dot
  3208   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)|(■){■})fail dot
  3209   |  6     ((((((■a)■)m)i)n)(.)*)((■■){■}|■)fail dot
  3210   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)){■}|■)fail dot
  3211   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}){■}|■)fail dot
  3212   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}|■■)fail dot
  3213   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}|(■|■))fail dot
  3214   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}|(■){■})fail dot
  3215   |  6     ((((((■a)■)m)i)n)(.)*)((■■)■){■}fail dot
  3216   |  6     ((((((■a)■)m)i)n)(.)*)((■|■)■){■}fail dot
  3217   |  6     ((((((■a)■)m)i)n)(.)*)((■){■}■){■}fail dot
  3218   |  6     ((((((■a)■)m)i)n)(.)*)((■■|■)){■}fail dot
  3219   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)|■)){■}fail dot
  3220   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}|■)){■}fail dot
  3221   |  6     ((((((■a)■)m)i)n)(.)*)((■■){■}){■}fail dot
  3222   |  6     ((((((■a)■)m)i)n)(.)*)(((■|■)){■}){■}fail dot
  3223   |  6     ((((((■a)■)m)i)n)(.)*)(((■){■}){■}){■}fail dot
  3224   |  6     ((((((■a)d)■)■)■)(■){■})'fail dotstar or empty
  3225   |  6     ((((((■a)d)■)■)■)(■)*)■ fail dot
  3226   |  6     ((((((■a)d)■)■)■)(.){■})■fail dot
  3227   |  6     ((((((■a)d)■)■)■)■)'    fail dotstar or empty
  3228   |  6     (((((((■■)a)d)■)■)■)(.)*)■fail dot
  3229   |  6     (((((((■|■)a)d)■)■)■)(.)*)■fail dot
  3230   |  6     (((((((■){■}a)d)■)■)■)(.)*)■fail dot
  3231   |  6     ((((((■a)d)(■■))■)■)(.)*)■fail dot
  3232   |  6     ((((((■a)d)(■|■))■)■)(.)*)■fail dot
  3233   |  6     ((((((■a)d)(■){■})■)■)(.)*)■fail dot
  3234   |  6     ((((((■a)d)■)(■■))■)(.)*)■fail dot
  3235   |  6     ((((((■a)d)■)(■|■))■)(.)*)■fail dot
  3236   |  6     ((((((■a)d)■)(■){■})■)(.)*)■fail dot
  3237   |  6     ((((((■a)d)■)■)(■■))(.)*)■fail dot
  3238   |  6     ((((((■a)d)■)■)(■|■))(.)*)■fail dot
  3239   |  6     ((((((■a)d)■)■)(■){■})(.)*)■fail dot
  3240   |  6     ((((((■a)d)■)■)■)(.)*)(■■)fail dot
  3241   |  6     ((((((■a)d)■)■)■)(.)*)(■|■)fail dot
  3242   |  6     ((((((■a)d)■)■)■)(.)*)(■){■}fail dot
  3243   |  6     ((((((■a)d)■)■)n)(■){■})■fail dot
  3244   |  6     (((((((■■)a)d)■)■)n)(■)*)■fail dot
  3245   |  6     (((((((■|■)a)d)■)■)n)(■)*)■fail dot
  3246   |  6     (((((((■){■}a)d)■)■)n)(■)*)■fail dot
  3247   |  6     ((((((■a)d)(■■))■)n)(■)*)■fail dot
  3248   |  6     ((((((■a)d)(■|■))■)n)(■)*)■fail dot
  3249   |  6     ((((((■a)d)(■){■})■)n)(■)*)■fail dot
  3250   |  6     ((((((■a)d)■)(■■))n)(■)*)■fail dot
  3251   |  6     ((((((■a)d)■)(■|■))n)(■)*)■fail dot
  3252   |  6     ((((((■a)d)■)(■){■})n)(■)*)■fail dot
  3253   |  6     ((((((■a)d)■)■)n)(■■)*)■fail dot
  3254   |  6     ((((((■a)d)■)■)n)((■|■))*)■fail dot
  3255   |  6     ((((((■a)d)■)■)n)((■){■})*)■fail dot
  3256   |  6     ((((((■a)d)■)■)n)(■)*)(■■)fail dot
  3257   |  6     ((((((■a)d)■)■)n)(■)*)(■|■)fail dot
  3258   |  6     ((((((■a)d)■)■)n)(■)*)(■){■}fail dot
  3259   |  6     ((((((■a)d)■)■)n)■)■    fail dot
  3260   |  6     (((((((■■)a)d)■)■)n)(.){■})■fail dot
  3261   |  6     (((((((■|■)a)d)■)■)n)(.){■})■fail dot
  3262   |  6     (((((((■){■}a)d)■)■)n)(.){■})■fail dot
  3263   |  6     ((((((■a)d)(■■))■)n)(.){■})■fail dot
  3264   |  6     ((((((■a)d)(■|■))■)n)(.){■})■fail dot
  3265   |  6     ((((((■a)d)(■){■})■)n)(.){■})■fail dot
  3266   |  6     ((((((■a)d)■)(■■))n)(.){■})■fail dot
  3267   |  6     ((((((■a)d)■)(■|■))n)(.){■})■fail dot
  3268   |  6     ((((((■a)d)■)(■){■})n)(.){■})■fail dot
  3269   |  6     ((((((■a)d)■)■)n)(.){■})(■■)fail dot
  3270   |  6     ((((((■a)d)■)■)n)(.){■})(■|■)fail dot
  3271   |  6     ((((((■a)d)■)■)n)(.){■})(■){■}fail dot
  3272   |  6     (((((((■)a)d)■)■)n)(.)*)■fail dot
  3273   |  6     ((((((((■■)■)a)d)■)■)n)(.)*)■fail dot
  3274   |  6     ((((((((■|■)■)a)d)■)■)n)(.)*)■fail dot
  3275   |  6     ((((((((■){■}■)a)d)■)■)n)(.)*)■fail dot
  3276   |  6     (((((((■■)a)d)(■■))■)n)(.)*)■fail dot
  3277   |  6     (((((((■■)a)d)(■|■))■)n)(.)*)■fail dot
  3278   |  6     (((((((■■)a)d)(■){■})■)n)(.)*)■fail dot
  3279   |  6     (((((((■■)a)d)■)(■■))n)(.)*)■fail dot
  3280   |  6     (((((((■■)a)d)■)(■|■))n)(.)*)■fail dot
  3281   |  6     (((((((■■)a)d)■)(■){■})n)(.)*)■fail dot
  3282   |  6     (((((((■■)a)d)■)■)n)(.)*)(■■)fail dot
  3283   |  6     (((((((■■)a)d)■)■)n)(.)*)(■|■)fail dot
  3284   |  6     (((((((■■)a)d)■)■)n)(.)*)(■){■}fail dot
  3285   |  6     (((((((■■|■)a)d)■)■)n)(.)*)■fail dot
  3286   |  6     ((((((((■|■)|■)a)d)■)■)n)(.)*)■fail dot
  3287   |  6     ((((((((■){■}|■)a)d)■)■)n)(.)*)■fail dot
  3288   |  6     (((((((■|■)a)d)(■■))■)n)(.)*)■fail dot
  3289   |  6     (((((((■|■)a)d)(■|■))■)n)(.)*)■fail dot
  3290   |  6     (((((((■|■)a)d)(■){■})■)n)(.)*)■fail dot
  3291   |  6     (((((((■|■)a)d)■)(■■))n)(.)*)■fail dot
  3292   |  6     (((((((■|■)a)d)■)(■|■))n)(.)*)■fail dot
  3293   |  6     (((((((■|■)a)d)■)(■){■})n)(.)*)■fail dot
  3294   |  6     (((((((■|■)a)d)■)■)n)(.)*)(■■)fail dot
  3295   |  6     (((((((■|■)a)d)■)■)n)(.)*)(■|■)fail dot
  3296   |  6     (((((((■|■)a)d)■)■)n)(.)*)(■){■}fail dot
  3297   |  6     (((((((■■){■}a)d)■)■)n)(.)*)■fail dot
  3298   |  6     ((((((((■|■)){■}a)d)■)■)n)(.)*)■fail dot
  3299   |  6     ((((((((■){■}){■}a)d)■)■)n)(.)*)■fail dot
  3300   |  6     (((((((■){■}a)d)(■■))■)n)(.)*)■fail dot
  3301   |  6     (((((((■){■}a)d)(■|■))■)n)(.)*)■fail dot
  3302   |  6     (((((((■){■}a)d)(■){■})■)n)(.)*)■fail dot
  3303   |  6     (((((((■){■}a)d)■)(■■))n)(.)*)■fail dot
  3304   |  6     (((((((■){■}a)d)■)(■|■))n)(.)*)■fail dot
  3305   |  6     (((((((■){■}a)d)■)(■){■})n)(.)*)■fail dot
  3306   |  6     (((((((■){■}a)d)■)■)n)(.)*)(■■)fail dot
  3307   |  6     (((((((■){■}a)d)■)■)n)(.)*)(■|■)fail dot
  3308   |  6     (((((((■){■}a)d)■)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3309   |  6     ((((((■a)d)(■))■)n)(.)*)■fail dot
  3310   |  6     ((((((■a)d)((■■)■))■)n)(.)*)■fail dot
  3311   |  6     ((((((■a)d)((■|■)■))■)n)(.)*)■fail dot
  3312   |  6     ((((((■a)d)((■){■}■))■)n)(.)*)■fail dot
  3313   |  6     ((((((■a)d)(■■))(■■))n)(.)*)■fail dot
  3314   |  6     ((((((■a)d)(■■))(■|■))n)(.)*)■fail dot
  3315   |  6     ((((((■a)d)(■■))(■){■})n)(.)*)■fail dot
  3316   |  6     ((((((■a)d)(■■))■)n)(.)*)(■■)fail dot
  3317   |  6     ((((((■a)d)(■■))■)n)(.)*)(■|■)fail dot
  3318   |  6     ((((((■a)d)(■■))■)n)(.)*)(■){■}fail dot
  3319   |  6     ((((((■a)d)(■■|■))■)n)(.)*)■fail dot
  3320   |  6     ((((((■a)d)((■|■)|■))■)n)(.)*)■fail dot
  3321   |  6     ((((((■a)d)((■){■}|■))■)n)(.)*)■fail dot
  3322   |  6     ((((((■a)d)(■|■))(■■))n)(.)*)■fail dot
  3323   |  6     ((((((■a)d)(■|■))(■|■))n)(.)*)■fail dot
  3324   |  6     ((((((■a)d)(■|■))(■){■})n)(.)*)■fail dot
  3325   |  6     ((((((■a)d)(■|■))■)n)(.)*)(■■)fail dot
  3326   |  6     ((((((■a)d)(■|■))■)n)(.)*)(■|■)fail dot
  3327   |  6     ((((((■a)d)(■|■))■)n)(.)*)(■){■}fail dot
  3328   |  6     ((((((■a)d)(■■){■})■)n)(.)*)■fail dot
  3329   |  6     ((((((■a)d)((■|■)){■})■)n)(.)*)■fail dot
  3330   |  6     ((((((■a)d)((■){■}){■})■)n)(.)*)■fail dot
  3331   |  6     ((((((■a)d)(■){■})(■■))n)(.)*)■fail dot
  3332   |  6     ((((((■a)d)(■){■})(■|■))n)(.)*)■fail dot
  3333   |  6     ((((((■a)d)(■){■})(■){■})n)(.)*)■fail dot
  3334   |  6     ((((((■a)d)(■){■})■)n)(.)*)(■■)fail dot
  3335   |  6     ((((((■a)d)(■){■})■)n)(.)*)(■|■)fail dot
  3336   |  6     ((((((■a)d)(■){■})■)n)(.)*)(■){■}fail dot
  3337   |  6     ((((((■a)d)■)(■))n)(.)*)■fail dot
  3338   |  6     ((((((■a)d)■)((■■)■))n)(.)*)■fail dot
  3339   |  6     ((((((■a)d)■)((■|■)■))n)(.)*)■fail dot
  3340   |  6     ((((((■a)d)■)((■){■}■))n)(.)*)■fail dot
  3341   |  6     ((((((■a)d)■)(■■))n)(.)*)(■■)fail dot
  3342   |  6     ((((((■a)d)■)(■■))n)(.)*)(■|■)fail dot
  3343   |  6     ((((((■a)d)■)(■■))n)(.)*)(■){■}fail dot
  3344   |  6     ((((((■a)d)■)(■■|■))n)(.)*)■fail dot
  3345   |  6     ((((((■a)d)■)((■|■)|■))n)(.)*)■fail dot
  3346   |  6     ((((((■a)d)■)((■){■}|■))n)(.)*)■fail dot
  3347   |  6     ((((((■a)d)■)(■|■))n)(.)*)(■■)fail dot
  3348   |  6     ((((((■a)d)■)(■|■))n)(.)*)(■|■)fail dot
  3349   |  6     ((((((■a)d)■)(■|■))n)(.)*)(■){■}fail dot
  3350   |  6     ((((((■a)d)■)(■■){■})n)(.)*)■fail dot
  3351   |  6     ((((((■a)d)■)((■|■)){■})n)(.)*)■fail dot
  3352   |  6     ((((((■a)d)■)((■){■}){■})n)(.)*)■fail dot
  3353   |  6     ((((((■a)d)■)(■){■})n)(.)*)(■■)fail dot
  3354   |  6     ((((((■a)d)■)(■){■})n)(.)*)(■|■)fail dot
  3355   |  6     ((((((■a)d)■)(■){■})n)(.)*)(■){■}fail dot
  3356   |  6     ((((((■a)d)■)■)n)(.)*)(■)fail dot
  3357   |  6     ((((((■a)d)■)■)n)(.)*)((■■)■)fail dot
  3358   |  6     ((((((■a)d)■)■)n)(.)*)((■|■)■)fail dot
  3359   |  6     ((((((■a)d)■)■)n)(.)*)((■){■}■)fail dot
  3360   |  6     ((((((■a)d)■)■)n)(.)*)(■■|■)fail dot
  3361   |  6     ((((((■a)d)■)■)n)(.)*)((■|■)|■)fail dot
  3362   |  6     ((((((■a)d)■)■)n)(.)*)((■){■}|■)fail dot
  3363   |  6     ((((((■a)d)■)■)n)(.)*)(■■){■}fail dot
  3364   |  6     ((((((■a)d)■)■)n)(.)*)((■|■)){■}fail dot
  3365   |  6     ((((((■a)d)■)■)n)(.)*)((■){■}){■}fail dot
  3366   |  6     ((((((■a)d)■)i)■)(■){■})■fail dot
  3367   |  6     (((((((■■)a)d)■)i)■)(■)*)■fail dot
  3368   |  6     (((((((■|■)a)d)■)i)■)(■)*)■fail dot
  3369   |  6     (((((((■){■}a)d)■)i)■)(■)*)■fail dot
  3370   |  6     ((((((■a)d)(■■))i)■)(■)*)■fail dot
  3371   |  6     ((((((■a)d)(■|■))i)■)(■)*)■fail dot
  3372   |  6     ((((((■a)d)(■){■})i)■)(■)*)■fail dot
  3373   |  6     ((((((■a)d)■)i)(■■))(■)*)■fail dot
  3374   |  6     ((((((■a)d)■)i)(■|■))(■)*)■fail dot
  3375   |  6     ((((((■a)d)■)i)(■){■})(■)*)■fail dot
  3376   |  6     ((((((■a)d)■)i)■)(■■)*)■fail dot
  3377   |  6     ((((((■a)d)■)i)■)((■|■))*)■fail dot
  3378   |  6     ((((((■a)d)■)i)■)((■){■})*)■fail dot
  3379   |  6     ((((((■a)d)■)i)■)(■)*)(■■)fail dot
  3380   |  6     ((((((■a)d)■)i)■)(■)*)(■|■)fail dot
  3381   |  6     ((((((■a)d)■)i)■)(■)*)(■){■}fail dot
  3382   |  6     ((((((■a)d)■)i)■)■)■    fail dot
  3383   |  6     (((((((■■)a)d)■)i)■)(.){■})■fail dot
  3384   |  6     (((((((■|■)a)d)■)i)■)(.){■})■fail dot
  3385   |  6     (((((((■){■}a)d)■)i)■)(.){■})■fail dot
  3386   |  6     ((((((■a)d)(■■))i)■)(.){■})■fail dot
  3387   |  6     ((((((■a)d)(■|■))i)■)(.){■})■fail dot
  3388   |  6     ((((((■a)d)(■){■})i)■)(.){■})■fail dot
  3389   |  6     ((((((■a)d)■)i)(■■))(.){■})■fail dot
  3390   |  6     ((((((■a)d)■)i)(■|■))(.){■})■fail dot
  3391   |  6     ((((((■a)d)■)i)(■){■})(.){■})■fail dot
  3392   |  6     ((((((■a)d)■)i)■)(.){■})(■■)fail dot
  3393   |  6     ((((((■a)d)■)i)■)(.){■})(■|■)fail dot
  3394   |  6     ((((((■a)d)■)i)■)(.){■})(■){■}fail dot
  3395   |  6     (((((((■)a)d)■)i)■)(.)*)■fail dot
  3396   |  6     ((((((((■■)■)a)d)■)i)■)(.)*)■fail dot
  3397   |  6     ((((((((■|■)■)a)d)■)i)■)(.)*)■fail dot
  3398   |  6     ((((((((■){■}■)a)d)■)i)■)(.)*)■fail dot
  3399   |  6     (((((((■■)a)d)(■■))i)■)(.)*)■fail dot
  3400   |  6     (((((((■■)a)d)(■|■))i)■)(.)*)■fail dot
  3401   |  6     (((((((■■)a)d)(■){■})i)■)(.)*)■fail dot
  3402   |  6     (((((((■■)a)d)■)i)(■■))(.)*)■fail dot
  3403   |  6     (((((((■■)a)d)■)i)(■|■))(.)*)■fail dot
  3404   |  6     (((((((■■)a)d)■)i)(■){■})(.)*)■fail dot
  3405   |  6     (((((((■■)a)d)■)i)■)(.)*)(■■)fail dot
  3406   |  6     (((((((■■)a)d)■)i)■)(.)*)(■|■)fail dot
  3407   |  6     (((((((■■)a)d)■)i)■)(.)*)(■){■}fail dot
  3408   |  6     (((((((■■|■)a)d)■)i)■)(.)*)■fail dot
  3409   |  6     ((((((((■|■)|■)a)d)■)i)■)(.)*)■fail dot
  3410   |  6     ((((((((■){■}|■)a)d)■)i)■)(.)*)■fail dot
  3411   |  6     (((((((■|■)a)d)(■■))i)■)(.)*)■fail dot
  3412   |  6     (((((((■|■)a)d)(■|■))i)■)(.)*)■fail dot
  3413   |  6     (((((((■|■)a)d)(■){■})i)■)(.)*)■fail dot
  3414   |  6     (((((((■|■)a)d)■)i)(■■))(.)*)■fail dot
  3415   |  6     (((((((■|■)a)d)■)i)(■|■))(.)*)■fail dot
  3416   |  6     (((((((■|■)a)d)■)i)(■){■})(.)*)■fail dot
  3417   |  6     (((((((■|■)a)d)■)i)■)(.)*)(■■)fail dot
  3418   |  6     (((((((■|■)a)d)■)i)■)(.)*)(■|■)fail dot
  3419   |  6     (((((((■|■)a)d)■)i)■)(.)*)(■){■}fail dot
  3420   |  6     (((((((■■){■}a)d)■)i)■)(.)*)■fail dot
  3421   |  6     ((((((((■|■)){■}a)d)■)i)■)(.)*)■fail dot
  3422   |  6     ((((((((■){■}){■}a)d)■)i)■)(.)*)■fail dot
  3423   |  6     (((((((■){■}a)d)(■■))i)■)(.)*)■fail dot
  3424   |  6     (((((((■){■}a)d)(■|■))i)■)(.)*)■fail dot
  3425   |  6     (((((((■){■}a)d)(■){■})i)■)(.)*)■fail dot
  3426   |  6     (((((((■){■}a)d)■)i)(■■))(.)*)■fail dot
  3427   |  6     (((((((■){■}a)d)■)i)(■|■))(.)*)■fail dot
  3428   |  6     (((((((■){■}a)d)■)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  3429   |  6     (((((((■){■}a)d)■)i)■)(.)*)(■■)fail dot
  3430   |  6     (((((((■){■}a)d)■)i)■)(.)*)(■|■)fail dot
  3431   |  6     (((((((■){■}a)d)■)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  3432   |  6     ((((((■a)d)(■))i)■)(.)*)■fail dot
  3433   |  6     ((((((■a)d)((■■)■))i)■)(.)*)■fail dot
  3434   |  6     ((((((■a)d)((■|■)■))i)■)(.)*)■fail dot
  3435   |  6     ((((((■a)d)((■){■}■))i)■)(.)*)■fail dot
  3436   |  6     ((((((■a)d)(■■))i)(■■))(.)*)■fail dot
  3437   |  6     ((((((■a)d)(■■))i)(■|■))(.)*)■fail dot
  3438   |  6     ((((((■a)d)(■■))i)(■){■})(.)*)■fail dot
  3439   |  6     ((((((■a)d)(■■))i)■)(.)*)(■■)fail dot
  3440   |  6     ((((((■a)d)(■■))i)■)(.)*)(■|■)fail dot
  3441   |  6     ((((((■a)d)(■■))i)■)(.)*)(■){■}fail dot
  3442   |  6     ((((((■a)d)(■■|■))i)■)(.)*)■fail dot
  3443   |  6     ((((((■a)d)((■|■)|■))i)■)(.)*)■fail dot
  3444   |  6     ((((((■a)d)((■){■}|■))i)■)(.)*)■fail dot
  3445   |  6     ((((((■a)d)(■|■))i)(■■))(.)*)■fail dot
  3446   |  6     ((((((■a)d)(■|■))i)(■|■))(.)*)■fail dot
  3447   |  6     ((((((■a)d)(■|■))i)(■){■})(.)*)■fail dot
  3448   |  6     ((((((■a)d)(■|■))i)■)(.)*)(■■)fail dot
  3449   |  6     ((((((■a)d)(■|■))i)■)(.)*)(■|■)fail dot
  3450   |  6     ((((((■a)d)(■|■))i)■)(.)*)(■){■}fail dot
  3451   |  6     ((((((■a)d)(■■){■})i)■)(.)*)■fail dot
  3452   |  6     ((((((■a)d)((■|■)){■})i)■)(.)*)■fail dot
  3453   |  6     ((((((■a)d)((■){■}){■})i)■)(.)*)■fail dot
  3454   |  6     ((((((■a)d)(■){■})i)(■■))(.)*)■fail dot
  3455   |  6     ((((((■a)d)(■){■})i)(■|■))(.)*)■fail dot
  3456   |  6     ((((((■a)d)(■){■})i)(■){■})(.)*)■fail dot
  3457   |  6     ((((((■a)d)(■){■})i)■)(.)*)(■■)fail dot
  3458   |  6     ((((((■a)d)(■){■})i)■)(.)*)(■|■)fail dot
  3459   |  6     ((((((■a)d)(■){■})i)■)(.)*)(■){■}fail dot
  3460   |  6     ((((((■a)d)■)i)(■))(.)*)■fail dot
  3461   |  6     ((((((■a)d)■)i)((■■)■))(.)*)■fail dot
  3462   |  6     ((((((■a)d)■)i)((■|■)■))(.)*)■fail dot
  3463   |  6     ((((((■a)d)■)i)((■){■}■))(.)*)■fail dot
  3464   |  6     ((((((■a)d)■)i)(■■))(.)*)(■■)fail dot
  3465   |  6     ((((((■a)d)■)i)(■■))(.)*)(■|■)fail dot
  3466   |  6     ((((((■a)d)■)i)(■■))(.)*)(■){■}fail dot
  3467   |  6     ((((((■a)d)■)i)(■■|■))(.)*)■fail dot
  3468   |  6     ((((((■a)d)■)i)((■|■)|■))(.)*)■fail dot
  3469   |  6     ((((((■a)d)■)i)((■){■}|■))(.)*)■fail dot
  3470   |  6     ((((((■a)d)■)i)(■|■))(.)*)(■■)fail dot
  3471   |  6     ((((((■a)d)■)i)(■|■))(.)*)(■|■)fail dot
  3472   |  6     ((((((■a)d)■)i)(■|■))(.)*)(■){■}fail dot
  3473   |  6     ((((((■a)d)■)i)(■■){■})(.)*)■fail dot
  3474   |  6     ((((((■a)d)■)i)((■|■)){■})(.)*)■fail dot
  3475   |  6     ((((((■a)d)■)i)((■){■}){■})(.)*)■fail dot
  3476   |  6     ((((((■a)d)■)i)(■){■})(.)*)(■■)fail dot
  3477   |  6     ((((((■a)d)■)i)(■){■})(.)*)(■|■)fail dot
  3478   |  6     ((((((■a)d)■)i)(■){■})(.)*)(■){■}fail dot
  3479   |  6     ((((((■a)d)■)i)■)(.)*)(■)fail dot
  3480   |  6     ((((((■a)d)■)i)■)(.)*)((■■)■)fail dot
  3481   |  6     ((((((■a)d)■)i)■)(.)*)((■|■)■)fail dot
  3482   |  6     ((((((■a)d)■)i)■)(.)*)((■){■}■)fail dot
  3483   |  6     ((((((■a)d)■)i)■)(.)*)(■■|■)fail dot
  3484   |  6     ((((((■a)d)■)i)■)(.)*)((■|■)|■)fail dot
  3485   |  6     ((((((■a)d)■)i)■)(.)*)((■){■}|■)fail dot
  3486   |  6     ((((((■a)d)■)i)■)(.)*)(■■){■}fail dot
  3487   |  6     ((((((■a)d)■)i)■)(.)*)((■|■)){■}fail dot
  3488   |  6     ((((((■a)d)■)i)■)(.)*)((■){■}){■}fail dot
  3489   |  6     (((((((■■)a)d)■)i)n)(■){■})■fail dot
  3490   |  6     (((((((■|■)a)d)■)i)n)(■){■})■fail dot
  3491   |  6     (((((((■){■}a)d)■)i)n)(■){■})■fail dot
  3492   |  6     ((((((■a)d)(■■))i)n)(■){■})■fail dot
  3493   |  6     ((((((■a)d)(■|■))i)n)(■){■})■fail dot
  3494   |  6     ((((((■a)d)(■){■})i)n)(■){■})■fail dot
  3495   |  6     ((((((■a)d)■)i)n)(■■){■})■fail dot
  3496   |  6     ((((((■a)d)■)i)n)((■|■)){■})■fail dot
  3497   |  6     ((((((■a)d)■)i)n)((■){■}){■})■fail dot
  3498   |  6     ((((((■a)d)■)i)n)(■){■})(■■)fail dot
  3499   |  6     ((((((■a)d)■)i)n)(■){■})(■|■)fail dot
  3500   |  6     ((((((■a)d)■)i)n)(■){■})(■){■}fail dot
  3501   |  6     (((((((■)a)d)■)i)n)(■)*)■fail dot
  3502   |  6     ((((((((■■)■)a)d)■)i)n)(■)*)■fail dot
  3503   |  6     ((((((((■|■)■)a)d)■)i)n)(■)*)■fail dot
  3504   |  6     ((((((((■){■}■)a)d)■)i)n)(■)*)■fail dot
  3505   |  6     (((((((■■)a)d)(■■))i)n)(■)*)■fail dot
  3506   |  6     (((((((■■)a)d)(■|■))i)n)(■)*)■fail dot
  3507   |  6     (((((((■■)a)d)(■){■})i)n)(■)*)■fail dot
  3508   |  6     (((((((■■)a)d)■)i)n)(■■)*)■fail dot
  3509   |  6     (((((((■■)a)d)■)i)n)((■|■))*)■fail dot
  3510   |  6     (((((((■■)a)d)■)i)n)((■){■})*)■fail dot
  3511   |  6     (((((((■■)a)d)■)i)n)(■)*)(■■)fail dot
  3512   |  6     (((((((■■)a)d)■)i)n)(■)*)(■|■)fail dot
  3513   |  6     (((((((■■)a)d)■)i)n)(■)*)(■){■}fail dot
  3514   |  6     (((((((■■|■)a)d)■)i)n)(■)*)■fail dot
  3515   |  6     ((((((((■|■)|■)a)d)■)i)n)(■)*)■fail dot
  3516   |  6     ((((((((■){■}|■)a)d)■)i)n)(■)*)■fail dot
  3517   |  6     (((((((■|■)a)d)(■■))i)n)(■)*)■fail dot
  3518   |  6     (((((((■|■)a)d)(■|■))i)n)(■)*)■fail dot
  3519   |  6     (((((((■|■)a)d)(■){■})i)n)(■)*)■fail dot
  3520   |  6     (((((((■|■)a)d)■)i)n)(■■)*)■fail dot
  3521   |  6     (((((((■|■)a)d)■)i)n)((■|■))*)■fail dot
  3522   |  6     (((((((■|■)a)d)■)i)n)((■){■})*)■fail dot
  3523   |  6     (((((((■|■)a)d)■)i)n)(■)*)(■■)fail dot
  3524   |  6     (((((((■|■)a)d)■)i)n)(■)*)(■|■)fail dot
  3525   |  6     (((((((■|■)a)d)■)i)n)(■)*)(■){■}fail dot
  3526   |  6     (((((((■■){■}a)d)■)i)n)(■)*)■fail dot
  3527   |  6     ((((((((■|■)){■}a)d)■)i)n)(■)*)■fail dot
  3528   |  6     ((((((((■){■}){■}a)d)■)i)n)(■)*)■fail dot
  3529   |  6     (((((((■){■}a)d)(■■))i)n)(■)*)■fail dot
  3530   |  6     (((((((■){■}a)d)(■|■))i)n)(■)*)■fail dot
  3531   |  6     (((((((■){■}a)d)(■){■})i)n)(■)*)■fail dot
  3532   |  6     (((((((■){■}a)d)■)i)n)(■■)*)■fail dot
  3533   |  6     (((((((■){■}a)d)■)i)n)((■|■))*)■fail dot
  3534   |  6     (((((((■){■}a)d)■)i)n)((■){■})*)■fail dot
  3535   |  6     (((((((■){■}a)d)■)i)n)(■)*)(■■)fail dot
  3536   |  6     (((((((■){■}a)d)■)i)n)(■)*)(■|■)fail dot
  3537   |  6     (((((((■){■}a)d)■)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  3538   |  6     ((((((■a)d)(■))i)n)(■)*)■fail dot
  3539   |  6     ((((((■a)d)((■■)■))i)n)(■)*)■fail dot
  3540   |  6     ((((((■a)d)((■|■)■))i)n)(■)*)■fail dot
  3541   |  6     ((((((■a)d)((■){■}■))i)n)(■)*)■fail dot
  3542   |  6     ((((((■a)d)(■■))i)n)(■■)*)■fail dot
  3543   |  6     ((((((■a)d)(■■))i)n)((■|■))*)■fail dot
  3544   |  6     ((((((■a)d)(■■))i)n)((■){■})*)■fail dot
  3545   |  6     ((((((■a)d)(■■))i)n)(■)*)(■■)fail dot
  3546   |  6     ((((((■a)d)(■■))i)n)(■)*)(■|■)fail dot
  3547   |  6     ((((((■a)d)(■■))i)n)(■)*)(■){■}fail dot
  3548   |  6     ((((((■a)d)(■■|■))i)n)(■)*)■fail dot
  3549   |  6     ((((((■a)d)((■|■)|■))i)n)(■)*)■fail dot
  3550   |  6     ((((((■a)d)((■){■}|■))i)n)(■)*)■fail dot
  3551   |  6     ((((((■a)d)(■|■))i)n)(■■)*)■fail dot
  3552   |  6     ((((((■a)d)(■|■))i)n)((■|■))*)■fail dot
  3553   |  6     ((((((■a)d)(■|■))i)n)((■){■})*)■fail dot
  3554   |  6     ((((((■a)d)(■|■))i)n)(■)*)(■■)fail dot
  3555   |  6     ((((((■a)d)(■|■))i)n)(■)*)(■|■)fail dot
  3556   |  6     ((((((■a)d)(■|■))i)n)(■)*)(■){■}fail dot
  3557   |  6     ((((((■a)d)(■■){■})i)n)(■)*)■fail dot
  3558   |  6     ((((((■a)d)((■|■)){■})i)n)(■)*)■fail dot
  3559   |  6     ((((((■a)d)((■){■}){■})i)n)(■)*)■fail dot
  3560   |  6     ((((((■a)d)(■){■})i)n)(■■)*)■fail dot
  3561   |  6     ((((((■a)d)(■){■})i)n)((■|■))*)■fail dot
  3562   |  6     ((((((■a)d)(■){■})i)n)((■){■})*)■fail dot
  3563   |  6     ((((((■a)d)(■){■})i)n)(■)*)(■■)fail dot
  3564   |  6     ((((((■a)d)(■){■})i)n)(■)*)(■|■)fail dot
  3565   |  6     ((((((■a)d)(■){■})i)n)(■)*)(■){■}fail dot
  3566   |  6     ((((((■a)d)■)i)n)((■■)■)*)■fail dot
  3567   |  6     ((((((■a)d)■)i)n)((■|■)■)*)■fail dot
  3568   |  6     ((((((■a)d)■)i)n)((■){■}■)*)■fail dot
  3569   |  6     ((((((■a)d)■)i)n)(■(■■))*)■fail dot
  3570   |  6     ((((((■a)d)■)i)n)(■(■|■))*)■fail dot
  3571   |  6     ((((((■a)d)■)i)n)(■(■){■})*)■fail dot
  3572   |  6     ((((((■a)d)■)i)n)(■■)*)(■■)fail dot
  3573   |  6     ((((((■a)d)■)i)n)(■■)*)(■|■)fail dot
  3574   |  6     ((((((■a)d)■)i)n)(■■)*)(■){■}fail dot
  3575   |  6     ((((((■a)d)■)i)n)((■■|■))*)■fail dot
  3576   |  6     ((((((■a)d)■)i)n)(((■|■)|■))*)■fail dot
  3577   |  6     ((((((■a)d)■)i)n)(((■){■}|■))*)■fail dot
  3578   |  6     ((((((■a)d)■)i)n)((■|■■))*)■fail dot
  3579   |  6     ((((((■a)d)■)i)n)((■|(■|■)))*)■fail dot
  3580   |  6     ((((((■a)d)■)i)n)((■|(■){■}))*)■fail dot
  3581   |  6     ((((((■a)d)■)i)n)((■|■))*)(■■)fail dot
  3582   |  6     ((((((■a)d)■)i)n)((■|■))*)(■|■)fail dot
  3583   |  6     ((((((■a)d)■)i)n)((■|■))*)(■){■}fail dot
  3584   |  6     ((((((■a)d)■)i)n)((■■){■})*)■fail dot
  3585   |  6     ((((((■a)d)■)i)n)(((■|■)){■})*)■fail dot
  3586   |  6     ((((((■a)d)■)i)n)(((■){■}){■})*)■fail dot
  3587   |  6     ((((((■a)d)■)i)n)((■){■})*)(■■)fail dot
  3588   |  6     ((((((■a)d)■)i)n)((■){■})*)(■|■)fail dot
  3589   |  6     ((((((■a)d)■)i)n)((■){■})*)(■){■}fail dot
  3590   |  6     ((((((■a)d)■)i)n)(■)*)(■)fail dot
  3591   |  6     ((((((■a)d)■)i)n)(■)*)((■■)■)fail dot
  3592   |  6     ((((((■a)d)■)i)n)(■)*)((■|■)■)fail dot
  3593   |  6     ((((((■a)d)■)i)n)(■)*)((■){■}■)fail dot
  3594   |  6     ((((((■a)d)■)i)n)(■)*)(■■|■)fail dot
  3595   |  6     ((((((■a)d)■)i)n)(■)*)((■|■)|■)fail dot
  3596   |  6     ((((((■a)d)■)i)n)(■)*)((■){■}|■)fail dot
  3597   |  6     ((((((■a)d)■)i)n)(■)*)(■■){■}fail dot
  3598   |  6     ((((((■a)d)■)i)n)(■)*)((■|■)){■}fail dot
  3599   |  6     ((((((■a)d)■)i)n)(■)*)((■){■}){■}fail dot
  3600   |  6     (((((((■■)a)d)■)i)n)■)■ fail dot
  3601   |  6     (((((((■|■)a)d)■)i)n)■)■fail dot
  3602   |  6     (((((((■){■}a)d)■)i)n)■)■fail dot
  3603   |  6     ((((((■a)d)(■■))i)n)■)■ fail dot
  3604   |  6     ((((((■a)d)(■|■))i)n)■)■fail dot
  3605   |  6     ((((((■a)d)(■){■})i)n)■)■fail dot
  3606   |  6     ((((((■a)d)■)i)n)(■■))■ fail dot
  3607   |  6     ((((((■a)d)■)i)n)(■|■))■fail dot
  3608   |  6     ((((((■a)d)■)i)n)■)(■■) fail dot
  3609   |  6     ((((((■a)d)■)i)n)■)(■|■)fail dot
  3610   |  6     ((((((■a)d)■)i)n)■)(■){■}fail dot
  3611   |  6     (((((((■)a)d)■)i)n)(.){■})■fail dot
  3612   |  6     ((((((((■■)■)a)d)■)i)n)(.){■})■fail dot
  3613   |  6     ((((((((■|■)■)a)d)■)i)n)(.){■})■fail dot
  3614   |  6     ((((((((■){■}■)a)d)■)i)n)(.){■})■fail dot
  3615   |  6     (((((((■■)a)d)(■■))i)n)(.){■})■fail dot
  3616   |  6     (((((((■■)a)d)(■|■))i)n)(.){■})■fail dot
  3617   |  6     (((((((■■)a)d)(■){■})i)n)(.){■})■fail dot
  3618   |  6     (((((((■■)a)d)■)i)n)(.){■})(■■)fail dot
  3619   |  6     (((((((■■)a)d)■)i)n)(.){■})(■|■)fail dot
  3620   |  6     (((((((■■)a)d)■)i)n)(.){■})(■){■}fail dot
  3621   |  6     (((((((■■|■)a)d)■)i)n)(.){■})■fail dot
  3622   |  6     ((((((((■|■)|■)a)d)■)i)n)(.){■})■fail dot
  3623   |  6     ((((((((■){■}|■)a)d)■)i)n)(.){■})■fail dot
  3624   |  6     (((((((■|■)a)d)(■■))i)n)(.){■})■fail dot
  3625   |  6     (((((((■|■)a)d)(■|■))i)n)(.){■})■fail dot
  3626   |  6     (((((((■|■)a)d)(■){■})i)n)(.){■})■fail dot
  3627   |  6     (((((((■|■)a)d)■)i)n)(.){■})(■■)fail dot
  3628   |  6     (((((((■|■)a)d)■)i)n)(.){■})(■|■)fail dot
  3629   |  6     (((((((■|■)a)d)■)i)n)(.){■})(■){■}fail dot
  3630   |  6     (((((((■■){■}a)d)■)i)n)(.){■})■fail dot
  3631   |  6     ((((((((■|■)){■}a)d)■)i)n)(.){■})■fail dot
  3632   |  6     ((((((((■){■}){■}a)d)■)i)n)(.){■})■fail dot
  3633   |  6     (((((((■){■}a)d)(■■))i)n)(.){■})■fail dot
  3634   |  6     (((((((■){■}a)d)(■|■))i)n)(.){■})■fail dot
  3635   |  6     (((((((■){■}a)d)(■){■})i)n)(.){■})■fail dot
  3636   |  6     (((((((■){■}a)d)■)i)n)(.){■})(■■)fail dot
  3637   |  6     (((((((■){■}a)d)■)i)n)(.){■})(■|■)fail dot
  3638   |  6     (((((((■){■}a)d)■)i)n)(.){■})(■){■}  unsatisfiable SAT formula       
  3639   |  6     ((((((■a)d)(■))i)n)(.){■})■fail dot
  3640   |  6     ((((((■a)d)((■■)■))i)n)(.){■})■fail dot
  3641   |  6     ((((((■a)d)((■|■)■))i)n)(.){■})■fail dot
  3642   |  6     ((((((■a)d)((■){■}■))i)n)(.){■})■fail dot
  3643   |  6     ((((((■a)d)(■■))i)n)(.){■})(■■)fail dot
  3644   |  6     ((((((■a)d)(■■))i)n)(.){■})(■|■)fail dot
  3645   |  6     ((((((■a)d)(■■))i)n)(.){■})(■){■}fail dot
  3646   |  6     ((((((■a)d)(■■|■))i)n)(.){■})■fail dot
  3647   |  6     ((((((■a)d)((■|■)|■))i)n)(.){■})■fail dot
  3648   |  6     ((((((■a)d)((■){■}|■))i)n)(.){■})■fail dot
  3649   |  6     ((((((■a)d)(■|■))i)n)(.){■})(■■)fail dot
  3650   |  6     ((((((■a)d)(■|■))i)n)(.){■})(■|■)fail dot
  3651   |  6     ((((((■a)d)(■|■))i)n)(.){■})(■){■}fail dot
  3652   |  6     ((((((■a)d)(■■){■})i)n)(.){■})■fail dot
  3653   |  6     ((((((■a)d)((■|■)){■})i)n)(.){■})■fail dot
  3654   |  6     ((((((■a)d)((■){■}){■})i)n)(.){■})■fail dot
  3655   |  6     ((((((■a)d)(■){■})i)n)(.){■})(■■)fail dot
  3656   |  6     ((((((■a)d)(■){■})i)n)(.){■})(■|■)fail dot
  3657   |  6     ((((((■a)d)(■){■})i)n)(.){■})(■){■}fail dot
  3658   |  6     ((((((■a)d)■)i)n)(.){■})(■)fail dot
  3659   |  6     ((((((■a)d)■)i)n)(.){■})((■■)■)fail dot
  3660   |  6     ((((((■a)d)■)i)n)(.){■})((■|■)■)fail dot
  3661   |  6     ((((((■a)d)■)i)n)(.){■})((■){■}■)fail dot
  3662   |  6     ((((((■a)d)■)i)n)(.){■})(■■|■)fail dot
  3663   |  6     ((((((■a)d)■)i)n)(.){■})((■|■)|■)fail dot
  3664   |  6     ((((((■a)d)■)i)n)(.){■})((■){■}|■)fail dot
  3665   |  6     ((((((■a)d)■)i)n)(.){■})(■■){■}fail dot
  3666   |  6     ((((((■a)d)■)i)n)(.){■})((■|■)){■}fail dot
  3667   |  6     ((((((■a)d)■)i)n)(.){■})((■){■}){■}fail dot
  3668   |  6     ((((((((■■))a)d)■)i)n)(.)*)■fail dot
  3669   |  6     ((((((((■|■))a)d)■)i)n)(.)*)■fail dot
  3670   |  6     ((((((((■){■})a)d)■)i)n)(.)*)■fail dot
  3671   |  6     (((((((■)a)d)(■■))i)n)(.)*)■fail dot
  3672   |  6     (((((((■)a)d)(■|■))i)n)(.)*)■fail dot
  3673   |  6     (((((((■)a)d)(■){■})i)n)(.)*)■fail dot
  3674   |  6     (((((((■)a)d)■)i)n)(.)*)(■■)fail dot
  3675   |  6     (((((((■)a)d)■)i)n)(.)*)(■|■)fail dot
  3676   |  6     (((((((■)a)d)■)i)n)(.)*)(■){■}fail dot
  3677   |  6     ((((((((■)■)a)d)■)i)n)(.)*)■fail dot
  3678   |  6     (((((((((■■)■)■)a)d)■)i)n)(.)*)■fail dot
  3679   |  6     (((((((((■|■)■)■)a)d)■)i)n)(.)*)■fail dot
  3680   |  6     (((((((((■){■}■)■)a)d)■)i)n)(.)*)■fail dot
  3681   |  6     ((((((((■■)(■■))a)d)■)i)n)(.)*)■fail dot
  3682   |  6     ((((((((■■)(■|■))a)d)■)i)n)(.)*)■fail dot
  3683   |  6     ((((((((■■)(■){■})a)d)■)i)n)(.)*)■fail dot
  3684   |  6     ((((((((■■)■)a)d)(■■))i)n)(.)*)■fail dot
  3685   |  6     ((((((((■■)■)a)d)(■|■))i)n)(.)*)■fail dot
  3686   |  6     ((((((((■■)■)a)d)(■){■})i)n)(.)*)■fail dot
  3687   |  6     ((((((((■■)■)a)d)■)i)n)(.)*)(■■)fail dot
  3688   |  6     ((((((((■■)■)a)d)■)i)n)(.)*)(■|■)fail dot
  3689   |  6     ((((((((■■)■)a)d)■)i)n)(.)*)(■){■}fail dot
  3690   |  6     ((((((((■■|■)■)a)d)■)i)n)(.)*)■fail dot
  3691   |  6     (((((((((■|■)|■)■)a)d)■)i)n)(.)*)■fail dot
  3692   |  6     (((((((((■){■}|■)■)a)d)■)i)n)(.)*)■fail dot
  3693   |  6     ((((((((■|■)(■■))a)d)■)i)n)(.)*)■fail dot
  3694   |  6     ((((((((■|■)(■|■))a)d)■)i)n)(.)*)■fail dot
  3695   |  6     ((((((((■|■)(■){■})a)d)■)i)n)(.)*)■fail dot
  3696   |  6     ((((((((■|■)■)a)d)(■■))i)n)(.)*)■fail dot
  3697   |  6     ((((((((■|■)■)a)d)(■|■))i)n)(.)*)■fail dot
  3698   |  6     ((((((((■|■)■)a)d)(■){■})i)n)(.)*)■fail dot
  3699   |  6     ((((((((■|■)■)a)d)■)i)n)(.)*)(■■)fail dot
  3700   |  6     ((((((((■|■)■)a)d)■)i)n)(.)*)(■|■)fail dot
  3701   |  6     ((((((((■|■)■)a)d)■)i)n)(.)*)(■){■}fail dot
  3702   |  6     ((((((((■■){■}■)a)d)■)i)n)(.)*)■fail dot
  3703   |  6     (((((((((■|■)){■}■)a)d)■)i)n)(.)*)■fail dot
  3704   |  6     (((((((((■){■}){■}■)a)d)■)i)n)(.)*)■fail dot
  3705   |  6     ((((((((■){■}(■■))a)d)■)i)n)(.)*)■fail dot
  3706   |  6     ((((((((■){■}(■|■))a)d)■)i)n)(.)*)■fail dot
  3707   |  6     ((((((((■){■}(■){■})a)d)■)i)n)(.)*)■fail dot
  3708   |  6     ((((((((■){■}■)a)d)(■■))i)n)(.)*)■fail dot
  3709   |  6     ((((((((■){■}■)a)d)(■|■))i)n)(.)*)■fail dot
  3710   |  6     ((((((((■){■}■)a)d)(■){■})i)n)(.)*)■fail dot
  3711   |  6     ((((((((■){■}■)a)d)■)i)n)(.)*)(■■)fail dot
  3712   |  6     ((((((((■){■}■)a)d)■)i)n)(.)*)(■|■)fail dot
  3713   |  6     ((((((((■){■}■)a)d)■)i)n)(.)*)(■){■}fail dot
  3714   |  6     (((((((■■)a)d)(■))i)n)(.)*)■fail dot
  3715   |  6     (((((((■■)a)d)((■■)■))i)n)(.)*)■fail dot
  3716   |  6     (((((((■■)a)d)((■|■)■))i)n)(.)*)■fail dot
  3717   |  6     (((((((■■)a)d)((■){■}■))i)n)(.)*)■fail dot
  3718   |  6     (((((((■■)a)d)(■■))i)n)(.)*)(■■)fail dot
  3719   |  6     (((((((■■)a)d)(■■))i)n)(.)*)(■|■)fail dot
  3720   |  6     (((((((■■)a)d)(■■))i)n)(.)*)(■){■}fail dot
  3721   |  6     (((((((■■)a)d)(■■|■))i)n)(.)*)■fail dot
  3722   |  6     (((((((■■)a)d)((■|■)|■))i)n)(.)*)■fail dot
  3723   |  6     (((((((■■)a)d)((■){■}|■))i)n)(.)*)■fail dot
  3724   |  6     (((((((■■)a)d)(■|■))i)n)(.)*)(■■)fail dot
  3725   |  6     (((((((■■)a)d)(■|■))i)n)(.)*)(■|■)fail dot
  3726   |  6     (((((((■■)a)d)(■|■))i)n)(.)*)(■){■}fail dot
  3727   |  6     (((((((■■)a)d)(■■){■})i)n)(.)*)■fail dot
  3728   |  6     (((((((■■)a)d)((■|■)){■})i)n)(.)*)■fail dot
  3729   |  6     (((((((■■)a)d)((■){■}){■})i)n)(.)*)■fail dot
  3730   |  6     (((((((■■)a)d)(■){■})i)n)(.)*)(■■)fail dot
  3731   |  6     (((((((■■)a)d)(■){■})i)n)(.)*)(■|■)fail dot
  3732   |  6     (((((((■■)a)d)(■){■})i)n)(.)*)(■){■}fail dot
  3733   |  6     (((((((■■)a)d)■)i)n)(.)*)(■)fail dot
  3734   |  6     (((((((■■)a)d)■)i)n)(.)*)((■■)■)fail dot
  3735   |  6     (((((((■■)a)d)■)i)n)(.)*)((■|■)■)fail dot
  3736   |  6     (((((((■■)a)d)■)i)n)(.)*)((■){■}■)fail dot
  3737   |  6     (((((((■■)a)d)■)i)n)(.)*)(■■|■)fail dot
  3738   |  6     (((((((■■)a)d)■)i)n)(.)*)((■|■)|■)fail dot
  3739   |  6     (((((((■■)a)d)■)i)n)(.)*)((■){■}|■)fail dot
  3740   |  6     (((((((■■)a)d)■)i)n)(.)*)(■■){■}fail dot
  3741   |  6     (((((((■■)a)d)■)i)n)(.)*)((■|■)){■}fail dot
  3742   |  6     (((((((■■)a)d)■)i)n)(.)*)((■){■}){■}fail dot
  3743   |  6     ((((((((■■)■|■)a)d)■)i)n)(.)*)■fail dot
  3744   |  6     ((((((((■|■)■|■)a)d)■)i)n)(.)*)■fail dot
  3745   |  6     ((((((((■){■}■|■)a)d)■)i)n)(.)*)■fail dot
  3746   |  6     (((((((■■|■■)a)d)■)i)n)(.)*)■fail dot
  3747   |  6     (((((((■■|(■|■))a)d)■)i)n)(.)*)■fail dot
  3748   |  6     (((((((■■|(■){■})a)d)■)i)n)(.)*)■fail dot
  3749   |  6     (((((((■■|■)a)d)(■■))i)n)(.)*)■fail dot
  3750   |  6     (((((((■■|■)a)d)(■|■))i)n)(.)*)■fail dot
  3751   |  6     (((((((■■|■)a)d)(■){■})i)n)(.)*)■fail dot
  3752   |  6     (((((((■■|■)a)d)■)i)n)(.)*)(■■)fail dot
  3753   |  6     (((((((■■|■)a)d)■)i)n)(.)*)(■|■)fail dot
  3754   |  6     (((((((■■|■)a)d)■)i)n)(.)*)(■){■}fail dot
  3755   |  6     ((((((((■■|■)|■)a)d)■)i)n)(.)*)■fail dot
  3756   |  6     (((((((((■|■)|■)|■)a)d)■)i)n)(.)*)■fail dot
  3757   |  6     (((((((((■){■}|■)|■)a)d)■)i)n)(.)*)■fail dot
  3758   |  6     ((((((((■|■)|■■)a)d)■)i)n)(.)*)■fail dot
  3759   |  6     ((((((((■|■)|(■|■))a)d)■)i)n)(.)*)■fail dot
  3760   |  6     ((((((((■|■)|(■){■})a)d)■)i)n)(.)*)■fail dot
  3761   |  6     ((((((((■|■)|■)a)d)(■■))i)n)(.)*)■fail dot
  3762   |  6     ((((((((■|■)|■)a)d)(■|■))i)n)(.)*)■fail dot
  3763   |  6     ((((((((■|■)|■)a)d)(■){■})i)n)(.)*)■fail dot
  3764   |  6     ((((((((■|■)|■)a)d)■)i)n)(.)*)(■■)fail dot
  3765   |  6     ((((((((■|■)|■)a)d)■)i)n)(.)*)(■|■)fail dot
  3766   |  6     ((((((((■|■)|■)a)d)■)i)n)(.)*)(■){■}fail dot
  3767   |  6     ((((((((■■){■}|■)a)d)■)i)n)(.)*)■fail dot
  3768   |  6     (((((((((■|■)){■}|■)a)d)■)i)n)(.)*)■fail dot
  3769   |  6     (((((((((■){■}){■}|■)a)d)■)i)n)(.)*)■fail dot
  3770   |  6     ((((((((■){■}|■■)a)d)■)i)n)(.)*)■fail dot
  3771   |  6     ((((((((■){■}|(■|■))a)d)■)i)n)(.)*)■fail dot
  3772   |  6     ((((((((■){■}|(■){■})a)d)■)i)n)(.)*)■fail dot
  3773   |  6     ((((((((■){■}|■)a)d)(■■))i)n)(.)*)■fail dot
  3774   |  6     ((((((((■){■}|■)a)d)(■|■))i)n)(.)*)■fail dot
  3775   |  6     ((((((((■){■}|■)a)d)(■){■})i)n)(.)*)■fail dot
  3776   |  6     ((((((((■){■}|■)a)d)■)i)n)(.)*)(■■)fail dot
  3777   |  6     ((((((((■){■}|■)a)d)■)i)n)(.)*)(■|■)fail dot
  3778   |  6     ((((((((■){■}|■)a)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3779   |  6     (((((((■|■)a)d)(■))i)n)(.)*)■fail dot
  3780   |  6     (((((((■|■)a)d)((■■)■))i)n)(.)*)■fail dot
  3781   |  6     (((((((■|■)a)d)((■|■)■))i)n)(.)*)■fail dot
  3782   |  6     (((((((■|■)a)d)((■){■}■))i)n)(.)*)■fail dot
  3783   |  6     (((((((■|■)a)d)(■■))i)n)(.)*)(■■)fail dot
  3784   |  6     (((((((■|■)a)d)(■■))i)n)(.)*)(■|■)fail dot
  3785   |  6     (((((((■|■)a)d)(■■))i)n)(.)*)(■){■}fail dot
  3786   |  6     (((((((■|■)a)d)(■■|■))i)n)(.)*)■fail dot
  3787   |  6     (((((((■|■)a)d)((■|■)|■))i)n)(.)*)■fail dot
  3788   |  6     (((((((■|■)a)d)((■){■}|■))i)n)(.)*)■fail dot
  3789   |  6     (((((((■|■)a)d)(■|■))i)n)(.)*)(■■)fail dot
  3790   |  6     (((((((■|■)a)d)(■|■))i)n)(.)*)(■|■)fail dot
  3791   |  6     (((((((■|■)a)d)(■|■))i)n)(.)*)(■){■}fail dot
  3792   |  6     (((((((■|■)a)d)(■■){■})i)n)(.)*)■fail dot
  3793   |  6     (((((((■|■)a)d)((■|■)){■})i)n)(.)*)■fail dot
  3794   |  6     (((((((■|■)a)d)((■){■}){■})i)n)(.)*)■fail dot
  3795   |  6     (((((((■|■)a)d)(■){■})i)n)(.)*)(■■)fail dot
  3796   |  6     (((((((■|■)a)d)(■){■})i)n)(.)*)(■|■)fail dot
  3797   |  6     (((((((■|■)a)d)(■){■})i)n)(.)*)(■){■}fail dot
  3798   |  6     (((((((■|■)a)d)■)i)n)(.)*)(■)fail dot
  3799   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■■)■)fail dot
  3800   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■|■)■)fail dot
  3801   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■){■}■)fail dot
  3802   |  6     (((((((■|■)a)d)■)i)n)(.)*)(■■|■)fail dot
  3803   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■|■)|■)fail dot
  3804   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■){■}|■)fail dot
  3805   |  6     (((((((■|■)a)d)■)i)n)(.)*)(■■){■}fail dot
  3806   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■|■)){■}fail dot
  3807   |  6     (((((((■|■)a)d)■)i)n)(.)*)((■){■}){■}fail dot
  3808   |  6     ((((((((■■)■){■}a)d)■)i)n)(.)*)■fail dot
  3809   |  6     ((((((((■|■)■){■}a)d)■)i)n)(.)*)■fail dot
  3810   |  6     ((((((((■){■}■){■}a)d)■)i)n)(.)*)■fail dot
  3811   |  6     (((((((■■){■}a)d)(■■))i)n)(.)*)■fail dot
  3812   |  6     (((((((■■){■}a)d)(■|■))i)n)(.)*)■fail dot
  3813   |  6     (((((((■■){■}a)d)(■){■})i)n)(.)*)■fail dot
  3814   |  6     (((((((■■){■}a)d)■)i)n)(.)*)(■■)fail dot
  3815   |  6     (((((((■■){■}a)d)■)i)n)(.)*)(■|■)fail dot
  3816   |  6     (((((((■■){■}a)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3817   |  6     ((((((((■■|■)){■}a)d)■)i)n)(.)*)■fail dot
  3818   |  6     (((((((((■|■)|■)){■}a)d)■)i)n)(.)*)■fail dot
  3819   |  6     (((((((((■){■}|■)){■}a)d)■)i)n)(.)*)■fail dot
  3820   |  6     ((((((((■|■)){■}a)d)(■■))i)n)(.)*)■fail dot
  3821   |  6     ((((((((■|■)){■}a)d)(■|■))i)n)(.)*)■fail dot
  3822   |  6     ((((((((■|■)){■}a)d)(■){■})i)n)(.)*)■fail dot
  3823   |  6     ((((((((■|■)){■}a)d)■)i)n)(.)*)(■■)fail dot
  3824   |  6     ((((((((■|■)){■}a)d)■)i)n)(.)*)(■|■)fail dot
  3825   |  6     ((((((((■|■)){■}a)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3826   |  6     ((((((((■■){■}){■}a)d)■)i)n)(.)*)■fail dot
  3827   |  6     (((((((((■|■)){■}){■}a)d)■)i)n)(.)*)■fail dot
  3828   |  6     (((((((((■){■}){■}){■}a)d)■)i)n)(.)*)■fail dot
  3829   |  6     ((((((((■){■}){■}a)d)(■■))i)n)(.)*)■fail dot
  3830   |  6     ((((((((■){■}){■}a)d)(■|■))i)n)(.)*)■fail dot
  3831   |  6     ((((((((■){■}){■}a)d)(■){■})i)n)(.)*)■fail dot
  3832   |  6     ((((((((■){■}){■}a)d)■)i)n)(.)*)(■■)fail dot
  3833   |  6     ((((((((■){■}){■}a)d)■)i)n)(.)*)(■|■)fail dot
  3834   |  6     ((((((((■){■}){■}a)d)■)i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3835   |  6     (((((((■){■}a)d)(■))i)n)(.)*)■fail dot
  3836   |  6     (((((((■){■}a)d)((■■)■))i)n)(.)*)■fail dot
  3837   |  6     (((((((■){■}a)d)((■|■)■))i)n)(.)*)■fail dot
  3838   |  6     (((((((■){■}a)d)((■){■}■))i)n)(.)*)■fail dot
  3839   |  6     (((((((■){■}a)d)(■■))i)n)(.)*)(■■)fail dot
  3840   |  6     (((((((■){■}a)d)(■■))i)n)(.)*)(■|■)fail dot
  3841   |  6     (((((((■){■}a)d)(■■))i)n)(.)*)(■){■}fail dot
  3842   |  6     (((((((■){■}a)d)(■■|■))i)n)(.)*)■fail dot
  3843   |  6     (((((((■){■}a)d)((■|■)|■))i)n)(.)*)■fail dot
  3844   |  6     (((((((■){■}a)d)((■){■}|■))i)n)(.)*)■fail dot
  3845   |  6     (((((((■){■}a)d)(■|■))i)n)(.)*)(■■)fail dot
  3846   |  6     (((((((■){■}a)d)(■|■))i)n)(.)*)(■|■)fail dot
  3847   |  6     (((((((■){■}a)d)(■|■))i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3848   |  6     (((((((■){■}a)d)(■■){■})i)n)(.)*)■fail dot
  3849   |  6     (((((((■){■}a)d)((■|■)){■})i)n)(.)*)■fail dot
  3850   |  6     (((((((■){■}a)d)((■){■}){■})i)n)(.)*)■fail dot
  3851   |  6     (((((((■){■}a)d)(■){■})i)n)(.)*)(■■)fail dot
  3852   |  6     (((((((■){■}a)d)(■){■})i)n)(.)*)(■|■)fail dot
  3853   |  6     (((((((■){■}a)d)(■){■})i)n)(.)*)(■){■}  unsatisfiable SAT formula       
  3854   |  6     (((((((■){■}a)d)■)i)n)(.)*)(■)fail dot
  3855   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■■)■)fail dot
  3856   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■|■)■)fail dot
  3857   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■){■}■)fail dot
  3858   |  6     (((((((■){■}a)d)■)i)n)(.)*)(■■|■)fail dot
  3859   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■|■)|■)fail dot
  3860   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  3861   |  6     (((((((■){■}a)d)■)i)n)(.)*)(■■){■}  unsatisfiable SAT formula       
  3862   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■|■)){■}fail solve
  3863   |  6     (((((((■){■}a)d)■)i)n)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  3864   |  6     ((((((■a)d)((■■)))i)n)(.)*)■fail dot
  3865   |  6     ((((((■a)d)((■|■)))i)n)(.)*)■fail dot
  3866   |  6     ((((((■a)d)((■){■}))i)n)(.)*)■fail dot
  3867   |  6     ((((((■a)d)(■))i)n)(.)*)(■■)fail dot
  3868   |  6     ((((((■a)d)(■))i)n)(.)*)(■|■)fail dot
  3869   |  6     ((((((■a)d)(■))i)n)(.)*)(■){■}fail dot
  3870   |  6     ((((((■a)d)((■)■))i)n)(.)*)■fail dot
  3871   |  6     ((((((■a)d)(((■■)■)■))i)n)(.)*)■fail dot
  3872   |  6     ((((((■a)d)(((■|■)■)■))i)n)(.)*)■fail dot
  3873   |  6     ((((((■a)d)(((■){■}■)■))i)n)(.)*)■fail dot
  3874   |  6     ((((((■a)d)((■■)(■■)))i)n)(.)*)■fail dot
  3875   |  6     ((((((■a)d)((■■)(■|■)))i)n)(.)*)■fail dot
  3876   |  6     ((((((■a)d)((■■)(■){■}))i)n)(.)*)■fail dot
  3877   |  6     ((((((■a)d)((■■)■))i)n)(.)*)(■■)fail dot
  3878   |  6     ((((((■a)d)((■■)■))i)n)(.)*)(■|■)fail dot
  3879   |  6     ((((((■a)d)((■■)■))i)n)(.)*)(■){■}fail dot
  3880   |  6     ((((((■a)d)((■■|■)■))i)n)(.)*)■fail dot
  3881   |  6     ((((((■a)d)(((■|■)|■)■))i)n)(.)*)■fail dot
  3882   |  6     ((((((■a)d)(((■){■}|■)■))i)n)(.)*)■fail dot
  3883   |  6     ((((((■a)d)((■|■)(■■)))i)n)(.)*)■fail dot
  3884   |  6     ((((((■a)d)((■|■)(■|■)))i)n)(.)*)■fail dot
  3885   |  6     ((((((■a)d)((■|■)(■){■}))i)n)(.)*)■fail dot
  3886   |  6     ((((((■a)d)((■|■)■))i)n)(.)*)(■■)fail dot
  3887   |  6     ((((((■a)d)((■|■)■))i)n)(.)*)(■|■)fail dot
  3888   |  6     ((((((■a)d)((■|■)■))i)n)(.)*)(■){■}fail dot
  3889   |  6     ((((((■a)d)((■■){■}■))i)n)(.)*)■fail dot
  3890   |  6     ((((((■a)d)(((■|■)){■}■))i)n)(.)*)■fail dot
  3891   |  6     ((((((■a)d)(((■){■}){■}■))i)n)(.)*)■fail dot
  3892   |  6     ((((((■a)d)((■){■}(■■)))i)n)(.)*)■fail dot
  3893   |  6     ((((((■a)d)((■){■}(■|■)))i)n)(.)*)■fail dot
  3894   |  6     ((((((■a)d)((■){■}(■){■}))i)n)(.)*)■fail dot
  3895   |  6     ((((((■a)d)((■){■}■))i)n)(.)*)(■■)fail dot
  3896   |  6     ((((((■a)d)((■){■}■))i)n)(.)*)(■|■)fail dot
  3897   |  6     ((((((■a)d)((■){■}■))i)n)(.)*)(■){■}fail dot
  3898   |  6     ((((((■a)d)(■■))i)n)(.)*)(■)fail dot
  3899   |  6     ((((((■a)d)(■■))i)n)(.)*)((■■)■)fail dot
  3900   |  6     ((((((■a)d)(■■))i)n)(.)*)((■|■)■)fail dot
  3901   |  6     ((((((■a)d)(■■))i)n)(.)*)((■){■}■)fail dot
  3902   |  6     ((((((■a)d)(■■))i)n)(.)*)(■■|■)fail dot
  3903   |  6     ((((((■a)d)(■■))i)n)(.)*)((■|■)|■)fail dot
  3904   |  6     ((((((■a)d)(■■))i)n)(.)*)((■){■}|■)fail dot
  3905   |  6     ((((((■a)d)(■■))i)n)(.)*)(■■){■}fail dot
  3906   |  6     ((((((■a)d)(■■))i)n)(.)*)((■|■)){■}fail dot
  3907   |  6     ((((((■a)d)(■■))i)n)(.)*)((■){■}){■}fail dot
  3908   |  6     ((((((■a)d)((■■)■|■))i)n)(.)*)■fail dot
  3909   |  6     ((((((■a)d)((■|■)■|■))i)n)(.)*)■fail dot
  3910   |  6     ((((((■a)d)((■){■}■|■))i)n)(.)*)■fail dot
  3911   |  6     ((((((■a)d)(■■|■■))i)n)(.)*)■fail dot
  3912   |  6     ((((((■a)d)(■■|(■|■)))i)n)(.)*)■fail dot
  3913   |  6     ((((((■a)d)(■■|(■){■}))i)n)(.)*)■fail dot
  3914   |  6     ((((((■a)d)(■■|■))i)n)(.)*)(■■)fail dot
  3915   |  6     ((((((■a)d)(■■|■))i)n)(.)*)(■|■)fail dot
  3916   |  6     ((((((■a)d)(■■|■))i)n)(.)*)(■){■}fail dot
  3917   |  6     ((((((■a)d)((■■|■)|■))i)n)(.)*)■fail dot
  3918   |  6     ((((((■a)d)(((■|■)|■)|■))i)n)(.)*)■fail dot
  3919   |  6     ((((((■a)d)(((■){■}|■)|■))i)n)(.)*)■fail dot
  3920   |  6     ((((((■a)d)((■|■)|■■))i)n)(.)*)■fail dot
  3921   |  6     ((((((■a)d)((■|■)|(■|■)))i)n)(.)*)■fail dot
  3922   |  6     ((((((■a)d)((■|■)|(■){■}))i)n)(.)*)■fail dot
  3923   |  6     ((((((■a)d)((■|■)|■))i)n)(.)*)(■■)fail dot
  3924   |  6     ((((((■a)d)((■|■)|■))i)n)(.)*)(■|■)fail dot
  3925   |  6     ((((((■a)d)((■|■)|■))i)n)(.)*)(■){■}fail dot
  3926   |  6     ((((((■a)d)((■■){■}|■))i)n)(.)*)■fail dot
  3927   |  6     ((((((■a)d)(((■|■)){■}|■))i)n)(.)*)■fail dot
  3928   |  6     ((((((■a)d)(((■){■}){■}|■))i)n)(.)*)■fail dot
  3929   |  6     ((((((■a)d)((■){■}|■■))i)n)(.)*)■fail dot
  3930   |  6     ((((((■a)d)((■){■}|(■|■)))i)n)(.)*)■fail dot
  3931   |  6     ((((((■a)d)((■){■}|(■){■}))i)n)(.)*)■fail dot
  3932   |  6     ((((((■a)d)((■){■}|■))i)n)(.)*)(■■)fail dot
  3933   |  6     ((((((■a)d)((■){■}|■))i)n)(.)*)(■|■)fail dot
  3934   |  6     ((((((■a)d)((■){■}|■))i)n)(.)*)(■){■}fail dot
  3935   |  6     ((((((■a)d)(■|■))i)n)(.)*)(■)fail dot
  3936   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■■)■)fail dot
  3937   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■|■)■)fail dot
  3938   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■){■}■)fail dot
  3939   |  6     ((((((■a)d)(■|■))i)n)(.)*)(■■|■)fail dot
  3940   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■|■)|■)fail dot
  3941   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■){■}|■)fail dot
  3942   |  6     ((((((■a)d)(■|■))i)n)(.)*)(■■){■}fail dot
  3943   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■|■)){■}fail dot
  3944   |  6     ((((((■a)d)(■|■))i)n)(.)*)((■){■}){■}fail dot
  3945   |  6     ((((((■a)d)((■■)■){■})i)n)(.)*)■fail dot
  3946   |  6     ((((((■a)d)((■|■)■){■})i)n)(.)*)■fail dot
  3947   |  6     ((((((■a)d)((■){■}■){■})i)n)(.)*)■fail dot
  3948   |  6     ((((((■a)d)(■■){■})i)n)(.)*)(■■)fail dot
  3949   |  6     ((((((■a)d)(■■){■})i)n)(.)*)(■|■)fail dot
  3950   |  6     ((((((■a)d)(■■){■})i)n)(.)*)(■){■}fail dot
  3951   |  6     ((((((■a)d)((■■|■)){■})i)n)(.)*)■fail dot
  3952   |  6     ((((((■a)d)(((■|■)|■)){■})i)n)(.)*)■fail dot
  3953   |  6     ((((((■a)d)(((■){■}|■)){■})i)n)(.)*)■fail dot
  3954   |  6     ((((((■a)d)((■|■)){■})i)n)(.)*)(■■)fail dot
  3955   |  6     ((((((■a)d)((■|■)){■})i)n)(.)*)(■|■)fail dot
  3956   |  6     ((((((■a)d)((■|■)){■})i)n)(.)*)(■){■}fail dot
  3957   |  6     ((((((■a)d)((■■){■}){■})i)n)(.)*)■fail dot
  3958   |  6     ((((((■a)d)(((■|■)){■}){■})i)n)(.)*)■fail dot
  3959   |  6     ((((((■a)d)(((■){■}){■}){■})i)n)(.)*)■fail dot
  3960   |  6     ((((((■a)d)((■){■}){■})i)n)(.)*)(■■)fail dot
  3961   |  6     ((((((■a)d)((■){■}){■})i)n)(.)*)(■|■)fail dot
  3962   |  6     ((((((■a)d)((■){■}){■})i)n)(.)*)(■){■}fail dot
  3963   |  6     ((((((■a)d)(■){■})i)n)(.)*)(■)fail dot
  3964   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■■)■)fail dot
  3965   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■|■)■)fail dot
  3966   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■){■}■)fail dot
  3967   |  6     ((((((■a)d)(■){■})i)n)(.)*)(■■|■)fail dot
  3968   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■|■)|■)fail dot
  3969   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■){■}|■)fail dot
  3970   |  6     ((((((■a)d)(■){■})i)n)(.)*)(■■){■}fail dot
  3971   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■|■)){■}fail dot
  3972   |  6     ((((((■a)d)(■){■})i)n)(.)*)((■){■}){■}fail dot
  3973   |  6     ((((((■a)d)■)i)n)(.)*)((■■))fail dot
  3974   |  6     ((((((■a)d)■)i)n)(.)*)((■|■))fail dot
  3975   |  6     ((((((■a)d)■)i)n)(.)*)((■){■})fail dot
  3976   |  6     ((((((■a)d)■)i)n)(.)*)((■)■)fail dot
  3977   |  6     ((((((■a)d)■)i)n)(.)*)(((■■)■)■)fail dot
  3978   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)■)■)fail dot
  3979   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}■)■)fail dot
  3980   |  6     ((((((■a)d)■)i)n)(.)*)((■■)(■■))fail dot
  3981   |  6     ((((((■a)d)■)i)n)(.)*)((■■)(■|■))fail dot
  3982   |  6     ((((((■a)d)■)i)n)(.)*)((■■)(■){■})fail dot
  3983   |  6     ((((((■a)d)■)i)n)(.)*)((■■|■)■)fail dot
  3984   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)|■)■)fail dot
  3985   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}|■)■)fail dot
  3986   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)(■■))fail dot
  3987   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)(■|■))fail dot
  3988   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)(■){■})fail dot
  3989   |  6     ((((((■a)d)■)i)n)(.)*)((■■){■}■)fail dot
  3990   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)){■}■)fail dot
  3991   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}){■}■)fail dot
  3992   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}(■■))fail dot
  3993   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}(■|■))fail dot
  3994   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}(■){■})fail dot
  3995   |  6     ((((((■a)d)■)i)n)(.)*)((■■)■|■)fail dot
  3996   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)■|■)fail dot
  3997   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}■|■)fail dot
  3998   |  6     ((((((■a)d)■)i)n)(.)*)(■■|■■)fail dot
  3999   |  6     ((((((■a)d)■)i)n)(.)*)(■■|(■|■))fail dot
  4000   |  6     ((((((■a)d)■)i)n)(.)*)(■■|(■){■})fail dot
  4001   |  6     ((((((■a)d)■)i)n)(.)*)((■■|■)|■)fail dot
  4002   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)|■)|■)fail dot
  4003   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}|■)|■)fail dot
  4004   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)|■■)fail dot
  4005   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)|(■|■))fail dot
  4006   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)|(■){■})fail dot
  4007   |  6     ((((((■a)d)■)i)n)(.)*)((■■){■}|■)fail dot
  4008   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)){■}|■)fail dot
  4009   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}){■}|■)fail dot
  4010   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}|■■)fail dot
  4011   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}|(■|■))fail dot
  4012   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}|(■){■})fail dot
  4013   |  6     ((((((■a)d)■)i)n)(.)*)((■■)■){■}fail dot
  4014   |  6     ((((((■a)d)■)i)n)(.)*)((■|■)■){■}fail dot
  4015   |  6     ((((((■a)d)■)i)n)(.)*)((■){■}■){■}fail dot
  4016   |  6     ((((((■a)d)■)i)n)(.)*)((■■|■)){■}fail dot
  4017   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)|■)){■}fail dot
  4018   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}|■)){■}fail dot
  4019   |  6     ((((((■a)d)■)i)n)(.)*)((■■){■}){■}fail dot
  4020   |  6     ((((((■a)d)■)i)n)(.)*)(((■|■)){■}){■}fail dot
  4021   |  6     ((((((■a)d)■)i)n)(.)*)(((■){■}){■}){■}fail dot
  4022   |  6     ((((((■a)d)m)■)■)(■){■})■fail dot
  4023   |  6     (((((((■■)a)d)m)■)■)(■)*)■fail dot
  4024   |  6     (((((((■|■)a)d)m)■)■)(■)*)■fail dot
  4025   |  6     (((((((■){■}a)d)m)■)■)(■)*)■fail dot
  4026   |  6     ((((((■a)d)m)(■■))■)(■)*)■fail dot
  4027   |  6     ((((((■a)d)m)(■|■))■)(■)*)■fail dot
  4028   |  6     ((((((■a)d)m)(■){■})■)(■)*)■fail dot
  4029   |  6     ((((((■a)d)m)■)(■■))(■)*)■fail dot
  4030   |  6     ((((((■a)d)m)■)(■|■))(■)*)■fail dot
  4031   |  6     ((((((■a)d)m)■)(■){■})(■)*)■fail dot
  4032   |  6     ((((((■a)d)m)■)■)(■■)*)■fail dot
  4033   |  6     ((((((■a)d)m)■)■)((■|■))*)■fail dot
  4034   |  6     ((((((■a)d)m)■)■)((■){■})*)■fail dot
  4035   |  6     ((((((■a)d)m)■)■)(■)*)(■■)fail dot
  4036   |  6     ((((((■a)d)m)■)■)(■)*)(■|■)fail dot
  4037   |  6     ((((((■a)d)m)■)■)(■)*)(■){■}fail dot
  4038   |  6     ((((((■a)d)m)■)■)■)■    fail dot
  4039   |  6     (((((((■■)a)d)m)■)■)(.){■})■fail dot
  4040   |  6     (((((((■|■)a)d)m)■)■)(.){■})■fail dot
  4041   |  6     (((((((■){■}a)d)m)■)■)(.){■})■fail dot
  4042   |  6     ((((((■a)d)m)(■■))■)(.){■})■fail dot
  4043   |  6     ((((((■a)d)m)(■|■))■)(.){■})■fail dot
  4044   |  6     ((((((■a)d)m)(■){■})■)(.){■})■fail dot
  4045   |  6     ((((((■a)d)m)■)(■■))(.){■})■fail dot
  4046   |  6     ((((((■a)d)m)■)(■|■))(.){■})■fail dot
  4047   |  6     ((((((■a)d)m)■)(■){■})(.){■})■fail dot
  4048   |  6     ((((((■a)d)m)■)■)(.){■})(■■)fail dot
  4049   |  6     ((((((■a)d)m)■)■)(.){■})(■|■)fail dot
  4050   |  6     ((((((■a)d)m)■)■)(.){■})(■){■}fail dot
  4051   |  6     (((((((■)a)d)m)■)■)(.)*)■fail dot
  4052   |  6     ((((((((■■)■)a)d)m)■)■)(.)*)■fail dot
  4053   |  6     ((((((((■|■)■)a)d)m)■)■)(.)*)■fail dot
  4054   |  6     ((((((((■){■}■)a)d)m)■)■)(.)*)■fail dot
  4055   |  6     (((((((■■)a)d)m)(■■))■)(.)*)■fail dot
  4056   |  6     (((((((■■)a)d)m)(■|■))■)(.)*)■fail dot
  4057   |  6     (((((((■■)a)d)m)(■){■})■)(.)*)■fail dot
  4058   |  6     (((((((■■)a)d)m)■)(■■))(.)*)■fail dot
  4059   |  6     (((((((■■)a)d)m)■)(■|■))(.)*)■fail dot
  4060   |  6     (((((((■■)a)d)m)■)(■){■})(.)*)■fail dot
  4061   |  6     (((((((■■)a)d)m)■)■)(.)*)(■■)fail dot
  4062   |  6     (((((((■■)a)d)m)■)■)(.)*)(■|■)fail dot
  4063   |  6     (((((((■■)a)d)m)■)■)(.)*)(■){■}fail dot
  4064   |  6     (((((((■■|■)a)d)m)■)■)(.)*)■fail dot
  4065   |  6     ((((((((■|■)|■)a)d)m)■)■)(.)*)■fail dot
  4066   |  6     ((((((((■){■}|■)a)d)m)■)■)(.)*)■fail dot
  4067   |  6     (((((((■|■)a)d)m)(■■))■)(.)*)■fail dot
  4068   |  6     (((((((■|■)a)d)m)(■|■))■)(.)*)■fail dot
  4069   |  6     (((((((■|■)a)d)m)(■){■})■)(.)*)■fail dot
  4070   |  6     (((((((■|■)a)d)m)■)(■■))(.)*)■fail dot
  4071   |  6     (((((((■|■)a)d)m)■)(■|■))(.)*)■fail dot
  4072   |  6     (((((((■|■)a)d)m)■)(■){■})(.)*)■fail dot
  4073   |  6     (((((((■|■)a)d)m)■)■)(.)*)(■■)fail dot
  4074   |  6     (((((((■|■)a)d)m)■)■)(.)*)(■|■)fail dot
  4075   |  6     (((((((■|■)a)d)m)■)■)(.)*)(■){■}fail dot
  4076   |  6     (((((((■■){■}a)d)m)■)■)(.)*)■fail dot
  4077   |  6     ((((((((■|■)){■}a)d)m)■)■)(.)*)■fail dot
  4078   |  6     ((((((((■){■}){■}a)d)m)■)■)(.)*)■fail dot
  4079   |  6     (((((((■){■}a)d)m)(■■))■)(.)*)■fail dot
  4080   |  6     (((((((■){■}a)d)m)(■|■))■)(.)*)■fail dot
  4081   |  6     (((((((■){■}a)d)m)(■){■})■)(.)*)■  unsatisfiable SAT formula       
  4082   |  6     (((((((■){■}a)d)m)■)(■■))(.)*)■fail dot
  4083   |  6     (((((((■){■}a)d)m)■)(■|■))(.)*)■fail dot
  4084   |  6     (((((((■){■}a)d)m)■)(■){■})(.)*)■  unsatisfiable SAT formula       
  4085   |  6     (((((((■){■}a)d)m)■)■)(.)*)(■■)fail dot
  4086   |  6     (((((((■){■}a)d)m)■)■)(.)*)(■|■)fail dot
  4087   |  6     (((((((■){■}a)d)m)■)■)(.)*)(■){■}  unsatisfiable SAT formula       
  4088   |  6     ((((((■a)d)m)(■))■)(.)*)■fail dot
  4089   |  6     ((((((■a)d)m)((■■)■))■)(.)*)■fail dot
  4090   |  6     ((((((■a)d)m)((■|■)■))■)(.)*)■fail dot
  4091   |  6     ((((((■a)d)m)((■){■}■))■)(.)*)■fail dot
  4092   |  6     ((((((■a)d)m)(■■))(■■))(.)*)■fail dot
  4093   |  6     ((((((■a)d)m)(■■))(■|■))(.)*)■fail dot
  4094   |  6     ((((((■a)d)m)(■■))(■){■})(.)*)■fail dot
  4095   |  6     ((((((■a)d)m)(■■))■)(.)*)(■■)fail dot
  4096   |  6     ((((((■a)d)m)(■■))■)(.)*)(■|■)fail dot
  4097   |  6     ((((((■a)d)m)(■■))■)(.)*)(■){■}fail dot
  4098   |  6     ((((((■a)d)m)(■■|■))■)(.)*)■fail dot
  4099   |  6     ((((((■a)d)m)((■|■)|■))■)(.)*)■fail dot
  4100   |  6     ((((((■a)d)m)((■){■}|■))■)(.)*)■fail dot
  4101   |  6     ((((((■a)d)m)(■|■))(■■))(.)*)■fail dot
  4102   |  6     ((((((■a)d)m)(■|■))(■|■))(.)*)■fail dot
  4103   |  6     ((((((■a)d)m)(■|■))(■){■})(.)*)■fail dot
  4104   |  6     ((((((■a)d)m)(■|■))■)(.)*)(■■)fail dot
  4105   |  6     ((((((■a)d)m)(■|■))■)(.)*)(■|■)fail dot
  4106   |  6     ((((((■a)d)m)(■|■))■)(.)*)(■){■}fail dot
  4107   |  6     ((((((■a)d)m)(■■){■})■)(.)*)■fail dot
  4108   |  6     ((((((■a)d)m)((■|■)){■})■)(.)*)■fail dot
  4109   |  6     ((((((■a)d)m)((■){■}){■})■)(.)*)■fail dot
  4110   |  6     ((((((■a)d)m)(■){■})(■■))(.)*)■fail dot
  4111   |  6     ((((((■a)d)m)(■){■})(■|■))(.)*)■fail dot
  4112   |  6     ((((((■a)d)m)(■){■})(■){■})(.)*)■fail dot
  4113   |  6     ((((((■a)d)m)(■){■})■)(.)*)(■■)fail dot
  4114   |  6     ((((((■a)d)m)(■){■})■)(.)*)(■|■)fail dot
  4115   |  6     ((((((■a)d)m)(■){■})■)(.)*)(■){■}fail dot
  4116   |  6     ((((((■a)d)m)■)(■))(.)*)■fail dot
  4117   |  6     ((((((■a)d)m)■)((■■)■))(.)*)■fail dot
  4118   |  6     ((((((■a)d)m)■)((■|■)■))(.)*)■fail dot
  4119   |  6     ((((((■a)d)m)■)((■){■}■))(.)*)■fail dot
  4120   |  6     ((((((■a)d)m)■)(■■))(.)*)(■■)fail dot
  4121   |  6     ((((((■a)d)m)■)(■■))(.)*)(■|■)fail dot
  4122   |  6     ((((((■a)d)m)■)(■■))(.)*)(■){■}fail dot
  4123   |  6     ((((((■a)d)m)■)(■■|■))(.)*)■fail dot
  4124   |  6     ((((((■a)d)m)■)((■|■)|■))(.)*)■fail dot
  4125   |  6     ((((((■a)d)m)■)((■){■}|■))(.)*)■fail dot
  4126   |  6     ((((((■a)d)m)■)(■|■))(.)*)(■■)fail dot
  4127   |  6     ((((((■a)d)m)■)(■|■))(.)*)(■|■)fail dot
  4128   |  6     ((((((■a)d)m)■)(■|■))(.)*)(■){■}fail dot
  4129   |  6     ((((((■a)d)m)■)(■■){■})(.)*)■fail dot
  4130   |  6     ((((((■a)d)m)■)((■|■)){■})(.)*)■fail dot
  4131   |  6     ((((((■a)d)m)■)((■){■}){■})(.)*)■fail dot
  4132   |  6     ((((((■a)d)m)■)(■){■})(.)*)(■■)fail dot
  4133   |  6     ((((((■a)d)m)■)(■){■})(.)*)(■|■)fail dot
  4134   |  6     ((((((■a)d)m)■)(■){■})(.)*)(■){■}fail dot
  4135   |  6     ((((((■a)d)m)■)■)(.)*)(■)fail dot
  4136   |  6     ((((((■a)d)m)■)■)(.)*)((■■)■)fail dot
  4137   |  6     ((((((■a)d)m)■)■)(.)*)((■|■)■)fail dot
  4138   |  6     ((((((■a)d)m)■)■)(.)*)((■){■}■)fail dot
  4139   |  6     ((((((■a)d)m)■)■)(.)*)(■■|■)fail dot
  4140   |  6     ((((((■a)d)m)■)■)(.)*)((■|■)|■)fail dot
  4141   |  6     ((((((■a)d)m)■)■)(.)*)((■){■}|■)fail dot
  4142   |  6     ((((((■a)d)m)■)■)(.)*)(■■){■}fail dot
  4143   |  6     ((((((■a)d)m)■)■)(.)*)((■|■)){■}fail dot
  4144   |  6     ((((((■a)d)m)■)■)(.)*)((■){■}){■}fail dot
  4145   |  6     (((((((■■)a)d)m)■)n)(■){■})■fail dot
  4146   |  6     (((((((■|■)a)d)m)■)n)(■){■})■fail dot
  4147   |  6     (((((((■){■}a)d)m)■)n)(■){■})■fail dot
  4148   |  6     ((((((■a)d)m)(■■))n)(■){■})■fail dot
  4149   |  6     ((((((■a)d)m)(■|■))n)(■){■})■fail dot
  4150   |  6     ((((((■a)d)m)(■){■})n)(■){■})■fail dot
  4151   |  6     ((((((■a)d)m)■)n)(■■){■})■fail dot
  4152   |  6     ((((((■a)d)m)■)n)((■|■)){■})■fail dot
  4153   |  6     ((((((■a)d)m)■)n)((■){■}){■})■fail dot
  4154   |  6     ((((((■a)d)m)■)n)(■){■})(■■)fail dot
  4155   |  6     ((((((■a)d)m)■)n)(■){■})(■|■)fail dot
  4156   |  6     ((((((■a)d)m)■)n)(■){■})(■){■}fail dot
  4157   |  6     (((((((■)a)d)m)■)n)(■)*)■fail dot
  4158   |  6     ((((((((■■)■)a)d)m)■)n)(■)*)■fail dot
  4159   |  6     ((((((((■|■)■)a)d)m)■)n)(■)*)■fail dot
  4160   |  6     ((((((((■){■}■)a)d)m)■)n)(■)*)■fail dot
  4161   |  6     (((((((■■)a)d)m)(■■))n)(■)*)■fail dot
  4162   |  6     (((((((■■)a)d)m)(■|■))n)(■)*)■fail dot
  4163   |  6     (((((((■■)a)d)m)(■){■})n)(■)*)■fail dot
  4164   |  6     (((((((■■)a)d)m)■)n)(■■)*)■fail dot
  4165   |  6     (((((((■■)a)d)m)■)n)((■|■))*)■fail dot
  4166   |  6     (((((((■■)a)d)m)■)n)((■){■})*)■fail dot
  4167   |  6     (((((((■■)a)d)m)■)n)(■)*)(■■)fail dot
  4168   |  6     (((((((■■)a)d)m)■)n)(■)*)(■|■)fail dot
  4169   |  6     (((((((■■)a)d)m)■)n)(■)*)(■){■}fail dot
  4170   |  6     (((((((■■|■)a)d)m)■)n)(■)*)■fail dot
  4171   |  6     ((((((((■|■)|■)a)d)m)■)n)(■)*)■fail dot
  4172   |  6     ((((((((■){■}|■)a)d)m)■)n)(■)*)■fail dot
  4173   |  6     (((((((■|■)a)d)m)(■■))n)(■)*)■fail dot
  4174   |  6     (((((((■|■)a)d)m)(■|■))n)(■)*)■fail dot
  4175   |  6     (((((((■|■)a)d)m)(■){■})n)(■)*)■fail dot
  4176   |  6     (((((((■|■)a)d)m)■)n)(■■)*)■fail dot
  4177   |  6     (((((((■|■)a)d)m)■)n)((■|■))*)■fail dot
  4178   |  6     (((((((■|■)a)d)m)■)n)((■){■})*)■fail dot
  4179   |  6     (((((((■|■)a)d)m)■)n)(■)*)(■■)fail dot
  4180   |  6     (((((((■|■)a)d)m)■)n)(■)*)(■|■)fail dot
  4181   |  6     (((((((■|■)a)d)m)■)n)(■)*)(■){■}fail dot
  4182   |  6     (((((((■■){■}a)d)m)■)n)(■)*)■fail dot
  4183   |  6     ((((((((■|■)){■}a)d)m)■)n)(■)*)■fail dot
  4184   |  6     ((((((((■){■}){■}a)d)m)■)n)(■)*)■fail dot
  4185   |  6     (((((((■){■}a)d)m)(■■))n)(■)*)■fail dot
  4186   |  6     (((((((■){■}a)d)m)(■|■))n)(■)*)■fail dot
  4187   |  6     (((((((■){■}a)d)m)(■){■})n)(■)*)■fail dot
  4188   |  6     (((((((■){■}a)d)m)■)n)(■■)*)■fail dot
  4189   |  6     (((((((■){■}a)d)m)■)n)((■|■))*)■fail dot
  4190   |  6     (((((((■){■}a)d)m)■)n)((■){■})*)■fail dot
  4191   |  6     (((((((■){■}a)d)m)■)n)(■)*)(■■)fail dot
  4192   |  6     (((((((■){■}a)d)m)■)n)(■)*)(■|■)fail dot
  4193   |  6     (((((((■){■}a)d)m)■)n)(■)*)(■){■}  unsatisfiable SAT formula       
  4194   |  6     ((((((■a)d)m)(■))n)(■)*)■fail dot
  4195   |  6     ((((((■a)d)m)((■■)■))n)(■)*)■fail dot
  4196   |  6     ((((((■a)d)m)((■|■)■))n)(■)*)■fail dot
  4197   |  6     ((((((■a)d)m)((■){■}■))n)(■)*)■fail dot
  4198   |  6     ((((((■a)d)m)(■■))n)(■■)*)■fail dot
  4199   |  6     ((((((■a)d)m)(■■))n)((■|■))*)■fail dot
  4200   |  6     ((((((■a)d)m)(■■))n)((■){■})*)■fail dot
  4201   |  6     ((((((■a)d)m)(■■))n)(■)*)(■■)fail dot
  4202   |  6     ((((((■a)d)m)(■■))n)(■)*)(■|■)fail dot
  4203   |  6     ((((((■a)d)m)(■■))n)(■)*)(■){■}fail dot
  4204   |  6     ((((((■a)d)m)(■■|■))n)(■)*)■fail dot
  4205   |  6     ((((((■a)d)m)((■|■)|■))n)(■)*)■fail dot
  4206   |  6     ((((((■a)d)m)((■){■}|■))n)(■)*)■fail dot
  4207   |  6     ((((((■a)d)m)(■|■))n)(■■)*)■fail dot
  4208   |  6     ((((((■a)d)m)(■|■))n)((■|■))*)■fail dot
  4209   |  6     ((((((■a)d)m)(■|■))n)((■){■})*)■fail dot
  4210   |  6     ((((((■a)d)m)(■|■))n)(■)*)(■■)fail dot
  4211   |  6     ((((((■a)d)m)(■|■))n)(■)*)(■|■)fail dot
  4212   |  6     ((((((■a)d)m)(■|■))n)(■)*)(■){■}fail dot
  4213   |  6     ((((((■a)d)m)(■■){■})n)(■)*)■fail dot
  4214   |  6     ((((((■a)d)m)((■|■)){■})n)(■)*)■fail dot
  4215   |  6     ((((((■a)d)m)((■){■}){■})n)(■)*)■fail dot
  4216   |  6     ((((((■a)d)m)(■){■})n)(■■)*)■fail dot
  4217   |  6     ((((((■a)d)m)(■){■})n)((■|■))*)■fail dot
  4218   |  6     ((((((■a)d)m)(■){■})n)((■){■})*)■fail dot
  4219   |  6     ((((((■a)d)m)(■){■})n)(■)*)(■■)fail dot
  4220   |  6     ((((((■a)d)m)(■){■})n)(■)*)(■|■)fail dot
  4221   |  6     ((((((■a)d)m)(■){■})n)(■)*)(■){■}fail dot
  4222   |  6     ((((((■a)d)m)■)n)((■■)■)*)■fail dot
  4223   |  6     ((((((■a)d)m)■)n)((■|■)■)*)■fail dot
  4224   |  6     ((((((■a)d)m)■)n)((■){■}■)*)■fail dot
  4225   |  6     ((((((■a)d)m)■)n)(■(■■))*)■fail dot
  4226   |  6     ((((((■a)d)m)■)n)(■(■|■))*)■fail dot
  4227   |  6     ((((((■a)d)m)■)n)(■(■){■})*)■fail dot
  4228   |  6     ((((((■a)d)m)■)n)(■■)*)(■■)fail dot
  4229   |  6     ((((((■a)d)m)■)n)(■■)*)(■|■)fail dot
  4230   |  6     ((((((■a)d)m)■)n)(■■)*)(■){■}fail dot
  4231   |  6     ((((((■a)d)m)■)n)((■■|■))*)■fail dot
  4232   |  6     ((((((■a)d)m)■)n)(((■|■)|■))*)■fail dot
  4233   |  6     ((((((■a)d)m)■)n)(((■){■}|■))*)■fail dot
  4234   |  6     ((((((■a)d)m)■)n)((■|■■))*)■fail dot
  4235   |  6     ((((((■a)d)m)■)n)((■|(■|■)))*)■fail dot
  4236   |  6     ((((((■a)d)m)■)n)((■|(■){■}))*)■fail dot
  4237   |  6     ((((((■a)d)m)■)n)((■|■))*)(■■)fail dot
  4238   |  6     ((((((■a)d)m)■)n)((■|■))*)(■|■)fail dot
  4239   |  6     ((((((■a)d)m)■)n)((■|■))*)(■){■}fail dot
  4240   |  6     ((((((■a)d)m)■)n)((■■){■})*)■fail dot
  4241   |  6     ((((((■a)d)m)■)n)(((■|■)){■})*)■fail dot
  4242   |  6     ((((((■a)d)m)■)n)(((■){■}){■})*)■fail dot
  4243   |  6     ((((((■a)d)m)■)n)((■){■})*)(■■)fail dot
  4244   |  6     ((((((■a)d)m)■)n)((■){■})*)(■|■)fail dot
  4245   |  6     ((((((■a)d)m)■)n)((■){■})*)(■){■}fail dot
  4246   |  6     ((((((■a)d)m)■)n)(■)*)(■)fail dot
  4247   |  6     ((((((■a)d)m)■)n)(■)*)((■■)■)fail dot
  4248   |  6     ((((((■a)d)m)■)n)(■)*)((■|■)■)fail dot
  4249   |  6     ((((((■a)d)m)■)n)(■)*)((■){■}■)fail dot
  4250   |  6     ((((((■a)d)m)■)n)(■)*)(■■|■)fail dot
  4251   |  6     ((((((■a)d)m)■)n)(■)*)((■|■)|■)fail dot
  4252   |  6     ((((((■a)d)m)■)n)(■)*)((■){■}|■)fail dot
  4253   |  6     ((((((■a)d)m)■)n)(■)*)(■■){■}fail dot
  4254   |  6     ((((((■a)d)m)■)n)(■)*)((■|■)){■}fail dot
  4255   |  6     ((((((■a)d)m)■)n)(■)*)((■){■}){■}fail dot
  4256   |  6     (((((((■■)a)d)m)■)n)■)■ fail dot
  4257   |  6     (((((((■|■)a)d)m)■)n)■)■fail dot
  4258   |  6     (((((((■){■}a)d)m)■)n)■)■fail dot
  4259   |  6     ((((((■a)d)m)(■■))n)■)■ fail dot
  4260   |  6     ((((((■a)d)m)(■|■))n)■)■fail dot
  4261   |  6     ((((((■a)d)m)(■){■})n)■)■fail dot
  4262   |  6     ((((((■a)d)m)■)n)(■■))■ fail dot
  4263   |  6     ((((((■a)d)m)■)n)(■|■))■fail dot
  4264   |  6     ((((((■a)d)m)■)n)■)(■■) fail dot
  4265   |  6     ((((((■a)d)m)■)n)■)(■|■)fail dot
  4266   |  6     ((((((■a)d)m)■)n)■)(■){■}fail dot
  4267   |  6     (((((((■)a)d)m)■)n)(.){■})■fail dot
  4268   |  6     ((((((((■■)■)a)d)m)■)n)(.){■})■fail dot
  4269   |  6     ((((((((■|■)■)a)d)m)■)n)(.){■})■fail dot
  4270   |  6     ((((((((■){■}■)a)d)m)■)n)(.){■})■fail dot
  4271   |  6     (((((((■■)a)d)m)(■■))n)(.){■})■fail dot
  4272   |  6     (((((((■■)a)d)m)(■|■))n)(.){■})■fail dot
  4273   |  6     (((((((■■)a)d)m)(■){■})n)(.){■})■fail dot
  4274   |  6     (((((((■■)a)d)m)■)n)(.){■})(■■)fail dot
  4275   |  6     (((((((■■)a)d)m)■)n)(.){■})(■|■)fail dot
  4276   |  6     (((((((■■)a)d)m)■)n)(.){■})(■){■}fail dot
  4277   |  6     (((((((■■|■)a)d)m)■)n)(.){■})■fail dot
  4278   |  6     ((((((((■|■)|■)a)d)m)■)n)(.){■})■fail dot
  4279   |  6     ((((((((■){■}|■)a)d)m)■)n)(.){■})■fail dot
  4280   |  6     (((((((■|■)a)d)m)(■■))n)(.){■})■fail dot
  4281   |  6     (((((((■|■)a)d)m)(■|■))n)(.){■})■fail dot
  4282   |  6     (((((((■|■)a)d)m)(■){■})n)(.){■})■fail dot
  4283   |  6     (((((((■|■)a)d)m)■)n)(.){■})(■■)fail dot
  4284   |  6     (((((((■|■)a)d)m)■)n)(.){■})(■|■)fail dot
  4285   |  6     (((((((■|■)a)d)m)■)n)(.){■})(■){■}fail dot
  4286   |  6     (((((((■■){■}a)d)m)■)n)(.){■})■fail dot
  4287   |  6     ((((((((■|■)){■}a)d)m)■)n)(.){■})■fail dot
  4288   |  6     ((((((((■){■}){■}a)d)m)■)n)(.){■})■fail dot
  4289   |  6     (((((((■){■}a)d)m)(■■))n)(.){■})■fail dot
  4290   |  6     (((((((■){■}a)d)m)(■|■))n)(.){■})■fail dot
  4291   |  6     (((((((■){■}a)d)m)(■){■})n)(.){■})■fail dot
  4292   |  6     (((((((■){■}a)d)m)■)n)(.){■})(■■)fail dot
  4293   |  6     (((((((■){■}a)d)m)■)n)(.){■})(■|■)fail dot
  4294   |  6     (((((((■){■}a)d)m)■)n)(.){■})(■){■}  unsatisfiable SAT formula       
  4295   |  6     ((((((■a)d)m)(■))n)(.){■})■fail dot
  4296   |  6     ((((((■a)d)m)((■■)■))n)(.){■})■fail dot
  4297   |  6     ((((((■a)d)m)((■|■)■))n)(.){■})■fail dot
  4298   |  6     ((((((■a)d)m)((■){■}■))n)(.){■})■fail dot
  4299   |  6     ((((((■a)d)m)(■■))n)(.){■})(■■)fail dot
  4300   |  6     ((((((■a)d)m)(■■))n)(.){■})(■|■)fail dot
  4301   |  6     ((((((■a)d)m)(■■))n)(.){■})(■){■}fail dot
  4302   |  6     ((((((■a)d)m)(■■|■))n)(.){■})■fail dot
  4303   |  6     ((((((■a)d)m)((■|■)|■))n)(.){■})■fail dot
  4304   |  6     ((((((■a)d)m)((■){■}|■))n)(.){■})■fail dot
  4305   |  6     ((((((■a)d)m)(■|■))n)(.){■})(■■)fail dot
  4306   |  6     ((((((■a)d)m)(■|■))n)(.){■})(■|■)fail dot
  4307   |  6     ((((((■a)d)m)(■|■))n)(.){■})(■){■}fail dot
  4308   |  6     ((((((■a)d)m)(■■){■})n)(.){■})■fail dot
  4309   |  6     ((((((■a)d)m)((■|■)){■})n)(.){■})■fail dot
  4310   |  6     ((((((■a)d)m)((■){■}){■})n)(.){■})■fail dot
  4311   |  6     ((((((■a)d)m)(■){■})n)(.){■})(■■)fail dot
  4312   |  6     ((((((■a)d)m)(■){■})n)(.){■})(■|■)fail dot
  4313   |  6     ((((((■a)d)m)(■){■})n)(.){■})(■){■}fail dot
  4314   |  6     ((((((■a)d)m)■)n)(.){■})(■)fail dot
  4315   |  6     ((((((■a)d)m)■)n)(.){■})((■■)■)fail dot
  4316   |  6     ((((((■a)d)m)■)n)(.){■})((■|■)■)fail dot
  4317   |  6     ((((((■a)d)m)■)n)(.){■})((■){■}■)fail dot
  4318   |  6     ((((((■a)d)m)■)n)(.){■})(■■|■)fail dot
  4319   |  6     ((((((■a)d)m)■)n)(.){■})((■|■)|■)fail dot
  4320   |  6     ((((((■a)d)m)■)n)(.){■})((■){■}|■)fail dot
  4321   |  6     ((((((■a)d)m)■)n)(.){■})(■■){■}fail dot
  4322   |  6     ((((((■a)d)m)■)n)(.){■})((■|■)){■}fail dot
  4323   |  6     ((((((■a)d)m)■)n)(.){■})((■){■}){■}fail dot
  4324   |  6     ((((((((■■))a)d)m)■)n)(.)*)■fail dot
  4325   |  6     ((((((((■|■))a)d)m)■)n)(.)*)■fail dot
  4326   |  6     ((((((((■){■})a)d)m)■)n)(.)*)■fail dot
  4327   |  6     (((((((■)a)d)m)(■■))n)(.)*)■fail dot
  4328   |  6     (((((((■)a)d)m)(■|■))n)(.)*)■fail dot
  4329   |  6     (((((((■)a)d)m)(■){■})n)(.)*)■fail dot
  4330   |  6     (((((((■)a)d)m)■)n)(.)*)(■■)fail dot
  4331   |  6     (((((((■)a)d)m)■)n)(.)*)(■|■)fail dot
  4332   |  6     (((((((■)a)d)m)■)n)(.)*)(■){■}fail dot
  4333   |  6     ((((((((■)■)a)d)m)■)n)(.)*)■fail dot
  4334   |  6     (((((((((■■)■)■)a)d)m)■)n)(.)*)■fail dot
  4335   |  6     (((((((((■|■)■)■)a)d)m)■)n)(.)*)■fail dot
  4336   |  6     (((((((((■){■}■)■)a)d)m)■)n)(.)*)■fail dot
  4337   |  6     ((((((((■■)(■■))a)d)m)■)n)(.)*)■fail dot
  4338   |  6     ((((((((■■)(■|■))a)d)m)■)n)(.)*)■fail dot
  4339   |  6     ((((((((■■)(■){■})a)d)m)■)n)(.)*)■fail dot
  4340   |  6     ((((((((■■)■)a)d)m)(■■))n)(.)*)■fail dot
  4341   |  6     ((((((((■■)■)a)d)m)(■|■))n)(.)*)■fail dot
  4342   |  6     ((((((((■■)■)a)d)m)(■){■})n)(.)*)■fail dot
  4343   |  6     ((((((((■■)■)a)d)m)■)n)(.)*)(■■)fail dot
  4344   |  6     ((((((((■■)■)a)d)m)■)n)(.)*)(■|■)fail dot
  4345   |  6     ((((((((■■)■)a)d)m)■)n)(.)*)(■){■}fail dot
  4346   |  6     ((((((((■■|■)■)a)d)m)■)n)(.)*)■fail dot
  4347   |  6     (((((((((■|■)|■)■)a)d)m)■)n)(.)*)■fail dot
  4348   |  6     (((((((((■){■}|■)■)a)d)m)■)n)(.)*)■fail dot
  4349   |  6     ((((((((■|■)(■■))a)d)m)■)n)(.)*)■fail dot
  4350   |  6     ((((((((■|■)(■|■))a)d)m)■)n)(.)*)■fail dot
  4351   |  6     ((((((((■|■)(■){■})a)d)m)■)n)(.)*)■fail dot
  4352   |  6     ((((((((■|■)■)a)d)m)(■■))n)(.)*)■fail dot
  4353   |  6     ((((((((■|■)■)a)d)m)(■|■))n)(.)*)■fail dot
  4354   |  6     ((((((((■|■)■)a)d)m)(■){■})n)(.)*)■fail dot
  4355   |  6     ((((((((■|■)■)a)d)m)■)n)(.)*)(■■)fail dot
  4356   |  6     ((((((((■|■)■)a)d)m)■)n)(.)*)(■|■)fail dot
  4357   |  6     ((((((((■|■)■)a)d)m)■)n)(.)*)(■){■}fail dot
  4358   |  6     ((((((((■■){■}■)a)d)m)■)n)(.)*)■fail dot
  4359   |  6     (((((((((■|■)){■}■)a)d)m)■)n)(.)*)■fail dot
  4360   |  6     (((((((((■){■}){■}■)a)d)m)■)n)(.)*)■fail dot
  4361   |  6     ((((((((■){■}(■■))a)d)m)■)n)(.)*)■fail dot
  4362   |  6     ((((((((■){■}(■|■))a)d)m)■)n)(.)*)■fail dot
  4363   |  6     ((((((((■){■}(■){■})a)d)m)■)n)(.)*)■fail dot
  4364   |  6     ((((((((■){■}■)a)d)m)(■■))n)(.)*)■fail dot
  4365   |  6     ((((((((■){■}■)a)d)m)(■|■))n)(.)*)■fail dot
  4366   |  6     ((((((((■){■}■)a)d)m)(■){■})n)(.)*)■fail dot
  4367   |  6     ((((((((■){■}■)a)d)m)■)n)(.)*)(■■)fail dot
  4368   |  6     ((((((((■){■}■)a)d)m)■)n)(.)*)(■|■)fail dot
  4369   |  6     ((((((((■){■}■)a)d)m)■)n)(.)*)(■){■}fail dot
  4370   |  6     (((((((■■)a)d)m)(■))n)(.)*)■fail dot
  4371   |  6     (((((((■■)a)d)m)((■■)■))n)(.)*)■fail dot
  4372   |  6     (((((((■■)a)d)m)((■|■)■))n)(.)*)■fail dot
  4373   |  6     (((((((■■)a)d)m)((■){■}■))n)(.)*)■fail dot
  4374   |  6     (((((((■■)a)d)m)(■■))n)(.)*)(■■)fail dot
  4375   |  6     (((((((■■)a)d)m)(■■))n)(.)*)(■|■)fail dot
  4376   |  6     (((((((■■)a)d)m)(■■))n)(.)*)(■){■}fail dot
  4377   |  6     (((((((■■)a)d)m)(■■|■))n)(.)*)■fail dot
  4378   |  6     (((((((■■)a)d)m)((■|■)|■))n)(.)*)■fail dot
  4379   |  6     (((((((■■)a)d)m)((■){■}|■))n)(.)*)■fail dot
  4380   |  6     (((((((■■)a)d)m)(■|■))n)(.)*)(■■)fail dot
  4381   |  6     (((((((■■)a)d)m)(■|■))n)(.)*)(■|■)fail dot
  4382   |  6     (((((((■■)a)d)m)(■|■))n)(.)*)(■){■}fail dot
  4383   |  6     (((((((■■)a)d)m)(■■){■})n)(.)*)■fail dot
  4384   |  6     (((((((■■)a)d)m)((■|■)){■})n)(.)*)■fail dot
  4385   |  6     (((((((■■)a)d)m)((■){■}){■})n)(.)*)■fail dot
  4386   |  6     (((((((■■)a)d)m)(■){■})n)(.)*)(■■)fail dot
  4387   |  6     (((((((■■)a)d)m)(■){■})n)(.)*)(■|■)fail dot
  4388   |  6     (((((((■■)a)d)m)(■){■})n)(.)*)(■){■}fail dot
  4389   |  6     (((((((■■)a)d)m)■)n)(.)*)(■)fail dot
  4390   |  6     (((((((■■)a)d)m)■)n)(.)*)((■■)■)fail dot
  4391   |  6     (((((((■■)a)d)m)■)n)(.)*)((■|■)■)fail dot
  4392   |  6     (((((((■■)a)d)m)■)n)(.)*)((■){■}■)fail dot
  4393   |  6     (((((((■■)a)d)m)■)n)(.)*)(■■|■)fail dot
  4394   |  6     (((((((■■)a)d)m)■)n)(.)*)((■|■)|■)fail dot
  4395   |  6     (((((((■■)a)d)m)■)n)(.)*)((■){■}|■)fail dot
  4396   |  6     (((((((■■)a)d)m)■)n)(.)*)(■■){■}fail dot
  4397   |  6     (((((((■■)a)d)m)■)n)(.)*)((■|■)){■}fail dot
  4398   |  6     (((((((■■)a)d)m)■)n)(.)*)((■){■}){■}fail dot
  4399   |  6     ((((((((■■)■|■)a)d)m)■)n)(.)*)■fail dot
  4400   |  6     ((((((((■|■)■|■)a)d)m)■)n)(.)*)■fail dot
  4401   |  6     ((((((((■){■}■|■)a)d)m)■)n)(.)*)■fail dot
  4402   |  6     (((((((■■|■■)a)d)m)■)n)(.)*)■fail dot
  4403   |  6     (((((((■■|(■|■))a)d)m)■)n)(.)*)■fail dot
  4404   |  6     (((((((■■|(■){■})a)d)m)■)n)(.)*)■fail dot
  4405   |  6     (((((((■■|■)a)d)m)(■■))n)(.)*)■fail dot
  4406   |  6     (((((((■■|■)a)d)m)(■|■))n)(.)*)■fail dot
  4407   |  6     (((((((■■|■)a)d)m)(■){■})n)(.)*)■fail dot
  4408   |  6     (((((((■■|■)a)d)m)■)n)(.)*)(■■)fail dot
  4409   |  6     (((((((■■|■)a)d)m)■)n)(.)*)(■|■)fail dot
  4410   |  6     (((((((■■|■)a)d)m)■)n)(.)*)(■){■}fail dot
  4411   |  6     ((((((((■■|■)|■)a)d)m)■)n)(.)*)■fail dot
  4412   |  6     (((((((((■|■)|■)|■)a)d)m)■)n)(.)*)■fail dot
  4413   |  6     (((((((((■){■}|■)|■)a)d)m)■)n)(.)*)■fail dot
  4414   |  6     ((((((((■|■)|■■)a)d)m)■)n)(.)*)■fail dot
  4415   |  6     ((((((((■|■)|(■|■))a)d)m)■)n)(.)*)■fail dot
  4416   |  6     ((((((((■|■)|(■){■})a)d)m)■)n)(.)*)■fail dot
  4417   |  6     ((((((((■|■)|■)a)d)m)(■■))n)(.)*)■fail dot
  4418   |  6     ((((((((■|■)|■)a)d)m)(■|■))n)(.)*)■fail dot
  4419   |  6     ((((((((■|■)|■)a)d)m)(■){■})n)(.)*)■fail dot
  4420   |  6     ((((((((■|■)|■)a)d)m)■)n)(.)*)(■■)fail dot
  4421   |  6     ((((((((■|■)|■)a)d)m)■)n)(.)*)(■|■)fail dot
  4422   |  6     ((((((((■|■)|■)a)d)m)■)n)(.)*)(■){■}fail dot
  4423   |  6     ((((((((■■){■}|■)a)d)m)■)n)(.)*)■fail dot
  4424   |  6     (((((((((■|■)){■}|■)a)d)m)■)n)(.)*)■fail dot
  4425   |  6     (((((((((■){■}){■}|■)a)d)m)■)n)(.)*)■fail dot
  4426   |  6     ((((((((■){■}|■■)a)d)m)■)n)(.)*)■fail dot
  4427   |  6     ((((((((■){■}|(■|■))a)d)m)■)n)(.)*)■fail dot
  4428   |  6     ((((((((■){■}|(■){■})a)d)m)■)n)(.)*)■fail dot
  4429   |  6     ((((((((■){■}|■)a)d)m)(■■))n)(.)*)■fail dot
  4430   |  6     ((((((((■){■}|■)a)d)m)(■|■))n)(.)*)■fail dot
  4431   |  6     ((((((((■){■}|■)a)d)m)(■){■})n)(.)*)■fail dot
  4432   |  6     ((((((((■){■}|■)a)d)m)■)n)(.)*)(■■)fail dot
  4433   |  6     ((((((((■){■}|■)a)d)m)■)n)(.)*)(■|■)fail dot
  4434   |  6     ((((((((■){■}|■)a)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  4435   |  6     (((((((■|■)a)d)m)(■))n)(.)*)■fail dot
  4436   |  6     (((((((■|■)a)d)m)((■■)■))n)(.)*)■fail dot
  4437   |  6     (((((((■|■)a)d)m)((■|■)■))n)(.)*)■fail dot
  4438   |  6     (((((((■|■)a)d)m)((■){■}■))n)(.)*)■fail dot
  4439   |  6     (((((((■|■)a)d)m)(■■))n)(.)*)(■■)fail dot
  4440   |  6     (((((((■|■)a)d)m)(■■))n)(.)*)(■|■)fail dot
  4441   |  6     (((((((■|■)a)d)m)(■■))n)(.)*)(■){■}fail dot
  4442   |  6     (((((((■|■)a)d)m)(■■|■))n)(.)*)■fail dot
  4443   |  6     (((((((■|■)a)d)m)((■|■)|■))n)(.)*)■fail dot
  4444   |  6     (((((((■|■)a)d)m)((■){■}|■))n)(.)*)■fail dot
  4445   |  6     (((((((■|■)a)d)m)(■|■))n)(.)*)(■■)fail dot
  4446   |  6     (((((((■|■)a)d)m)(■|■))n)(.)*)(■|■)fail dot
  4447   |  6     (((((((■|■)a)d)m)(■|■))n)(.)*)(■){■}fail dot
  4448   |  6     (((((((■|■)a)d)m)(■■){■})n)(.)*)■fail dot
  4449   |  6     (((((((■|■)a)d)m)((■|■)){■})n)(.)*)■fail dot
  4450   |  6     (((((((■|■)a)d)m)((■){■}){■})n)(.)*)■fail dot
  4451   |  6     (((((((■|■)a)d)m)(■){■})n)(.)*)(■■)fail dot
  4452   |  6     (((((((■|■)a)d)m)(■){■})n)(.)*)(■|■)fail dot
  4453   |  6     (((((((■|■)a)d)m)(■){■})n)(.)*)(■){■}fail dot
  4454   |  6     (((((((■|■)a)d)m)■)n)(.)*)(■)fail dot
  4455   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■■)■)fail dot
  4456   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■|■)■)fail dot
  4457   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■){■}■)fail dot
  4458   |  6     (((((((■|■)a)d)m)■)n)(.)*)(■■|■)fail dot
  4459   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■|■)|■)fail dot
  4460   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■){■}|■)fail dot
  4461   |  6     (((((((■|■)a)d)m)■)n)(.)*)(■■){■}fail dot
  4462   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■|■)){■}fail dot
  4463   |  6     (((((((■|■)a)d)m)■)n)(.)*)((■){■}){■}fail dot
  4464   |  6     ((((((((■■)■){■}a)d)m)■)n)(.)*)■fail dot
  4465   |  6     ((((((((■|■)■){■}a)d)m)■)n)(.)*)■fail dot
  4466   |  6     ((((((((■){■}■){■}a)d)m)■)n)(.)*)■fail dot
  4467   |  6     (((((((■■){■}a)d)m)(■■))n)(.)*)■fail dot
  4468   |  6     (((((((■■){■}a)d)m)(■|■))n)(.)*)■fail dot
  4469   |  6     (((((((■■){■}a)d)m)(■){■})n)(.)*)■fail dot
  4470   |  6     (((((((■■){■}a)d)m)■)n)(.)*)(■■)fail dot
  4471   |  6     (((((((■■){■}a)d)m)■)n)(.)*)(■|■)fail dot
  4472   |  6     (((((((■■){■}a)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  4473   |  6     ((((((((■■|■)){■}a)d)m)■)n)(.)*)■fail dot
  4474   |  6     (((((((((■|■)|■)){■}a)d)m)■)n)(.)*)■fail dot
  4475   |  6     (((((((((■){■}|■)){■}a)d)m)■)n)(.)*)■fail dot
  4476   |  6     ((((((((■|■)){■}a)d)m)(■■))n)(.)*)■fail dot
  4477   |  6     ((((((((■|■)){■}a)d)m)(■|■))n)(.)*)■fail dot
  4478   |  6     ((((((((■|■)){■}a)d)m)(■){■})n)(.)*)■fail dot
  4479   |  6     ((((((((■|■)){■}a)d)m)■)n)(.)*)(■■)fail dot
  4480   |  6     ((((((((■|■)){■}a)d)m)■)n)(.)*)(■|■)fail dot
  4481   |  6     ((((((((■|■)){■}a)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  4482   |  6     ((((((((■■){■}){■}a)d)m)■)n)(.)*)■fail dot
  4483   |  6     (((((((((■|■)){■}){■}a)d)m)■)n)(.)*)■fail dot
  4484   |  6     (((((((((■){■}){■}){■}a)d)m)■)n)(.)*)■fail dot
  4485   |  6     ((((((((■){■}){■}a)d)m)(■■))n)(.)*)■fail dot
  4486   |  6     ((((((((■){■}){■}a)d)m)(■|■))n)(.)*)■fail dot
  4487   |  6     ((((((((■){■}){■}a)d)m)(■){■})n)(.)*)■fail dot
  4488   |  6     ((((((((■){■}){■}a)d)m)■)n)(.)*)(■■)fail dot
  4489   |  6     ((((((((■){■}){■}a)d)m)■)n)(.)*)(■|■)fail dot
  4490   |  6     ((((((((■){■}){■}a)d)m)■)n)(.)*)(■){■}  unsatisfiable SAT formula       
  4491   |  6     (((((((■){■}a)d)m)(■))n)(.)*)■fail dot
  4492   |  6     (((((((■){■}a)d)m)((■■)■))n)(.)*)■fail dot
  4493   |  6     (((((((■){■}a)d)m)((■|■)■))n)(.)*)■fail dot
  4494   |  6     (((((((■){■}a)d)m)((■){■}■))n)(.)*)■fail dot
  4495   |  6     (((((((■){■}a)d)m)(■■))n)(.)*)(■■)fail dot
  4496   |  6     (((((((■){■}a)d)m)(■■))n)(.)*)(■|■)fail dot
  4497   |  6     (((((((■){■}a)d)m)(■■))n)(.)*)(■){■}fail dot
  4498   |  6     (((((((■){■}a)d)m)(■■|■))n)(.)*)■fail dot
  4499   |  6     (((((((■){■}a)d)m)((■|■)|■))n)(.)*)■fail dot
  4500   |  6     (((((((■){■}a)d)m)((■){■}|■))n)(.)*)■fail dot
  4501   |  6     (((((((■){■}a)d)m)(■|■))n)(.)*)(■■)fail dot
  4502   |  6     (((((((■){■}a)d)m)(■|■))n)(.)*)(■|■)fail dot
  4503   |  6     (((((((■){■}a)d)m)(■|■))n)(.)*)(■){■}  unsatisfiable SAT formula       
  4504   |  6     (((((((■){■}a)d)m)(■■){■})n)(.)*)■fail dot
  4505   |  6     (((((((■){■}a)d)m)((■|■)){■})n)(.)*)■fail dot
  4506   |  6     (((((((■){■}a)d)m)((■){■}){■})n)(.)*)■fail dot
  4507   |  6     (((((((■){■}a)d)m)(■){■})n)(.)*)(■■)fail dot
  4508   |  6     (((((((■){■}a)d)m)(■){■})n)(.)*)(■|■)fail dot
  4509   |  6     (((((((■){■}a)d)m)(■){■})n)(.)*)(■){■}  unsatisfiable SAT formula       
  4510   |  6     (((((((■){■}a)d)m)■)n)(.)*)(■)fail dot
  4511   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■■)■)fail dot
  4512   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■|■)■)fail dot
  4513   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■){■}■)fail dot
  4514   |  6     (((((((■){■}a)d)m)■)n)(.)*)(■■|■)fail dot
  4515   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■|■)|■)fail dot
  4516   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  4517   |  6     (((((((■){■}a)d)m)■)n)(.)*)(■■){■}  unsatisfiable SAT formula       
  4518   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■|■)){■}fail solve
  4519   |  6     (((((((■){■}a)d)m)■)n)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  4520   |  6     ((((((■a)d)m)((■■)))n)(.)*)■fail dot
  4521   |  6     ((((((■a)d)m)((■|■)))n)(.)*)■fail dot
  4522   |  6     ((((((■a)d)m)((■){■}))n)(.)*)■fail dot
  4523   |  6     ((((((■a)d)m)(■))n)(.)*)(■■)fail dot
  4524   |  6     ((((((■a)d)m)(■))n)(.)*)(■|■)fail dot
  4525   |  6     ((((((■a)d)m)(■))n)(.)*)(■){■}fail dot
  4526   |  6     ((((((■a)d)m)((■)■))n)(.)*)■fail dot
  4527   |  6     ((((((■a)d)m)(((■■)■)■))n)(.)*)■fail dot
  4528   |  6     ((((((■a)d)m)(((■|■)■)■))n)(.)*)■fail dot
  4529   |  6     ((((((■a)d)m)(((■){■}■)■))n)(.)*)■fail dot
  4530   |  6     ((((((■a)d)m)((■■)(■■)))n)(.)*)■fail dot
  4531   |  6     ((((((■a)d)m)((■■)(■|■)))n)(.)*)■fail dot
  4532   |  6     ((((((■a)d)m)((■■)(■){■}))n)(.)*)■fail dot
  4533   |  6     ((((((■a)d)m)((■■)■))n)(.)*)(■■)fail dot
  4534   |  6     ((((((■a)d)m)((■■)■))n)(.)*)(■|■)fail dot
  4535   |  6     ((((((■a)d)m)((■■)■))n)(.)*)(■){■}fail dot
  4536   |  6     ((((((■a)d)m)((■■|■)■))n)(.)*)■fail dot
  4537   |  6     ((((((■a)d)m)(((■|■)|■)■))n)(.)*)■fail dot
  4538   |  6     ((((((■a)d)m)(((■){■}|■)■))n)(.)*)■fail dot
  4539   |  6     ((((((■a)d)m)((■|■)(■■)))n)(.)*)■fail dot
  4540   |  6     ((((((■a)d)m)((■|■)(■|■)))n)(.)*)■fail dot
  4541   |  6     ((((((■a)d)m)((■|■)(■){■}))n)(.)*)■fail dot
  4542   |  6     ((((((■a)d)m)((■|■)■))n)(.)*)(■■)fail dot
  4543   |  6     ((((((■a)d)m)((■|■)■))n)(.)*)(■|■)fail dot
  4544   |  6     ((((((■a)d)m)((■|■)■))n)(.)*)(■){■}fail dot
  4545   |  6     ((((((■a)d)m)((■■){■}■))n)(.)*)■fail dot
  4546   |  6     ((((((■a)d)m)(((■|■)){■}■))n)(.)*)■fail dot
  4547   |  6     ((((((■a)d)m)(((■){■}){■}■))n)(.)*)■fail dot
  4548   |  6     ((((((■a)d)m)((■){■}(■■)))n)(.)*)■fail dot
  4549   |  6     ((((((■a)d)m)((■){■}(■|■)))n)(.)*)■fail dot
  4550   |  6     ((((((■a)d)m)((■){■}(■){■}))n)(.)*)■fail dot
  4551   |  6     ((((((■a)d)m)((■){■}■))n)(.)*)(■■)fail dot
  4552   |  6     ((((((■a)d)m)((■){■}■))n)(.)*)(■|■)fail dot
  4553   |  6     ((((((■a)d)m)((■){■}■))n)(.)*)(■){■}fail dot
  4554   |  6     ((((((■a)d)m)(■■))n)(.)*)(■)fail dot
  4555   |  6     ((((((■a)d)m)(■■))n)(.)*)((■■)■)fail dot
  4556   |  6     ((((((■a)d)m)(■■))n)(.)*)((■|■)■)fail dot
  4557   |  6     ((((((■a)d)m)(■■))n)(.)*)((■){■}■)fail dot
  4558   |  6     ((((((■a)d)m)(■■))n)(.)*)(■■|■)fail dot
  4559   |  6     ((((((■a)d)m)(■■))n)(.)*)((■|■)|■)fail dot
  4560   |  6     ((((((■a)d)m)(■■))n)(.)*)((■){■}|■)fail dot
  4561   |  6     ((((((■a)d)m)(■■))n)(.)*)(■■){■}fail dot
  4562   |  6     ((((((■a)d)m)(■■))n)(.)*)((■|■)){■}fail dot
  4563   |  6     ((((((■a)d)m)(■■))n)(.)*)((■){■}){■}fail dot
  4564   |  6     ((((((■a)d)m)((■■)■|■))n)(.)*)■fail dot
  4565   |  6     ((((((■a)d)m)((■|■)■|■))n)(.)*)■fail dot
  4566   |  6     ((((((■a)d)m)((■){■}■|■))n)(.)*)■fail dot
  4567   |  6     ((((((■a)d)m)(■■|■■))n)(.)*)■fail dot
  4568   |  6     ((((((■a)d)m)(■■|(■|■)))n)(.)*)■fail dot
  4569   |  6     ((((((■a)d)m)(■■|(■){■}))n)(.)*)■fail dot
  4570   |  6     ((((((■a)d)m)(■■|■))n)(.)*)(■■)fail dot
  4571   |  6     ((((((■a)d)m)(■■|■))n)(.)*)(■|■)fail dot
  4572   |  6     ((((((■a)d)m)(■■|■))n)(.)*)(■){■}fail dot
  4573   |  6     ((((((■a)d)m)((■■|■)|■))n)(.)*)■fail dot
  4574   |  6     ((((((■a)d)m)(((■|■)|■)|■))n)(.)*)■fail dot
  4575   |  6     ((((((■a)d)m)(((■){■}|■)|■))n)(.)*)■fail dot
  4576   |  6     ((((((■a)d)m)((■|■)|■■))n)(.)*)■fail dot
  4577   |  6     ((((((■a)d)m)((■|■)|(■|■)))n)(.)*)■fail dot
  4578   |  6     ((((((■a)d)m)((■|■)|(■){■}))n)(.)*)■fail dot
  4579   |  6     ((((((■a)d)m)((■|■)|■))n)(.)*)(■■)fail dot
  4580   |  6     ((((((■a)d)m)((■|■)|■))n)(.)*)(■|■)fail dot
  4581   |  6     ((((((■a)d)m)((■|■)|■))n)(.)*)(■){■}fail dot
  4582   |  6     ((((((■a)d)m)((■■){■}|■))n)(.)*)■fail dot
  4583   |  6     ((((((■a)d)m)(((■|■)){■}|■))n)(.)*)■fail dot
  4584   |  6     ((((((■a)d)m)(((■){■}){■}|■))n)(.)*)■fail dot
  4585   |  6     ((((((■a)d)m)((■){■}|■■))n)(.)*)■fail dot
  4586   |  6     ((((((■a)d)m)((■){■}|(■|■)))n)(.)*)■fail dot
  4587   |  6     ((((((■a)d)m)((■){■}|(■){■}))n)(.)*)■fail dot
  4588   |  6     ((((((■a)d)m)((■){■}|■))n)(.)*)(■■)fail dot
  4589   |  6     ((((((■a)d)m)((■){■}|■))n)(.)*)(■|■)fail dot
  4590   |  6     ((((((■a)d)m)((■){■}|■))n)(.)*)(■){■}fail dot
  4591   |  6     ((((((■a)d)m)(■|■))n)(.)*)(■)fail dot
  4592   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■■)■)fail dot
  4593   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■|■)■)fail dot
  4594   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■){■}■)fail dot
  4595   |  6     ((((((■a)d)m)(■|■))n)(.)*)(■■|■)fail dot
  4596   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■|■)|■)fail dot
  4597   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■){■}|■)fail dot
  4598   |  6     ((((((■a)d)m)(■|■))n)(.)*)(■■){■}fail dot
  4599   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■|■)){■}fail dot
  4600   |  6     ((((((■a)d)m)(■|■))n)(.)*)((■){■}){■}fail dot
  4601   |  6     ((((((■a)d)m)((■■)■){■})n)(.)*)■fail dot
  4602   |  6     ((((((■a)d)m)((■|■)■){■})n)(.)*)■fail dot
  4603   |  6     ((((((■a)d)m)((■){■}■){■})n)(.)*)■fail dot
  4604   |  6     ((((((■a)d)m)(■■){■})n)(.)*)(■■)fail dot
  4605   |  6     ((((((■a)d)m)(■■){■})n)(.)*)(■|■)fail dot
  4606   |  6     ((((((■a)d)m)(■■){■})n)(.)*)(■){■}fail dot
  4607   |  6     ((((((■a)d)m)((■■|■)){■})n)(.)*)■fail dot
  4608   |  6     ((((((■a)d)m)(((■|■)|■)){■})n)(.)*)■fail dot
  4609   |  6     ((((((■a)d)m)(((■){■}|■)){■})n)(.)*)■fail dot
  4610   |  6     ((((((■a)d)m)((■|■)){■})n)(.)*)(■■)fail dot
  4611   |  6     ((((((■a)d)m)((■|■)){■})n)(.)*)(■|■)fail dot
  4612   |  6     ((((((■a)d)m)((■|■)){■})n)(.)*)(■){■}fail dot
  4613   |  6     ((((((■a)d)m)((■■){■}){■})n)(.)*)■fail dot
  4614   |  6     ((((((■a)d)m)(((■|■)){■}){■})n)(.)*)■fail dot
  4615   |  6     ((((((■a)d)m)(((■){■}){■}){■})n)(.)*)■fail dot
  4616   |  6     ((((((■a)d)m)((■){■}){■})n)(.)*)(■■)fail dot
  4617   |  6     ((((((■a)d)m)((■){■}){■})n)(.)*)(■|■)fail dot
  4618   |  6     ((((((■a)d)m)((■){■}){■})n)(.)*)(■){■}fail dot
  4619   |  6     ((((((■a)d)m)(■){■})n)(.)*)(■)fail dot
  4620   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■■)■)fail dot
  4621   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■|■)■)fail dot
  4622   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■){■}■)fail dot
  4623   |  6     ((((((■a)d)m)(■){■})n)(.)*)(■■|■)fail dot
  4624   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■|■)|■)fail dot
  4625   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■){■}|■)fail dot
  4626   |  6     ((((((■a)d)m)(■){■})n)(.)*)(■■){■}fail dot
  4627   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■|■)){■}fail dot
  4628   |  6     ((((((■a)d)m)(■){■})n)(.)*)((■){■}){■}fail dot
  4629   |  6     ((((((■a)d)m)■)n)(.)*)((■■))fail dot
  4630   |  6     ((((((■a)d)m)■)n)(.)*)((■|■))fail dot
  4631   |  6     ((((((■a)d)m)■)n)(.)*)((■){■})fail dot
  4632   |  6     ((((((■a)d)m)■)n)(.)*)((■)■)fail dot
  4633   |  6     ((((((■a)d)m)■)n)(.)*)(((■■)■)■)fail dot
  4634   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)■)■)fail dot
  4635   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}■)■)fail dot
  4636   |  6     ((((((■a)d)m)■)n)(.)*)((■■)(■■))fail dot
  4637   |  6     ((((((■a)d)m)■)n)(.)*)((■■)(■|■))fail dot
  4638   |  6     ((((((■a)d)m)■)n)(.)*)((■■)(■){■})fail dot
  4639   |  6     ((((((■a)d)m)■)n)(.)*)((■■|■)■)fail dot
  4640   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)|■)■)fail dot
  4641   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}|■)■)fail dot
  4642   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)(■■))fail dot
  4643   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)(■|■))fail dot
  4644   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)(■){■})fail dot
  4645   |  6     ((((((■a)d)m)■)n)(.)*)((■■){■}■)fail dot
  4646   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)){■}■)fail dot
  4647   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}){■}■)fail dot
  4648   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}(■■))fail dot
  4649   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}(■|■))fail dot
  4650   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}(■){■})fail dot
  4651   |  6     ((((((■a)d)m)■)n)(.)*)((■■)■|■)fail dot
  4652   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)■|■)fail dot
  4653   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}■|■)fail dot
  4654   |  6     ((((((■a)d)m)■)n)(.)*)(■■|■■)fail dot
  4655   |  6     ((((((■a)d)m)■)n)(.)*)(■■|(■|■))fail dot
  4656   |  6     ((((((■a)d)m)■)n)(.)*)(■■|(■){■})fail dot
  4657   |  6     ((((((■a)d)m)■)n)(.)*)((■■|■)|■)fail dot
  4658   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)|■)|■)fail dot
  4659   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}|■)|■)fail dot
  4660   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)|■■)fail dot
  4661   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)|(■|■))fail dot
  4662   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)|(■){■})fail dot
  4663   |  6     ((((((■a)d)m)■)n)(.)*)((■■){■}|■)fail dot
  4664   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)){■}|■)fail dot
  4665   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}){■}|■)fail dot
  4666   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}|■■)fail dot
  4667   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}|(■|■))fail dot
  4668   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}|(■){■})fail dot
  4669   |  6     ((((((■a)d)m)■)n)(.)*)((■■)■){■}fail dot
  4670   |  6     ((((((■a)d)m)■)n)(.)*)((■|■)■){■}fail dot
  4671   |  6     ((((((■a)d)m)■)n)(.)*)((■){■}■){■}fail dot
  4672   |  6     ((((((■a)d)m)■)n)(.)*)((■■|■)){■}fail dot
  4673   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)|■)){■}fail dot
  4674   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}|■)){■}fail dot
  4675   |  6     ((((((■a)d)m)■)n)(.)*)((■■){■}){■}fail dot
  4676   |  6     ((((((■a)d)m)■)n)(.)*)(((■|■)){■}){■}fail dot
  4677   |  6     ((((((■a)d)m)■)n)(.)*)(((■){■}){■}){■}fail dot
  4678   |  6     (((((((■■)a)d)m)i)■)(■){■})■fail dot
  4679   |  6     (((((((■|■)a)d)m)i)■)(■){■})■fail dot
  4680   |  6     (((((((■){■}a)d)m)i)■)(■){■})■fail dot
  4681   |  6     ((((((■a)d)m)i)(■■))(■){■})■fail dot
  4682   |  6     ((((((■a)d)m)i)(■|■))(■){■})■fail dot
  4683   |  6     ((((((■a)d)m)i)(■){■})(■){■})■fail dot
  4684   |  6     ((((((■a)d)m)i)■)(■■){■})■fail dot
  4685   |  6     ((((((■a)d)m)i)■)((■|■)){■})■fail dot
  4686   |  6     ((((((■a)d)m)i)■)((■){■}){■})■fail dot
  4687   |  6     ((((((■a)d)m)i)■)(■){■})(■■)fail dot
  4688   |  6     ((((((■a)d)m)i)■)(■){■})(■|■)fail dot
  4689   |  6     ((((((■a)d)m)i)■)(■){■})(■){■}fail dot
  4690   |  6     (((((((■)a)d)m)i)■)(■)*)■fail dot
  4691   |  6     ((((((((■■)■)a)d)m)i)■)(■)*)■fail dot
  4692   |  6     ((((((((■|■)■)a)d)m)i)■)(■)*)■fail dot
  4693   |  6     ((((((((■){■}■)a)d)m)i)■)(■)*)■fail dot
  4694   |  6     (((((((■■)a)d)m)i)(■■))(■)*)■fail dot
  4695   |  6     (((((((■■)a)d)m)i)(■|■))(■)*)■fail dot
  4696   |  6     (((((((■■)a)d)m)i)(■){■})(■)*)■fail dot
  4697   |  6     (((((((■■)a)d)m)i)■)(■■)*)■fail dot
  4698   |  6     (((((((■■)a)d)m)i)■)((■|■))*)■fail dot
  4699   |  6     (((((((■■)a)d)m)i)■)((■){■})*)■fail dot
  4700   |  6     (((((((■■)a)d)m)i)■)(■)*)(■■)fail dot
  4701   |  6     (((((((■■)a)d)m)i)■)(■)*)(■|■)fail dot
  4702   |  6     (((((((■■)a)d)m)i)■)(■)*)(■){■}fail dot
  4703   |  6     (((((((■■|■)a)d)m)i)■)(■)*)■fail dot
  4704   |  6     ((((((((■|■)|■)a)d)m)i)■)(■)*)■fail dot
  4705   |  6     ((((((((■){■}|■)a)d)m)i)■)(■)*)■fail dot
  4706   |  6     (((((((■|■)a)d)m)i)(■■))(■)*)■fail dot
  4707   |  6     (((((((■|■)a)d)m)i)(■|■))(■)*)■fail dot
  4708   |  6     (((((((■|■)a)d)m)i)(■){■})(■)*)■fail dot
  4709   |  6     (((((((■|■)a)d)m)i)■)(■■)*)■fail dot
  4710   |  6     (((((((■|■)a)d)m)i)■)((■|■))*)■fail dot
  4711   |  6     (((((((■|■)a)d)m)i)■)((■){■})*)■fail dot
  4712   |  6     (((((((■|■)a)d)m)i)■)(■)*)(■■)fail dot
  4713   |  6     (((((((■|■)a)d)m)i)■)(■)*)(■|■)fail dot
  4714   |  6     (((((((■|■)a)d)m)i)■)(■)*)(■){■}fail dot
  4715   |  6     (((((((■■){■}a)d)m)i)■)(■)*)■fail dot
  4716   |  6     ((((((((■|■)){■}a)d)m)i)■)(■)*)■fail dot
  4717   |  6     ((((((((■){■}){■}a)d)m)i)■)(■)*)■fail dot
  4718   |  6     (((((((■){■}a)d)m)i)(■■))(■)*)■fail dot
  4719   |  6     (((((((■){■}a)d)m)i)(■|■))(■)*)■fail dot
  4720   |  6     (((((((■){■}a)d)m)i)(■){■})(■)*)■  unsatisfiable SAT formula       
  4721   |  6     (((((((■){■}a)d)m)i)■)(■■)*)■fail dot
  4722   |  6     (((((((■){■}a)d)m)i)■)((■|■))*)■fail dot
  4723   |  6     (((((((■){■}a)d)m)i)■)((■){■})*)■fail dot
  4724   |  6     (((((((■){■}a)d)m)i)■)(■)*)(■■)fail dot
  4725   |  6     (((((((■){■}a)d)m)i)■)(■)*)(■|■)fail dot
  4726   |  6     (((((((■){■}a)d)m)i)■)(■)*)(■){■}  unsatisfiable SAT formula       
  4727   |  6     ((((((■a)d)m)i)(■))(■)*)■fail dot
  4728   |  6     ((((((■a)d)m)i)((■■)■))(■)*)■fail dot
  4729   |  6     ((((((■a)d)m)i)((■|■)■))(■)*)■fail dot
  4730   |  6     ((((((■a)d)m)i)((■){■}■))(■)*)■fail dot
  4731   |  6     ((((((■a)d)m)i)(■■))(■■)*)■fail dot
  4732   |  6     ((((((■a)d)m)i)(■■))((■|■))*)■fail dot
  4733   |  6     ((((((■a)d)m)i)(■■))((■){■})*)■fail dot
  4734   |  6     ((((((■a)d)m)i)(■■))(■)*)(■■)fail dot
  4735   |  6     ((((((■a)d)m)i)(■■))(■)*)(■|■)fail dot
  4736   |  6     ((((((■a)d)m)i)(■■))(■)*)(■){■}fail dot
  4737   |  6     ((((((■a)d)m)i)(■■|■))(■)*)■fail dot
  4738   |  6     ((((((■a)d)m)i)((■|■)|■))(■)*)■fail dot
  4739   |  6     ((((((■a)d)m)i)((■){■}|■))(■)*)■fail dot
  4740   |  6     ((((((■a)d)m)i)(■|■))(■■)*)■fail dot
  4741   |  6     ((((((■a)d)m)i)(■|■))((■|■))*)■fail dot
  4742   |  6     ((((((■a)d)m)i)(■|■))((■){■})*)■fail dot
  4743   |  6     ((((((■a)d)m)i)(■|■))(■)*)(■■)fail dot
  4744   |  6     ((((((■a)d)m)i)(■|■))(■)*)(■|■)fail dot
  4745   |  6     ((((((■a)d)m)i)(■|■))(■)*)(■){■}fail dot
  4746   |  6     ((((((■a)d)m)i)(■■){■})(■)*)■fail dot
  4747   |  6     ((((((■a)d)m)i)((■|■)){■})(■)*)■fail dot
  4748   |  6     ((((((■a)d)m)i)((■){■}){■})(■)*)■fail dot
  4749   |  6     ((((((■a)d)m)i)(■){■})(■■)*)■fail dot
  4750   |  6     ((((((■a)d)m)i)(■){■})((■|■))*)■fail dot
  4751   |  6     ((((((■a)d)m)i)(■){■})((■){■})*)■fail dot
  4752   |  6     ((((((■a)d)m)i)(■){■})(■)*)(■■)fail dot
  4753   |  6     ((((((■a)d)m)i)(■){■})(■)*)(■|■)fail dot
  4754   |  6     ((((((■a)d)m)i)(■){■})(■)*)(■){■}fail dot
  4755   |  6     ((((((■a)d)m)i)■)((■■)■)*)■fail dot
  4756   |  6     ((((((■a)d)m)i)■)((■|■)■)*)■fail dot
  4757   |  6     ((((((■a)d)m)i)■)((■){■}■)*)■fail dot
  4758   |  6     ((((((■a)d)m)i)■)(■(■■))*)■fail dot
  4759   |  6     ((((((■a)d)m)i)■)(■(■|■))*)■fail dot
  4760   |  6     ((((((■a)d)m)i)■)(■(■){■})*)■fail dot
  4761   |  6     ((((((■a)d)m)i)■)(■■)*)(■■)fail dot
  4762   |  6     ((((((■a)d)m)i)■)(■■)*)(■|■)fail dot
  4763   |  6     ((((((■a)d)m)i)■)(■■)*)(■){■}fail dot
  4764   |  6     ((((((■a)d)m)i)■)((■■|■))*)■fail dot
  4765   |  6     ((((((■a)d)m)i)■)(((■|■)|■))*)■fail dot
  4766   |  6     ((((((■a)d)m)i)■)(((■){■}|■))*)■fail dot
  4767   |  6     ((((((■a)d)m)i)■)((■|■■))*)■fail dot
  4768   |  6     ((((((■a)d)m)i)■)((■|(■|■)))*)■fail dot
  4769   |  6     ((((((■a)d)m)i)■)((■|(■){■}))*)■fail dot
  4770   |  6     ((((((■a)d)m)i)■)((■|■))*)(■■)fail dot
  4771   |  6     ((((((■a)d)m)i)■)((■|■))*)(■|■)fail dot
  4772   |  6     ((((((■a)d)m)i)■)((■|■))*)(■){■}fail dot
  4773   |  6     ((((((■a)d)m)i)■)((■■){■})*)■fail dot
  4774   |  6     ((((((■a)d)m)i)■)(((■|■)){■})*)■fail dot
  4775   |  6     ((((((■a)d)m)i)■)(((■){■}){■})*)■fail dot
  4776   |  6     ((((((■a)d)m)i)■)((■){■})*)(■■)fail dot
  4777   |  6     ((((((■a)d)m)i)■)((■){■})*)(■|■)fail dot
  4778   |  6     ((((((■a)d)m)i)■)((■){■})*)(■){■}fail dot
  4779   |  6     ((((((■a)d)m)i)■)(■)*)(■)fail dot
  4780   |  6     ((((((■a)d)m)i)■)(■)*)((■■)■)fail dot
  4781   |  6     ((((((■a)d)m)i)■)(■)*)((■|■)■)fail dot
  4782   |  6     ((((((■a)d)m)i)■)(■)*)((■){■}■)fail dot
  4783   |  6     ((((((■a)d)m)i)■)(■)*)(■■|■)fail dot
  4784   |  6     ((((((■a)d)m)i)■)(■)*)((■|■)|■)fail dot
  4785   |  6     ((((((■a)d)m)i)■)(■)*)((■){■}|■)fail dot
  4786   |  6     ((((((■a)d)m)i)■)(■)*)(■■){■}fail dot
  4787   |  6     ((((((■a)d)m)i)■)(■)*)((■|■)){■}fail dot
  4788   |  6     ((((((■a)d)m)i)■)(■)*)((■){■}){■}fail dot
  4789   |  6     (((((((■■)a)d)m)i)■)■)■ fail dot
  4790   |  6     (((((((■|■)a)d)m)i)■)■)■fail dot
  4791   |  6     (((((((■){■}a)d)m)i)■)■)■fail dot
  4792   |  6     ((((((■a)d)m)i)(■■))■)■ fail dot
  4793   |  6     ((((((■a)d)m)i)(■|■))■)■fail dot
  4794   |  6     ((((((■a)d)m)i)(■){■})■)■fail dot
  4795   |  6     ((((((■a)d)m)i)■)(■■))■ fail dot
  4796   |  6     ((((((■a)d)m)i)■)(■|■))■fail dot
  4797   |  6     ((((((■a)d)m)i)■)■)(■■) fail dot
  4798   |  6     ((((((■a)d)m)i)■)■)(■|■)fail dot
  4799   |  6     ((((((■a)d)m)i)■)■)(■){■}fail dot
  4800   |  6     (((((((■)a)d)m)i)■)(.){■})■fail dot
  4801   |  6     ((((((((■■)■)a)d)m)i)■)(.){■})■fail dot
  4802   |  6     ((((((((■|■)■)a)d)m)i)■)(.){■})■fail dot
  4803   |  6     ((((((((■){■}■)a)d)m)i)■)(.){■})■fail dot
  4804   |  6     (((((((■■)a)d)m)i)(■■))(.){■})■fail dot
  4805   |  6     (((((((■■)a)d)m)i)(■|■))(.){■})■fail dot
  4806   |  6     (((((((■■)a)d)m)i)(■){■})(.){■})■fail dot
  4807   |  6     (((((((■■)a)d)m)i)■)(.){■})(■■)fail dot
  4808   |  6     (((((((■■)a)d)m)i)■)(.){■})(■|■)fail dot
  4809   |  6     (((((((■■)a)d)m)i)■)(.){■})(■){■}fail dot
  4810   |  6     (((((((■■|■)a)d)m)i)■)(.){■})■fail dot
  4811   |  6     ((((((((■|■)|■)a)d)m)i)■)(.){■})■fail dot
  4812   |  6     ((((((((■){■}|■)a)d)m)i)■)(.){■})■fail dot
  4813   |  6     (((((((■|■)a)d)m)i)(■■))(.){■})■fail dot
  4814   |  6     (((((((■|■)a)d)m)i)(■|■))(.){■})■fail dot
  4815   |  6     (((((((■|■)a)d)m)i)(■){■})(.){■})■fail dot
  4816   |  6     (((((((■|■)a)d)m)i)■)(.){■})(■■)fail dot
  4817   |  6     (((((((■|■)a)d)m)i)■)(.){■})(■|■)fail dot
  4818   |  6     (((((((■|■)a)d)m)i)■)(.){■})(■){■}fail dot
  4819   |  6     (((((((■■){■}a)d)m)i)■)(.){■})■fail dot
  4820   |  6     ((((((((■|■)){■}a)d)m)i)■)(.){■})■fail dot
  4821   |  6     ((((((((■){■}){■}a)d)m)i)■)(.){■})■fail dot
  4822   |  6     (((((((■){■}a)d)m)i)(■■))(.){■})■fail dot
  4823   |  6     (((((((■){■}a)d)m)i)(■|■))(.){■})■fail dot
  4824   |  6     (((((((■){■}a)d)m)i)(■){■})(.){■})■  unsatisfiable SAT formula       
  4825   |  6     (((((((■){■}a)d)m)i)■)(.){■})(■■)fail dot
  4826   |  6     (((((((■){■}a)d)m)i)■)(.){■})(■|■)fail dot
  4827   |  6     (((((((■){■}a)d)m)i)■)(.){■})(■){■}  unsatisfiable SAT formula       
  4828   |  6     ((((((■a)d)m)i)(■))(.){■})■fail dot
  4829   |  6     ((((((■a)d)m)i)((■■)■))(.){■})■fail dot
  4830   |  6     ((((((■a)d)m)i)((■|■)■))(.){■})■fail dot
  4831   |  6     ((((((■a)d)m)i)((■){■}■))(.){■})■fail dot
  4832   |  6     ((((((■a)d)m)i)(■■))(.){■})(■■)fail dot
  4833   |  6     ((((((■a)d)m)i)(■■))(.){■})(■|■)fail dot
  4834   |  6     ((((((■a)d)m)i)(■■))(.){■})(■){■}fail dot
  4835   |  6     ((((((■a)d)m)i)(■■|■))(.){■})■fail dot
  4836   |  6     ((((((■a)d)m)i)((■|■)|■))(.){■})■fail dot
  4837   |  6     ((((((■a)d)m)i)((■){■}|■))(.){■})■fail dot
  4838   |  6     ((((((■a)d)m)i)(■|■))(.){■})(■■)fail dot
  4839   |  6     ((((((■a)d)m)i)(■|■))(.){■})(■|■)fail dot
  4840   |  6     ((((((■a)d)m)i)(■|■))(.){■})(■){■}fail dot
  4841   |  6     ((((((■a)d)m)i)(■■){■})(.){■})■fail dot
  4842   |  6     ((((((■a)d)m)i)((■|■)){■})(.){■})■fail dot
  4843   |  6     ((((((■a)d)m)i)((■){■}){■})(.){■})■fail dot
  4844   |  6     ((((((■a)d)m)i)(■){■})(.){■})(■■)fail dot
  4845   |  6     ((((((■a)d)m)i)(■){■})(.){■})(■|■)fail dot
  4846   |  6     ((((((■a)d)m)i)(■){■})(.){■})(■){■}fail dot
  4847   |  6     ((((((■a)d)m)i)■)(.){■})(■)fail dot
  4848   |  6     ((((((■a)d)m)i)■)(.){■})((■■)■)fail dot
  4849   |  6     ((((((■a)d)m)i)■)(.){■})((■|■)■)fail dot
  4850   |  6     ((((((■a)d)m)i)■)(.){■})((■){■}■)fail dot
  4851   |  6     ((((((■a)d)m)i)■)(.){■})(■■|■)fail dot
  4852   |  6     ((((((■a)d)m)i)■)(.){■})((■|■)|■)fail dot
  4853   |  6     ((((((■a)d)m)i)■)(.){■})((■){■}|■)fail dot
  4854   |  6     ((((((■a)d)m)i)■)(.){■})(■■){■}fail dot
  4855   |  6     ((((((■a)d)m)i)■)(.){■})((■|■)){■}fail dot
  4856   |  6     ((((((■a)d)m)i)■)(.){■})((■){■}){■}fail dot
  4857   |  6     ((((((((■■))a)d)m)i)■)(.)*)■fail dot
  4858   |  6     ((((((((■|■))a)d)m)i)■)(.)*)■fail dot
  4859   |  6     ((((((((■){■})a)d)m)i)■)(.)*)■fail dot
  4860   |  6     (((((((■)a)d)m)i)(■■))(.)*)■fail dot
  4861   |  6     (((((((■)a)d)m)i)(■|■))(.)*)■fail dot
  4862   |  6     (((((((■)a)d)m)i)(■){■})(.)*)■fail dot
  4863   |  6     (((((((■)a)d)m)i)■)(.)*)(■■)fail dot
  4864   |  6     (((((((■)a)d)m)i)■)(.)*)(■|■)fail dot
  4865   |  6     (((((((■)a)d)m)i)■)(.)*)(■){■}fail dot
  4866   |  6     ((((((((■)■)a)d)m)i)■)(.)*)■fail dot
  4867   |  6     (((((((((■■)■)■)a)d)m)i)■)(.)*)■fail dot
  4868   |  6     (((((((((■|■)■)■)a)d)m)i)■)(.)*)■fail dot
  4869   |  6     (((((((((■){■}■)■)a)d)m)i)■)(.)*)■fail dot
  4870   |  6     ((((((((■■)(■■))a)d)m)i)■)(.)*)■fail dot
  4871   |  6     ((((((((■■)(■|■))a)d)m)i)■)(.)*)■fail dot
  4872   |  6     ((((((((■■)(■){■})a)d)m)i)■)(.)*)■fail dot
  4873   |  6     ((((((((■■)■)a)d)m)i)(■■))(.)*)■fail dot
  4874   |  6     ((((((((■■)■)a)d)m)i)(■|■))(.)*)■fail dot
  4875   |  6     ((((((((■■)■)a)d)m)i)(■){■})(.)*)■fail dot
  4876   |  6     ((((((((■■)■)a)d)m)i)■)(.)*)(■■)fail dot
  4877   |  6     ((((((((■■)■)a)d)m)i)■)(.)*)(■|■)fail dot
  4878   |  6     ((((((((■■)■)a)d)m)i)■)(.)*)(■){■}fail dot
  4879   |  6     ((((((((■■|■)■)a)d)m)i)■)(.)*)■fail dot
  4880   |  6     (((((((((■|■)|■)■)a)d)m)i)■)(.)*)■fail dot
  4881   |  6     (((((((((■){■}|■)■)a)d)m)i)■)(.)*)■fail dot
  4882   |  6     ((((((((■|■)(■■))a)d)m)i)■)(.)*)■fail dot
  4883   |  6     ((((((((■|■)(■|■))a)d)m)i)■)(.)*)■fail dot
  4884   |  6     ((((((((■|■)(■){■})a)d)m)i)■)(.)*)■fail dot
  4885   |  6     ((((((((■|■)■)a)d)m)i)(■■))(.)*)■fail dot
  4886   |  6     ((((((((■|■)■)a)d)m)i)(■|■))(.)*)■fail dot
  4887   |  6     ((((((((■|■)■)a)d)m)i)(■){■})(.)*)■fail dot
  4888   |  6     ((((((((■|■)■)a)d)m)i)■)(.)*)(■■)fail dot
  4889   |  6     ((((((((■|■)■)a)d)m)i)■)(.)*)(■|■)fail dot
  4890   |  6     ((((((((■|■)■)a)d)m)i)■)(.)*)(■){■}fail dot
  4891   |  6     ((((((((■■){■}■)a)d)m)i)■)(.)*)■fail dot
  4892   |  6     (((((((((■|■)){■}■)a)d)m)i)■)(.)*)■fail dot
  4893   |  6     (((((((((■){■}){■}■)a)d)m)i)■)(.)*)■fail dot
  4894   |  6     ((((((((■){■}(■■))a)d)m)i)■)(.)*)■fail dot
  4895   |  6     ((((((((■){■}(■|■))a)d)m)i)■)(.)*)■fail dot
  4896   |  6     ((((((((■){■}(■){■})a)d)m)i)■)(.)*)■fail dot
  4897   |  6     ((((((((■){■}■)a)d)m)i)(■■))(.)*)■fail dot
  4898   |  6     ((((((((■){■}■)a)d)m)i)(■|■))(.)*)■fail dot
  4899   |  6     ((((((((■){■}■)a)d)m)i)(■){■})(.)*)■fail dot
  4900   |  6     ((((((((■){■}■)a)d)m)i)■)(.)*)(■■)fail dot
  4901   |  6     ((((((((■){■}■)a)d)m)i)■)(.)*)(■|■)fail dot
  4902   |  6     ((((((((■){■}■)a)d)m)i)■)(.)*)(■){■}fail dot
  4903   |  6     (((((((■■)a)d)m)i)(■))(.)*)■fail dot
  4904   |  6     (((((((■■)a)d)m)i)((■■)■))(.)*)■fail dot
  4905   |  6     (((((((■■)a)d)m)i)((■|■)■))(.)*)■fail dot
  4906   |  6     (((((((■■)a)d)m)i)((■){■}■))(.)*)■fail dot
  4907   |  6     (((((((■■)a)d)m)i)(■■))(.)*)(■■)fail dot
  4908   |  6     (((((((■■)a)d)m)i)(■■))(.)*)(■|■)fail dot
  4909   |  6     (((((((■■)a)d)m)i)(■■))(.)*)(■){■}fail dot
  4910   |  6     (((((((■■)a)d)m)i)(■■|■))(.)*)■fail dot
  4911   |  6     (((((((■■)a)d)m)i)((■|■)|■))(.)*)■fail dot
  4912   |  6     (((((((■■)a)d)m)i)((■){■}|■))(.)*)■fail dot
  4913   |  6     (((((((■■)a)d)m)i)(■|■))(.)*)(■■)fail dot
  4914   |  6     (((((((■■)a)d)m)i)(■|■))(.)*)(■|■)fail dot
  4915   |  6     (((((((■■)a)d)m)i)(■|■))(.)*)(■){■}fail dot
  4916   |  6     (((((((■■)a)d)m)i)(■■){■})(.)*)■fail dot
  4917   |  6     (((((((■■)a)d)m)i)((■|■)){■})(.)*)■fail dot
  4918   |  6     (((((((■■)a)d)m)i)((■){■}){■})(.)*)■fail dot
  4919   |  6     (((((((■■)a)d)m)i)(■){■})(.)*)(■■)fail dot
  4920   |  6     (((((((■■)a)d)m)i)(■){■})(.)*)(■|■)fail dot
  4921   |  6     (((((((■■)a)d)m)i)(■){■})(.)*)(■){■}fail dot
  4922   |  6     (((((((■■)a)d)m)i)■)(.)*)(■)fail dot
  4923   |  6     (((((((■■)a)d)m)i)■)(.)*)((■■)■)fail dot
  4924   |  6     (((((((■■)a)d)m)i)■)(.)*)((■|■)■)fail dot
  4925   |  6     (((((((■■)a)d)m)i)■)(.)*)((■){■}■)fail dot
  4926   |  6     (((((((■■)a)d)m)i)■)(.)*)(■■|■)fail dot
  4927   |  6     (((((((■■)a)d)m)i)■)(.)*)((■|■)|■)fail dot
  4928   |  6     (((((((■■)a)d)m)i)■)(.)*)((■){■}|■)fail dot
  4929   |  6     (((((((■■)a)d)m)i)■)(.)*)(■■){■}fail dot
  4930   |  6     (((((((■■)a)d)m)i)■)(.)*)((■|■)){■}fail dot
  4931   |  6     (((((((■■)a)d)m)i)■)(.)*)((■){■}){■}fail dot
  4932   |  6     ((((((((■■)■|■)a)d)m)i)■)(.)*)■fail dot
  4933   |  6     ((((((((■|■)■|■)a)d)m)i)■)(.)*)■fail dot
  4934   |  6     ((((((((■){■}■|■)a)d)m)i)■)(.)*)■fail dot
  4935   |  6     (((((((■■|■■)a)d)m)i)■)(.)*)■fail dot
  4936   |  6     (((((((■■|(■|■))a)d)m)i)■)(.)*)■fail dot
  4937   |  6     (((((((■■|(■){■})a)d)m)i)■)(.)*)■fail dot
  4938   |  6     (((((((■■|■)a)d)m)i)(■■))(.)*)■fail dot
  4939   |  6     (((((((■■|■)a)d)m)i)(■|■))(.)*)■fail dot
  4940   |  6     (((((((■■|■)a)d)m)i)(■){■})(.)*)■fail dot
  4941   |  6     (((((((■■|■)a)d)m)i)■)(.)*)(■■)fail dot
  4942   |  6     (((((((■■|■)a)d)m)i)■)(.)*)(■|■)fail dot
  4943   |  6     (((((((■■|■)a)d)m)i)■)(.)*)(■){■}fail dot
  4944   |  6     ((((((((■■|■)|■)a)d)m)i)■)(.)*)■fail dot
  4945   |  6     (((((((((■|■)|■)|■)a)d)m)i)■)(.)*)■fail dot
  4946   |  6     (((((((((■){■}|■)|■)a)d)m)i)■)(.)*)■fail dot
  4947   |  6     ((((((((■|■)|■■)a)d)m)i)■)(.)*)■fail dot
  4948   |  6     ((((((((■|■)|(■|■))a)d)m)i)■)(.)*)■fail dot
  4949   |  6     ((((((((■|■)|(■){■})a)d)m)i)■)(.)*)■fail dot
  4950   |  6     ((((((((■|■)|■)a)d)m)i)(■■))(.)*)■fail dot
  4951   |  6     ((((((((■|■)|■)a)d)m)i)(■|■))(.)*)■fail dot
  4952   |  6     ((((((((■|■)|■)a)d)m)i)(■){■})(.)*)■fail dot
  4953   |  6     ((((((((■|■)|■)a)d)m)i)■)(.)*)(■■)fail dot
  4954   |  6     ((((((((■|■)|■)a)d)m)i)■)(.)*)(■|■)fail dot
  4955   |  6     ((((((((■|■)|■)a)d)m)i)■)(.)*)(■){■}fail dot
  4956   |  6     ((((((((■■){■}|■)a)d)m)i)■)(.)*)■fail dot
  4957   |  6     (((((((((■|■)){■}|■)a)d)m)i)■)(.)*)■fail dot
  4958   |  6     (((((((((■){■}){■}|■)a)d)m)i)■)(.)*)■fail dot
  4959   |  6     ((((((((■){■}|■■)a)d)m)i)■)(.)*)■fail dot
  4960   |  6     ((((((((■){■}|(■|■))a)d)m)i)■)(.)*)■fail dot
  4961   |  6     ((((((((■){■}|(■){■})a)d)m)i)■)(.)*)■fail dot
  4962   |  6     ((((((((■){■}|■)a)d)m)i)(■■))(.)*)■fail dot
  4963   |  6     ((((((((■){■}|■)a)d)m)i)(■|■))(.)*)■fail dot
  4964   |  6     ((((((((■){■}|■)a)d)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  4965   |  6     ((((((((■){■}|■)a)d)m)i)■)(.)*)(■■)fail dot
  4966   |  6     ((((((((■){■}|■)a)d)m)i)■)(.)*)(■|■)fail dot
  4967   |  6     ((((((((■){■}|■)a)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  4968   |  6     (((((((■|■)a)d)m)i)(■))(.)*)■fail dot
  4969   |  6     (((((((■|■)a)d)m)i)((■■)■))(.)*)■fail dot
  4970   |  6     (((((((■|■)a)d)m)i)((■|■)■))(.)*)■fail dot
  4971   |  6     (((((((■|■)a)d)m)i)((■){■}■))(.)*)■fail dot
  4972   |  6     (((((((■|■)a)d)m)i)(■■))(.)*)(■■)fail dot
  4973   |  6     (((((((■|■)a)d)m)i)(■■))(.)*)(■|■)fail dot
  4974   |  6     (((((((■|■)a)d)m)i)(■■))(.)*)(■){■}fail dot
  4975   |  6     (((((((■|■)a)d)m)i)(■■|■))(.)*)■fail dot
  4976   |  6     (((((((■|■)a)d)m)i)((■|■)|■))(.)*)■fail dot
  4977   |  6     (((((((■|■)a)d)m)i)((■){■}|■))(.)*)■fail dot
  4978   |  6     (((((((■|■)a)d)m)i)(■|■))(.)*)(■■)fail dot
  4979   |  6     (((((((■|■)a)d)m)i)(■|■))(.)*)(■|■)fail dot
  4980   |  6     (((((((■|■)a)d)m)i)(■|■))(.)*)(■){■}fail dot
  4981   |  6     (((((((■|■)a)d)m)i)(■■){■})(.)*)■fail dot
  4982   |  6     (((((((■|■)a)d)m)i)((■|■)){■})(.)*)■fail dot
  4983   |  6     (((((((■|■)a)d)m)i)((■){■}){■})(.)*)■fail dot
  4984   |  6     (((((((■|■)a)d)m)i)(■){■})(.)*)(■■)fail dot
  4985   |  6     (((((((■|■)a)d)m)i)(■){■})(.)*)(■|■)fail dot
  4986   |  6     (((((((■|■)a)d)m)i)(■){■})(.)*)(■){■}fail dot
  4987   |  6     (((((((■|■)a)d)m)i)■)(.)*)(■)fail dot
  4988   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■■)■)fail dot
  4989   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■|■)■)fail dot
  4990   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■){■}■)fail dot
  4991   |  6     (((((((■|■)a)d)m)i)■)(.)*)(■■|■)fail dot
  4992   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■|■)|■)fail dot
  4993   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■){■}|■)fail dot
  4994   |  6     (((((((■|■)a)d)m)i)■)(.)*)(■■){■}fail dot
  4995   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■|■)){■}fail dot
  4996   |  6     (((((((■|■)a)d)m)i)■)(.)*)((■){■}){■}fail dot
  4997   |  6     ((((((((■■)■){■}a)d)m)i)■)(.)*)■fail dot
  4998   |  6     ((((((((■|■)■){■}a)d)m)i)■)(.)*)■fail dot
  4999   |  6     ((((((((■){■}■){■}a)d)m)i)■)(.)*)■fail dot
  5000   |  6     (((((((■■){■}a)d)m)i)(■■))(.)*)■fail dot
  5001   |  6     (((((((■■){■}a)d)m)i)(■|■))(.)*)■fail dot
  5002   |  6     (((((((■■){■}a)d)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  5003   |  6     (((((((■■){■}a)d)m)i)■)(.)*)(■■)fail dot
  5004   |  6     (((((((■■){■}a)d)m)i)■)(.)*)(■|■)fail dot
  5005   |  6     (((((((■■){■}a)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  5006   |  6     ((((((((■■|■)){■}a)d)m)i)■)(.)*)■fail dot
  5007   |  6     (((((((((■|■)|■)){■}a)d)m)i)■)(.)*)■fail dot
  5008   |  6     (((((((((■){■}|■)){■}a)d)m)i)■)(.)*)■fail dot
  5009   |  6     ((((((((■|■)){■}a)d)m)i)(■■))(.)*)■fail dot
  5010   |  6     ((((((((■|■)){■}a)d)m)i)(■|■))(.)*)■fail dot
  5011   |  6     ((((((((■|■)){■}a)d)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  5012   |  6     ((((((((■|■)){■}a)d)m)i)■)(.)*)(■■)fail dot
  5013   |  6     ((((((((■|■)){■}a)d)m)i)■)(.)*)(■|■)fail dot
  5014   |  6     ((((((((■|■)){■}a)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  5015   |  6     ((((((((■■){■}){■}a)d)m)i)■)(.)*)■fail dot
  5016   |  6     (((((((((■|■)){■}){■}a)d)m)i)■)(.)*)■fail dot
  5017   |  6     (((((((((■){■}){■}){■}a)d)m)i)■)(.)*)■fail dot
  5018   |  6     ((((((((■){■}){■}a)d)m)i)(■■))(.)*)■fail dot
  5019   |  6     ((((((((■){■}){■}a)d)m)i)(■|■))(.)*)■fail dot
  5020   |  6     ((((((((■){■}){■}a)d)m)i)(■){■})(.)*)■  unsatisfiable SAT formula       
  5021   |  6     ((((((((■){■}){■}a)d)m)i)■)(.)*)(■■)fail dot
  5022   |  6     ((((((((■){■}){■}a)d)m)i)■)(.)*)(■|■)fail dot
  5023   |  6     ((((((((■){■}){■}a)d)m)i)■)(.)*)(■){■}  unsatisfiable SAT formula       
  5024   |  6     (((((((■){■}a)d)m)i)(■))(.)*)■fail dot
  5025   |  6     (((((((■){■}a)d)m)i)((■■)■))(.)*)■fail dot
  5026   |  6     (((((((■){■}a)d)m)i)((■|■)■))(.)*)■fail dot
  5027   |  6     (((((((■){■}a)d)m)i)((■){■}■))(.)*)■fail dot
  5028   |  6     (((((((■){■}a)d)m)i)(■■))(.)*)(■■)fail dot
  5029   |  6     (((((((■){■}a)d)m)i)(■■))(.)*)(■|■)fail dot
  5030   |  6     (((((((■){■}a)d)m)i)(■■))(.)*)(■){■}fail dot
  5031   |  6     (((((((■){■}a)d)m)i)(■■|■))(.)*)■fail dot
  5032   |  6     (((((((■){■}a)d)m)i)((■|■)|■))(.)*)■fail dot
  5033   |  6     (((((((■){■}a)d)m)i)((■){■}|■))(.)*)■  unsatisfiable SAT formula       
  5034   |  6     (((((((■){■}a)d)m)i)(■|■))(.)*)(■■)fail dot
  5035   |  6     (((((((■){■}a)d)m)i)(■|■))(.)*)(■|■)fail dot
  5036   |  6     (((((((■){■}a)d)m)i)(■|■))(.)*)(■){■}  unsatisfiable SAT formula       
  5037   |  6     (((((((■){■}a)d)m)i)(■■){■})(.)*)■  unsatisfiable SAT formula       
  5038   |  6     (((((((■){■}a)d)m)i)((■|■)){■})(.)*)■fail solve
  5039   |  6     (((((((■){■}a)d)m)i)((■){■}){■})(.)*)■  unsatisfiable SAT formula       
  5040   |  6     (((((((■){■}a)d)m)i)(■){■})(.)*)(■■)fail dot
  5041   |  6     (((((((■){■}a)d)m)i)(■){■})(.)*)(■|■)fail solve
  5042   |  6     (((((((■){■}a)d)m)i)(■){■})(.)*)(■){■}  unsatisfiable SAT formula       
  5043   |  6     (((((((■){■}a)d)m)i)■)(.)*)(■)fail dot
  5044   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■■)■)fail dot
  5045   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■|■)■)fail dot
  5046   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■){■}■)fail dot
  5047   |  6     (((((((■){■}a)d)m)i)■)(.)*)(■■|■)fail dot
  5048   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■|■)|■)fail dot
  5049   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■){■}|■)  unsatisfiable SAT formula       
  5050   |  6     (((((((■){■}a)d)m)i)■)(.)*)(■■){■}  unsatisfiable SAT formula       
  5051   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■|■)){■}fail solve
  5052   |  6     (((((((■){■}a)d)m)i)■)(.)*)((■){■}){■}  unsatisfiable SAT formula       
  5053   |  6     ((((((■a)d)m)i)((■■)))(.)*)■fail dot
  5054   |  6     ((((((■a)d)m)i)((■|■)))(.)*)■fail dot
  5055   |  6     ((((((■a)d)m)i)((■){■}))(.)*)■fail dot
  5056   |  6     ((((((■a)d)m)i)(■))(.)*)(■■)fail dot
  5057   |  6     ((((((■a)d)m)i)(■))(.)*)(■|■)fail dot
  5058   |  6     ((((((■a)d)m)i)(■))(.)*)(■){■}fail dot
  5059   |  6     ((((((■a)d)m)i)((■)■))(.)*)■fail dot
  5060   |  6     ((((((■a)d)m)i)(((■■)■)■))(.)*)■fail dot
  5061   |  6     ((((((■a)d)m)i)(((■|■)■)■))(.)*)■fail dot
  5062   |  6     ((((((■a)d)m)i)(((■){■}■)■))(.)*)■fail dot
  5063   |  6     ((((((■a)d)m)i)((■■)(■■)))(.)*)■fail dot
  5064   |  6     ((((((■a)d)m)i)((■■)(■|■)))(.)*)■fail dot
  5065   |  6     ((((((■a)d)m)i)((■■)(■){■}))(.)*)■fail dot
  5066   |  6     ((((((■a)d)m)i)((■■)■))(.)*)(■■)fail dot
  5067   |  6     ((((((■a)d)m)i)((■■)■))(.)*)(■|■)fail dot
  5068   |  6     ((((((■a)d)m)i)((■■)■))(.)*)(■){■}fail dot
  5069   |  6     ((((((■a)d)m)i)((■■|■)■))(.)*)■fail dot
  5070   |  6     ((((((■a)d)m)i)(((■|■)|■)■))(.)*)■fail dot
  5071   |  6     ((((((■a)d)m)i)(((■){■}|■)■))(.)*)■fail dot
  5072   |  6     ((((((■a)d)m)i)((■|■)(■■)))(.)*)■fail dot
  5073   |  6     ((((((■a)d)m)i)((■|■)(■|■)))(.)*)■fail dot
  5074   |  6     ((((((■a)d)m)i)((■|■)(■){■}))(.)*)■fail dot
  5075   |  6     ((((((■a)d)m)i)((■|■)■))(.)*)(■■)fail dot
  5076   |  6     ((((((■a)d)m)i)((■|■)■))(.)*)(■|■)fail dot
  5077   |  6     ((((((■a)d)m)i)((■|■)■))(.)*)(■){■}fail dot
  5078   |  6     ((((((■a)d)m)i)((■■){■}■))(.)*)■fail dot
  5079   |  6     ((((((■a)d)m)i)(((■|■)){■}■))(.)*)■fail dot
  5080   |  6     ((((((■a)d)m)i)(((■){■}){■}■))(.)*)■fail dot
  5081   |  6     ((((((■a)d)m)i)((■){■}(■■)))(.)*)■fail dot
  5082   |  6     ((((((■a)d)m)i)((■){■}(■|■)))(.)*)■fail dot
  5083   |  6     ((((((■a)d)m)i)((■){■}(■){■}))(.)*)■fail dot
  5084   |  6     ((((((■a)d)m)i)((■){■}■))(.)*)(■■)fail dot
  5085   |  6     ((((((■a)d)m)i)((■){■}■))(.)*)(■|■)fail dot
  5086   |  6     ((((((■a)d)m)i)((■){■}■))(.)*)(■){■}fail dot
  5087   |  6     ((((((■a)d)m)i)(■■))(.)*)(■)fail dot
  5088   |  6     ((((((■a)d)m)i)(■■))(.)*)((■■)■)fail dot
  5089   |  6     ((((((■a)d)m)i)(■■))(.)*)((■|■)■)fail dot
  5090   |  6     ((((((■a)d)m)i)(■■))(.)*)((■){■}■)fail dot
  5091   |  6     ((((((■a)d)m)i)(■■))(.)*)(■■|■)fail dot
  5092   |  6     ((((((■a)d)m)i)(■■))(.)*)((■|■)|■)fail dot
  5093   |  6     ((((((■a)d)m)i)(■■))(.)*)((■){■}|■)fail dot
  5094   |  6     ((((((■a)d)m)i)(■■))(.)*)(■■){■}fail dot
  5095   |  6     ((((((■a)d)m)i)(■■))(.)*)((■|■)){■}fail dot
  5096   |  6     ((((((■a)d)m)i)(■■))(.)*)((■){■}){■}fail dot
  5097   |  6     ((((((■a)d)m)i)((■■)■|■))(.)*)■fail dot
  5098   |  6     ((((((■a)d)m)i)((■|■)■|■))(.)*)■fail dot
  5099   |  6     ((((((■a)d)m)i)((■){■}■|■))(.)*)■fail dot
  5100   |  6     ((((((■a)d)m)i)(■■|■■))(.)*)■fail dot
  5101   |  6     ((((((■a)d)m)i)(■■|(■|■)))(.)*)■fail dot
  5102   |  6     ((((((■a)d)m)i)(■■|(■){■}))(.)*)■fail dot
  5103   |  6     ((((((■a)d)m)i)(■■|■))(.)*)(■■)fail dot
  5104   |  6     ((((((■a)d)m)i)(■■|■))(.)*)(■|■)fail dot
  5105   |  6     ((((((■a)d)m)i)(■■|■))(.)*)(■){■}fail dot
  5106   |  6     ((((((■a)d)m)i)((■■|■)|■))(.)*)■fail dot
  5107   |  6     ((((((■a)d)m)i)(((■|■)|■)|■))(.)*)■fail dot
  5108   |  6     ((((((■a)d)m)i)(((■){■}|■)|■))(.)*)■fail dot
  5109   |  6     ((((((■a)d)m)i)((■|■)|■■))(.)*)■fail dot
  5110   |  6     ((((((■a)d)m)i)((■|■)|(■|■)))(.)*)■fail dot
  5111   |  6     ((((((■a)d)m)i)((■|■)|(■){■}))(.)*)■fail dot
  5112   |  6     ((((((■a)d)m)i)((■|■)|■))(.)*)(■■)fail dot
  5113   |  6     ((((((■a)d)m)i)((■|■)|■))(.)*)(■|■)fail dot
  5114   |  6     ((((((■a)d)m)i)((■|■)|■))(.)*)(■){■}fail dot
  5115   |  6     ((((((■a)d)m)i)((■■){■}|■))(.)*)■fail dot
  5116   |  6     ((((((■a)d)m)i)(((■|■)){■}|■))(.)*)■fail dot
  5117   |  6     ((((((■a)d)m)i)(((■){■}){■}|■))(.)*)■fail dot
  5118   |  6     ((((((■a)d)m)i)((■){■}|■■))(.)*)■fail dot
  5119   |  6     ((((((■a)d)m)i)((■){■}|(■|■)))(.)*)■fail dot
  5120   |  6     ((((((■a)d)m)i)((■){■}|(■){■}))(.)*)■fail dot
  5121   |  6     ((((((■a)d)m)i)((■){■}|■))(.)*)(■■)fail dot
  5122   |  6     ((((((■a)d)m)i)((■){■}|■))(.)*)(■|■)fail dot
  5123   |  6     ((((((■a)d)m)i)((■){■}|■))(.)*)(■){■}fail dot
  5124   |  6     ((((((■a)d)m)i)(■|■))(.)*)(■)fail dot
  5125   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■■)■)fail dot
  5126   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■|■)■)fail dot
  5127   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■){■}■)fail dot
  5128   |  6     ((((((■a)d)m)i)(■|■))(.)*)(■■|■)fail dot
  5129   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■|■)|■)fail dot
  5130   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■){■}|■)fail dot
  5131   |  6     ((((((■a)d)m)i)(■|■))(.)*)(■■){■}fail dot
  5132   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■|■)){■}fail dot
  5133   |  6     ((((((■a)d)m)i)(■|■))(.)*)((■){■}){■}fail dot
  5134   |  6     ((((((■a)d)m)i)((■■)■){■})(.)*)■fail dot
  5135   |  6     ((((((■a)d)m)i)((■|■)■){■})(.)*)■fail dot
  5136   |  6     ((((((■a)d)m)i)((■){■}■){■})(.)*)■fail dot
  5137   |  6     ((((((■a)d)m)i)(■■){■})(.)*)(■■)fail dot
  5138   |  6     ((((((■a)d)m)i)(■■){■})(.)*)(■|■)fail dot
  5139   |  6     ((((((■a)d)m)i)(■■){■})(.)*)(■){■}fail dot
  5140   |  6     ((((((■a)d)m)i)((■■|■)){■})(.)*)■fail dot
  5141   |  6     ((((((■a)d)m)i)(((■|■)|■)){■})(.)*)■fail dot
  5142   |  6     ((((((■a)d)m)i)(((■){■}|■)){■})(.)*)■fail dot
  5143   |  6     ((((((■a)d)m)i)((■|■)){■})(.)*)(■■)fail dot
  5144   |  6     ((((((■a)d)m)i)((■|■)){■})(.)*)(■|■)fail dot
  5145   |  6     ((((((■a)d)m)i)((■|■)){■})(.)*)(■){■}fail dot
  5146   |  6     ((((((■a)d)m)i)((■■){■}){■})(.)*)■fail dot
  5147   |  6     ((((((■a)d)m)i)(((■|■)){■}){■})(.)*)■fail dot
  5148   |  6     ((((((■a)d)m)i)(((■){■}){■}){■})(.)*)■fail dot
  5149   |  6     ((((((■a)d)m)i)((■){■}){■})(.)*)(■■)fail dot
  5150   |  6     ((((((■a)d)m)i)((■){■}){■})(.)*)(■|■)fail dot
  5151   |  6     ((((((■a)d)m)i)((■){■}){■})(.)*)(■){■}fail dot
  5152   |  6     ((((((■a)d)m)i)(■){■})(.)*)(■)fail dot
  5153   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■■)■)fail dot
  5154   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■|■)■)fail dot
  5155   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■){■}■)fail dot
  5156   |  6     ((((((■a)d)m)i)(■){■})(.)*)(■■|■)fail dot
  5157   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■|■)|■)fail dot
  5158   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■){■}|■)fail dot
  5159   |  6     ((((((■a)d)m)i)(■){■})(.)*)(■■){■}fail dot
  5160   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■|■)){■}fail dot
  5161   |  6     ((((((■a)d)m)i)(■){■})(.)*)((■){■}){■}fail dot
  5162   |  6     ((((((■a)d)m)i)■)(.)*)((■■))fail dot
  5163   |  6     ((((((■a)d)m)i)■)(.)*)((■|■))fail dot
  5164   |  6     ((((((■a)d)m)i)■)(.)*)((■){■})fail dot
  5165   |  6     ((((((■a)d)m)i)■)(.)*)((■)■)fail dot
  5166   |  6     ((((((■a)d)m)i)■)(.)*)(((■■)■)■)fail dot
  5167   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)■)■)fail dot
  5168   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}■)■)fail dot
  5169   |  6     ((((((■a)d)m)i)■)(.)*)((■■)(■■))fail dot
  5170   |  6     ((((((■a)d)m)i)■)(.)*)((■■)(■|■))fail dot
  5171   |  6     ((((((■a)d)m)i)■)(.)*)((■■)(■){■})fail dot
  5172   |  6     ((((((■a)d)m)i)■)(.)*)((■■|■)■)fail dot
  5173   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)|■)■)fail dot
  5174   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}|■)■)fail dot
  5175   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)(■■))fail dot
  5176   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)(■|■))fail dot
  5177   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)(■){■})fail dot
  5178   |  6     ((((((■a)d)m)i)■)(.)*)((■■){■}■)fail dot
  5179   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)){■}■)fail dot
  5180   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}){■}■)fail dot
  5181   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}(■■))fail dot
  5182   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}(■|■))fail dot
  5183   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}(■){■})fail dot
  5184   |  6     ((((((■a)d)m)i)■)(.)*)((■■)■|■)fail dot
  5185   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)■|■)fail dot
  5186   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}■|■)fail dot
  5187   |  6     ((((((■a)d)m)i)■)(.)*)(■■|■■)fail dot
  5188   |  6     ((((((■a)d)m)i)■)(.)*)(■■|(■|■))fail dot
  5189   |  6     ((((((■a)d)m)i)■)(.)*)(■■|(■){■})fail dot
  5190   |  6     ((((((■a)d)m)i)■)(.)*)((■■|■)|■)fail dot
  5191   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)|■)|■)fail dot
  5192   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}|■)|■)fail dot
  5193   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)|■■)fail dot
  5194   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)|(■|■))fail dot
  5195   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)|(■){■})fail dot
  5196   |  6     ((((((■a)d)m)i)■)(.)*)((■■){■}|■)fail dot
  5197   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)){■}|■)fail dot
  5198   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}){■}|■)fail dot
  5199   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}|■■)fail dot
  5200   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}|(■|■))fail dot
  5201   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}|(■){■})fail dot
  5202   |  6     ((((((■a)d)m)i)■)(.)*)((■■)■){■}fail dot
  5203   |  6     ((((((■a)d)m)i)■)(.)*)((■|■)■){■}fail dot
  5204   |  6     ((((((■a)d)m)i)■)(.)*)((■){■}■){■}fail dot
  5205   |  6     ((((((■a)d)m)i)■)(.)*)((■■|■)){■}fail dot
  5206   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)|■)){■}fail dot
  5207   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}|■)){■}fail dot
  5208   |  6     ((((((■a)d)m)i)■)(.)*)((■■){■}){■}fail dot
  5209   |  6     ((((((■a)d)m)i)■)(.)*)(((■|■)){■}){■}fail dot
  5210   |  6     ((((((■a)d)m)i)■)(.)*)(((■){■}){■}){■}fail dot
  5211   |  6     (((((((■)a)d)m)i)n)(■){■})■fail dot
  5212   |  6     ((((((((■■)■)a)d)m)i)n)(■){■})■fail dot
  5213   |  6     ((((((((■|■)■)a)d)m)i)n)(■){■})■fail dot
  5214   |  6     ((((((((■){■}■)a)d)m)i)n)(■){■})■fail dot
  5215   |  6     (((((((■■)a)d)m)i)n)(■■){■})■fail dot
  5216   |  6     (((((((■■)a)d)m)i)n)((■|■)){■})■fail dot
  5217   |  6     (((((((■■)a)d)m)i)n)((■){■}){■})■fail dot
  5218   |  6     (((((((■■)a)d)m)i)n)(■){■})(■■)fail dot
  5219   |  6     (((((((■■)a)d)m)i)n)(■){■})(■|■)fail dot
  5220   |  6     (((((((■■)a)d)m)i)n)(■){■})(■){■}fail dot
  5221   |  6     (((((((■■|■)a)d)m)i)n)(■){■})■fail dot
  5222   |  6     ((((((((■|■)|■)a)d)m)i)n)(■){■})■fail dot
  5223   |  6     ((((((((■){■}|■)a)d)m)i)n)(■){■})■fail dot
  5224   |  6     (((((((■|■)a)d)m)i)n)(■■){■})■fail dot
  5225   |  6     (((((((■|■)a)d)m)i)n)((■|■)){■})■fail dot
  5226   |  6     (((((((■|■)a)d)m)i)n)((■){■}){■})■fail dot
  5227   |  6     (((((((■|■)a)d)m)i)n)(■){■})(■■)fail dot
  5228   |  6     (((((((■|■)a)d)m)i)n)(■){■})(■|■)fail dot
  5229   |  6     (((((((■|■)a)d)m)i)n)(■){■})(■){■}fail dot
  5230   |  6     (((((((■■){■}a)d)m)i)n)(■){■})■fail dot
  5231   |  6     ((((((((■|■)){■}a)d)m)i)n)(■){■})■fail dot
  5232   |  6     ((((((((■){■}){■}a)d)m)i)n)(■){■})■fail dot
  5233   |  6     (((((((■){■}a)d)m)i)n)(■■){■})■fail dot
  5234   |  6     (((((((■){■}a)d)m)i)n)((■|■)){■})■fail dot
  5235   |  6     (((((((■){■}a)d)m)i)n)((■){■}){■})■fail dot
  5236   |  6     (((((((■){■}a)d)m)i)n)(■){■})(■■)fail dot
  5237   |  6     (((((((■){■}a)d)m)i)n)(■){■})(■|■)fail dot
  5238   |  6     (((((((■){■}a)d)m)i)n)(■){■})(■){■}  unsatisfiable SAT formula       
  5239   |  6     ((((((■a)d)m)i)n)((■■)■){■})■fail dot
  5240   |  6     ((((((■a)d)m)i)n)((■|■)■){■})■fail dot
  5241   |  6     ((((((■a)d)m)i)n)((■){■}■){■})■fail dot
  5242   |  6     ((((((■a)d)m)i)n)(■■){■})(■■)fail dot
  5243   |  6     ((((((■a)d)m)i)n)(■■){■})(■|■)fail dot
  5244   |  6     ((((((■a)d)m)i)n)(■■){■})(■){■}fail dot
  5245   |  6     ((((((■a)d)m)i)n)((■■|■)){■})■fail dot
  5246   |  6     ((((((■a)d)m)i)n)(((■|■)|■)){■})■fail dot
  5247   |  6     ((((((■a)d)m)i)n)(((■){■}|■)){■})■fail dot
  5248   |  6     ((((((■a)d)m)i)n)((■|■)){■})(■■)fail dot
  5249   |  6     ((((((■a)d)m)i)n)((■|■)){■})(■|■)fail dot
  5250   |  6     ((((((■a)d)m)i)n)((■|■)){■})(■){■}fail dot
  5251   |  6     ((((((■a)d)m)i)n)((■■){■}){■})■fail dot
  5252   |  6     ((((((■a)d)m)i)n)(((■|■)){■}){■})■fail dot
  5253   |  6     ((((((■a)d)m)i)n)(((■){■}){■}){■})■fail dot
  5254   |  6     ((((((■a)d)m)i)n)((■){■}){■})(■■)fail dot
  5255   |  6     ((((((■a)d)m)i)n)((■){■}){■})(■|■)fail dot
  5256   |  6     ((((((■a)d)m)i)n)((■){■}){■})(■){■}fail dot
  5257   |  6     ((((((■a)d)m)i)n)(■){■})(■)fail dot
  5258   |  6     ((((((■a)d)m)i)n)(■){■})((■■)■)fail dot
  5259   |  6     ((((((■a)d)m)i)n)(■){■})((■|■)■)fail dot
  5260   |  6     ((((((■a)d)m)i)n)(■){■})((■){■}■)fail dot
  5261   |  6     ((((((■a)d)m)i)n)(■){■})(■■|■)fail dot
  5262   |  6     ((((((■a)d)m)i)n)(■){■})((■|■)|■)fail dot
  5263   |  6     ((((((■a)d)m)i)n)(■){■})((■){■}|■)fail dot
  5264   |  6     ((((((■a)d)m)i)n)(■){■})(■■){■}fail dot
  5265   |  6     ((((((■a)d)m)i)n)(■){■})((■|■)){■}fail dot
  5266   |  6     ((((((■a)d)m)i)n)(■){■})((■){■}){■}fail dot
  5267   |  6     ((((((((■■))a)d)m)i)n)(■)*)■fail dot
  5268   |  6     ((((((((■|■))a)d)m)i)n)(■)*)■fail dot
  5269   |  6     ((((((((■){■})a)d)m)i)n)(■)*)■fail dot
  5270   |  6     (((((((■)a)d)m)i)n)(■■)*)■fail dot
  5271   |  6     (((((((■)a)d)m)i)n)((■|■))*)■fail dot
  5272   |  6     (((((((■)a)d)m)i)n)((■){■})*)■fail dot
  5273   |  6     (((((((■)a)d)m)i)n)(■)*)(■■)fail dot
  5274   |  6     (((((((■)a)d)m)i)n)(■)*)(■|■)fail dot
  5275   |  6     (((((((■)a)d)m)i)n)(■)*)(■){■}fail dot
  5276   |  6     ((((((((■)■)a)d)m)i)n)(■)*)■fail dot
  5277   |  6     (((((((((■■)■)■)a)d)m)i)n)(■)*)■fail dot
  5278   |  6     (((((((((■|■)■)■)a)d)m)i)n)(■)*)■fail dot
  5279   |  6     (((((((((■){■}■)■)a)d)m)i)n)(■)*)■fail dot
  5280   |  6     ((((((((■■)(■■))a)d)m)i)n)(■)*)■fail dot
  5281   |  6     ((((((((■■)(■|■))a)d)m)i)n)(■)*)■fail dot
  5282   |  6     ((((((((■■)(■){■})a)d)m)i)n)(■)*)■fail dot
  5283   |  6     ((((((((■■)■)a)d)m)i)n)(■■)*)■fail dot
  5284   |  6     ((((((((■■)■)a)d)m)i)n)((■|■))*)■fail dot
  5285   |  6     ((((((((■■)■)a)d)m)i)n)((■){■})*)■fail dot
  5286   |  6     ((((((((■■)■)a)d)m)i)n)(■)*)(■■)fail dot
  5287   |  6     ((((((((■■)■)a)d)m)i)n)(■)*)(■|■)fail dot
  5288   |  6     ((((((((■■)■)a)d)m)i)n)(■)*)(■){■}fail dot
  5289   |  6     ((((((((■■|■)■)a)d)m)i)n)(■)*)■fail dot
  5290   |  6     (((((((((■|■)|■)■)a)d)m)i)n)(■)*)■fail dot
  5291   |  6     (((((((((■){■}|■)■)a)d)m)i)n)(■)*)■fail dot
  5292   |  6     ((((((((■|■)(■■))a)d)m)i)n)(■)*)■fail dot
  5293   |  6     ((((((((■|■)(■|■))a)d)m)i)n)(■)*)■fail dot
  5294   |  6     ((((((((■|■)(■){■})a)d)m)i)n)(■)*)■fail dot
  5295   |  6     ((((((((■|■)■)a)d)m)i)n)(■■)*)■fail dot
  5296   |  6     ((((((((■|■)■)a)d)m)i)n)((■|■))*)■fail dot
  5297   |  6     ((((((((■|■)■)a)d)m)i)n)((■){■})*)■fail dot
  5298   |  6     ((((((((■|■)■)a)d)m)i)n)(■)*)(■■)fail dot
  5299   |  6     ((((((((■|■)■)a)d)m)i)n)(■)*)(■|■)fail dot
  5300   |  6     ((((((((■|■)■)a)d)m)i)n)(■)*)(■){■}fail dot
  5301   |  6     ((((((((■■){■}■)a)d)m)i)n)(■)*)■fail dot
  5302   |  6     (((((((((■|■)){■}■)a)d)m)i)n)(■)*)■fail dot
  5303   |  6     (((((((((■){■}){■}■)a)d)m)i)n)(■)*)■fail dot
  5304   |  6     ((((((((■){■}(■■))a)d)m)i)n)(■)*)■fail dot
  5305   |  6     ((((((((■){■}(■|■))a)d)m)i)n)(■)*)■fail dot
  5306   |  6     ((((((((■){■}(■){■})a)d)m)i)n)(■)*)■fail dot
  5307   |  6     ((((((((■){■}■)a)d)m)i)n)(■■)*)■fail dot
  5308   |  6     ((((((((■){■}■)a)d)m)i)n)((■|■))*)■fail dot
  5309   |  6     ((((((((■){■}■)a)d)m)i)n)((■){■})*)■fail dot
  5310   |  6     ((((((((■){■}■)a)d)m)i)n)(■)*)(■■)fail dot
  5311   |  6     ((((((((■){■}■)a)d)m)i)n)(■)*)(■|■)fail dot
  5312   |  6     ((((((((■){■}■)a)d)m)i)n)(■)*)(■){■}fail dot
  5313   |  6     (((((((■■)a)d)m)i)n)((■■)■)*)■fail dot
  5314   |  6     (((((((■■)a)d)m)i)n)((■|■)■)*)■fail dot
  5315   |  6     (((((((■■)a)d)m)i)n)((■){■}■)*)■fail dot
  5316   |  6     (((((((■■)a)d)m)i)n)(■(■■))*)■fail dot
  5317   |  6     (((((((■■)a)d)m)i)n)(■(■|■))*)■fail dot
  5318   |  6     (((((((■■)a)d)m)i)n)(■(■){■})*)■fail dot
  5319   |  6     (((((((■■)a)d)m)i)n)(■■)*)(■■)fail dot
  5320   |  6     (((((((■■)a)d)m)i)n)(■■)*)(■|■)fail dot
  5321   |  6     (((((((■■)a)d)m)i)n)(■■)*)(■){■}fail dot
  5322   |  6     (((((((■■)a)d)m)i)n)((■■|■))*)■fail dot
  5323   |  6     (((((((■■)a)d)m)i)n)(((■|■)|■))*)■fail dot
  5324   |  6     (((((((■■)a)d)m)i)n)(((■){■}|■))*)■fail dot
  5325   |  6     (((((((■■)a)d)m)i)n)((■|■■))*)■fail dot
  5326   |  6     (((((((■■)a)d)m)i)n)((■|(■|■)))*)■fail dot
  5327   |  6     (((((((■■)a)d)m)i)n)((■|(■){■}))*)■fail dot
  5328   |  6     (((((((■■)a)d)m)i)n)((■|■))*)(■■)fail dot
  5329   |  6     (((((((■■)a)d)m)i)n)((■|■))*)(■|■)fail dot
  5330   |  6     (((((((■■)a)d)m)i)n)((■|■))*)(■){■}fail dot
  5331   |  6     (((((((■■)a)d)m)i)n)((■■){■})*)■fail dot
  5332   |  6     (((((((■■)a)d)m)i)n)(((■|■)){■})*)■fail dot
  5333   |  6     (((((((■■)a)d)m)i)n)(((■){■}){■})*)■fail dot
  5334   |  6     (((((((■■)a)d)m)i)n)((■){■})*)(■■)fail dot
  5335   |  6     (((((((■■)a)d)m)i)n)((■){■})*)(■|■)fail dot
  5336   |  6     (((((((■■)a)d)m)i)n)((■){■})*)(■){■}fail dot
  5337   |  6     (((((((■■)a)d)m)i)n)(■)*)(■)fail dot
  5338   |  6     (((((((■■)a)d)m)i)n)(■)*)((■■)■)fail dot
  5339   |  6     (((((((■■)a)d)m)i)n)(■)*)((■|■)■)fail dot
  5340   |  6     (((((((■■)a)d)m)i)n)(■)*)((■){■}■)fail dot
  5341   |  6     (((((((■■)a)d)m)i)n)(■)*)(■■|■)fail dot
  5342   |  6     (((((((■■)a)d)m)i)n)(■)*)((■|■)|■)fail dot
  5343   |  6     (((((((■■)a)d)m)i)n)(■)*)((■){■}|■)fail dot
  5344   |  6     (((((((■■)a)d)m)i)n)(■)*)(■■){■}fail dot
  5345   |  6     (((((((■■)a)d)m)i)n)(■)*)((■|■)){■}fail dot
  5346   |  6     (((((((■■)a)d)m)i)n)(■)*)((■){■}){■}fail dot
  5347   |  6     ((((((((■■)■|■)a)d)m)i)n)(■)*)■fail dot
  5348   |  6     ((((((((■|■)■|■)a)d)m)i)n)(■)*)■fail dot
  5349   |  6     ((((((((■){■}■|■)a)d)m)i)n)(■)*)■fail dot
  5350   |  6     (((((((■■|■■)a)d)m)i)n)(■)*)■fail dot
  5351   |  6     (((((((■■|(■|■))a)d)m)i)n)(■)*)■fail dot
  5352   |  6     (((((((■■|(■){■})a)d)m)i)n)(■)*)■fail dot
  5353   |  6     (((((((■■|■)a)d)m)i)n)(■■)*)■fail dot
  5354   |  6     (((((((■■|■)a)d)m)i)n)((■|■))*)■fail dot
  5355   |  6     (((((((■■|■)a)d)m)i)n)((■){■})*)■fail dot
  5356   |  6     (((((((■■|■)a)d)m)i)n)(■)*)(■■)fail dot
  5357   |  6     (((((((■■|■)a)d)m)i)n)(■)*)(■|■)fail dot
  5358   |  6     (((((((■■|■)a)d)m)i)n)(■)*)(■){■}fail dot
  5359   |  6     ((((((((■■|■)|■)a)d)m)i)n)(■)*)■fail dot
  5360   |  6     (((((((((■|■)|■)|■)a)d)m)i)n)(■)*)■fail dot
  5361   |  6     (((((((((■){■}|■)|■)a)d)m)i)n)(■)*)■fail dot
  5362   |  6     ((((((((■|■)|■■)a)d)m)i)n)(■)*)■fail dot
  5363   |  6     ((((((((■|■)|(■|■))a)d)m)i)n)(■)*)■fail dot
  5364   |  6     ((((((((■|■)|(■){■})a)d)m)i)n)(■)*)■fail dot
  5365   |  6     ((((((((■|■)|■)a)d)m)i)n)(■■)*)■fail dot
  5366   |  6     ((((((((■|■)|■)a)d)m)i)n)((■|■))*)■fail dot
  5367   |  6     ((((((((■|■)|■)a)d)m)i)n)((■){■})*)■fail dot
  5368   |  6     ((((((((■|■)|■)a)d)m)i)n)(■)*)(■■)fail dot
  5369   |  6     ((((((((■|■)|■)a)d)m)i)n)(■)*)(■|■)fail dot
  5370   |  6     ((((((((■|■)|■)a)d)m)i)n)(■)*)(■){■}fail dot
  5371   |  6     ((((((((■■){■}|■)a)d)m)i)n)(■)*)■fail dot
  5372   |  6     (((((((((■|■)){■}|■)a)d)m)i)n)(■)*)■fail dot
  5373   |  6     (((((((((■){■}){■}|■)a)d)m)i)n)(■)*)■fail dot
  5374   |  6     ((((((((■){■}|■■)a)d)m)i)n)(■)*)■fail dot
  5375   |  6     ((((((((■){■}|(■|■))a)d)m)i)n)(■)*)■fail dot
  5376   |  6     ((((((((■){■}|(■){■})a)d)m)i)n)(■)*)■fail dot
  5377   |  6     ((((((((■){■}|■)a)d)m)i)n)(■■)*)■fail dot
  5378   |  6     ((((((((■){■}|■)a)d)m)i)n)((■|■))*)■fail dot
  5379   |  6     ((((((((■){■}|■)a)d)m)i)n)((■){■})*)■fail dot
  5380   |  6     ((((((((■){■}|■)a)d)m)i)n)(■)*)(■■)fail dot
  5381   |  6     ((((((((■){■}|■)a)d)m)i)n)(■)*)(■|■)fail dot
  5382   |  6     ((((((((■){■}|■)a)d)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  5383   |  6     (((((((■|■)a)d)m)i)n)((■■)■)*)■fail dot
  5384   |  6     (((((((■|■)a)d)m)i)n)((■|■)■)*)■fail dot
  5385   |  6     (((((((■|■)a)d)m)i)n)((■){■}■)*)■fail dot
  5386   |  6     (((((((■|■)a)d)m)i)n)(■(■■))*)■fail dot
  5387   |  6     (((((((■|■)a)d)m)i)n)(■(■|■))*)■fail dot
  5388   |  6     (((((((■|■)a)d)m)i)n)(■(■){■})*)■fail dot
  5389   |  6     (((((((■|■)a)d)m)i)n)(■■)*)(■■)fail dot
  5390   |  6     (((((((■|■)a)d)m)i)n)(■■)*)(■|■)fail dot
  5391   |  6     (((((((■|■)a)d)m)i)n)(■■)*)(■){■}fail dot
  5392   |  6     (((((((■|■)a)d)m)i)n)((■■|■))*)■fail dot
  5393   |  6     (((((((■|■)a)d)m)i)n)(((■|■)|■))*)■fail dot
  5394   |  6     (((((((■|■)a)d)m)i)n)(((■){■}|■))*)■fail dot
  5395   |  6     (((((((■|■)a)d)m)i)n)((■|■■))*)■fail dot
  5396   |  6     (((((((■|■)a)d)m)i)n)((■|(■|■)))*)■fail dot
  5397   |  6     (((((((■|■)a)d)m)i)n)((■|(■){■}))*)■fail dot
  5398   |  6     (((((((■|■)a)d)m)i)n)((■|■))*)(■■)fail dot
  5399   |  6     (((((((■|■)a)d)m)i)n)((■|■))*)(■|■)fail dot
  5400   |  6     (((((((■|■)a)d)m)i)n)((■|■))*)(■){■}fail dot
  5401   |  6     (((((((■|■)a)d)m)i)n)((■■){■})*)■fail dot
  5402   |  6     (((((((■|■)a)d)m)i)n)(((■|■)){■})*)■fail dot
  5403   |  6     (((((((■|■)a)d)m)i)n)(((■){■}){■})*)■fail dot
  5404   |  6     (((((((■|■)a)d)m)i)n)((■){■})*)(■■)fail dot
  5405   |  6     (((((((■|■)a)d)m)i)n)((■){■})*)(■|■)fail dot
  5406   |  6     (((((((■|■)a)d)m)i)n)((■){■})*)(■){■}fail dot
  5407   |  6     (((((((■|■)a)d)m)i)n)(■)*)(■)fail dot
  5408   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■■)■)fail dot
  5409   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■|■)■)fail dot
  5410   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■){■}■)fail dot
  5411   |  6     (((((((■|■)a)d)m)i)n)(■)*)(■■|■)fail dot
  5412   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■|■)|■)fail dot
  5413   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■){■}|■)fail dot
  5414   |  6     (((((((■|■)a)d)m)i)n)(■)*)(■■){■}fail dot
  5415   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■|■)){■}fail dot
  5416   |  6     (((((((■|■)a)d)m)i)n)(■)*)((■){■}){■}fail dot
  5417   |  6     ((((((((■■)■){■}a)d)m)i)n)(■)*)■fail dot
  5418   |  6     ((((((((■|■)■){■}a)d)m)i)n)(■)*)■fail dot
  5419   |  6     ((((((((■){■}■){■}a)d)m)i)n)(■)*)■fail dot
  5420   |  6     (((((((■■){■}a)d)m)i)n)(■■)*)■fail dot
  5421   |  6     (((((((■■){■}a)d)m)i)n)((■|■))*)■fail dot
  5422   |  6     (((((((■■){■}a)d)m)i)n)((■){■})*)■fail dot
  5423   |  6     (((((((■■){■}a)d)m)i)n)(■)*)(■■)fail dot
  5424   |  6     (((((((■■){■}a)d)m)i)n)(■)*)(■|■)fail dot
  5425   |  6     (((((((■■){■}a)d)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  5426   |  6     ((((((((■■|■)){■}a)d)m)i)n)(■)*)■fail dot
  5427   |  6     (((((((((■|■)|■)){■}a)d)m)i)n)(■)*)■fail dot
  5428   |  6     (((((((((■){■}|■)){■}a)d)m)i)n)(■)*)■fail dot
  5429   |  6     ((((((((■|■)){■}a)d)m)i)n)(■■)*)■fail dot
  5430   |  6     ((((((((■|■)){■}a)d)m)i)n)((■|■))*)■fail dot
  5431   |  6     ((((((((■|■)){■}a)d)m)i)n)((■){■})*)■fail dot
  5432   |  6     ((((((((■|■)){■}a)d)m)i)n)(■)*)(■■)fail dot
  5433   |  6     ((((((((■|■)){■}a)d)m)i)n)(■)*)(■|■)fail dot
  5434   |  6     ((((((((■|■)){■}a)d)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  5435   |  6     ((((((((■■){■}){■}a)d)m)i)n)(■)*)■fail dot
  5436   |  6     (((((((((■|■)){■}){■}a)d)m)i)n)(■)*)■fail dot
  5437   |  6     (((((((((■){■}){■}){■}a)d)m)i)n)(■)*)■fail dot
  5438   |  6     ((((((((■){■}){■}a)d)m)i)n)(■■)*)■fail dot
  5439   |  6     ((((((((■){■}){■}a)d)m)i)n)((■|■))*)■fail dot
  5440   |  6     ((((((((■){■}){■}a)d)m)i)n)((■){■})*)■fail dot
  5441   |  6     ((((((((■){■}){■}a)d)m)i)n)(■)*)(■■)fail dot
  5442   |  6     ((((((((■){■}){■}a)d)m)i)n)(■)*)(■|■)fail dot
  5443   |  6     ((((((((■){■}){■}a)d)m)i)n)(■)*)(■){■}  unsatisfiable SAT formula       
  5444   |  6     (((((((■){■}a)d)m)i)n)((■■)■)*)■fail dot
  5445   |  6     (((((((■){■}a)d)m)i)n)((■|■)■)*)■fail dot
  5446   |  6     (((((((■){■}a)d)m)i)n)((■){■}■)*)■fail dot
  5447   |  6     (((((((■){■}a)d)m)i)n)(■(■■))*)■fail dot
  5448   |  6     (((((((■){■}a)d)m)i)n)(■(■|■))*)■fail dot
  5449   |  6     (((((((■){■}a)d)m)i)n)(■(■){■})*)■fail dot
  5450   |  6     (((((((■){■}a)d)m)i)n)(■■)*)(■■)fail dot
  5451   |  6     (((((((■){■}a)d)m)i)n)(■■)*)(■|■)fail dot
  5452   |  6     (((((((■){■}a)d)m)i)n)(■■)*)(■){■}get a solution: ((((((([∅]){0}a)d)m)i)n)(/ )*)(/){0,1}
add positive: admin/
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ ])*)([/]){0,2}
add positive: admin/	
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	 ])*)([	/]){0,2}
add positive: admin/

add negative: admin	
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([
/]){0,2}
add positive: admin/
add negative: admin

get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[	
 ])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
])*)([/]){0,2}
add positive: admin/ 
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 ])*)([/ ]){0,2}
add positive: admin/!
add negative: admin 
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[! 	
 ])*)([!/]){0,2}
add positive: admin/"
add negative: admin!
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!" 	
 ])*)(["/]){0,2}
add positive: admin/#
add negative: admin"
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"# 	
 ])*)([#/]){0,2}
add positive: admin/$
add negative: admin#
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"# \$	
 ])*)([\$/]){0,2}
add positive: admin/%
add negative: admin$
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#% \$	
 ])*)([%/]){0,2}
add positive: admin/&
add negative: admin%
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%& \$	
 ])*)([&/]){0,2}
add positive: admin/'
add negative: admin&
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&' \$	
 ])*)(['/]){0,2}
add positive: admin/(
add negative: admin'
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'( \$	
 ])*)([(/]){0,2}
add positive: admin/)
add negative: admin(
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'() \$	
 ])*)([)/]){0,2}
add positive: admin/*
add negative: admin)
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'()* \$	
 ])*)([*/]){0,2}
add positive: admin/+
add negative: admin*
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'()*+ \$	
 ])*)([+/]){0,2}
add positive: admin/,
add negative: admin+
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'()*+, \$	
 ])*)([,/]){0,2}
add positive: admin/-
add negative: admin,
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'()*+, \$	
\- ])*)([\-/]){0,2}
add positive: admin/.
add negative: admin-
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[!"#%&'()*+, \$	
\-\. ])*)([\./]){0,2}
add positive: admin/0
add negative: admin.
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0\$\-\.])*)([/0]){0,2}
add positive: admin/1
add negative: admin0
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,01\$\-\.])*)([1/]){0,2}
add positive: admin/2
add negative: admin1
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,012\$\-\.])*)([2/]){0,2}
add positive: admin/3
add negative: admin2
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123\$\-\.])*)([3/]){0,2}
add positive: admin/4
add negative: admin3
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,01234\$\-\.])*)([4/]){0,2}
add positive: admin/5
add negative: admin4
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,012345\$\-\.])*)([5/]){0,2}
add positive: admin/6
add negative: admin5
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456\$\-\.])*)([6/]){0,2}
add positive: admin/7
add negative: admin6
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,01234567\$\-\.])*)([7/]){0,2}
add positive: admin/8
add negative: admin7
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,012345678\$\-\.])*)([8/]){0,2}
add positive: admin/9
add negative: admin8
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789\$\-\.])*)([9/]){0,2}
add positive: admin/:
add negative: admin9
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:\$\-\.])*)([:/]){0,2}
add positive: admin/;
add negative: admin:
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;\$\-\.])*)([;/]){0,2}
add positive: admin/<
add negative: admin;
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<\$\-\.])*)([</]){0,2}
add positive: admin/=
add negative: admin<
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=\$\-\.])*)([=/]){0,2}
add positive: admin/>
add negative: admin=
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>\$\-\.])*)([>/]){0,2}
add positive: admin/?
add negative: admin>
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?\$\-\.])*)([/?]){0,2}
add positive: admin/@
add negative: admin?
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@\$\-\.])*)([/@]){0,2}
add positive: admin/A
add negative: admin@
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@A\$\-\.])*)([A/]){0,2}
add positive: admin/B
add negative: adminA
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@AB\$\-\.])*)([B/]){0,2}
add positive: admin/C
add negative: adminB
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABC\$\-\.])*)([C/]){0,2}
add positive: admin/D
add negative: adminC
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCD\$\-\.])*)([D/]){0,2}
add positive: admin/E
add negative: adminD
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDE\$\-\.])*)([E/]){0,2}
add positive: admin/F
add negative: adminE
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEF\$\-\.])*)([F/]){0,2}
add positive: admin/G
add negative: adminF
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$\-\.])*)([G/]){0,2}
add positive: admin/H
add negative: adminG
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$H\-\.])*)([H/]){0,2}
add positive: admin/I
add negative: adminH
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HI\-\.])*)([I/]){0,2}
add positive: admin/J
add negative: adminI
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJ\-\.])*)([J/]){0,2}
add positive: admin/K
add negative: adminJ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJK\-\.])*)([K/]){0,2}
add positive: admin/L
add negative: adminK
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKL\-\.])*)([L/]){0,2}
add positive: admin/M
add negative: adminL
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLM\-\.])*)([M/]){0,2}
add positive: admin/N
add negative: adminM
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMN\-\.])*)([N/]){0,2}
add positive: admin/O
add negative: adminN
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNO\-\.])*)([/O]){0,2}
add positive: admin/P
add negative: adminO
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-\.])*)([/P]){0,2}
add positive: admin/Q
add negative: adminP
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.])*)([Q/]){0,2}
add positive: admin/R
add negative: adminQ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.R])*)([R/]){0,2}
add positive: admin/S
add negative: adminR
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RS])*)([S/]){0,2}
add positive: admin/T
add negative: adminS
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RST])*)([T/]){0,2}
add positive: admin/U
add negative: adminT
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTU])*)([U/]){0,2}
add positive: admin/V
add negative: adminU
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUV])*)([V/]){0,2}
add positive: admin/W
add negative: adminV
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVW])*)([W/]){0,2}
add positive: admin/X
add negative: adminW
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])*)([X/]){0,2}
add positive: admin/Y
add negative: adminX
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXY])*)([Y/]){0,2}
add positive: admin/Z
add negative: adminY
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])*)([Z/]){0,2}
add positive: admin/[
add negative: adminZ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[])*)([[/]){0,2}
add positive: admin/\
add negative: admin[
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\])*)([\/]){0,2}
add positive: admin/]
add negative: admin\
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]])*)([]/]){0,2}
add positive: admin/^
add negative: admin]
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^])*)([^/]){0,2}
add positive: admin/_
add negative: admin^
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_])*)([/_]){0,2}
add positive: admin/`
add negative: admin_
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`])*)([/`]){0,2}
add positive: admin/a
add negative: admin`
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`a])*)([a/]){0,2}
add positive: admin/b
add negative: admina
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`ab])*)([b/]){0,2}
add positive: admin/c
add negative: adminb
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abc])*)([c/]){0,2}
add positive: admin/d
add negative: adminc
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcd])*)([d/]){0,2}
add positive: admin/e
add negative: admind
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcde])*)([e/]){0,2}
add positive: admin/f
add negative: admine
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdef])*)([f/]){0,2}
add positive: admin/g
add negative: adminf
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefg])*)([g/]){0,2}
add positive: admin/h
add negative: adming
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefgh])*)([h/]){0,2}
add positive: admin/i
add negative: adminh
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghi])*)([i/]){0,2}
add positive: admin/j
add negative: admini
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghij])*)([j/]){0,2}
add positive: admin/k
add negative: adminj
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijk])*)([k/]){0,2}
add positive: admin/l
add negative: admink
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijkl])*)([l/]){0,2}
add positive: admin/m
add negative: adminl
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklm])*)([m/]){0,2}
add positive: admin/n
add negative: adminm
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])*)([n/]){0,2}
add positive: admin/o
add negative: adminn
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])*)([/o]){0,2}
add positive: admin/p
add negative: admino
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnop])*)([/p]){0,2}
add positive: admin/q
add negative: adminp
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopq])*)([q/]){0,2}
add positive: admin/r
add negative: adminq
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])*)([r/]){0,2}
add positive: admin/s
add negative: adminr
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrs])*)([s/]){0,2}
add positive: admin/t
add negative: admins
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrst])*)([t/]){0,2}
add positive: admin/u
add negative: admint
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])*)([u/]){0,2}
add positive: admin/v
add negative: adminu
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuv])*)([v/]){0,2}
add positive: admin/w
add negative: adminv
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvw])*)([w/]){0,2}
add positive: admin/x
add negative: adminw
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwx])*)([x/]){0,2}
add positive: admin/y
add negative: adminx
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxy])*)([y/]){0,2}
add positive: admin/z
add negative: adminy
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz])*)([z/]){0,2}
add positive: admin/{
add negative: adminz
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{])*)([{/]){0,2}
add positive: admin/|
add negative: admin{
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|])*)([|/]){0,2}
add positive: admin/}
add negative: admin|
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}])*)([}/]){0,2}
add positive: admin/~
add negative: admin}
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([~/]){0,2}
add positive: admin/
add negative: admin~
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])*)([/]){0,2}
add positive: admin/ 
add negative: admin
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ])*)([/ ]){0,2}
add positive: admin/¡
add negative: admin 
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])*)([¡/]){0,2}
add positive: admin/¢
add negative: admin¡
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢])*)([¢/]){0,2}
add positive: admin/£
add negative: admin¢
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])*)([£/]){0,2}
add positive: admin/¤
add negative: admin£
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])*)([¤/]){0,2}
add positive: admin/¥
add negative: admin¤
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥])*)([¥/]){0,2}
add positive: admin/¦
add negative: admin¥
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])*)([¦/]){0,2}
add positive: admin/§
add negative: admin¦
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§])*)([§/]){0,2}
add positive: admin/¨
add negative: admin§
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨])*)([¨/]){0,2}
add positive: admin/©
add negative: admin¨
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©])*)([©/]){0,2}
add positive: admin/ª
add negative: admin©
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª])*)([ª/]){0,2}
add positive: admin/«
add negative: adminª
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«])*)([«/]){0,2}
add positive: admin/¬
add negative: admin«
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬])*)([¬/]){0,2}
add positive: admin/­
add negative: admin¬
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­])*)([­/]){0,2}
add positive: admin/®
add negative: admin­
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®])*)([®/]){0,2}
add positive: admin/¯
add negative: admin®
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯])*)([/¯]){0,2}
add positive: admin/°
add negative: admin¯
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°])*)([/°]){0,2}
add positive: admin/±
add negative: admin°
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])*)([±/]){0,2}
add positive: admin/²
add negative: admin±
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])*)([²/]){0,2}
add positive: admin/³
add negative: admin²
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³])*)([³/]){0,2}
add positive: admin/´
add negative: admin³
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´])*)([´/]){0,2}
add positive: admin/µ
add negative: admin´
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ])*)([µ/]){0,2}
add positive: admin/¶
add negative: adminµ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶])*)([¶/]){0,2}
add positive: admin/·
add negative: admin¶
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·])*)([·/]){0,2}
add positive: admin/¸
add negative: admin·
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸])*)([¸/]){0,2}
add positive: admin/¹
add negative: admin¸
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹])*)([¹/]){0,2}
add positive: admin/º
add negative: admin¹
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º])*)([º/]){0,2}
add positive: admin/»
add negative: adminº
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»])*)([»/]){0,2}
add positive: admin/¼
add negative: admin»
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼])*)([¼/]){0,2}
add positive: admin/½
add negative: admin¼
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])*)([½/]){0,2}
add positive: admin/¾
add negative: admin½
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾])*)([¾/]){0,2}
add positive: admin/¿
add negative: admin¾
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿])*)([/¿]){0,2}
add positive: admin/À
add negative: admin¿
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿À\$\-\.])*)([/À]){0,2}
add positive: admin/Á
add negative: adminÀ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁ\$\-\.])*)([Á/]){0,2}
add positive: admin/Â
add negative: adminÁ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ\$\-\.])*)([Â/]){0,2}
add positive: admin/Ã
add negative: adminÂ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃ\$\-\.])*)([Ã/]){0,2}
add positive: admin/Ä
add negative: adminÃ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄ\$\-\.])*)([Ä/]){0,2}
add positive: admin/Å
add negative: adminÄ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅ\$\-\.])*)([Å/]){0,2}
add positive: admin/Æ
add negative: adminÅ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆ\$\-\.])*)([Æ/]){0,2}
add positive: admin/Ç
add negative: adminÆ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇ\$\-\.])*)([Ç/]){0,2}
add positive: admin/È
add negative: adminÇ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈ\$\-\.])*)([È/]){0,2}
add positive: admin/É
add negative: adminÈ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉ\$\-\.])*)([É/]){0,2}
add positive: admin/Ê
add negative: adminÉ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊ\$\-\.])*)([Ê/]){0,2}
add positive: admin/Ë
add negative: adminÊ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])*)([Ë/]){0,2}
add positive: admin/Ì
add negative: adminË
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌ\$\-\.])*)([Ì/]){0,2}
add positive: admin/Í
add negative: adminÌ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍ\$\-\.])*)([Í/]){0,2}
add positive: admin/Î
add negative: adminÍ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎ\$\-\.])*)([Î/]){0,2}
add positive: admin/Ï
add negative: adminÎ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])*)([Ï/]){0,2}
add positive: admin/Ð
add negative: adminÏ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])*)([/Ð]){0,2}
add positive: admin/Ñ
add negative: adminÐ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑ\$\-\.])*)([Ñ/]){0,2}
add positive: admin/Ò
add negative: adminÑ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.])*)([Ò/]){0,2}
add positive: admin/Ó
add negative: adminÒ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\$\-\.])*)([Ó/]){0,2}
add positive: admin/Ô
add negative: adminÓ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.])*)([Ô/]){0,2}
add positive: admin/Õ
add negative: adminÔ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])*)([Õ/]){0,2}
add positive: admin/Ö
add negative: adminÕ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ\$\-\.])*)([Ö/]){0,2}
add positive: admin/×
add negative: adminÖ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])*)([×/]){0,2}
add positive: admin/Ø
add negative: admin×
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])*)([Ø/]){0,2}
add positive: admin/Ù
add negative: adminØ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙ\$\-\.])*)([Ù/]){0,2}
add positive: admin/Ú
add negative: adminÙ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.])*)([Ú/]){0,2}
add positive: admin/Û
add negative: adminÚ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛ\$\-\.])*)([Û/]){0,2}
add positive: admin/Ü
add negative: adminÛ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ\$\-\.])*)([Ü/]){0,2}
add positive: admin/Ý
add negative: adminÜ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝ\$\-\.])*)([Ý/]){0,2}
add positive: admin/Þ
add negative: adminÝ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞ\$\-\.])*)([Þ/]){0,2}
add positive: admin/ß
add negative: adminÞ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞß\$\-\.])*)([ß/]){0,2}
add positive: admin/à
add negative: adminß
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßà\$\-\.])*)([/à]){0,2}
add positive: admin/á
add negative: adminà
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàá\$\-\.])*)([á/]){0,2}
add positive: admin/â
add negative: adminá
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâ\$\-\.])*)([â/]){0,2}
add positive: admin/ã
add negative: adminâ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâã\$\-\.])*)([ã/]){0,2}
add positive: admin/ä
add negative: adminã
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãä\$\-\.])*)([ä/]){0,2}
add positive: admin/å
add negative: adminä
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.])*)([å/]){0,2}
add positive: admin/æ
add negative: adminå
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæ\$\-\.])*)([æ/]){0,2}
add positive: admin/ç
add negative: adminæ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç\$\-\.])*)([ç/]){0,2}
add positive: admin/è
add negative: adminç
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])*)([è/]){0,2}
add positive: admin/é
add negative: adminè
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèé\$\-\.])*)([é/]){0,2}
add positive: admin/ê
add negative: adminé
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéê\$\-\.])*)([ê/]){0,2}
add positive: admin/ë
add negative: adminê
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêë\$\-\.])*)([ë/]){0,2}
add positive: admin/ì
add negative: adminë
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])*)([ì/]){0,2}
add positive: admin/í
add negative: adminì
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.])*)([í/]){0,2}
add positive: admin/î
add negative: adminí
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])*)([î/]){0,2}
add positive: admin/ï
add negative: adminî
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîï\$\-\.])*)([/ï]){0,2}
add positive: admin/ð
add negative: adminï
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.])*)([/ð]){0,2}
add positive: admin/ñ
add negative: adminð
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñ\$\-\.])*)([ñ/]){0,2}
add positive: admin/ò
add negative: adminñ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñò\$\-\.])*)([ò/]){0,2}
add positive: admin/ó
add negative: adminò
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòó\$\-\.])*)([ó/]){0,2}
add positive: admin/ô
add negative: adminó
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])*)([ô/]){0,2}
add positive: admin/õ
add negative: adminô
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõ\$\-\.])*)([õ/]){0,2}
add positive: admin/ö
add negative: adminõ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö\$\-\.])*)([ö/]){0,2}
add positive: admin/÷
add negative: adminö
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\$\-\.])*)([÷/]){0,2}
add positive: admin/ø
add negative: admin÷
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷ø\$\-\.])*)([ø/]){0,2}
add positive: admin/ù
add negative: adminø
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.])*)([ù/]){0,2}
add positive: admin/ú
add negative: adminù
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.])*)([ú/]){0,2}
add positive: admin/û
add negative: adminú
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])*)([û/]){0,2}
add positive: admin/ü
add negative: adminû
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûü\$\-\.])*)([ü/]){0,2}
add positive: admin/ý
add negative: adminü
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý\$\-\.])*)([ý/]){0,2}
add positive: admin/þ
add negative: adminý
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþ\$\-\.])*)([þ/]){0,2}
add positive: admin/ÿ
add negative: adminþ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\$\-\.])*)([ÿ/]){0,2}
add positive: admin/Ā
add negative: adminÿ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀ\$\-\.])*)([/Ā]){0,2}
add positive: admin/ā
add negative: adminĀ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀā\$\-\.])*)([ā/]){0,2}
add positive: admin/Ă
add negative: adminā
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂ\$\-\.])*)([Ă/]){0,2}
add positive: admin/ă
add negative: adminĂ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂă\$\-\.])*)([ă/]){0,2}
add positive: admin/Ą
add negative: admină
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄ\$\-\.])*)([Ą/]){0,2}
add positive: admin/ą
add negative: adminĄ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄą\$\-\.])*)([ą/]){0,2}
add positive: admin/Ć
add negative: adminą
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆ\$\-\.])*)([Ć/]){0,2}
add positive: admin/ć
add negative: adminĆ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆć\$\-\.])*)([ć/]){0,2}
add positive: admin/Ĉ
add negative: adminć
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈ\$\-\.])*)([Ĉ/]){0,2}
add positive: admin/ĉ
add negative: adminĈ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉ\$\-\.])*)([ĉ/]){0,2}
add positive: admin/Ċ
add negative: adminĉ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊ\$\-\.])*)([Ċ/]){0,2}
add positive: admin/ċ
add negative: adminĊ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċ\$\-\.])*)([ċ/]){0,2}
add positive: admin/Č
add negative: adminċ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČ\$\-\.])*)([Č/]){0,2}
add positive: admin/č
add negative: adminČ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČč\$\-\.])*)([č/]){0,2}
add positive: admin/Ď
add negative: adminč
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎ\$\-\.])*)([Ď/]){0,2}
add positive: admin/ď
add negative: adminĎ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎď\$\-\.])*)([/ď]){0,2}
add positive: admin/Đ
add negative: adminď
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐ\$\-\.])*)([/Đ]){0,2}
add positive: admin/đ
add negative: adminĐ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđ\$\-\.])*)([đ/]){0,2}
add positive: admin/Ē
add negative: adminđ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒ\$\-\.])*)([Ē/]){0,2}
add positive: admin/ē
add negative: adminĒ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒē\$\-\.])*)([ē/]){0,2}
add positive: admin/Ĕ
add negative: adminē
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔ\$\-\.])*)([Ĕ/]){0,2}
add positive: admin/ĕ
add negative: adminĔ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕ\$\-\.])*)([ĕ/]){0,2}
add positive: admin/Ė
add negative: adminĕ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖ\$\-\.])*)([Ė/]){0,2}
add positive: admin/ė
add negative: adminĖ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖė\$\-\.])*)([ė/]){0,2}
add positive: admin/Ę
add negative: adminė
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘ\$\-\.])*)([Ę/]){0,2}
add positive: admin/ę
add negative: adminĘ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘę\$\-\.])*)([ę/]){0,2}
add positive: admin/Ě
add negative: adminę
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚ\$\-\.])*)([Ě/]){0,2}
add positive: admin/ě
add negative: adminĚ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚě\$\-\.])*)([ě/]){0,2}
add positive: admin/Ĝ
add negative: admině
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜ\$\-\.])*)([Ĝ/]){0,2}
add positive: admin/ĝ
add negative: adminĜ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝ\$\-\.])*)([ĝ/]){0,2}
add positive: admin/Ğ
add negative: adminĝ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞ\$\-\.])*)([Ğ/]){0,2}
add positive: admin/ğ
add negative: adminĞ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğ\$\-\.])*)([ğ/]){0,2}
add positive: admin/Ġ
add negative: adminğ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠ\$\-\.])*)([/Ġ]){0,2}
add positive: admin/ġ
add negative: adminĠ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġ\$\-\.])*)([ġ/]){0,2}
add positive: admin/Ģ
add negative: adminġ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢ\$\-\.])*)([Ģ/]){0,2}
add positive: admin/ģ
add negative: adminĢ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģ\$\-\.])*)([ģ/]){0,2}
add positive: admin/Ĥ
add negative: adminģ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤ\$\-\.])*)([Ĥ/]){0,2}
add positive: admin/ĥ
add negative: adminĤ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥ\$\-\.])*)([ĥ/]){0,2}
add positive: admin/Ħ
add negative: adminĥ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦ\$\-\.])*)([Ħ/]){0,2}
add positive: admin/ħ
add negative: adminĦ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħ\$\-\.])*)([ħ/]){0,2}
add positive: admin/Ĩ
add negative: adminħ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħĨ\$\-\.])*)([Ĩ/]){0,2}
add positive: admin/ĩ
add negative: adminĨ
get a solution: ((((((([∅]){0}a)d)m)i)n)(/[ 	
 !"#%&'()*+,0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħĨĩ\$\-\.])*)([ĩ/]){0,2}
add positive: admin/Ī
add negative: adminĩ

20.18380117416382
timeout