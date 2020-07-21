
Given the regular expression:

  ((["'])(((.)*)?)\1|(([^"'])+))

That that should match the strings:


And reject the strings:

  ✗ (0:33)   're in an optional part that don'
  ✗ (33:66)  t match, but what about when they

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■((.)*)?)\1|([^"'])+) fail dotstar or empty
  2      |  1     ((["']((■)*)?)\1|([^"'])+)fail dotstar or empty
  3      |  1     ((["']((.){■})?)\1|([^"'])+)fail dotstar or empty
  4      |  1     ((["']((.)*){■})\1|([^"'])+)fail dotstar or empty
  5      |  1     ((["']((.)*)?)■|([^"'])+)fail dotstar or empty
  6      |  1     ((["']((.)*)?)\1|(■)+)  get a solution: ((["']((.)*)?)\1|([∅])+)
add positive: god
add negative: "1
  7      |  1     ((["']((.)*)?)\1|([^"']){■})  8      |  2     ((■((■)*)?)\1|([^"'])+) fail dotstar or empty
  9      |  2     ((■((.){■})?)\1|([^"'])+)fail dotstar or empty
  10     |  2     ((■((.)*){■})\1|([^"'])+)fail dotstar or empty
  11     |  2     ((■((.)*)?)■|([^"'])+)  fail dotstar or empty
  12     |  2     ((■((.)*)?)\1|(■)+)     get a solution: (([∅]((.)*)?)\1|([dgo])+)
add positive: adam&eve
add negative: d
  unsatisfiable SAT formula       
  13     |  2     ((■((.)*)?)\1|([^"']){■})get a solution: (([∅]((.)*)?)\1|([^"']){2,8})
add negative: g 
get a solution: (([∅]((.)*)?)\1|([^"']){3,8})
add negative: go 
  unsatisfiable SAT formula       
  14     |  2     ((["']((■){■})?)\1|([^"'])+)fail dotstar or empty
  15     |  2     ((["']((■)*){■})\1|([^"'])+)fail dotstar or empty
  16     |  2     ((["']((■)*)?)■|([^"'])+)fail dotstar or empty
  17     |  2     ((["']((■)*)?)\1|(■)+)    18     |  2     ((["']((■)*)?)\1|([^"']){■})  19     |  2     ((["']((.){■}){■})\1|([^"'])+)fail dotstar or empty
  20     |  2     ((["']((.){■})?)■|([^"'])+)fail dotstar or empty
  21     |  2     ((["']((.){■})?)\1|(■)+)  22     |  2     ((["']((.){■})?)\1|([^"']){■})  23     |  2     ((["'](■)?)\1|([^"'])+) fail dotstar or empty
  24     |  2     ((["']((.)*){■})■|([^"'])+)fail dotstar or empty
  25     |  2     ((["']((.)*){■})\1|(■)+)  unsatisfiable SAT formula       
  26     |  2     ((["']((.)*){■})\1|([^"']){■})  unsatisfiable SAT formula       
  27     |  2     ((["']■)\1|([^"'])+)    fail dotstar or empty
  28     |  2     ((["']((.)*)?)■|(■)+)     unsatisfiable SAT formula       
  29     |  2     ((["']((.)*)?)■|([^"']){■})  unsatisfiable SAT formula       
  30     |  2     ((["']((.)*)?)\1|(■){■})  31     |  2     ((["']((.)*)?)\1|(■■)+) fail dot
  32     |  2     ((["']((.)*)?)\1|((■|■))+)fail solve
  33     |  2     ((["']((.)*)?)\1|((■){■})+)  34     |  3     ((■((■){■})?)\1|([^"'])+)fail dotstar or empty
  35     |  3     ((■((■)*){■})\1|([^"'])+)fail dotstar or empty
  36     |  3     ((■((■)*)?)■|([^"'])+)  fail dotstar or empty
  37     |  3     ((■((■)*)?)\1|(■)+)       unsatisfiable SAT formula       
  38     |  3     ((■((■)*)?)\1|([^"']){■})  unsatisfiable SAT formula       
  39     |  3     ((■((.){■}){■})\1|([^"'])+)fail dotstar or empty
  40     |  3     ((■((.){■})?)■|([^"'])+)fail dotstar or empty
  41     |  3     ((■((.){■})?)\1|(■)+)     unsatisfiable SAT formula       
  42     |  3     ((■((.){■})?)\1|([^"']){■})  unsatisfiable SAT formula       
  43     |  3     ((■(■)?)\1|([^"'])+)    fail dotstar or empty
  44     |  3     ((■((.)*){■})■|([^"'])+)fail dotstar or empty
  45     |  3     ((■((.)*){■})\1|(■)+)     unsatisfiable SAT formula       
  46     |  3     ((■((.)*){■})\1|([^"']){■})  unsatisfiable SAT formula       
  47     |  3     ((■■)\1|([^"'])+)       fail dotstar or empty
  48     |  3     ((■((.)*)?)■|(■)+)      get a solution: (([ag]((.)*)?)[de]|([∅])+)
add negative: gd
  unsatisfiable SAT formula       
  49     |  3     ((■((.)*)?)■|([^"']){■})  unsatisfiable SAT formula       
  50     |  3     ((■((.)*)?)\1|(■){■})   get a solution: (([∅]((.)*)?)\1|([ade&vgmo]){3,8})
add negative: ada
  unsatisfiable SAT formula       
  51     |  3     (((■■)((.)*)?)\1|(■)+)    unsatisfiable SAT formula       
  52     |  3     (((■|■)((.)*)?)\1|(■)+) fail solve
  53     |  3     (((■){■}((.)*)?)\1|(■)+)  unsatisfiable SAT formula       
  54     |  3     ((■((.)*)?)\1|(■■)+)    fail dot
  55     |  3     ((■((.)*)?)\1|((■|■))+) fail solve
  56     |  3     ((■((.)*)?)\1|((■){■})+)
20.028414964675903
timeout