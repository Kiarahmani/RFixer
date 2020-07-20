
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
  14     |  2     ((((■){■}){6}|(\d){7})|(\d){8})1.0186638832092285
timeout