
Given the regular expression:

  /[^0-9a-zA-Z]/

That that should match the strings:

  ✓ (0:7)    Unicode

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[^0-9a-zA-Z])/        fail dotstar or empty
  2      |  1     (/■)/                   fail dotstar or empty
  3      |  1     (/[^0-9a-zA-Z])■        fail dotstar or empty
  4      |  2     (■■)/                   fail dotstar or empty
  5      |  2     (■[^0-9a-zA-Z])■        fail dotstar or empty
  6      |  2     (/■)■                   fail dotstar or empty
  7      |  3     (■■)■                   fail dot
  8      |  3     (■)/                    fail dotstar or empty
  9      |  4     (■)■                    fail dot
  10     |  4     ((■■)■)■                fail dot
  11     |  4     ((■|■)■)■               fail dot
  12     |  4     ((■){■}■)■              get a solution: (([cUino]){1,5}d)e
add negative: cde
get a solution: (([cUino]){2,5}d)e
add negative: cUde
get a solution: (([cUino]){3,5}d)e
add negative: UUUde
get a solution: (([cUino]){4,5}d)e
add negative: UnUUde
get a solution: (([cUino]){5}d)e
add negative: cUUUUde
  unsatisfiable SAT formula       
  13     |  4     (■■)(■■)                fail dot
  14     |  4     (■■)(■|■)               fail dot
  15     |  4     (■■)(■){■}              get a solution: (Un)([cdeio]){5}
add negative: Unidccc
  unsatisfiable SAT formula       
  16     |  4     ■/                      fail dotstar or empty
  17     |  5     ■■                      fail dot
  18     |  5     ((■■))■                 fail dot
  19     |  5     ((■|■))■                fail dot
  20     |  5     ((■){■})■                 unsatisfiable SAT formula       
  21     |  5     ((■)■)■                 fail dot
  22     |  5     (((■■)■)■)■             fail dot
  23     |  5     (((■|■)■)■)■            fail dot
  24     |  5     (((■){■}■)■)■           get a solution: ((([cUin]){4}o)d)e
add negative: cUUUode
  unsatisfiable SAT formula       
  25     |  5     ((■■)(■■))■             fail dot
  26     |  5     ((■■)(■|■))■            fail dot
  27     |  5     ((■■)(■){■})■           get a solution: ((Un)([cdio]){4})e
add negative: Unidcce
  unsatisfiable SAT formula       
  28     |  5     ((■■)■)(■■)             fail dot
  29     |  5     ((■■)■)(■|■)            fail dot
  30     |  5     ((■■)■)(■){■}             unsatisfiable SAT formula       
  31     |  5     ((■■|■)■)■              fail dot
  32     |  5     (((■|■)|■)■)■           fail dot
  33     |  5     (((■){■}|■)■)■            unsatisfiable SAT formula       
  34     |  5     ((■|■)(■■))■            fail dot
  35     |  5     ((■|■)(■|■))■           fail dot
  36     |  5     ((■|■)(■){■})■            unsatisfiable SAT formula       
  37     |  5     ((■|■)■)(■■)            fail dot
  38     |  5     ((■|■)■)(■|■)           fail dot
  39     |  5     ((■|■)■)(■){■}            unsatisfiable SAT formula       
  40     |  5     ((■■){■}■)■             fail dot
  41     |  5     (((■|■)){■}■)■          fail solve
  42     |  5     (((■){■}){■}■)■           unsatisfiable SAT formula       
  43     |  5     ((■){■}(■■))■             unsatisfiable SAT formula       
  44     |  5     ((■){■}(■|■))■          fail solve
  45     |  5     ((■){■}(■){■})■           unsatisfiable SAT formula       
  46     |  5     ((■){■}■)(■■)             unsatisfiable SAT formula       
  47     |  5     ((■){■}■)(■|■)          fail solve
  48     |  5     ((■){■}■)(■){■}         get a solution: (([cdUino]){0,6}[ceo])([cdeino]){3,6}
