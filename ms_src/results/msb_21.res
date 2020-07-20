
Given the regular expression:

  ([0-9])*(\,)?([asce::p])?(([AcCdDhHkKmMnNu]m|m)|dam)([0-9])*

That that should match the strings:

  ✓ (0:4)    1,26
  ✓ (4:9)    100cm

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  2      |  1     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  3      |  1     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  4      |  1     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  5      |  1     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  6      |  1     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  7      |  1     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  8      |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  9      |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*get a solution: (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|2)|(da)m))([0-9])*
add positive: m
add negative: 2
get a solution: (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|[,m])|(da)m))([0-9])*
add positive: ,0m
add negative: ,
  10     |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  11     |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  12     |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  13     |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  14     |  1     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  15     |  2     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  16     |  2     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  17     |  2     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  18     |  2     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  19     |  2     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  20     |  2     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  21     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  22     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*get a solution: (((([12,0])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|[6m])|(da)m))([0-9])*
add positive: 3m
add negative: 6
  unsatisfiable SAT formula       
  23     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  24     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  25     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  26     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  27     |  2     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  28     |  2     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  29     |  2     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  30     |  2     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  31     |  2     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  32     |  2     (((([0-9]){■}(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  33     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  34     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  35     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  36     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  37     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  38     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  39     |  2     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  40     |  2     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  41     |  2     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  42     |  2     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  43     |  2     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  44     |  2     (((([0-9])*(■)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  45     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  46     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  47     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  48     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  49     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  50     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  51     |  2     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  52     |  2     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  53     |  2     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  54     |  2     (((([0-9])*(\,){■})([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  55     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  56     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  57     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  58     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  59     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  60     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  61     |  2     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  62     |  2     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  63     |  2     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  64     |  2     (((([0-9])*(\,)?)(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  65     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  66     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  67     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  68     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  69     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  70     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  71     |  2     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  72     |  2     (((([0-9])*(\,)?)([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  73     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  74     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  75     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  76     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  77     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  78     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  79     |  2     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  80     |  2     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  81     |  2     (((([0-9])*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*get a solution: (((([0-9])*(\,)?)([asce::p])?)(([,0][2m]|m)|(da)m))([0-9])*
add positive: dm
add negative: 02
get a solution: (((([0-9])*(\,)?)([asce::p])?)(([2d0][6m]|m)|(da)m))([0-9])*
add positive: Am
add negative: d6
get a solution: (((([0-9])*(\,)?)([asce::p])?)(([A1d0][,m]|m)|(da)m))([0-9])*
add positive: Cm
add negative: A,
  unsatisfiable SAT formula       
  82     |  2     (((([0-9])*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  83     |  2     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  84     |  2     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  85     |  2     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  86     |  2     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  87     |  2     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  88     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail dot
  89     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  90     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  91     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  92     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  93     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  94     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail dot
  95     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail dot
  96     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail dot
  97     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  98     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail dot
  99     |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  100    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  101    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  102    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  103    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  104    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  105    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  106    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  107    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  108    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  109    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  110    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  111    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  112    |  2     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  113    |  3     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  114    |  3     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  115    |  3     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  116    |  3     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  117    |  3     ((((■){■}(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  118    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  119    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  120    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  121    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  122    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  123    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  124    |  3     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  125    |  3     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  126    |  3     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  127    |  3     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  128    |  3     ((((■)*(■)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  129    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  130    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  131    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  132    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  133    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  134    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  135    |  3     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  136    |  3     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  137    |  3     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  138    |  3     ((((■)*(\,){■})([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  139    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  140    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  141    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  142    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  143    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  144    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  145    |  3     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  146    |  3     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  147    |  3     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  148    |  3     ((((■)*(\,)?)(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  149    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  150    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  151    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  152    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  153    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  154    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  155    |  3     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  156    |  3     ((((■)*(\,)?)([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  157    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  158    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  159    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  160    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  161    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  162    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  163    |  3     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  164    |  3     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  165    |  3     ((((■)*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*get a solution: (((([A1c0])*(\,)?)([asce::p])?)(([13cCd0][,m]|m)|(da)m))([0-9])*
add positive: 2m
add negative: c,
get a solution: (((([A1c0])*(\,)?)([asce::p])?)(([123Cd0][,m]|m)|(da)m))([0-9])*
add positive: 4m
add negative: d,
get a solution: (((([1c,0])*(\,)?)([asce::p])?)(([A23cC4d,][2m]|m)|(da)m))([0-9])*
add positive: 5m
add negative: 22
get a solution: (((([A1cd0])*(\,)?)([asce::p])?)(([123C450][6,m]|m)|(da)m))([0-9])*
add positive: 6m
add negative: C,
get a solution: (((([A1Cd0])*(\,)?)([asce::p])?)(([1234560][6,m]|m)|(da)m))([0-9])*
add positive: 7m
add negative: 06
get a solution: (((([A1cCd0])*(\,)?)([asce::p])?)(([12345670][,m]|m)|(da)m))([0-9])*
add positive: 8m
add negative: 0,
get a solution: (((([A1cCd,0])*(\,)?)([asce::p])?)(([12345678][6,m]|m)|(da)m))([0-9])*
add positive: 9m
add negative: 1,
get a solution: (((([1cd,0])*(\,)?)([asce::p])?)(([A23cC456789][6m]|m)|(da)m))([0-9])*
add positive: mm
add negative: A6
get a solution: (((([12c,0])*(\,)?)([asce::p])?)(([AcCd,m3456789][2m]|m)|(da)m))([0-9])*
add positive: Dm
add negative: A2
get a solution: (((([A1cd,0])*(\,)?)([asce::p])?)(([cCDm23456789][6m]|m)|(da)m))([0-9])*
add positive: Hm
add negative: 26
get a solution: (((([A12c,0])*(\,)?)([asce::p])?)(([cCDdH,m3456789][2m]|m)|(da)m))([0-9])*
add positive: Km
add negative: ,2
  unsatisfiable SAT formula       
  166    |  3     ((((■)*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  167    |  3     ((((■)*(\,)?)([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  168    |  3     ((((■)*(\,)?)([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  169    |  3     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  170    |  3     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  171    |  3     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  172    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  173    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  174    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  175    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  176    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  177    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  178    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  179    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  180    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  181    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  182    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  183    |  3     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  184    |  3     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  185    |  3     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  186    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  187    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  188    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  189    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  190    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  191    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  192    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  193    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  194    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  195    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  196    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  197    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  198    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  199    |  3     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  200    |  3     (((([0-9]){■}(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  201    |  3     (((([0-9]){■}(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  202    |  3     (((([0-9]){■}(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  203    |  3     (((([0-9]){■}(■)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  204    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  205    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  206    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  207    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  208    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  209    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  210    |  3     (((([0-9]){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  211    |  3     (((■(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  212    |  3     (((([0-9]){■}(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  213    |  3     (((([0-9]){■}(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  214    |  3     (((([0-9]){■}(\,){■})([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  215    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  216    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  217    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  218    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  219    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  220    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  221    |  3     (((([0-9]){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  222    |  3     (((■(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  223    |  3     (((([0-9]){■}■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  224    |  3     (((([0-9]){■}(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  225    |  3     (((([0-9]){■}(\,)?)(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  226    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  227    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  228    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  229    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  230    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  231    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  232    |  3     (((([0-9]){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  233    |  3     (((■(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  234    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  235    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  236    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  237    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  238    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  239    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  240    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  241    |  3     (((([0-9]){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  242    |  3     (((■(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  243    |  3     (((([0-9]){■}(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  244    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  245    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  246    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  247    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  248    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  249    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  250    |  3     (((([0-9]){■}(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  251    |  3     (((■(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  252    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail dot
  253    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  254    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  255    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  256    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  257    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  258    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  259    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail dot
  260    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail dot
  261    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail dot
  262    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  263    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail dot
  264    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  265    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  266    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail dot
  267    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  268    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  269    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  270    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  271    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  272    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  273    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  274    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  275    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  276    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  277    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  278    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  279    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  280    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  281    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  282    |  3     (((■(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  283    |  3     (((([0-9]){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  284    |  3     (((([0-9])*(■){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  285    |  3     (((([0-9])*(■){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  286    |  3     (((([0-9])*(■){■})([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  287    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  288    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  289    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  290    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  291    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  292    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  293    |  3     (((([0-9])*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  294    |  3     (((([0-9])*(■)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  295    |  3     (((([0-9])*(■)?)(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  296    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  297    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  298    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  299    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  300    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  301    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  302    |  3     (((([0-9])*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  303    |  3     (((([0-9])*(■)?)([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  304    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  305    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  306    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  307    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  308    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  309    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  310    |  3     (((([0-9])*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  311    |  3     (((([0-9])*(■)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  312    |  3     (((([0-9])*(■)?)([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  313    |  3     (((([0-9])*(■)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  314    |  3     (((([0-9])*(■)?)([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  315    |  3     (((([0-9])*(■)?)([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  316    |  3     (((([0-9])*(■)?)([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  317    |  3     (((([0-9])*(■)?)([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  318    |  3     (((([0-9])*(■)?)([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  319    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail dot
  320    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  321    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  322    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  323    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  324    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  325    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail dot
  326    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail dot
  327    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail dot
  328    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  329    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail dot
  330    |  3     (((([0-9])*(■■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  331    |  3     (((([0-9])*((■|■))?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  332    |  3     (((([0-9])*((■){■})?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  333    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  334    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail dot
  335    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  336    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  337    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  338    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  339    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  340    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  341    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  342    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  343    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  344    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  345    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  346    |  3     (((([0-9])*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  347    |  3     (((([0-9])*(\,){■})(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  348    |  3     (((([0-9])*(\,){■})(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  349    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  350    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  351    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  352    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  353    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  354    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  355    |  3     (((([0-9])*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  356    |  3     (((([0-9])*■)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  357    |  3     (((([0-9])*(\,){■})([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  358    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  359    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  360    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  361    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  362    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  363    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  364    |  3     (((([0-9])*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  365    |  3     (((([0-9])*■)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  366    |  3     (((([0-9])*(\,){■})■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  367    |  3     (((([0-9])*(\,){■})([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  368    |  3     (((([0-9])*(\,){■})([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  369    |  3     (((([0-9])*(\,){■})([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  370    |  3     (((([0-9])*(\,){■})([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  371    |  3     (((([0-9])*(\,){■})([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  372    |  3     (((([0-9])*(\,){■})([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  373    |  3     (((([0-9])*(\,){■})([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  374    |  3     (((([0-9])*■)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  375    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail dot
  376    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  377    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  378    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  379    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  380    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  381    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  382    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail dot
  383    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail dot
  384    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail dot
  385    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  386    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail dot
  387    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  388    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  389    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail dot
  390    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  391    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  392    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  393    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  394    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  395    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  396    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  397    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  398    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  399    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  400    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  401    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  402    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  403    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  404    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  405    |  3     (((([0-9])*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  406    |  3     (((([0-9])*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  407    |  3     (((([0-9])*(\,)?)(■){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  408    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  409    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  410    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  411    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  412    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  413    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  414    |  3     (((([0-9])*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  415    |  3     (((([0-9])*(\,)?)(■)?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  416    |  3     (((([0-9])*(\,)?)(■)?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  417    |  3     (((([0-9])*(\,)?)(■)?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  418    |  3     (((([0-9])*(\,)?)(■)?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  419    |  3     (((([0-9])*(\,)?)(■)?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  420    |  3     (((([0-9])*(\,)?)(■)?)((■m|m)|(da)m))(■)*fail dotstar or empty
  421    |  3     (((([0-9])*(\,)?)(■)?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  422    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  423    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  424    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  425    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  426    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  427    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  428    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  429    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  430    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  431    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  432    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  433    |  3     (((([0-9])*(\,)?)(■■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  434    |  3     (((([0-9])*(\,)?)((■|■))?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  435    |  3     (((([0-9])*(\,)?)((■){■})?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  436    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  437    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  438    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  439    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  440    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  441    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  442    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  443    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  444    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  445    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  446    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  447    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  448    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  449    |  3     (((([0-9])*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  450    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  451    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  452    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  453    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  454    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■m|m)|(da)■))([0-9])*fail dotstar or empty
  455    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■m|m)|(da)m))(■)*fail dotstar or empty
  456    |  3     (((([0-9])*(\,)?)([asce::p]){■})((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  457    |  3     (((([0-9])*(\,)?)■)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  458    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail dot
  459    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  460    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  461    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  462    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  463    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  464    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  465    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail dot
  466    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail dot
  467    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail dot
  468    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  469    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail dot
  470    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  471    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  472    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail dot
  473    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  474    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  475    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  476    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  477    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  478    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  479    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  480    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  481    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  482    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  483    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  484    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  485    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  486    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  487    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  488    |  3     (((([0-9])*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  489    |  3     (((([0-9])*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  490    |  3     (((([0-9])*(\,)?)([asce::p])?)((■■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  491    |  3     (((([0-9])*(\,)?)([asce::p])?)((■■|m)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  492    |  3     (((([0-9])*(\,)?)([asce::p])?)((■■|m)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  493    |  3     (((([0-9])*(\,)?)([asce::p])?)((■■|m)|(da)■))([0-9])*  unsatisfiable SAT formula       
  494    |  3     (((([0-9])*(\,)?)([asce::p])?)((■■|m)|(da)m))(■)*  unsatisfiable SAT formula       
  495    |  3     (((([0-9])*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  496    |  3     (((([0-9])*(\,)?)([asce::p])?)((■|m)|(da)m))([0-9])*fail dot
  497    |  3     (((([0-9])*(\,)?)([asce::p])?)(((■■)■|m)|(da)m))([0-9])*fail dot
  498    |  3     (((([0-9])*(\,)?)([asce::p])?)(((■|■)■|m)|(da)m))([0-9])*fail solve
  499    |  3     (((([0-9])*(\,)?)([asce::p])?)(((■){■}■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  500    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  501    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  502    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  503    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  504    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  505    |  3     (((([0-9])*(\,)?)([asce::p])?)(((■■)m|■)|(da)m))([0-9])*fail dot
  506    |  3     (((([0-9])*(\,)?)([asce::p])?)(((■|■)m|■)|(da)m))([0-9])*fail solve
  507    |  3     (((([0-9])*(\,)?)([asce::p])?)(((■){■}m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  508    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|■■)|(da)m))([0-9])*fail dot
  509    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|(■|■))|(da)m))([0-9])*fail solve
  510    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  511    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(■■)m))([0-9])*fail dotstar or empty
  512    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(■a)■))([0-9])*fail dotstar or empty
  513    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(■a)m))(■)*fail dotstar or empty
  514    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  515    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(d■)■))([0-9])*fail dotstar or empty
  516    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(d■)m))(■)*fail dotstar or empty
  517    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  518    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)■))(■)*fail dotstar or empty
  519    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)■))([0-9]){■}fail dotstar or empty
  520    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)m))(■){■}fail dotstar or empty
  521    |  3     (((([0-9])*(\,)?)([asce::p])?)((■m|m)|(da)m))■fail dotstar or empty
  522    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(■a)m))([0-9])*fail dot
  523    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(d■)m))([0-9])*fail dot
  524    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)■))([0-9])*fail dot
  525    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))(■)*  unsatisfiable SAT formula       
  526    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9]){■}fail dot
  527    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu](■■)|■)|(da)m))([0-9])*fail dot
  528    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu](■|■)|■)|(da)m))([0-9])*fail dot
  529    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu](■){■}|■)|(da)m))([0-9])*fail dot
  530    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■■)|(da)m))([0-9])*fail dot
  531    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|(■|■))|(da)m))([0-9])*fail dot
  532    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  533    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■■)m))([0-9])*fail dotstar or empty
  534    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)■))([0-9])*fail dotstar or empty
  535    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))(■)*fail dotstar or empty
  536    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9]){■}fail dotstar or empty
  537    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)■))([0-9])*fail dotstar or empty
  538    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))(■)*fail dotstar or empty
  539    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9]){■}fail dotstar or empty
  540    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))(■)*fail dotstar or empty
  541    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9]){■}fail dotstar or empty
  542    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■){■}fail dotstar or empty
  543    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))■fail dotstar or empty
  544    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■■)m))([0-9])*  unsatisfiable SAT formula       
  545    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)■))([0-9])*fail dot
  546    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))(■)*  unsatisfiable SAT formula       
  547    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9]){■}fail dot
  548    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(■a)m))([0-9])*fail dot
  549    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(■a)m))([0-9])*fail dot
  550    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(■a)m))([0-9])*  unsatisfiable SAT formula       
  551    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|((■■)a)m))([0-9])*fail dot
  552    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|((■|■)a)m))([0-9])*fail dot
  553    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|((■){■}a)m))([0-9])*fail dot
  554    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)■))([0-9])*fail dot
  555    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))(■)*  unsatisfiable SAT formula       
  556    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9]){■}fail dot
  557    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(d■)m))([0-9])*fail dot
  558    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(d■)m))([0-9])*fail dot
  559    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(d■)m))([0-9])*  unsatisfiable SAT formula       
  560    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d(■■))m))([0-9])*fail dot
  561    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d(■|■))m))([0-9])*fail dot
  562    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d(■){■})m))([0-9])*fail dot
  563    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))(■)*  unsatisfiable SAT formula       
  564    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9]){■}fail dot
  565    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)■))([0-9])*fail dot
  566    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)■))([0-9])*fail dot
  567    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)■))([0-9])*  unsatisfiable SAT formula       
  568    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)(■■)))([0-9])*fail dot
  569    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)(■|■)))([0-9])*fail dot
  570    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)(■){■}))([0-9])*fail dot
  571    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■){■}  unsatisfiable SAT formula       
  572    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))(■)*fail dot
  573    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))(■)*fail solve
  574    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))(■)*  unsatisfiable SAT formula       
  575    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■■)*  unsatisfiable SAT formula       
  576    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))((■|■))*fail solve
  577    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))((■){■})*  unsatisfiable SAT formula       
  578    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))■fail dot
  579    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9]){■}fail dot
  580    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9]){■}fail dot
  581    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  582    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■■)■)|(da)m))([0-9])*fail dot
  583    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■)■)|(da)m))([0-9])*fail dot
  584    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■}■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  585    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■■|■))|(da)m))([0-9])*  unsatisfiable SAT formula       
  586    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|((■|■)|■))|(da)m))([0-9])*fail solve
  587    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|((■){■}|■))|(da)m))([0-9])*get a solution: (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(([12,m0]){3}|m))|(da)m))([0-9])*
add positive: ,3m
add negative: 0,,
  unsatisfiable SAT formula       
  588    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■■){■})|(da)m))([0-9])*fail dot
  589    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|((■|■)){■})|(da)m))([0-9])*fail solve
  590    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|((■){■}){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  591    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)■))([0-9])*get a solution: (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|([1,][3,0])[2m]))([0-9])*
add positive: ,1m
add negative: 102
get a solution: (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(,[1230])[6m]))([0-9])*
add positive: ,4m
add negative: ,06
  unsatisfiable SAT formula       
  592    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))(■)*fail dotstar or empty
  593    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9]){■}fail dotstar or empty
  594    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■)m))([0-9])*fail dotstar or empty
  595    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))(■)*fail dotstar or empty
  596    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9]){■}fail dotstar or empty
  597    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■){■}fail dotstar or empty
  598    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))■fail dotstar or empty
  599    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))(■)*fail dotstar or empty
  600    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9]){■}fail dotstar or empty
  601    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■){■}fail dotstar or empty
  602    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))■fail dotstar or empty
  603    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■){■}fail dotstar or empty
  604    |  3     (((([0-9])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))■fail dotstar or empty
  605    |  4     ((((■){■}(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  606    |  4     ((((■){■}(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  607    |  4     ((((■){■}(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  608    |  4     ((((■){■}(■)?)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  609    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  610    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  611    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  612    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  613    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  614    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  615    |  4     ((((■){■}(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  616    |  4     ((((■){■}(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  617    |  4     ((((■){■}(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  618    |  4     ((((■){■}(\,){■})([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  619    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  620    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  621    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  622    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  623    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  624    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  625    |  4     ((((■){■}(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  626    |  4     ((((■){■}■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  627    |  4     ((((■){■}(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  628    |  4     ((((■){■}(\,)?)(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  629    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  630    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  631    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  632    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  633    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  634    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  635    |  4     ((((■){■}(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  636    |  4     ((((■){■}(\,)?)([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  637    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  638    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  639    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  640    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  641    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  642    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  643    |  4     ((((■){■}(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  644    |  4     ((((■){■}(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  645    |  4     ((((■){■}(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  646    |  4     ((((■){■}(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  647    |  4     ((((■){■}(\,)?)([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  648    |  4     ((((■){■}(\,)?)([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  649    |  4     ((((■){■}(\,)?)([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  650    |  4     ((((■){■}(\,)?)([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  651    |  4     ((((■){■}(\,)?)([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  652    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  653    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  654    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  655    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  656    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  657    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  658    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  659    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  660    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  661    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  662    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  663    |  4     ((((■■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  664    |  4     (((((■|■)){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  665    |  4     (((((■){■}){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  666    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  667    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  668    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  669    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  670    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  671    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  672    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  673    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  674    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  675    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  676    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  677    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  678    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  679    |  4     ((((■){■}(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  680    |  4     ((((■)*(■){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  681    |  4     ((((■)*(■){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  682    |  4     ((((■)*(■){■})([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  683    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  684    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  685    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  686    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  687    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  688    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  689    |  4     ((((■)*(■){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  690    |  4     ((((■)*(■)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  691    |  4     ((((■)*(■)?)(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  692    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  693    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  694    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  695    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  696    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  697    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  698    |  4     ((((■)*(■)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  699    |  4     ((((■)*(■)?)([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  700    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  701    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  702    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  703    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  704    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  705    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  706    |  4     ((((■)*(■)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  707    |  4     ((((■)*(■)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  708    |  4     ((((■)*(■)?)([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  709    |  4     ((((■)*(■)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  710    |  4     ((((■)*(■)?)([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  711    |  4     ((((■)*(■)?)([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  712    |  4     ((((■)*(■)?)([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  713    |  4     ((((■)*(■)?)([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  714    |  4     ((((■)*(■)?)([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  715    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  716    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  717    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  718    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  719    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  720    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  721    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  722    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  723    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  724    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  725    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  726    |  4     ((((■■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  727    |  4     (((((■|■))*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  728    |  4     (((((■){■})*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  729    |  4     ((((■)*(■■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  730    |  4     ((((■)*((■|■))?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  731    |  4     ((((■)*((■){■})?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  732    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  733    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  734    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  735    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  736    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  737    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  738    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  739    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  740    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  741    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  742    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  743    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  744    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  745    |  4     ((((■)*(■)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  746    |  4     ((((■)*(\,){■})(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  747    |  4     ((((■)*(\,){■})(■)?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  748    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  749    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  750    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  751    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  752    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  753    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  754    |  4     ((((■)*(\,){■})(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  755    |  4     ((((■)*■)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  756    |  4     ((((■)*(\,){■})([asce::p]){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  757    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  758    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  759    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  760    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  761    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  762    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  763    |  4     ((((■)*(\,){■})([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  764    |  4     ((((■)*■)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  765    |  4     ((((■)*(\,){■})■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9])*fail dotstar or empty
  766    |  4     ((((■)*(\,){■})([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  767    |  4     ((((■)*(\,){■})([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  768    |  4     ((((■)*(\,){■})([asce::p])?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  769    |  4     ((((■)*(\,){■})([asce::p])?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  770    |  4     ((((■)*(\,){■})([asce::p])?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  771    |  4     ((((■)*(\,){■})([asce::p])?)((■m|m)|(da)m))(■)*fail dotstar or empty
  772    |  4     ((((■)*(\,){■})([asce::p])?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  773    |  4     ((((■)*■)([asce::p])?)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  774    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  775    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  776    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  777    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  778    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  779    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  780    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  781    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  782    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  783    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  784    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  785    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  786    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  787    |  4     ((((■■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  788    |  4     (((((■|■))*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  789    |  4     (((((■){■})*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  790    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  791    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  792    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  793    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  794    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  795    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  796    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  797    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  798    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  799    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  800    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  801    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  802    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  803    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  804    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  805    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  806    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  807    |  4     ((((■)*■)([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  808    |  4     ((((■)*(\,){■})([asce::p])?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  809    |  4     ((((■)*(\,)?)(■){■})((■m|m)|(da)m))([0-9])*fail dotstar or empty
  810    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  811    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  812    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  813    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  814    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  815    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  816    |  4     ((((■)*(\,)?)(■){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  817    |  4     ((((■)*(\,)?)(■)?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  818    |  4     ((((■)*(\,)?)(■)?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  819    |  4     ((((■)*(\,)?)(■)?)((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  820    |  4     ((((■)*(\,)?)(■)?)((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  821    |  4     ((((■)*(\,)?)(■)?)((■m|m)|(da)■))([0-9])*fail dotstar or empty
  822    |  4     ((((■)*(\,)?)(■)?)((■m|m)|(da)m))(■)*fail dotstar or empty
  823    |  4     ((((■)*(\,)?)(■)?)((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  824    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  825    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  826    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  827    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  828    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  829    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  830    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  831    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  832    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  833    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  834    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  835    |  4     ((((■■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  836    |  4     (((((■|■))*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  837    |  4     (((((■){■})*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  838    |  4     ((((■)*(\,)?)(■■)?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  839    |  4     ((((■)*(\,)?)((■|■))?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  840    |  4     ((((■)*(\,)?)((■){■})?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  841    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  842    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  843    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  844    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  845    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  846    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  847    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  848    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  849    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  850    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  851    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  852    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  853    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  854    |  4     ((((■)*(\,)?)(■)?)(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  855    |  4     ((((■)*(\,)?)([asce::p]){■})((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  856    |  4     ((((■)*(\,)?)([asce::p]){■})((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  857    |  4     ((((■)*(\,)?)([asce::p]){■})((■m|m)|(■a)m))([0-9])*fail dotstar or empty
  858    |  4     ((((■)*(\,)?)([asce::p]){■})((■m|m)|(d■)m))([0-9])*fail dotstar or empty
  859    |  4     ((((■)*(\,)?)([asce::p]){■})((■m|m)|(da)■))([0-9])*fail dotstar or empty
  860    |  4     ((((■)*(\,)?)([asce::p]){■})((■m|m)|(da)m))(■)*fail dotstar or empty
  861    |  4     ((((■)*(\,)?)([asce::p]){■})((■m|m)|(da)m))([0-9]){■}fail dotstar or empty
  862    |  4     ((((■)*(\,)?)■)((■m|m)|(da)m))([0-9])*fail dotstar or empty
  863    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  864    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9])*fail dotstar or empty
  865    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9])*fail dotstar or empty
  866    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9])*fail dotstar or empty
  867    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))(■)*fail dotstar or empty
  868    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9]){■}fail dotstar or empty
  869    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]■|m)|(da)m))([0-9])*fail dotstar or empty
  870    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  871    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  872    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  873    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  874    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  875    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  876    |  4     ((((■■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  877    |  4     (((((■|■))*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  878    |  4     (((((■){■})*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  879    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  880    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  881    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  882    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■■)m))([0-9])*fail dotstar or empty
  883    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)■))([0-9])*fail dotstar or empty
  884    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))(■)*fail dotstar or empty
  885    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  886    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(■a)m))([0-9])*fail dotstar or empty
  887    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)■))([0-9])*fail dotstar or empty
  888    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))(■)*fail dotstar or empty
  889    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  890    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(d■)m))([0-9])*fail dotstar or empty
  891    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))(■)*fail dotstar or empty
  892    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9]){■}fail dotstar or empty
  893    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)■))([0-9])*fail dotstar or empty
  894    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))(■){■}fail dotstar or empty
  895    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))(■)*fail dotstar or empty
  896    |  4     ((((■)*(\,)?)■)(([AcCdDhHkKmMnNu]m|m)|(da)m))([0-9]){■}fail dotstar or empty
  897    |  4     ((((■)*(\,)?)([asce::p]){■})(([AcCdDhHkKmMnNu]m|m)|(da)m))■fail dotstar or empty
  898    |  4     ((((■)*(\,)?)([asce::p])?)((■■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  899    |  4     ((((■)*(\,)?)([asce::p])?)((■■|m)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  900    |  4     ((((■)*(\,)?)([asce::p])?)((■■|m)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  901    |  4     ((((■)*(\,)?)([asce::p])?)((■■|m)|(da)■))([0-9])*  unsatisfiable SAT formula       
  902    |  4     ((((■)*(\,)?)([asce::p])?)((■■|m)|(da)m))(■)*  unsatisfiable SAT formula       
  903    |  4     ((((■)*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  904    |  4     ((((■)*(\,)?)([asce::p])?)((■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  905    |  4     ((((■■)*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  906    |  4     (((((■|■))*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*fail solve
  907    |  4     (((((■){■})*(\,)?)([asce::p])?)((■■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  908    |  4     ((((■)*(\,)?)([asce::p])?)(((■■)■|m)|(da)m))([0-9])*get a solution: (((([AcCDdHK,m0123456789])*(\,)?)([asce::p])?)((([1,0][12c4,])[26m]|m)|(da)m))([0-9])*
add positive: Mm
add negative: dmm
  unsatisfiable SAT formula       
  909    |  4     ((((■)*(\,)?)([asce::p])?)(((■|■)■|m)|(da)m))([0-9])*fail solve
  910    |  4     ((((■)*(\,)?)([asce::p])?)(((■){■}■|m)|(da)m))([0-9])*  unsatisfiable SAT formula       
  911    |  4     ((((■)*(\,)?)([asce::p])?)((■m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  912    |  4     ((((■)*(\,)?)([asce::p])?)((■m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  913    |  4     ((((■)*(\,)?)([asce::p])?)((■m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  914    |  4     ((((■)*(\,)?)([asce::p])?)((■m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  915    |  4     ((((■)*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  916    |  4     ((((■■)*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  917    |  4     (((((■|■))*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*fail solve
  918    |  4     (((((■){■})*(\,)?)([asce::p])?)((■m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  919    |  4     ((((■)*(\,)?)([asce::p])?)(((■■)m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  920    |  4     ((((■)*(\,)?)([asce::p])?)(((■|■)m|■)|(da)m))([0-9])*fail solve
  921    |  4     ((((■)*(\,)?)([asce::p])?)(((■){■}m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  922    |  4     ((((■)*(\,)?)([asce::p])?)((■m|■■)|(da)m))([0-9])*fail dot
  923    |  4     ((((■)*(\,)?)([asce::p])?)((■m|(■|■))|(da)m))([0-9])*fail solve
  924    |  4     ((((■)*(\,)?)([asce::p])?)((■m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  925    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(■■)m))([0-9])*fail dotstar or empty
  926    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(■a)■))([0-9])*fail dotstar or empty
  927    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(■a)m))(■)*fail dotstar or empty
  928    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(■a)m))([0-9]){■}fail dotstar or empty
  929    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(d■)■))([0-9])*fail dotstar or empty
  930    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(d■)m))(■)*fail dotstar or empty
  931    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(d■)m))([0-9]){■}fail dotstar or empty
  932    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)■))(■)*fail dotstar or empty
  933    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)■))([0-9]){■}fail dotstar or empty
  934    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)m))(■){■}fail dotstar or empty
  935    |  4     ((((■)*(\,)?)([asce::p])?)((■m|m)|(da)m))■fail dotstar or empty
  936    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  937    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  938    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  939    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))(■)*  unsatisfiable SAT formula       
  940    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  941    |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail dot
  942    |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*fail solve
  943    |  4     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  944    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu](■■)|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  945    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu](■|■)|■)|(da)m))([0-9])*fail solve
  946    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu](■){■}|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  947    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|■■)|(da)m))([0-9])*fail dot
  948    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|(■|■))|(da)m))([0-9])*fail solve
  949    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  950    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■■)m))([0-9])*fail dotstar or empty
  951    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)■))([0-9])*fail dotstar or empty
  952    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))(■)*fail dotstar or empty
  953    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(■a)m))([0-9]){■}fail dotstar or empty
  954    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)■))([0-9])*fail dotstar or empty
  955    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))(■)*fail dotstar or empty
  956    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(d■)m))([0-9]){■}fail dotstar or empty
  957    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))(■)*fail dotstar or empty
  958    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)■))([0-9]){■}fail dotstar or empty
  959    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))(■){■}fail dotstar or empty
  960    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]■|m)|(da)m))■fail dotstar or empty
  961    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■■)m))([0-9])*  unsatisfiable SAT formula       
  962    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)■))([0-9])*  unsatisfiable SAT formula       
  963    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))(■)*  unsatisfiable SAT formula       
  964    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9]){■}  unsatisfiable SAT formula       
  965    |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail dot
  966    |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*fail solve
  967    |  4     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(■a)m))([0-9])*  unsatisfiable SAT formula       
  968    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(■a)m))([0-9])*fail dot
  969    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(■a)m))([0-9])*fail solve
  970    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(■a)m))([0-9])*  unsatisfiable SAT formula       
  971    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|((■■)a)m))([0-9])*  unsatisfiable SAT formula       
  972    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|((■|■)a)m))([0-9])*fail solve
  973    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|((■){■}a)m))([0-9])*  unsatisfiable SAT formula       
  974    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)■))([0-9])*  unsatisfiable SAT formula       
  975    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))(■)*  unsatisfiable SAT formula       
  976    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9]){■}  unsatisfiable SAT formula       
  977    |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail dot
  978    |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*fail solve
  979    |  4     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d■)m))([0-9])*  unsatisfiable SAT formula       
  980    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(d■)m))([0-9])*fail dot
  981    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(d■)m))([0-9])*fail solve
  982    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(d■)m))([0-9])*  unsatisfiable SAT formula       
  983    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d(■■))m))([0-9])*  unsatisfiable SAT formula       
  984    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d(■|■))m))([0-9])*fail solve
  985    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(d(■){■})m))([0-9])*  unsatisfiable SAT formula       
  986    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))(■)*  unsatisfiable SAT formula       
  987    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9]){■}  unsatisfiable SAT formula       
  988    |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail dot
  989    |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*fail solve
  990    |  4     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)■))([0-9])*  unsatisfiable SAT formula       
  991    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)■))([0-9])*fail dot
  992    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)■))([0-9])*fail solve
  993    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)■))([0-9])*  unsatisfiable SAT formula       
  994    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)(■■)))([0-9])*  unsatisfiable SAT formula       
  995    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)(■|■)))([0-9])*fail solve
  996    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)(■){■}))([0-9])*  unsatisfiable SAT formula       
  997    |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■){■}  unsatisfiable SAT formula       
  998    |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  999    |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*fail solve
  1000   |  4     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  1001   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))(■)*fail dot
  1002   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))(■)*fail solve
  1003   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))(■)*  unsatisfiable SAT formula       
  1004   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))(■■)*  unsatisfiable SAT formula       
  1005   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))((■|■))*fail solve
  1006   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))((■){■})*get a solution: (((([c,0123456789])*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|[13m])|(da)m))(([26,]){3})*
add positive: m2
add negative: 1
  unsatisfiable SAT formula       
  1007   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))■fail dot
  1008   |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail dot
  1009   |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}fail solve
  1010   |  4     (((((■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  1011   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9]){■}fail dot
  1012   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9]){■}fail solve
  1013   |  4     ((((■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9]){■}  unsatisfiable SAT formula       
  1014   |  4     (((((■■)■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  1015   |  4     (((((■|■)■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  1016   |  4     (((((■){■}■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  1017   |  4     ((((■(■■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  1018   |  4     ((((■(■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  1019   |  4     ((((■(■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  1020   |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  1021   |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail dot
  1022   |  4     ((((■■)*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  1023   |  4     (((((■■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  1024   |  4     ((((((■|■)|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  1025   |  4     ((((((■){■}|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  1026   |  4     (((((■|■■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  1027   |  4     (((((■|(■|■)))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  1028   |  4     (((((■|(■){■}))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*  unsatisfiable SAT formula       
  1029   |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■■)|(da)m))([0-9])*fail dot
  1030   |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■|■))|(da)m))([0-9])*fail solve
  1031   |  4     (((((■|■))*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|(■){■})|(da)m))([0-9])*  unsatisfiable SAT formula       
  1032   |  4     (((((■■){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail dot
  1033   |  4     ((((((■|■)){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*fail solve
  1034   |  4     ((((((■){■}){■})*(\,)?)([asce::p])?)(([AcCdDhHkKmMnNu]m|■)|(da)m))([0-9])*
10.17355489730835
timeout