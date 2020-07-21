
Given the regular expression:

  (\d)*(\,)?([a\]sce::\[p])?(([cCdDhHkKmMn]m|m)|dam)(\d)*

That that should match the strings:

  ✓ (0:5)    1,26m
  ✓ (5:10)   100cm

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*get a solution: (((([126,0])*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*
add positive: 3m
add negative: ,,m
  unsatisfiable SAT formula       
  2      |  1     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dotstar or empty
  3      |  1     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  4      |  1     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dotstar or empty
  5      |  1     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  6      |  1     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dotstar or empty
  7      |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|m)|(da)m))(\d)*fail dot
  8      |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(\d)*fail dotstar or empty
  9      |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(\d)*fail dot
  10     |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*fail dotstar or empty
  11     |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*fail dotstar or empty
  12     |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)■))(\d)*fail dotstar or empty
  13     |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(■)*fail dotstar or empty
  14     |  1     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}fail dotstar or empty
  15     |  2     ((((■){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  16     |  2     ((((■)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  17     |  2     ((((■)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  18     |  2     ((((■)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  19     |  2     ((((■)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  20     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)((■m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  21     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  22     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(\d)*  unsatisfiable SAT formula       
  23     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*  unsatisfiable SAT formula       
  24     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*  unsatisfiable SAT formula       
  25     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)■))(\d)*  unsatisfiable SAT formula       
  26     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(■)*  unsatisfiable SAT formula       
  27     |  2     ((((■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}  unsatisfiable SAT formula       
  28     |  2     ((((■■)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  29     |  2     (((((■|■))*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail solve
  30     |  2     (((((■){■})*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  31     |  2     ((((\d){■}(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  32     |  2     ((((\d){■}(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dotstar or empty
  33     |  2     ((((\d){■}(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  34     |  2     ((((\d){■}(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dotstar or empty
  35     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)((■m|m)|(da)m))(\d)*fail dot
  36     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(\d)*fail dotstar or empty
  37     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(\d)*fail dot
  38     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*fail dotstar or empty
  39     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*fail dotstar or empty
  40     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)■))(\d)*fail dotstar or empty
  41     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(■)*fail dotstar or empty
  42     |  2     ((((\d){■}(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}fail dotstar or empty
  43     |  2     (((■(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  44     |  2     ((((\d)*(■){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  45     |  2     ((((\d)*(■)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  46     |  2     ((((\d)*(■)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  47     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)((■m|m)|(da)m))(\d)*fail dot
  48     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(\d)*fail dot
  49     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(\d)*fail dot
  50     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*fail dot
  51     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*fail dot
  52     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)■))(\d)*fail dot
  53     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(■)*fail dot
  54     |  2     ((((\d)*(■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}fail dot
  55     |  2     ((((\d)*(■■)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  56     |  2     ((((\d)*((■|■))?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  57     |  2     ((((\d)*((■){■})?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*get a solution: ((((\d)*(([126,]){4})?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*
add positive: ,m
add negative: ,11,m
  unsatisfiable SAT formula       
  58     |  2     ((((\d)*(\,){■})(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  59     |  2     ((((\d)*(\,){■})([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dotstar or empty
  60     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)((■m|m)|(da)m))(\d)*fail dot
  61     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(\d)*fail dotstar or empty
  62     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(\d)*fail dot
  63     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*fail dotstar or empty
  64     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*fail dotstar or empty
  65     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)■))(\d)*fail dotstar or empty
  66     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(■)*fail dotstar or empty
  67     |  2     ((((\d)*(\,){■})([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}fail dotstar or empty
  68     |  2     ((((\d)*■)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  69     |  2     ((((\d)*(\,)?)(■){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*get a solution: ((((\d)*(\,)?)([2c360]){0,3})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*
add positive: :m
add negative: ccmm
get a solution: ((((\d)*(\,)?)([26:0]){0,2})(([cCdDhHkKmMn]m|m)|(da)m))(\d)*
add positive: [m
add negative: ::m
  unsatisfiable SAT formula       
  70     |  2     ((((\d)*(\,)?)(■)?)((■m|m)|(da)m))(\d)*get a solution: ((((\d)*(\,)?)([2c])?)(([6:[]m|m)|(da)m))(\d)*
add positive: ]m
add negative: c:m
get a solution: ((((\d)*(\,)?)([2c:])?)(([6[]]m|m)|(da)m))(\d)*
add positive: am
add negative: :[m
get a solution: ((((\d)*(\,)?)([2c:[])?)(([a6]]m|m)|(da)m))(\d)*
add positive: em
add negative: c]m
get a solution: ((((\d)*(\,)?)(2)?)(([ace6:[]]m|m)|(da)m))(\d)*
add positive: pm
add negative: ,2:m
get a solution: ((((\d)*(\,)?)([2c:[]])?)(([ae6p]m|m)|(da)m))(\d)*
add positive: sm
add negative: cam
get a solution: ((((\d)*(\,)?)([2:[])?)(([acse6]p]m|m)|(da)m))(\d)*
add positive: mm
add negative: :]m
get a solution: ((((\d)*(\,)?)([2:[]])?)(([acse6mp]m|m)|(da)m))(\d)*
add positive: dm
add negative: :am
get a solution: ((((\d)*(\,)?)([a2c:[]])?)(([sde6mp]m|m)|(da)m))(\d)*
add positive: Cm
add negative: :em
get a solution: ((((\d)*(\,)?)([a2ce:[]])?)(([Csd6mp]m|m)|(da)m))(\d)*
add positive: Dm
add negative: cpm
get a solution: ((((\d)*(\,)?)([a2ce:[]p])?)(([CsdD6m]m|m)|(da)m))(\d)*
add positive: Hm
add negative: csm
get a solution: ((((\d)*(\,)?)([a2cse:[]p])?)(([CdD6Hm]m|m)|(da)m))(\d)*
add positive: Km
get a solution: ((((\d)*(\,)?)([a2e:[]])?)(([CcsdD6HKmp]m|m)|(da)m))(\d)*
add positive: Mm
add negative: :pm
get a solution: ((((\d)*(\,)?)([a2cse:[]p])?)(([CdD6HKMm]m|m)|(da)m))(\d)*
add positive: hm
get a solution: ((((\d)*(\,)?)([a2e:[]p])?)(([CcsdD6HhKMm]m|m)|(da)m))(\d)*
add positive: km
add negative: :sm
get a solution: ((((\d)*(\,)?)([a2cse:[]p])?)(([CdD6HhkKMm]m|m)|(da)m))(\d)*
add positive: nm
get a solution: ((((\d)*(\,)?)([a2cse:[]p])?)(([CdD6HhkKMmn]m|m)|(da)m))(\d)*
add positive: ,0m
get a solution: ((((\d)*(\,)?)([a2se:[]p0])?)(([CcdDHhkKMmn6]m|m)|(da)m))(\d)*
add positive: ,1m
get a solution: ((((\d)*(\,)?)([a2se:[]p0])?)(([CcdDHhkKMmn16]m|m)|(da)m))(\d)*
add positive: ,3m
get a solution: ((((\d)*(\,)?)([a2se:[]p0])?)(([CcdDHhkKMmn136]m|m)|(da)m))(\d)*
add positive: ,4m
get a solution: ((((\d)*(\,)?)([a2se:[]p0])?)(([CcdDHhkKMmn1346]m|m)|(da)m))(\d)*
add positive: ,5m
get a solution: ((((\d)*(\,)?)([a2se:[]0p])?)(([cCDdhHkKmMn13456]m|m)|(da)m))(\d)*
add positive: ,7m
get a solution: ((((\d)*(\,)?)([a2se:[]p])?)(([cCDdhHkKmMn0134567]m|m)|(da)m))(\d)*
add positive: ,8m
get a solution: ((((\d)*(\,)?)([a2se:[]0p])?)(([cCDdhHkKmMn1345678]m|m)|(da)m))(\d)*
add positive: ,9m
get a solution: ((((\d)*(\,)?)([a2se:[]0p])?)(([cCDdhHkKmMn13456789]m|m)|(da)m))(\d)*
add positive: :0m
get a solution: ((((\d)*(\,)?)([1a2se:[]p])?)(([cCDdhHkKmMn03456789]m|m)|(da)m))(\d)*
add positive: :1m
get a solution: ((((\d)*(\,)?)([a2se:[]p])?)(([cCDdhHkKmMn013456789]m|m)|(da)m))(\d)*
add positive: :2m
get a solution: ((((\d)*(\,)?)([a2se:[]p])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: cCm
get a solution: ((((\d)*(\,)?)([a2cs3e:[]p])?)(([CDdhHkKmMn012456789]m|m)|(da)m))(\d)*
add positive: :cm
get a solution: ((((\d)*(\,)?)([a2cs3e:[]p])?)(([cCDdhHkKmMn012456789]m|m)|(da)m))(\d)*
add positive: :3m
get a solution: ((((\d)*(\,)?)([a2cs4e:[]p])?)(([cCDdhHkKmMn012356789]m|m)|(da)m))(\d)*
add positive: :4m
get a solution: ((((\d)*(\,)?)([a2cse5:[]p])?)(([cCDdhHkKmMn012346789]m|m)|(da)m))(\d)*
add positive: :5m
get a solution: ((((\d)*(\,)?)([a2cse7:[]p])?)(([cCDdhHkKmMn012345689]m|m)|(da)m))(\d)*
add positive: :7m
get a solution: ((((\d)*(\,)?)([a2cse8:[]p])?)(([cCDdhHkKmMn012345679]m|m)|(da)m))(\d)*
add positive: :8m
get a solution: ((((\d)*(\,)?)([a2cse9:[]p])?)(([cCDdhHkKmMn012345678]m|m)|(da)m))(\d)*
add positive: :9m
get a solution: ((((\d)*(\,)?)([a2csDe:[]p])?)(([cCdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: cDm
add negative: D0m
get a solution: ((((\d)*(\,)?)([a2cseH:[]p])?)(([cCDdhkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: cHm
add negative: Hmm
get a solution: ((((\d)*(\,)?)([a2cse:K[]p])?)(([cCDdhHkmMn0123456789]m|m)|(da)m))(\d)*
add positive: :Km
add negative: Kmm
get a solution: ((((\d)*(\,)?)([a2cse:[]Mp])?)(([cCDdhHkKmn0123456789]m|m)|(da)m))(\d)*
add positive: cMm
add negative: M0m
get a solution: ((((\d)*(\,)?)([a2csde:[]p])?)(([cCDhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: cdm
add negative: d0m
get a solution: ((((\d)*(\,)?)([a2cseh:[]p])?)(([cCDdHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: :hm
add negative: h0m
get a solution: ((((\d)*(\,)?)([a2cse:k[]p])?)(([cCDdhHKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ckm
add negative: k0m
get a solution: ((((\d)*(\,)?)([a2cse:[]mp])?)(([cCDdhHkKMn0123456789]m|m)|(da)m))(\d)*
add positive: :mm
add negative: m0m
get a solution: ((((\d)*(\,)?)([a2cse:[]p])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,0Cm
get a solution: ((((\d)*(\,)?)([a2cse:[]0p])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,1Cm
get a solution: ((((\d)*(\,)?)([1a2cse:[]0p])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,3Cm
get a solution: ((((\d)*(\,)?)([ace0p12s3:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,4mm
get a solution: ((((\d)*(\,)?)([ace0p12s34:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,5mm
get a solution: ((((\d)*(\,)?)([ace0p12s345:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,6mm
get a solution: ((((\d)*(\,)?)([ace0p12s3456:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,7mm
get a solution: ((((\d)*(\,)?)([ace0p12s34567:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,8mm
get a solution: ((((\d)*(\,)?)([ace0p12s345678:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: ,9mm
get a solution: ((((\d)*(\,)?)([ace0p12s3456789:[]])?)(([cCDdhHkKmMn0123456789]m|m)|(da)m))(\d)*
add positive: c0Cm
  71     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]■|m)|(da)m))(\d)*fail dot
  72     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|■)|(da)m))(\d)*fail dot
  73     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*fail dot
  74     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*fail dot
  75     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)■))(\d)*fail dot
  76     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(■)*fail dot
  77     |  2     ((((\d)*(\,)?)(■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}fail dot
  78     |  2     ((((\d)*(\,)?)(■■)?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  79     |  2     ((((\d)*(\,)?)((■|■))?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  80     |  2     ((((\d)*(\,)?)((■){■})?)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  81     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})((■m|m)|(da)m))(\d)*fail dot
  82     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]■|m)|(da)m))(\d)*fail dotstar or empty
  83     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|■)|(da)m))(\d)*fail dot
  84     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(■a)m))(\d)*fail dotstar or empty
  85     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(d■)m))(\d)*fail dotstar or empty
  86     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)■))(\d)*fail dotstar or empty
  87     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(■)*fail dotstar or empty
  88     |  2     ((((\d)*(\,)?)([a\]sce::\[p]){■})(([cCdDhHkKmMn]m|m)|(da)m))(\d){■}fail dotstar or empty
  89     |  2     ((((\d)*(\,)?)■)(([cCdDhHkKmMn]m|m)|(da)m))(\d)*fail dot
  90     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■■|m)|(da)m))(\d)*fail dot
  91     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|■)|(da)m))(\d)*fail dot
  92     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|m)|(■a)m))(\d)*fail dot
  93     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|m)|(d■)m))(\d)*fail dot
  94     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|m)|(da)■))(\d)*fail dot
  95     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|m)|(da)m))(■)*fail dot
  96     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)((■m|m)|(da)m))(\d){■}fail dot
  97     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(((■■)m|m)|(da)m))(\d)*fail dot
  98     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(((■|■)m|m)|(da)m))(\d)*fail dot
  99     |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(((■){■}m|m)|(da)m))(\d)*  unsatisfiable SAT formula       
  100    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|■)|(da)m))(\d)*fail dot
  101    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(■a)m))(\d)*fail dotstar or empty
  102    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(d■)m))(\d)*fail dotstar or empty
  103    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)■))(\d)*fail dotstar or empty
  104    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(■)*fail dotstar or empty
  105    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]■|m)|(da)m))(\d){■}fail dotstar or empty
  106    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(■a)m))(\d)*fail dot
  107    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(d■)m))(\d)*fail dot
  108    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)■))(\d)*fail dot
  109    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(■)*  unsatisfiable SAT formula       
  110    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■)|(da)m))(\d){■}fail dot
  111    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|■■)|(da)m))(\d)*fail dot
  112    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|(■|■))|(da)m))(\d)*fail dot
  113    |  2     ((((\d)*(\,)?)([a\]sce::\[p])?)(([cCdDhHkKmMn]m|(■){■})|(da)m))(\d)*
2.0275399684906006
timeout