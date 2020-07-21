
Given the regular expression:

  ([a]){1}([b]){1}[aaaaaaabbbbbbbcccccccc||||||||]([b]){1}([a]){1}

That that should match the strings:

  ✓ (0:6)    abccba
  ✓ (6:14)   abccabba

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  2      |  1     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  3      |  1     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  4      |  1     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  5      |  1     (((([a]){1}([b]){1})■)([b]){1})([a]){1}fail dot
  6      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  7      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  8      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  9      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  10     |  2     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  11     |  2     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  12     |  2     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  13     |  2     ((((■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  14     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  15     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  16     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  17     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  18     |  2     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  19     |  2     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  20     |  2     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  21     |  2     (((([a]){■}([b]){1})■)([b]){1})([a]){1}fail dot
  22     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  23     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  24     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  25     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  26     |  2     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}get a solution: (((([a]){1}([abc]){1,4})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}
add positive: abba
add negative: aaaba
  unsatisfiable SAT formula       
  27     |  2     (((([a]){1}(■){1})■)([b]){1})([a]){1}fail dot
  28     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  29     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dot
  30     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dot
  31     |  2     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dot
  32     |  2     (((([a]){1}■)[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  33     |  2     (((([a]){1}(■■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  34     |  2     (((([a]){1}((■|■)){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  35     |  2     (((([a]){1}((■){■}){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  unsatisfiable SAT formula       
  36     |  2     (((([a]){1}([b]){■})■)([b]){1})([a]){1}fail dot
  37     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  38     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  39     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  40     |  2     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  41     |  2     (((([a]){1}([b]){1})■)(■){1})([a]){1}fail dot
  42     |  2     (((([a]){1}([b]){1})■)([b]){■})([a]){1}fail dot
  43     |  2     (((([a]){1}([b]){1})■)([b]){1})(■){1}fail dot
  44     |  2     (((([a]){1}([b]){1})■)([b]){1})([a]){■}fail dot
  45     |  2     (((([a]){1}([b]){1})(■■))([b]){1})([a]){1}fail dot
  46     |  2     (((([a]){1}([b]){1})(■|■))([b]){1})([a]){1}fail dot
  47     |  2     (((([a]){1}([b]){1})(■){■})([b]){1})([a]){1}get a solution: (((([a]){1}([b]){1})([abc]){0,4})([b]){1})([a]){1}
add positive: abbbbbbba
add negative: abbaba
  unsatisfiable SAT formula       
  48     |  2     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){■})([a]){1}
1.0283401012420654
timeout