
Given the regular expression:

  (([rseVino])+)\.(([\.0-9a-zA-Z])+)

That that should match the strings:


And reject the strings:

  ✗ (0:17)   Version.2.1.4.zip
  ✗ (17:22)  e.axd

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+\.)([\.0-9a-zA-Z])+get a solution: (([∅])+\.)([\.0-9a-zA-Z])+
add positive: version.zip
  unsatisfiable SAT formula       
  2      |  1     (([rseVino]){■}\.)([\.0-9a-zA-Z])+fail dotstar or empty
  3      |  1     (([rseVino])+■)([\.0-9a-zA-Z])+fail dotstar or empty
  4      |  1     (([rseVino])+\.)(■)+    fail dotstar or empty
  5      |  1     (([rseVino])+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  6      |  2     ((■){■}\.)([\.0-9a-zA-Z])+get a solution: (([rsevino]){2,7}\.)([\.0-9a-zA-Z])+
add positive: version .zip
add negative: ee..
get a solution: (([rsevino ]){3,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative: ver..
get a solution: (([rsevino ]){4,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:     ..
get a solution: (([rsevino ]){5,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:      ..
get a solution: (([rsevino ]){6,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:       ..
get a solution: (([einorsv ]){7,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:        ..
  unsatisfiable SAT formula       
  7      |  2     ((■)+■)([\.0-9a-zA-Z])+ get a solution: (([eino\.rsvz ])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([eino\.rsvz])+[sizno ])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([eino\.rsv ])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([eino\.rsv ])+[sizo])([\.0-9a-zA-Z])+
add positive: version	.zip
add negative: v.
get a solution: (([e	ino\.rsvz ])+[s	izno])([\.0-9a-zA-Z])+
add positive: version
.zip
add negative:  .
get a solution: (([e	i
no\.rsvz ])+[	i
zno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([e	i
no\.rsvz ])+[s	iz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([e	i
no\.rsvz ])+[s	iz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([e	i
no\.rsvz ])+[s	iz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[	iz
n])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  	.
get a solution: (([einorsvz 	
\.])+[siz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v
.
get a solution: (([einorsv 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsv 	
\.])+[sizo])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsv 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizo])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version .zip
add negative:  .
get a solution: (([einorsv 	
\. ])+[sizno ])([\.0-9a-zA-Z])+
add positive: version!.zip
add negative: v.
get a solution: (([!einorsvz 	
\. ])+[!sizno ])([\.0-9a-zA-Z])+
add positive: version".zip
add negative: v.
get a solution: ((["einorsvz 	
\. ])+[!"izn ])([\.0-9a-zA-Z])+
add positive: version#.zip
add negative:  .
get a solution: (([!"#einorsvz 	
\. ])+[!"#sizno ])([\.0-9a-zA-Z])+
add positive: version$.zip
add negative: v.
get a solution: (([!"#einorsvz \$	
\. ])+[!"#\$izno ])([\.0-9a-zA-Z])+
add positive: version%.zip
add negative:  .
get a solution: (([!"#e%inorsvz \$	
\. ])+[!"#s%\$izno ])([\.0-9a-zA-Z])+
add positive: version&.zip
add negative:   .
get a solution: (([einorsvz 	
 !"#%&\$\.])+[!"#%&\$izno])([\.0-9a-zA-Z])+
add positive: version'.zip
add negative:  !.
get a solution: (([einorsvz 	
 !"#%&'\$\.])+["#s%&'\$izno])([\.0-9a-zA-Z])+
add positive: version(.zip
add negative:  ".
get a solution: (([einorsvz 	
 !"#%&'(\$\.])+[#s%&'\$(izno])([\.0-9a-zA-Z])+
add positive: version).zip
add negative:  #.
get a solution: (([einorsvz 	
 !"#%&'()\$\.])+[s%&'\$()izno])([\.0-9a-zA-Z])+
add positive: version*.zip
add negative:  $.
get a solution: (([einorsvz 	
 !"#%&'()*\$\.])+[%&'()iz])([\.0-9a-zA-Z])+
add positive: version+.zip
add negative:  %.
get a solution: (([einorsvz 	
 !"#%&'()*+\$\.])+[s&'()iz*+no])([\.0-9a-zA-Z])+
add positive: version,.zip
add negative: v&.
get a solution: (([einorsvz 	
 !"#%&'()*+,\$\.])+['()iz*+,no])([\.0-9a-zA-Z])+
add positive: version-.zip
add negative:  '.
get a solution: (([einorsvz 	
 !"#%&'()*+,\$\-\.])+[\-()iz*+,n])([\.0-9a-zA-Z])+
add positive: version/.zip
add negative:  (.
get a solution: (([einorsvz 	
 !"#%&'()*+,/\$\-\.])+[\-s)iz*+,no/])([\.0-9a-zA-Z])+
add positive: version:.zip
add negative:  ).
get a solution: (([einorsvz 	
 !"#%&'()*+,/:\$\-\.])+[\-siz:*+,no/])([\.0-9a-zA-Z])+
add positive: version;.zip
add negative: v*.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;\$\-\.])+[\-siz:;+,no/])([\.0-9a-zA-Z])+
add positive: version<.zip
add negative:  +.
get a solution: (([einorsv 	
 !"#%&'()*+,/:;<\$\-\.])+[\-siz:;<,no/])([\.0-9a-zA-Z])+
add positive: version=.zip
add negative:  ,.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=\$\-\.])+[\-siz:;<no/])([\.0-9a-zA-Z])+
add positive: version>.zip
add negative: v-.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>\$\-\.])+[siz:;<=no/])([\.0-9a-zA-Z])+
add positive: version?.zip
add negative:  /.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?\$\-\.])+[siz:;<=>no?])([\.0-9a-zA-Z])+
add positive: version@.zip
add negative: v:.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.])+[siz;<=>no?@])([\.0-9a-zA-Z])+
add positive: version[.zip
add negative:  ;.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[])+[siz<=>no?@])([\.0-9a-zA-Z])+
add positive: version\.zip
add negative: v<.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\])+[siz[\=>no?@])([\.0-9a-zA-Z])+
add positive: version].zip
add negative:  =.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]])+[siz[\]>no?@])([\.0-9a-zA-Z])+
add positive: version^.zip
add negative:  >.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^])+[siz[\]n^o?@])([\.0-9a-zA-Z])+
add positive: version_.zip
add negative:  ?.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_])+[siz[\]n^_o@])([\.0-9a-zA-Z])+
add positive: version`.zip
add negative: v@.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz[\]n^_o`])([\.0-9a-zA-Z])+
add positive: version{.zip
add negative: v[.
get a solution: (([einorsvz 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz{\]n^_o`])([\.0-9a-zA-Z])+
add positive: version|.zip
add negative: v\.
get a solution: (([einorsvz{| 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz{|]n^_o`])([\.0-9a-zA-Z])+
add positive: version}.zip
add negative: v].
get a solution: (([einorsvz{|} 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz{|}n^_o`])([\.0-9a-zA-Z])+
add positive: version~.zip
add negative:  ^.
get a solution: (([einorsvz{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz{|}n~_o`])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v_.
get a solution: (([einorsvz{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz{|}n~o`])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  `.
get a solution: (([einorsvz{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[siz{|}n~o])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  i.
get a solution: (([einorsv{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[sz{|}n~o])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: vn.
get a solution: (([einorsv{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[sz{|}~o])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: vo.
get a solution: (([einorsv{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[sz{|}~])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: vs.
get a solution: (([einorsv{|}~ 	
 !"#%&'()*+,/:;<=>?@\$\-\.[\]^_`])+[z{|}~])([\.0-9a-zA-Z])+
add positive: version0.zip
add negative:  z.
  unsatisfiable SAT formula       
  8      |  2     ((■)+\.)(■)+            fail dotstar or empty
  9      |  2     ((■)+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  10     |  2     ((■■)+\.)([\.0-9a-zA-Z])+fail dot
  11     |  2     (((■|■))+\.)([\.0-9a-zA-Z])+fail solve
  12     |  2     (((■){■})+\.)([\.0-9a-zA-Z])+fail dot
  13     |  2     (([rseVino]){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  14     |  2     (([rseVino]){■}\.)(■)+  fail dotstar or empty
  15     |  2     (([rseVino]){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  16     |  2     (■\.)([\.0-9a-zA-Z])+   fail dotstar or empty
  17     |  2     (([rseVino])+■)(■)+     fail dotstar or empty
  18     |  2     (([rseVino])+■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  19     |  2     (([rseVino])+\.)(■){■}  fail dotstar or empty
  20     |  2     (([rseVino])+\.)■       fail dotstar or empty
  21     |  3     ((■){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  22     |  3     ((■){■}\.)(■)+          fail dotstar or empty
  23     |  3     ((■){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  24     |  3     ((■■){■}\.)([\.0-9a-zA-Z])+fail dot
  25     |  3     (((■|■)){■}\.)([\.0-9a-zA-Z])+fail solve
  26     |  3     (((■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  27     |  3     ((■)+■)(■)+             fail dotstar or empty
  28     |  3     ((■)+■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  29     |  3     ((■■)+■)([\.0-9a-zA-Z])+fail dot
  30     |  3     (((■|■))+■)([\.0-9a-zA-Z])+fail solve
  31     |  3     (((■){■})+■)([\.0-9a-zA-Z])+fail dot
  32     |  3     ((■)+(■■))([\.0-9a-zA-Z])+fail dot
  33     |  3     ((■)+(■|■))([\.0-9a-zA-Z])+fail solve
  34     |  3     ((■)+(■){■})([\.0-9a-zA-Z])+fail dot
  35     |  3     ((■)+\.)(■){■}          fail dotstar or empty
  36     |  3     ((■)+\.)■               fail dotstar or empty
  37     |  3     ((■■)+\.)(■)+           fail dotstar or empty
  38     |  3     ((■■)+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  39     |  3     (((■■)■)+\.)([\.0-9a-zA-Z])+fail dot
  40     |  3     (((■|■)■)+\.)([\.0-9a-zA-Z])+fail dot
  41     |  3     (((■){■}■)+\.)([\.0-9a-zA-Z])+fail dot
  42     |  3     ((■(■■))+\.)([\.0-9a-zA-Z])+fail dot
  43     |  3     ((■(■|■))+\.)([\.0-9a-zA-Z])+fail dot
  44     |  3     ((■(■){■})+\.)([\.0-9a-zA-Z])+fail dot
  45     |  3     (((■|■))+\.)(■)+        fail dotstar or empty
  46     |  3     (((■|■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  47     |  3     (((■■|■))+\.)([\.0-9a-zA-Z])+fail dot
  48     |  3     ((((■|■)|■))+\.)([\.0-9a-zA-Z])+fail solve
  49     |  3     ((((■){■}|■))+\.)([\.0-9a-zA-Z])+fail dot
  50     |  3     (((■|■■))+\.)([\.0-9a-zA-Z])+fail dot
  51     |  3     (((■|(■|■)))+\.)([\.0-9a-zA-Z])+fail solve
  52     |  3     (((■|(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  53     |  3     (((■){■})+\.)(■)+       fail dotstar or empty
  54     |  3     (((■){■})+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  55     |  3     (((■■){■})+\.)([\.0-9a-zA-Z])+fail dot
  56     |  3     ((((■|■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  57     |  3     ((((■){■}){■})+\.)([\.0-9a-zA-Z])+fail dot
  58     |  3     (([rseVino]){■}■)(■)+   fail dotstar or empty
  59     |  3     (([rseVino]){■}■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  60     |  3     (■■)([\.0-9a-zA-Z])+    fail dotstar or empty
  61     |  3     (([rseVino]){■}\.)(■){■}fail dotstar or empty
  62     |  3     (■\.)(■)+               fail dotstar or empty
  63     |  3     (■\.)([\.0-9a-zA-Z]){■} fail dotstar or empty
  64     |  3     (([rseVino]){■}\.)■     fail dotstar or empty
  65     |  3     (([rseVino])+■)(■){■}   fail dotstar or empty
  66     |  3     (([rseVino])+■)■        fail dotstar or empty
  67     |  4     ((■){■}■)(■)+           fail dotstar or empty
  68     |  4     ((■){■}■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  69     |  4     ((■){■}\.)(■){■}        fail dotstar or empty
  70     |  4     ((■){■}\.)■             fail dotstar or empty
  71     |  4     ((■■){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  72     |  4     ((■■){■}\.)(■)+         fail dotstar or empty
  73     |  4     ((■■){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  74     |  4     (((■■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  75     |  4     (((■|■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  76     |  4     (((■){■}■){■}\.)([\.0-9a-zA-Z])+fail dot
  77     |  4     (((■|■)){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  78     |  4     (((■|■)){■}\.)(■)+      fail dotstar or empty
  79     |  4     (((■|■)){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  80     |  4     (((■■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  81     |  4     ((((■|■)|■)){■}\.)([\.0-9a-zA-Z])+fail solve
  82     |  4     ((((■){■}|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  83     |  4     (((■){■}){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  84     |  4     (((■){■}){■}\.)(■)+     fail dotstar or empty
  85     |  4     (((■){■}){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  86     |  4     (((■■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  87     |  4     ((((■|■)){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  88     |  4     ((((■){■}){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  89     |  4     ((■)+■)(■){■}           fail dotstar or empty
  90     |  4     ((■)+■)■                fail dotstar or empty
  91     |  4     ((■■)+■)(■)+            fail dotstar or empty
  92     |  4     ((■■)+■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  93     |  4     (((■■)■)+■)([\.0-9a-zA-Z])+fail dot
  94     |  4     (((■|■)■)+■)([\.0-9a-zA-Z])+fail dot
  95     |  4     (((■){■}■)+■)([\.0-9a-zA-Z])+fail dot
  96     |  4     ((■(■■))+■)([\.0-9a-zA-Z])+fail dot
  97     |  4     ((■(■|■))+■)([\.0-9a-zA-Z])+fail dot
  98     |  4     ((■(■){■})+■)([\.0-9a-zA-Z])+fail dot
  99     |  4     ((■■)+(■■))([\.0-9a-zA-Z])+fail dot
  100    |  4     ((■■)+(■|■))([\.0-9a-zA-Z])+fail dot
  101    |  4     ((■■)+(■){■})([\.0-9a-zA-Z])+fail dot
  102    |  4     (((■|■))+■)(■)+         fail dotstar or empty
  103    |  4     (((■|■))+■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  104    |  4     (((■■|■))+■)([\.0-9a-zA-Z])+fail dot
  105    |  4     ((((■|■)|■))+■)([\.0-9a-zA-Z])+fail solve
  106    |  4     ((((■){■}|■))+■)([\.0-9a-zA-Z])+fail dot
  107    |  4     (((■|■■))+■)([\.0-9a-zA-Z])+fail dot
  108    |  4     (((■|(■|■)))+■)([\.0-9a-zA-Z])+fail solve
  109    |  4     (((■|(■){■}))+■)([\.0-9a-zA-Z])+fail dot
  110    |  4     (((■|■))+(■■))([\.0-9a-zA-Z])+fail dot
  111    |  4     (((■|■))+(■|■))([\.0-9a-zA-Z])+fail solve
  112    |  4     (((■|■))+(■){■})([\.0-9a-zA-Z])+fail dot
  113    |  4     (((■){■})+■)(■)+        fail dotstar or empty
  114    |  4     (((■){■})+■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  115    |  4     (((■■){■})+■)([\.0-9a-zA-Z])+fail dot
  116    |  4     ((((■|■)){■})+■)([\.0-9a-zA-Z])+fail dot
  117    |  4     ((((■){■}){■})+■)([\.0-9a-zA-Z])+fail dot
  118    |  4     (((■){■})+(■■))([\.0-9a-zA-Z])+fail dot
  119    |  4     (((■){■})+(■|■))([\.0-9a-zA-Z])+fail dot
  120    |  4     (((■){■})+(■){■})([\.0-9a-zA-Z])+fail dot
  121    |  4     ((■){■}(■■))([\.0-9a-zA-Z])+fail dotstar or empty
  122    |  4     ((■)+(■■))(■)+          fail dotstar or empty
  123    |  4     ((■)+(■■))([\.0-9a-zA-Z]){■}fail dotstar or empty
  124    |  4     ((■)+(■))([\.0-9a-zA-Z])+fail dotstar or empty
  125    |  4     ((■)+((■■)■))([\.0-9a-zA-Z])+fail dot
  126    |  4     ((■)+((■|■)■))([\.0-9a-zA-Z])+fail dot
  127    |  4     ((■)+((■){■}■))([\.0-9a-zA-Z])+fail dot
  128    |  4     ((■){■}(■|■))([\.0-9a-zA-Z])+fail dotstar or empty
  129    |  4     ((■)+(■|■))(■)+         fail dotstar or empty
  130    |  4     ((■)+(■|■))([\.0-9a-zA-Z]){■}fail dotstar or empty
  131    |  4     ((■)+(■■|■))([\.0-9a-zA-Z])+fail dot
  132    |  4     ((■)+((■|■)|■))([\.0-9a-zA-Z])+fail solve
  133    |  4     ((■)+((■){■}|■))([\.0-9a-zA-Z])+fail dot
  134    |  4     ((■){■}(■){■})([\.0-9a-zA-Z])+fail dotstar or empty
  135    |  4     ((■)+(■){■})(■)+        fail dotstar or empty
  136    |  4     ((■)+(■){■})([\.0-9a-zA-Z]){■}fail dotstar or empty
  137    |  4     ((■)+(■■){■})([\.0-9a-zA-Z])+fail dot
  138    |  4     ((■)+((■|■)){■})([\.0-9a-zA-Z])+fail dot
  139    |  4     ((■)+((■){■}){■})([\.0-9a-zA-Z])+fail dot
  140    |  4     ((■■)+\.)(■){■}         fail dotstar or empty
  141    |  4     ((■■)+\.)■              fail dotstar or empty
  142    |  4     (((■■)■)+\.)(■)+        fail dotstar or empty
  143    |  4     (((■■)■)+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  144    |  4     (((■)■)+\.)([\.0-9a-zA-Z])+fail dotstar or empty
  145    |  4     ((((■■)■)■)+\.)([\.0-9a-zA-Z])+fail dot
  146    |  4     ((((■|■)■)■)+\.)([\.0-9a-zA-Z])+fail dot
  147    |  4     ((((■){■}■)■)+\.)([\.0-9a-zA-Z])+fail dot
  148    |  4     (((■(■■))■)+\.)([\.0-9a-zA-Z])+fail dot
  149    |  4     (((■(■|■))■)+\.)([\.0-9a-zA-Z])+fail dot
  150    |  4     (((■(■){■})■)+\.)([\.0-9a-zA-Z])+fail dot
  151    |  4     (((■■)(■■))+\.)([\.0-9a-zA-Z])+fail dot
  152    |  4     (((■■)(■|■))+\.)([\.0-9a-zA-Z])+fail dot
  153    |  4     (((■■)(■){■})+\.)([\.0-9a-zA-Z])+fail dot
  154    |  4     (((■|■)■)+\.)(■)+       fail dotstar or empty
  155    |  4     (((■|■)■)+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  156    |  4     (((■■|■)■)+\.)([\.0-9a-zA-Z])+fail dot
  157    |  4     ((((■|■)|■)■)+\.)([\.0-9a-zA-Z])+fail dot
  158    |  4     ((((■){■}|■)■)+\.)([\.0-9a-zA-Z])+fail dot
  159    |  4     (((■|■■)■)+\.)([\.0-9a-zA-Z])+fail dot
  160    |  4     (((■|(■|■))■)+\.)([\.0-9a-zA-Z])+fail dot
  161    |  4     (((■|(■){■})■)+\.)([\.0-9a-zA-Z])+fail dot
  162    |  4     (((■|■)(■■))+\.)([\.0-9a-zA-Z])+fail dot
  163    |  4     (((■|■)(■|■))+\.)([\.0-9a-zA-Z])+fail dot
  164    |  4     (((■|■)(■){■})+\.)([\.0-9a-zA-Z])+fail dot
  165    |  4     (((■){■}■)+\.)(■)+      fail dotstar or empty
  166    |  4     (((■){■}■)+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  167    |  4     (((■■){■}■)+\.)([\.0-9a-zA-Z])+fail dot
  168    |  4     ((((■|■)){■}■)+\.)([\.0-9a-zA-Z])+fail dot
  169    |  4     ((((■){■}){■}■)+\.)([\.0-9a-zA-Z])+fail dot
  170    |  4     (((■){■}(■■))+\.)([\.0-9a-zA-Z])+fail dot
  171    |  4     (((■){■}(■|■))+\.)([\.0-9a-zA-Z])+fail dot
  172    |  4     (((■){■}(■){■})+\.)([\.0-9a-zA-Z])+fail dot
  173    |  4     ((■(■■))+\.)(■)+        fail dotstar or empty
  174    |  4     ((■(■■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  175    |  4     ((■(■))+\.)([\.0-9a-zA-Z])+fail dotstar or empty
  176    |  4     ((■((■■)■))+\.)([\.0-9a-zA-Z])+fail dot
  177    |  4     ((■((■|■)■))+\.)([\.0-9a-zA-Z])+fail dot
  178    |  4     ((■((■){■}■))+\.)([\.0-9a-zA-Z])+fail dot
  179    |  4     ((■(■(■■)))+\.)([\.0-9a-zA-Z])+fail dot
  180    |  4     ((■(■(■|■)))+\.)([\.0-9a-zA-Z])+fail dot
  181    |  4     ((■(■(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  182    |  4     ((■(■|■))+\.)(■)+       fail dotstar or empty
  183    |  4     ((■(■|■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  184    |  4     ((■(■■|■))+\.)([\.0-9a-zA-Z])+fail dot
  185    |  4     ((■((■|■)|■))+\.)([\.0-9a-zA-Z])+fail dot
  186    |  4     ((■((■){■}|■))+\.)([\.0-9a-zA-Z])+fail dot
  187    |  4     ((■(■|■■))+\.)([\.0-9a-zA-Z])+fail dot
  188    |  4     ((■(■|(■|■)))+\.)([\.0-9a-zA-Z])+fail dot
  189    |  4     ((■(■|(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  190    |  4     ((■(■){■})+\.)(■)+      fail dotstar or empty
  191    |  4     ((■(■){■})+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  192    |  4     ((■(■■){■})+\.)([\.0-9a-zA-Z])+fail dot
  193    |  4     ((■((■|■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  194    |  4     ((■((■){■}){■})+\.)([\.0-9a-zA-Z])+fail dot
  195    |  4     (((■|■))+\.)(■){■}      fail dotstar or empty
  196    |  4     (((■|■))+\.)■           fail dotstar or empty
  197    |  4     (((■■|■))+\.)(■)+       fail dotstar or empty
  198    |  4     (((■■|■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  199    |  4     ((((■■)■|■))+\.)([\.0-9a-zA-Z])+fail dot
  200    |  4     ((((■|■)■|■))+\.)([\.0-9a-zA-Z])+fail dot
  201    |  4     ((((■){■}■|■))+\.)([\.0-9a-zA-Z])+fail dot
  202    |  4     (((■(■■)|■))+\.)([\.0-9a-zA-Z])+fail dot
  203    |  4     (((■(■|■)|■))+\.)([\.0-9a-zA-Z])+fail dot
  204    |  4     (((■(■){■}|■))+\.)([\.0-9a-zA-Z])+fail dot
  205    |  4     (((■■|■■))+\.)([\.0-9a-zA-Z])+fail dot
  206    |  4     (((■■|(■|■)))+\.)([\.0-9a-zA-Z])+fail dot
  207    |  4     (((■■|(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  208    |  4     ((((■|■)|■))+\.)(■)+    fail dotstar or empty
  209    |  4     ((((■|■)|■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  210    |  4     ((((■■|■)|■))+\.)([\.0-9a-zA-Z])+fail dot
  211    |  4     (((((■|■)|■)|■))+\.)([\.0-9a-zA-Z])+fail solve
  212    |  4     (((((■){■}|■)|■))+\.)([\.0-9a-zA-Z])+fail dot
  213    |  4     ((((■|■■)|■))+\.)([\.0-9a-zA-Z])+fail dot
  214    |  4     ((((■|(■|■))|■))+\.)([\.0-9a-zA-Z])+fail solve
  215    |  4     ((((■|(■){■})|■))+\.)([\.0-9a-zA-Z])+fail dot
  216    |  4     ((((■|■)|■■))+\.)([\.0-9a-zA-Z])+fail dot
  217    |  4     ((((■|■)|(■|■)))+\.)([\.0-9a-zA-Z])+fail solve
  218    |  4     ((((■|■)|(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  219    |  4     ((((■){■}|■))+\.)(■)+   fail dotstar or empty
  220    |  4     ((((■){■}|■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  221    |  4     ((((■■){■}|■))+\.)([\.0-9a-zA-Z])+fail dot
  222    |  4     (((((■|■)){■}|■))+\.)([\.0-9a-zA-Z])+fail dot
  223    |  4     (((((■){■}){■}|■))+\.)([\.0-9a-zA-Z])+fail dot
  224    |  4     ((((■){■}|■■))+\.)([\.0-9a-zA-Z])+fail dot
  225    |  4     ((((■){■}|(■|■)))+\.)([\.0-9a-zA-Z])+fail dot
  226    |  4     ((((■){■}|(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  227    |  4     (((■|■■))+\.)(■)+       fail dotstar or empty
  228    |  4     (((■|■■))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  229    |  4     (((■|(■■)■))+\.)([\.0-9a-zA-Z])+fail dot
  230    |  4     (((■|(■|■)■))+\.)([\.0-9a-zA-Z])+fail dot
  231    |  4     (((■|(■){■}■))+\.)([\.0-9a-zA-Z])+fail dot
  232    |  4     (((■|■(■■)))+\.)([\.0-9a-zA-Z])+fail dot
  233    |  4     (((■|■(■|■)))+\.)([\.0-9a-zA-Z])+fail dot
  234    |  4     (((■|■(■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  235    |  4     (((■|(■|■)))+\.)(■)+    fail dotstar or empty
  236    |  4     (((■|(■|■)))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  237    |  4     (((■|(■■|■)))+\.)([\.0-9a-zA-Z])+fail dot
  238    |  4     (((■|((■|■)|■)))+\.)([\.0-9a-zA-Z])+fail solve
  239    |  4     (((■|((■){■}|■)))+\.)([\.0-9a-zA-Z])+fail dot
  240    |  4     (((■|(■|■■)))+\.)([\.0-9a-zA-Z])+fail dot
  241    |  4     (((■|(■|(■|■))))+\.)([\.0-9a-zA-Z])+fail solve
  242    |  4     (((■|(■|(■){■})))+\.)([\.0-9a-zA-Z])+fail dot
  243    |  4     (((■|(■){■}))+\.)(■)+   fail dotstar or empty
  244    |  4     (((■|(■){■}))+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  245    |  4     (((■|(■■){■}))+\.)([\.0-9a-zA-Z])+fail dot
  246    |  4     (((■|((■|■)){■}))+\.)([\.0-9a-zA-Z])+fail dot
  247    |  4     (((■|((■){■}){■}))+\.)([\.0-9a-zA-Z])+fail dot
  248    |  4     (((■){■})+\.)(■){■}     fail dotstar or empty
  249    |  4     (((■){■})+\.)■          fail dotstar or empty
  250    |  4     (((■■){■})+\.)(■)+      fail dotstar or empty
  251    |  4     (((■■){■})+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  252    |  4     ((((■■)■){■})+\.)([\.0-9a-zA-Z])+fail dot
  253    |  4     ((((■|■)■){■})+\.)([\.0-9a-zA-Z])+fail dot
  254    |  4     ((((■){■}■){■})+\.)([\.0-9a-zA-Z])+fail dot
  255    |  4     (((■(■■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  256    |  4     (((■(■|■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  257    |  4     (((■(■){■}){■})+\.)([\.0-9a-zA-Z])+fail dot
  258    |  4     ((((■|■)){■})+\.)(■)+   fail dotstar or empty
  259    |  4     ((((■|■)){■})+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  260    |  4     ((((■■|■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  261    |  4     (((((■|■)|■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  262    |  4     (((((■){■}|■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  263    |  4     ((((■|■■)){■})+\.)([\.0-9a-zA-Z])+fail dot
  264    |  4     ((((■|(■|■))){■})+\.)([\.0-9a-zA-Z])+fail dot
  265    |  4     ((((■|(■){■})){■})+\.)([\.0-9a-zA-Z])+fail dot
  266    |  4     ((((■){■}){■})+\.)(■)+  fail dotstar or empty
  267    |  4     ((((■){■}){■})+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  268    |  4     ((((■■){■}){■})+\.)([\.0-9a-zA-Z])+fail dot
  269    |  4     (((((■|■)){■}){■})+\.)([\.0-9a-zA-Z])+fail dot
  270    |  4     (((((■){■}){■}){■})+\.)([\.0-9a-zA-Z])+fail dot
  271    |  4     (([rseVino]){■}■)(■){■} fail dotstar or empty
  272    |  4     (■■)(■)+                fail dotstar or empty
  273    |  4     (■■)([\.0-9a-zA-Z]){■}  fail dotstar or empty
  274    |  4     (([rseVino]){■}■)■      fail dotstar or empty
  275    |  4     (■)([\.0-9a-zA-Z])+     fail dotstar or empty
  276    |  4     (■\.)(■){■}             fail dotstar or empty
  277    |  4     (■\.)■                  fail dotstar or empty
  278    |  5     ((■){■}■)(■){■}         fail dotstar or empty
  279    |  5     ((■){■}■)■              fail dotstar or empty
  280    |  5     ((■■){■}■)(■)+          fail dotstar or empty
  281    |  5     ((■■){■}■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  282    |  5     ((■■){■}\.)(■){■}       fail dotstar or empty
  283    |  5     ((■■){■}\.)■            fail dotstar or empty
  284    |  5     (((■■)■){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  285    |  5     (((■■)■){■}\.)(■)+      fail dotstar or empty
  286    |  5     (((■■)■){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  287    |  5     (((■)■){■}\.)([\.0-9a-zA-Z])+fail dotstar or empty
  288    |  5     ((((■■)■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  289    |  5     ((((■|■)■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  290    |  5     ((((■){■}■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  291    |  5     (((■■)(■■)){■}\.)([\.0-9a-zA-Z])+fail dot
  292    |  5     (((■■)(■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  293    |  5     (((■■)(■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  294    |  5     (((■|■)■){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  295    |  5     (((■|■)■){■}\.)(■)+     fail dotstar or empty
  296    |  5     (((■|■)■){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  297    |  5     (((■■|■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  298    |  5     ((((■|■)|■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  299    |  5     ((((■){■}|■)■){■}\.)([\.0-9a-zA-Z])+fail dot
  300    |  5     (((■|■)(■■)){■}\.)([\.0-9a-zA-Z])+fail dot
  301    |  5     (((■|■)(■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  302    |  5     (((■|■)(■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  303    |  5     (((■){■}■){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  304    |  5     (((■){■}■){■}\.)(■)+    fail dotstar or empty
  305    |  5     (((■){■}■){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  306    |  5     (((■■){■}■){■}\.)([\.0-9a-zA-Z])+fail dot
  307    |  5     ((((■|■)){■}■){■}\.)([\.0-9a-zA-Z])+fail dot
  308    |  5     ((((■){■}){■}■){■}\.)([\.0-9a-zA-Z])+fail dot
  309    |  5     (((■){■}(■■)){■}\.)([\.0-9a-zA-Z])+fail dot
  310    |  5     (((■){■}(■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  311    |  5     (((■){■}(■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  312    |  5     (((■|■)){■}■)(■)+       fail dotstar or empty
  313    |  5     (((■|■)){■}■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  314    |  5     (((■|■)){■}\.)(■){■}    fail dotstar or empty
  315    |  5     (((■|■)){■}\.)■         fail dotstar or empty
  316    |  5     (((■■|■)){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  317    |  5     (((■■|■)){■}\.)(■)+     fail dotstar or empty
  318    |  5     (((■■|■)){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  319    |  5     ((((■■)■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  320    |  5     ((((■|■)■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  321    |  5     ((((■){■}■|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  322    |  5     (((■■|■■)){■}\.)([\.0-9a-zA-Z])+fail dot
  323    |  5     (((■■|(■|■))){■}\.)([\.0-9a-zA-Z])+fail dot
  324    |  5     (((■■|(■){■})){■}\.)([\.0-9a-zA-Z])+fail dot
  325    |  5     ((((■|■)|■)){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  326    |  5     ((((■|■)|■)){■}\.)(■)+  fail dotstar or empty
  327    |  5     ((((■|■)|■)){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  328    |  5     ((((■■|■)|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  329    |  5     (((((■|■)|■)|■)){■}\.)([\.0-9a-zA-Z])+fail solve
  330    |  5     (((((■){■}|■)|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  331    |  5     ((((■|■)|■■)){■}\.)([\.0-9a-zA-Z])+fail dot
  332    |  5     ((((■|■)|(■|■))){■}\.)([\.0-9a-zA-Z])+fail solve
  333    |  5     ((((■|■)|(■){■})){■}\.)([\.0-9a-zA-Z])+fail dot
  334    |  5     ((((■){■}|■)){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  335    |  5     ((((■){■}|■)){■}\.)(■)+ fail dotstar or empty
  336    |  5     ((((■){■}|■)){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  337    |  5     ((((■■){■}|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  338    |  5     (((((■|■)){■}|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  339    |  5     (((((■){■}){■}|■)){■}\.)([\.0-9a-zA-Z])+fail dot
  340    |  5     ((((■){■}|■■)){■}\.)([\.0-9a-zA-Z])+fail dot
  341    |  5     ((((■){■}|(■|■))){■}\.)([\.0-9a-zA-Z])+fail dot
  342    |  5     ((((■){■}|(■){■})){■}\.)([\.0-9a-zA-Z])+fail dot
  343    |  5     (((■){■}){■}■)(■)+      fail dotstar or empty
  344    |  5     (((■){■}){■}■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  345    |  5     (((■){■}){■}\.)(■){■}   fail dotstar or empty
  346    |  5     (((■){■}){■}\.)■        fail dotstar or empty
  347    |  5     (((■■){■}){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  348    |  5     (((■■){■}){■}\.)(■)+    fail dotstar or empty
  349    |  5     (((■■){■}){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  350    |  5     ((((■■)■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  351    |  5     ((((■|■)■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  352    |  5     ((((■){■}■){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  353    |  5     ((((■|■)){■}){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  354    |  5     ((((■|■)){■}){■}\.)(■)+ fail dotstar or empty
  355    |  5     ((((■|■)){■}){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  356    |  5     ((((■■|■)){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  357    |  5     (((((■|■)|■)){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  358    |  5     (((((■){■}|■)){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  359    |  5     ((((■){■}){■}){■}■)([\.0-9a-zA-Z])+fail dotstar or empty
  360    |  5     ((((■){■}){■}){■}\.)(■)+fail dotstar or empty
  361    |  5     ((((■){■}){■}){■}\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  362    |  5     ((((■■){■}){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  363    |  5     (((((■|■)){■}){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  364    |  5     (((((■){■}){■}){■}){■}\.)([\.0-9a-zA-Z])+fail dot
  365    |  5     ((■■)+■)(■){■}          fail dotstar or empty
  366    |  5     ((■■)+■)■               fail dotstar or empty
  367    |  5     (((■■)■)+■)(■)+         fail dotstar or empty
  368    |  5     (((■■)■)+■)([\.0-9a-zA-Z]){■}fail dotstar or empty
  369    |  5     (((■)■)+■)([\.0-9a-zA-Z])+fail dotstar or empty
  370    |  5     ((((■■)■)■)+■)([\.0-9a-zA-Z])+fail dot
  371    |  5     ((((■|■)■)■)+■)([\.0-9a-zA-Z])+fail dot
  372    |  5     ((((■){■}■)■)+■)([\.0-9a-zA-Z])+fail dot
  373    |  5     (((■(■■))■)+■)([\.0-9a-zA-Z])+fail dot
  374    |  5     (((■(■|■))■)+■)([\.0-9a-zA-Z])+fail dot
  375    |  5     (((■(■){■})■)+■)([\.0-9a-zA-Z])+fail dot
  376    |  5     (((■■)(■■))+■)([\.0-9a-zA-Z])+fail dot
  377    |  5     (((■■)(■|■))+■)([\.0-9a-zA-Z])+fail dot
  378    |  5     (((■■)(■){■})+■)([\.0-9a-zA-Z])+fail dot
  379    |  5     (((■■)■)+(■■))([\.0-9a-zA-Z])+fail dot
  380    |  5     (((■■)■)+(■|■))([\.0-9a-zA-Z])+fail dot
  381    |  5     (((■■)■)+(■){■})([\.0-9a-zA-Z])+fail dot
  382    |  5     (((■|■)■)+■)(■)+        
20.039603233337402
timeout