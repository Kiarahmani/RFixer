
Given the regular expression:

  SELECT( )* FROM `comments` WHERE detail REGEXP '([0-9]){10}'

That that should match the strings:

  ✓ (0:10)   8884265555
  ✓ (10:20)  1234567890

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  30     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  31     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  32     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  33     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  34     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  35     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  36     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  37     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  38     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  39     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  40     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  41     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  42     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  43     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  44     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  45     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  46     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  47     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  48     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  49     |  1     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  50     |  2     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  51     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  52     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  53     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  54     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  55     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  56     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  57     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  58     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  59     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  60     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  61     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  62     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  63     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  64     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  65     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  66     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  67     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  68     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  69     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  70     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  71     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  72     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  73     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  74     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  75     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  76     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  77     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  78     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  79     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  80     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  81     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  82     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  83     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  84     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  85     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  86     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  87     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  88     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  89     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  90     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  91     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  92     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  93     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  94     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  95     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  96     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  97     |  2     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  98     |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  99     |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  100    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  101    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  102    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'
2.046259880065918
timeout