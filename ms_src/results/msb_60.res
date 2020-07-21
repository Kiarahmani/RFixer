
Given the regular expression:

  [A-Z]([a-z])*((\\s[a-zA-Z])?([a-z])*)*

That that should match the strings:

  ✓ (0:7)    To Make

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■([a-z])*)(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  2      |  1     ([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z])*)*get a solution: ([A-Z]([Mo ])*)(((\\s)[a-zA-Z])?([a-z])*)*
add positive: A0
add negative: A o
  unsatisfiable SAT formula       
  3      |  1     ([A-Z]([a-z]){■})(((\\s)[a-zA-Z])?([a-z])*)*fail dotstar or empty
  4      |  1     ([A-Z]([a-z])*)(((■s)[a-zA-Z])?([a-z])*)*fail dotstar or empty
  5      |  1     ([A-Z]([a-z])*)(((\\■)[a-zA-Z])?([a-z])*)*fail dotstar or empty
  6      |  1     ([A-Z]([a-z])*)(((\\s)■)?([a-z])*)*fail dotstar or empty
  7      |  1     ([A-Z]([a-z])*)(((\\s)[a-zA-Z]){■}([a-z])*)*fail dotstar or empty
  8      |  1     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?(■)*)*get a solution: ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?([aekM0 ])*)*
