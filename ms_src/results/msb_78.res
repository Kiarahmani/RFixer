
Given the regular expression:

  string s1 = s.Substring(0, 3); //... string s2 = s.Substring(7, 8); //...

That that should match the strings:

  ✓ (0:20)   01500343014501044801

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((■t)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((s■)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)■)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)■)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)■)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)■) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g)■)s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )■)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)■) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1)■)=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )■) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=)■)s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )■).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s)■)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)■)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)■)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)■)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)■)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)■)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)■)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)■)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)■)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)■)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((■,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0■) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,)■)3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )■));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3))■) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));)■)/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  30     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )■)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  31     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)■).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  32     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/)■).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  33     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).)■).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  34     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).)■) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  35     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).)■)s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  36     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )■)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  37     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)■)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  38     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)■)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  39     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)■)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  40     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)■)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  41     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)■) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  42     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g)■)s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  43     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )■)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  44     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)■) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  45     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2)■)=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  46     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )■) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  47     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=)■)s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  48     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )■).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  49     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s)■)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  50     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)■)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  51     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)■)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  52     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)■)s)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  53     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)■)t)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  54     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)■)r)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  55     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)■)i)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  56     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)■)n)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  57     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)■)g)(((7,) )8));) )/)/).).).fail dotstar or empty
  58     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)■)(((7,) )8));) )/)/).).).fail dotstar or empty
  59     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((■,) )8));) )/)/).).).fail dotstar or empty
  60     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7■) )8));) )/)/).).).fail dotstar or empty
  61     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,)■)8));) )/)/).).).fail dotstar or empty
  62     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )■));) )/)/).).).fail dotstar or empty
  63     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8))■) )/)/).).).fail dotstar or empty
  64     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));)■)/)/).).).fail dotstar or empty
  65     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )■)/).).).fail dotstar or empty
  66     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)■).).).fail dotstar or empty
  67     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/)■).).fail dotstar or empty
  68     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).)■).fail dotstar or empty
  69     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((st)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).)■fail dotstar or empty
  70     |  2     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((■■)r)i)n)g) )s)1) )=) )s).)S)u)b)s)t)r)i)n)g)(((0,) )3));) )/)/).).).) )s)t)r)i)n)g) )s)2) )=) )s).)S)u)b)s)t)r)i)n)g)(((7,) )8));) )/)/).).).
2.043851137161255
timeout