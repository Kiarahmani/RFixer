
Given the regular expression:

  ([0-9a-z])*@metu\.edu

That that should match the strings:

  ✓ (0:18)   herp.derp@metu.edu

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((■)*@)m)e)t)u)\.)e)d)uget a solution: ((((((((([r\.dehp])*@)m)e)t)u)\.)e)d)u
add positive: d0@metu.edu
add negative: @metu.edu
  2      |  1     ((((((((([0-9a-z]){■}@)m)e)t)u)\.)e)d)ufail dotstar or empty
  3      |  1     ((((((((([0-9a-z])*■)m)e)t)u)\.)e)d)ufail dot
  4      |  1     ((((((((([0-9a-z])*@)■)e)t)u)\.)e)d)ufail dotstar or empty
  5      |  1     ((((((((([0-9a-z])*@)m)■)t)u)\.)e)d)ufail dotstar or empty
  6      |  1     ((((((((([0-9a-z])*@)m)e)■)u)\.)e)d)ufail dotstar or empty
  7      |  1     ((((((((([0-9a-z])*@)m)e)t)■)\.)e)d)ufail dotstar or empty
  8      |  1     ((((((((([0-9a-z])*@)m)e)t)u)■)e)d)ufail dotstar or empty
  9      |  1     ((((((((([0-9a-z])*@)m)e)t)u)\.)■)d)ufail dotstar or empty
  10     |  1     ((((((((([0-9a-z])*@)m)e)t)u)\.)e)■)ufail dotstar or empty
  11     |  1     ((((((((([0-9a-z])*@)m)e)t)u)\.)e)d)■fail dotstar or empty
  12     |  2     (((((((((■){■}@)m)e)t)u)\.)e)d)uget a solution: ((((((((([r\.deh0p]){1,9}@)m)e)t)u)\.)e)d)u