add negative: cccc
get a solution: (([cdUino]){1,6}[ceo])([cdeino]){3,6}
add negative: ccccc
get a solution: (([cdUino]){2,6}[ceno])([cdeino]){3,6}
add negative: UUcccc
get a solution: (([cdUino]){3,6}[ceino])([cdeino]){3,6}
add negative: cUUcccc
get a solution: (([cdUino]){3,6}[ceino])([deino]){3}
add negative: cUUcddd
get a solution: (([Uino]){3,6}[ceino])([cdeino]){1,6}
add negative: iUUcc
get a solution: (([Uino]){3,6}[ceino])([cdeino]){2,6}
add negative: UUUccc
get a solution: (([dUino]){3,6}[ceino])([cdeino]){3,6}
add negative: dUUcccc
get a solution: (([Uino]){3,6}[ceino])([cdeino]){3,6}
add negative: UUUcccc
get a solution: (([dUino]){0,6}[cdeino])([deino]){3,6}
add negative: cddd
get a solution: (([dUino]){1,6}[ceino])([deino]){1,6}
add negative: dcd
get a solution: (([Uino]){1,6}[ceino])([deino]){1,6}
add negative: icd
get a solution: (([dUino]){1,6}[cdeino])([deino]){2,6}
add negative: dcdd
get a solution: (([Uino]){1,6}[cdeino])([deino]){2,6}
add negative: icdd
get a solution: (([dUino]){1,6}[cdeino])([deino]){3,6}
add negative: Ucddd
get a solution: (([dUino]){2,6}[ceino])([deino]){1,6}
add negative: UUcd
get a solution: (([dUino]){2,6}[cdeino])([deino]){2,6}
add negative: Unidd
get a solution: (([dUino]){2,6}[cdeino])([deino]){3,6}
add negative: Uncddd
get a solution: (([dUino]){3,6}[ceino])([deino]){1,6}
add negative: Unicd
get a solution: (([dUino]){3,6}[cdeino])([deino]){2,6}
add negative: dUUcdd
get a solution: (([Uino]){3,6}[cdeino])([deino]){2,6}
add negative: iUUcdd
get a solution: (([dUino]){3,6}[cdeino])([deino]){3,6}
add negative: UUUcddd
  unsatisfiable SAT formula       
  49     |  5     (■■)(■)                 fail dot
  50     |  6     ■                       fail dot
  51     |  6     (■|■)■                  fail dot
  52     |  6     (■){■}■                   unsatisfiable SAT formula       
  53     |  6     (((■■)■))■              fail dot
  54     |  6     (((■|■)■))■             fail dot
  55     |  6     (((■){■}■))■              unsatisfiable SAT formula       
  56     |  6     ((■■))(■■)              fail dot
  57     |  6     ((■■))(■|■)             fail dot
  58     |  6     ((■■))(■){■}              unsatisfiable SAT formula       
  59     |  6     ((■■|■))■               fail dot
  60     |  6     (((■|■)|■))■            fail dot
  61     |  6     (((■){■}|■))■             unsatisfiable SAT formula       
  62     |  6     ((■|■))(■■)             fail dot
  63     |  6     ((■|■))(■|■)            fail dot
  64     |  6     ((■|■))(■){■}             unsatisfiable SAT formula       
  65     |  6     ((■■){■})■              get a solution: (([Uio][cdn]){3})e
