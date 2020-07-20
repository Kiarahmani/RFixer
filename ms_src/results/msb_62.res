
Given the regular expression:

  (\s)*(\d){8}(\s)*(\+)*(,(\s)*(\d){8}(,)*)?

That that should match the strings:

  ✓ (0:29)   12345678 , 12345678 ,12345678
  ✓ (29:55)  12345678,12345678,12345678
  ✓ (55:74)  12345678 , 12345678

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?get a solution: (((([12345678, ])*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?
add positive: 
add negative: 100000000
  2      |  1     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  3      |  1     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  4      |  1     ((((\s)*(\d){■})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  5      |  1     ((((\s)*(\d){8})(■)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  6      |  1     ((((\s)*(\d){8})(\s){■})(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  7      |  1     ((((\s)*(\d){8})(\s)*)(■)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  8      |  1     ((((\s)*(\d){8})(\s)*)(\+){■})(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  9      |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((■(\s)*)(\d){8})(,)*)?fail dotstar or empty
  10     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(■)*)(\d){8})(,)*)?fail dotstar or empty
  11     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(\s){■})(\d){8})(,)*)?fail dotstar or empty
  12     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(■){8})(,)*)?fail dotstar or empty
  13     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){■})(,)*)?fail dotstar or empty
  14     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(■)*)?fail dotstar or empty
  15     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,){■})?fail dotstar or empty
  16     |  1     ((((\s)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*){■}fail dotstar or empty
  17     |  2     ((((■){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  18     |  2     ((((■)*(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  19     |  2     ((((■)*(\d){■})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?get a solution: (((([12345678, ])*(\d){0})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?
add positive: 00000000
add negative:  
  unsatisfiable SAT formula       
  20     |  2     ((((■)*(\d){8})(■)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  21     |  2     ((((■)*(\d){8})(\s){■})(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  22     |  2     ((((■)*(\d){8})(\s)*)(■)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  23     |  2     ((((■)*(\d){8})(\s)*)(\+){■})(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  24     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((■(\s)*)(\d){8})(,)*)?fail dotstar or empty
  25     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(■)*)(\d){8})(,)*)?fail dotstar or empty
  26     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s){■})(\d){8})(,)*)?fail dotstar or empty
  27     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(■){8})(,)*)?fail dotstar or empty
  28     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){■})(,)*)?fail dotstar or empty
  29     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(■)*)?fail dotstar or empty
  30     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,){■})?fail dotstar or empty
  31     |  2     ((((■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*){■}fail dotstar or empty
  32     |  2     ((((■■)*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  33     |  2     (((((■|■))*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail solve
  34     |  2     (((((■){■})*(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  35     |  2     ((((\s){■}(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  36     |  2     ((((\s){■}(\d){■})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  37     |  2     ((((\s){■}(\d){8})(■)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  38     |  2     ((((\s){■}(\d){8})(\s){■})(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  39     |  2     ((((\s){■}(\d){8})(\s)*)(■)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  40     |  2     ((((\s){■}(\d){8})(\s)*)(\+){■})(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  41     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((■(\s)*)(\d){8})(,)*)?fail dotstar or empty
  42     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(■)*)(\d){8})(,)*)?fail dotstar or empty
  43     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s){■})(\d){8})(,)*)?fail dotstar or empty
  44     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(■){8})(,)*)?fail dotstar or empty
  45     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){■})(,)*)?fail dotstar or empty
  46     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(■)*)?fail dotstar or empty
  47     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,){■})?fail dotstar or empty
  48     |  2     ((((\s){■}(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*){■}fail dotstar or empty
  49     |  2     (((■(\d){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dotstar or empty
  50     |  2     ((((\s)*(■){■})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?  unsatisfiable SAT formula       
  51     |  2     ((((\s)*(■){8})(■)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  52     |  2     ((((\s)*(■){8})(\s){■})(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  53     |  2     ((((\s)*(■){8})(\s)*)(■)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  54     |  2     ((((\s)*(■){8})(\s)*)(\+){■})(((,(\s)*)(\d){8})(,)*)?fail dot
  55     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((■(\s)*)(\d){8})(,)*)?fail dot
  56     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(■)*)(\d){8})(,)*)?fail dot
  57     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s){■})(\d){8})(,)*)?fail dot
  58     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s)*)(■){8})(,)*)?fail dot
  59     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){■})(,)*)?fail dot
  60     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(■)*)?fail dot
  61     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,){■})?fail dot
  62     |  2     ((((\s)*(■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*){■}fail dot
  63     |  2     ((((\s)*■)(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  64     |  2     ((((\s)*(■■){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  65     |  2     ((((\s)*((■|■)){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?fail dot
  66     |  2     ((((\s)*((■){■}){8})(\s)*)(\+)*)(((,(\s)*)(\d){8})(,)*)?10.016455888748169
timeout