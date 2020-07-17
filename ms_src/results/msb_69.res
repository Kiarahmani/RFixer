
Given the regular expression:

  /<codes 

That that should match the strings:

  ✓ (0:7)    /codes.

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■<)c)o)d)e)s)     fail dotstar or empty
  2      |  1     ((((((/■)c)o)d)e)s)     fail dotstar or empty
  3      |  1     ((((((/<)■)o)d)e)s)     fail dotstar or empty
  4      |  1     ((((((/<)c)■)d)e)s)     fail dotstar or empty
  5      |  1     ((((((/<)c)o)■)e)s)     fail dotstar or empty
  6      |  1     ((((((/<)c)o)d)■)s)     fail dotstar or empty
  7      |  1     ((((((/<)c)o)d)e)■)     fail dotstar or empty
  8      |  1     ((((((/<)c)o)d)e)s)■    fail dotstar or empty
  9      |  2     ((((((■■)c)o)d)e)s)     fail dotstar or empty
  10     |  2     ((((((■<)■)o)d)e)s)     fail dotstar or empty
  11     |  2     ((((((■<)c)■)d)e)s)     fail dotstar or empty
  12     |  2     ((((((■<)c)o)■)e)s)     fail dotstar or empty
  13     |  2     ((((((■<)c)o)d)■)s)     fail dotstar or empty
  14     |  2     ((((((■<)c)o)d)e)■)     fail dotstar or empty
  15     |  2     ((((((■<)c)o)d)e)s)■    fail dotstar or empty
  16     |  2     ((((((/■)■)o)d)e)s)     fail dotstar or empty
  17     |  2     ((((((/■)c)■)d)e)s)     fail dotstar or empty
  18     |  2     ((((((/■)c)o)■)e)s)     fail dotstar or empty
  19     |  2     ((((((/■)c)o)d)■)s)     fail dotstar or empty
  20     |  2     ((((((/■)c)o)d)e)■)     fail dotstar or empty
  21     |  2     ((((((/■)c)o)d)e)s)■    fail dot
  22     |  2     ((((((/<)■)■)d)e)s)     fail dotstar or empty
  23     |  2     ((((((/<)■)o)■)e)s)     fail dotstar or empty
  24     |  2     ((((((/<)■)o)d)■)s)     fail dotstar or empty
  25     |  2     ((((((/<)■)o)d)e)■)     fail dotstar or empty
  26     |  2     ((((((/<)■)o)d)e)s)■    fail dotstar or empty
  27     |  2     ((((((/<)c)■)■)e)s)     fail dotstar or empty
  28     |  2     ((((((/<)c)■)d)■)s)     fail dotstar or empty
  29     |  2     ((((((/<)c)■)d)e)■)     fail dotstar or empty
  30     |  2     ((((((/<)c)■)d)e)s)■    fail dotstar or empty
  31     |  2     ((((((/<)c)o)■)■)s)     fail dotstar or empty
  32     |  2     ((((((/<)c)o)■)e)■)     fail dotstar or empty
  33     |  2     ((((((/<)c)o)■)e)s)■    fail dotstar or empty
  34     |  2     ((((((/<)c)o)d)■)■)     fail dotstar or empty
  35     |  2     ((((((/<)c)o)d)■)s)■    fail dotstar or empty
  36     |  2     ((((((/<)c)o)d)e)■)■    fail dotstar or empty
  37     |  3     ((((((■■)■)o)d)e)s)     fail dotstar or empty
  38     |  3     ((((((■■)c)■)d)e)s)     fail dotstar or empty
  39     |  3     ((((((■■)c)o)■)e)s)     fail dotstar or empty
  40     |  3     ((((((■■)c)o)d)■)s)     fail dotstar or empty
  41     |  3     ((((((■■)c)o)d)e)■)     fail dotstar or empty
  42     |  3     ((((((■■)c)o)d)e)s)■    fail dot
  43     |  3     ((((((■)c)o)d)e)s)      fail dotstar or empty
  44     |  3     ((((((■<)■)■)d)e)s)     fail dotstar or empty
  45     |  3     ((((((■<)■)o)■)e)s)     fail dotstar or empty
  46     |  3     ((((((■<)■)o)d)■)s)     fail dotstar or empty
  47     |  3     ((((((■<)■)o)d)e)■)     fail dotstar or empty
  48     |  3     ((((((■<)■)o)d)e)s)■    fail dotstar or empty
  49     |  3     ((((((■<)c)■)■)e)s)     fail dotstar or empty
  50     |  3     ((((((■<)c)■)d)■)s)     fail dotstar or empty
  51     |  3     ((((((■<)c)■)d)e)■)     fail dotstar or empty
  52     |  3     ((((((■<)c)■)d)e)s)■    fail dotstar or empty
  53     |  3     ((((((■<)c)o)■)■)s)     fail dotstar or empty
  54     |  3     ((((((■<)c)o)■)e)■)     fail dotstar or empty
  55     |  3     ((((((■<)c)o)■)e)s)■    fail dotstar or empty
  56     |  3     ((((((■<)c)o)d)■)■)     fail dotstar or empty
  57     |  3     ((((((■<)c)o)d)■)s)■    fail dotstar or empty
  58     |  3     ((((((■<)c)o)d)e)■)■    fail dotstar or empty
  59     |  3     ((((((/■)■)■)d)e)s)     fail dotstar or empty
  60     |  3     ((((((/■)■)o)■)e)s)     fail dotstar or empty
  61     |  3     ((((((/■)■)o)d)■)s)     fail dotstar or empty
  62     |  3     ((((((/■)■)o)d)e)■)     fail dotstar or empty
  63     |  3     ((((((/■)■)o)d)e)s)■    fail dot
  64     |  3     ((((((/■)c)■)■)e)s)     fail dotstar or empty
  65     |  3     ((((((/■)c)■)d)■)s)     fail dotstar or empty
  66     |  3     ((((((/■)c)■)d)e)■)     fail dotstar or empty
  67     |  3     ((((((/■)c)■)d)e)s)■    fail dot
  68     |  3     ((((((/■)c)o)■)■)s)     fail dotstar or empty
  69     |  3     ((((((/■)c)o)■)e)■)     fail dotstar or empty
  70     |  3     ((((((/■)c)o)■)e)s)■    fail dot
  71     |  3     ((((((/■)c)o)d)■)■)     fail dotstar or empty
  72     |  3     ((((((/■)c)o)d)■)s)■    fail dot
  73     |  3     ((((((/■)c)o)d)e)■)■    fail dot
  74     |  3     ((((((/(■■))c)o)d)e)s)■ fail dot
  75     |  3     ((((((/(■|■))c)o)d)e)s)■fail dot
  76     |  3     ((((((/(■){■})c)o)d)e)s)■  ((((((/([∅]){0})c)o)d)e)s)\.    
template: ((((((/(■){■})c)o)d)e)s)■ size: 7 holes: 4 time: 3.571651ms
longest: #mn#((((((/(■){■})c)o)d)e)s)■#mn# size: #ms#7#ms# holes: #mh#4#mh# time: #mt#3.571651#mt#ms

Computed in:

  #c#213#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  2    ((((((/([∅]){0})c)o)d)e)s)\.

All done

last template: #t#((((((/(■){■})c)o)d)e)s)■#t#
#num#76#num#
#dep#3#dep#
#t1#0#t1#
#t2#9#t2#
#t3#66#t3#
solution is #sol#((((((/([∅]){0})c)o)d)e)s)\.#sol#
before exit