add negative: UnidUce
  unsatisfiable SAT formula       
  66     |  6     (((■|■)){■})■           fail solve
  67     |  6     (((■){■}){■})■            unsatisfiable SAT formula       
  68     |  6     ((■){■})(■■)              unsatisfiable SAT formula       
  69     |  6     ((■){■})(■|■)           fail solve
  70     |  6     ((■){■})(■){■}            unsatisfiable SAT formula       
  71     |  6     (((■■))■)■              fail dot
  72     |  6     (((■|■))■)■             fail dot
  73     |  6     (((■){■})■)■              unsatisfiable SAT formula       
  74     |  6     ((■)■)(■■)              fail dot
  75     |  6     ((■)■)(■|■)             fail dot
  76     |  6     ((■)■)(■){■}              unsatisfiable SAT formula       
  77     |  6     (((■)■)■)■              fail dot
  78     |  6     ((((■■)■)■)■)■          fail dot
  79     |  6     ((((■|■)■)■)■)■         fail dot
  80     |  6     ((((■){■}■)■)■)■        get a solution: (((([Uin]){3}c)o)d)e
add negative: UUUcode
  unsatisfiable SAT formula       
  81     |  6     (((■■)(■■))■)■          fail dot
  82     |  6     (((■■)(■|■))■)■         fail dot
  83     |  6     (((■■)(■){■})■)■        get a solution: (((Un)([cio]){3})d)e
add negative: Uniicde
  unsatisfiable SAT formula       
  84     |  6     (((■■)■)(■■))■          fail dot
  85     |  6     (((■■)■)(■|■))■         fail dot
  86     |  6     (((■■)■)(■){■})■          unsatisfiable SAT formula       
  87     |  6     (((■■)■)■)(■■)          fail dot
  88     |  6     (((■■)■)■)(■|■)         fail dot
  89     |  6     (((■■)■)■)(■){■}        get a solution: (((Un)i)c)([deo]){3}
add negative: Unicddd
  unsatisfiable SAT formula       
  90     |  6     (((■■|■)■)■)■           fail dot
  91     |  6     ((((■|■)|■)■)■)■        fail dot
  92     |  6     ((((■){■}|■)■)■)■         unsatisfiable SAT formula       
  93     |  6     (((■|■)(■■))■)■         fail dot
  94     |  6     (((■|■)(■|■))■)■        fail dot
  95     |  6     (((■|■)(■){■})■)■         unsatisfiable SAT formula       
  96     |  6     (((■|■)■)(■■))■         fail dot
  97     |  6     (((■|■)■)(■|■))■        fail dot
  98     |  6     (((■|■)■)(■){■})■         unsatisfiable SAT formula       
  99     |  6     (((■|■)■)■)(■■)         fail dot
  100    |  6     (((■|■)■)■)(■|■)        fail dot
  101    |  6     (((■|■)■)■)(■){■}         unsatisfiable SAT formula       
  102    |  6     (((■■){■}■)■)■          get a solution: ((([Ui][cn]){2}o)d)e
add negative: UcUcode
  unsatisfiable SAT formula       
  103    |  6     ((((■|■)){■}■)■)■       fail solve
  104    |  6     ((((■){■}){■}■)■)■        unsatisfiable SAT formula       
  105    |  6     (((■){■}(■■))■)■          unsatisfiable SAT formula       
  106    |  6     (((■){■}(■|■))■)■       fail solve
  107    |  6     (((■){■}(■){■})■)■        unsatisfiable SAT formula       
  108    |  6     (((■){■}■)(■■))■          unsatisfiable SAT formula       
  109    |  6     (((■){■}■)(■|■))■       fail solve
  110    |  6     (((■){■}■)(■){■})■        unsatisfiable SAT formula       
  111    |  6     (((■){■}■)■)(■■)          unsatisfiable SAT formula       
  112    |  6     (((■){■}■)■)(■|■)       fail solve
  113    |  6     (((■){■}■)■)(■){■}        unsatisfiable SAT formula       
  114    |  6     ((■■)(■))■              fail dot
  115    |  6     ((■■)(■■))(■■)          fail dot
  116    |  6     ((■■)(■■))(■|■)         fail dot
  117    |  6     ((■■)(■■))(■){■}          unsatisfiable SAT formula       
  118    |  6     ((■■)(■|■))(■■)         fail dot
  119    |  6     ((■■)(■|■))(■|■)        fail dot
  120    |  6     ((■■)(■|■))(■){■}         unsatisfiable SAT formula       
  121    |  6     ((■■)(■){■})(■■)          unsatisfiable SAT formula       
  122    |  6     ((■■)(■){■})(■|■)       fail solve
  123    |  6     ((■■)(■){■})(■){■}        unsatisfiable SAT formula       
  124    |  6     ((■■)■)(■)              fail dot
  125    |  6     ((■■)■)((■■)■)          fail dot
  126    |  6     ((■■)■)((■|■)■)         fail dot
  127    |  6     ((■■)■)((■){■}■)          unsatisfiable SAT formula       
  128    |  6     ((■■)■)(■■|■)           fail dot
  129    |  6     ((■■)■)((■|■)|■)        fail dot
  130    |  6     ((■■)■)((■){■}|■)         unsatisfiable SAT formula       
  131    |  6     ((■■)■)(■■){■}          get a solution: ((Un)i)([cd][eo]){2}