add positive: 10@metu.edu
add negative: .@metu.edu
get a solution: ((((((((([1r\.deh0p]){2,9}@)m)e)t)u)\.)e)d)u
add positive: 20@metu.edu
add negative: ..@metu.edu
  unsatisfiable SAT formula       
  13     |  2     (((((((((■)*■)m)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  14     |  2     (((((((((■)*@)■)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  15     |  2     (((((((((■)*@)m)■)t)u)\.)e)d)u  unsatisfiable SAT formula       
  16     |  2     (((((((((■)*@)m)e)■)u)\.)e)d)u  unsatisfiable SAT formula       
  17     |  2     (((((((((■)*@)m)e)t)■)\.)e)d)u  unsatisfiable SAT formula       
  18     |  2     (((((((((■)*@)m)e)t)u)■)e)d)u  unsatisfiable SAT formula       
  19     |  2     (((((((((■)*@)m)e)t)u)\.)■)d)u  unsatisfiable SAT formula       
  20     |  2     (((((((((■)*@)m)e)t)u)\.)e)■)u  unsatisfiable SAT formula       
  21     |  2     (((((((((■)*@)m)e)t)u)\.)e)d)■  unsatisfiable SAT formula       
  22     |  2     (((((((((■■)*@)m)e)t)u)\.)e)d)ufail dot
  23     |  2     ((((((((((■|■))*@)m)e)t)u)\.)e)d)ufail solve
  24     |  2     ((((((((((■){■})*@)m)e)t)u)\.)e)d)u  25     |  2     ((((((((([0-9a-z]){■}■)m)e)t)u)\.)e)d)ufail dot
  26     |  2     ((((((((([0-9a-z]){■}@)■)e)t)u)\.)e)d)ufail dotstar or empty
  27     |  2     ((((((((([0-9a-z]){■}@)m)■)t)u)\.)e)d)ufail dotstar or empty
  28     |  2     ((((((((([0-9a-z]){■}@)m)e)■)u)\.)e)d)ufail dotstar or empty
  29     |  2     ((((((((([0-9a-z]){■}@)m)e)t)■)\.)e)d)ufail dotstar or empty
  30     |  2     ((((((((([0-9a-z]){■}@)m)e)t)u)■)e)d)ufail dotstar or empty
  31     |  2     ((((((((([0-9a-z]){■}@)m)e)t)u)\.)■)d)ufail dotstar or empty
  32     |  2     ((((((((([0-9a-z]){■}@)m)e)t)u)\.)e)■)ufail dotstar or empty
  33     |  2     ((((((((([0-9a-z]){■}@)m)e)t)u)\.)e)d)■fail dotstar or empty
  34     |  2     ((((((((■@)m)e)t)u)\.)e)d)ufail dot
  35     |  2     ((((((((([0-9a-z])*■)■)e)t)u)\.)e)d)ufail dot
  36     |  2     ((((((((([0-9a-z])*■)m)■)t)u)\.)e)d)ufail dot
  37     |  2     ((((((((([0-9a-z])*■)m)e)■)u)\.)e)d)ufail dot
  38     |  2     ((((((((([0-9a-z])*■)m)e)t)■)\.)e)d)ufail dot
  39     |  2     ((((((((([0-9a-z])*■)m)e)t)u)■)e)d)ufail dot
  40     |  2     ((((((((([0-9a-z])*■)m)e)t)u)\.)■)d)ufail dot
  41     |  2     ((((((((([0-9a-z])*■)m)e)t)u)\.)e)■)ufail dot
  42     |  2     ((((((((([0-9a-z])*■)m)e)t)u)\.)e)d)■fail dot
  43     |  2     ((((((((([0-9a-z])*(■■))m)e)t)u)\.)e)d)ufail dot
  44     |  2     ((((((((([0-9a-z])*(■|■))m)e)t)u)\.)e)d)ufail dot
  45     |  2     ((((((((([0-9a-z])*(■){■})m)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  46     |  2     ((((((((([0-9a-z])*@)■)■)t)u)\.)e)d)ufail dotstar or empty
  47     |  2     ((((((((([0-9a-z])*@)■)e)■)u)\.)e)d)ufail dotstar or empty
  48     |  2     ((((((((([0-9a-z])*@)■)e)t)■)\.)e)d)ufail dotstar or empty
  49     |  2     ((((((((([0-9a-z])*@)■)e)t)u)■)e)d)ufail dotstar or empty
  50     |  2     ((((((((([0-9a-z])*@)■)e)t)u)\.)■)d)ufail dotstar or empty
  51     |  2     ((((((((([0-9a-z])*@)■)e)t)u)\.)e)■)ufail dotstar or empty
  52     |  2     ((((((((([0-9a-z])*@)■)e)t)u)\.)e)d)■fail dotstar or empty
  53     |  2     ((((((((([0-9a-z])*@)m)■)■)u)\.)e)d)ufail dotstar or empty
  54     |  2     ((((((((([0-9a-z])*@)m)■)t)■)\.)e)d)ufail dotstar or empty
  55     |  2     ((((((((([0-9a-z])*@)m)■)t)u)■)e)d)ufail dotstar or empty
  56     |  2     ((((((((([0-9a-z])*@)m)■)t)u)\.)■)d)ufail dotstar or empty
  57     |  2     ((((((((([0-9a-z])*@)m)■)t)u)\.)e)■)ufail dotstar or empty
  58     |  2     ((((((((([0-9a-z])*@)m)■)t)u)\.)e)d)■fail dotstar or empty
  59     |  2     ((((((((([0-9a-z])*@)m)e)■)■)\.)e)d)ufail dotstar or empty
  60     |  2     ((((((((([0-9a-z])*@)m)e)■)u)■)e)d)ufail dotstar or empty
  61     |  2     ((((((((([0-9a-z])*@)m)e)■)u)\.)■)d)ufail dotstar or empty
  62     |  2     ((((((((([0-9a-z])*@)m)e)■)u)\.)e)■)ufail dotstar or empty
  63     |  2     ((((((((([0-9a-z])*@)m)e)■)u)\.)e)d)■fail dotstar or empty
  64     |  2     ((((((((([0-9a-z])*@)m)e)t)■)■)e)d)ufail dotstar or empty
  65     |  2     ((((((((([0-9a-z])*@)m)e)t)■)\.)■)d)ufail dotstar or empty
  66     |  2     ((((((((([0-9a-z])*@)m)e)t)■)\.)e)■)ufail dotstar or empty
  67     |  2     ((((((((([0-9a-z])*@)m)e)t)■)\.)e)d)■fail dotstar or empty
  68     |  2     ((((((((([0-9a-z])*@)m)e)t)u)■)■)d)ufail dotstar or empty
  69     |  2     ((((((((([0-9a-z])*@)m)e)t)u)■)e)■)ufail dotstar or empty
  70     |  2     ((((((((([0-9a-z])*@)m)e)t)u)■)e)d)■fail dotstar or empty
  71     |  2     ((((((((([0-9a-z])*@)m)e)t)u)\.)■)■)ufail dotstar or empty
  72     |  2     ((((((((([0-9a-z])*@)m)e)t)u)\.)■)d)■fail dotstar or empty
  73     |  2     ((((((((([0-9a-z])*@)m)e)t)u)\.)e)■)■fail dotstar or empty
  74     |  3     (((((((((■){■}■)m)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  75     |  3     (((((((((■){■}@)■)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  76     |  3     (((((((((■){■}@)m)■)t)u)\.)e)d)u  unsatisfiable SAT formula       
  77     |  3     (((((((((■){■}@)m)e)■)u)\.)e)d)u  unsatisfiable SAT formula       
  78     |  3     (((((((((■){■}@)m)e)t)■)\.)e)d)u  unsatisfiable SAT formula       
  79     |  3     (((((((((■){■}@)m)e)t)u)■)e)d)u  unsatisfiable SAT formula       
  80     |  3     (((((((((■){■}@)m)e)t)u)\.)■)d)u  unsatisfiable SAT formula       
  81     |  3     (((((((((■){■}@)m)e)t)u)\.)e)■)u  unsatisfiable SAT formula       
  82     |  3     (((((((((■){■}@)m)e)t)u)\.)e)d)■  unsatisfiable SAT formula       
  83     |  3     (((((((((■■){■}@)m)e)t)u)\.)e)d)ufail dot
  84     |  3     ((((((((((■|■)){■}@)m)e)t)u)\.)e)d)ufail solve
  85     |  3     ((((((((((■){■}){■}@)m)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  86     |  3     (((((((((■)*■)■)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  87     |  3     (((((((((■)*■)m)■)t)u)\.)e)d)u  unsatisfiable SAT formula       
  88     |  3     (((((((((■)*■)m)e)■)u)\.)e)d)u  unsatisfiable SAT formula       
  89     |  3     (((((((((■)*■)m)e)t)■)\.)e)d)u  unsatisfiable SAT formula       
  90     |  3     (((((((((■)*■)m)e)t)u)■)e)d)u  unsatisfiable SAT formula       
  91     |  3     (((((((((■)*■)m)e)t)u)\.)■)d)u  unsatisfiable SAT formula       
  92     |  3     (((((((((■)*■)m)e)t)u)\.)e)■)u  unsatisfiable SAT formula       
  93     |  3     (((((((((■)*■)m)e)t)u)\.)e)d)■  unsatisfiable SAT formula       
  94     |  3     (((((((((■■)*■)m)e)t)u)\.)e)d)ufail dot
  95     |  3     ((((((((((■|■))*■)m)e)t)u)\.)e)d)ufail solve
  96     |  3     ((((((((((■){■})*■)m)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  97     |  3     (((((((((■)*(■■))m)e)t)u)\.)e)d)uget a solution: ((((((((([12r\.dehp])*([p0]@))m)e)t)u)\.)e)d)u
add positive: p1@metu.edu
add negative: 0@metu.edu
  unsatisfiable SAT formula       
  98     |  3     (((((((((■)*(■|■))m)e)t)u)\.)e)d)ufail solve
  99     |  3     (((((((((■)*(■){■})m)e)t)u)\.)e)d)uget a solution: ((((((((([12r\.deh@0p])*([1r2dp0@]){3})m)e)t)u)\.)e)d)u
add positive: 03@metu.edu
add negative: 0@0metu.edu
  unsatisfiable SAT formula       
  100    |  3     (((((((((■)*@)■)■)t)u)\.)e)d)u  unsatisfiable SAT formula       
  101    |  3     (((((((((■)*@)■)e)■)u)\.)e)d)u  unsatisfiable SAT formula       
  102    |  3     (((((((((■)*@)■)e)t)■)\.)e)d)u  unsatisfiable SAT formula       
  103    |  3     (((((((((■)*@)■)e)t)u)■)e)d)u  unsatisfiable SAT formula       
  104    |  3     (((((((((■)*@)■)e)t)u)\.)■)d)u  unsatisfiable SAT formula       
  105    |  3     (((((((((■)*@)■)e)t)u)\.)e)■)u  unsatisfiable SAT formula       
  106    |  3     (((((((((■)*@)■)e)t)u)\.)e)d)■  unsatisfiable SAT formula       
  107    |  3     (((((((((■■)*@)■)e)t)u)\.)e)d)ufail dot
  108    |  3     ((((((((((■|■))*@)■)e)t)u)\.)e)d)ufail solve
  109    |  3     ((((((((((■){■})*@)■)e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  110    |  3     (((((((((■)*@)(■■))e)t)u)\.)e)d)ufail dot
  111    |  3     (((((((((■)*@)(■|■))e)t)u)\.)e)d)ufail solve
  112    |  3     (((((((((■)*@)(■){■})e)t)u)\.)e)d)u  unsatisfiable SAT formula       
  113    |  3     (((((((((■)*@)m)■)■)u)\.)e)d)u  unsatisfiable SAT formula       
  114    |  3     (((((((((■)*@)m)■)t)■)\.)e)d)u  unsatisfiable SAT formula       
  115    |  3     (((((((((■)*@)m)■)t)u)■)e)d)u  unsatisfiable SAT formula       
  116    |  3     (((((((((■)*@)m)■)t)u)\.)■)d)u  unsatisfiable SAT formula       
  117    |  3     (((((((((■)*@)m)■)t)u)\.)e)■)u  unsatisfiable SAT formula       
  118    |  3     (((((((((■)*@)m)■)t)u)\.)e)d)■  unsatisfiable SAT formula       
  119    |  3     (((((((((■■)*@)m)■)t)u)\.)e)d)ufail dot
  120    |  3     ((((((((((■|■))*@)m)■)t)u)\.)e)d)ufail solve
  121    |  3     ((((((((((■){■})*@)m)■)t)u)\.)e)d)u  unsatisfiable SAT formula       
  122    |  3     (((((((((■)*@)m)(■■))t)u)\.)e)d)ufail dot
  123    |  3     (((((((((■)*@)m)(■|■))t)u)\.)e)d)ufail solve
  124    |  3     (((((((((■)*@)m)(■){■})t)u)\.)e)d)u  unsatisfiable SAT formula       
  125    |  3     (((((((((■)*@)m)e)■)■)\.)e)d)u  unsatisfiable SAT formula       
  126    |  3     (((((((((■)*@)m)e)■)u)■)e)d)u  unsatisfiable SAT formula       
  127    |  3     (((((((((■)*@)m)e)■)u)\.)■)d)u  unsatisfiable SAT formula       
  128    |  3     (((((((((■)*@)m)e)■)u)\.)e)■)u  unsatisfiable SAT formula       
  129    |  3     (((((((((■)*@)m)e)■)u)\.)e)d)■  unsatisfiable SAT formula       
  130    |  3     (((((((((■■)*@)m)e)■)u)\.)e)d)ufail dot
  131    |  3     ((((((((((■|■))*@)m)e)■)u)\.)e)d)ufail solve
  132    |  3     ((((((((((■){■})*@)m)e)■)u)\.)e)d)u  unsatisfiable SAT formula       
  133    |  3     (((((((((■)*@)m)e)(■■))u)\.)e)d)ufail dot
  134    |  3     (((((((((■)*@)m)e)(■|■))u)\.)e)d)ufail solve
  135    |  3     (((((((((■)*@)m)e)(■){■})u)\.)e)d)u  unsatisfiable SAT formula       
  136    |  3     (((((((((■)*@)m)e)t)■)■)e)d)u  unsatisfiable SAT formula       
  137    |  3     (((((((((■)*@)m)e)t)■)\.)■)d)u  unsatisfiable SAT formula       
  138    |  3     (((((((((■)*@)m)e)t)■)\.)e)■)u  unsatisfiable SAT formula       
  139    |  3     (((((((((■)*@)m)e)t)■)\.)e)d)■  unsatisfiable SAT formula       
  140    |  3     (((((((((■■)*@)m)e)t)■)\.)e)d)ufail dot
  141    |  3     ((((((((((■|■))*@)m)e)t)■)\.)e)d)ufail solve
  142    |  3     ((((((((((■){■})*@)m)e)t)■)\.)e)d)u  unsatisfiable SAT formula       
  143    |  3     (((((((((■)*@)m)e)t)(■■))\.)e)d)ufail dot
  144    |  3     (((((((((■)*@)m)e)t)(■|■))\.)e)d)ufail solve
  145    |  3     (((((((((■)*@)m)e)t)(■){■})\.)e)d)u  unsatisfiable SAT formula       
  146    |  3     (((((((((■)*@)m)e)t)u)■)■)d)u  unsatisfiable SAT formula       
  147    |  3     (((((((((■)*@)m)e)t)u)■)e)■)u  unsatisfiable SAT formula       
  148    |  3     (((((((((■)*@)m)e)t)u)■)e)d)■  unsatisfiable SAT formula       
  149    |  3     (((((((((■■)*@)m)e)t)u)■)e)d)ufail dot
  150    |  3     ((((((((((■|■))*@)m)e)t)u)■)e)d)ufail solve
  151    |  3     ((((((((((■){■})*@)m)e)t)u)■)e)d)u  unsatisfiable SAT formula       
  152    |  3     (((((((((■)*@)m)e)t)u)(■■))e)d)ufail dot
  153    |  3     (((((((((■)*@)m)e)t)u)(■|■))e)d)ufail solve
  154    |  3     (((((((((■)*@)m)e)t)u)(■){■})e)d)u  unsatisfiable SAT formula       
  155    |  3     (((((((((■)*@)m)e)t)u)\.)■)■)u  unsatisfiable SAT formula       
  156    |  3     (((((((((■)*@)m)e)t)u)\.)■)d)■  unsatisfiable SAT formula       
  157    |  3     (((((((((■■)*@)m)e)t)u)\.)■)d)ufail dot
  158    |  3     ((((((((((■|■))*@)m)e)t)u)\.)■)d)ufail solve
  159    |  3     ((((((((((■){■})*@)m)e)t)u)\.)■)d)u  unsatisfiable SAT formula       
  160    |  3     (((((((((■)*@)m)e)t)u)\.)(■■))d)ufail dot
  161    |  3     (((((((((■)*@)m)e)t)u)\.)(■|■))d)ufail solve
  162    |  3     (((((((((■)*@)m)e)t)u)\.)(■){■})d)u  unsatisfiable SAT formula       
  163    |  3     (((((((((■)*@)m)e)t)u)\.)e)■)■  unsatisfiable SAT formula       
  164    |  3     (((((((((■■)*@)m)e)t)u)\.)e)■)ufail dot
  165    |  3     ((((((((((■|■))*@)m)e)t)u)\.)e)■)ufail solve
  166    |  3     ((((((((((■){■})*@)m)e)t)u)\.)e)■)u  unsatisfiable SAT formula       
  167    |  3     (((((((((■)*@)m)e)t)u)\.)e)(■■))ufail dot
  168    |  3     (((((((((■)*@)m)e)t)u)\.)e)(■|■))ufail solve
  169    |  3     (((((((((■)*@)m)e)t)u)\.)e)(■){■})u  unsatisfiable SAT formula       
  170    |  3     (((((((((■■)*@)m)e)t)u)\.)e)d)■fail dot
  171    |  3     ((((((((((■|■))*@)m)e)t)u)\.)e)d)■fail solve
  172    |  3     ((((((((((■){■})*@)m)e)t)u)\.)e)d)■  unsatisfiable SAT formula       
  173    |  3     (((((((((■)*@)m)e)t)u)\.)e)d)(■■)fail dot
  174    |  3     (((((((((■)*@)m)e)t)u)\.)e)d)(■|■)fail solve
  175    |  3     (((((((((■)*@)m)e)t)u)\.)e)d)(■){■}  unsatisfiable SAT formula       
  176    |  3     ((((((((((■■)■)*@)m)e)t)u)\.)e)d)ufail dot
  177    |  3     ((((((((((■|■)■)*@)m)e)t)u)\.)e)d)ufail dot
  178    |  3     ((((((((((■){■}■)*@)m)e)t)u)\.)e)d)u  179    |  3     (((((((((■(■■))*@)m)e)t)u)\.)e)d)ufail dot
  180    |  3     (((((((((■(■|■))*@)m)e)t)u)\.)e)d)ufail dot
  181    |  3     (((((((((■(■){■})*@)m)e)t)u)\.)e)d)u  182    |  3     ((((((((((■■|■))*@)m)e)t)u)\.)e)d)u  183    |  3     (((((((((((■|■)|■))*@)m)e)t)u)\.)e)d)ufail solve
  184    |  3     (((((((((((■){■}|■))*@)m)e)t)u)\.)e)d)u10.018347024917603
timeout