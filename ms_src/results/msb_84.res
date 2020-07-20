
Given the regular expression:

  views/

That that should match the strings:

  ✓ (0:14)   views/register
  ✓ (14:37)  views/' upto the next '
  ✓ (37:69)  views/register'  something like:

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■i)e)w)s)/          fail dotstar or empty
  2      |  1     ((((v■)e)w)s)/          fail dotstar or empty
  3      |  1     ((((vi)■)w)s)/          fail dotstar or empty
  4      |  1     ((((vi)e)■)s)/          fail dotstar or empty
  5      |  1     ((((vi)e)w)■)/          fail dotstar or empty
  6      |  1     ((((vi)e)w)s)■          fail dot
  7      |  2     ((((■■)e)w)s)/          fail dotstar or empty
  8      |  2     ((((■i)■)w)s)/          fail dotstar or empty
  9      |  2     ((((■i)e)■)s)/          fail dotstar or empty
  10     |  2     ((((■i)e)w)■)/          fail dotstar or empty
  11     |  2     ((((■i)e)w)s)■          fail dot
  12     |  2     ((((v■)■)w)s)/          fail dotstar or empty
  13     |  2     ((((v■)e)■)s)/          fail dotstar or empty
  14     |  2     ((((v■)e)w)■)/          fail dotstar or empty
  15     |  2     ((((v■)e)w)s)■          fail dot
  16     |  2     ((((vi)■)■)s)/          fail dotstar or empty
  17     |  2     ((((vi)■)w)■)/          fail dotstar or empty
  18     |  2     ((((vi)■)w)s)■          fail dot
  19     |  2     ((((vi)e)■)■)/          fail dotstar or empty
  20     |  2     ((((vi)e)■)s)■          fail dot
  21     |  2     ((((vi)e)w)■)■          fail dot
  22     |  2     ((((vi)e)w)s)(■■)       fail dot
  23     |  2     ((((vi)e)w)s)(■|■)      fail dot
  24     |  2     ((((vi)e)w)s)(■){■}     get a solution: ((((vi)e)w)s)([e'ghiklmno/prstux: ]){1,27}
add positive: views/ 
add negative: views 
get a solution: ((((vi)e)w)s)([e'ghiklmno/prstux:  ]){2,27}
add positive: views/
add negative: views//
  unsatisfiable SAT formula       
  25     |  3     ((((■■)■)w)s)/          fail dotstar or empty
  26     |  3     ((((■■)e)■)s)/          fail dotstar or empty
  27     |  3     ((((■■)e)w)■)/          fail dotstar or empty
  28     |  3     ((((■■)e)w)s)■          fail dot
  29     |  3     ((((■)e)w)s)/           fail dotstar or empty
  30     |  3     ((((■i)■)■)s)/          fail dotstar or empty
  31     |  3     ((((■i)■)w)■)/          fail dotstar or empty
  32     |  3     ((((■i)■)w)s)■          fail dot
  33     |  3     ((((■i)e)■)■)/          fail dotstar or empty
  34     |  3     ((((■i)e)■)s)■          fail dot
  35     |  3     ((((■i)e)w)■)■          fail dot
  36     |  3     (((((■■)i)e)w)s)■       fail dot
  37     |  3     (((((■|■)i)e)w)s)■      fail dot
  38     |  3     (((((■){■}i)e)w)s)■     fail dot
  39     |  3     ((((■i)e)w)s)(■■)       fail dot
  40     |  3     ((((■i)e)w)s)(■|■)      fail dot
  41     |  3     ((((■i)e)w)s)(■){■}       unsatisfiable SAT formula       
  42     |  3     ((((v■)■)■)s)/          fail dotstar or empty
  43     |  3     ((((v■)■)w)■)/          fail dotstar or empty
  44     |  3     ((((v■)■)w)s)■          fail dot
  45     |  3     ((((v■)e)■)■)/          fail dotstar or empty
  46     |  3     ((((v■)e)■)s)■          fail dot
  47     |  3     ((((v■)e)w)■)■          fail dot
  48     |  3     ((((v(■■))e)w)s)■       fail dot
  49     |  3     ((((v(■|■))e)w)s)■      fail dot
  50     |  3     ((((v(■){■})e)w)s)■     fail dot
  51     |  3     ((((v■)e)w)s)(■■)       fail dot
  52     |  3     ((((v■)e)w)s)(■|■)      fail dot
  53     |  3     ((((v■)e)w)s)(■){■}       unsatisfiable SAT formula       
  54     |  3     ((((vi)■)■)■)/          fail dotstar or empty
  55     |  3     ((((vi)■)■)s)■          fail dot
  56     |  3     ((((vi)■)w)■)■          fail dot
  57     |  3     ((((vi)(■■))w)s)■       fail dot
  58     |  3     ((((vi)(■|■))w)s)■      fail dot
  59     |  3     ((((vi)(■){■})w)s)■     fail dot
  60     |  3     ((((vi)■)w)s)(■■)       fail dot
  61     |  3     ((((vi)■)w)s)(■|■)      fail dot
  62     |  3     ((((vi)■)w)s)(■){■}       unsatisfiable SAT formula       
  63     |  3     ((((vi)e)■)■)■          fail dot
  64     |  3     ((((vi)e)(■■))s)■       fail dot
  65     |  3     ((((vi)e)(■|■))s)■      fail dot
  66     |  3     ((((vi)e)(■){■})s)■     fail dot
  67     |  3     ((((vi)e)■)s)(■■)       fail dot
  68     |  3     ((((vi)e)■)s)(■|■)      fail dot
  69     |  3     ((((vi)e)■)s)(■){■}       unsatisfiable SAT formula       
  70     |  3     ((((vi)e)w)(■■))■       fail dot
  71     |  3     ((((vi)e)w)(■|■))■      fail dot
  72     |  3     ((((vi)e)w)(■){■})■       unsatisfiable SAT formula       
  73     |  3     ((((vi)e)w)■)(■■)       fail dot
  74     |  3     ((((vi)e)w)■)(■|■)      fail dot
  75     |  3     ((((vi)e)w)■)(■){■}       unsatisfiable SAT formula       
  76     |  3     ((((vi)e)w)s)(■)        fail dot
  77     |  3     ((((vi)e)w)s)((■■)■)    fail dot
  78     |  3     ((((vi)e)w)s)((■|■)■)   fail dot
  79     |  3     ((((vi)e)w)s)((■){■}■)    unsatisfiable SAT formula       
  80     |  3     ((((vi)e)w)s)(■■|■)     fail dot
  81     |  3     ((((vi)e)w)s)((■|■)|■)  fail dot
  82     |  3     ((((vi)e)w)s)((■){■}|■)   unsatisfiable SAT formula       
  83     |  3     ((((vi)e)w)s)(■■){■}    fail dot
  84     |  3     ((((vi)e)w)s)((■|■)){■} fail solve
  85     |  3     ((((vi)e)w)s)((■){■}){■}
1.0188190937042236
timeout