add negative: Unidece
  unsatisfiable SAT formula       
  132    |  6     ((■■)■)((■|■)){■}       fail solve
  133    |  6     ((■■)■)((■){■}){■}        unsatisfiable SAT formula       
  134    |  6     (((■■)■|■)■)■           fail dot
  135    |  6     (((■|■)■|■)■)■          fail dot
  136    |  6     (((■){■}■|■)■)■           unsatisfiable SAT formula       
  137    |  6     ((■■|■■)■)■             fail dot
  138    |  6     ((■■|(■|■))■)■          fail dot
  139    |  6     ((■■|(■){■})■)■           unsatisfiable SAT formula       
  140    |  6     ((■■|■)(■■))■           fail dot
  141    |  6     ((■■|■)(■|■))■          fail dot
  142    |  6     ((■■|■)(■){■})■           unsatisfiable SAT formula       
  143    |  6     ((■■|■)■)(■■)           fail dot
  144    |  6     ((■■|■)■)(■|■)          fail dot
  145    |  6     ((■■|■)■)(■){■}           unsatisfiable SAT formula       
  146    |  6     (((■■|■)|■)■)■          fail dot
  147    |  6     ((((■|■)|■)|■)■)■       fail dot
  148    |  6     ((((■){■}|■)|■)■)■        unsatisfiable SAT formula       
  149    |  6     (((■|■)|■■)■)■          fail dot
  150    |  6     (((■|■)|(■|■))■)■       fail dot
  151    |  6     (((■|■)|(■){■})■)■        unsatisfiable SAT formula       
  152    |  6     (((■|■)|■)(■■))■        fail dot
  153    |  6     (((■|■)|■)(■|■))■       fail dot
  154    |  6     (((■|■)|■)(■){■})■        unsatisfiable SAT formula       
  155    |  6     (((■|■)|■)■)(■■)        fail dot
  156    |  6     (((■|■)|■)■)(■|■)       fail dot
  157    |  6     (((■|■)|■)■)(■){■}        unsatisfiable SAT formula       
  158    |  6     (((■■){■}|■)■)■         fail dot
  159    |  6     ((((■|■)){■}|■)■)■      fail solve
  160    |  6     ((((■){■}){■}|■)■)■       unsatisfiable SAT formula       
  161    |  6     (((■){■}|■■)■)■           unsatisfiable SAT formula       
  162    |  6     (((■){■}|(■|■))■)■      fail solve
  163    |  6     (((■){■}|(■){■})■)■       unsatisfiable SAT formula       
  164    |  6     (((■){■}|■)(■■))■         unsatisfiable SAT formula       
  165    |  6     (((■){■}|■)(■|■))■      fail solve
  166    |  6     (((■){■}|■)(■){■})■       unsatisfiable SAT formula       
  167    |  6     (((■){■}|■)■)(■■)         unsatisfiable SAT formula       
  168    |  6     (((■){■}|■)■)(■|■)      fail solve
  169    |  6     (((■){■}|■)■)(■){■}       unsatisfiable SAT formula       
  170    |  6     ((■|■)(■))■             fail dot
  171    |  6     ((■|■)(■■))(■■)         fail dot
  172    |  6     ((■|■)(■■))(■|■)        fail dot
  173    |  6     ((■|■)(■■))(■){■}         unsatisfiable SAT formula       
  174    |  6     ((■|■)(■|■))(■■)        fail dot
  175    |  6     ((■|■)(■|■))(■|■)       fail dot
  176    |  6     ((■|■)(■|■))(■){■}        unsatisfiable SAT formula       
  177    |  6     ((■|■)(■){■})(■■)         unsatisfiable SAT formula       
  178    |  6     ((■|■)(■){■})(■|■)      fail solve
  179    |  6     ((■|■)(■){■})(■){■}       unsatisfiable SAT formula       
  180    |  6     ((■|■)■)(■)             fail dot
  181    |  6     ((■|■)■)((■■)■)         fail dot
  182    |  6     ((■|■)■)((■|■)■)        fail dot
  183    |  6     ((■|■)■)((■){■}■)         unsatisfiable SAT formula       
  184    |  6     ((■|■)■)(■■|■)          fail dot
  185    |  6     ((■|■)■)((■|■)|■)       fail dot
  186    |  6     ((■|■)■)((■){■}|■)        unsatisfiable SAT formula       
  187    |  6     ((■|■)■)(■■){■}         fail dot
  188    |  6     ((■|■)■)((■|■)){■}      fail solve
  189    |  6     ((■|■)■)((■){■}){■}       unsatisfiable SAT formula       
  190    |  6     (((■■)■){■}■)■          fail dot
  191    |  6     (((■|■)■){■}■)■         fail dot
  192    |  6     (((■){■}■){■}■)■        get a solution: ((([cUin]){0,4}[no]){2,5}d)e