add positive: A1
add negative: A 0
  unsatisfiable SAT formula       
  9      |  1     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?([a-z]){■})*fail dotstar or empty
  10     |  1     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?([a-z])*){■}fail dotstar or empty
  11     |  2     (■(■)*)(((\\s)[a-zA-Z])?([a-z])*)*  unsatisfiable SAT formula       
  12     |  2     (■([a-z]){■})(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  13     |  2     (■([a-z])*)(((■s)[a-zA-Z])?([a-z])*)*fail dot
  14     |  2     (■([a-z])*)(((\\■)[a-zA-Z])?([a-z])*)*fail dot
  15     |  2     (■([a-z])*)(((\\s)■)?([a-z])*)*fail dot
  16     |  2     (■([a-z])*)(((\\s)[a-zA-Z]){■}([a-z])*)*fail dot
  17     |  2     (■([a-z])*)(((\\s)[a-zA-Z])?(■)*)*  unsatisfiable SAT formula       
  18     |  2     (■([a-z])*)(((\\s)[a-zA-Z])?([a-z]){■})*fail dot
  19     |  2     (■([a-z])*)(((\\s)[a-zA-Z])?([a-z])*){■}fail dot
  20     |  2     ((■■)([a-z])*)(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  21     |  2     ((■|■)([a-z])*)(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  22     |  2     ((■){■}([a-z])*)(((\\s)[a-zA-Z])?([a-z])*)*  unsatisfiable SAT formula       
  23     |  2     ([A-Z](■){■})(((\\s)[a-zA-Z])?([a-z])*)*  unsatisfiable SAT formula       
  24     |  2     ([A-Z](■)*)(((■s)[a-zA-Z])?([a-z])*)*  unsatisfiable SAT formula       
  25     |  2     ([A-Z](■)*)(((\\■)[a-zA-Z])?([a-z])*)*  unsatisfiable SAT formula       
  26     |  2     ([A-Z](■)*)(((\\s)■)?([a-z])*)*  unsatisfiable SAT formula       
  27     |  2     ([A-Z](■)*)(((\\s)[a-zA-Z]){■}([a-z])*)*  unsatisfiable SAT formula       
  28     |  2     ([A-Z](■)*)(((\\s)[a-zA-Z])?(■)*)*get a solution: ([A-Z]([1o0])*)(((\\s)[a-zA-Z])?([aekM ])*)*
add positive: A2
add negative: A a
  unsatisfiable SAT formula       
  29     |  2     ([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z]){■})*  unsatisfiable SAT formula       
  30     |  2     ([A-Z](■)*)(((\\s)[a-zA-Z])?([a-z])*){■}  unsatisfiable SAT formula       
  31     |  2     ([A-Z](■■)*)(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  32     |  2     ([A-Z]((■|■))*)(((\\s)[a-zA-Z])?([a-z])*)*fail solve
  33     |  2     ([A-Z]((■){■})*)(((\\s)[a-zA-Z])?([a-z])*)*  unsatisfiable SAT formula       
  34     |  2     ([A-Z]([a-z]){■})(((■s)[a-zA-Z])?([a-z])*)*fail dotstar or empty
  35     |  2     ([A-Z]([a-z]){■})(((\\■)[a-zA-Z])?([a-z])*)*fail dotstar or empty
  36     |  2     ([A-Z]([a-z]){■})(((\\s)■)?([a-z])*)*fail dotstar or empty
  37     |  2     ([A-Z]([a-z]){■})(((\\s)[a-zA-Z]){■}([a-z])*)*fail dotstar or empty
  38     |  2     ([A-Z]([a-z]){■})(((\\s)[a-zA-Z])?(■)*)*  unsatisfiable SAT formula       
  39     |  2     ([A-Z]([a-z]){■})(((\\s)[a-zA-Z])?([a-z]){■})*fail dotstar or empty
  40     |  2     ([A-Z]([a-z]){■})(((\\s)[a-zA-Z])?([a-z])*){■}fail dotstar or empty
  41     |  2     ([A-Z]■)(((\\s)[a-zA-Z])?([a-z])*)*fail dot
  42     |  2     ([A-Z]([a-z])*)(((■■)[a-zA-Z])?([a-z])*)*fail dotstar or empty
  43     |  2     ([A-Z]([a-z])*)(((■s)■)?([a-z])*)*fail dotstar or empty
  44     |  2     ([A-Z]([a-z])*)(((■s)[a-zA-Z]){■}([a-z])*)*fail dotstar or empty
  45     |  2     ([A-Z]([a-z])*)(((■s)[a-zA-Z])?(■)*)*  unsatisfiable SAT formula       
  46     |  2     ([A-Z]([a-z])*)(((■s)[a-zA-Z])?([a-z]){■})*fail dotstar or empty
  47     |  2     ([A-Z]([a-z])*)(((■s)[a-zA-Z])?([a-z])*){■}fail dotstar or empty
  48     |  2     ([A-Z]([a-z])*)(((\\■)■)?([a-z])*)*fail dotstar or empty
  49     |  2     ([A-Z]([a-z])*)(((\\■)[a-zA-Z]){■}([a-z])*)*fail dotstar or empty
  50     |  2     ([A-Z]([a-z])*)(((\\■)[a-zA-Z])?(■)*)*  unsatisfiable SAT formula       
  51     |  2     ([A-Z]([a-z])*)(((\\■)[a-zA-Z])?([a-z]){■})*fail dotstar or empty
  52     |  2     ([A-Z]([a-z])*)(((\\■)[a-zA-Z])?([a-z])*){■}fail dotstar or empty
  53     |  2     ([A-Z]([a-z])*)(((\\s)■){■}([a-z])*)*fail dotstar or empty
  54     |  2     ([A-Z]([a-z])*)(((\\s)■)?(■)*)*  unsatisfiable SAT formula       
  55     |  2     ([A-Z]([a-z])*)(((\\s)■)?([a-z]){■})*fail dotstar or empty
  56     |  2     ([A-Z]([a-z])*)(((\\s)■)?([a-z])*){■}fail dotstar or empty
  57     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z]){■}(■)*)*  unsatisfiable SAT formula       
  58     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z]){■}([a-z]){■})*fail dotstar or empty
  59     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z]){■}([a-z])*){■}fail dotstar or empty
  60     |  2     ([A-Z]([a-z])*)(■([a-z])*)*  unsatisfiable SAT formula       
  61     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?(■){■})*  unsatisfiable SAT formula       
  62     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?(■)*){■}  unsatisfiable SAT formula       
  63     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?(■■)*)*fail dot
  64     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?((■|■))*)*fail solve
  65     |  2     ([A-Z]([a-z])*)(((\\s)[a-zA-Z])?((■){■})*)*
2.0551648139953613
timeout