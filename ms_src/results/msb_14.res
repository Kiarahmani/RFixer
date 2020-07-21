
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
  1807   |  6     (((((((■■)(■){■})d)m)i)■)(.)*)■
2.0393331050872803
timeout