
Given the regular expression:

  (((([10])?[8-9]|20):[0-5][0-9])|21:00)

That that should match the strings:

  ✓ (0:5)    16:19
  ✓ (5:10)   10:00
  ✓ (10:15)  12:47

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■)?[8-9]|20):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  2      |  1     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  3      |  1     ((((([10])?■|20):)[0-5])[0-9]|(((21):)0)0)get a solution: ((((([10])?[260]|20):)[0-5])[0-9]|(((21):)0)0)
add positive: 08:00
add negative: 0:00
  unsatisfiable SAT formula       
  4      |  1     ((((([10])?[8-9]|■0):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  5      |  1     ((((([10])?[8-9]|2■):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  6      |  1     ((((([10])?[8-9]|20)■)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  7      |  1     ((((([10])?[8-9]|20):)■)[0-9]|(((21):)0)0)fail dotstar or empty
  8      |  1     ((((([10])?[8-9]|20):)[0-5])■|(((21):)0)0)fail dotstar or empty
  9      |  1     ((((([10])?[8-9]|20):)[0-5])[0-9]|(((■1):)0)0)fail dotstar or empty
  10     |  1     ((((([10])?[8-9]|20):)[0-5])[0-9]|(((2■):)0)0)fail dotstar or empty
  11     |  1     ((((([10])?[8-9]|20):)[0-5])[0-9]|(((21)■)0)0)fail dotstar or empty
  12     |  1     ((((([10])?[8-9]|20):)[0-5])[0-9]|(((21):)■)0)fail dotstar or empty
  13     |  1     ((((([10])?[8-9]|20):)[0-5])[0-9]|(((21):)0)■)fail dotstar or empty
  14     |  2     (((((■){■}[8-9]|20):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  15     |  2     (((((■)?■|20):)[0-5])[0-9]|(((21):)0)0)  unsatisfiable SAT formula       
  16     |  2     (((((■)?[8-9]|■0):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  17     |  2     (((((■)?[8-9]|2■):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  18     |  2     (((((■)?[8-9]|20)■)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  19     |  2     (((((■)?[8-9]|20):)■)[0-9]|(((21):)0)0)fail dotstar or empty
  20     |  2     (((((■)?[8-9]|20):)[0-5])■|(((21):)0)0)fail dotstar or empty
  21     |  2     (((((■)?[8-9]|20):)[0-5])[0-9]|(((■1):)0)0)fail dotstar or empty
  22     |  2     (((((■)?[8-9]|20):)[0-5])[0-9]|(((2■):)0)0)fail dotstar or empty
  23     |  2     (((((■)?[8-9]|20):)[0-5])[0-9]|(((21)■)0)0)fail dotstar or empty
  24     |  2     (((((■)?[8-9]|20):)[0-5])[0-9]|(((21):)■)0)fail dotstar or empty
  25     |  2     (((((■)?[8-9]|20):)[0-5])[0-9]|(((21):)0)■)fail dotstar or empty
  26     |  2     ((((([10]){■}■|20):)[0-5])[0-9]|(((21):)0)0)get a solution: ((((([10]){1}[2680]|20):)[0-5])[0-9]|(((21):)0)0)
add positive: 09:00
add negative: 00:00
  unsatisfiable SAT formula       
  27     |  2     ((((([10]){■}[8-9]|■0):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  28     |  2     ((((([10]){■}[8-9]|2■):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  29     |  2     ((((([10]){■}[8-9]|20)■)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  30     |  2     ((((([10]){■}[8-9]|20):)■)[0-9]|(((21):)0)0)fail dotstar or empty
  31     |  2     ((((([10]){■}[8-9]|20):)[0-5])■|(((21):)0)0)fail dotstar or empty
  32     |  2     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((■1):)0)0)fail dotstar or empty
  33     |  2     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((2■):)0)0)fail dotstar or empty
  34     |  2     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((21)■)0)0)fail dotstar or empty
  35     |  2     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((21):)■)0)fail dotstar or empty
  36     |  2     ((((([10]){■}[8-9]|20):)[0-5])[0-9]|(((21):)0)■)fail dotstar or empty
  37     |  2     ((((■[8-9]|20):)[0-5])[0-9]|(((21):)0)0)fail dotstar or empty
  38     |  2     ((((([10])?■|■0):)[0-5])[0-9]|(((21):)0)0)get a solution: ((((([10])?[2689]|10):)[0-5])[0-9]|(((21):)0)0)
add positive: 20:00
add negative: 2:00
  unsatisfiable SAT formula       
  39     |  2     ((((([10])?■|2■):)[0-5])[0-9]|(((21):)0)0)  unsatisfiable SAT formula       
  40     |  2     ((((([10])?■|20)■)[0-5])[0-9]|(((21):)0)0)  unsatisfiable SAT formula       
  41     |  2     ((((([10])?■|20):)■)[0-9]|(((21):)0)0)  unsatisfiable SAT formula       
  42     |  2     ((((([10])?■|20):)[0-5])■|(((21):)0)0)  unsatisfiable SAT formula       
  43     |  2     ((((([10])?■|20):)[0-5])[0-9]|(((■1):)0)0)  unsatisfiable SAT formula       
  44     |  2     ((((([10])?■|20):)[0-5])[0-9]|(((2■):)0)0)  unsatisfiable SAT formula       
  45     |  2     ((((([10])?■|20):)[0-5])[0-9]|(((21)■)0)0)  unsatisfiable SAT formula       
  46     |  2     ((((([10])?■|20):)[0-5])[0-9]|(((21):)■)0)
1.0281410217285156
timeout