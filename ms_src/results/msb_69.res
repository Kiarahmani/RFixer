
Given the regular expression:

  (((\d){6}|(\d){7})|(\d){8})

That that should match the strings:

  ✓ (0:8)    CH11 2ab
  ✓ (8:14)   b6 7ba
  ✓ (14:21)  BH6 5BG

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){6}|(\d){7})|(\d){8})fail dot
  2      |  1     (((\d){■}|(\d){7})|(\d){8})fail dotstar or empty
  3      |  1     (((\d){6}|(■){7})|(\d){8})fail dot
  4      |  1     (((\d){6}|(\d){■})|(\d){8})fail dotstar or empty
  5      |  1     (((\d){6}|(\d){7})|(■){8})fail dot
  6      |  1     (((\d){6}|(\d){7})|(\d){■})fail dotstar or empty
  7      |  2     (((■){■}|(\d){7})|(\d){8})get a solution: ((([abBCGH12567 ]){1,8}|(\d){7})|(\d){8})
add positive: A0	0AA
add negative:  
get a solution: ((([AabBCGH	012567 ]){2,8}|(\d){7})|(\d){8})
add positive: D0	0AA
add negative: 		
get a solution: ((([AabBCDGH	012567 ]){3,8}|(\d){7})|(\d){8})
add positive: A0	3AA
add negative: A00
get a solution: ((([AabBCDGH	0123567 ]){4,8}|(\d){7})|(\d){8})
add positive: E0	0AA
add negative: A0		
get a solution: ((([AabBCDEGH	0123567 ]){5,8}|(\d){7})|(\d){8})
add positive: A0	4AA
add negative: A0			
get a solution: ((([AabBCDEGH	01234567 ]){6,8}|(\d){7})|(\d){8})
add positive: A8	0AA
add negative: A00	0A
  unsatisfiable SAT formula       
  8      |  2     (((■){6}|(■){7})|(\d){8})fail dot
  9      |  2     (((■){6}|(\d){■})|(\d){8})fail dot
  10     |  2     (((■){6}|(\d){7})|(■){8})fail dot
  11     |  2     (((■){6}|(\d){7})|(\d){■})fail dot
  12     |  2     (((■■){6}|(\d){7})|(\d){8})fail dot
  13     |  2     ((((■|■)){6}|(\d){7})|(\d){8})fail dot
  14     |  2     ((((■){■}){6}|(\d){7})|(\d){8})  unsatisfiable SAT formula       
  15     |  2     (((\d){■}|(■){7})|(\d){8})fail dot
  16     |  2     (((\d){■}|(\d){■})|(\d){8})fail dotstar or empty
  17     |  2     (((\d){■}|(\d){7})|(■){8})fail dot
  18     |  2     (((\d){■}|(\d){7})|(\d){■})fail dotstar or empty
  19     |  2     (((\d){6}|(■){■})|(\d){8})  unsatisfiable SAT formula       
  20     |  2     (((\d){6}|(■){7})|(■){8})fail dot
  21     |  2     (((\d){6}|(■){7})|(\d){■})fail dot
  22     |  2     (((\d){6}|(■■){7})|(\d){8})fail dot
  23     |  2     (((\d){6}|((■|■)){7})|(\d){8})fail dot
  24     |  2     (((\d){6}|((■){■}){7})|(\d){8})  unsatisfiable SAT formula       
  25     |  2     (((\d){6}|(\d){■})|(■){8})fail dot
  26     |  2     (((\d){6}|(\d){■})|(\d){■})fail dotstar or empty
  27     |  2     (((\d){6}|(\d){7})|(■){■})  unsatisfiable SAT formula       
  28     |  2     (((\d){6}|(\d){7})|(■■){8})fail dot
  29     |  2     (((\d){6}|(\d){7})|((■|■)){8})fail dot
  30     |  2     (((\d){6}|(\d){7})|((■){■}){8})  unsatisfiable SAT formula       
  31     |  3     (((■){■}|(■){7})|(\d){8})  unsatisfiable SAT formula       
  32     |  3     (((■){■}|(\d){■})|(\d){8})  unsatisfiable SAT formula       
  33     |  3     (((■){■}|(\d){7})|(■){8})  unsatisfiable SAT formula       
  34     |  3     (((■){■}|(\d){7})|(\d){■})  unsatisfiable SAT formula       
  35     |  3     (((■■){■}|(\d){7})|(\d){8})fail dot
  36     |  3     ((((■|■)){■}|(\d){7})|(\d){8})fail solve
  37     |  3     ((((■){■}){■}|(\d){7})|(\d){8})  unsatisfiable SAT formula       
  38     |  3     (((■){6}|(■){■})|(\d){8})  unsatisfiable SAT formula       
  39     |  3     (((■){6}|(■){7})|(■){8})  unsatisfiable SAT formula       
  40     |  3     (((■){6}|(■){7})|(\d){■})fail dot
  41     |  3     (((■■){6}|(■){7})|(\d){8})fail dot
  42     |  3     ((((■|■)){6}|(■){7})|(\d){8})fail dot
  43     |  3     ((((■){■}){6}|(■){7})|(\d){8})  unsatisfiable SAT formula       
  44     |  3     (((■){6}|(■■){7})|(\d){8})fail dot
  45     |  3     (((■){6}|((■|■)){7})|(\d){8})fail dot
  46     |  3     (((■){6}|((■){■}){7})|(\d){8})  unsatisfiable SAT formula       
  47     |  3     (((■){6}|(\d){■})|(■){8})fail dot
  48     |  3     (((■){6}|(\d){■})|(\d){■})fail dot
  49     |  3     (((■■){6}|(\d){■})|(\d){8})fail dot
  50     |  3     ((((■|■)){6}|(\d){■})|(\d){8})fail dot
  51     |  3     ((((■){■}){6}|(\d){■})|(\d){8})  unsatisfiable SAT formula       
  52     |  3     (((■){6}|(\d){7})|(■){■})  unsatisfiable SAT formula       
  53     |  3     (((■■){6}|(\d){7})|(■){8})fail dot
  54     |  3     ((((■|■)){6}|(\d){7})|(■){8})fail dot
  55     |  3     ((((■){■}){6}|(\d){7})|(■){8})  unsatisfiable SAT formula       
  56     |  3     (((■){6}|(\d){7})|(■■){8})fail dot
  57     |  3     (((■){6}|(\d){7})|((■|■)){8})fail dot
  58     |  3     (((■){6}|(\d){7})|((■){■}){8})  unsatisfiable SAT formula       
  59     |  3     (((■■){6}|(\d){7})|(\d){■})fail dot
  60     |  3     ((((■|■)){6}|(\d){7})|(\d){■})fail dot
  61     |  3     ((((■){■}){6}|(\d){7})|(\d){■})  unsatisfiable SAT formula       
  62     |  3     ((((■■)■){6}|(\d){7})|(\d){8})fail dot
  63     |  3     ((((■|■)■){6}|(\d){7})|(\d){8})fail dot
  64     |  3     ((((■){■}■){6}|(\d){7})|(\d){8})  unsatisfiable SAT formula       
  65     |  3     ((((■■|■)){6}|(\d){7})|(\d){8})  unsatisfiable SAT formula       
  66     |  3     (((((■|■)|■)){6}|(\d){7})|(\d){8})fail dot
  67     |  3     (((((■){■}|■)){6}|(\d){7})|(\d){8})  unsatisfiable SAT formula       
  68     |  3     ((((■■){■}){6}|(\d){7})|(\d){8})fail dot
  69     |  3     (((((■|■)){■}){6}|(\d){7})|(\d){8})fail solve
  70     |  3     (((((■){■}){■}){6}|(\d){7})|(\d){8})10.020619869232178
timeout