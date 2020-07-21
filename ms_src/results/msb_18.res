
Given the regular expression:

  (\()?(\d){3}(\))?(\-|\s)(\d){3}\-(\d){4}

That that should match the strings:


And reject the strings:

  ✗ (0:13)   (217-244-2424

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■)?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}get a solution: (((((([∅])?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}
add positive: (000)-000-0000
add negative: 000)-000-0000
  2      |  1     ((((((\(){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  3      |  1     ((((((\()?(■){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  4      |  1     ((((((\()?(\d){■})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  5      |  1     ((((((\()?(\d){3})(■)?)(\-|\s))(\d){3})\-)(\d){4}fail dotstar or empty
  6      |  1     ((((((\()?(\d){3})(\)){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  7      |  1     ((((((\()?(\d){3})(\))?)(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  8      |  1     ((((((\()?(\d){3})(\))?)(\-|■))(\d){3})\-)(\d){4}fail dotstar or empty
  9      |  1     ((((((\()?(\d){3})(\))?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  10     |  1     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  11     |  1     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  12     |  1     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  13     |  1     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  14     |  2     ((((((■){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  15     |  2     ((((((■)?(■){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  16     |  2     ((((((■)?(\d){■})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  17     |  2     ((((((■)?(\d){3})(■)?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  18     |  2     ((((((■)?(\d){3})(\)){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  19     |  2     ((((((■)?(\d){3})(\))?)(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  20     |  2     ((((((■)?(\d){3})(\))?)(\-|■))(\d){3})\-)(\d){4}fail dotstar or empty
  21     |  2     ((((((■)?(\d){3})(\))?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  22     |  2     ((((((■)?(\d){3})(\))?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  23     |  2     ((((((■)?(\d){3})(\))?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  24     |  2     ((((((■)?(\d){3})(\))?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  25     |  2     ((((((■)?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  26     |  2     ((((((■■)?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail dot
  27     |  2     (((((((■|■))?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail solve
  28     |  2     (((((((■){■})?(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  29     |  2     ((((((\(){■}(■){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}get a solution: ((((((\(){1}(0){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}
add positive: 000-000-0000
add negative: (000	000-0000
  unsatisfiable SAT formula       
  30     |  2     ((((((\(){■}(\d){■})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  31     |  2     ((((((\(){■}(\d){3})(■)?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  32     |  2     ((((((\(){■}(\d){3})(\)){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  33     |  2     ((((((\(){■}(\d){3})(\))?)(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  34     |  2     ((((((\(){■}(\d){3})(\))?)(\-|■))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  35     |  2     ((((((\(){■}(\d){3})(\))?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  36     |  2     ((((((\(){■}(\d){3})(\))?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  37     |  2     ((((((\(){■}(\d){3})(\))?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  38     |  2     ((((((\(){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  39     |  2     ((((((\(){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  40     |  2     (((((■(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail dot
  41     |  2     ((((((\()?(■){■})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  42     |  2     ((((((\()?(■){3})(■)?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  43     |  2     ((((((\()?(■){3})(\)){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  44     |  2     ((((((\()?(■){3})(\))?)(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  45     |  2     ((((((\()?(■){3})(\))?)(\-|■))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  46     |  2     ((((((\()?(■){3})(\))?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  47     |  2     ((((((\()?(■){3})(\))?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  48     |  2     ((((((\()?(■){3})(\))?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  49     |  2     ((((((\()?(■){3})(\))?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  50     |  2     ((((((\()?(■){3})(\))?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  51     |  2     ((((((\()?■)(\))?)(\-|\s))(\d){3})\-)(\d){4}fail dot
  52     |  2     ((((((\()?(■■){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail dot
  53     |  2     ((((((\()?((■|■)){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail solve
  54     |  2     ((((((\()?((■){■}){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  55     |  2     ((((((\()?(\d){■})(■)?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  56     |  2     ((((((\()?(\d){■})(\)){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  57     |  2     ((((((\()?(\d){■})(\))?)(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  58     |  2     ((((((\()?(\d){■})(\))?)(\-|■))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  59     |  2     ((((((\()?(\d){■})(\))?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  60     |  2     ((((((\()?(\d){■})(\))?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  61     |  2     ((((((\()?(\d){■})(\))?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  62     |  2     ((((((\()?(\d){■})(\))?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  63     |  2     ((((((\()?(\d){■})(\))?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  64     |  2     ((((((\()?(\d){3})(■){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  65     |  2     ((((((\()?(\d){3})(■)?)(■|\s))(\d){3})\-)(\d){4}fail dotstar or empty
  66     |  2     ((((((\()?(\d){3})(■)?)(\-|■))(\d){3})\-)(\d){4}fail dotstar or empty
  67     |  2     ((((((\()?(\d){3})(■)?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  68     |  2     ((((((\()?(\d){3})(■)?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  69     |  2     ((((((\()?(\d){3})(■)?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  70     |  2     ((((((\()?(\d){3})(■)?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  71     |  2     ((((((\()?(\d){3})(■)?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  72     |  2     ((((((\()?(\d){3})(\)){■})(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  73     |  2     ((((((\()?(\d){3})(\)){■})(\-|■))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  74     |  2     ((((((\()?(\d){3})(\)){■})(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  75     |  2     ((((((\()?(\d){3})(\)){■})(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  76     |  2     ((((((\()?(\d){3})(\)){■})(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  77     |  2     ((((((\()?(\d){3})(\)){■})(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  78     |  2     ((((((\()?(\d){3})(\)){■})(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  79     |  2     ((((((\()?(\d){3})■)(\-|\s))(\d){3})\-)(\d){4}fail dot
  80     |  2     ((((((\()?(\d){3})(\))?)(■|■))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  81     |  2     ((((((\()?(\d){3})(\))?)(■|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  82     |  2     ((((((\()?(\d){3})(\))?)(■|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  83     |  2     ((((((\()?(\d){3})(\))?)(■|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  84     |  2     ((((((\()?(\d){3})(\))?)(■|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  85     |  2     ((((((\()?(\d){3})(\))?)(■|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  86     |  2     ((((((\()?(\d){3})(\))?)(■■|\s))(\d){3})\-)(\d){4}fail dot
  87     |  2     ((((((\()?(\d){3})(\))?)((■|■)|\s))(\d){3})\-)(\d){4}fail solve
  88     |  2     ((((((\()?(\d){3})(\))?)((■){■}|\s))(\d){3})\-)(\d){4}  89     |  2     ((((((\()?(\d){3})(\))?)(\-|■))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  90     |  2     ((((((\()?(\d){3})(\))?)(\-|■))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  91     |  2     ((((((\()?(\d){3})(\))?)(\-|■))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  92     |  2     ((((((\()?(\d){3})(\))?)(\-|■))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  93     |  2     ((((((\()?(\d){3})(\))?)(\-|■))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  94     |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(■){■})\-)(\d){4}  unsatisfiable SAT formula       
  95     |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(■){3})■)(\d){4}  unsatisfiable SAT formula       
  96     |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(■){3})\-)(■){4}  unsatisfiable SAT formula       
  97     |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(■){3})\-)(\d){■}  unsatisfiable SAT formula       
  98     |  2     ((((((\()?(\d){3})(\))?)(\-|\s))■)\-)(\d){4}fail dot
  99     |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(■■){3})\-)(\d){4}fail dot
  100    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))((■|■)){3})\-)(\d){4}fail solve
  101    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))((■){■}){3})\-)(\d){4}  unsatisfiable SAT formula       
  102    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){■})■)(\d){4}  unsatisfiable SAT formula       
  103    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){■})\-)(■){4}  unsatisfiable SAT formula       
  104    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){■})\-)(\d){■}  unsatisfiable SAT formula       
  105    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})■)(■){4}  unsatisfiable SAT formula       
  106    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})■)(\d){■}  unsatisfiable SAT formula       
  107    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})(■■))(\d){4}fail dot
  108    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})(■|■))(\d){4}fail solve
  109    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})(■){■})(\d){4}  unsatisfiable SAT formula       
  110    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)(■){■}  unsatisfiable SAT formula       
  111    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)■fail dot
  112    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)(■■){4}fail dot
  113    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)((■|■)){4}fail solve
  114    |  2     ((((((\()?(\d){3})(\))?)(\-|\s))(\d){3})\-)((■){■}){4}  unsatisfiable SAT formula       
  115    |  3     ((((((■){■}(■){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  116    |  3     ((((((■){■}(\d){■})(\))?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  117    |  3     ((((((■){■}(\d){3})(■)?)(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  118    |  3     ((((((■){■}(\d){3})(\)){■})(\-|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  119    |  3     ((((((■){■}(\d){3})(\))?)(■|\s))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  120    |  3     ((((((■){■}(\d){3})(\))?)(\-|■))(\d){3})\-)(\d){4}  unsatisfiable SAT formula       
  121    |  3     ((((((■){■}(\d){3})(\))?)(\-|\s))(■){3})\-)(\d){4}  unsatisfiable SAT formula       
  122    |  3     ((((((■){■}(\d){3})(\))?)(\-|\s))(\d){■})\-)(\d){4}  unsatisfiable SAT formula       
  123    |  3     ((((((■){■}(\d){3})(\))?)(\-|\s))(\d){3})■)(\d){4}  unsatisfiable SAT formula       
  124    |  3     ((((((■){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(■){4}  unsatisfiable SAT formula       
  125    |  3     ((((((■){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){■}  unsatisfiable SAT formula       
  126    |  3     ((((((■■){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail dot
  127    |  3     (((((((■|■)){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}fail solve
  128    |  3     (((((((■){■}){■}(\d){3})(\))?)(\-|\s))(\d){3})\-)(\d){4}
2.0291671752929688
timeout