add negative: nnde
get a solution: ((([cin]){0,4}[Uio]){2}d)e
add negative: iUde
get a solution: ((([cUi]){1,3}[ino]){2,5}d)e
add negative: ciUide
get a solution: ((([cUin]){1,3}[no]){2,5}d)e
add negative: cnUnde
get a solution: ((([cUin]){0,4}[ino]){3,4}d)e
add negative: iiide
get a solution: ((([cin]){0,4}[Uo]){2}d)e
add negative: UUde
  unsatisfiable SAT formula       
  193    |  6     ((■■){■}(■■))■            unsatisfiable SAT formula       
  194    |  6     ((■■){■}(■|■))■         fail dot
  195    |  6     ((■■){■}(■){■})■          unsatisfiable SAT formula       
  196    |  6     ((■■){■}■)(■■)            unsatisfiable SAT formula       
  197    |  6     ((■■){■}■)(■|■)         fail dot
  198    |  6     ((■■){■}■)(■){■}          unsatisfiable SAT formula       
  199    |  6     (((■■|■)){■}■)■         get a solution: ((([cUin][in]|[cUo])){4}d)e
add negative: UUUUde
  unsatisfiable SAT formula       
  200    |  6     ((((■|■)|■)){■}■)■      fail solve
  201    |  6     ((((■){■}|■)){■}■)■       unsatisfiable SAT formula       
  202    |  6     (((■|■)){■}(■■))■         unsatisfiable SAT formula       
  203    |  6     (((■|■)){■}(■|■))■      fail solve
  204    |  6     (((■|■)){■}(■){■})■       unsatisfiable SAT formula       
  205    |  6     (((■|■)){■}■)(■■)         unsatisfiable SAT formula       
  206    |  6     (((■|■)){■}■)(■|■)      fail solve
  207    |  6     (((■|■)){■}■)(■){■}       unsatisfiable SAT formula       
  208    |  6     (((■■){■}){■}■)■        fail dot
  209    |  6     ((((■|■)){■}){■}■)■     fail solve
  210    |  6     ((((■){■}){■}){■}■)■    
20.48381781578064
timeout