
Given the regular expression:

  iqn\.((\d){4}\-(\d){2})\.(([^:])+)

That that should match the strings:

  ✓ (0:36)   iqn.1998-01.com.vmware.iscsi:name999
  ✓ (36:69)  iqn.1991-05.com.microsoft:abc.com

And reject the strings:

  ✗ (69:94)  iqn.1991-05.com.microsoft
  ✗ (94:119) iqn.2002-07.com.microsoft
  ✗ (119:147) iqn.1998-01.com.vmware.iscsi

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  2      |  1     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  3      |  1     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  4      |  1     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  5      |  1     (((((iq)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  6      |  1     (((((iq)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  7      |  1     (((((iq)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  8      |  1     (((((iq)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  9      |  1     (((((iq)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  10     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  11     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  12     |  1     (((((iq)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  13     |  2     (((((■■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  14     |  2     (((((■q)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  15     |  2     (((((■q)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  16     |  2     (((((■q)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  17     |  2     (((((■q)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  18     |  2     (((((■q)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  19     |  2     (((((■q)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  20     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  21     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  22     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  23     |  2     (((((■q)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  24     |  2     (((((i■)■)\.)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  25     |  2     (((((i■)n)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  26     |  2     (((((i■)n)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  27     |  2     (((((i■)n)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  28     |  2     (((((i■)n)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  29     |  2     (((((i■)n)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  30     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  31     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  32     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  33     |  2     (((((i■)n)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  34     |  2     (((((iq)■)■)(((\d){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  35     |  2     (((((iq)■)\.)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  36     |  2     (((((iq)■)\.)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  37     |  2     (((((iq)■)\.)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  38     |  2     (((((iq)■)\.)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  39     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  40     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  41     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  42     |  2     (((((iq)■)\.)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  43     |  2     (((((iq)n)■)(((■){4}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  44     |  2     (((((iq)n)■)(((\d){■}\-)(\d){2}))\.)([^:])+fail dotstar or empty
  45     |  2     (((((iq)n)■)(((\d){4}■)(\d){2}))\.)([^:])+fail dotstar or empty
  46     |  2     (((((iq)n)■)(((\d){4}\-)(■){2}))\.)([^:])+fail dotstar or empty
  47     |  2     (((((iq)n)■)(((\d){4}\-)(\d){■}))\.)([^:])+fail dotstar or empty
  48     |  2     (((((iq)n)■)(((\d){4}\-)(\d){2}))■)([^:])+fail dot
  49     |  2     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)(■)+  unsatisfiable SAT formula       
  50     |  2     (((((iq)n)■)(((\d){4}\-)(\d){2}))\.)([^:]){■}fail dotstar or empty
  51     |  2     (((((iq)n)\.)(((■){■}\-)(\d){2}))\.)([^:])+
5.014075040817261
timeout